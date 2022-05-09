; ModuleID = '/llk/IR_all_yes/net/tipc/crypto.c_pt.bc'
source_filename = "../net/tipc/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.tipc_aead_key = type { [32 x i8], i32, [0 x i8] }
%struct.sk_buff = type { %union.anon.16, %union.anon.19, %union.anon.20, [48 x i8], %union.anon.21, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.23, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, ptr, %union.anon.18 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { ptr }
%union.anon.20 = type { i64 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32, ptr }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.25, i32, i32, i32, i16, i16, %union.anon.27, i32, %union.anon.28, %union.anon.29, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.25 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i32 }
%union.anon.29 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.tipc_tfm = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tipc_aead = type { ptr, ptr, ptr, %struct.atomic_t, i32, i8, i8, [11 x i8], %struct.callback_head, ptr, i16, [78 x i8], %struct.atomic64_t, [120 x i8], %struct.refcount_struct, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.tipc_crypto = type { ptr, ptr, [4 x ptr], %struct.atomic_t, i16, %struct.tipc_key, i8, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, ptr, [48 x i8], [56 x i8], %struct.atomic64_t, i32, i32, %union.anon.129, %struct.spinlock, [64 x i8] }
%struct.tipc_key = type { %union.anon.127 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.36, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.36 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.37, i32, %struct.spinlock }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_ehdr = type <{ %union.anon.122, i64, %union.anon.124 }>
%union.anon.122 = type { i32 }
%union.anon.124 = type { i32, [12 x i8] }
%struct.anon.123 = type { i16, i16 }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.125, ptr, ptr, ptr, ptr, %union.anon.126, [120 x i8] }
%union.anon.125 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.126 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.tipc_crypto_tx_ctx = type { ptr, ptr, %struct.tipc_media_addr }
%struct.tipc_crypto_rx_ctx = type { ptr, ptr }

@sysctl_tipc_max_tfms = dso_local local_unnamed_addr global i32 10, section ".data..read_mostly", align 4
@sysctl_tipc_key_exchange_enabled = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@tipc_aead_key_validate.__msg = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to load the algorithm (module existed?)\00", [49 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@tipc_aead_key_validate.__msg.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not supported yet the algorithm\00", [32 x i8] zeroinitializer }, align 32
@tipc_aead_key_validate.__msg.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"incorrect key length (20, 28 or 36 octets?)\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_crypto_key_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/tipc/crypto.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tipc_crypto\00", [20 x i8] zeroinitializer }, align 32
@tipc_crypto_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&c->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s(%s)\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@tipc_crypto_start.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&(&c->work)->work)\00", [59 x i8] zeroinitializer }, align 32
@tipc_crypto_start.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&c->work)->timer\00", [45 x i8] zeroinitializer }, align 32
@tipc_crypto_start.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tipc_crypto_start.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tipc_crypto_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tipc_crypto_stop.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_crypto_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: has been stopped\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tipc: %s: has been stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@tipc_crypto_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tipc_crypto_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016tipc: %s: key[%d] is activated\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_crypto_timeout\00", [44 x i8] zeroinitializer }, align 32
@tipc_crypto_timeout._entry_ptr = internal global ptr @tipc_crypto_timeout._entry, section ".printk_index", align 4
@tipc_crypto_timeout._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tipc_crypto_timeout._entry_ptr.24 = internal global ptr @tipc_crypto_timeout._entry.23, section ".printk_index", align 4
@tipc_crypto_timeout.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_timeout.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.3, ptr @.str.26, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: key[%d] is removed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tipc: %s: key[%d] is removed\0A\00", [34 x i8] zeroinitializer }, align 32
@tipc_crypto_timeout.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.3, ptr @.str.28, i8 1, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: key[%d] is deactivated\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tipc: %s: key[%d] is deactivated\0A\00", [62 x i8] zeroinitializer }, align 32
@tipc_crypto_timeout.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_timeout.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.3, ptr @.str.31, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: key[%d] is freed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tipc: %s: key[%d] is freed\0A\00", [36 x i8] zeroinitializer }, align 32
@tipc_crypto_xmit.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 1, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tipc_crypto_xmit\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: probing for key[%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tipc: %s: probing for key[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@tipc_crypto_xmit.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 1, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: gracing for msg (%d %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tipc: %s: gracing for msg (%d %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 1, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tipc_crypto_rcv\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tipc: %s: nokey %d, key %d/%x\0A\00", [33 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tipc_crypto_key_attach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@tipc_aead_users_dec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_aead_users_dec.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_set_state.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 1, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tipc_crypto_key_set_state\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: key changing %s ::%pS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tipc: %s: key changing %s ::%pS\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"[\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pas\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"act\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pen\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"] -> \00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tipc_aead_users.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_aead_users_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_aead_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_revoke.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_revoke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014tipc: %s: key is revoked\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tipc_crypto_key_revoke\00", [41 x i8] zeroinitializer }, align 32
@tipc_crypto_key_revoke._entry_ptr = internal global ptr @tipc_crypto_key_revoke._entry, section ".printk_index", align 4
@tipc_aead_encrypt.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_aead_encrypt\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TX(): skb tailroom is not enough: %d, requires: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"tipc: TX(): skb tailroom is not enough: %d, requires: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tipc_aead_encrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013tipc: TX: skb_cow_data() returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tipc_aead_encrypt._entry_ptr = internal global ptr @tipc_aead_encrypt._entry, section ".printk_index", align 4
@tipc_aead_encrypt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013tipc: TX: skb_to_sgvec() returned %d, nsg %d!\0A\00", [47 x i8] zeroinitializer }, align 32
@tipc_aead_encrypt._entry_ptr.66 = internal global ptr @tipc_aead_encrypt._entry.64, section ".printk_index", align 4
@tipc_crypto_key_try_align.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_try_align.__warned.67 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_try_align._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_crypto_key_try_align = private unnamed_addr constant [26 x i8] c"tipc_crypto_key_try_align\00", align 1
@tipc_crypto_key_try_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.tipc_crypto_key_try_align, ptr @.str.3, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016tipc: %s: key[%d] -> key[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@tipc_crypto_key_try_align._entry_ptr = internal global ptr @tipc_crypto_key_try_align._entry, section ".printk_index", align 4
@tipc_crypto_key_pick_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_pick_tx.__warned.69 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_key_pick_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014tipc: Failed to clone skb for next round if any\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tipc_crypto_key_pick_tx\00", [40 x i8] zeroinitializer }, align 32
@tipc_crypto_key_pick_tx._entry_ptr = internal global ptr @tipc_crypto_key_pick_tx._entry, section ".printk_index", align 4
@tipc_aead_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013tipc: RX: skb_cow_data() returned %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_aead_decrypt\00", [46 x i8] zeroinitializer }, align 32
@tipc_aead_decrypt._entry_ptr = internal global ptr @tipc_aead_decrypt._entry, section ".printk_index", align 4
@tipc_aead_decrypt._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013tipc: RX: skb_to_sgvec() returned %d, nsg %d\0A\00", [48 x i8] zeroinitializer }, align 32
@tipc_aead_decrypt._entry_ptr.76 = internal global ptr @tipc_aead_decrypt._entry.74, section ".printk_index", align 4
@tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tipc_crypto_rcv_complete\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"TX->RX(%s): err %d, aead %p, skb->next %p, flags %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"tipc: TX->RX(%s): err %d, aead %p, skb->next %p, flags %x\0A\00", [37 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.77, ptr @.str.3, ptr @.str.80, i8 1, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"skb_cb [recurs %d, last %p], tx->aead [%p %p %p]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"tipc: skb_cb [recurs %d, last %p], tx->aead [%p %p %p]\0A\00", [40 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.3, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013tipc: Packet dropped after decryption!\0A\00", [54 x i8] zeroinitializer }, align 32
@tipc_crypto_rcv_complete._entry_ptr = internal global ptr @tipc_crypto_rcv_complete._entry, section ".printk_index", align 4
@tipc_crypto_key_synch.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tipc_crypto_key_synch\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: key users changed %d-- %d++, peer %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tipc: %s: key users changed %d-- %d++, peer %s\0A\00", [48 x i8] zeroinitializer }, align 32
@tipc_aead_users_inc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_do_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 2013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016tipc: \0A=============== TIPC Crypto Statistics ===============\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_crypto_do_cmd\00", [45 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr = internal global ptr @tipc_crypto_do_cmd._entry, section ".printk_index", align 4
@tipc_crypto_do_cmd._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 2016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016tipc: Key status:\0A\00", [43 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.91 = internal global ptr @tipc_crypto_do_cmd._entry.89, section ".printk_index", align 4
@tipc_crypto_do_cmd._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016tipc: TX(%7.7s)\0A%s\00", [43 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.94 = internal global ptr @tipc_crypto_do_cmd._entry.92, section ".printk_index", align 4
@tipc_crypto_do_cmd._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.3, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016tipc: RX(%7.7s)\0A%s\00", [43 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.97 = internal global ptr @tipc_crypto_do_cmd._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"|%11s \00", [25 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.88, ptr @.str.3, i32 2031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016tipc: Counter     %s\00", [41 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.101 = internal global ptr @tipc_crypto_do_cmd._entry.99, section ".printk_index", align 4
@tipc_crypto_do_cmd._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.88, ptr @.str.3, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016tipc: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.104 = internal global ptr @tipc_crypto_do_cmd._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TX(%7.7s) \00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"|%11d \00", [25 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.88, ptr @.str.3, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016tipc: %s\00", [21 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.109 = internal global ptr @tipc_crypto_do_cmd._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%12s\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX(%7.7s) \00", [21 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.88, ptr @.str.3, i32 2058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.114 = internal global ptr @tipc_crypto_do_cmd._entry.113, section ".printk_index", align 4
@tipc_crypto_do_cmd._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.88, ptr @.str.3, i32 2064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016tipc: \0A======================== Done ========================\0A\00", [63 x i8] zeroinitializer }, align 32
@tipc_crypto_do_cmd._entry_ptr.117 = internal global ptr @tipc_crypto_do_cmd._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACT\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAS\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PEN\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09Key%d: %s\00", [21 x i8] zeroinitializer }, align 32
@tipc_crypto_key_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"{\220x...%s\22, \22%s\22}/%d:%d\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Peer RX active: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nok\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"async_ok\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"async_nok\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"badmsgs\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nokeys\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"switches\00", [23 x i8] zeroinitializer }, align 32
@tipc_crypto_key_rcv.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.135, ptr @.str.3, ptr @.str.136, i8 2, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_crypto_key_rcv\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: message data size is too small\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tipc: %s: message data size is too small\0A\00", [54 x i8] zeroinitializer }, align 32
@tipc_crypto_key_rcv.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.135, ptr @.str.3, ptr @.str.138, i8 2, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: invalid MSG_CRYPTO key size\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tipc: %s: invalid MSG_CRYPTO key size\0A\00", [57 x i8] zeroinitializer }, align 32
@tipc_crypto_key_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.3, i32 2301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tipc: %s: key existed <%p>, gen %d vs %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tipc_crypto_key_rcv._entry_ptr = internal global ptr @tipc_crypto_key_rcv._entry, section ".printk_index", align 4
@tipc_crypto_key_rcv._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.135, ptr @.str.3, i32 2308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013tipc: %s: unable to allocate memory for skey\0A\00", [48 x i8] zeroinitializer }, align 32
@tipc_crypto_key_rcv._entry_ptr.143 = internal global ptr @tipc_crypto_key_rcv._entry.141, section ".printk_index", align 4
@tipc_crypto_work_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.3, i32 2362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014tipc: %s: unable to distr key[%d] to %s, err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_crypto_work_rx\00", [44 x i8] zeroinitializer }, align 32
@tipc_crypto_work_rx._entry_ptr = internal global ptr @tipc_crypto_work_rx._entry, section ".printk_index", align 4
@tipc_crypto_work_rx._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.3, i32 2375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014tipc: %s: unable to attach received skey, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tipc_crypto_work_rx._entry_ptr.148 = internal global ptr @tipc_crypto_work_rx._entry.146, section ".printk_index", align 4
@tipc_crypto_work_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tipc_crypto_work_tx._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tipc_crypto_work_tx = private unnamed_addr constant [20 x i8] c"tipc_crypto_work_tx\00", align 1
@tipc_crypto_work_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @__func__.tipc_crypto_work_tx, ptr @.str.3, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014tipc: %s: rekeying returns %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tipc_crypto_work_tx._entry_ptr = internal global ptr @tipc_crypto_work_tx._entry, section ".printk_index", align 4
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 28, i64 36]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967284]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 13]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 13]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 4294967168, i64 4294967170]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 4294967170, i64 4294967222]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 340, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 345, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 346, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 355, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1230, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1472, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1499, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1500, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1500, i32 48 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1500, i32 55 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1505, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1507, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1531, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1533, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1563, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1580, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1590, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1608, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1621, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1707, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1722, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1871, i32 5 }
@___asan_gen_.290 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 45, i32 7 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1102, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2124, i32 34 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2127, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2129, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2131, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2133, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2135, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2135, i32 34 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2138, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2142, i32 34 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 695, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 723, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1453, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 760, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 766, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 782, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1289, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1354, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 896, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 911, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1901, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1904, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1967, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 1434, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2013, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2016, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2017, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2023, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2030, i32 36 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2031, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2035, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2037, i32 26 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2041, i32 37 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2043, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2044, i32 27 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2044, i32 35 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2050, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2058, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2064, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2080, i32 9 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2082, i32 9 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2089, i32 9 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2093, i32 36 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2099, i32 12 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2101, i32 42 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2101, i32 48 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2105, i32 36 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2109, i32 36 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 84, i32 41 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 84, i32 47 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 84, i32 54 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 84, i32 63 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 85, i32 6 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 85, i32 19 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 85, i32 30 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 86, i32 6 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2285, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2294, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2300, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2308, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2360, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2374, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.605 = private constant [21 x i8] c"../net/tipc/crypto.c\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.605, i32 2466, i32 3 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @tipc_aead_decrypt._entry, ptr @tipc_aead_decrypt._entry.74, ptr @tipc_aead_decrypt._entry_ptr, ptr @tipc_aead_decrypt._entry_ptr.76, ptr @tipc_aead_encrypt._entry, ptr @tipc_aead_encrypt._entry.64, ptr @tipc_aead_encrypt._entry_ptr, ptr @tipc_aead_encrypt._entry_ptr.66, ptr @tipc_crypto_do_cmd._entry, ptr @tipc_crypto_do_cmd._entry.102, ptr @tipc_crypto_do_cmd._entry.107, ptr @tipc_crypto_do_cmd._entry.113, ptr @tipc_crypto_do_cmd._entry.115, ptr @tipc_crypto_do_cmd._entry.89, ptr @tipc_crypto_do_cmd._entry.92, ptr @tipc_crypto_do_cmd._entry.95, ptr @tipc_crypto_do_cmd._entry.99, ptr @tipc_crypto_do_cmd._entry_ptr, ptr @tipc_crypto_do_cmd._entry_ptr.101, ptr @tipc_crypto_do_cmd._entry_ptr.104, ptr @tipc_crypto_do_cmd._entry_ptr.109, ptr @tipc_crypto_do_cmd._entry_ptr.114, ptr @tipc_crypto_do_cmd._entry_ptr.117, ptr @tipc_crypto_do_cmd._entry_ptr.91, ptr @tipc_crypto_do_cmd._entry_ptr.94, ptr @tipc_crypto_do_cmd._entry_ptr.97, ptr @tipc_crypto_key_pick_tx._entry, ptr @tipc_crypto_key_pick_tx._entry_ptr, ptr @tipc_crypto_key_rcv._entry, ptr @tipc_crypto_key_rcv._entry.141, ptr @tipc_crypto_key_rcv._entry_ptr, ptr @tipc_crypto_key_rcv._entry_ptr.143, ptr @tipc_crypto_key_revoke._entry, ptr @tipc_crypto_key_revoke._entry_ptr, ptr @tipc_crypto_key_try_align._entry, ptr @tipc_crypto_key_try_align._entry_ptr, ptr @tipc_crypto_rcv_complete._entry, ptr @tipc_crypto_rcv_complete._entry_ptr, ptr @tipc_crypto_timeout._entry, ptr @tipc_crypto_timeout._entry.23, ptr @tipc_crypto_timeout._entry_ptr, ptr @tipc_crypto_timeout._entry_ptr.24, ptr @tipc_crypto_work_rx._entry, ptr @tipc_crypto_work_rx._entry.146, ptr @tipc_crypto_work_rx._entry_ptr, ptr @tipc_crypto_work_rx._entry_ptr.148, ptr @tipc_crypto_work_tx._entry, ptr @tipc_crypto_work_tx._entry_ptr, ptr @tipc_aead_key_validate.__msg, ptr @.str, ptr @tipc_aead_key_validate.__msg.1, ptr @tipc_aead_key_validate.__msg.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tipc_crypto_start.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tipc_crypto_start.__key.10, ptr @.str.11, ptr @tipc_crypto_start.__key.12, ptr @.str.13, ptr @tipc_crypto_start.__key.14, ptr @tipc_crypto_start.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tipc_crypto_rcv._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @tipc_crypto_key_try_align._rs, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @tipc_crypto_rcv_complete._rs, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @tipc_crypto_work_tx._rs, ptr @.str.149], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_key_validate.__msg to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_key_validate.__msg.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_key_validate.__msg.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_start.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_start.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_start.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_start.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_timeout._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_rcv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_revoke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_encrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_encrypt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_try_align._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_try_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_pick_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_aead_decrypt._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_rcv_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_rcv_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_do_cmd._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_key_rcv._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_work_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_work_rx._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_work_tx._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_crypto_work_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_aead_key_validate(ptr noundef %ukey, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_has_alg(ptr noundef %ukey, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end6, !prof !331

do.body:                                          ; preds = %entry
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_aead_key_validate.__msg) #12
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tipc_aead_key_validate.__msg, ptr %1, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call9 = tail call i32 @strcmp(ptr noundef %ukey, ptr noundef nonnull dereferenceable(9) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end21, label %do.body12

do.body12:                                        ; preds = %if.end6
  %extack14 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %3 = ptrtoint ptr %extack14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack14, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_aead_key_validate.__msg.1) #12
  %tobool15.not = icmp eq ptr %4, null
  br i1 %tobool15.not, label %do.body12.cleanup_crit_edge, label %if.then16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tipc_aead_key_validate.__msg.1, ptr %4, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %keylen22 = getelementptr inbounds %struct.tipc_aead_key, ptr %ukey, i32 0, i32 1
  %6 = ptrtoint ptr %keylen22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen22, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body32.critedge [
    i32 20, label %if.end21.cleanup_crit_edge
    i32 28, label %if.end21.cleanup_crit_edge53
    i32 36, label %if.end21.cleanup_crit_edge54
  ]

if.end21.cleanup_crit_edge54:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.cleanup_crit_edge53:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body32.critedge:                               ; preds = %if.end21
  %extack34 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %extack34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack34, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tipc_aead_key_validate.__msg.2) #12
  %tobool35.not = icmp eq ptr %10, null
  br i1 %tobool35.not, label %do.body32.critedge.cleanup_crit_edge, label %if.then36

do.body32.critedge.cleanup_crit_edge:             ; preds = %do.body32.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then36:                                        ; preds = %do.body32.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tipc_aead_key_validate.__msg.2, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body32.critedge.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end21.cleanup_crit_edge53, %if.end21.cleanup_crit_edge54, %if.then16, %do.body12.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then5 ], [ -19, %do.body.cleanup_crit_edge ], [ -524, %if.then16 ], [ -524, %do.body12.cleanup_crit_edge ], [ -129, %if.then36 ], [ -129, %do.body32.critedge.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge53 ], [ 0, %if.end21.cleanup_crit_edge54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_ehdr_validate(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !331

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp3.i = icmp ult i32 %1, 16
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !331

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 16, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !331

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load = load i16, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8193, i16 %bf.load)
  %cmp.not = icmp ugt i16 %bf.load, -8193
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !332

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = and i16 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %7)
  %cmp.not.i40 = icmp eq i16 %7, 6656
  %cond.i = select i1 %cmp.not.i40, i32 28, i32 16
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i43 = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %sub.i.i43)
  %cmp.not.i44 = icmp ugt i32 %cond.i, %sub.i.i43
  br i1 %cmp.not.i44, label %if.end.i46, label %if.end11.if.end23_crit_edge, !prof !331

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i46:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cond.i)
  %cmp3.i45 = icmp ult i32 %9, %cond.i
  br i1 %cmp3.i45, label %if.end.i46.cleanup_crit_edge, label %pskb_may_pull.exit52, !prof !331

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit52:                             ; preds = %if.end.i46
  %sub.i47 = sub i32 %cond.i, %sub.i.i43
  %call13.i48 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i47) #12
  %cmp14.i49.not = icmp eq ptr %call13.i48, null
  br i1 %cmp14.i49.not, label %pskb_may_pull.exit52.cleanup_crit_edge, label %pskb_may_pull.exit52.if.end23_crit_edge, !prof !331

pskb_may_pull.exit52.if.end23_crit_edge:          ; preds = %pskb_may_pull.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

pskb_may_pull.exit52.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %pskb_may_pull.exit52.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %add = add nuw nsw i32 %cond.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp24.not = icmp ugt i32 %13, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %pskb_may_pull.exit52.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %pskb_may_pull.exit52.cleanup_crit_edge ], [ %cmp24.not, %if.end23 ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end.i46.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_crypto_key_init(ptr noundef %c, ptr noundef %ukey, i8 noundef zeroext %mode, i1 noundef zeroext %master_key) local_unnamed_addr #0 align 64 {
if.end.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 384) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7_crit_edge, label %if.end13.i, !prof !331

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end13.i:                                       ; preds = %if.end.i
  %keylen14.i = getelementptr inbounds %struct.tipc_aead_key, ptr %ukey, i32 0, i32 1
  %1 = ptrtoint ptr %keylen14.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %keylen14.i, align 4
  %sub.i = add i32 %2, -4
  %call15.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #17
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15.i, ptr %call7.i.i.i, align 128
  %tobool18.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.end13.i
  %key.i = getelementptr inbounds %struct.tipc_aead_key, ptr %ukey, i32 0, i32 2
  br label %do.body.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end7

do.body.i:                                        ; preds = %do.cond72.i.do.body.i_crit_edge, %do.body.preheader.i
  %tfm_cnt.0.i = phi i32 [ %inc.i, %do.cond72.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %head.0.i = phi ptr [ %head.1.i, %do.cond72.i.do.body.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %do.body.preheader.i ]
  %call21.i = tail call ptr @crypto_alloc_aead(ptr noundef %ukey, i32 noundef 0, i32 noundef 0) #12
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call21.i to i32
  br label %do.end74.i

if.end25.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tfm_cnt.0.i)
  %tobool26.not.i = icmp eq i32 %tfm_cnt.0.i, 0
  br i1 %tobool26.not.i, label %land.rhs.i, label %if.end25.i.if.end35.i_crit_edge

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.rhs.i:                                       ; preds = %if.end25.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call21.i, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %6, i32 -104
  %7 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ivsize.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 12
  br i1 %cmp.not.i, label %land.rhs.i.if.end35.i_crit_edge, label %do.end74.thread.i, !prof !332

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

do.end74.thread.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call21.i, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call21.i, ptr noundef %base.i.i.i) #12
  br label %tipc_aead_init.exit

if.end35.i:                                       ; preds = %land.rhs.i.if.end35.i_crit_edge, %if.end25.i.if.end35.i_crit_edge
  %call36.i = tail call i32 @crypto_aead_setauthsize(ptr noundef %call21.i, i32 noundef 16) #12
  %call38.i = tail call i32 @crypto_aead_setkey(ptr noundef %call21.i, ptr noundef %key.i, i32 noundef %sub.i) #12
  %or.i = or i32 %call38.i, %call36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool39.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool39.not.i, label %if.end47.i, label %if.then46.i, !prof !332

if.then46.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i150.i = getelementptr inbounds %struct.crypto_aead, ptr %call21.i, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call21.i, ptr noundef %base.i.i150.i) #12
  br label %do.end74.i

if.end47.i:                                       ; preds = %if.end35.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 12) #16
  %tobool49.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not.i, label %if.then58.i, label %if.end59.i, !prof !331

if.then58.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i151.i = getelementptr inbounds %struct.crypto_aead, ptr %call21.i, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call21.i, ptr noundef %base.i.i151.i) #12
  br label %do.end74.i

if.end59.i:                                       ; preds = %if.end47.i
  %list.i = getelementptr inbounds %struct.tipc_tfm, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tipc_tfm, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i, ptr %prev.i.i, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21.i, ptr %call7.i.i, align 8
  br i1 %tobool26.not.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.end59.i
  %call63168.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call63168.i, i32 %13)
  %cmp64169.i = icmp ult i32 %call63168.i, %13
  br i1 %cmp64169.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.cond72.i_crit_edge

for.cond.preheader.i.do.cond72.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond72.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call63170.i = phi i32 [ %call63.i, %for.body.i.for.body.i_crit_edge ], [ %call63168.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i.i, align 128
  %16 = ptrtoint ptr %15 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call63170.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, %16
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %19, align 4
  %call63.i = tail call i32 @cpumask_next(i32 noundef %call63170.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp64.i = icmp ult i32 %call63.i, %21
  br i1 %cmp64.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.cond72.i_crit_edge

for.body.i.do.cond72.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond72.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %if.end59.i
  %list70.i = getelementptr inbounds %struct.tipc_tfm, ptr %head.0.i, i32 0, i32 1
  %prev.i152.i = getelementptr inbounds %struct.tipc_tfm, ptr %head.0.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i152.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i152.i, align 4
  %call.i.i153.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %list70.i) #12
  br i1 %call.i.i153.i, label %if.end.i.i.i, label %if.else.i.do.cond72.i_crit_edge

if.else.i.do.cond72.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond72.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i152.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i152.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list70.i, ptr %list.i, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i.i, align 8
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %do.cond72.i

do.cond72.i:                                      ; preds = %if.end.i.i.i, %if.else.i.do.cond72.i_crit_edge, %for.body.i.do.cond72.i_crit_edge, %for.cond.preheader.i.do.cond72.i_crit_edge
  %head.1.i = phi ptr [ %head.0.i, %if.else.i.do.cond72.i_crit_edge ], [ %head.0.i, %if.end.i.i.i ], [ %call7.i.i, %for.cond.preheader.i.do.cond72.i_crit_edge ], [ %call7.i.i, %for.body.i.do.cond72.i_crit_edge ]
  %inc.i = add nuw nsw i32 %tfm_cnt.0.i, 1
  %28 = load i32, ptr @sysctl_tipc_max_tfms, align 4
  %cmp73.i = icmp slt i32 %inc.i, %28
  br i1 %cmp73.i, label %do.cond72.i.do.body.i_crit_edge, label %do.cond72.i.if.end78.i_crit_edge

do.cond72.i.if.end78.i_crit_edge:                 ; preds = %do.cond72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

do.cond72.i.do.body.i_crit_edge:                  ; preds = %do.cond72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end74.i:                                       ; preds = %if.then58.i, %if.then46.i, %if.then23.i
  %err.0.i = phi i32 [ %4, %if.then23.i ], [ %or.i, %if.then46.i ], [ -12, %if.then58.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tfm_cnt.0.i)
  %tobool75.not.i = icmp eq i32 %tfm_cnt.0.i, 0
  br i1 %tobool75.not.i, label %do.end74.i.tipc_aead_init.exit_crit_edge, label %do.end74.i.if.end78.i_crit_edge

do.end74.i.if.end78.i_crit_edge:                  ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

do.end74.i.tipc_aead_init.exit_crit_edge:         ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_init.exit

if.end78.i:                                       ; preds = %do.end74.i.if.end78.i_crit_edge, %do.cond72.i.if.end78.i_crit_edge
  %hint.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %sub.i
  %add.ptr82.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  %call83.i = tail call ptr @bin2hex(ptr noundef %hint.i, ptr noundef %add.ptr82.i, i32 noundef 5) #12
  %mode84.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %mode84.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %mode, ptr %mode84.i, align 1
  %cloned.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %cloned.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cloned.i, align 8
  %authsize.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %authsize.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %authsize.i, align 4
  %32 = ptrtoint ptr %keylen14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %keylen14.i, align 4
  %add.i.i = add i32 %33, 36
  %call86.i = tail call ptr @kmemdup(ptr noundef %ukey, i32 noundef %add.i.i, i32 noundef 3264) #12
  %key87.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %key87.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call86.i, ptr %key87.i, align 4
  %tobool89.not.i = icmp eq ptr %call86.i, null
  br i1 %tobool89.not.i, label %if.then90.i, label %tipc_aead_init.exit.thread15

if.then90.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @tipc_aead_free(ptr noundef %rcu.i) #12
  br label %if.end7

tipc_aead_init.exit.thread15:                     ; preds = %if.end78.i
  %salt.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr.i, align 1
  %37 = ptrtoint ptr %salt.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %salt.i, align 16
  %users.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %users.i, align 4
  %seqno.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 12
  %call.i.i149.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqno.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %seqno.i, i64 noundef 0) #12
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %39 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %refcnt.i, align 8
  %call5 = tail call fastcc i32 @tipc_crypto_key_attach(ptr noundef %c, ptr noundef nonnull %call7.i.i.i, i8 noundef zeroext 0, i1 noundef zeroext %master_key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %tipc_aead_init.exit.thread15.if.end7_crit_edge

tipc_aead_init.exit.thread15.if.end7_crit_edge:   ; preds = %tipc_aead_init.exit.thread15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

tipc_aead_init.exit:                              ; preds = %do.end74.i.tipc_aead_init.exit_crit_edge, %do.end74.thread.i
  %err.0157.i = phi i32 [ -524, %do.end74.thread.i ], [ %err.0.i, %do.end74.i.tipc_aead_init.exit_crit_edge ]
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i.i, align 128
  tail call void @free_percpu(ptr noundef %41) #12
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end7

if.then6:                                         ; preds = %tipc_aead_init.exit.thread15
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @tipc_aead_free(ptr noundef %rcu)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %tipc_aead_init.exit, %tipc_aead_init.exit.thread15.if.end7_crit_edge, %if.then90.i, %if.then19.i, %if.end.i.if.end7_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then6 ], [ %call5, %tipc_aead_init.exit.thread15.if.end7_crit_edge ], [ %err.0157.i, %tipc_aead_init.exit ], [ -12, %if.then90.i ], [ -12, %if.then19.i ], [ -12, %if.end.i.if.end7_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_crypto_key_attach(ptr noundef %c, ptr noundef %aead, i8 noundef zeroext %pos, i1 noundef zeroext %master_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %key1 = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %key.sroa.0.0.copyload = load i8, ptr %key1, align 2
  br i1 %master_key, label %entry.attach_crit_edge, label %if.end

entry.attach_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %attach

if.end:                                           ; preds = %entry
  %bf.lshr = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool2.not = icmp eq i8 %bf.clear, 0
  %1 = and i8 %key.sroa.0.0.copyload, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end9, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end9:                                          ; preds = %if.end
  %bf.clear11 = and i8 %key.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear11)
  %tobool12.not = icmp eq i8 %bf.clear11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %idxprom = zext i8 %bf.clear11 to i32
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %c, i32 0, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @tipc_aead_users(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then13.exit_crit_edge, label %if.then13.attach_crit_edge

if.then13.attach_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %attach

if.then13.exit_crit_edge:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pos)
  %tobool22.not = icmp eq i8 %pos, 0
  br i1 %tobool22.not, label %if.else.if.end57_crit_edge, label %if.then23

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then23:                                        ; preds = %if.else
  br i1 %tobool2.not, label %if.else40, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then23
  %4 = urem i8 %bf.clear, 3
  %narrow = add nuw nsw i8 %4, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow, i8 %pos)
  %cmp35.not = icmp eq i8 %narrow, %pos
  br i1 %cmp35.not, label %land.lhs.true29.if.end57_crit_edge, label %if.then37

land.lhs.true29.if.end57_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then37:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %bf.value = shl i8 %pos, 4
  %bf.shl = and i8 %bf.value, 48
  %bf.clear39 = and i8 %key.sroa.0.0.copyload, -49
  %bf.set = or i8 %bf.clear39, %bf.shl
  br label %attach

if.else40:                                        ; preds = %if.then23
  br i1 %tobool7.not, label %if.then50, label %if.else40.if.end57_crit_edge

if.else40.if.end57_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then50:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  %bf.value52 = and i8 %pos, 3
  %bf.clear53 = and i8 %key.sroa.0.0.copyload, -4
  %bf.set54 = or i8 %bf.clear53, %bf.value52
  br label %attach

if.end57:                                         ; preds = %if.else40.if.end57_crit_edge, %land.lhs.true29.if.end57_crit_edge, %if.else.if.end57_crit_edge
  %bf.lshr64 = lshr i8 %key.sroa.0.0.copyload, 4
  %bf.clear65 = and i8 %bf.lshr64, 3
  %cond = select i1 %tobool2.not, i8 %bf.clear65, i8 %bf.clear
  %rem67 = urem i8 %cond, 3
  %add68 = add nuw nsw i8 %rem67, 1
  %bf.clear72 = and i8 %key.sroa.0.0.copyload, -4
  %bf.set73 = or i8 %add68, %bf.clear72
  br label %attach

attach:                                           ; preds = %if.end57, %if.then50, %if.then37, %if.then13.attach_crit_edge, %entry.attach_crit_edge
  %new_key.0 = phi i8 [ %pos, %if.then37 ], [ %add68, %if.end57 ], [ %pos, %if.then50 ], [ 0, %entry.attach_crit_edge ], [ %bf.clear11, %if.then13.attach_crit_edge ]
  %key.sroa.0.0 = phi i8 [ %bf.set, %if.then37 ], [ %bf.set73, %if.end57 ], [ %bf.set54, %if.then50 ], [ %key.sroa.0.0.copyload, %entry.attach_crit_edge ], [ %key.sroa.0.0.copyload, %if.then13.attach_crit_edge ]
  %crypto = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 1
  %5 = ptrtoint ptr %crypto to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %c, ptr %crypto, align 4
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %tobool77.not = icmp eq ptr %7, null
  %key_gen = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %key_gen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %key_gen, align 4
  br i1 %tobool77.not, label %cond.true78, label %attach.cond.end83_crit_edge

attach.cond.end83_crit_edge:                      ; preds = %attach
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end83

cond.true78:                                      ; preds = %attach
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i16 %9, 1
  %10 = ptrtoint ptr %key_gen to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %inc, ptr %key_gen, align 4
  br label %cond.end83

cond.end83:                                       ; preds = %cond.true78, %attach.cond.end83_crit_edge
  %cond84.in = phi i16 [ %inc, %cond.true78 ], [ %9, %attach.cond.end83_crit_edge ]
  %gen = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 10
  %11 = ptrtoint ptr %gen to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %cond84.in, ptr %gen, align 16
  %dep_map = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool89.not = icmp eq i32 %call.i, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %cond.end83.do.end_crit_edge

cond.end83.do.end_crit_edge:                      ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true90:                                  ; preds = %cond.end83
  %call91 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true90.do.end_crit_edge, label %land.lhs.true93

land.lhs.true90.do.end_crit_edge:                 ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true93:                                  ; preds = %land.lhs.true90
  %.b228 = load i1, ptr @tipc_crypto_key_attach.__warned, align 1
  br i1 %.b228, label %land.lhs.true93.do.end_crit_edge, label %if.then95

land.lhs.true93.do.end_crit_edge:                 ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then95:                                        ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_attach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1188, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then95, %land.lhs.true93.do.end_crit_edge, %land.lhs.true90.do.end_crit_edge, %cond.end83.do.end_crit_edge
  %idxprom98 = zext i8 %new_key.0 to i32
  %arrayidx99 = getelementptr %struct.tipc_crypto, ptr %c, i32 0, i32 2, i32 %idxprom98
  %12 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx99, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  %14 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %aead, ptr %arrayidx99, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i

do.end.tipc_aead_put.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i:                                  ; preds = %do.end
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %13, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %13, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %do.end.tipc_aead_put.exit_crit_edge
  %16 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %key1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %key.sroa.0.0)
  %cmp150.not = icmp eq i8 %17, %key.sroa.0.0
  br i1 %cmp150.not, label %tipc_aead_put.exit.if.end163_crit_edge, label %if.then154, !prof !331

tipc_aead_put.exit.if.end163_crit_edge:           ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then154:                                       ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr156 = lshr i8 %key.sroa.0.0, 4
  %bf.clear157 = and i8 %bf.lshr156, 3
  %bf.lshr159 = lshr i8 %key.sroa.0.0, 2
  %bf.clear160 = and i8 %bf.lshr159, 3
  %bf.clear162 = and i8 %key.sroa.0.0, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %c, i8 noundef zeroext %bf.clear157, i8 noundef zeroext %bf.clear160, i8 noundef zeroext %bf.clear162)
  br label %if.end163

if.end163:                                        ; preds = %if.then154, %tipc_aead_put.exit.if.end163_crit_edge
  %18 = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 18
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load164 = load i8, ptr %18, align 16
  %bf.set166 = and i8 %bf.load164, 47
  %bf.load164.mask = and i8 %bf.load164, 64
  %bf.shl179 = select i1 %master_key, i8 64, i8 %bf.load164.mask
  %bf.clear168 = or i8 %bf.set166, %bf.shl179
  %bf.set181 = or i8 %bf.clear168, -128
  store i8 %bf.set181, ptr %18, align 16
  br label %exit

exit:                                             ; preds = %if.end163, %if.then13.exit_crit_edge, %if.end.exit_crit_edge
  %rc.0 = phi i32 [ %idxprom98, %if.end163 ], [ -16, %if.then13.exit_crit_edge ], [ -16, %if.end.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_aead_free(ptr noundef %rp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rp, i32 -36
  %cloned = getelementptr i8, ptr %rp, i32 -28
  %0 = ptrtoint ptr %cloned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cloned, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %1, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %if.end

do.body:                                          ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !337
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 128
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !338
  %19 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i52 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i52 to ptr
  %preempt_count.i.i53 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i53, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i53, align 4
  %list = getelementptr inbounds %struct.tipc_tfm, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %tfm_entry.061 = getelementptr i8, ptr %24, i32 -4
  %cmp.not62 = icmp eq ptr %tfm_entry.061, %18
  br i1 %cmp.not62, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %tfm_entry.065 = phi ptr [ %tfm_entry.0, %list_del.exit.for.body_crit_edge ], [ %tfm_entry.061, %do.body.for.body_crit_edge ]
  %.pn.in63 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %24, %do.body.for.body_crit_edge ]
  %25 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in63, align 4
  %26 = ptrtoint ptr %tfm_entry.065 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tfm_entry.065, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %27, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %27, ptr noundef %base.i.i) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in63) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in63, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %34 = ptrtoint ptr %.pn.in63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in63, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in63, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tfm_entry.065) #12
  %tfm_entry.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp.not = icmp eq ptr %tfm_entry.0, %18
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body.for.end_crit_edge
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %18, align 4
  %base.i.i54 = getelementptr inbounds %struct.crypto_aead, ptr %37, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %37, ptr noundef %base.i.i54) #12
  %call.i.i55 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i55, label %if.end.i.i58, label %for.end.list_del.exit60_crit_edge

for.end.list_del.exit60_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit60

if.end.i.i58:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i56 = getelementptr inbounds %struct.tipc_tfm, ptr %18, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i56, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i57, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit60

list_del.exit60:                                  ; preds = %if.end.i.i58, %for.end.list_del.exit60_crit_edge
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i59 = getelementptr inbounds %struct.tipc_tfm, ptr %18, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i59, align 4
  tail call void @kfree(ptr noundef %18) #12
  br label %if.end

if.end:                                           ; preds = %list_del.exit60, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 128
  tail call void @free_percpu(ptr noundef %47) #12
  %key = getelementptr i8, ptr %rp, i32 8
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key, align 4
  tail call void @kfree_sensitive(ptr noundef %49) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_crypto_key_flush(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 19
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 128
  %call = tail call fastcc ptr @tipc_net(ptr noundef %3)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %4 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crypto_tx, align 4
  %work = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #12
  br i1 %call1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %skey = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 7
  %6 = ptrtoint ptr %skey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skey, align 32
  tail call void @kfree(ptr noundef %7) #12
  %8 = ptrtoint ptr %skey to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skey, align 32
  %key_distr = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %key_distr, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %key_distr) #12, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  tail call void @tipc_node_put(ptr noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %peer_rx_active = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 3
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_rx_active, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %peer_rx_active, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %peer_rx_active) #12, !srcloc !340
  %asmresult.i.i93 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i93)
  %tobool7.not = icmp eq i32 %asmresult.i.i93, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %5, i32 0, i32 2, i32 %asmresult.i.i93
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @tipc_aead_users_dec(ptr noundef %14, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %timer1 = getelementptr inbounds %struct.tipc_crypto, ptr %5, i32 0, i32 16
  %16 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %timer1, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %17 = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %17, align 16
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %c, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %dep_map = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 19, i32 0, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %tipc_aead_put.exit.do.body_crit_edge, %if.end10
  %k.095 = phi i32 [ 0, %if.end10 ], [ %inc, %tipc_aead_put.exit.do.body_crit_edge ]
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b91 = load i1, ptr @tipc_crypto_key_flush.__warned, align 1
  br i1 %.b91, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1230, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx22 = getelementptr %struct.tipc_crypto, ptr %c, i32 0, i32 2, i32 %k.095
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx22, align 4
  store volatile ptr null, ptr %arrayidx22, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.end.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i

do.end.tipc_aead_put.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i:                                  ; preds = %do.end
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %20, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %20, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %do.end.tipc_aead_put.exit_crit_edge
  %inc = add nuw nsw i32 %k.095, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %tipc_aead_put.exit.do.body_crit_edge

tipc_aead_put.exit.do.body_crit_edge:             ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sndnxt = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 15
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sndnxt, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %sndnxt, i64 noundef 0) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 45, ptr noundef nonnull @.str.16) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %9 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_aead_users_dec(ptr noundef %aead, i32 noundef %lim) unnamed_addr #0 align 64 {
entry:
  %aead.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aead.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aead, ptr %aead.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %aead.addr.0.aead.addr.0.aead.addr.0. = load volatile ptr, ptr %aead.addr, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @tipc_aead_users_dec.__warned, align 1
  br i1 %.b34, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_users_dec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 461, ptr noundef nonnull @.str.16) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %aead.addr.0.aead.addr.0.aead.addr.0., null
  br i1 %tobool10.not, label %do.end8.if.end30_crit_edge, label %if.then11

do.end8.if.end30_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then11:                                        ; preds = %do.end8
  %6 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %aead.addr.0.aead.addr.0.aead.addr.0.31 = load volatile ptr, ptr %aead.addr, align 4
  %call17 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.then11.do.end27_crit_edge

if.then11.do.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.then11
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b3233 = load i1, ptr @tipc_aead_users_dec.__warned.42, align 1
  br i1 %.b3233, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_users_dec.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 463, ptr noundef nonnull @.str.16) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.then11.do.end27_crit_edge
  %users = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.0.aead.addr.0.aead.addr.0.31, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 %lim, i32 -1, ptr elementtype(i32) %users) #12, !srcloc !345
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %lim)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %lim
  br i1 %cmp.not.i.i.i, label %do.end27.if.end30_crit_edge, label %do.end11.i.i.i

do.end27.if.end30_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end11.i.i.i:                                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !346
  br label %if.end30

if.end30:                                         ; preds = %do.end11.i.i.i, %do.end27.if.end30_crit_edge, %do.end8.if.end30_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i35, label %if.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

if.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %if.end30
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %if.end30.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %8 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i42 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_key_set_state(ptr noundef %c, i8 noundef zeroext %new_passive, i8 noundef zeroext %new_active, i8 noundef zeroext %new_pending) unnamed_addr #4 align 64 {
entry:
  %old.i = alloca %struct.tipc_key, align 1
  %new.i = alloca %struct.tipc_key, align 1
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  %key = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %old.sroa.0.0.copyload = load i8, ptr %key, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #12
  %1 = shl i8 %new_passive, 4
  %2 = and i8 %1, 48
  %3 = shl i8 %new_active, 2
  %4 = and i8 %3, 12
  %or23 = or i8 %4, %2
  %5 = and i8 %new_pending, 3
  %or624 = or i8 %or23, %5
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or624, ptr %key, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_key_set_state.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_key_set_state, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %8)
  %coerce.dive17.coerce.sroa.0.0.copyload = load i8, ptr %key, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new.i)
  %9 = ptrtoint ptr %old.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %old.sroa.0.0.copyload, ptr %old.i, align 1
  %10 = ptrtoint ptr %new.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %coerce.dive17.coerce.sroa.0.0.copyload, ptr %new.i, align 1
  br label %again.i

again.i:                                          ; preds = %if.then34.i, %if.then
  %key.0.i = phi ptr [ %old.i, %if.then ], [ %new.i, %if.then34.i ]
  %i.0.i = phi i32 [ 0, %if.then ], [ %add38.i, %if.then34.i ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %i.0.i
  %sub.i = sub i32 32, %i.0.i
  %call.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.46) #12
  %add.i = add i32 %call.i, %i.0.i
  %11 = ptrtoint ptr %key.0.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %key.0.i, align 1
  %12 = and i8 %bf.load.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp7.i = icmp eq i8 %12, 16
  br i1 %cmp7.i, label %again.i.if.end25.i_crit_edge, label %if.else.i

again.i.if.end25.i_crit_edge:                     ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.else.i:                                        ; preds = %again.i
  %13 = and i8 %bf.load.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp13.i = icmp eq i8 %13, 4
  br i1 %cmp13.i, label %if.else.i.if.end25.i_crit_edge, label %if.else16.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18.i = and i8 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear18.i)
  %cmp20.i = icmp eq i8 %bf.clear18.i, 1
  %.str.49..str.50.i = select i1 %cmp20.i, ptr @.str.49, ptr @.str.50
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else16.i, %if.else.i.if.end25.i_crit_edge, %again.i.if.end25.i_crit_edge
  %s.0.i = phi ptr [ @.str.47, %again.i.if.end25.i_crit_edge ], [ @.str.48, %if.else.i.if.end25.i_crit_edge ], [ %.str.49..str.50.i, %if.else16.i ]
  %add.ptr26.i = getelementptr i8, ptr %buf, i32 %add.i
  %sub27.i = sub i32 32, %add.i
  %call30.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26.i, i32 noundef %sub27.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %s.0.i) #12
  %add31.i = add i32 %call30.i, %add.i
  %14 = ptrtoint ptr %key.0.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.1.i = load i8, ptr %key.0.i, align 1
  %15 = and i8 %bf.load.1.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %15)
  %cmp7.1.i = icmp eq i8 %15, 32
  br i1 %cmp7.1.i, label %if.end25.i.if.end25.1.i_crit_edge, label %if.else.1.i

if.end25.i.if.end25.1.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.1.i

if.else.1.i:                                      ; preds = %if.end25.i
  %16 = and i8 %bf.load.1.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %cmp13.1.i = icmp eq i8 %16, 8
  br i1 %cmp13.1.i, label %if.else.1.i.if.end25.1.i_crit_edge, label %if.else16.1.i

if.else.1.i.if.end25.1.i_crit_edge:               ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.1.i

if.else16.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18.1.i = and i8 %bf.load.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear18.1.i)
  %cmp20.1.i = icmp eq i8 %bf.clear18.1.i, 2
  %.str.49..str.50.1.i = select i1 %cmp20.1.i, ptr @.str.49, ptr @.str.50
  br label %if.end25.1.i

if.end25.1.i:                                     ; preds = %if.else16.1.i, %if.else.1.i.if.end25.1.i_crit_edge, %if.end25.i.if.end25.1.i_crit_edge
  %s.0.1.i = phi ptr [ @.str.47, %if.end25.i.if.end25.1.i_crit_edge ], [ @.str.48, %if.else.1.i.if.end25.1.i_crit_edge ], [ %.str.49..str.50.1.i, %if.else16.1.i ]
  %add.ptr26.1.i = getelementptr i8, ptr %buf, i32 %add31.i
  %sub27.1.i = sub i32 32, %add31.i
  %call30.1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26.1.i, i32 noundef %sub27.1.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %s.0.1.i) #12
  %add31.1.i = add i32 %call30.1.i, %add31.i
  %17 = ptrtoint ptr %key.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.2.i = load i8, ptr %key.0.i, align 1
  %18 = and i8 %bf.load.2.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %18)
  %cmp7.2.i = icmp eq i8 %18, 48
  br i1 %cmp7.2.i, label %if.end25.1.i.if.end25.2.i_crit_edge, label %if.else.2.i

if.end25.1.i.if.end25.2.i_crit_edge:              ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.2.i

if.else.2.i:                                      ; preds = %if.end25.1.i
  %19 = and i8 %bf.load.2.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %19)
  %cmp13.2.i = icmp eq i8 %19, 12
  br i1 %cmp13.2.i, label %if.else.2.i.if.end25.2.i_crit_edge, label %if.else16.2.i

if.else.2.i.if.end25.2.i_crit_edge:               ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.2.i

if.else16.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18.2.i = and i8 %bf.load.2.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear18.2.i)
  %cmp20.2.i = icmp eq i8 %bf.clear18.2.i, 3
  %.str.49..str.50.2.i = select i1 %cmp20.2.i, ptr @.str.49, ptr @.str.50
  br label %if.end25.2.i

if.end25.2.i:                                     ; preds = %if.else16.2.i, %if.else.2.i.if.end25.2.i_crit_edge, %if.end25.1.i.if.end25.2.i_crit_edge
  %s.0.2.i = phi ptr [ @.str.47, %if.end25.1.i.if.end25.2.i_crit_edge ], [ @.str.48, %if.else.2.i.if.end25.2.i_crit_edge ], [ %.str.49..str.50.2.i, %if.else16.2.i ]
  %add.ptr26.2.i = getelementptr i8, ptr %buf, i32 %add31.1.i
  %sub27.2.i = sub i32 32, %add31.1.i
  %call30.2.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26.2.i, i32 noundef %sub27.2.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %s.0.2.i) #12
  %add31.2.i = add i32 %call30.2.i, %add31.1.i
  %cmp32.not.i = icmp eq ptr %key.0.i, %new.i
  br i1 %cmp32.not.i, label %tipc_key_change_dump.exit, label %if.then34.i

if.then34.i:                                      ; preds = %if.end25.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr35.i = getelementptr i8, ptr %buf, i32 %add31.2.i
  %sub36.i = sub i32 32, %add31.2.i
  %call37.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35.i, i32 noundef %sub36.i, ptr noundef nonnull @.str.53) #12
  %add38.i = add i32 %call37.i, %add31.2.i
  br label %again.i

tipc_key_change_dump.exit:                        ; preds = %if.end25.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 13
  %add.ptr40.i = getelementptr i8, ptr %buf, i32 %add31.2.i
  %sub41.i = sub i32 32, %add31.2.i
  %call42.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i, i32 noundef %sub41.i, ptr noundef nonnull @.str.54) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new.i)
  %20 = call ptr @llvm.returnaddress(i32 0)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_key_set_state.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull %buf, ptr noundef %20) #12
  br label %do.end

do.end:                                           ; preds = %tipc_key_change_dump.exit, %entry
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_aead_put(ptr noundef %aead) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %aead, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !332

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @tipc_aead_free) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_crypto_start(ptr nocapture noundef %crypto, ptr noundef %net, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 384) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %node, null
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 655362, i32 noundef 1) #12
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %wq, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then9, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %call12 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 32, i32 noundef 4, i32 noundef 2592) #17
  %stats = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %stats, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end11
  %wq16 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %wq16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq16, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then18

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @destroy_workqueue(ptr noundef nonnull %6) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %7 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %7, align 16
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %net, ptr %call7.i.i, align 128
  %node23 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %node23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %node23, align 4
  %key_gen = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %key_gen, i32 noundef 2) #12
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %key_distr = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr, i32 noundef 4) #12
  %11 = ptrtoint ptr %key_distr to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %key_distr, align 4
  %peer_rx_active = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 3
  %call.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_rx_active, i32 noundef 4) #12
  %12 = ptrtoint ptr %peer_rx_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %peer_rx_active, align 8
  %sndnxt = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 15
  %call.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sndnxt, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %sndnxt, i64 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %timer1 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %timer1, align 8
  %15 = load volatile i32, ptr @jiffies, align 128
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %timer2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %timer2, align 4
  %rekeying_intv = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %rekeying_intv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1440, ptr %rekeying_intv, align 16
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tipc_crypto_start.__key, i16 noundef signext 3) #12
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node23, align 4
  %tobool26.not = icmp eq ptr %19, null
  %cond = select i1 %tobool26.not, ptr @.str.9, ptr @.str.8
  br i1 %tobool26.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call ptr @tipc_node_get_id_str(ptr noundef nonnull %19) #12
  br label %cond.end

cond.false:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 128
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %21) #12
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi ptr [ %call31, %cond.true ], [ %node_id_string.i, %cond.false ]
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef %cond34) #12
  %22 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node23, align 4
  %tobool37.not = icmp eq ptr %23, null
  %work61 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work61, i32 noundef 0) #12
  %24 = ptrtoint ptr %work61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work61, align 8
  %lockdep_map70 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  br i1 %tobool37.not, label %do.body60, label %do.body40

do.body40:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.11, ptr noundef nonnull @tipc_crypto_start.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry48 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %25 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry48, ptr %entry48, align 4
  br label %if.end86

do.body60:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.11, ptr noundef nonnull @tipc_crypto_start.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry73 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %26 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry73, ptr %entry73, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.body60, %do.body40
  %entry73.sink = phi ptr [ %entry73, %do.body60 ], [ %entry48, %do.body40 ]
  %tipc_crypto_work_tx.sink = phi ptr [ @tipc_crypto_work_tx, %do.body60 ], [ @tipc_crypto_work_rx, %do.body40 ]
  %tipc_crypto_start.__key.15.sink = phi ptr [ @tipc_crypto_start.__key.15, %do.body60 ], [ @tipc_crypto_start.__key.12, %do.body40 ]
  %prev.i131 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry73.sink, ptr %prev.i131, align 8
  %func76 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 2
  %28 = ptrtoint ptr %func76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tipc_crypto_work_tx.sink, ptr %func76, align 4
  %timer81 = getelementptr inbounds %struct.tipc_crypto, ptr %call7.i.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer81, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull %tipc_crypto_start.__key.15.sink) #12
  %29 = ptrtoint ptr %crypto to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %crypto, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.end20, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -12, %if.end20 ], [ -12, %if.then9 ], [ -17, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_node_get_id_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_crypto_work_rx(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 26
  %2 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_tx, align 4
  %key_distr = getelementptr i8, ptr %work, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %key_distr, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %key_distr, ptr %key_distr, i32 1, i32 2, ptr elementtype(i32) %key_distr) #12, !srcloc !349
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %atomic_cmpxchg.exit
  %key4 = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %key4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %key4, align 2
  %bf.clear = and i8 %bf.load, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear7 = and i8 %bf.lshr, 3
  %cond.in = select i1 %tobool.not, i8 %bf.clear7, i8 %bf.clear
  %node = getelementptr i8, ptr %work, i32 -36
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %call10 = tail call i32 @tipc_crypto_key_distr(ptr noundef %3, i8 noundef zeroext %cond.in, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then.if.end22_crit_edge, label %do.end, !prof !332

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 13
  %conv16 = zext i8 %cond.in to i32
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %call18 = tail call ptr @tipc_node_get_id_str(ptr noundef %9) #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %name, i32 noundef %conv16, ptr noundef %call18, i32 noundef %call10) #19
  br label %if.end22

if.else:                                          ; preds = %atomic_cmpxchg.exit
  %call.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %key_distr, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i87

do.body.i.i.i87:                                  ; preds = %do.body.i.i.i87.do.body.i.i.i87_crit_edge, %if.else
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %key_distr, ptr %key_distr, i32 2, i32 0, ptr elementtype(i32) %key_distr) #12, !srcloc !349
  %asmresult.i.i.i85 = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i86 = icmp eq i32 %asmresult.i.i.i85, 0
  br i1 %tobool.not.i.i.i86, label %atomic_cmpxchg.exit89, label %do.body.i.i.i87.do.body.i.i.i87_crit_edge

do.body.i.i.i87.do.body.i.i.i87_crit_edge:        ; preds = %do.body.i.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i87

atomic_cmpxchg.exit89:                            ; preds = %do.body.i.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !350
  br label %if.end22

if.end22:                                         ; preds = %atomic_cmpxchg.exit89, %do.end, %if.then.if.end22_crit_edge
  %skey = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %skey to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skey, align 32
  %tobool23.not = icmp eq ptr %12, null
  br i1 %tobool23.not, label %if.end22.if.end46_crit_edge, label %if.then24

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then24:                                        ; preds = %if.end22
  %skey_mode = getelementptr i8, ptr %work, i32 -9
  %13 = ptrtoint ptr %skey_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %skey_mode, align 1
  %call26 = tail call i32 @tipc_crypto_key_init(ptr noundef %add.ptr, ptr noundef nonnull %12, i8 noundef zeroext %14, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end38, label %if.then24.if.end43_crit_edge, !prof !331

if.then24.if.end43_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end38:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %name40 = getelementptr i8, ptr %work, i32 112
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name40, i32 noundef %call26) #19
  br label %if.end43

if.end43:                                         ; preds = %do.end38, %if.then24.if.end43_crit_edge
  %15 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call26, label %sw.default [
    i32 -16, label %if.end43.land.lhs.true_crit_edge
    i32 -12, label %if.end43.land.lhs.true_crit_edge90
  ]

if.end43.land.lhs.true_crit_edge90:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end43.land.lhs.true_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

sw.default:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @synchronize_rcu() #12
  %16 = ptrtoint ptr %skey to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skey, align 32
  tail call void @kfree(ptr noundef %17) #12
  %18 = ptrtoint ptr %skey to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %skey, align 32
  br label %if.end46

if.end46:                                         ; preds = %sw.default, %if.end22.if.end46_crit_edge
  br i1 %cmp, label %if.end46.land.lhs.true_crit_edge, label %if.end46.if.end53_crit_edge

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end46.land.lhs.true_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end46.land.lhs.true_crit_edge, %if.end43.land.lhs.true_crit_edge, %if.end43.land.lhs.true_crit_edge90
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 500) #12
  br i1 %call.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  %node54 = getelementptr i8, ptr %work, i32 -36
  %21 = ptrtoint ptr %node54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node54, align 4
  tail call void @tipc_node_put(ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_crypto_work_tx(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %key1 = getelementptr i8, ptr %work, i32 -10
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %key.sroa.0.0.copyload = load i8, ptr %key1, align 2
  %bf.clear = and i8 %key.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %entry.resched_crit_edge, !prof !332

entry.resched_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %resched

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %aead5 = getelementptr i8, ptr %work, i32 -32
  %bf.lshr = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear7 = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear7 to i32
  %arrayidx = getelementptr [4 x ptr], ptr %aead5, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end19_crit_edge

rcu_read_lock.exit.do.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b100 = load i1, ptr @tipc_crypto_work_tx.__warned, align 1
  br i1 %.b100, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_work_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2445, ptr noundef nonnull @.str.16) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %rcu_read_lock.exit.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %6, null
  br i1 %tobool21.not, label %if.then30, label %if.end31, !prof !331

if.then30:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end31:                                         ; preds = %do.end19
  %key32 = getelementptr inbounds %struct.tipc_aead, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %key32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key32, align 4
  %keylen.i = getelementptr inbounds %struct.tipc_aead_key, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %keylen.i, align 4
  %add.i = add i32 %10, 36
  %call35 = tail call ptr @kmemdup(ptr noundef %8, i32 noundef %add.i, i32 noundef 2592) #12
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i101, label %if.end31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

if.end31.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %if.end31
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %if.end31.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %11 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i108 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %rcu_read_unlock.exit.if.then70_crit_edge, label %if.then43, !prof !331

rcu_read_unlock.exit.if.then70_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

if.then43:                                        ; preds = %rcu_read_unlock.exit
  %call.i110 = tail call i32 @crypto_get_default_rng() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %tipc_aead_key_generate.exit, label %if.then43.cond.end49_crit_edge, !prof !332

if.then43.cond.end49_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end49

tipc_aead_key_generate.exit:                      ; preds = %if.then43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_default_rng to i32))
  %15 = load ptr, ptr @crypto_default_rng, align 4
  %key.i = getelementptr inbounds %struct.tipc_aead_key, ptr %call35, i32 0, i32 2
  %keylen.i112 = getelementptr inbounds %struct.tipc_aead_key, ptr %call35, i32 0, i32 1
  %16 = ptrtoint ptr %keylen.i112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keylen.i112, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %19) #12
  %20 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i.i.i, align 128
  %call1.i.i.i = tail call i32 %23(ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef %key.i, i32 noundef %17) #12
  tail call void @crypto_stats_rng_generate(ptr noundef %19, i32 noundef %17, i32 noundef %call1.i.i.i) #12
  tail call void @crypto_put_default_rng() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool45.not = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool45.not, label %cond.false47, label %tipc_aead_key_generate.exit.cond.end49_crit_edge

tipc_aead_key_generate.exit.cond.end49_crit_edge: ; preds = %tipc_aead_key_generate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end49

cond.false47:                                     ; preds = %tipc_aead_key_generate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 @tipc_crypto_key_init(ptr noundef %add.ptr, ptr noundef nonnull %call35, i8 noundef zeroext 2, i1 noundef zeroext false)
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false47, %tipc_aead_key_generate.exit.cond.end49_crit_edge, %if.then43.cond.end49_crit_edge
  %cond50 = phi i32 [ %call48, %cond.false47 ], [ %call1.i.i.i, %tipc_aead_key_generate.exit.cond.end49_crit_edge ], [ %call.i110, %if.then43.cond.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond50)
  %cmp = icmp sgt i32 %cond50, 0
  br i1 %cmp, label %if.then58, label %cond.end49.if.end62_crit_edge, !prof !332

cond.end49.if.end62_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then58:                                        ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #14
  %conv59 = trunc i32 %cond50 to i8
  %call60 = tail call i32 @tipc_crypto_key_distr(ptr noundef %add.ptr, i8 noundef zeroext %conv59, ptr noundef null)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %cond.end49.if.end62_crit_edge
  %rc.0 = phi i32 [ %call60, %if.then58 ], [ %cond50, %cond.end49.if.end62_crit_edge ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool63.not = icmp eq i32 %rc.0, 0
  br i1 %tobool63.not, label %if.end62.resched_crit_edge, label %if.end62.if.then70_crit_edge, !prof !332

if.end62.if.then70_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

if.end62.resched_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %resched

if.then70:                                        ; preds = %if.end62.if.then70_crit_edge, %rcu_read_unlock.exit.if.then70_crit_edge
  %rc.1119 = phi i32 [ %rc.0, %if.end62.if.then70_crit_edge ], [ -12, %rcu_read_unlock.exit.if.then70_crit_edge ]
  %call71 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_crypto_work_tx._rs, ptr noundef nonnull @__func__.tipc_crypto_work_tx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.resched_crit_edge, label %do.end76

if.then70.resched_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %resched

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr i8, ptr %work, i32 112
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %name, i32 noundef %rc.1119) #19
  br label %resched

resched:                                          ; preds = %do.end76, %if.then70.resched_crit_edge, %if.end62.resched_crit_edge, %entry.resched_crit_edge
  %rekeying_intv322.i = getelementptr i8, ptr %work, i32 104
  %24 = ptrtoint ptr %rekeying_intv322.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rekeying_intv322.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not23.not.i = icmp eq i32 %25, 0
  br i1 %tobool4.not23.not.i, label %resched.cleanup_crit_edge, label %cond.false.i

resched.cleanup_crit_edge:                        ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false.i:                                     ; preds = %resched
  call void @__sanitizer_cov_trace_pc() #14
  %wq.i = getelementptr i8, ptr %work, i32 -4
  %26 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq.i, align 4
  %mul9.i = mul i32 %25, 60000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul9.i) #12
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work, i32 noundef %call2.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %resched.cleanup_crit_edge, %if.then30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_crypto_stop(ptr nocapture noundef %crypto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rekeying_intv = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %rekeying_intv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rekeying_intv, align 16
  %work = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #12
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end3.for.body.preheader_crit_edge, label %land.lhs.true.i

if.end3.for.body.preheader_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.body.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.body.preheader_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then.i, %land.lhs.true2.i.for.body.preheader_crit_edge, %land.lhs.true.i.for.body.preheader_crit_edge, %if.end3.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %tipc_aead_put.exit.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %tipc_aead_put.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %for.body.do.end15_crit_edge

for.body.do.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true:                                    ; preds = %for.body
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b39 = load i1, ptr @tipc_crypto_stop.__warned, align 1
  br i1 %.b39, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1531, ptr noundef nonnull @.str.16) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %for.body.do.end15_crit_edge
  %tobool.not.i40 = icmp eq ptr %12, null
  br i1 %tobool.not.i40, label %do.end15.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i41

do.end15.tipc_aead_put.exit_crit_edge:            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i41:                                ; preds = %do.end15
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %12, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i42:                                      ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %12, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i42, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %do.end15.tipc_aead_put.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %tipc_aead_put.exit.for.body_crit_edge

tipc_aead_put.exit.for.body_crit_edge:            ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %tipc_aead_put.exit
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i43, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %14 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i50 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_stop.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_stop, %if.then23)) #12
          to label %do.end26 [label %if.then23], !srcloc !347

if.then23:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_stop.__UNIQUE_ID_ddebug425, ptr noundef nonnull @.str.20, ptr noundef %name) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %rcu_read_unlock.exit
  %stats = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 4
  tail call void @free_percpu(ptr noundef %19) #12
  %20 = ptrtoint ptr %crypto to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %crypto, align 4
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %0 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_crypto_timeout(ptr noundef %rx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 128
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_tx, align 4
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %key1 = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %key.sroa.0.0.copyload = load i8, ptr %key1, align 2
  %bf.lshr = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %3, i32 0, i32 2, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call fastcc i32 @tipc_aead_users(ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp sgt i32 %call5, 0
  br i1 %cmp, label %land.lhs.true.s1_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.s1_crit_edge:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %s1

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bf.clear8 = and i8 %key.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear8)
  %tobool9.not = icmp eq i8 %bf.clear8, 0
  br i1 %tobool9.not, label %if.end.s1_crit_edge, label %lor.lhs.false

if.end.s1_crit_edge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %s1

lor.lhs.false:                                    ; preds = %if.end
  %idxprom13 = zext i8 %bf.clear8 to i32
  %arrayidx14 = getelementptr %struct.tipc_crypto, ptr %3, i32 0, i32 2, i32 %idxprom13
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  %call15 = tail call fastcc i32 @tipc_aead_users(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %lor.lhs.false.s1_crit_edge, label %if.end19

lor.lhs.false.s1_crit_edge:                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %s1

if.end19:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %timer1 = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timer1, align 8
  %add.neg = add i32 %9, -1000
  %sub = sub i32 %add.neg, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.end19.s1_crit_edge, label %if.end24

if.end19.s1_crit_edge:                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %s1

if.end24:                                         ; preds = %if.end19
  %bf.lshr26 = lshr i8 %key.sroa.0.0.copyload, 4
  %bf.clear27 = and i8 %bf.lshr26, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %3, i8 noundef zeroext %bf.clear27, i8 noundef zeroext %bf.clear8, i8 noundef zeroext 0)
  br i1 %tobool.not, label %if.end24.do.body105_crit_edge, label %do.body

if.end24.do.body105_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body105

do.body:                                          ; preds = %if.end24
  %dep_map = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool38.not = icmp eq i32 %call.i, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true39:                                  ; preds = %do.body
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end_crit_edge:                 ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b717 = load i1, ptr @tipc_crypto_timeout.__warned, align 1
  br i1 %.b717, label %land.lhs.true42.do.end_crit_edge, label %if.then44

land.lhs.true42.do.end_crit_edge:                 ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1561, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then44, %land.lhs.true42.do.end_crit_edge, %land.lhs.true39.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx51 = getelementptr %struct.tipc_crypto, ptr %3, i32 0, i32 2, i32 %conv
  %12 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx51, align 4
  store volatile ptr null, ptr %arrayidx51, align 4
  tail call fastcc void @tipc_aead_put(ptr noundef %13)
  br label %do.body105

do.body105:                                       ; preds = %do.end, %if.end24.do.body105_crit_edge
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %stats = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats, align 4
  %arrayidx122 = getelementptr [8 x i32], ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx122 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx125 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx125, align 4
  %add126 = add i32 %23, %17
  %24 = inttoptr i32 %add126 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add127 = add i32 %26, 1
  store i32 %add127, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool138.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool138.not, label %if.then142, label %do.body105.do.end145_crit_edge, !prof !331

do.body105.do.end145_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.then142:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %do.body105.do.end145_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #12, !srcloc !353
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 13
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %idxprom13) #19
  br label %s1

s1:                                               ; preds = %do.end145, %if.end19.s1_crit_edge, %lor.lhs.false.s1_crit_edge, %if.end.s1_crit_edge, %land.lhs.true.s1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %lock161 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock161) #12
  %key162 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 5
  %28 = ptrtoint ptr %key162 to i32
  call void @__asan_load1_noabort(i32 %28)
  %key.sroa.0.0.copyload631 = load i8, ptr %key162, align 2
  %bf.clear164 = and i8 %key.sroa.0.0.copyload631, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear164)
  %tobool165.not = icmp eq i8 %bf.clear164, 0
  br i1 %tobool165.not, label %s1.s3_crit_edge, label %lor.lhs.false166

s1.s3_crit_edge:                                  ; preds = %s1
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3

lor.lhs.false166:                                 ; preds = %s1
  %idxprom170 = zext i8 %bf.clear164 to i32
  %arrayidx171 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom170
  %29 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx171, align 4
  %call172 = tail call fastcc i32 @tipc_aead_users(ptr noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call172)
  %cmp173 = icmp slt i32 %call172, 1
  br i1 %cmp173, label %lor.lhs.false275.critedge, label %if.end176

if.end176:                                        ; preds = %lor.lhs.false166
  %bf.lshr178 = lshr i8 %key.sroa.0.0.copyload631, 2
  %bf.clear179 = and i8 %bf.lshr178, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear179)
  %tobool180.not = icmp eq i8 %bf.clear179, 0
  %bf.shl = shl nuw nsw i8 %bf.clear179, 4
  %bf.clear186 = and i8 %key.sroa.0.0.copyload631, -49
  %bf.set = or i8 %bf.shl, %bf.clear186
  %key.sroa.0.0 = select i1 %tobool180.not, i8 %key.sroa.0.0.copyload631, i8 %bf.set
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 17
  %32 = ptrtoint ptr %timer2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %timer2, align 4
  %bf.lshr196 = lshr i8 %key.sroa.0.0, 4
  %bf.clear197 = and i8 %bf.lshr196, 3
  %bf.clear200 = and i8 %key.sroa.0.0, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %rx, i8 noundef zeroext %bf.clear197, i8 noundef zeroext %bf.clear200, i8 noundef zeroext 0)
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %stats224 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 12
  %34 = ptrtoint ptr %stats224 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats224, align 4
  %arrayidx226 = getelementptr [8 x i32], ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx226 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i727 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i727 to ptr
  %cpu229 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu229 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu229, align 4
  %arrayidx230 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx230, align 4
  %add231 = add i32 %42, %36
  %43 = inttoptr i32 %add231 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add232 = add i32 %45, 1
  store i32 %add232, ptr %43, align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i728 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i728)
  %tobool243.not = icmp eq i32 %and.i.i728, 0
  br i1 %tobool243.not, label %if.then252, label %if.end176.do.end255_crit_edge, !prof !331

if.end176.do.end255_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end255

if.then252:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end255

do.end255:                                        ; preds = %if.then252, %if.end176.do.end255_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #12, !srcloc !353
  %name266 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %conv270 = zext i8 %bf.clear200 to i32
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name266, i32 noundef %conv270) #19
  br label %s5

lor.lhs.false275.critedge:                        ; preds = %lor.lhs.false166
  %47 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx171, align 4
  %call281 = tail call fastcc i32 @tipc_aead_users(ptr noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %call281)
  %cmp282 = icmp sgt i32 %call281, -10
  br i1 %cmp282, label %lor.lhs.false275.critedge.s3_crit_edge, label %if.end285

lor.lhs.false275.critedge.s3_crit_edge:           ; preds = %lor.lhs.false275.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3

if.end285:                                        ; preds = %lor.lhs.false275.critedge
  %bf.lshr287 = lshr i8 %key.sroa.0.0.copyload631, 4
  %bf.clear288 = and i8 %bf.lshr287, 3
  %bf.lshr290 = lshr i8 %key.sroa.0.0.copyload631, 2
  %bf.clear291 = and i8 %bf.lshr290, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %rx, i8 noundef zeroext %bf.clear288, i8 noundef zeroext %bf.clear291, i8 noundef zeroext 0)
  %dep_map296 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i729 = tail call i32 @lock_is_held_type(ptr noundef %dep_map296, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i729)
  %tobool298.not = icmp eq i32 %call.i729, 0
  br i1 %tobool298.not, label %land.lhs.true299, label %if.end285.do.end307_crit_edge

if.end285.do.end307_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end307

land.lhs.true299:                                 ; preds = %if.end285
  %call300 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %land.lhs.true299.do.end307_crit_edge, label %land.lhs.true302

land.lhs.true299.do.end307_crit_edge:             ; preds = %land.lhs.true299
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end307

land.lhs.true302:                                 ; preds = %land.lhs.true299
  %.b713716 = load i1, ptr @tipc_crypto_timeout.__warned.25, align 1
  br i1 %.b713716, label %land.lhs.true302.do.end307_crit_edge, label %if.then304

land.lhs.true302.do.end307_crit_edge:             ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end307

if.then304:                                       ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_timeout.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1589, ptr noundef nonnull @.str.4) #12
  br label %do.end307

do.end307:                                        ; preds = %if.then304, %land.lhs.true302.do.end307_crit_edge, %land.lhs.true299.do.end307_crit_edge, %if.end285.do.end307_crit_edge
  %49 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx171, align 4
  store volatile ptr null, ptr %arrayidx171, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %do.end307.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i

do.end307.tipc_aead_put.exit_crit_edge:           ; preds = %do.end307
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i:                                  ; preds = %do.end307
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %50, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %50, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %do.end307.tipc_aead_put.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_timeout, %if.then375)) #12
          to label %s5 [label %if.then375], !srcloc !347

if.then375:                                       ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name376 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_timeout.__UNIQUE_ID_ddebug432, ptr noundef nonnull @.str.27, ptr noundef %name376, i32 noundef %idxprom170) #12
  br label %s5

s3:                                               ; preds = %lor.lhs.false275.critedge.s3_crit_edge, %s1.s3_crit_edge
  %bf.lshr385 = lshr i8 %key.sroa.0.0.copyload631, 2
  %bf.clear386 = and i8 %bf.lshr385, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear386)
  %tobool387.not = icmp eq i8 %bf.clear386, 0
  br i1 %tobool387.not, label %s3.s4_crit_edge, label %if.end389

s3.s4_crit_edge:                                  ; preds = %s3
  call void @__sanitizer_cov_trace_pc() #14
  br label %s4

if.end389:                                        ; preds = %s3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %timer1390 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 16
  %53 = ptrtoint ptr %timer1390 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %timer1390, align 8
  %add392.neg = add i32 %52, -300
  %sub393 = sub i32 %add392.neg, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub393)
  %cmp394 = icmp slt i32 %sub393, 0
  br i1 %cmp394, label %land.lhs.true396, label %if.end389.if.end407_crit_edge

if.end389.if.end407_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end407

land.lhs.true396:                                 ; preds = %if.end389
  %idxprom401 = zext i8 %bf.clear386 to i32
  %arrayidx402 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom401
  %55 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx402, align 4
  %call403 = tail call fastcc i32 @tipc_aead_users(ptr noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %cmp404 = icmp sgt i32 %call403, 0
  br i1 %cmp404, label %land.lhs.true396.s4_crit_edge, label %land.lhs.true396.if.end407_crit_edge

land.lhs.true396.if.end407_crit_edge:             ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end407

land.lhs.true396.s4_crit_edge:                    ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #14
  br label %s4

if.end407:                                        ; preds = %land.lhs.true396.if.end407_crit_edge, %if.end389.if.end407_crit_edge
  %bf.shl417 = shl nuw nsw i8 %bf.clear386, 4
  %bf.clear418 = and i8 %key.sroa.0.0.copyload631, -49
  %bf.set419 = or i8 %bf.shl417, %bf.clear418
  %bf.clear426 = and i8 %key.sroa.0.0.copyload631, -4
  %bf.set427 = or i8 %bf.clear386, %bf.clear426
  %key.sroa.0.1 = select i1 %tobool165.not, i8 %bf.set427, i8 %bf.set419
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %timer2429 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 17
  %58 = ptrtoint ptr %timer2429 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %timer2429, align 4
  %bf.lshr431 = lshr i8 %key.sroa.0.1, 4
  %bf.clear432 = and i8 %bf.lshr431, 3
  %bf.clear434 = and i8 %key.sroa.0.1, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %rx, i8 noundef zeroext %bf.clear432, i8 noundef zeroext 0, i8 noundef zeroext %bf.clear434)
  %idxprom438 = zext i8 %bf.clear434 to i32
  %arrayidx439 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom438
  %59 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx439, align 4
  tail call fastcc void @tipc_aead_users_set(ptr noundef %60, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_timeout, %if.then452)) #12
          to label %s5 [label %if.then452], !srcloc !347

if.then452:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #14
  %name453 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %bf.lshr456 = lshr i8 %key.sroa.0.1, 2
  %bf.clear457 = and i8 %bf.lshr456, 3
  %conv458 = zext i8 %bf.clear457 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_timeout.__UNIQUE_ID_ddebug433, ptr noundef nonnull @.str.29, ptr noundef %name453, i32 noundef %conv458) #12
  br label %s5

s4:                                               ; preds = %land.lhs.true396.s4_crit_edge, %s3.s4_crit_edge
  %bf.lshr463 = lshr i8 %key.sroa.0.0.copyload631, 4
  %bf.clear464 = and i8 %bf.lshr463, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear464)
  %tobool465.not = icmp eq i8 %bf.clear464, 0
  br i1 %tobool465.not, label %s4.s5_crit_edge, label %if.end467

s4.s5_crit_edge:                                  ; preds = %s4
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5

if.end467:                                        ; preds = %s4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %timer2468 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 17
  %62 = ptrtoint ptr %timer2468 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %timer2468, align 4
  %add470.neg = add i32 %61, -1500
  %sub471 = sub i32 %add470.neg, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub471)
  %cmp472 = icmp slt i32 %sub471, 0
  br i1 %cmp472, label %land.lhs.true474, label %if.end467.if.end485_crit_edge

if.end467.if.end485_crit_edge:                    ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end485

land.lhs.true474:                                 ; preds = %if.end467
  %idxprom479 = zext i8 %bf.clear464 to i32
  %arrayidx480 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom479
  %64 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx480, align 4
  %call481 = tail call fastcc i32 @tipc_aead_users(ptr noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %call481)
  %cmp482 = icmp sgt i32 %call481, -10
  br i1 %cmp482, label %land.lhs.true474.s5_crit_edge, label %land.lhs.true474.if.end485_crit_edge

land.lhs.true474.if.end485_crit_edge:             ; preds = %land.lhs.true474
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end485

land.lhs.true474.s5_crit_edge:                    ; preds = %land.lhs.true474
  call void @__sanitizer_cov_trace_pc() #14
  br label %s5

if.end485:                                        ; preds = %land.lhs.true474.if.end485_crit_edge, %if.end467.if.end485_crit_edge
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %rx, i8 noundef zeroext 0, i8 noundef zeroext %bf.clear386, i8 noundef zeroext %bf.clear164)
  %dep_map495 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i730 = tail call i32 @lock_is_held_type(ptr noundef %dep_map495, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i730)
  %tobool497.not = icmp eq i32 %call.i730, 0
  br i1 %tobool497.not, label %land.lhs.true498, label %if.end485.do.end506_crit_edge

if.end485.do.end506_crit_edge:                    ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end506

land.lhs.true498:                                 ; preds = %if.end485
  %call499 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call499)
  %tobool500.not = icmp eq i32 %call499, 0
  br i1 %tobool500.not, label %land.lhs.true498.do.end506_crit_edge, label %land.lhs.true501

land.lhs.true498.do.end506_crit_edge:             ; preds = %land.lhs.true498
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end506

land.lhs.true501:                                 ; preds = %land.lhs.true498
  %.b714715 = load i1, ptr @tipc_crypto_timeout.__warned.30, align 1
  br i1 %.b714715, label %land.lhs.true501.do.end506_crit_edge, label %if.then503

land.lhs.true501.do.end506_crit_edge:             ; preds = %land.lhs.true501
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end506

if.then503:                                       ; preds = %land.lhs.true501
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_timeout.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1620, ptr noundef nonnull @.str.4) #12
  br label %do.end506

do.end506:                                        ; preds = %if.then503, %land.lhs.true501.do.end506_crit_edge, %land.lhs.true498.do.end506_crit_edge, %if.end485.do.end506_crit_edge
  %idxprom512 = zext i8 %bf.clear464 to i32
  %arrayidx513 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom512
  %66 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx513, align 4
  store volatile ptr null, ptr %arrayidx513, align 4
  %tobool.not.i731 = icmp eq ptr %67, null
  br i1 %tobool.not.i731, label %do.end506.tipc_aead_put.exit742_crit_edge, label %land.lhs.true.i736

do.end506.tipc_aead_put.exit742_crit_edge:        ; preds = %do.end506
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit742

land.lhs.true.i736:                               ; preds = %do.end506
  %refcnt.i732 = getelementptr inbounds %struct.tipc_aead, ptr %67, i32 0, i32 14
  %call.i.i.i.i.i.i733 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i732, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i732, i32 1, i32 3, i32 1) #12
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i732, ptr %refcnt.i732, i32 1, ptr elementtype(i32) %refcnt.i732) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i734 = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i734)
  %cmp.i.i.i.i735 = icmp eq i32 %asmresult.i.i.i.i.i.i.i734, 1
  br i1 %cmp.i.i.i.i735, label %if.then.i741, label %if.end5.i.i.i.i738

if.end5.i.i.i.i738:                               ; preds = %land.lhs.true.i736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i734)
  %.not.i.i.i.i737 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i734, 0
  br i1 %.not.i.i.i.i737, label %if.end5.i.i.i.i738.tipc_aead_put.exit742_crit_edge, label %if.then10.i.i.i.i739, !prof !332

if.end5.i.i.i.i738.tipc_aead_put.exit742_crit_edge: ; preds = %if.end5.i.i.i.i738
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit742

if.then10.i.i.i.i739:                             ; preds = %if.end5.i.i.i.i738
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i732, i32 noundef 3) #12
  br label %tipc_aead_put.exit742

if.then.i741:                                     ; preds = %land.lhs.true.i736
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i740 = getelementptr inbounds %struct.tipc_aead, ptr %67, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i740, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit742

tipc_aead_put.exit742:                            ; preds = %if.then.i741, %if.then10.i.i.i.i739, %if.end5.i.i.i.i738.tipc_aead_put.exit742_crit_edge, %do.end506.tipc_aead_put.exit742_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_timeout, %if.then579)) #12
          to label %s5 [label %if.then579], !srcloc !347

if.then579:                                       ; preds = %tipc_aead_put.exit742
  call void @__sanitizer_cov_trace_pc() #14
  %name580 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_timeout.__UNIQUE_ID_ddebug437, ptr noundef nonnull @.str.32, ptr noundef %name580, i32 noundef %idxprom512) #12
  br label %s5

s5:                                               ; preds = %if.then579, %tipc_aead_put.exit742, %land.lhs.true474.s5_crit_edge, %s4.s5_crit_edge, %if.then452, %if.end407, %if.then375, %tipc_aead_put.exit, %do.end255
  tail call void @_raw_spin_unlock(ptr noundef %lock161) #12
  %timer2590 = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 17
  %69 = ptrtoint ptr %timer2590 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %timer2590, align 4
  %add592 = add i32 %70, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub593 = sub i32 %add592, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub593)
  %cmp594 = icmp slt i32 %sub593, 0
  br i1 %cmp594, label %if.then596, label %s5.if.end600_crit_edge

s5.if.end600_crit_edge:                           ; preds = %s5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end600

if.then596:                                       ; preds = %s5
  call void @__sanitizer_cov_trace_pc() #14
  %72 = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 18
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load597 = load i8, ptr %72, align 16
  %bf.clear598 = and i8 %bf.load597, -33
  store i8 %bf.clear598, ptr %72, align 16
  br label %if.end600

if.end600:                                        ; preds = %if.then596, %s5.if.end600_crit_edge
  %74 = load i32, ptr @sysctl_tipc_max_tfms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %74)
  %cmp601 = icmp slt i32 %74, 1001
  br i1 %cmp601, label %if.end600.cleanup_crit_edge, label %if.end610, !prof !332

if.end600.cleanup_crit_edge:                      ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end610:                                        ; preds = %if.end600
  call void @__sanitizer_cov_trace_pc() #14
  store i32 10, ptr @sysctl_tipc_max_tfms, align 4
  %75 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx, align 128
  tail call fastcc void @tipc_crypto_do_cmd(ptr noundef %76, i32 noundef %74)
  br label %cleanup

cleanup:                                          ; preds = %if.end610, %if.end600.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_aead_users(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  %aead.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aead.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aead, ptr %aead.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %aead.addr.0.aead.addr.0.aead.addr.0. = load volatile ptr, ptr %aead.addr, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @tipc_aead_users.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_users.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 437, ptr noundef nonnull @.str.16) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %aead.addr.0.aead.addr.0.aead.addr.0., null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %users12 = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.0.aead.addr.0.aead.addr.0., i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users12, i32 noundef 4) #12
  %6 = ptrtoint ptr %users12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %users12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %users.0 = phi i32 [ %7, %if.then11 ], [ 0, %do.end8.if.end14_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end14
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %8 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %users.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_aead_users_set(ptr noundef %aead, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %aead.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aead.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aead, ptr %aead.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %aead.addr.0.aead.addr.0.aead.addr.0. = load volatile ptr, ptr %aead.addr, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @tipc_aead_users_set.__warned, align 1
  br i1 %.b27, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_users_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 473, ptr noundef nonnull @.str.16) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %aead.addr.0.aead.addr.0.aead.addr.0., null
  br i1 %tobool10.not, label %do.end8.if.end21_crit_edge, label %do.body12.preheader

do.end8.if.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body12.preheader:                              ; preds = %do.end8
  %users = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.0.aead.addr.0.aead.addr.0., i32 0, i32 3
  br label %do.body12

do.body12:                                        ; preds = %atomic_cmpxchg.exit.do.body12_crit_edge, %do.body12.preheader
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val)
  %cmp = icmp eq i32 %7, %val
  br i1 %cmp, label %do.body12.if.end21_crit_edge, label %do.cond16

do.body12.if.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.cond16:                                        ; preds = %do.body12
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.cond16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 %7, i32 %val, ptr elementtype(i32) %users) #12, !srcloc !349
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !350
  %cmp19.not = icmp eq i32 %asmresult3.i.i.i, %7
  br i1 %cmp19.not, label %atomic_cmpxchg.exit.if.end21_crit_edge, label %atomic_cmpxchg.exit.do.body12_crit_edge

atomic_cmpxchg.exit.do.body12_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

atomic_cmpxchg.exit.if.end21_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %atomic_cmpxchg.exit.if.end21_crit_edge, %do.body12.if.end21_crit_edge, %do.end8.if.end21_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i29, label %if.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

if.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %if.end21
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %if.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %9 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i36 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_do_cmd(ptr noundef %net, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [200 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_tx, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65521, i32 %cmd)
  %cond = icmp eq i32 %cmd, 65521
  br i1 %cond, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #19
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #19
  %call.i193 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_id_string.i = getelementptr inbounds %struct.tipc_net, ptr %call.i193, i32 0, i32 4
  %call12 = call fastcc ptr @tipc_crypto_key_dump(ptr noundef %1, ptr noundef nonnull %buf)
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %node_id_string.i, ptr noundef nonnull %buf) #19
  %3 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.0216 = load ptr, ptr %node_list, align 4
  %cmp.not217 = icmp eq ptr %p.0216, %node_list
  br i1 %cmp.not217, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %p.0218 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.0216, %rcu_read_lock.exit.for.body_crit_edge ]
  %call15 = call ptr @tipc_node_crypto_rx_by_list(ptr noundef %p.0218) #12
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %call15, i32 0, i32 1
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %call20 = call ptr @tipc_node_get_id_str(ptr noundef %9) #12
  %call22 = call fastcc ptr @tipc_crypto_key_dump(ptr noundef %call15, ptr noundef nonnull %buf)
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %call20, ptr noundef nonnull %buf) #19
  %10 = ptrtoint ptr %p.0218 to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0 = load ptr, ptr %p.0218, align 4
  %cmp.not = icmp eq ptr %p.0, %node_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i194 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i194, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i197

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i197:                               ; preds = %for.end
  %call1.i195 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i195)
  %tobool.not.i196 = icmp eq i32 %call1.i195, 0
  br i1 %tobool.not.i196, label %land.lhs.true.i197.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i199

land.lhs.true.i197.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i199:                              ; preds = %land.lhs.true.i197
  %.b4.i198 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i198, label %land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge, label %if.then.i200

land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i200:                                     ; preds = %land.lhs.true2.i199
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i200, %land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i197.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %11 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i201 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i201 to ptr
  %preempt_count.i.i.i.i202 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i202, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i202, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.127) #12
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call29
  %sub.1 = sub i32 200, %call29
  %call29.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.128) #12
  %add.1 = add i32 %call29.1, %call29
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 200, %add.1
  %call29.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.129) #12
  %add.2 = add i32 %call29.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 200, %add.2
  %call29.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.130) #12
  %add.3 = add i32 %call29.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 200, %add.3
  %call29.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.131) #12
  %add.4 = add i32 %call29.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 200, %add.4
  %call29.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.132) #12
  %add.5 = add i32 %call29.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 200, %add.5
  %call29.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.133) #12
  %add.6 = add i32 %call29.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 200, %add.6
  %call29.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.134) #12
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull %buf) #19
  %15 = call ptr @memset(ptr %buf, i32 45, i32 115)
  %arrayidx39 = getelementptr inbounds [200 x i8], ptr %buf, i32 0, i32 115
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx39, align 1
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull %buf) #19
  %call.i203 = call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_id_string.i204 = getelementptr inbounds %struct.tipc_net, ptr %call.i203, i32 0, i32 4
  %call48 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.105, ptr noundef %node_id_string.i204) #12
  %call50223 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call50223, i32 %17)
  %cmp51224 = icmp ult i32 %call50223, %17
  br i1 %cmp51224, label %for.cond53.preheader.lr.ph, label %rcu_read_unlock.exit.for.end81_crit_edge

rcu_read_unlock.exit.for.end81_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end81

for.cond53.preheader.lr.ph:                       ; preds = %rcu_read_unlock.exit
  %stats = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 12
  br label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %for.cond53.preheader.for.cond53.preheader_crit_edge, %for.cond53.preheader.lr.ph
  %call50226 = phi i32 [ %call50223, %for.cond53.preheader.lr.ph ], [ %call50, %for.cond53.preheader.for.cond53.preheader_crit_edge ]
  %j.1225 = phi i32 [ %call48, %for.cond53.preheader.lr.ph ], [ %call80, %for.cond53.preheader.for.cond53.preheader_crit_edge ]
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call50226
  %18 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stats, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %22, %20
  %23 = inttoptr i32 %add62 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %j.1225
  %sub67 = sub i32 200, %j.1225
  %call68 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.106, i32 noundef %25) #12
  %add69 = add i32 %call68, %j.1225
  %26 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stats, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx61, align 4
  %add62.1 = add i32 %30, %28
  %31 = inttoptr i32 %add62.1 to ptr
  %arrayidx64.1 = getelementptr [8 x i32], ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx64.1, align 4
  %add.ptr66.1 = getelementptr i8, ptr %buf, i32 %add69
  %sub67.1 = sub i32 200, %add69
  %call68.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.1, i32 noundef %sub67.1, ptr noundef nonnull @.str.106, i32 noundef %33) #12
  %add69.1 = add i32 %call68.1, %add69
  %34 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stats, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx61, align 4
  %add62.2 = add i32 %38, %36
  %39 = inttoptr i32 %add62.2 to ptr
  %arrayidx64.2 = getelementptr [8 x i32], ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx64.2, align 4
  %add.ptr66.2 = getelementptr i8, ptr %buf, i32 %add69.1
  %sub67.2 = sub i32 200, %add69.1
  %call68.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.2, i32 noundef %sub67.2, ptr noundef nonnull @.str.106, i32 noundef %41) #12
  %add69.2 = add i32 %call68.2, %add69.1
  %42 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stats, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx61, align 4
  %add62.3 = add i32 %46, %44
  %47 = inttoptr i32 %add62.3 to ptr
  %arrayidx64.3 = getelementptr [8 x i32], ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx64.3, align 4
  %add.ptr66.3 = getelementptr i8, ptr %buf, i32 %add69.2
  %sub67.3 = sub i32 200, %add69.2
  %call68.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.3, i32 noundef %sub67.3, ptr noundef nonnull @.str.106, i32 noundef %49) #12
  %add69.3 = add i32 %call68.3, %add69.2
  %50 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stats, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx61, align 4
  %add62.4 = add i32 %54, %52
  %55 = inttoptr i32 %add62.4 to ptr
  %arrayidx64.4 = getelementptr [8 x i32], ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx64.4, align 4
  %add.ptr66.4 = getelementptr i8, ptr %buf, i32 %add69.3
  %sub67.4 = sub i32 200, %add69.3
  %call68.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.4, i32 noundef %sub67.4, ptr noundef nonnull @.str.106, i32 noundef %57) #12
  %add69.4 = add i32 %call68.4, %add69.3
  %58 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stats, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx61, align 4
  %add62.5 = add i32 %62, %60
  %63 = inttoptr i32 %add62.5 to ptr
  %arrayidx64.5 = getelementptr [8 x i32], ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx64.5, align 4
  %add.ptr66.5 = getelementptr i8, ptr %buf, i32 %add69.4
  %sub67.5 = sub i32 200, %add69.4
  %call68.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.5, i32 noundef %sub67.5, ptr noundef nonnull @.str.106, i32 noundef %65) #12
  %add69.5 = add i32 %call68.5, %add69.4
  %66 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stats, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx61, align 4
  %add62.6 = add i32 %70, %68
  %71 = inttoptr i32 %add62.6 to ptr
  %arrayidx64.6 = getelementptr [8 x i32], ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx64.6, align 4
  %add.ptr66.6 = getelementptr i8, ptr %buf, i32 %add69.5
  %sub67.6 = sub i32 200, %add69.5
  %call68.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.6, i32 noundef %sub67.6, ptr noundef nonnull @.str.106, i32 noundef %73) #12
  %add69.6 = add i32 %call68.6, %add69.5
  %74 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %stats, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx61, align 4
  %add62.7 = add i32 %78, %76
  %79 = inttoptr i32 %add62.7 to ptr
  %arrayidx64.7 = getelementptr [8 x i32], ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx64.7, align 4
  %add.ptr66.7 = getelementptr i8, ptr %buf, i32 %add69.6
  %sub67.7 = sub i32 200, %add69.6
  %call68.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66.7, i32 noundef %sub67.7, ptr noundef nonnull @.str.106, i32 noundef %81) #12
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull %buf) #19
  %call80 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #12
  %call50 = call i32 @cpumask_next(i32 noundef %call50226, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %82 = load i32, ptr @nr_cpu_ids, align 4
  %cmp51 = icmp ult i32 %call50, %82
  br i1 %cmp51, label %for.cond53.preheader.for.cond53.preheader_crit_edge, label %for.cond53.preheader.for.end81_crit_edge

for.cond53.preheader.for.end81_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end81

for.cond53.preheader.for.cond53.preheader_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond53.preheader

for.end81:                                        ; preds = %for.cond53.preheader.for.end81_crit_edge, %rcu_read_unlock.exit.for.end81_crit_edge
  %83 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i182 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i182 to ptr
  %preempt_count.i.i.i.i183 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i183, align 4
  %add.i.i.i184 = add i32 %86, 1
  store volatile i32 %add.i.i.i184, ptr %preempt_count.i.i.i.i183, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i185 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i185, label %for.end81.rcu_read_lock.exit192_crit_edge, label %land.lhs.true.i188

for.end81.rcu_read_lock.exit192_crit_edge:        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit192

land.lhs.true.i188:                               ; preds = %for.end81
  %call1.i186 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i186)
  %tobool.not.i187 = icmp eq i32 %call1.i186, 0
  br i1 %tobool.not.i187, label %land.lhs.true.i188.rcu_read_lock.exit192_crit_edge, label %land.lhs.true2.i190

land.lhs.true.i188.rcu_read_lock.exit192_crit_edge: ; preds = %land.lhs.true.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit192

land.lhs.true2.i190:                              ; preds = %land.lhs.true.i188
  %.b4.i189 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i189, label %land.lhs.true2.i190.rcu_read_lock.exit192_crit_edge, label %if.then.i191

land.lhs.true2.i190.rcu_read_lock.exit192_crit_edge: ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit192

if.then.i191:                                     ; preds = %land.lhs.true2.i190
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit192

rcu_read_lock.exit192:                            ; preds = %if.then.i191, %land.lhs.true2.i190.rcu_read_lock.exit192_crit_edge, %land.lhs.true.i188.rcu_read_lock.exit192_crit_edge, %for.end81.rcu_read_lock.exit192_crit_edge
  %87 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %p.1233 = load ptr, ptr %node_list, align 4
  %cmp86.not234 = icmp eq ptr %p.1233, %node_list
  br i1 %cmp86.not234, label %rcu_read_lock.exit192.for.end131_crit_edge, label %rcu_read_lock.exit192.for.body87_crit_edge

rcu_read_lock.exit192.for.body87_crit_edge:       ; preds = %rcu_read_lock.exit192
  br label %for.body87

rcu_read_lock.exit192.for.end131_crit_edge:       ; preds = %rcu_read_lock.exit192
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.cond84.loopexit:                              ; preds = %for.cond97.preheader.for.cond84.loopexit_crit_edge, %for.body87.for.cond84.loopexit_crit_edge
  %88 = ptrtoint ptr %p.1235 to i32
  call void @__asan_load4_noabort(i32 %88)
  %p.1 = load ptr, ptr %p.1235, align 4
  %cmp86.not = icmp eq ptr %p.1, %node_list
  br i1 %cmp86.not, label %for.cond84.loopexit.for.end131_crit_edge, label %for.cond84.loopexit.for.body87_crit_edge

for.cond84.loopexit.for.body87_crit_edge:         ; preds = %for.cond84.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87

for.cond84.loopexit.for.end131_crit_edge:         ; preds = %for.cond84.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.body87:                                       ; preds = %for.cond84.loopexit.for.body87_crit_edge, %rcu_read_lock.exit192.for.body87_crit_edge
  %p.1235 = phi ptr [ %p.1, %for.cond84.loopexit.for.body87_crit_edge ], [ %p.1233, %rcu_read_lock.exit192.for.body87_crit_edge ]
  %call88 = call ptr @tipc_node_crypto_rx_by_list(ptr noundef %p.1235) #12
  %node90 = getelementptr inbounds %struct.tipc_crypto, ptr %call88, i32 0, i32 1
  %89 = ptrtoint ptr %node90 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %node90, align 4
  %call91 = call ptr @tipc_node_get_id_str(ptr noundef %90) #12
  %call92 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.112, ptr noundef %call91) #12
  %call94229 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %91 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call94229, i32 %91)
  %cmp95230 = icmp ult i32 %call94229, %91
  br i1 %cmp95230, label %for.cond97.preheader.lr.ph, label %for.body87.for.cond84.loopexit_crit_edge

for.body87.for.cond84.loopexit_crit_edge:         ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond84.loopexit

for.cond97.preheader.lr.ph:                       ; preds = %for.body87
  %stats106 = getelementptr inbounds %struct.tipc_crypto, ptr %call88, i32 0, i32 12
  br label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %for.cond97.preheader.for.cond97.preheader_crit_edge, %for.cond97.preheader.lr.ph
  %call94232 = phi i32 [ %call94229, %for.cond97.preheader.lr.ph ], [ %call94, %for.cond97.preheader.for.cond97.preheader_crit_edge ]
  %j.3231 = phi i32 [ %call92, %for.cond97.preheader.lr.ph ], [ %call127, %for.cond97.preheader.for.cond97.preheader_crit_edge ]
  %arrayidx108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call94232
  %92 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %stats106, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx108, align 4
  %add109 = add i32 %96, %94
  %97 = inttoptr i32 %add109 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add.ptr113 = getelementptr i8, ptr %buf, i32 %j.3231
  %sub114 = sub i32 200, %j.3231
  %call115 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.106, i32 noundef %99) #12
  %add116 = add i32 %call115, %j.3231
  %100 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stats106, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx108, align 4
  %add109.1 = add i32 %104, %102
  %105 = inttoptr i32 %add109.1 to ptr
  %arrayidx111.1 = getelementptr [8 x i32], ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx111.1, align 4
  %add.ptr113.1 = getelementptr i8, ptr %buf, i32 %add116
  %sub114.1 = sub i32 200, %add116
  %call115.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.1, i32 noundef %sub114.1, ptr noundef nonnull @.str.106, i32 noundef %107) #12
  %add116.1 = add i32 %call115.1, %add116
  %108 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stats106, align 4
  %110 = ptrtoint ptr %109 to i32
  %111 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx108, align 4
  %add109.2 = add i32 %112, %110
  %113 = inttoptr i32 %add109.2 to ptr
  %arrayidx111.2 = getelementptr [8 x i32], ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx111.2, align 4
  %add.ptr113.2 = getelementptr i8, ptr %buf, i32 %add116.1
  %sub114.2 = sub i32 200, %add116.1
  %call115.2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.2, i32 noundef %sub114.2, ptr noundef nonnull @.str.106, i32 noundef %115) #12
  %add116.2 = add i32 %call115.2, %add116.1
  %116 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %stats106, align 4
  %118 = ptrtoint ptr %117 to i32
  %119 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx108, align 4
  %add109.3 = add i32 %120, %118
  %121 = inttoptr i32 %add109.3 to ptr
  %arrayidx111.3 = getelementptr [8 x i32], ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %arrayidx111.3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx111.3, align 4
  %add.ptr113.3 = getelementptr i8, ptr %buf, i32 %add116.2
  %sub114.3 = sub i32 200, %add116.2
  %call115.3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.3, i32 noundef %sub114.3, ptr noundef nonnull @.str.106, i32 noundef %123) #12
  %add116.3 = add i32 %call115.3, %add116.2
  %124 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %stats106, align 4
  %126 = ptrtoint ptr %125 to i32
  %127 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx108, align 4
  %add109.4 = add i32 %128, %126
  %129 = inttoptr i32 %add109.4 to ptr
  %arrayidx111.4 = getelementptr [8 x i32], ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %arrayidx111.4 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx111.4, align 4
  %add.ptr113.4 = getelementptr i8, ptr %buf, i32 %add116.3
  %sub114.4 = sub i32 200, %add116.3
  %call115.4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.4, i32 noundef %sub114.4, ptr noundef nonnull @.str.106, i32 noundef %131) #12
  %add116.4 = add i32 %call115.4, %add116.3
  %132 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %stats106, align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx108, align 4
  %add109.5 = add i32 %136, %134
  %137 = inttoptr i32 %add109.5 to ptr
  %arrayidx111.5 = getelementptr [8 x i32], ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %arrayidx111.5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx111.5, align 4
  %add.ptr113.5 = getelementptr i8, ptr %buf, i32 %add116.4
  %sub114.5 = sub i32 200, %add116.4
  %call115.5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.5, i32 noundef %sub114.5, ptr noundef nonnull @.str.106, i32 noundef %139) #12
  %add116.5 = add i32 %call115.5, %add116.4
  %140 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stats106, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx108, align 4
  %add109.6 = add i32 %144, %142
  %145 = inttoptr i32 %add109.6 to ptr
  %arrayidx111.6 = getelementptr [8 x i32], ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %arrayidx111.6 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx111.6, align 4
  %add.ptr113.6 = getelementptr i8, ptr %buf, i32 %add116.5
  %sub114.6 = sub i32 200, %add116.5
  %call115.6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.6, i32 noundef %sub114.6, ptr noundef nonnull @.str.106, i32 noundef %147) #12
  %add116.6 = add i32 %call115.6, %add116.5
  %148 = ptrtoint ptr %stats106 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %stats106, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx108, align 4
  %add109.7 = add i32 %152, %150
  %153 = inttoptr i32 %add109.7 to ptr
  %arrayidx111.7 = getelementptr [8 x i32], ptr %153, i32 0, i32 7
  %154 = ptrtoint ptr %arrayidx111.7 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx111.7, align 4
  %add.ptr113.7 = getelementptr i8, ptr %buf, i32 %add116.6
  %sub114.7 = sub i32 200, %add116.6
  %call115.7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113.7, i32 noundef %sub114.7, ptr noundef nonnull @.str.106, i32 noundef %155) #12
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull %buf) #19
  %call127 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 200, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #12
  %call94 = call i32 @cpumask_next(i32 noundef %call94232, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %156 = load i32, ptr @nr_cpu_ids, align 4
  %cmp95 = icmp ult i32 %call94, %156
  br i1 %cmp95, label %for.cond97.preheader.for.cond97.preheader_crit_edge, label %for.cond97.preheader.for.cond84.loopexit_crit_edge

for.cond97.preheader.for.cond84.loopexit_crit_edge: ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond84.loopexit

for.cond97.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond97.preheader

for.end131:                                       ; preds = %for.cond84.loopexit.for.end131_crit_edge, %rcu_read_lock.exit192.for.end131_crit_edge
  %call.i205 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i205, label %for.end131.rcu_read_unlock.exit215_crit_edge, label %land.lhs.true.i208

for.end131.rcu_read_unlock.exit215_crit_edge:     ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit215

land.lhs.true.i208:                               ; preds = %for.end131
  %call1.i206 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i206)
  %tobool.not.i207 = icmp eq i32 %call1.i206, 0
  br i1 %tobool.not.i207, label %land.lhs.true.i208.rcu_read_unlock.exit215_crit_edge, label %land.lhs.true2.i210

land.lhs.true.i208.rcu_read_unlock.exit215_crit_edge: ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit215

land.lhs.true2.i210:                              ; preds = %land.lhs.true.i208
  %.b4.i209 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i209, label %land.lhs.true2.i210.rcu_read_unlock.exit215_crit_edge, label %if.then.i211

land.lhs.true2.i210.rcu_read_unlock.exit215_crit_edge: ; preds = %land.lhs.true2.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit215

if.then.i211:                                     ; preds = %land.lhs.true2.i210
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit215

rcu_read_unlock.exit215:                          ; preds = %if.then.i211, %land.lhs.true2.i210.rcu_read_unlock.exit215_crit_edge, %land.lhs.true.i208.rcu_read_unlock.exit215_crit_edge, %for.end131.rcu_read_unlock.exit215_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %157 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i212 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i212 to ptr
  %preempt_count.i.i.i.i213 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i.i213 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i.i213, align 4
  %sub.i.i.i214 = add i32 %160, -1
  store volatile i32 %sub.i.i.i214, ptr %preempt_count.i.i.i.i213, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #19
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit215, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_crypto_xmit(ptr noundef %net, ptr nocapture noundef %skb, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tipc_node_crypto_rx(ptr noundef %__dnode) #12
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 26
  %0 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_tx, align 4
  %stats2 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats2, align 4
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %key4 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %key4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %key.sroa.0.0.copyload = load i8, ptr %key4, align 2
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %7, align 4
  %shr.i.i = lshr i32 %10, 25
  %and.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i569 = lshr i32 %12, 29
  %13 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %13, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear = and i8 %key.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool8.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool8.not, label %if.end.if.end57_crit_edge, label %if.then11, !prof !332

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then11:                                        ; preds = %if.end
  %15 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  %16 = and i8 %key.sroa.0.0.copyload, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool21.not = icmp eq i8 %16, 0
  %or.cond = select i1 %tobool17.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %if.then11.encrypt_crit_edge, label %if.end23

if.then11.encrypt_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.end23:                                         ; preds = %if.then11
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %land.lhs.true25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end23
  %peer_rx_active = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %peer_rx_active, i32 noundef 4) #12
  %17 = ptrtoint ptr %peer_rx_active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %peer_rx_active, align 4
  %conv = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp eq i32 %18, %conv
  br i1 %cmp, label %land.lhs.true25.encrypt_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true25.encrypt_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 26
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load30 = load i8, ptr %21, align 2
  %23 = and i8 %bf.load30, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp34 = icmp eq i8 %23, 8
  br i1 %cmp34, label %do.body, label %if.end50

do.body:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_xmit.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_xmit, %if.then45)) #12
          to label %encrypt [label %if.then45], !srcloc !347

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 13
  %conv48 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_xmit.__UNIQUE_ID_ddebug438, ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %conv48) #12
  br label %encrypt

if.end50:                                         ; preds = %if.end29
  %24 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %and.i.i, label %if.end50.if.end57_crit_edge [
    i32 13, label %if.end50.if.then55_crit_edge
    i32 7, label %if.end50.if.then55_crit_edge597
  ]

if.end50.if.then55_crit_edge597:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.end50.if.then55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %if.end50.if.then55_crit_edge, %if.end50.if.then55_crit_edge597
  tail call fastcc void @tipc_crypto_clone_msg(ptr noundef %net, ptr noundef %20, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode, i8 noundef zeroext 1)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end50.if.end57_crit_edge, %if.end.if.end57_crit_edge
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load58 = load i8, ptr %13, align 16
  %26 = and i8 %bf.load58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool61.not = icmp eq i8 %26, 0
  br i1 %tobool61.not, label %if.end57.if.end147_crit_edge, label %if.then62

if.end57.if.end147_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then62:                                        ; preds = %if.end57
  %27 = and i8 %key.sroa.0.0.copyload, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool66.not = icmp eq i8 %27, 0
  br i1 %tobool66.not, label %if.then62.encrypt_crit_edge, label %if.end68

if.then62.encrypt_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.end68:                                         ; preds = %if.then62
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 26
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load71 = load i8, ptr %30, align 2
  %32 = and i8 %bf.load71, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %32)
  %cmp75 = icmp eq i8 %32, 16
  br i1 %cmp75, label %do.body78, label %if.end96

do.body78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_xmit.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_xmit, %if.then90)) #12
          to label %encrypt [label %if.then90], !srcloc !347

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #14
  %name91 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_xmit.__UNIQUE_ID_ddebug439, ptr noundef nonnull @.str.37, ptr noundef %name91, i32 noundef %and.i.i, i32 noundef %shr.i.i569) #12
  br label %encrypt

if.end96:                                         ; preds = %if.end68
  %33 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %and.i.i, label %if.end96.lor.lhs.false111_crit_edge [
    i32 13, label %if.end96.if.then115_crit_edge
    i32 7, label %land.lhs.true102
    i32 14, label %land.lhs.true108
  ]

if.end96.if.then115_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

if.end96.lor.lhs.false111_crit_edge:              ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false111

land.lhs.true102:                                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i569)
  %cmp103 = icmp eq i32 %shr.i.i569, 1
  br i1 %cmp103, label %land.lhs.true102.if.then115_crit_edge, label %land.lhs.true102.lor.lhs.false111_crit_edge

land.lhs.true102.lor.lhs.false111_crit_edge:      ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false111

land.lhs.true102.if.then115_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

land.lhs.true108:                                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %12)
  %cmp109.old = icmp ult i32 %12, 536870912
  br i1 %cmp109.old, label %land.lhs.true108.if.then115_crit_edge, label %land.lhs.true108.lor.lhs.false111_crit_edge

land.lhs.true108.lor.lhs.false111_crit_edge:      ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false111

land.lhs.true108.if.then115_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

lor.lhs.false111:                                 ; preds = %land.lhs.true108.lor.lhs.false111_crit_edge, %land.lhs.true102.lor.lhs.false111_crit_edge, %if.end96.lor.lhs.false111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timer2, align 4
  %add.neg = add i32 %34, -500
  %sub = sub i32 %add.neg, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp113 = icmp slt i32 %sub, 0
  br i1 %cmp113, label %lor.lhs.false111.if.then115_crit_edge, label %lor.lhs.false111.if.end147_crit_edge

lor.lhs.false111.if.end147_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

lor.lhs.false111.if.then115_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115

if.then115:                                       ; preds = %lor.lhs.false111.if.then115_crit_edge, %land.lhs.true108.if.then115_crit_edge, %land.lhs.true102.if.then115_crit_edge, %if.end96.if.then115_crit_edge
  %tobool116.not = icmp eq ptr %call, null
  br i1 %tobool116.not, label %if.then130.critedge, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.then115
  %37 = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 18
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load118 = load i8, ptr %37, align 16
  %39 = and i8 %bf.load118, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool122.not = icmp eq i8 %39, 0
  br i1 %tobool122.not, label %land.lhs.true117.if.end147_crit_edge, label %land.lhs.true123

land.lhs.true117.if.end147_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %peer_rx_active124 = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 3
  %call.i.i568 = tail call zeroext i1 @__kasan_check_read(ptr noundef %peer_rx_active124, i32 noundef 4) #12
  %40 = ptrtoint ptr %peer_rx_active124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %peer_rx_active124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool126.not = icmp eq i32 %41, 0
  br i1 %tobool126.not, label %land.lhs.true123.encrypt_crit_edge, label %land.lhs.true123.if.end147_crit_edge

land.lhs.true123.if.end147_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

land.lhs.true123.encrypt_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.then130.critedge:                              ; preds = %if.then115
  %42 = and i8 %bf.load58, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool134.not = icmp eq i8 %42, 0
  br i1 %tobool134.not, label %if.then130.critedge.encrypt_crit_edge, label %if.end144, !prof !332

if.then130.critedge.encrypt_crit_edge:            ; preds = %if.then130.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.end144:                                        ; preds = %if.then130.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tipc_crypto_clone_msg(ptr noundef %net, ptr noundef %29, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode, i8 noundef zeroext 2)
  br label %if.end147

if.end147:                                        ; preds = %if.end144, %land.lhs.true123.if.end147_crit_edge, %land.lhs.true117.if.end147_crit_edge, %lor.lhs.false111.if.end147_crit_edge, %if.end57.if.end147_crit_edge
  %bf.lshr149 = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear150 = and i8 %bf.lshr149, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear150)
  %tobool151.not = icmp eq i8 %bf.clear150, 0
  br i1 %tobool151.not, label %if.end147.do.body304_crit_edge, label %if.end147.encrypt_crit_edge, !prof !331

if.end147.encrypt_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %encrypt

if.end147.do.body304_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body304

encrypt:                                          ; preds = %if.end147.encrypt_crit_edge, %if.then130.critedge.encrypt_crit_edge, %land.lhs.true123.encrypt_crit_edge, %if.then90, %do.body78, %if.then62.encrypt_crit_edge, %if.then45, %do.body, %land.lhs.true25.encrypt_crit_edge, %if.then11.encrypt_crit_edge
  %tx_key.0 = phi i8 [ %bf.clear, %land.lhs.true25.encrypt_crit_edge ], [ %bf.clear, %if.then45 ], [ 0, %if.then90 ], [ 0, %if.then130.critedge.encrypt_crit_edge ], [ 0, %land.lhs.true123.encrypt_crit_edge ], [ 0, %if.then62.encrypt_crit_edge ], [ %bf.clear, %if.then11.encrypt_crit_edge ], [ %bf.clear150, %if.end147.encrypt_crit_edge ], [ %bf.clear, %do.body ], [ 0, %do.body78 ]
  %idxprom = zext i8 %tx_key.0 to i32
  %arrayidx164 = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx164, align 4
  %call165 = tail call fastcc ptr @tipc_aead_get(ptr noundef %44)
  %tobool166.not = icmp eq ptr %call165, null
  br i1 %tobool166.not, label %encrypt.do.body304_crit_edge, label %if.end176, !prof !331

encrypt.do.body304_crit_edge:                     ; preds = %encrypt
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body304

if.end176:                                        ; preds = %encrypt
  %45 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %shr.i.i.i = lshr i32 %50, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i.i.i)
  %cmp.not.i = icmp eq i32 %and.i.i.i, 13
  %cond.i = select i1 %cmp.not.i, i32 28, i32 16
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 18
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %cond.i)
  %cmp3.i = icmp ult i32 %sub.ptr.sub.i.i, %cond.i
  br i1 %cmp3.i, label %do.end.i, label %if.end176.if.end.i_crit_edge, !prof !331

if.end176.if.end.i_crit_edge:                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1042, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end176.if.end.i_crit_edge
  %call22.i = tail call ptr @skb_push(ptr noundef %46, i32 noundef %cond.i) #12
  %tobool23.not.i = icmp eq ptr %call, null
  br i1 %tobool23.not.i, label %if.end.i.if.then26.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.tipc_aead, ptr %call165, i32 0, i32 6
  %53 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp24.i = icmp eq i8 %54, 1
  br i1 %cmp24.i, label %lor.lhs.false.i.if.then26.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %seqno27.i = getelementptr inbounds %struct.tipc_aead, ptr %call165, i32 0, i32 12
  br label %if.end30.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %sndnxt.i = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 15
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then26.i
  %sndnxt.sink175.i = phi ptr [ %sndnxt.i, %if.else.i ], [ %seqno27.i, %if.then26.i ]
  %call.i.i169.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sndnxt.sink175.i, i32 noundef 8) #12
  %call.i2.i170.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %sndnxt.sink175.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i2.i170.i)
  %tobool31.not.i = icmp eq i64 %call.i2.i170.i, 0
  br i1 %tobool31.not.i, label %tipc_ehdr_build.exit, label %if.end42.i, !prof !331

if.end42.i:                                       ; preds = %if.end30.i
  %seqno43.i = getelementptr inbounds %struct.tipc_ehdr, ptr %call22.i, i32 0, i32 1
  %55 = ptrtoint ptr %seqno43.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %call.i2.i170.i, ptr %seqno43.i, align 1
  %56 = ptrtoint ptr %call22.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %bf.load.i = load i16, ptr %call22.i, align 1
  %bf.set.i = and i16 %bf.load.i, 55
  %57 = shl nuw i8 %tx_key.0, 6
  %bf.shl.i = zext i8 %57 to i16
  %bf.clear45.i = select i1 %tobool23.not.i, i16 -8192, i16 -7936
  %bf.set52.i = or i16 %bf.clear45.i, %bf.shl.i
  %bf.set60.i = or i16 %bf.set52.i, %bf.set.i
  store i16 %bf.set60.i, ptr %call22.i, align 1
  br i1 %tobool23.not.i, label %cond.end81.critedge.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %key.i = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 5
  %58 = ptrtoint ptr %key.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load63.i = load i8, ptr %key.i, align 2
  %59 = shl i8 %bf.load63.i, 2
  %phi.bo.i = and i8 %59, 48
  %bf.shl70.c.i = zext i8 %phi.bo.i to i16
  %bf.clear71.c168.i = and i16 %bf.set60.i, -7737
  %bf.set72.c.i = or i16 %bf.clear71.c168.i, %bf.shl70.c.i
  %60 = ptrtoint ptr %call22.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %bf.set72.c.i, ptr %call22.i, align 1
  %61 = getelementptr inbounds %struct.tipc_crypto, ptr %call, i32 0, i32 18
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load76.i = load i8, ptr %61, align 16
  %63 = lshr i8 %bf.load76.i, 3
  %phi.bo166.i = and i8 %63, 2
  br label %cond.end81.i

cond.end81.critedge.i:                            ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear71.c.i = and i16 %bf.set60.i, -7737
  %64 = ptrtoint ptr %call22.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %bf.clear71.c.i, ptr %call22.i, align 1
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.end81.critedge.i, %cond.true.i
  %cond82.i = phi i8 [ %phi.bo166.i, %cond.true.i ], [ 0, %cond.end81.critedge.i ]
  %65 = ptrtoint ptr %call22.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %bf.load84.i = load i16, ptr %call22.i, align 1
  %bf.shl86.i = zext i8 %cond82.i to i16
  %bf.clear87.i = and i16 %bf.load84.i, -3
  %bf.set88.i = or i16 %bf.clear87.i, %bf.shl86.i
  store i16 %bf.set88.i, ptr %call22.i, align 1
  %crypto.i = getelementptr inbounds %struct.tipc_aead, ptr %call165, i32 0, i32 1
  %66 = ptrtoint ptr %crypto.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %crypto.i, align 4
  %68 = getelementptr inbounds %struct.tipc_crypto, ptr %67, i32 0, i32 18
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load90.i = load i8, ptr %68, align 16
  %70 = lshr i8 %bf.load90.i, 4
  %71 = and i8 %70, 4
  %bf.shl95.i = zext i8 %71 to i16
  %bf.clear96.i = and i16 %bf.set88.i, -6
  %bf.set97.i = or i16 %bf.clear96.i, %bf.shl95.i
  store i16 %bf.set97.i, ptr %call22.i, align 1
  %reserved_2.i = getelementptr inbounds %struct.anon.123, ptr %call22.i, i32 0, i32 1
  %72 = ptrtoint ptr %reserved_2.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 0, ptr %reserved_2.i, align 1
  %73 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %and.i.i.i, label %cond.end81.i.if.end123.i_crit_edge [
    i32 13, label %sw.bb.i
    i32 7, label %land.lhs.true.i
  ]

cond.end81.i.if.end123.i_crit_edge:               ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.i

sw.bb.i:                                          ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear103.i = and i16 %bf.set97.i, -7682
  %bf.set104.i = or i16 %bf.clear103.i, 6656
  %74 = ptrtoint ptr %call22.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %bf.set104.i, ptr %call22.i, align 1
  %75 = getelementptr inbounds %struct.tipc_ehdr, ptr %call22.i, i32 0, i32 2
  %call.i.i570 = tail call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i570, i32 0, i32 4
  %76 = ptrtoint ptr %node_id_string.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %char0.i.i = load i8, ptr %node_id_string.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  %.call.i.i = select i1 %tobool.not.i.i, ptr null, ptr %call.i.i570
  %77 = call ptr @memcpy(ptr %75, ptr %.call.i.i, i32 16)
  br label %exit

land.lhs.true.i:                                  ; preds = %cond.end81.i
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %48, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %79)
  %cmp109.i = icmp ult i32 %79, 536870912
  br i1 %cmp109.i, label %if.then111.i, label %land.lhs.true.i.if.end123.i_crit_edge

land.lhs.true.i.if.end123.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.i

if.then111.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear113.i = and i16 %bf.set97.i, -7682
  %bf.set114.i = or i16 %bf.clear113.i, 3584
  %80 = ptrtoint ptr %call22.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %bf.set114.i, ptr %call22.i, align 1
  %81 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %48, align 4
  %sh.diff.i = lshr i32 %82, 16
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %bf.value118.i = and i16 %tr.sh.diff.i, 8
  %bf.clear120.i = and i16 %bf.set114.i, -4106
  %bf.set121.i = or i16 %bf.value118.i, %bf.clear120.i
  store i16 %bf.set121.i, ptr %call22.i, align 1
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then111.i, %land.lhs.true.i.if.end123.i_crit_edge, %cond.end81.i.if.end123.i_crit_edge
  %arrayidx.i = getelementptr [15 x i32], ptr %48, i32 0, i32 3
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %85 = getelementptr inbounds %struct.tipc_ehdr, ptr %call22.i, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %84, ptr %85, align 1
  br label %exit

tipc_ehdr_build.exit:                             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tipc_crypto_key_revoke(ptr noundef %net, i8 noundef zeroext %tx_key.0) #12
  br label %do.body304

exit:                                             ; preds = %if.end123.i, %sw.bb.i
  %87 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skb, align 4
  %call187 = tail call fastcc i32 @tipc_aead_encrypt(ptr noundef nonnull %call165, ptr noundef %88, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode)
  %89 = zext i32 %call187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call187, label %exit.do.body304_crit_edge [
    i32 0, label %do.body190
    i32 -115, label %exit.do.body244_crit_edge
    i32 -16, label %exit.do.body244_crit_edge598
  ]

exit.do.body244_crit_edge598:                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body244

exit.do.body244_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body244

exit.do.body304_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body304

do.body190:                                       ; preds = %exit
  %90 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %91 = ptrtoint ptr %3 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu, align 4
  %arrayidx210 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx210, align 4
  %add211 = add i32 %97, %91
  %98 = inttoptr i32 %add211 to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add212 = add i32 %100, 1
  store i32 %add212, ptr %98, align 4
  %101 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i572 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i572)
  %tobool223.not = icmp eq i32 %and.i.i572, 0
  br i1 %tobool223.not, label %if.then232, label %do.body190.sw.epilog.thread_crit_edge, !prof !331

do.body190.sw.epilog.thread_crit_edge:            ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

if.then232:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then232, %do.body190.sw.epilog.thread_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %90) #12, !srcloc !353
  br label %land.lhs.true.i579

do.body244:                                       ; preds = %exit.do.body244_crit_edge, %exit.do.body244_crit_edge598
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx267 = getelementptr [8 x i32], ptr %3, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx267 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i573 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i573 to ptr
  %cpu270 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu270 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu270, align 4
  %arrayidx271 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx271, align 4
  %add272 = add i32 %109, %103
  %110 = inttoptr i32 %add272 to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add273 = add i32 %112, 1
  store i32 %add273, ptr %110, align 4
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i574 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i574)
  %tobool284.not = icmp eq i32 %and.i.i574, 0
  br i1 %tobool284.not, label %if.then293, label %do.body244.do.end296_crit_edge, !prof !331

do.body244.do.end296_crit_edge:                   ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end296

if.then293:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end296

do.end296:                                        ; preds = %if.then293, %do.body244.do.end296_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #12, !srcloc !353
  %114 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %skb, align 4
  br label %cleanup

do.body304:                                       ; preds = %exit.do.body304_crit_edge, %tipc_ehdr_build.exit, %encrypt.do.body304_crit_edge, %if.end147.do.body304_crit_edge
  %aead.0590 = phi ptr [ %call165, %exit.do.body304_crit_edge ], [ null, %if.end147.do.body304_crit_edge ], [ %call165, %tipc_ehdr_build.exit ], [ null, %encrypt.do.body304_crit_edge ]
  %rc.0588 = phi i32 [ %call187, %exit.do.body304_crit_edge ], [ -126, %if.end147.do.body304_crit_edge ], [ -128, %tipc_ehdr_build.exit ], [ -126, %encrypt.do.body304_crit_edge ]
  %115 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx327 = getelementptr [8 x i32], ptr %3, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx327 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i575 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i575 to ptr
  %cpu330 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %cpu330 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cpu330, align 4
  %arrayidx331 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx331, align 4
  %add332 = add i32 %122, %116
  %123 = inttoptr i32 %add332 to ptr
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add333 = add i32 %125, 1
  store i32 %add333, ptr %123, align 4
  %126 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i576 = and i32 %126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i576)
  %tobool344.not = icmp eq i32 %and.i.i576, 0
  br i1 %tobool344.not, label %if.then353, label %do.body304.do.end356_crit_edge, !prof !331

do.body304.do.end356_crit_edge:                   ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end356

if.then353:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end356

do.end356:                                        ; preds = %if.then353, %do.body304.do.end356_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %115) #12, !srcloc !353
  %127 = zext i32 %rc.0588 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %rc.0588, label %do.end356.sw.epilog_crit_edge [
    i32 -126, label %do.body367
    i32 -128, label %do.body430
  ]

do.end356.sw.epilog_crit_edge:                    ; preds = %do.end356
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body367:                                       ; preds = %do.end356
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx390 = getelementptr [8 x i32], ptr %3, i32 0, i32 6
  %129 = ptrtoint ptr %arrayidx390 to i32
  %130 = ptrtoint ptr %cpu330 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cpu330, align 4
  %arrayidx394 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx394, align 4
  %add395 = add i32 %133, %129
  %134 = inttoptr i32 %add395 to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %add396 = add i32 %136, 1
  store i32 %add396, ptr %134, align 4
  %137 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i577 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i577)
  %tobool407.not = icmp eq i32 %and.i.i577, 0
  br i1 %tobool407.not, label %if.then416, label %do.body367.do.end419_crit_edge, !prof !331

do.body367.do.end419_crit_edge:                   ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end419

if.then416:                                       ; preds = %do.body367
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end419

do.end419:                                        ; preds = %if.then416, %do.body367.do.end419_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #12, !srcloc !353
  br label %sw.epilog

do.body430:                                       ; preds = %do.end356
  %138 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx453 = getelementptr [8 x i32], ptr %3, i32 0, i32 5
  %139 = ptrtoint ptr %arrayidx453 to i32
  %140 = ptrtoint ptr %cpu330 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cpu330, align 4
  %arrayidx457 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx457, align 4
  %add458 = add i32 %143, %139
  %144 = inttoptr i32 %add458 to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add459 = add i32 %146, 1
  store i32 %add459, ptr %144, align 4
  %147 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i578 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i578)
  %tobool470.not = icmp eq i32 %and.i.i578, 0
  br i1 %tobool470.not, label %if.then479, label %do.body430.do.end482_crit_edge, !prof !331

do.body430.do.end482_crit_edge:                   ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end482

if.then479:                                       ; preds = %do.body430
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end482

do.end482:                                        ; preds = %if.then479, %do.body430.do.end482_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %138) #12, !srcloc !353
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end482, %do.end419, %do.end356.sw.epilog_crit_edge
  %148 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %149, i32 noundef 0) #12
  %150 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %skb, align 4
  %tobool.not.i = icmp eq ptr %aead.0590, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.land.lhs.true.i579_crit_edge

sw.epilog.land.lhs.true.i579_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i579

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i579:                               ; preds = %sw.epilog.land.lhs.true.i579_crit_edge, %sw.epilog.thread
  %rc.0587595 = phi i32 [ 0, %sw.epilog.thread ], [ %rc.0588, %sw.epilog.land.lhs.true.i579_crit_edge ]
  %aead.0589594 = phi ptr [ %call165, %sw.epilog.thread ], [ %aead.0590, %sw.epilog.land.lhs.true.i579_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %aead.0589594, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %151 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i579
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i579
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %aead.0589594, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end296, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call187, %do.end296 ], [ 0, %entry.cleanup_crit_edge ], [ %rc.0588, %sw.epilog.cleanup_crit_edge ], [ %rc.0587595, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %rc.0587595, %if.then10.i.i.i.i ], [ %rc.0587595, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_node_crypto_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_clone_msg(ptr noundef %net, ptr noundef %_skb, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode, i8 noundef zeroext %type) unnamed_addr #4 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #12
  %call = tail call ptr @skb_clone(ptr noundef %_skb, i32 noundef 2592) #12
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %skb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 26
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 2
  %bf.value = shl i8 %type, 3
  %bf.shl = and i8 %bf.value, 24
  %bf.clear = and i8 %bf.load, -25
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %1, align 2
  %call1 = call i32 @tipc_crypto_xmit(ptr noundef %net, ptr noundef nonnull %skb, ptr noundef %b, ptr noundef %dst, ptr noundef %__dnode)
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %5 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %media, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call4 = tail call i32 %8(ptr noundef %net, ptr noundef nonnull %4, ptr noundef %b, ptr noundef %dst) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_aead_get(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %aead.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aead.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aead, ptr %aead.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %aead.addr.0.aead.addr.0.aead.addr.0. = load volatile ptr, ptr %aead.addr, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @tipc_aead_get.__warned, align 1
  br i1 %.b19, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 388, ptr noundef nonnull @.str.16) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %aead.addr.0.aead.addr.0.aead.addr.0., null
  br i1 %tobool10.not, label %do.end8.if.then15_crit_edge, label %lor.rhs, !prof !331

do.end8.if.then15_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

lor.rhs:                                          ; preds = %do.end8
  %refcnt = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.0.aead.addr.0.aead.addr.0., i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.rhs
  %8 = phi i32 [ %7, %lor.rhs ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i20 = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %11, i32 %add.i.i.i20, ptr elementtype(i32) %refcnt) #12, !srcloc !349
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !332

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !332

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.then15_crit_edge, label %refcount_inc_not_zero.exit.if.end16_crit_edge, !prof !331

refcount_inc_not_zero.exit.if.end16_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

refcount_inc_not_zero.exit.if.then15_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %refcount_inc_not_zero.exit.if.then15_crit_edge, %do.end8.if.then15_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %refcount_inc_not_zero.exit.if.end16_crit_edge
  %tmp.0 = phi ptr [ null, %if.then15 ], [ %aead.addr.0.aead.addr.0.aead.addr.0., %refcount_inc_not_zero.exit.if.end16_crit_edge ]
  %call.i21 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i21, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end16
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %18 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %tmp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_aead_encrypt(ptr noundef %aead, ptr noundef %skb, ptr noundef %b, ptr nocapture noundef readonly %dst, ptr noundef %__dnode) unnamed_addr #0 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !354
  %4 = ptrtoint ptr %aead to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aead, align 128
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %list.i = getelementptr inbounds %struct.tipc_tfm, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 -4
  store ptr %add.ptr.i, ptr %13, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %20 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i18.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i18.i to ptr
  %preempt_count.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i19.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i19.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #12
  %24 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !356
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1, align 4
  %add = add i32 %26, 3
  %and = and i32 %add, -4
  %sub = sub i32 %and, %26
  %authsize = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 5
  %27 = ptrtoint ptr %authsize to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %authsize, align 4
  %conv = zext i8 %28 to i32
  %add3 = add i32 %sub, %conv
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not = icmp eq i32 %30, 0
  br i1 %tobool.i.not, label %skb_tailroom.exit, label %do.body6, !prof !332

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/tipc/crypto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 758, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

skb_tailroom.exit:                                ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %add3, %sub.ptr.sub.i
  br i1 %cmp, label %do.body15, label %skb_tailroom.exit.if.end29_crit_edge

skb_tailroom.exit.if.end29_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.body15:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_aead_encrypt.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_aead_encrypt, %if.then24)) #12
          to label %if.end29 [label %if.then24], !srcloc !347

if.then24:                                        ; preds = %do.body15
  %35 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i169 = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i169, label %cond.false.i175, label %if.then24.skb_tailroom.exit177_crit_edge

if.then24.skb_tailroom.exit177_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit177

cond.false.i175:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i172 = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i173 = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i174 = sub i32 %sub.ptr.lhs.cast.i172, %sub.ptr.rhs.cast.i173
  br label %skb_tailroom.exit177

skb_tailroom.exit177:                             ; preds = %cond.false.i175, %if.then24.skb_tailroom.exit177_crit_edge
  %cond.i176 = phi i32 [ %sub.ptr.sub.i174, %cond.false.i175 ], [ 0, %if.then24.skb_tailroom.exit177_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_aead_encrypt.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.62, i32 noundef %cond.i176, i32 noundef %add3) #12
  br label %if.end29

if.end29:                                         ; preds = %skb_tailroom.exit177, %do.body15, %skb_tailroom.exit.if.end29_crit_edge
  %call30 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef %add3, ptr noundef nonnull %trailer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end42, label %if.end45, !prof !331

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call30) #19
  br label %cleanup

if.end45:                                         ; preds = %if.end29
  %41 = ptrtoint ptr %trailer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trailer, align 4
  %call46 = call ptr @pskb_put(ptr noundef %skb, ptr noundef %42, i32 noundef %add3) #12
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %44, i32 -104
  %45 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ivsize.i.i.i, align 8
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 1
  %47 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reqsize.i.i, align 4
  %add13.i = add i32 %48, 131
  %add5.i = add i32 %46, 171
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %44, i32 0, i32 5
  %49 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %50, -128
  %add8.i = add i32 %add5.i, %and.i
  %and12.i = and i32 %add8.i, -128
  %add14.i = add i32 %add13.i, %and12.i
  %and15.i = and i32 %add14.i, -4
  %mul.i = mul i32 %call30, 20
  %add16.i = add i32 %and15.i, %mul.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end45.cleanup_crit_edge, label %if.end58

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end58:                                         ; preds = %if.end45
  %add.i178 = add i32 %48, 128
  %add.ptr.i179 = getelementptr i8, ptr %call9.i.i, i32 44
  %51 = ptrtoint ptr %add.ptr.i179 to i32
  %52 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i60.i = getelementptr inbounds %struct.crypto_alg, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %cra_alignmask.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cra_alignmask.i.i60.i, align 4
  %add21.i = add i32 %55, %51
  %neg25.i = xor i32 %55, -1
  %and26.i = and i32 %add21.i, %neg25.i
  %56 = inttoptr i32 %and26.i to ptr
  %add.ptr27.i = getelementptr i8, ptr %56, i32 %46
  %57 = ptrtoint ptr %add.ptr27.i to i32
  %add30.i = add i32 %57, 127
  %and34.i = and i32 %add30.i, -128
  %58 = inttoptr i32 %and34.i to ptr
  %add.ptr35.i = getelementptr i8, ptr %58, i32 %add.i178
  %59 = ptrtoint ptr %add.ptr35.i to i32
  %add36.i = add i32 %59, 3
  %and37.i = and i32 %add36.i, -4
  %60 = inttoptr i32 %and37.i to ptr
  %crypto_ctx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %61 = ptrtoint ptr %crypto_ctx to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i, ptr %crypto_ctx, align 4
  call void @sg_init_table(ptr noundef %60, i32 noundef %call30) #12
  %62 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len1, align 4
  %call60 = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %60, i32 noundef 0, i32 noundef %63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end72, label %if.end75, !prof !331

do.end72:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call60, i32 noundef %call30) #19
  br label %exit

if.end75:                                         ; preds = %if.end58
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %salt76 = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 4
  %66 = ptrtoint ptr %salt76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %salt76, align 16
  %mode = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 6
  %68 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp78 = icmp eq i8 %69, 1
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %70 = getelementptr inbounds %struct.tipc_ehdr, ptr %65, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %70, align 1
  %xor = xor i32 %72, %67
  br label %if.end86

if.else:                                          ; preds = %if.end75
  %tobool81.not = icmp eq ptr %__dnode, null
  br i1 %tobool81.not, label %if.else.if.end86_crit_edge, label %if.then82

if.else.if.end86_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call83 = call i32 @tipc_node_get_addr(ptr noundef nonnull %__dnode) #12
  %xor84 = xor i32 %call83, %67
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.else.if.end86_crit_edge, %if.then80
  %salt.0 = phi i32 [ %xor, %if.then80 ], [ %xor84, %if.then82 ], [ %67, %if.else.if.end86_crit_edge ]
  %73 = ptrtoint ptr %56 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %salt.0, ptr %56, align 1
  %add.ptr = getelementptr i8, ptr %56, i32 4
  %seqno = getelementptr inbounds %struct.tipc_ehdr, ptr %65, i32 0, i32 1
  %74 = ptrtoint ptr %seqno to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %seqno, align 1
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %add.ptr, align 1
  %77 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %bf.load.i = load i16, ptr %65, align 1
  %78 = and i16 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %78)
  %cmp.not.i = icmp eq i16 %78, 6656
  %cond.i181 = select i1 %cmp.not.i, i32 28, i32 16
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %19, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 3
  %79 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %58, i32 0, i32 1
  %80 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.i181, ptr %assoclen1.i, align 8
  %sub88 = sub i32 %and, %cond.i181
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %58, i32 0, i32 4
  %81 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %60, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %58, i32 0, i32 5
  %82 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %60, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %58, i32 0, i32 2
  %83 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub88, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %58, i32 0, i32 3
  %84 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %56, ptr %iv4.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 1
  %85 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tipc_aead_encrypt_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 2
  %86 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %skb, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %58, i32 0, i32 4
  %87 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1024, ptr %flags4.i, align 4
  %88 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %aead, ptr %call9.i.i, align 128
  %bearer = getelementptr inbounds %struct.tipc_crypto_tx_ctx, ptr %call9.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %bearer to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %b, ptr %bearer, align 4
  %dst90 = getelementptr inbounds %struct.tipc_crypto_tx_ctx, ptr %call9.i.i, i32 0, i32 2
  %90 = call ptr @memcpy(ptr %dst90, ptr %dst, i32 34)
  %call91 = call zeroext i1 @tipc_bearer_hold(ptr noundef %b) #12
  br i1 %call91, label %if.end101, label %if.end86.exit_crit_edge, !prof !332

if.end86.exit_crit_edge:                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end101:                                        ; preds = %if.end86
  %call102 = call i32 @crypto_aead_encrypt(ptr noundef %58) #12
  %91 = zext i32 %call102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call102, label %if.end108 [
    i32 -115, label %if.end101.cleanup_crit_edge
    i32 -16, label %if.end101.cleanup_crit_edge197
  ]

if.end101.cleanup_crit_edge197:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  call void @tipc_bearer_put(ptr noundef %b) #12
  br label %exit

exit:                                             ; preds = %if.end108, %if.end86.exit_crit_edge, %do.end72
  %rc.0 = phi i32 [ %call60, %do.end72 ], [ %call102, %if.end108 ], [ -19, %if.end86.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %92 = ptrtoint ptr %crypto_ctx to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %crypto_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end101.cleanup_crit_edge, %if.end101.cleanup_crit_edge197, %if.end45.cleanup_crit_edge, %do.end42
  %retval.0 = phi i32 [ %call30, %do.end42 ], [ %rc.0, %exit ], [ %call102, %if.end101.cleanup_crit_edge ], [ %call102, %if.end101.cleanup_crit_edge197 ], [ -12, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_crypto_rcv(ptr noundef %net, ptr noundef %rx, ptr noundef %skb, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %unused.i = alloca ptr, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_tx, align 4
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load = load i16, ptr %5, align 1
  %7 = trunc i16 %bf.load to i8
  %8 = lshr i8 %7, 6
  %tobool.not = icmp eq ptr %rx, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %cmp = icmp ult i8 %7, 64
  %spec.select = select i1 %tobool.not, i1 true, i1 %cmp, !prof !331
  br i1 %spec.select, label %entry.pick_tx_crit_edge, label %if.end, !prof !331

entry.pick_tx_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pick_tx

if.end:                                           ; preds = %entry
  %key4 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 5
  %9 = ptrtoint ptr %key4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %key.sroa.0.0.copyload = load i8, ptr %key4, align 2
  %bf.lshr7 = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear8 = and i8 %bf.lshr7, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %bf.clear8)
  %cmp10 = icmp eq i8 %8, %bf.clear8
  %bf.clear14 = and i8 %key.sroa.0.0.copyload, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %bf.clear14)
  %cmp16 = icmp eq i8 %8, %bf.clear14
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp16
  %bf.lshr21 = lshr i8 %key.sroa.0.0.copyload, 4
  %bf.clear22 = and i8 %bf.lshr21, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %bf.clear22)
  %cmp24 = icmp eq i8 %8, %bf.clear22
  %or.cond438 = select i1 %or.cond, i1 true, i1 %cmp24
  br i1 %or.cond438, label %if.end.decrypt_crit_edge, label %if.end27

if.end.decrypt_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt

if.end27:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %10 = ptrtoint ptr %key4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %key.sroa.0.0.copyload.i = load i8, ptr %key4, align 2
  %bf.clear.i = and i8 %key.sroa.0.0.copyload.i, 3
  %conv.i = zext i8 %bf.clear.i to i32
  %conv2.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %8, %bf.clear.i
  br i1 %cmp.i, label %if.end27.tipc_crypto_key_try_align.exit.thread_crit_edge, label %if.end.i

if.end27.tipc_crypto_key_try_align.exit.thread_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_try_align.exit.thread

if.end.i:                                         ; preds = %if.end27
  %11 = and i8 %key.sroa.0.0.copyload.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i440 = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool10.not.i = icmp eq i8 %bf.clear.i, 0
  %or.cond.i = or i1 %tobool.not.i440, %tobool10.not.i
  br i1 %or.cond.i, label %if.end.i.tipc_crypto_key_try_align.exit_crit_edge, label %if.end12.i

if.end.i.tipc_crypto_key_try_align.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_try_align.exit

if.end12.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i441 = tail call fastcc i32 @tipc_aead_users(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i441)
  %cmp15.i = icmp sgt i32 %call.i441, 0
  br i1 %cmp15.i, label %if.end12.i.tipc_crypto_key_try_align.exit_crit_edge, label %do.body.i

if.end12.i.tipc_crypto_key_try_align.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_try_align.exit

do.body.i:                                        ; preds = %if.end12.i
  %dep_map.i = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool21.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i442, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i442:                               ; preds = %do.body.i
  %call22.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i442.do.end.i_crit_edge, label %land.lhs.true24.i

land.lhs.true.i442.do.end.i_crit_edge:            ; preds = %land.lhs.true.i442
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true24.i:                                ; preds = %land.lhs.true.i442
  %.b327.i = load i1, ptr @tipc_crypto_key_try_align.__warned, align 1
  br i1 %.b327.i, label %land.lhs.true24.i.do.end.i_crit_edge, label %if.then26.i

land.lhs.true24.i.do.end.i_crit_edge:             ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then26.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_try_align.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1270, ptr noundef nonnull @.str.4) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then26.i, %land.lhs.true24.i.do.end.i_crit_edge, %land.lhs.true.i442.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %15, i32 0, i32 14
  %call33.i = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i) #12
  br i1 %call33.i, label %do.body44.i, label %do.end.i.tipc_crypto_key_try_align.exit_crit_edge

do.end.i.tipc_crypto_key_try_align.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_try_align.exit

do.body44.i:                                      ; preds = %do.end.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %bf.lshr84.i = lshr i8 %key.sroa.0.0.copyload.i, 4
  %bf.clear85.i = and i8 %bf.lshr84.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear85.i)
  %tobool86.not.i = icmp eq i8 %bf.clear85.i, 0
  br i1 %tobool86.not.i, label %do.body44.i.if.end174.i_crit_edge, label %if.then87.i

do.body44.i.if.end174.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174.i

if.then87.i:                                      ; preds = %do.body44.i
  %call.i328.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328.i)
  %tobool92.not.i = icmp eq i32 %call.i328.i, 0
  br i1 %tobool92.not.i, label %land.lhs.true93.i, label %if.then87.i.do.end101.i_crit_edge

if.then87.i.do.end101.i_crit_edge:                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

land.lhs.true93.i:                                ; preds = %if.then87.i
  %call94.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %land.lhs.true93.i.do.end101.i_crit_edge, label %land.lhs.true96.i

land.lhs.true93.i.do.end101.i_crit_edge:          ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

land.lhs.true96.i:                                ; preds = %land.lhs.true93.i
  %.b325326.i = load i1, ptr @tipc_crypto_key_try_align.__warned.67, align 1
  br i1 %.b325326.i, label %land.lhs.true96.i.do.end101.i_crit_edge, label %if.then98.i

land.lhs.true96.i.do.end101.i_crit_edge:          ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101.i

if.then98.i:                                      ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_try_align.__warned.67, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1277, ptr noundef nonnull @.str.4) #12
  br label %do.end101.i

do.end101.i:                                      ; preds = %if.then98.i, %land.lhs.true96.i.do.end101.i_crit_edge, %land.lhs.true93.i.do.end101.i_crit_edge, %if.then87.i.do.end101.i_crit_edge
  %idxprom107.i = zext i8 %bf.clear85.i to i32
  %arrayidx108.i = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom107.i
  %17 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx108.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %19 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %arrayidx108.i, align 4
  %sub.i = sub nsw i8 %8, %bf.clear.i
  %add.i = add nsw i8 %sub.i, %bf.clear85.i
  %rem329.i510 = srem i8 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rem329.i510)
  %cmp170.i = icmp slt i8 %rem329.i510, 1
  %add172.i = add nsw i8 %rem329.i510, 3
  %spec.select511 = select i1 %cmp170.i, i8 %add172.i, i8 %rem329.i510
  br label %if.end174.i

if.end174.i:                                      ; preds = %do.end101.i, %do.body44.i.if.end174.i_crit_edge
  %new_passive.0.i = phi i8 [ 0, %do.body44.i.if.end174.i_crit_edge ], [ %spec.select511, %do.end101.i ]
  %tmp2.0.i = phi ptr [ null, %do.body44.i.if.end174.i_crit_edge ], [ %18, %do.end101.i ]
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef nonnull %rx, i8 noundef zeroext %new_passive.0.i, i8 noundef zeroext 0, i8 noundef zeroext %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !359
  %arrayidx209.i = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %conv2.i
  %20 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %15, ptr %arrayidx209.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %new_passive.0.i)
  %tobool221.not.i = icmp eq i8 %new_passive.0.i, 0
  br i1 %tobool221.not.i, label %if.end174.i.if.end269.i_crit_edge, label %do.body223.i

if.end174.i.if.end269.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end269.i

do.body223.i:                                     ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !360
  %idxprom256.i = zext i8 %new_passive.0.i to i32
  %arrayidx257.i = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom256.i
  %21 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %tmp2.0.i, ptr %arrayidx257.i, align 4
  br label %if.end269.i

if.end269.i:                                      ; preds = %do.body223.i, %if.end174.i.if.end269.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcnt.i, align 4
  %call271.i = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_crypto_key_try_align._rs, ptr noundef nonnull @__func__.tipc_crypto_key_try_align) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271.i)
  %tobool272.not.i = icmp eq i32 %call271.i, 0
  br i1 %tobool272.not.i, label %if.end269.i.tipc_crypto_key_try_align.exit.thread_crit_edge, label %do.end276.i

if.end269.i.tipc_crypto_key_try_align.exit.thread_crit_edge: ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_try_align.exit.thread

do.end276.i:                                      ; preds = %if.end269.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %call282.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #19
  br label %tipc_crypto_key_try_align.exit.thread

tipc_crypto_key_try_align.exit.thread:            ; preds = %do.end276.i, %if.end269.i.tipc_crypto_key_try_align.exit.thread_crit_edge, %if.end27.tipc_crypto_key_try_align.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %decrypt

tipc_crypto_key_try_align.exit:                   ; preds = %do.end.i.tipc_crypto_key_try_align.exit_crit_edge, %if.end12.i.tipc_crypto_key_try_align.exit_crit_edge, %if.end.i.tipc_crypto_key_try_align.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %pick_tx

pick_tx:                                          ; preds = %tipc_crypto_key_try_align.exit, %entry.pick_tx_crit_edge
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3
  %key1.i443 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %key1.i443 to i32
  call void @__asan_load1_noabort(i32 %25)
  %key.sroa.0.0.copyload.i444 = load i8, ptr %key1.i443, align 2
  %26 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 26
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %26, align 1
  %28 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i445 = icmp eq i8 %28, 0
  br i1 %tobool.not.i445, label %if.then.i446, label %pick_tx.if.end.i448_crit_edge

pick_tx.if.end.i448_crit_edge:                    ; preds = %pick_tx
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i448

if.then.i446:                                     ; preds = %pick_tx
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load.i, 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.set.i, ptr %26, align 1
  %30 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %30, align 1
  br label %if.end.i448

if.end.i448:                                      ; preds = %if.then.i446, %pick_tx.if.end.i448_crit_edge
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store ptr %rx, ptr %cb.i, align 1
  %recurs.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %recurs.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %recurs.i, align 1
  %inc.i = add i8 %34, 1
  store i8 %inc.i, ptr %recurs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc.i)
  %cmp.i447 = icmp ugt i8 %inc.i, 2
  br i1 %cmp.i447, label %if.end.i448.exit.thread_crit_edge, label %if.end7.i

if.end.i448.exit.thread_crit_edge:                ; preds = %if.end.i448
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.thread

if.end7.i:                                        ; preds = %if.end.i448
  %lock.i449 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock.i449) #12
  br i1 %cmp, label %do.body.i452, label %cond.end43.i

do.body.i452:                                     ; preds = %if.end7.i
  %dep_map.i450 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i.i451 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i450, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i451)
  %tobool13.not.i = icmp eq i32 %call.i.i451, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i453, label %do.body.i452.done.i_crit_edge

do.body.i452.done.i_crit_edge:                    ; preds = %do.body.i452
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

land.lhs.true.i453:                               ; preds = %do.body.i452
  %call14.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i453.done.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i453.done.i_crit_edge:              ; preds = %land.lhs.true.i453
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i453
  %.b206.i = load i1, ptr @tipc_crypto_key_pick_tx.__warned, align 1
  br i1 %.b206.i, label %land.lhs.true16.i.done.i_crit_edge, label %if.then18.i

land.lhs.true16.i.done.i_crit_edge:               ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_pick_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1333, ptr noundef nonnull @.str.4) #12
  br label %done.i

cond.end43.i:                                     ; preds = %if.end7.i
  %bf.lshr35.i = lshr i8 %key.sroa.0.0.copyload.i444, 2
  %bf.lshr40.i = lshr i8 %key.sroa.0.0.copyload.i444, 4
  %dep_map51.i = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 19, i32 0, i32 0, i32 4
  %last.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 4
  %cond44.in.i = and i8 %key.sroa.0.0.copyload.i444, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond44.in.i)
  %tobool46.not.i = icmp eq i8 %cond44.in.i, 0
  br i1 %tobool46.not.i, label %cond.end43.i.cond.end43.1.i_crit_edge, label %do.body49.i

cond.end43.i.cond.end43.1.i_crit_edge:            ; preds = %cond.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.1.i

do.body49.i:                                      ; preds = %cond.end43.i
  %call.i207.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map51.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %tobool53.not.i = icmp eq i32 %call.i207.i, 0
  br i1 %tobool53.not.i, label %land.lhs.true54.i, label %do.body49.i.do.end62.i_crit_edge

do.body49.i.do.end62.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.i

land.lhs.true54.i:                                ; preds = %do.body49.i
  %call55.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %land.lhs.true54.i.do.end62.i_crit_edge, label %land.lhs.true57.i

land.lhs.true54.i.do.end62.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.i

land.lhs.true57.i:                                ; preds = %land.lhs.true54.i
  %.b204205.i = load i1, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  br i1 %.b204205.i, label %land.lhs.true57.i.do.end62.i_crit_edge, label %if.then59.i

land.lhs.true57.i.do.end62.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.i

if.then59.i:                                      ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1341, ptr noundef nonnull @.str.4) #12
  br label %do.end62.i

do.end62.i:                                       ; preds = %if.then59.i, %land.lhs.true57.i.do.end62.i_crit_edge, %land.lhs.true54.i.do.end62.i_crit_edge, %do.body49.i.do.end62.i_crit_edge
  %idxprom.i = zext i8 %cond44.in.i to i32
  %arrayidx65.i = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx65.i, align 4
  %tobool66.not.i = icmp eq ptr %36, null
  br i1 %tobool66.not.i, label %do.end62.i.cond.end43.1.i_crit_edge, label %if.end68.i

do.end62.i.cond.end43.1.i_crit_edge:              ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.1.i

if.end68.i:                                       ; preds = %do.end62.i
  %mode.i = getelementptr inbounds %struct.tipc_aead, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp70.not.i = icmp eq i8 %38, 1
  br i1 %cmp70.not.i, label %lor.lhs.false.i, label %if.end68.i.cond.end43.1.i_crit_edge

if.end68.i.cond.end43.1.i_crit_edge:              ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.1.i

lor.lhs.false.i:                                  ; preds = %if.end68.i
  %39 = ptrtoint ptr %last.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load ptr, ptr %last.i, align 1
  %cmp72.i = icmp eq ptr %36, %40
  br i1 %cmp72.i, label %lor.lhs.false.i.cond.end43.1.i_crit_edge, label %lor.lhs.false.i.if.end75.i_crit_edge

lor.lhs.false.i.if.end75.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

lor.lhs.false.i.cond.end43.1.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.1.i

if.end75.i:                                       ; preds = %lor.lhs.false.2.i.if.end75.i_crit_edge, %lor.lhs.false.1.i.if.end75.i_crit_edge, %lor.lhs.false.i.if.end75.i_crit_edge
  %.lcssa216.i = phi ptr [ %36, %lor.lhs.false.i.if.end75.i_crit_edge ], [ %46, %lor.lhs.false.1.i.if.end75.i_crit_edge ], [ %52, %lor.lhs.false.2.i.if.end75.i_crit_edge ]
  %41 = ptrtoint ptr %last.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store ptr %.lcssa216.i, ptr %last.i, align 1
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %24, align 8
  %tobool77.not.i = icmp eq ptr %43, null
  br i1 %tobool77.not.i, label %if.end75.i.if.end95.i_crit_edge, label %do.end89.i, !prof !332

if.end75.i.if.end95.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

do.end89.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1351, i32 noundef 9, ptr noundef null) #12
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end89.i, %if.end75.i.if.end95.i_crit_edge
  %call103.i = tail call ptr @skb_clone(ptr noundef %24, i32 noundef 2592) #12
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call103.i, ptr %24, align 8
  %tobool106.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool106.not.i, label %do.end118.i, label %if.end95.i.if.then135.i_crit_edge, !prof !331

if.end95.i.if.then135.i_crit_edge:                ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then135.i

do.end118.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  %call120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #19
  br label %if.then135.i

cond.end43.1.i:                                   ; preds = %lor.lhs.false.i.cond.end43.1.i_crit_edge, %if.end68.i.cond.end43.1.i_crit_edge, %do.end62.i.cond.end43.1.i_crit_edge, %cond.end43.i.cond.end43.1.i_crit_edge
  %cond44.in.1.i = and i8 %bf.lshr35.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond44.in.1.i)
  %tobool46.not.1.i = icmp eq i8 %cond44.in.1.i, 0
  br i1 %tobool46.not.1.i, label %cond.end43.1.i.cond.end43.2.i_crit_edge, label %do.body49.1.i

cond.end43.1.i.cond.end43.2.i_crit_edge:          ; preds = %cond.end43.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.2.i

do.body49.1.i:                                    ; preds = %cond.end43.1.i
  %call.i207.1.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map51.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.1.i)
  %tobool53.not.1.i = icmp eq i32 %call.i207.1.i, 0
  br i1 %tobool53.not.1.i, label %land.lhs.true54.1.i, label %do.body49.1.i.do.end62.1.i_crit_edge

do.body49.1.i.do.end62.1.i_crit_edge:             ; preds = %do.body49.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.1.i

land.lhs.true54.1.i:                              ; preds = %do.body49.1.i
  %call55.1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.1.i)
  %tobool56.not.1.i = icmp eq i32 %call55.1.i, 0
  br i1 %tobool56.not.1.i, label %land.lhs.true54.1.i.do.end62.1.i_crit_edge, label %land.lhs.true57.1.i

land.lhs.true54.1.i.do.end62.1.i_crit_edge:       ; preds = %land.lhs.true54.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.1.i

land.lhs.true57.1.i:                              ; preds = %land.lhs.true54.1.i
  %.b204205.1.i = load i1, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  br i1 %.b204205.1.i, label %land.lhs.true57.1.i.do.end62.1.i_crit_edge, label %if.then59.1.i

land.lhs.true57.1.i.do.end62.1.i_crit_edge:       ; preds = %land.lhs.true57.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.1.i

if.then59.1.i:                                    ; preds = %land.lhs.true57.1.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1341, ptr noundef nonnull @.str.4) #12
  br label %do.end62.1.i

do.end62.1.i:                                     ; preds = %if.then59.1.i, %land.lhs.true57.1.i.do.end62.1.i_crit_edge, %land.lhs.true54.1.i.do.end62.1.i_crit_edge, %do.body49.1.i.do.end62.1.i_crit_edge
  %idxprom.1.i = zext i8 %cond44.in.1.i to i32
  %arrayidx65.1.i = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %idxprom.1.i
  %45 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx65.1.i, align 4
  %tobool66.not.1.i = icmp eq ptr %46, null
  br i1 %tobool66.not.1.i, label %do.end62.1.i.cond.end43.2.i_crit_edge, label %if.end68.1.i

do.end62.1.i.cond.end43.2.i_crit_edge:            ; preds = %do.end62.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.2.i

if.end68.1.i:                                     ; preds = %do.end62.1.i
  %mode.1.i = getelementptr inbounds %struct.tipc_aead, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mode.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp70.not.1.i = icmp eq i8 %48, 1
  br i1 %cmp70.not.1.i, label %lor.lhs.false.1.i, label %if.end68.1.i.cond.end43.2.i_crit_edge

if.end68.1.i.cond.end43.2.i_crit_edge:            ; preds = %if.end68.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.2.i

lor.lhs.false.1.i:                                ; preds = %if.end68.1.i
  %49 = ptrtoint ptr %last.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load ptr, ptr %last.i, align 1
  %cmp72.1.i = icmp eq ptr %46, %50
  br i1 %cmp72.1.i, label %lor.lhs.false.1.i.cond.end43.2.i_crit_edge, label %lor.lhs.false.1.i.if.end75.i_crit_edge

lor.lhs.false.1.i.if.end75.i_crit_edge:           ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

lor.lhs.false.1.i.cond.end43.2.i_crit_edge:       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end43.2.i

cond.end43.2.i:                                   ; preds = %lor.lhs.false.1.i.cond.end43.2.i_crit_edge, %if.end68.1.i.cond.end43.2.i_crit_edge, %do.end62.1.i.cond.end43.2.i_crit_edge, %cond.end43.1.i.cond.end43.2.i_crit_edge
  %cond44.in.2.i = and i8 %bf.lshr40.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond44.in.2.i)
  %tobool46.not.2.i = icmp eq i8 %cond44.in.2.i, 0
  br i1 %tobool46.not.2.i, label %cond.end43.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, label %do.body49.2.i

cond.end43.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge: ; preds = %cond.end43.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit.thread492

do.body49.2.i:                                    ; preds = %cond.end43.2.i
  %call.i207.2.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map51.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.2.i)
  %tobool53.not.2.i = icmp eq i32 %call.i207.2.i, 0
  br i1 %tobool53.not.2.i, label %land.lhs.true54.2.i, label %do.body49.2.i.do.end62.2.i_crit_edge

do.body49.2.i.do.end62.2.i_crit_edge:             ; preds = %do.body49.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.2.i

land.lhs.true54.2.i:                              ; preds = %do.body49.2.i
  %call55.2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.2.i)
  %tobool56.not.2.i = icmp eq i32 %call55.2.i, 0
  br i1 %tobool56.not.2.i, label %land.lhs.true54.2.i.do.end62.2.i_crit_edge, label %land.lhs.true57.2.i

land.lhs.true54.2.i.do.end62.2.i_crit_edge:       ; preds = %land.lhs.true54.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.2.i

land.lhs.true57.2.i:                              ; preds = %land.lhs.true54.2.i
  %.b204205.2.i = load i1, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  br i1 %.b204205.2.i, label %land.lhs.true57.2.i.do.end62.2.i_crit_edge, label %if.then59.2.i

land.lhs.true57.2.i.do.end62.2.i_crit_edge:       ; preds = %land.lhs.true57.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62.2.i

if.then59.2.i:                                    ; preds = %land.lhs.true57.2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_pick_tx.__warned.69, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1341, ptr noundef nonnull @.str.4) #12
  br label %do.end62.2.i

do.end62.2.i:                                     ; preds = %if.then59.2.i, %land.lhs.true57.2.i.do.end62.2.i_crit_edge, %land.lhs.true54.2.i.do.end62.2.i_crit_edge, %do.body49.2.i.do.end62.2.i_crit_edge
  %idxprom.2.i = zext i8 %cond44.in.2.i to i32
  %arrayidx65.2.i = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %idxprom.2.i
  %51 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx65.2.i, align 4
  %tobool66.not.2.i = icmp eq ptr %52, null
  br i1 %tobool66.not.2.i, label %do.end62.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, label %if.end68.2.i

do.end62.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge: ; preds = %do.end62.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit.thread492

if.end68.2.i:                                     ; preds = %do.end62.2.i
  %mode.2.i = getelementptr inbounds %struct.tipc_aead, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %mode.2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mode.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp70.not.2.i = icmp eq i8 %54, 1
  br i1 %cmp70.not.2.i, label %lor.lhs.false.2.i, label %if.end68.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge

if.end68.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge: ; preds = %if.end68.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit.thread492

lor.lhs.false.2.i:                                ; preds = %if.end68.2.i
  %55 = ptrtoint ptr %last.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load ptr, ptr %last.i, align 1
  %cmp72.2.i = icmp eq ptr %52, %56
  br i1 %cmp72.2.i, label %lor.lhs.false.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, label %lor.lhs.false.2.i.if.end75.i_crit_edge

lor.lhs.false.2.i.if.end75.i_crit_edge:           ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

lor.lhs.false.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit.thread492

done.i:                                           ; preds = %if.then18.i, %land.lhs.true16.i.done.i_crit_edge, %land.lhs.true.i453.done.i_crit_edge, %do.body.i452.done.i_crit_edge
  %aead20.i = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %aead20.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aead20.i, align 8
  %tobool128.not.i = icmp eq ptr %58, null
  br i1 %tobool128.not.i, label %done.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, label %done.i.if.then135.i_crit_edge, !prof !331

done.i.if.then135.i_crit_edge:                    ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then135.i

done.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge: ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit.thread492

if.then135.i:                                     ; preds = %done.i.if.then135.i_crit_edge, %do.end118.i, %if.end95.i.if.then135.i_crit_edge
  %aead.2210.i = phi ptr [ %58, %done.i.if.then135.i_crit_edge ], [ %.lcssa216.i, %do.end118.i ], [ %.lcssa216.i, %if.end95.i.if.then135.i_crit_edge ]
  %refcnt.i454 = getelementptr inbounds %struct.tipc_aead, ptr %aead.2210.i, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i454, i32 noundef 4) #12
  %59 = ptrtoint ptr %refcnt.i454 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %refcnt.i454, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then135.i
  %61 = phi i32 [ %60, %if.then135.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %62 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %61, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i454, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %63 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i454, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %65 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i454, ptr %refcnt.i454, i32 %64, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i454) #12, !srcloc !349
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %64
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !332

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %66 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %67, 1
  %68 = or i32 %add5.i.i.i.i, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i454, i32 noundef 0) #12
  %69 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %70 = phi i32 [ %67, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool12.i.i.i.not.i = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.not.i, label %do.end155.i, label %refcount_inc_not_zero.exit.i.tipc_crypto_key_pick_tx.exit_crit_edge, !prof !331

refcount_inc_not_zero.exit.i.tipc_crypto_key_pick_tx.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_crypto_key_pick_tx.exit

do.end155.i:                                      ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1360, i32 noundef 9, ptr noundef null) #12
  br label %tipc_crypto_key_pick_tx.exit

tipc_crypto_key_pick_tx.exit.thread492:           ; preds = %done.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, %lor.lhs.false.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, %if.end68.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, %do.end62.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge, %cond.end43.2.i.tipc_crypto_key_pick_tx.exit.thread492_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i449) #12
  br label %exit.thread

tipc_crypto_key_pick_tx.exit:                     ; preds = %do.end155.i, %refcount_inc_not_zero.exit.i.tipc_crypto_key_pick_tx.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i449) #12
  %tobool32.not = icmp eq ptr %aead.2210.i, null
  br i1 %tobool32.not, label %tipc_crypto_key_pick_tx.exit.exit.thread_crit_edge, label %tipc_crypto_key_pick_tx.exit.decrypt_crit_edge

tipc_crypto_key_pick_tx.exit.decrypt_crit_edge:   ; preds = %tipc_crypto_key_pick_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt

tipc_crypto_key_pick_tx.exit.exit.thread_crit_edge: ; preds = %tipc_crypto_key_pick_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.thread

decrypt:                                          ; preds = %tipc_crypto_key_pick_tx.exit.decrypt_crit_edge, %tipc_crypto_key_try_align.exit.thread, %if.end.decrypt_crit_edge
  %aead.0 = phi ptr [ %aead.2210.i, %tipc_crypto_key_pick_tx.exit.decrypt_crit_edge ], [ null, %if.end.decrypt_crit_edge ], [ null, %tipc_crypto_key_try_align.exit.thread ]
  %71 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %decrypt.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

decrypt.rcu_read_lock.exit_crit_edge:             ; preds = %decrypt
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %decrypt
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %decrypt.rcu_read_lock.exit_crit_edge
  %tobool35.not = icmp eq ptr %aead.0, null
  br i1 %tobool35.not, label %if.end39, label %if.end39.thread

if.end39.thread:                                  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i) #12
  %77 = ptrtoint ptr %unused.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -1 to ptr), ptr %unused.i, align 4, !annotation !356
  br label %if.end.i459

if.end39:                                         ; preds = %rcu_read_lock.exit
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx, align 4
  %call38 = call fastcc ptr @tipc_aead_get(ptr noundef %79)
  %80 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skb, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i) #12
  %82 = ptrtoint ptr %unused.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %unused.i, align 4, !annotation !356
  %tobool.not.i456 = icmp eq ptr %call38, null
  br i1 %tobool.not.i456, label %if.end39.tipc_aead_decrypt.exit_crit_edge, label %if.end39.if.end.i459_crit_edge, !prof !331

if.end39.if.end.i459_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i459

if.end39.tipc_aead_decrypt.exit_crit_edge:        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_decrypt.exit

if.end.i459:                                      ; preds = %if.end39.if.end.i459_crit_edge, %if.end39.thread
  %83 = phi ptr [ %76, %if.end39.thread ], [ %81, %if.end39.if.end.i459_crit_edge ]
  %aead.1497 = phi ptr [ %aead.0, %if.end39.thread ], [ %call38, %if.end39.if.end.i459_crit_edge ]
  %call.i457 = call i32 @skb_cow_data(ptr noundef %83, i32 noundef 0, ptr noundef nonnull %unused.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457)
  %cmp.i458 = icmp slt i32 %call.i457, 0
  br i1 %cmp.i458, label %do.end.i460, label %if.end12.i464, !prof !331

do.end.i460:                                      ; preds = %if.end.i459
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %call.i457) #19
  br label %tipc_aead_decrypt.exit

if.end12.i464:                                    ; preds = %if.end.i459
  %84 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i461 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i461 to ptr
  %preempt_count.i.i.i.i462 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i462 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i462, align 4
  %add.i.i.i463 = add i32 %87, 1
  store volatile i32 %add.i.i.i463, ptr %preempt_count.i.i.i.i462, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !354
  %88 = ptrtoint ptr %aead.1497 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %aead.1497, align 128
  %90 = ptrtoint ptr %89 to i32
  %91 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %96, %90
  %97 = inttoptr i32 %add.i.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %list.i.i = getelementptr inbounds %struct.tipc_tfm, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %list.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %101, i32 -4
  store ptr %add.ptr.i.i, ptr %97, align 4
  %102 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %104 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i18.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i18.i.i to ptr
  %preempt_count.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i19.i.i, align 4
  %sub.i.i.i = add i32 %107, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i19.i.i, align 4
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %103, i32 0, i32 3, i32 3
  %108 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %ivsize.i.i.i.i = getelementptr i8, ptr %109, i32 -104
  %110 = ptrtoint ptr %ivsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ivsize.i.i.i.i, align 8
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %103, i32 0, i32 1
  %112 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reqsize.i.i.i, align 4
  %add13.i.i = add i32 %113, 131
  %add5.i.i = add i32 %111, 135
  %cra_alignmask.i.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %109, i32 0, i32 5
  %114 = ptrtoint ptr %cra_alignmask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cra_alignmask.i.i.i.i, align 4
  %and.i.i = and i32 %115, -128
  %add8.i.i = add i32 %add5.i.i, %and.i.i
  %and12.i.i = and i32 %add8.i.i, -128
  %add14.i.i = add i32 %add13.i.i, %and12.i.i
  %and15.i.i = and i32 %add14.i.i, -4
  %mul.i.i = mul i32 %call.i457, 20
  %add16.i.i = add i32 %and15.i.i, %mul.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i.i, i32 noundef 2592) #17
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end12.i464.tipc_aead_decrypt.exit_crit_edge, label %if.end25.i

if.end12.i464.tipc_aead_decrypt.exit_crit_edge:   ; preds = %if.end12.i464
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_decrypt.exit

if.end25.i:                                       ; preds = %if.end12.i464
  %add.i120.i = add i32 %113, 128
  %add.ptr.i121.i = getelementptr i8, ptr %call9.i.i.i, i32 8
  %116 = ptrtoint ptr %add.ptr.i121.i to i32
  %117 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %cra_alignmask.i.i60.i.i = getelementptr inbounds %struct.crypto_alg, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %cra_alignmask.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cra_alignmask.i.i60.i.i, align 4
  %add21.i.i = add i32 %120, %116
  %neg25.i.i = xor i32 %120, -1
  %and26.i.i = and i32 %add21.i.i, %neg25.i.i
  %121 = inttoptr i32 %and26.i.i to ptr
  %add.ptr27.i.i = getelementptr i8, ptr %121, i32 %111
  %122 = ptrtoint ptr %add.ptr27.i.i to i32
  %add30.i.i = add i32 %122, 127
  %and34.i.i = and i32 %add30.i.i, -128
  %123 = inttoptr i32 %and34.i.i to ptr
  %add.ptr35.i.i = getelementptr i8, ptr %123, i32 %add.i120.i
  %124 = ptrtoint ptr %add.ptr35.i.i to i32
  %add36.i.i = add i32 %124, 3
  %and37.i.i = and i32 %add36.i.i, -4
  %125 = inttoptr i32 %and37.i.i to ptr
  %crypto_ctx.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 28
  %126 = ptrtoint ptr %crypto_ctx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call9.i.i.i, ptr %crypto_ctx.i, align 4
  call void @sg_init_table(ptr noundef %125, i32 noundef %call.i457) #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 6
  %127 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i, align 4
  %call26.i = call i32 @skb_to_sgvec(ptr noundef %83, ptr noundef %125, i32 noundef 0, i32 noundef %128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end37.i, label %if.end40.i, !prof !331

do.end37.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %call26.i, i32 noundef %call.i457) #19
  br label %exit.i

if.end40.i:                                       ; preds = %if.end25.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 19
  %129 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data.i, align 4
  %salt41.i = getelementptr inbounds %struct.tipc_aead, ptr %aead.1497, i32 0, i32 4
  %131 = ptrtoint ptr %salt41.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %salt41.i, align 16
  %mode.i466 = getelementptr inbounds %struct.tipc_aead, ptr %aead.1497, i32 0, i32 6
  %133 = ptrtoint ptr %mode.i466 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mode.i466, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %134)
  %cmp42.i = icmp eq i8 %134, 1
  br i1 %cmp42.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %135 = getelementptr inbounds %struct.tipc_ehdr, ptr %130, i32 0, i32 2
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %135, align 1
  %xor.i = xor i32 %137, %132
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end40.i
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %bf.load.i467 = load i16, ptr %130, align 1
  %139 = and i16 %bf.load.i467, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool45.not.i = icmp eq i16 %139, 0
  br i1 %tobool45.not.i, label %if.else.i.if.end50.i_crit_edge, label %if.then46.i

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i468 = call fastcc ptr @tipc_net(ptr noundef %net) #12
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i468, i32 0, i32 1
  %140 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %node_addr.i.i, align 4
  %xor48.i = xor i32 %141, %132
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.else.i.if.end50.i_crit_edge, %if.then44.i
  %salt.0.i = phi i32 [ %xor.i, %if.then44.i ], [ %xor48.i, %if.then46.i ], [ %132, %if.else.i.if.end50.i_crit_edge ]
  %142 = ptrtoint ptr %121 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %salt.0.i, ptr %121, align 1
  %add.ptr.i = getelementptr i8, ptr %121, i32 4
  %seqno.i = getelementptr inbounds %struct.tipc_ehdr, ptr %130, i32 0, i32 1
  %143 = ptrtoint ptr %seqno.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 8)
  %144 = load i64, ptr %seqno.i, align 1
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 8)
  store i64 %144, ptr %add.ptr.i, align 1
  %146 = ptrtoint ptr %130 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 2)
  %bf.load.i.i = load i16, ptr %130, align 1
  %147 = and i16 %bf.load.i.i, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %147)
  %cmp.not.i.i = icmp eq i16 %147, 6656
  %cond.i.i = select i1 %cmp.not.i.i, i32 28, i32 16
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %103, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %123, i32 0, i32 3
  %148 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 1
  %149 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %cond.i.i, ptr %assoclen1.i.i, align 8
  %150 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len.i, align 4
  %sub.i469 = sub i32 %151, %cond.i.i
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 4
  %152 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %125, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 5
  %153 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %125, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 2
  %154 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %sub.i469, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %123, i32 0, i32 3
  %155 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %121, ptr %iv4.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %123, i32 0, i32 1
  %156 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @tipc_aead_decrypt_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %123, i32 0, i32 2
  %157 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %83, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %123, i32 0, i32 4
  %158 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1024, ptr %flags4.i.i, align 4
  %159 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %aead.1497, ptr %call9.i.i.i, align 128
  %bearer.i = getelementptr inbounds %struct.tipc_crypto_rx_ctx, ptr %call9.i.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %bearer.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %b, ptr %bearer.i, align 4
  %call54.i = call zeroext i1 @tipc_bearer_hold(ptr noundef %b) #12
  br i1 %call54.i, label %if.end64.i, label %if.end50.i.exit.i_crit_edge, !prof !332

if.end50.i.exit.i_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit.i

if.end64.i:                                       ; preds = %if.end50.i
  %call65.i = call i32 @crypto_aead_decrypt(ptr noundef %123) #12
  %161 = zext i32 %call65.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call65.i, label %if.end71.i [
    i32 -115, label %if.end64.i.tipc_aead_decrypt.exit_crit_edge
    i32 -16, label %if.end64.i.tipc_aead_decrypt.exit_crit_edge512
  ]

if.end64.i.tipc_aead_decrypt.exit_crit_edge512:   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_decrypt.exit

if.end64.i.tipc_aead_decrypt.exit_crit_edge:      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_decrypt.exit

if.end71.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @tipc_bearer_put(ptr noundef %b) #12
  br label %exit.i

exit.i:                                           ; preds = %if.end71.i, %if.end50.i.exit.i_crit_edge, %do.end37.i
  %rc.0.i = phi i32 [ %call26.i, %do.end37.i ], [ %call65.i, %if.end71.i ], [ -19, %if.end50.i.exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  %162 = ptrtoint ptr %crypto_ctx.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %crypto_ctx.i, align 4
  br label %tipc_aead_decrypt.exit

tipc_aead_decrypt.exit:                           ; preds = %exit.i, %if.end64.i.tipc_aead_decrypt.exit_crit_edge, %if.end64.i.tipc_aead_decrypt.exit_crit_edge512, %if.end12.i464.tipc_aead_decrypt.exit_crit_edge, %do.end.i460, %if.end39.tipc_aead_decrypt.exit_crit_edge
  %aead.1498 = phi ptr [ %aead.1497, %do.end.i460 ], [ %aead.1497, %exit.i ], [ null, %if.end39.tipc_aead_decrypt.exit_crit_edge ], [ %aead.1497, %if.end64.i.tipc_aead_decrypt.exit_crit_edge ], [ %aead.1497, %if.end64.i.tipc_aead_decrypt.exit_crit_edge512 ], [ %aead.1497, %if.end12.i464.tipc_aead_decrypt.exit_crit_edge ]
  %retval.0.i470 = phi i32 [ %call.i457, %do.end.i460 ], [ %rc.0.i, %exit.i ], [ -126, %if.end39.tipc_aead_decrypt.exit_crit_edge ], [ %call65.i, %if.end64.i.tipc_aead_decrypt.exit_crit_edge ], [ %call65.i, %if.end64.i.tipc_aead_decrypt.exit_crit_edge512 ], [ -12, %if.end12.i464.tipc_aead_decrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i) #12
  %call.i471 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i471, label %tipc_aead_decrypt.exit.exit_crit_edge, label %land.lhs.true.i474

tipc_aead_decrypt.exit.exit_crit_edge:            ; preds = %tipc_aead_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true.i474:                               ; preds = %tipc_aead_decrypt.exit
  %call1.i472 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i472)
  %tobool.not.i473 = icmp eq i32 %call1.i472, 0
  br i1 %tobool.not.i473, label %land.lhs.true.i474.exit_crit_edge, label %land.lhs.true2.i476

land.lhs.true.i474.exit_crit_edge:                ; preds = %land.lhs.true.i474
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

land.lhs.true2.i476:                              ; preds = %land.lhs.true.i474
  %.b4.i475 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i475, label %land.lhs.true2.i476.exit_crit_edge, label %if.then.i477

land.lhs.true2.i476.exit_crit_edge:               ; preds = %land.lhs.true2.i476
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then.i477:                                     ; preds = %land.lhs.true2.i476
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %exit

exit.thread:                                      ; preds = %tipc_crypto_key_pick_tx.exit.exit.thread_crit_edge, %tipc_crypto_key_pick_tx.exit.thread492, %if.end.i448.exit.thread_crit_edge
  %spec.select439502 = select i1 %tobool.not, ptr %1, ptr %rx
  %stats42503 = getelementptr inbounds %struct.tipc_crypto, ptr %spec.select439502, i32 0, i32 12
  %163 = ptrtoint ptr %stats42503 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %stats42503, align 4
  br label %do.body153

exit:                                             ; preds = %if.then.i477, %land.lhs.true2.i476.exit_crit_edge, %land.lhs.true.i474.exit_crit_edge, %tipc_aead_decrypt.exit.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %165 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i478 = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i.i.i478 to ptr
  %preempt_count.i.i.i.i479 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %preempt_count.i.i.i.i479 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %preempt_count.i.i.i.i479, align 4
  %sub.i.i.i480 = add i32 %168, -1
  store volatile i32 %sub.i.i.i480, ptr %preempt_count.i.i.i.i479, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %spec.select439 = select i1 %tobool.not, ptr %1, ptr %rx
  %stats42 = getelementptr inbounds %struct.tipc_crypto, ptr %spec.select439, i32 0, i32 12
  %169 = ptrtoint ptr %stats42 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %stats42, align 4
  %171 = zext i32 %retval.0.i470 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %retval.0.i470, label %exit.do.body153_crit_edge [
    i32 0, label %do.body43
    i32 -115, label %exit.do.body93_crit_edge
    i32 -16, label %exit.do.body93_crit_edge513
  ]

exit.do.body93_crit_edge513:                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

exit.do.body93_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

exit.do.body153_crit_edge:                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body153

do.body43:                                        ; preds = %exit
  %172 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %173 = ptrtoint ptr %170 to i32
  %174 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cpu, align 4
  %arrayidx60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %177
  %178 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx60, align 4
  %add = add i32 %179, %173
  %180 = inttoptr i32 %add to ptr
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 4
  %add61 = add i32 %182, 1
  store i32 %add61, ptr %180, align 4
  %183 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i482 = and i32 %183, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i482)
  %tobool72.not = icmp eq i32 %and.i.i482, 0
  br i1 %tobool72.not, label %if.then81, label %do.body43.do.end84_crit_edge, !prof !331

do.body43.do.end84_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

if.then81:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body43.do.end84_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %172) #12, !srcloc !353
  br label %sw.epilog

do.body93:                                        ; preds = %exit.do.body93_crit_edge, %exit.do.body93_crit_edge513
  %184 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx116 = getelementptr [8 x i32], ptr %170, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx116 to i32
  %186 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i483 = and i32 %186, -16384
  %187 = inttoptr i32 %and.i483 to ptr
  %cpu119 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 3
  %188 = ptrtoint ptr %cpu119 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %cpu119, align 4
  %arrayidx120 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %189
  %190 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx120, align 4
  %add121 = add i32 %191, %185
  %192 = inttoptr i32 %add121 to ptr
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  %add122 = add i32 %194, 1
  store i32 %add122, ptr %192, align 4
  %195 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i484 = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i484)
  %tobool133.not = icmp eq i32 %and.i.i484, 0
  br i1 %tobool133.not, label %if.then142, label %do.body93.do.end145_crit_edge, !prof !331

do.body93.do.end145_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.then142:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %do.body93.do.end145_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %184) #12, !srcloc !353
  %196 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %skb, align 4
  br label %cleanup

do.body153:                                       ; preds = %exit.do.body153_crit_edge, %exit.thread
  %197 = phi ptr [ %164, %exit.thread ], [ %170, %exit.do.body153_crit_edge ]
  %aead.2508 = phi ptr [ null, %exit.thread ], [ %aead.1498, %exit.do.body153_crit_edge ]
  %rc.0505 = phi i32 [ -126, %exit.thread ], [ %retval.0.i470, %exit.do.body153_crit_edge ]
  %198 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx176 = getelementptr [8 x i32], ptr %197, i32 0, i32 1
  %199 = ptrtoint ptr %arrayidx176 to i32
  %200 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i485 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i485 to ptr
  %cpu179 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %cpu179 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cpu179, align 4
  %arrayidx180 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %203
  %204 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx180, align 4
  %add181 = add i32 %205, %199
  %206 = inttoptr i32 %add181 to ptr
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  %add182 = add i32 %208, 1
  store i32 %add182, ptr %206, align 4
  %209 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i486 = and i32 %209, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i486)
  %tobool193.not = icmp eq i32 %and.i.i486, 0
  br i1 %tobool193.not, label %if.then202, label %do.body153.do.end205_crit_edge, !prof !331

do.body153.do.end205_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end205

if.then202:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end205

do.end205:                                        ; preds = %if.then202, %do.body153.do.end205_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %198) #12, !srcloc !353
  %210 = zext i32 %rc.0505 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %rc.0505, label %do.end205.sw.epilog_crit_edge [
    i32 -126, label %if.then214
    i32 -74, label %do.body325
  ]

do.end205.sw.epilog_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then214:                                       ; preds = %do.end205
  %211 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %212, i32 noundef 0) #12
  %213 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %skb, align 4
  br i1 %tobool.not, label %if.then214.do.body262_crit_edge, label %if.then216

if.then214.do.body262_crit_edge:                  ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body262

if.then216:                                       ; preds = %if.then214
  %conv217 = zext i8 %8 to i32
  %skey = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 7
  %214 = ptrtoint ptr %skey to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %skey, align 32
  %tobool220.not = icmp eq ptr %215, null
  br i1 %tobool220.not, label %lor.rhs221, label %if.then216.lor.end231_crit_edge

if.then216.lor.end231_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end231

lor.rhs221:                                       ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #14
  %rem = urem i8 %8, 3
  %add218 = add nuw nsw i8 %rem, 1
  %idxprom227 = zext i8 %add218 to i32
  %arrayidx228 = getelementptr %struct.tipc_crypto, ptr %rx, i32 0, i32 2, i32 %idxprom227
  %216 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile ptr, ptr %arrayidx228, align 4
  %tobool230 = icmp eq ptr %217, null
  %phi.sel = select i1 %tobool230, i8 16, i8 0
  br label %lor.end231

lor.end231:                                       ; preds = %lor.rhs221, %if.then216.lor.end231_crit_edge
  %218 = phi i8 [ 0, %if.then216.lor.end231_crit_edge ], [ %phi.sel, %lor.rhs221 ]
  %219 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 18
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load235 = load i8, ptr %219, align 16
  %bf.clear236 = and i8 %bf.load235, -17
  %bf.set = or i8 %bf.clear236, %218
  store i8 %bf.set, ptr %219, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_rcv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_rcv, %land.lhs.true)) #12
          to label %do.end259 [label %land.lhs.true], !srcloc !347

land.lhs.true:                                    ; preds = %lor.end231
  %call247 = call i32 @___ratelimit(ptr noundef nonnull @tipc_crypto_rcv._rs, ptr noundef nonnull @.str.39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %land.lhs.true.do.end259_crit_edge, label %if.then249

land.lhs.true.do.end259_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end259

if.then249:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %221 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load250 = load i8, ptr %219, align 16
  %bf.lshr251 = lshr i8 %bf.load250, 4
  %bf.clear252 = and i8 %bf.lshr251, 1
  %conv253 = zext i8 %bf.clear252 to i32
  %key255 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 5
  %222 = ptrtoint ptr %key255 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %key255, align 2
  %conv256 = zext i8 %223 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_rcv.descriptor, ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %conv253, i32 noundef %conv217, i32 noundef %conv256) #12
  br label %do.end259

do.end259:                                        ; preds = %if.then249, %land.lhs.true.do.end259_crit_edge, %lor.end231
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 1
  %224 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %node, align 4
  call void @tipc_node_put(ptr noundef %225) #12
  br label %do.body262

do.body262:                                       ; preds = %do.end259, %if.then214.do.body262_crit_edge
  %226 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx285 = getelementptr [8 x i32], ptr %197, i32 0, i32 6
  %227 = ptrtoint ptr %arrayidx285 to i32
  %228 = ptrtoint ptr %cpu179 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %cpu179, align 4
  %arrayidx289 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %229
  %230 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx289, align 4
  %add290 = add i32 %231, %227
  %232 = inttoptr i32 %add290 to ptr
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  %add291 = add i32 %234, 1
  store i32 %add291, ptr %232, align 4
  %235 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i487 = and i32 %235, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i487)
  %tobool302.not = icmp eq i32 %and.i.i487, 0
  br i1 %tobool302.not, label %if.then311, label %do.body262.do.end314_crit_edge, !prof !331

do.body262.do.end314_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end314

if.then311:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end314

do.end314:                                        ; preds = %if.then311, %do.body262.do.end314_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %226) #12, !srcloc !353
  br label %cleanup

do.body325:                                       ; preds = %do.end205
  %236 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx348 = getelementptr [8 x i32], ptr %197, i32 0, i32 5
  %237 = ptrtoint ptr %arrayidx348 to i32
  %238 = ptrtoint ptr %cpu179 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cpu179, align 4
  %arrayidx352 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %239
  %240 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx352, align 4
  %add353 = add i32 %241, %237
  %242 = inttoptr i32 %add353 to ptr
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  %add354 = add i32 %244, 1
  store i32 %add354, ptr %242, align 4
  %245 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i488 = and i32 %245, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i488)
  %tobool365.not = icmp eq i32 %and.i.i488, 0
  br i1 %tobool365.not, label %if.then374, label %do.body325.do.end377_crit_edge, !prof !331

do.body325.do.end377_crit_edge:                   ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end377

if.then374:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end377

do.end377:                                        ; preds = %if.then374, %do.body325.do.end377_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %236) #12, !srcloc !353
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end377, %do.end205.sw.epilog_crit_edge, %do.end84
  %aead.2507 = phi ptr [ %aead.2508, %do.end205.sw.epilog_crit_edge ], [ %aead.2508, %do.end377 ], [ %aead.1498, %do.end84 ]
  %rc.0504 = phi i32 [ %rc.0505, %do.end205.sw.epilog_crit_edge ], [ -74, %do.end377 ], [ 0, %do.end84 ]
  call fastcc void @tipc_crypto_rcv_complete(ptr noundef %net, ptr noundef %aead.2507, ptr noundef %b, ptr noundef %skb, i32 noundef %rc.0504)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end314, %do.end145
  %rc.0506 = phi i32 [ %rc.0504, %sw.epilog ], [ -126, %do.end314 ], [ %retval.0.i470, %do.end145 ]
  ret i32 %rc.0506
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_rcv_complete(ptr noundef %net, ptr noundef %aead, ptr noundef %b, ptr noundef %skb, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %crypto = getelementptr inbounds %struct.tipc_aead, ptr %aead, i32 0, i32 1
  %2 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tmp, align 4
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end175, !prof !331

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %cb, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_rcv_complete, %if.then14)) #12
          to label %do.body18 [label %if.then14], !srcloc !347

if.then14:                                        ; preds = %if.then
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.then14.cond.end_crit_edge, label %cond.true

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %node16 = getelementptr inbounds %struct.tipc_crypto, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %node16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node16, align 4
  %call17 = tail call ptr @tipc_node_get_id_str(ptr noundef %10) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then14.cond.end_crit_edge
  %cond = phi ptr [ %call17, %cond.true ], [ @.str.50, %if.then14.cond.end_crit_edge ]
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug442, ptr noundef nonnull @.str.79, ptr noundef %cond, i32 noundef %err, ptr noundef %aead, ptr noundef %14, i32 noundef %conv) #12
  br label %do.body18

do.body18:                                        ; preds = %cond.end, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_rcv_complete, %if.then30)) #12
          to label %do.end43 [label %if.then30], !srcloc !347

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %recurs = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %recurs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %recurs, align 1
  %conv31 = zext i8 %19 to i32
  %last = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %last to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %last, align 1
  %22 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crypto, align 4
  %arrayidx34 = getelementptr %struct.tipc_crypto, ptr %23, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr %struct.tipc_crypto, ptr %23, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx37, align 8
  %arrayidx40 = getelementptr %struct.tipc_crypto, ptr %23, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx40, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug443, ptr noundef nonnull @.str.81, i32 noundef %conv31, ptr noundef %21, ptr noundef %25, ptr noundef %27, ptr noundef %29) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then30, %do.body18
  %30 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %err, label %do.end43.free_skb_crit_edge [
    i32 0, label %if.end58
    i32 -74, label %land.lhs.true
  ], !prof !361

do.end43.free_skb_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

land.lhs.true:                                    ; preds = %do.end43
  %31 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %skb, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %tobool54.not = icmp eq ptr %34, null
  br i1 %tobool54.not, label %land.lhs.true.free_skb_crit_edge, label %if.then55

land.lhs.true.free_skb_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tipc_rcv(ptr noundef %net, ptr noundef nonnull %34, ptr noundef %b) #12
  br label %free_skb

if.end58:                                         ; preds = %do.end43
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %if.end58.if.end70_crit_edge, label %if.then67, !prof !331

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then67:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %38, i32 noundef 0) #12
  %39 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skb, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %40, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end58.if.end70_crit_edge
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %tobool71.not = icmp eq ptr %8, null
  br i1 %tobool71.not, label %if.then72, label %if.end70.if.end118_crit_edge

if.end70.if.end118_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then72:                                        ; preds = %if.end70
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load = load i16, ptr %45, align 1
  %47 = and i16 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %47)
  %cmp74.not = icmp eq i16 %47, 6656
  br i1 %cmp74.not, label %if.then72.if.end97_crit_edge, label %do.end91, !prof !332

if.then72.if.end97_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end91:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1920, i32 noundef 9, ptr noundef null) #12
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.then72.if.end97_crit_edge
  %48 = getelementptr inbounds %struct.tipc_ehdr, ptr %45, i32 0, i32 2
  %call105 = tail call ptr @tipc_node_create(ptr noundef %net, i32 noundef 0, ptr noundef %48, i16 noundef zeroext -1, i32 noundef 0, i1 noundef zeroext true) #12
  %call106 = tail call ptr @tipc_node_crypto_rx(ptr noundef %call105) #12
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end97.free_skb_crit_edge, label %if.end97.if.end118_crit_edge, !prof !331

if.end97.if.end118_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.end97.free_skb_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.end118:                                        ; preds = %if.end97.if.end118_crit_edge, %if.end70.if.end118_crit_edge
  %rx.0 = phi ptr [ %8, %if.end70.if.end118_crit_edge ], [ %call106, %if.end97.if.end118_crit_edge ]
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %bf.load119 = load i16, ptr %45, align 1
  %50 = and i16 %bf.load119, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp124 = icmp eq i16 %50, 0
  br i1 %cmp124, label %if.end118.rcv_crit_edge, label %if.end127

if.end118.rcv_crit_edge:                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcv

if.end127:                                        ; preds = %if.end118
  %call128 = call fastcc i32 @tipc_aead_clone(ptr noundef nonnull %tmp, ptr noundef %aead)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.end127.rcv_crit_edge, label %if.end132

if.end127.rcv_crit_edge:                          ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcv

if.end132:                                        ; preds = %if.end127
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tmp, align 4
  %refcnt = getelementptr inbounds %struct.tipc_aead, ptr %52, i32 0, i32 14
  %call134 = tail call fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %refcnt)
  br i1 %call134, label %if.end132.if.end158_crit_edge, label %do.end152, !prof !332

if.end132.if.end158_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

do.end152:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1933, i32 noundef 9, ptr noundef null) #12
  br label %if.end158

if.end158:                                        ; preds = %do.end152, %if.end132.if.end158_crit_edge
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load166 = load i16, ptr %45, align 1
  %54 = trunc i16 %bf.load166 to i8
  %55 = lshr i8 %54, 6
  %call170 = tail call fastcc i32 @tipc_crypto_key_attach(ptr noundef nonnull %rx.0, ptr noundef %52, i8 noundef zeroext %55, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %if.end175.thread

if.then173:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tipc_aead, ptr %52, i32 0, i32 8
  tail call void @tipc_aead_free(ptr noundef %rcu)
  br label %rcv

if.end175.thread:                                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tipc_aead_put(ptr noundef %aead)
  br label %if.end184

if.end175:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool176.not = icmp eq i32 %err, 0
  br i1 %tobool176.not, label %if.end175.if.end184_crit_edge, label %if.then183, !prof !332

if.end175.if.end184_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then183:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tipc_aead_users_dec(ptr noundef %aead, i32 noundef -2147483648)
  br label %free_skb

if.end184:                                        ; preds = %if.end175.if.end184_crit_edge, %if.end175.thread
  %aead.addr.0320 = phi ptr [ %52, %if.end175.thread ], [ %aead, %if.end175.if.end184_crit_edge ]
  %rx.1319 = phi ptr [ %rx.0, %if.end175.thread ], [ %3, %if.end175.if.end184_crit_edge ]
  tail call fastcc void @tipc_aead_users_set(ptr noundef %aead.addr.0320, i32 noundef 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %timer1 = getelementptr inbounds %struct.tipc_crypto, ptr %rx.1319, i32 0, i32 16
  %57 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %timer1, align 8
  br label %rcv

rcv:                                              ; preds = %if.end184, %if.then173, %if.end127.rcv_crit_edge, %if.end118.rcv_crit_edge
  %rx.2 = phi ptr [ %rx.0, %if.end118.rcv_crit_edge ], [ %rx.0, %if.end127.rcv_crit_edge ], [ %rx.0, %if.then173 ], [ %rx.1319, %if.end184 ]
  %aead.addr.1 = phi ptr [ %aead, %if.end118.rcv_crit_edge ], [ %aead, %if.end127.rcv_crit_edge ], [ %aead, %if.then173 ], [ %aead.addr.0320, %if.end184 ]
  %58 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb, align 4
  %data185 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %data185 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data185, align 4
  %key = getelementptr inbounds %struct.tipc_crypto, ptr %rx.2, i32 0, i32 5
  %62 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load186 = load i8, ptr %key, align 2
  %bf.lshr187 = lshr i8 %bf.load186, 4
  %bf.clear188 = and i8 %bf.lshr187, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear188)
  %tobool190.not = icmp eq i8 %bf.clear188, 0
  br i1 %tobool190.not, label %rcv.if.end205_crit_edge, label %land.lhs.true191

rcv.if.end205_crit_edge:                          ; preds = %rcv
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

land.lhs.true191:                                 ; preds = %rcv
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load192 = load i16, ptr %61, align 1
  %64 = lshr i16 %bf.load192, 6
  %65 = and i16 %64, 3
  %66 = zext i8 %bf.clear188 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %66)
  %cmp202 = icmp eq i16 %65, %66
  br i1 %cmp202, label %if.then204, label %land.lhs.true191.if.end205_crit_edge

land.lhs.true191.if.end205_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.then204:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %rx.2, i32 0, i32 17
  %68 = ptrtoint ptr %timer2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %timer2, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %land.lhs.true191.if.end205_crit_edge, %rcv.if.end205_crit_edge
  %69 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 18
  %73 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 15, i32 0, i32 20
  %75 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i, ptr %network_header.i, align 4
  %76 = load ptr, ptr %skb, align 4
  %77 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %bf.load.i = load i16, ptr %61, align 1
  %78 = and i16 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 6656, i16 %78)
  %cmp.not.i = icmp eq i16 %78, 6656
  %cond.i = select i1 %cmp.not.i, i32 28, i32 16
  %call207 = tail call ptr @skb_pull(ptr noundef %76, i32 noundef %cond.i) #12
  %79 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len, align 4
  %authsize = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.1, i32 0, i32 5
  %83 = ptrtoint ptr %authsize to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %authsize, align 4
  %conv208 = zext i8 %84 to i32
  %sub = sub i32 %82, %conv208
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %sub)
  %cmp.i = icmp ugt i32 %82, %sub
  br i1 %cmp.i, label %cond.true.i, label %if.end205.pskb_trim.exit_crit_edge

if.end205.pskb_trim.exit_crit_edge:               ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_trim.exit

cond.true.i:                                      ; preds = %if.end205
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i, label %__skb_trim.exit.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 @___pskb_trim(ptr noundef %80, i32 noundef %sub) #12
  br label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub, ptr %len, align 4
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %89, i32 %sub
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 16
  %90 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %pskb_trim.exit

pskb_trim.exit:                                   ; preds = %__skb_trim.exit.i.i, %if.then.i.i, %if.end205.pskb_trim.exit_crit_edge
  %call210 = tail call zeroext i1 @tipc_msg_validate(ptr noundef %skb) #12
  br i1 %call210, label %if.end229, label %if.then219, !prof !332

if.then219:                                       ; preds = %pskb_trim.exit
  %call220 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_crypto_rcv_complete._rs, ptr noundef nonnull @.str.77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %tobool221.not = icmp eq i32 %call220, 0
  br i1 %tobool221.not, label %if.then219.free_skb_crit_edge, label %do.end225

if.then219.free_skb_crit_edge:                    ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

do.end225:                                        ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #19
  br label %free_skb

if.end229:                                        ; preds = %pskb_trim.exit
  %91 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %skb, align 4
  tail call fastcc void @tipc_crypto_key_synch(ptr noundef %rx.2, ptr noundef %92)
  %93 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load230 = load i8, ptr %93, align 1
  %bf.set = or i8 %bf.load230, 32
  store i8 %bf.set, ptr %93, align 1
  %95 = and i8 %bf.load230, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool235.not = icmp eq i8 %95, 0
  br i1 %tobool235.not, label %if.end229.exit_crit_edge, label %if.end245, !prof !332

if.end229.exit_crit_edge:                         ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end245:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear247 = and i8 %bf.set, -5
  %96 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %bf.clear247, ptr %93, align 1
  %97 = call ptr @memset(ptr %cb, i32 0, i32 12)
  br label %exit

free_skb:                                         ; preds = %do.end225, %if.then219.free_skb_crit_edge, %if.then183, %if.end97.free_skb_crit_edge, %if.then55, %land.lhs.true.free_skb_crit_edge, %do.end43.free_skb_crit_edge
  %rx.3 = phi ptr [ %8, %if.then55 ], [ %8, %land.lhs.true.free_skb_crit_edge ], [ %rx.2, %do.end225 ], [ %rx.2, %if.then219.free_skb_crit_edge ], [ %3, %if.then183 ], [ null, %if.end97.free_skb_crit_edge ], [ %8, %do.end43.free_skb_crit_edge ]
  %aead.addr.2 = phi ptr [ %aead, %if.then55 ], [ %aead, %land.lhs.true.free_skb_crit_edge ], [ %aead.addr.1, %do.end225 ], [ %aead.addr.1, %if.then219.free_skb_crit_edge ], [ %aead, %if.then183 ], [ %aead, %if.end97.free_skb_crit_edge ], [ %aead, %do.end43.free_skb_crit_edge ]
  %98 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %99, i32 noundef 0) #12
  %100 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %skb, align 4
  br label %exit

exit:                                             ; preds = %free_skb, %if.end245, %if.end229.exit_crit_edge
  %rx.4 = phi ptr [ %rx.3, %free_skb ], [ %rx.2, %if.end229.exit_crit_edge ], [ %rx.2, %if.end245 ]
  %aead.addr.3 = phi ptr [ %aead.addr.2, %free_skb ], [ %aead.addr.1, %if.end229.exit_crit_edge ], [ %aead.addr.1, %if.end245 ]
  %tobool.not.i = icmp eq ptr %aead.addr.3, null
  br i1 %tobool.not.i, label %exit.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i

exit.tipc_aead_put.exit_crit_edge:                ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i:                                  ; preds = %exit
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.3, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.3, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %exit.tipc_aead_put.exit_crit_edge
  %tobool249.not = icmp eq ptr %rx.4, null
  br i1 %tobool249.not, label %tipc_aead_put.exit.if.end252_crit_edge, label %if.then250

tipc_aead_put.exit.if.end252_crit_edge:           ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then250:                                       ; preds = %tipc_aead_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %node251 = getelementptr inbounds %struct.tipc_crypto, ptr %rx.4, i32 0, i32 1
  %102 = ptrtoint ptr %node251 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %node251, align 4
  tail call void @tipc_node_put(ptr noundef %103) #12
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %tipc_aead_put.exit.if.end252_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_crypto_msg_rcv(ptr noundef %net, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cond.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.true.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.exit_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.true.i.exit_crit_edge:                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %call5 = tail call ptr @tipc_node_crypto_rx_by_addr(ptr noundef %net, i32 noundef %5) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.exit_crit_edge, label %if.end16, !prof !331

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end16:                                         ; preds = %if.end
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %7)
  %cond = icmp ult i32 %7, 536870912
  br i1 %cond, label %sw.bb, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  %call18 = tail call fastcc zeroext i1 @tipc_crypto_key_rcv(ptr noundef nonnull %call5, ptr noundef %3)
  br i1 %call18, label %sw.bb.exit_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end16.sw.epilog_crit_edge
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  tail call void @tipc_node_put(ptr noundef %9) #12
  br label %exit

exit:                                             ; preds = %sw.epilog, %sw.bb.exit_crit_edge, %if.end.exit_crit_edge, %cond.true.i.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_node_crypto_rx_by_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tipc_crypto_key_rcv(ptr noundef %rx, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 128
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %2 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_tx, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %hdr, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %5, 16
  %conv = trunc i32 %shr.i.i to i16
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr, align 4
  %and.i.i.i = and i32 %7, 131071
  %8 = lshr i32 %7, 19
  %shl.i.i = and i32 %8, 60
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 56
  br i1 %cmp, label %do.body, label %if.end15, !prof !331

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_key_rcv, %if.then14)) #12
          to label %exit [label %if.then14], !srcloc !347

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug446, ptr noundef nonnull @.str.137, ptr noundef %name) #12
  br label %land.end114

if.end15:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 32
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %add = add i32 %10, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add)
  %cmp16.not = icmp ne i32 %sub.i, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp18 = icmp ugt i32 %10, 72
  %spec.select = or i1 %cmp18, %cmp16.not
  br i1 %spec.select, label %do.body27, label %if.end45, !prof !331

do.body27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_key_rcv, %if.then39)) #12
          to label %exit [label %if.then39], !srcloc !347

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %name40 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug447, ptr noundef nonnull @.str.139, ptr noundef %name40) #12
  br label %land.end114

if.end45:                                         ; preds = %if.end15
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %skey46 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 7
  %11 = ptrtoint ptr %skey46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skey46, align 32
  %tobool47.not = icmp eq ptr %12, null
  br i1 %tobool47.not, label %lor.rhs48, label %if.end45.do.end66_crit_edge, !prof !332

if.end45.do.end66_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end66

lor.rhs48:                                        ; preds = %if.end45
  %key_gen50 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 4
  %13 = ptrtoint ptr %key_gen50 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_gen50, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %conv)
  %cmp52 = icmp eq i16 %14, %conv
  br i1 %cmp52, label %land.rhs, label %lor.rhs48.if.end8.i_crit_edge

lor.rhs48.if.end8.i_crit_edge:                    ; preds = %lor.rhs48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

land.rhs:                                         ; preds = %lor.rhs48
  %key = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 5
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %key, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool55.not = icmp eq i8 %16, 0
  br i1 %tobool55.not, label %land.rhs.if.end8.i_crit_edge, label %land.rhs.do.end66_crit_edge, !prof !332

land.rhs.do.end66_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end66

land.rhs.if.end8.i_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

do.end66:                                         ; preds = %land.rhs.do.end66_crit_edge, %if.end45.do.end66_crit_edge
  %name68 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %key_gen72 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 4
  %17 = ptrtoint ptr %key_gen72 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %key_gen72, align 4
  %conv73 = zext i16 %18 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name68, ptr noundef %12, i32 noundef %shr.i.i, i32 noundef %conv73) #19
  br label %exit_unlock

if.end8.i:                                        ; preds = %land.rhs.if.end8.i_crit_edge, %lor.rhs48.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef 2592) #17
  %tobool77.not = icmp eq ptr %call9.i, null
  br i1 %tobool77.not, label %do.end89, label %if.end94, !prof !331

do.end89:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %name91 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name91) #19
  br label %exit_unlock

if.end94:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %keylen95 = getelementptr inbounds %struct.tipc_aead_key, ptr %call9.i, i32 0, i32 1
  %19 = ptrtoint ptr %keylen95 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %keylen95, align 32
  %20 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr.i, i32 32)
  %key97 = getelementptr inbounds %struct.tipc_aead_key, ptr %call9.i, i32 0, i32 2
  %add.ptr100 = getelementptr i8, ptr %add.ptr.i, i32 36
  %21 = call ptr @memcpy(ptr %key97, ptr %add.ptr100, i32 %10)
  %22 = ptrtoint ptr %key_gen50 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %key_gen50, align 4
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %25 = trunc i32 %24 to i8
  %conv104 = and i8 %25, 15
  %skey_mode = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 6
  %26 = ptrtoint ptr %skey_mode to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv104, ptr %skey_mode, align 1
  %27 = ptrtoint ptr %skey46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i, ptr %skey46, align 32
  %28 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 18
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %28, align 16
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %28, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !362
  tail call void @arm_heavy_mb() #12
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.end94, %do.end89, %do.end66
  %skey.0 = phi ptr [ null, %do.end66 ], [ null, %do.end89 ], [ %call9.i, %if.end94 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %exit

exit:                                             ; preds = %exit_unlock, %do.body27, %do.body
  %skey.1 = phi ptr [ %skey.0, %exit_unlock ], [ null, %do.body ], [ null, %do.body27 ]
  %tobool110.not = icmp eq ptr %skey.1, null
  br i1 %tobool110.not, label %exit.land.end114_crit_edge, label %land.rhs111, !prof !331

exit.land.end114_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end114

land.rhs111:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef 0) #12
  br label %land.end114

land.end114:                                      ; preds = %land.rhs111, %exit.land.end114_crit_edge, %if.then39, %if.then14
  %32 = phi i1 [ false, %exit.land.end114_crit_edge ], [ %call.i, %land.rhs111 ], [ false, %if.then14 ], [ false, %if.then39 ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_crypto_key_distr(ptr nocapture noundef readonly %tx, i8 noundef zeroext %key, ptr noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  %pkts.i = alloca %struct.sk_buff_head, align 4
  %cong_link_cnt.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tipc_node_get_addr(ptr noundef %dest) #12
  %0 = load i32, ptr @sysctl_tipc_key_exchange_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %key)
  %tobool1.not = icmp eq i8 %key, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then2.rcu_read_lock.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then2.rcu_read_lock.exit_crit_edge
  %idxprom = zext i8 %key to i32
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %tx, i32 0, i32 2, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call fastcc ptr @tipc_aead_get(ptr noundef %6)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %rcu_read_lock.exit.if.end11_crit_edge, label %if.then8, !prof !331

rcu_read_lock.exit.if.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %rcu_read_lock.exit
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 128
  %key9 = getelementptr inbounds %struct.tipc_aead, ptr %call4, i32 0, i32 9
  %9 = ptrtoint ptr %key9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key9, align 4
  %gen = getelementptr inbounds %struct.tipc_aead, ptr %call4, i32 0, i32 10
  %11 = ptrtoint ptr %gen to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gen, align 16
  %mode = getelementptr inbounds %struct.tipc_aead, ptr %call4, i32 0, i32 6
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pkts.i) #12
  %15 = getelementptr inbounds i8, ptr %pkts.i, i32 12
  %16 = call ptr @memset(ptr %15, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cong_link_cnt.i) #12
  %17 = ptrtoint ptr %cong_link_cnt.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %cong_link_cnt.i, align 2, !annotation !356
  %keylen.i.i = getelementptr inbounds %struct.tipc_aead_key, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %keylen.i.i, align 4
  %add.i.i = add i32 %19, 36
  %conv1.i = and i32 %add.i.i, 65535
  %add.i = add nuw nsw i32 %conv1.i, 40
  %call2.i = tail call ptr @tipc_buf_acquire(i32 noundef %add.i, i32 noundef 2592) #12
  %tobool.not.i21 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i21, label %if.then8.land.lhs.true.i23_crit_edge, label %if.end.i

if.then8.land.lhs.true.i23_crit_edge:             ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i23

if.end.i:                                         ; preds = %if.then8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %8) #12
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_addr.i.i, align 4
  tail call void @tipc_msg_init(i32 noundef %23, ptr noundef %21, i32 noundef 14, i32 noundef 0, i32 noundef 40, i32 noundef %call) #12
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %and.i.i = and i32 %25, -131072
  %or.i.i = or i32 %and.i.i, %add.i
  store i32 %or.i.i, ptr %21, align 4
  %conv7.i = zext i16 %12 to i32
  %and.i.i.i = shl nuw i32 %conv7.i, 16
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  %and2.i.i.i = and i32 %27, 65520
  %or.i.i.i = or i32 %and2.i.i.i, %and.i.i.i
  %28 = and i8 %14, 15
  %and.i.i42.i = zext i8 %28 to i32
  %or.i.i45.i = or i32 %or.i.i.i, %and.i.i42.i
  store i32 %or.i.i45.i, ptr %arrayidx.i.i.i, align 4
  %29 = lshr i32 %25, 19
  %shl.i.i.i = and i32 %29, 60
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %shl.i.i.i
  %30 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %keylen.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 32
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %33 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %10, i32 32)
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i.i, i32 36
  %key.i = getelementptr inbounds %struct.tipc_aead_key, ptr %10, i32 0, i32 2
  %34 = load i32, ptr %keylen.i.i, align 4
  %35 = call ptr @memcpy(ptr %add.ptr11.i, ptr %key.i, i32 %34)
  %prev.i.i = getelementptr inbounds %struct.anon.38, ptr %pkts.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %pkts.i, i32 0, i32 1
  %36 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %qlen.i.i, align 4
  %37 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %pkts.i, ptr %call2.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.17, ptr %call2.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pkts.i, ptr %prev10.i.i.i.i, align 4
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call2.i, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %pkts.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call2.i, ptr %pkts.i, align 4
  %41 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not.i = icmp eq i32 %call, 0
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = call i32 @tipc_node_xmit(ptr noundef %8, ptr noundef nonnull %pkts.i, i32 noundef %call, i32 noundef 0) #12
  br label %land.lhs.true.i23

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = call i32 @tipc_bcast_xmit(ptr noundef %8, ptr noundef nonnull %pkts.i, ptr noundef nonnull %cong_link_cnt.i) #12
  br label %land.lhs.true.i23

land.lhs.true.i23:                                ; preds = %if.else.i, %if.then15.i, %if.then8.land.lhs.true.i23_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then8.land.lhs.true.i23_crit_edge ], [ %call16.i, %if.then15.i ], [ %call17.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cong_link_cnt.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pkts.i) #12
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %call4, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i24, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.if.end11_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %if.end11

if.then.i24:                                      ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %call4, i32 0, i32 8
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then.i24, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end11_crit_edge, %rcu_read_lock.exit.if.end11_crit_edge
  %rc.0 = phi i32 [ -126, %rcu_read_lock.exit.if.end11_crit_edge ], [ %retval.0.i, %if.end5.i.i.i.i.if.end11_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i ], [ %retval.0.i, %if.then.i24 ]
  %call.i26 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i26, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end11
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %43 = call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i33 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %rc.0, %rcu_read_unlock.exit ], [ -126, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_get_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_crypto_rekeying_sched(ptr noundef %tx, i1 noundef zeroext %changed, i32 noundef %new_intv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %changed, label %if.then, label %if.end2.thread

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %new_intv)
  %cmp = icmp eq i32 %new_intv, -1
  br i1 %cmp, label %if.then.if.end2_crit_edge, label %if.else

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rekeying_intv = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 11
  %0 = ptrtoint ptr %rekeying_intv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_intv, ptr %rekeying_intv, align 16
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then.if.end2_crit_edge
  %work = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #12
  %rekeying_intv3 = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 11
  %1 = ptrtoint ptr %rekeying_intv3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rekeying_intv3, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp ne i32 %2, 0
  %brmerge = or i1 %cmp, %tobool4.not
  br i1 %brmerge, label %if.then6, label %if.end2.if.end13_crit_edge

if.end2.if.end13_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end2.thread:                                   ; preds = %entry
  %rekeying_intv322 = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 11
  %3 = ptrtoint ptr %rekeying_intv322 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rekeying_intv322, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not23.not = icmp eq i32 %4, 0
  br i1 %tobool4.not23.not, label %if.end2.thread.if.end13_crit_edge, label %if.end2.thread.cond.false_crit_edge

if.end2.thread.cond.false_crit_edge:              ; preds = %if.end2.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.end2.thread.if.end13_crit_edge:                ; preds = %if.end2.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then6:                                         ; preds = %if.end2
  br i1 %cmp, label %if.then6.cond.end_crit_edge, label %if.then6.cond.false_crit_edge

if.then6.cond.false_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

if.then6.cond.end_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then6.cond.false_crit_edge, %if.end2.thread.cond.false_crit_edge
  %5 = phi i32 [ %2, %if.then6.cond.false_crit_edge ], [ %4, %if.end2.thread.cond.false_crit_edge ]
  %mul9 = mul i32 %5, 60000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then6.cond.end_crit_edge
  %cond = phi i32 [ %mul9, %cond.false ], [ 0, %if.then6.cond.end_crit_edge ]
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 8
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  %work10 = getelementptr inbounds %struct.tipc_crypto, ptr %tx, i32 0, i32 9
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #12
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work10, i32 noundef %call2.i) #12
  br label %if.end13

if.end13:                                         ; preds = %cond.end, %if.end2.thread.if.end13_crit_edge, %if.end2.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_inc_not_zero(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  %old.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r, i32 noundef 4) #12
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %r, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end4.i.i_crit_edge, label %do.cond.i.i

do.body.i.i.if.end4.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add i32 %2, 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i, align 4
  call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %5, i32 %add.i.i, ptr elementtype(i32) %r) #12, !srcloc !349
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !332

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.if.end4.i.i_crit_edge, %do.body.i.i.if.end4.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i, align 4
  %add5.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i, label %if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i, !prof !332

if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc_not_zero.exit

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 0) #12
  br label %__refcount_inc_not_zero.exit

__refcount_inc_not_zero.exit:                     ; preds = %if.then10.i.i, %if.end4.i.i.__refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #12
  ret i1 %tobool12.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_key_revoke(ptr noundef %net, i8 noundef zeroext %tx_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_tx, align 4
  %lock = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %key1 = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %key.sroa.0.0.copyload = load i8, ptr %key1, align 2
  %bf.lshr = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear, i8 %tx_key)
  %cmp = icmp ne i8 %bf.clear, %tx_key
  %spec.select = or i1 %tobool.not, %cmp
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !331

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1446, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bf.lshr27 = lshr i8 %key.sroa.0.0.copyload, 4
  %bf.clear28 = and i8 %bf.lshr27, 3
  %bf.clear30 = and i8 %key.sroa.0.0.copyload, 3
  tail call fastcc void @tipc_crypto_key_set_state(ptr noundef %1, i8 noundef zeroext %bf.clear28, i8 noundef zeroext 0, i8 noundef zeroext %bf.clear30)
  %dep_map = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 19, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %land.lhs.true, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

land.lhs.true:                                    ; preds = %if.end
  %call36 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end43_crit_edge, label %land.lhs.true38

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

land.lhs.true38:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @tipc_crypto_key_revoke.__warned, align 1
  br i1 %.b1, label %land.lhs.true38.do.end43_crit_edge, label %if.then40

land.lhs.true38.do.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_revoke.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1450, ptr noundef nonnull @.str.4) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %land.lhs.true38.do.end43_crit_edge, %land.lhs.true.do.end43_crit_edge, %if.end.do.end43_crit_edge
  %idxprom = zext i8 %bf.clear to i32
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %1, i32 0, i32 2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  store volatile ptr null, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end43.tipc_aead_put.exit_crit_edge, label %land.lhs.true.i

do.end43.tipc_aead_put.exit_crit_edge:            ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

land.lhs.true.i:                                  ; preds = %do.end43
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %4, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tipc_aead_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %tipc_aead_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %4, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %tipc_aead_put.exit

tipc_aead_put.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.tipc_aead_put.exit_crit_edge, %do.end43.tipc_aead_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %1, i32 0, i32 13
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_aead_encrypt_done(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %crypto_ctx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %crypto_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_ctx, align 4
  %bearer = getelementptr inbounds %struct.tipc_crypto_tx_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bearer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bearer, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %crypto = getelementptr inbounds %struct.tipc_aead, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crypto, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %12 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %err, label %do.body53 [
    i32 0, label %do.body3
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %stats = getelementptr inbounds %struct.tipc_crypto, ptr %9, i32 0, i32 12
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stats, align 4
  %arrayidx14 = getelementptr [8 x i32], ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx14 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add18 = add i32 %25, 1
  store i32 %add18, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body3.do.end33_crit_edge, !prof !331

do.body3.do.end33_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end33

do.end33:                                         ; preds = %if.then, %do.body3.do.end33_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #12, !srcloc !353
  %27 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end33.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end33.rcu_read_lock.exit_crit_edge:            ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end33
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end33.rcu_read_lock.exit_crit_edge
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 16
  %31 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool41.not = icmp eq i32 %and1.i, 0
  br i1 %tobool41.not, label %if.else, label %if.then48, !prof !331

if.then48:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %media, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dst = getelementptr inbounds %struct.tipc_crypto_tx_ctx, ptr %3, i32 0, i32 2
  %call49 = tail call i32 %36(ptr noundef %11, ptr noundef %1, ptr noundef %5, ptr noundef %dst) #12
  br label %if.end50

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then48
  %call.i130 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i130, label %if.end50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

if.end50.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %if.end50
  %call1.i131 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %if.end50.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %37 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i137 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %sw.epilog

do.body53:                                        ; preds = %entry
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %stats75 = getelementptr inbounds %struct.tipc_crypto, ptr %9, i32 0, i32 12
  %42 = ptrtoint ptr %stats75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stats75, align 4
  %arrayidx77 = getelementptr [8 x i32], ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx77 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i139 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i139 to ptr
  %cpu80 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu80, align 4
  %arrayidx81 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx81, align 4
  %add82 = add i32 %50, %44
  %51 = inttoptr i32 %add82 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add83 = add i32 %53, 1
  store i32 %add83, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i140 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool94.not = icmp eq i32 %and.i.i140, 0
  br i1 %tobool94.not, label %if.then103, label %do.body53.do.end106_crit_edge, !prof !331

do.body53.do.end106_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

if.then103:                                       ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end106

do.end106:                                        ; preds = %if.then103, %do.body53.do.end106_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #12, !srcloc !353
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end106, %rcu_read_unlock.exit
  tail call void @kfree(ptr noundef %3) #12
  tail call void @tipc_bearer_put(ptr noundef %5) #12
  %tobool.not.i141 = icmp eq ptr %7, null
  br i1 %tobool.not.i141, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true.i142

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i142:                               ; preds = %sw.epilog
  %refcnt.i = getelementptr inbounds %struct.tipc_aead, ptr %7, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !334
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !335
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i143, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !332

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup

if.then.i143:                                     ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %rcu.i = getelementptr inbounds %struct.tipc_aead, ptr %7, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @tipc_aead_free) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i143, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_bearer_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_aead_decrypt_done(ptr nocapture noundef readonly %base, i32 noundef %err) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #12
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %skb, align 4
  %crypto_ctx = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %3 = ptrtoint ptr %crypto_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crypto_ctx, align 4
  %bearer = getelementptr inbounds %struct.tipc_crypto_rx_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bearer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bearer, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %crypto = getelementptr inbounds %struct.tipc_aead, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %crypto to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crypto, align 4
  %stats2 = getelementptr inbounds %struct.tipc_crypto, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats2, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 128
  %15 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %err, label %do.body44 [
    i32 0, label %do.body5
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body5:                                         ; preds = %entry
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx16 = getelementptr [8 x i32], ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add20 = add i32 %26, 1
  store i32 %add20, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body5.do.end35_crit_edge, !prof !331

do.body5.do.end35_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.then:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end35

do.end35:                                         ; preds = %if.then, %do.body5.do.end35_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #12, !srcloc !353
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !351
  %arrayidx67 = getelementptr [8 x i32], ptr %12, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx67 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i137 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i137 to ptr
  %cpu70 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu70, align 4
  %arrayidx71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx71, align 4
  %add72 = add i32 %35, %29
  %36 = inttoptr i32 %add72 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add73 = add i32 %38, 1
  store i32 %add73, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !352
  %and.i.i138 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %tobool84.not = icmp eq i32 %and.i.i138, 0
  br i1 %tobool84.not, label %if.then93, label %do.body44.do.end96_crit_edge, !prof !331

do.body44.do.end96_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

if.then93:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %do.body44.do.end96_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #12, !srcloc !353
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end96, %do.end35
  tail call void @kfree(ptr noundef %4) #12
  call fastcc void @tipc_crypto_rcv_complete(ptr noundef %14, ptr noundef %8, ptr noundef %6, ptr noundef nonnull %skb, i32 noundef %err)
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb, align 4
  %tobool103.not = icmp eq ptr %41, null
  br i1 %tobool103.not, label %sw.epilog.if.end121_crit_edge, label %if.then110, !prof !331

sw.epilog.if.end121_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then110:                                       ; preds = %sw.epilog
  %up = getelementptr inbounds %struct.tipc_bearer, ptr %6, i32 0, i32 16
  %42 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %up, align 4
  %and1.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool112.not = icmp eq i32 %and1.i, 0
  br i1 %tobool112.not, label %if.else, label %if.then119, !prof !331

if.then119:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  call void @tipc_rcv(ptr noundef %14, ptr noundef nonnull %41, ptr noundef %6) #12
  br label %if.end121

if.else:                                          ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #12
  br label %if.end121

if.end121:                                        ; preds = %if.else, %if.then119, %sw.epilog.if.end121_crit_edge
  call void @tipc_bearer_put(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_rcv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_node_create(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_aead_clone(ptr nocapture noundef %dst, ptr noundef %src) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.tipc_aead, ptr %src, i32 0, i32 6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end8, label %if.end3.cleanup_crit_edge, !prof !332

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 384) #16
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end19, !prof !331

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef 2592) #17
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %call7.i.i, align 128
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.then31, label %for.cond.preheader, !prof !331

for.cond.preheader:                               ; preds = %if.end19
  %call33115 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call33115, i32 %6)
  %cmp34116 = icmp ult i32 %call33115, %6
  br i1 %cmp34116, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call33117 = phi i32 [ %call33, %do.body.do.body_crit_edge ], [ %call33115, %for.cond.preheader.do.body_crit_edge ]
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src, align 128
  %9 = ptrtoint ptr %8 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call33117
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %9
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 128
  %17 = ptrtoint ptr %16 to i32
  %add47 = add i32 %11, %17
  %18 = inttoptr i32 %add47 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %18, align 4
  %call33 = tail call i32 @cpumask_next(i32 noundef %call33117, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp34 = icmp ult i32 %call33, %20
  br i1 %cmp34, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %hint = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 7
  %hint48 = getelementptr inbounds %struct.tipc_aead, ptr %src, i32 0, i32 7
  %21 = call ptr @memcpy(ptr %hint, ptr %hint48, i32 11)
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 1
  %mode51 = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %mode51 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %mode51, align 1
  %salt = getelementptr inbounds %struct.tipc_aead, ptr %src, i32 0, i32 4
  %25 = ptrtoint ptr %salt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %salt, align 16
  %salt52 = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %salt52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %salt52, align 16
  %authsize = getelementptr inbounds %struct.tipc_aead, ptr %src, i32 0, i32 5
  %28 = ptrtoint ptr %authsize to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %authsize, align 4
  %authsize53 = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %authsize53 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %authsize53, align 4
  %users = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  %31 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %users, align 4
  %seqno = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 12
  %call.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqno, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %seqno, i64 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %refcnt, align 8
  %refcnt54 = getelementptr inbounds %struct.tipc_aead, ptr %src, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt54, i32 noundef 4) #12
  %33 = ptrtoint ptr %refcnt54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt54, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %for.end
  %35 = phi i32 [ %34, %for.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %36 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %35, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt54, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt54, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %39 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt54, ptr %refcnt54, i32 %38, i32 %add.i.i.i, ptr elementtype(i32) %refcnt54) #12, !srcloc !349
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %38
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !332

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %40 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %41, 1
  %42 = or i32 %add5.i.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %.not.i.i.i = icmp sgt i32 %42, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !332

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt54, i32 noundef 0) #12
  %43 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %44 = phi i32 [ %41, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool12.i.i.i.not = icmp eq i32 %44, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %do.end73, label %refcount_inc_not_zero.exit.if.end79_crit_edge, !prof !331

refcount_inc_not_zero.exit.if.end79_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end73:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 663, i32 noundef 9, ptr noundef null) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %refcount_inc_not_zero.exit.if.end79_crit_edge
  %cloned = getelementptr inbounds %struct.tipc_aead, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %cloned to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %src, ptr %cloned, align 8
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %dst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then31, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then31 ], [ 0, %if.end79 ], [ -126, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_msg_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_crypto_key_synch(ptr noundef %rx, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx, align 128
  %call1 = tail call fastcc ptr @tipc_net(ptr noundef %5)
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call1, i32 0, i32 26
  %6 = ptrtoint ptr %crypto_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crypto_tx, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx, align 128
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %11) #12
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay) #12
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %delay, align 4, !annotation !356
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load = load i16, ptr %add.ptr.i, align 1
  %16 = trunc i16 %bf.load to i8
  %17 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 18
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load5 = load i8, ptr %17, align 16
  %19 = shl i8 %16, 4
  %bf.shl = and i8 %19, 64
  %bf.clear6 = and i8 %bf.load5, -65
  %bf.set = or i8 %bf.shl, %bf.clear6
  store i8 %bf.set, ptr %17, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl)
  %tobool.not = icmp eq i8 %bf.shl, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %20 = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 18
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load10 = load i8, ptr %20, align 16
  %bf.set12 = or i8 %bf.load10, 32
  store i8 %bf.set12, ptr %20, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load13 = load i16, ptr %add.ptr.i, align 1
  %23 = and i16 %bf.load13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool17.not = icmp eq i16 %23, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  %26 = and i32 %25, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %26)
  %cmp.i.not = icmp eq i32 %26, 12582912
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %arrayidx.i.i = getelementptr [15 x i32], ptr %9, i32 0, i32 7
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %13)
  %cmp.not = icmp eq i32 %28, %13
  br i1 %cmp.not, label %if.end23, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  %29 = and i16 %bf.load13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool28.not = icmp eq i16 %29, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 17
  %31 = ptrtoint ptr %timer2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %timer2, align 4
  %key = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 5
  %32 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %key, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not = icmp eq i8 %33, 0
  br i1 %tobool30.not, label %if.then29.if.end41_crit_edge, label %land.lhs.true

if.then29.if.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %if.then29
  %key_distr = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !348
  tail call void @llvm.prefetch.p0(ptr %key_distr, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %key_distr, ptr %key_distr, i32 0, i32 1, ptr elementtype(i32) %key_distr) #12, !srcloc !349
  %asmresult.i.i.i = extractvalue { i32, i32 } %34, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %34, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool32.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool32.not, label %if.then33, label %atomic_cmpxchg.exit.if.end41_crit_edge

atomic_cmpxchg.exit.if.end41_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then33:                                        ; preds = %atomic_cmpxchg.exit
  call void @get_random_bytes(ptr noundef nonnull %delay, i32 noundef 2) #12
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  %rem = urem i32 %36, 5
  %inc = add nuw nsw i32 %rem, 1
  store i32 %inc, ptr %delay, align 4
  %mul = mul nuw nsw i32 %inc, 500
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #12
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call2.i, ptr %delay, align 4
  %wq = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 8
  %38 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 9
  %call.i136 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work, i32 noundef %call2.i) #12
  br i1 %call.i136, label %if.then36, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 1
  %40 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node, align 4
  call void @tipc_node_get(ptr noundef %41) #12
  br label %if.end41

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %key_distr39 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 10
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key_distr39, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %key_distr39, i32 1, i32 3, i32 1) #12
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %key_distr39) #12, !srcloc !340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then36, %if.then33.if.end41_crit_edge, %atomic_cmpxchg.exit.if.end41_crit_edge, %if.then29.if.end41_crit_edge
  %peer_rx_active = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 3
  %call.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %peer_rx_active, i32 noundef 4) #12
  %43 = ptrtoint ptr %peer_rx_active to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %peer_rx_active, align 4
  %conv43 = trunc i32 %44 to i8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load44 = load i16, ptr %add.ptr.i, align 1
  %46 = trunc i16 %bf.load44 to i8
  %47 = lshr i8 %46, 4
  %bf.cast47 = and i8 %47, 3
  %key48 = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 5
  %48 = ptrtoint ptr %key48 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %key48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool50.not = icmp eq i8 %49, 0
  br i1 %tobool50.not, label %if.end41.cleanup_crit_edge, label %land.lhs.true51

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true51:                                  ; preds = %if.end41
  %conv52 = and i32 %44, 255
  %conv53 = zext i8 %bf.cast47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv53)
  %cmp54.not = icmp eq i32 %conv52, %conv53
  br i1 %cmp54.not, label %land.lhs.true51.cleanup_crit_edge, label %land.lhs.true56

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %call.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef %peer_rx_active, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !348
  call void @llvm.prefetch.p0(ptr %peer_rx_active, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i130

do.body.i.i.i130:                                 ; preds = %do.body.i.i.i130.do.body.i.i.i130_crit_edge, %land.lhs.true56
  %50 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %peer_rx_active, ptr %peer_rx_active, i32 %conv52, i32 %conv53, ptr elementtype(i32) %peer_rx_active) #12, !srcloc !349
  %asmresult.i.i.i128 = extractvalue { i32, i32 } %50, 0
  %tobool.not.i.i.i129 = icmp eq i32 %asmresult.i.i.i128, 0
  br i1 %tobool.not.i.i.i129, label %atomic_cmpxchg.exit132, label %do.body.i.i.i130.do.body.i.i.i130_crit_edge

do.body.i.i.i130.do.body.i.i.i130_crit_edge:      ; preds = %do.body.i.i.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i130

atomic_cmpxchg.exit132:                           ; preds = %do.body.i.i.i130
  %asmresult3.i.i.i131 = extractvalue { i32, i32 } %50, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !350
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i131, i32 %conv52)
  %cmp62 = icmp eq i32 %asmresult3.i.i.i131, %conv52
  br i1 %cmp62, label %if.then64, label %atomic_cmpxchg.exit132.cleanup_crit_edge

atomic_cmpxchg.exit132.cleanup_crit_edge:         ; preds = %atomic_cmpxchg.exit132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64:                                        ; preds = %atomic_cmpxchg.exit132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast47)
  %tobool65.not = icmp eq i8 %bf.cast47, 0
  br i1 %tobool65.not, label %if.then64.if.end67_crit_edge, label %if.then66

if.then64.if.end67_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %7, i32 0, i32 2, i32 %conv53
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  call fastcc void @tipc_aead_users_inc(ptr noundef %52)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then64.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv43)
  %tobool68.not = icmp eq i8 %conv43, 0
  br i1 %tobool68.not, label %if.end67.if.end73_crit_edge, label %if.then69

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx72 = getelementptr %struct.tipc_crypto, ptr %7, i32 0, i32 2, i32 %conv52
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx72, align 4
  call fastcc void @tipc_aead_users_dec(ptr noundef %54, i32 noundef 0)
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %if.end67.if.end73_crit_edge
  %sndnxt = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 15
  %call.i.i133 = call zeroext i1 @__kasan_check_write(ptr noundef %sndnxt, i32 noundef 8) #12
  call void @generic_atomic64_set(ptr noundef %sndnxt, i64 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %timer1 = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 16
  %56 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %timer1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tipc_crypto_key_synch.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tipc_crypto_key_synch, %if.then78)) #12
          to label %cleanup [label %if.then78], !srcloc !347

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.tipc_crypto, ptr %7, i32 0, i32 13
  %name81 = getelementptr inbounds %struct.tipc_crypto, ptr %rx, i32 0, i32 13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tipc_crypto_key_synch.__UNIQUE_ID_ddebug419, ptr noundef nonnull @.str.86, ptr noundef %name, i32 noundef %conv52, i32 noundef %conv53, ptr noundef %name81) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end73, %atomic_cmpxchg.exit132.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_aead_users_inc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  %aead.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aead.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %aead, ptr %aead.addr, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %aead.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %aead.addr.0.aead.addr.0.aead.addr.0. = load volatile ptr, ptr %aead.addr, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @tipc_aead_users_inc.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_aead_users_inc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 450, ptr noundef nonnull @.str.16) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %aead.addr.0.aead.addr.0.aead.addr.0., null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  %users = getelementptr inbounds %struct.tipc_aead, ptr %aead.addr.0.aead.addr.0.aead.addr.0., i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 2147483647, i32 1, ptr elementtype(i32) %users) #12, !srcloc !345
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 2147483647
  br i1 %cmp.not.i.i.i, label %if.then11.if.end13_crit_edge, label %do.end11.i.i.i

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end11.i.i.i:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !346
  br label %if.end13

if.end13:                                         ; preds = %do.end11.i.i.i, %if.then11.if.end13_crit_edge, %do.end8.if.end13_crit_edge
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end13
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %7 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i9 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_crypto_key_dump(ptr noundef %c, ptr noundef returned %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %key.sroa.0.0.copyload = load i8, ptr %key1, align 2
  %bf.lshr = lshr i8 %key.sroa.0.0.copyload, 4
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  %bf.lshr13 = lshr i8 %key.sroa.0.0.copyload, 2
  %bf.clear14 = and i8 %bf.lshr13, 3
  %conv15 = zext i8 %bf.clear14 to i32
  %bf.clear21 = and i8 %key.sroa.0.0.copyload, 3
  %conv22 = zext i8 %bf.clear21 to i32
  %node = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 1
  %timer2 = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0118 = phi i32 [ 0, %entry ], [ %i.2, %for.inc.for.body_crit_edge ]
  %k.0116 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0116)
  %cmp2 = icmp eq i32 %k.0116, 0
  br i1 %cmp2, label %if.then, label %if.else7

if.then:                                          ; preds = %for.body
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timer2, align 4
  %add.neg = add i32 %3, -500
  %sub = sub i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  %.str.118..str.119 = select i1 %cmp4, ptr @.str.118, ptr @.str.119
  br label %if.end30

if.else7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0116, i32 %conv)
  %cmp8 = icmp eq i32 %k.0116, %conv
  br i1 %cmp8, label %if.else7.if.end30_crit_edge, label %if.else11

if.else7.if.end30_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0116, i32 %conv15)
  %cmp16 = icmp eq i32 %k.0116, %conv15
  br i1 %cmp16, label %if.else11.if.end30_crit_edge, label %if.else19

if.else11.if.end30_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else19:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0116, i32 %conv22)
  %cmp23 = icmp eq i32 %k.0116, %conv22
  %.str.120..str.50 = select i1 %cmp23, ptr @.str.120, ptr @.str.50
  br label %if.end30

if.end30:                                         ; preds = %if.else19, %if.else11.if.end30_crit_edge, %if.else7.if.end30_crit_edge, %if.end
  %s.0 = phi ptr [ %.str.118..str.119, %if.end ], [ @.str.119, %if.else7.if.end30_crit_edge ], [ @.str.118, %if.else11.if.end30_crit_edge ], [ %.str.120..str.50, %if.else19 ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0118
  %sub31 = sub i32 200, %i.0118
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub31, ptr noundef nonnull @.str.121, i32 noundef %k.0116, ptr noundef nonnull %s.0) #12
  %add33 = add i32 %call32, %i.0118
  %6 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end30.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end30.rcu_read_lock.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end30
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 696, ptr noundef nonnull @.str.56) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end30.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.tipc_crypto, ptr %c, i32 0, i32 2, i32 %k.0116
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %call36 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end45_crit_edge

rcu_read_lock.exit.do.end45_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b105 = load i1, ptr @tipc_crypto_key_dump.__warned, align 1
  br i1 %.b105, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tipc_crypto_key_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2096, ptr noundef nonnull @.str.16) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %rcu_read_lock.exit.do.end45_crit_edge
  %tobool47.not = icmp eq ptr %11, null
  br i1 %tobool47.not, label %do.end45.if.end58_crit_edge, label %if.then48

do.end45.if.end58_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then48:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %add33
  %sub50 = sub i32 200, %add33
  %hint = getelementptr inbounds %struct.tipc_aead, ptr %11, i32 0, i32 7
  %mode = getelementptr inbounds %struct.tipc_aead, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp52 = icmp eq i8 %13, 1
  %cond = select i1 %cmp52, ptr @.str.123, ptr @.str.124
  %users = getelementptr inbounds %struct.tipc_aead, ptr %11, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %14 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %users, align 4
  %refcnt = getelementptr inbounds %struct.tipc_aead, ptr %11, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcnt, align 4
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.122, ptr noundef %hint, ptr noundef nonnull %cond, i32 noundef %15, i32 noundef %17) #12
  %add57 = add i32 %call56, %add33
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %do.end45.if.end58_crit_edge
  %i.1 = phi i32 [ %add57, %if.then48 ], [ %add33, %do.end45.if.end58_crit_edge ]
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i107, label %if.end58.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i110

if.end58.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i110:                               ; preds = %if.end58
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 724, ptr noundef nonnull @.str.57) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, %if.end58.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %18 = tail call i32 @llvm.read_register.i32(metadata !321) #12
  %and.i.i.i.i.i114 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %add.ptr59 = getelementptr i8, ptr %buf, i32 %i.1
  %sub60 = sub i32 200, %i.1
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.125) #12
  %add62 = add i32 %call61, %i.1
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_unlock.exit, %if.then.for.inc_crit_edge
  %i.2 = phi i32 [ %i.0118, %if.then.for.inc_crit_edge ], [ %add62, %rcu_read_unlock.exit ]
  %inc = add nuw nsw i32 %k.0116, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %tobool64.not = icmp eq ptr %23, null
  br i1 %tobool64.not, label %for.end.if.end71_crit_edge, label %if.then65

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %i.2
  %sub67 = sub i32 200, %i.2
  %peer_rx_active = getelementptr inbounds %struct.tipc_crypto, ptr %c, i32 0, i32 3
  %call.i.i106 = tail call zeroext i1 @__kasan_check_read(ptr noundef %peer_rx_active, i32 noundef 4) #12
  %24 = ptrtoint ptr %peer_rx_active to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %peer_rx_active, align 4
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.126, i32 noundef %25) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %for.end.if.end71_crit_edge
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_node_crypto_rx_by_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_buf_acquire(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_msg_init(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !87, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !123, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !156, !157, !158, !159, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !196, !197, !198, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !222, !223, !224, !226, !227, !228, !230, !232, !234, !235, !236, !238, !240, !242, !244, !245, !247, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !317, !318, !319, !320}
!llvm.named.register.sp = !{!321}
!llvm.module.flags = !{!322, !323, !324, !325, !326, !327, !328, !329}
!llvm.ident = !{!330}

!0 = !{ptr @sysctl_tipc_max_tfms, !1, !"sysctl_tipc_max_tfms", i1 false, i1 false}
!1 = !{!"../net/tipc/crypto.c", i32 89, i32 5}
!2 = !{ptr @sysctl_tipc_key_exchange_enabled, !3, !"sysctl_tipc_key_exchange_enabled", i1 false, i1 false}
!3 = !{!"../net/tipc/crypto.c", i32 91, i32 5}
!4 = !{ptr @tipc_aead_key_validate.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/tipc/crypto.c", i32 340, i32 3}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/crypto.c", i32 345, i32 29}
!8 = !{ptr @tipc_aead_key_validate.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/tipc/crypto.c", i32 346, i32 3}
!10 = !{ptr @tipc_aead_key_validate.__msg.2, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../net/tipc/crypto.c", i32 355, i32 3}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/tipc/crypto.c", i32 1230, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/tipc/crypto.c", i32 1472, i32 11}
!18 = !{ptr @tipc_crypto_start.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/tipc/crypto.c", i32 1499, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/tipc/crypto.c", i32 1500, i32 25}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/tipc/crypto.c", i32 1500, i32 48}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/tipc/crypto.c", i32 1500, i32 55}
!27 = !{ptr @tipc_crypto_start.__key.10, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/tipc/crypto.c", i32 1505, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tipc_crypto_start.__key.12, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tipc_crypto_start.__key.14, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/tipc/crypto.c", i32 1507, i32 3}
!34 = !{ptr @tipc_crypto_start.__key.15, !33, !"__key", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/tipc/crypto.c", i32 1531, i32 17}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/tipc/crypto.c", i32 1533, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tipc_crypto_stop.__UNIQUE_ID_ddebug425, !39, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!43 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/tipc/crypto.c", i32 1561, i32 3}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/tipc/crypto.c", i32 1563, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tipc_crypto_timeout._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tipc_crypto_timeout._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @tipc_crypto_timeout._entry.23, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../net/tipc/crypto.c", i32 1580, i32 2}
!53 = !{ptr @tipc_crypto_timeout._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/tipc/crypto.c", i32 1589, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/tipc/crypto.c", i32 1590, i32 2}
!58 = !{ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug432, !57, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!59 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/tipc/crypto.c", i32 1608, i32 2}
!62 = !{ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug433, !61, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!63 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/tipc/crypto.c", i32 1620, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/tipc/crypto.c", i32 1621, i32 2}
!68 = !{ptr @tipc_crypto_timeout.__UNIQUE_ID_ddebug437, !67, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!69 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/tipc/crypto.c", i32 1707, i32 4}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tipc_crypto_xmit.__UNIQUE_ID_ddebug438, !71, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!74 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/tipc/crypto.c", i32 1722, i32 4}
!77 = !{ptr @tipc_crypto_xmit.__UNIQUE_ID_ddebug439, !76, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!78 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/tipc/crypto.c", i32 1871, i32 5}
!81 = !{ptr @tipc_crypto_rcv._rs, !80, !"_rs", i1 false, i1 false}
!82 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tipc_crypto_rcv.descriptor, !80, !"descriptor", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/tipc/crypto.c", i32 1188, i32 2}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/tipc/crypto.c", i32 461, i32 8}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/tipc/crypto.c", i32 463, i32 22}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/tipc/crypto.c", i32 1102, i32 2}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tipc_crypto_key_set_state.__UNIQUE_ID_ddebug400, !95, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!98 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/tipc/crypto.c", i32 2124, i32 34}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/tipc/crypto.c", i32 2127, i32 8}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/tipc/crypto.c", i32 2129, i32 8}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/tipc/crypto.c", i32 2131, i32 8}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/tipc/crypto.c", i32 2133, i32 8}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/tipc/crypto.c", i32 2135, i32 26}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/tipc/crypto.c", i32 2135, i32 34}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/tipc/crypto.c", i32 2138, i32 35}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/tipc/crypto.c", i32 2142, i32 34}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../net/tipc/crypto.c", i32 437, i32 8}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/tipc/crypto.c", i32 473, i32 8}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../net/tipc/crypto.c", i32 388, i32 8}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../net/tipc/crypto.c", i32 1450, i32 2}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/tipc/crypto.c", i32 1453, i32 2}
!134 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tipc_crypto_key_revoke._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @tipc_crypto_key_revoke._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/tipc/crypto.c", i32 760, i32 3}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tipc_aead_encrypt.__UNIQUE_ID_ddebug399, !138, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!141 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/tipc/crypto.c", i32 766, i32 3}
!144 = !{ptr @tipc_aead_encrypt._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tipc_aead_encrypt._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/tipc/crypto.c", i32 782, i32 3}
!148 = !{ptr @tipc_aead_encrypt._entry.64, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tipc_aead_encrypt._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../net/tipc/crypto.c", i32 1270, i32 9}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../net/tipc/crypto.c", i32 1277, i32 10}
!154 = !{ptr @tipc_crypto_key_try_align._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../net/tipc/crypto.c", i32 1289, i32 2}
!156 = !{ptr @__func__.tipc_crypto_key_try_align, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tipc_crypto_key_try_align._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @tipc_crypto_key_try_align._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../net/tipc/crypto.c", i32 1333, i32 10}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../net/tipc/crypto.c", i32 1341, i32 10}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/tipc/crypto.c", i32 1354, i32 4}
!166 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tipc_crypto_key_pick_tx._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @tipc_crypto_key_pick_tx._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/tipc/crypto.c", i32 896, i32 3}
!171 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @tipc_aead_decrypt._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @tipc_aead_decrypt._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/tipc/crypto.c", i32 911, i32 3}
!176 = !{ptr @tipc_aead_decrypt._entry.74, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @tipc_aead_decrypt._entry_ptr.76, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/tipc/crypto.c", i32 1901, i32 3}
!180 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug442, !179, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!182 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/tipc/crypto.c", i32 1904, i32 3}
!185 = !{ptr @tipc_crypto_rcv_complete.__UNIQUE_ID_ddebug443, !184, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!186 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @tipc_crypto_rcv_complete._rs, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../net/tipc/crypto.c", i32 1967, i32 3}
!189 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @tipc_crypto_rcv_complete._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @tipc_crypto_rcv_complete._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/tipc/crypto.c", i32 1434, i32 3}
!196 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tipc_crypto_key_synch.__UNIQUE_ID_ddebug419, !195, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!198 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../net/tipc/crypto.c", i32 450, i32 8}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/tipc/crypto.c", i32 2013, i32 2}
!203 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @tipc_crypto_do_cmd._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @tipc_crypto_do_cmd._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/tipc/crypto.c", i32 2016, i32 2}
!208 = !{ptr @tipc_crypto_do_cmd._entry.89, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @tipc_crypto_do_cmd._entry_ptr.91, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/tipc/crypto.c", i32 2017, i32 2}
!212 = !{ptr @tipc_crypto_do_cmd._entry.92, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tipc_crypto_do_cmd._entry_ptr.94, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/tipc/crypto.c", i32 2023, i32 3}
!216 = !{ptr @tipc_crypto_do_cmd._entry.95, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tipc_crypto_do_cmd._entry_ptr.97, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/tipc/crypto.c", i32 2030, i32 36}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/tipc/crypto.c", i32 2031, i32 2}
!222 = !{ptr @tipc_crypto_do_cmd._entry.99, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @tipc_crypto_do_cmd._entry_ptr.101, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/tipc/crypto.c", i32 2035, i32 2}
!226 = !{ptr @tipc_crypto_do_cmd._entry.102, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @tipc_crypto_do_cmd._entry_ptr.104, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/tipc/crypto.c", i32 2037, i32 26}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/tipc/crypto.c", i32 2041, i32 37}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/tipc/crypto.c", i32 2043, i32 3}
!234 = !{ptr @tipc_crypto_do_cmd._entry.107, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @tipc_crypto_do_cmd._entry_ptr.109, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/tipc/crypto.c", i32 2044, i32 27}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/tipc/crypto.c", i32 2044, i32 35}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/tipc/crypto.c", i32 2050, i32 27}
!242 = !{ptr @tipc_crypto_do_cmd._entry.113, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../net/tipc/crypto.c", i32 2058, i32 4}
!244 = !{ptr @tipc_crypto_do_cmd._entry_ptr.114, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../net/tipc/crypto.c", i32 2064, i32 2}
!247 = !{ptr @tipc_crypto_do_cmd._entry.115, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tipc_crypto_do_cmd._entry_ptr.117, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../net/tipc/crypto.c", i32 2080, i32 9}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../net/tipc/crypto.c", i32 2082, i32 9}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/tipc/crypto.c", i32 2089, i32 9}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/tipc/crypto.c", i32 2093, i32 36}
!257 = distinct !{null, !258, !"__warned", i1 false, i1 false}
!258 = !{!"../net/tipc/crypto.c", i32 2096, i32 10}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../net/tipc/crypto.c", i32 2099, i32 12}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/tipc/crypto.c", i32 2101, i32 42}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../net/tipc/crypto.c", i32 2101, i32 48}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/tipc/crypto.c", i32 2105, i32 36}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/tipc/crypto.c", i32 2109, i32 36}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../net/tipc/crypto.c", i32 84, i32 41}
!271 = !{ptr @.str.128, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/tipc/crypto.c", i32 84, i32 47}
!273 = !{ptr @.str.129, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/tipc/crypto.c", i32 84, i32 54}
!275 = !{ptr @.str.130, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/tipc/crypto.c", i32 84, i32 63}
!277 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/tipc/crypto.c", i32 85, i32 6}
!279 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../net/tipc/crypto.c", i32 85, i32 19}
!281 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../net/tipc/crypto.c", i32 85, i32 30}
!283 = !{ptr @.str.134, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../net/tipc/crypto.c", i32 86, i32 6}
!285 = distinct !{null, !286, !"hstats", i1 false, i1 false}
!286 = !{!"../net/tipc/crypto.c", i32 84, i32 20}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../net/tipc/crypto.c", i32 2285, i32 3}
!289 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug446, !288, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!291 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/tipc/crypto.c", i32 2294, i32 3}
!294 = !{ptr @tipc_crypto_key_rcv.__UNIQUE_ID_ddebug447, !293, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!295 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/tipc/crypto.c", i32 2300, i32 3}
!298 = !{ptr @tipc_crypto_key_rcv._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @tipc_crypto_key_rcv._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.142, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/tipc/crypto.c", i32 2308, i32 3}
!302 = !{ptr @tipc_crypto_key_rcv._entry.141, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @tipc_crypto_key_rcv._entry_ptr.143, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.144, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/tipc/crypto.c", i32 2360, i32 4}
!306 = !{ptr @.str.145, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @tipc_crypto_work_rx._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @tipc_crypto_work_rx._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.147, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../net/tipc/crypto.c", i32 2374, i32 4}
!311 = !{ptr @tipc_crypto_work_rx._entry.146, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @tipc_crypto_work_rx._entry_ptr.148, !310, !"_entry_ptr", i1 false, i1 false}
!313 = distinct !{null, !314, !"__warned", i1 false, i1 false}
!314 = !{!"../net/tipc/crypto.c", i32 2445, i32 9}
!315 = !{ptr @tipc_crypto_work_tx._rs, !316, !"_rs", i1 false, i1 false}
!316 = !{!"../net/tipc/crypto.c", i32 2466, i32 3}
!317 = !{ptr @__func__.tipc_crypto_work_tx, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.149, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @tipc_crypto_work_tx._entry, !316, !"_entry", i1 false, i1 false}
!320 = !{ptr @tipc_crypto_work_tx._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!321 = !{!"sp"}
!322 = !{i32 1, !"wchar_size", i32 2}
!323 = !{i32 1, !"min_enum_size", i32 4}
!324 = !{i32 8, !"branch-target-enforcement", i32 0}
!325 = !{i32 8, !"sign-return-address", i32 0}
!326 = !{i32 8, !"sign-return-address-all", i32 0}
!327 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 2}
!330 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!331 = !{!"branch_weights", i32 1, i32 2000}
!332 = !{!"branch_weights", i32 2000, i32 1}
!333 = !{i64 2156673834}
!334 = !{i64 2148334537}
!335 = !{i64 2148249001, i64 2148249033, i64 2148249062, i64 2148249096, i64 2148249127, i64 2148249150}
!336 = !{i64 2148945150}
!337 = !{i64 2156572758}
!338 = !{i64 2156573867}
!339 = !{i64 2148504846}
!340 = !{i64 751774, i64 751791, i64 751815, i64 751841, i64 751859}
!341 = !{i64 2148505216}
!342 = !{i64 2150029263}
!343 = !{i64 2150029529}
!344 = !{i64 2148244425}
!345 = !{i64 656507, i64 656532, i64 656554, i64 656570, i64 656582, i64 656602, i64 656626, i64 656642, i64 656654}
!346 = !{i64 2148244613}
!347 = !{i64 2148803415, i64 2148803420, i64 2148803433, i64 2148803477, i64 2148803511, i64 2148803532}
!348 = !{i64 2148346829}
!349 = !{i64 656001, i64 656025, i64 656046, i64 656063, i64 656080}
!350 = !{i64 2148347055}
!351 = !{i64 698333, i64 698394}
!352 = !{i64 701065}
!353 = !{i64 701350}
!354 = !{i64 2156598111}
!355 = !{i64 2156600844}
!356 = !{!"auto-init"}
!357 = !{i64 2156609056, i64 2156609538, i64 2156609093, i64 2156609149, i64 2156609183, i64 2156609207, i64 2156609248, i64 2156609269, i64 2156609297, i64 2156609331}
!358 = !{i64 2156701953}
!359 = !{i64 2156710332}
!360 = !{i64 2156718595}
!361 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!362 = !{i64 2156963529}
