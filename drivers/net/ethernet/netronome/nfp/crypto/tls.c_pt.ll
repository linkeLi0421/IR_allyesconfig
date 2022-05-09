; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/crypto/tls.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/crypto/tls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.42 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.42 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tlsdev_ops = type { ptr, ptr, ptr }
%struct.nfp_net_tls_resync_req = type { [2 x i32], i32, i8, i8, [2 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.184, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.184 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.140, [0 x i32], %union.anon.141, i16, i16, %union.anon.142, %struct.refcount_struct, [0 x i32], %union.anon.143 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { %struct.hlist_node }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.144, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.145, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.146, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.144 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.145 = type { ptr }
%union.anon.146 = type { ptr }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.206, %struct.anon.207, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.44 }
%union.anon.44 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.206 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.207 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.tls_offload_context_rx = type { %struct.tls_sw_context_rx, i32, i8, %union.anon.210, [0 x i8] }
%struct.tls_sw_context_rx = type { ptr, %struct.crypto_wait, %struct.strparser, %struct.sk_buff_head, ptr, ptr, i8, i8, %struct.atomic_t, %struct.spinlock, i8 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.210 = type { %struct.anon.211 }
%struct.anon.211 = type { %struct.atomic64_t }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.201, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.190, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.190 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.201 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.nfp_crypto_req_reset = type { %struct.nfp_ccm_hdr, i32 }
%struct.nfp_ccm_hdr = type { %union.anon.214 }
%union.anon.214 = type { i32 }
%struct.nfp_crypto_reply_simple = type { %struct.nfp_ccm_hdr, i32 }
%struct.nfp_crypto_req_add_front = type <{ %struct.nfp_ccm_hdr, i32, [3 x i8], i8, i8, i16, i8, [0 x i8] }>
%struct.nfp_crypto_req_add_v6 = type { %struct.nfp_crypto_req_add_front, [4 x i32], [4 x i32], %struct.nfp_crypto_req_add_back }
%struct.nfp_crypto_req_add_back = type { i16, i16, [8 x i32], i32, [2 x i32], i32, [2 x i32], i32 }
%struct.nfp_crypto_req_add_v4 = type { %struct.nfp_crypto_req_add_front, i32, i32, %struct.nfp_crypto_req_add_back }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.nfp_crypto_reply_add = type { %struct.nfp_ccm_hdr, i32, [2 x i32] }
%struct.tls_offload_context_tx = type { ptr, %struct.spinlock, %struct.list_head, ptr, ptr, i64, i64, [17 x %struct.scatterlist], ptr, [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nfp_crypto_req_del = type { %struct.nfp_ccm_hdr, i32, [2 x i32] }
%struct.nfp_crypto_req_update = type { %struct.nfp_ccm_hdr, i32, [3 x i8], i8, [2 x i32], [2 x i32], i32 }
%struct.nfp_net_tls_offload_ctx = type { [2 x i32], [0 x i8], i32 }

@nfp_net_tls_rx_resync_req.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"invalid TLS RX resync request (l3_off: %hhu l4_off: %hhu pkt_len: %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@nfp_net_tls_rx_resync_req.__print_once.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"invalid TLS RX resync request (l3_off: %hhu l4_off: %hhu ipver: %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"disabling TLS offload - mbox too small: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@nfp_net_tls_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 574, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ctrl: disabling TLS offload - mbox too small: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfp_net_tls_init\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/netronome/nfp/crypto/tls.c\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_net_tls_init._entry_ptr = internal global ptr @nfp_net_tls_init._entry, section ".printk_index", align 4
@nfp_net_tls_ops = internal constant { %struct.tlsdev_ops, [20 x i8] } { %struct.tlsdev_ops { ptr @nfp_net_tls_add, ptr @nfp_net_tls_del, ptr @nfp_net_tls_resync }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to %s TLS: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nfp_net_tls_communicate_simple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 121, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp_net_tls_communicate_simple\00", [33 x i8] zeroinitializer }, align 32
@nfp_net_tls_communicate_simple._entry_ptr = internal global ptr @nfp_net_tls_communicate_simple._entry, section ".printk_index", align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to %s TLS, fw replied: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_net_tls_communicate_simple._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.11, ptr @.str.7, i32 129, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nfp_net_tls_communicate_simple._entry_ptr.14 = internal global ptr @nfp_net_tls_communicate_simple._entry.13, section ".printk_index", align 4
@nfp_net_tls_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfp_net_tls_add.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add TLS: %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 363, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfp_net_tls_add\00", [16 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry_ptr = internal global ptr @nfp_net_tls_add._entry, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HW TLS table full\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.7, i32 372, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ctrl: HW TLS table full\0A\00", [39 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry_ptr.22 = internal global ptr @nfp_net_tls_add._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to add TLS, FW replied: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.7, i32 375, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry_ptr.25 = internal global ptr @nfp_net_tls_add._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FW returned NULL handle\0A\00", [39 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.7, i32 381, ptr @.str, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@nfp_net_tls_add._entry_ptr.28 = internal global ptr @nfp_net_tls_add._entry.27, section ".printk_index", align 4
@nfp_tls_1_2_dir_to_opcode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"delete\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 28]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 489, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 510, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 573, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"nfp_net_tls_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 465, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 556, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 121, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 128, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 362, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 372, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 374, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 381, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 148, i32 42 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [51 x i8] c"../drivers/net/ethernet/netronome/nfp/crypto/tls.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 450, i32 49 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @nfp_net_tls_add._entry, ptr @nfp_net_tls_add._entry.20, ptr @nfp_net_tls_add._entry.24, ptr @nfp_net_tls_add._entry.27, ptr @nfp_net_tls_add._entry_ptr, ptr @nfp_net_tls_add._entry_ptr.22, ptr @nfp_net_tls_add._entry_ptr.25, ptr @nfp_net_tls_add._entry_ptr.28, ptr @nfp_net_tls_communicate_simple._entry, ptr @nfp_net_tls_communicate_simple._entry.13, ptr @nfp_net_tls_communicate_simple._entry_ptr, ptr @nfp_net_tls_communicate_simple._entry_ptr.14, ptr @nfp_net_tls_init._entry, ptr @nfp_net_tls_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nfp_net_tls_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_communicate_simple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_communicate_simple._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_add._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_tls_add._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_tls_rx_resync_req(ptr noundef %netdev, ptr noundef %req, ptr noundef %pkt, i32 noundef %pkt_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %l3_offset = getelementptr inbounds %struct.nfp_net_tls_resync_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %l3_offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %l3_offset, align 4
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %pkt, i32 %conv
  %l4_offset = getelementptr inbounds %struct.nfp_net_tls_resync_req, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %l4_offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %l4_offset, align 1
  %conv4 = zext i8 %3 to i32
  %add.ptr5 = getelementptr i8, ptr %pkt, i32 %conv4
  %arrayidx = getelementptr %struct.tcphdr, ptr %add.ptr5, i32 1
  %add.ptr6 = getelementptr i8, ptr %pkt, i32 %pkt_len
  %cmp = icmp ugt ptr %arrayidx, %add.ptr6
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %.b99 = load i1, ptr @nfp_net_tls_rx_resync_req.__print_once, align 1
  br i1 %.b99, label %do.body.err_cnt_ign_crit_edge, label %if.then8

do.body.err_cnt_ign_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cnt_ign

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_tls_rx_resync_req.__print_once, align 1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str, ptr noundef %netdev, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv4, i32 noundef %pkt_len) #9
  br label %err_cnt_ign

if.end13:                                         ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %conv14 = zext i8 %bf.lshr to i32
  %5 = zext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv14, label %do.body25 [
    i32 4, label %sw.bb
    i32 6, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 8
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %10 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr5, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 9
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr5, i32 0, i32 1
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest, align 2
  %ifindex = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  %call.i = tail call ptr @__inet_lookup_established(ptr noundef %7, ptr noundef nonnull @tcp_hashinfo, i32 noundef %9, i16 noundef zeroext %11, i32 noundef %13, i16 noundef zeroext %15, i32 noundef %17, i32 noundef 0) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %nd_net.i101 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 127
  %18 = ptrtoint ptr %nd_net.i101 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nd_net.i101, align 4
  %saddr19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 5
  %20 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr5, align 4
  %daddr21 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 6
  %dest22 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr5, i32 0, i32 1
  %22 = ptrtoint ptr %dest22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dest22, align 2
  %ifindex23 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex23, align 4
  %call24 = tail call ptr @__inet6_lookup_established(ptr noundef %19, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr19, i16 noundef zeroext %21, ptr noundef %daddr21, i16 noundef zeroext %23, i32 noundef %25, i32 noundef 0) #6
  br label %sw.epilog

do.body25:                                        ; preds = %if.end13
  %.b9798 = load i1, ptr @nfp_net_tls_rx_resync_req.__print_once.2, align 1
  br i1 %.b9798, label %do.body25.err_cnt_ign_crit_edge, label %if.then27

do.body25.err_cnt_ign_crit_edge:                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cnt_ign

if.then27:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_tls_rx_resync_req.__print_once.2, align 1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str, ptr noundef %netdev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv14) #9
  br label %err_cnt_ign

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb
  %sk.0 = phi ptr [ %call24, %sw.bb17 ], [ %call.i, %sw.bb ]
  %tobool38.not = icmp eq ptr %sk.0, null
  br i1 %tobool38.not, label %sw.epilog.err_cnt_ign_crit_edge, label %if.end40

sw.epilog.err_cnt_ign_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cnt_ign

if.end40:                                         ; preds = %sw.epilog
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0, i32 0, i32 4
  %26 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %27 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end40.err_put_sock_crit_edge, label %lor.lhs.false.i

if.end40.err_put_sock_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_sock

lor.lhs.false.i:                                  ; preds = %if.end40
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %sk.0, i32 0, i32 82
  %28 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sk_destruct.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !66
  %cmp.not.i = icmp eq ptr %29, @tls_device_sk_destruct
  br i1 %cmp.not.i, label %tls_is_sk_rx_device_offloaded.exit, label %lor.lhs.false.i.err_put_sock_crit_edge

lor.lhs.false.i.err_put_sock_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_sock

tls_is_sk_rx_device_offloaded.exit:               ; preds = %lor.lhs.false.i
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk.0, i32 0, i32 13
  %30 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %rx_conf.i = getelementptr inbounds %struct.tls_context, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rx_conf.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %rx_conf.i, align 4
  %33 = and i8 %bf.load.i, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp6.i = icmp eq i8 %33, 8
  br i1 %cmp6.i, label %lor.lhs.false, label %tls_is_sk_rx_device_offloaded.exit.err_put_sock_crit_edge

tls_is_sk_rx_device_offloaded.exit.err_put_sock_crit_edge: ; preds = %tls_is_sk_rx_device_offloaded.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_sock

lor.lhs.false:                                    ; preds = %tls_is_sk_rx_device_offloaded.exit
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk.0, i32 0, i32 66
  %34 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sk_shutdown, align 2
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool43.not = icmp eq i8 %36, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false.err_put_sock_crit_edge

lor.lhs.false.err_put_sock_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_sock

if.end45:                                         ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %call47 = tail call ptr @memchr_inv(ptr noundef %req, i32 noundef 0, i32 noundef 8) #6
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end45.if.end54_crit_edge, label %land.lhs.true

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end45
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %40, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %req, ptr noundef dereferenceable(8) %driver_state2.i.i, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool52.not = icmp eq i32 %bcmp, 0
  br i1 %tobool52.not, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true.err_put_sock_crit_edge

land.lhs.true.err_put_sock_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_sock

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %tcp_seq55 = getelementptr inbounds %struct.nfp_net_tls_resync_req, ptr %req, i32 0, i32 1
  %41 = ptrtoint ptr %tcp_seq55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %tcp_seq.0.copyload = load i32, ptr %tcp_seq55, align 4
  %42 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %46 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %45, i32 0, i32 3
  %conv.i = zext i32 %tcp_seq.0.copyload to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %or.i = or i64 %shl.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %46, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %46, i64 noundef %or.i) #6
  %ktls_rx_resync_req = getelementptr i8, ptr %netdev, i32 60948
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_rx_resync_req, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ktls_rx_resync_req, i32 1, i32 3, i32 1) #6
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ktls_rx_resync_req, ptr %ktls_rx_resync_req, i32 1, ptr elementtype(i32) %ktls_rx_resync_req) #6, !srcloc !67
  tail call void @sock_gen_put(ptr noundef nonnull %sk.0) #6
  br label %cleanup

err_put_sock:                                     ; preds = %land.lhs.true.err_put_sock_crit_edge, %lor.lhs.false.err_put_sock_crit_edge, %tls_is_sk_rx_device_offloaded.exit.err_put_sock_crit_edge, %lor.lhs.false.i.err_put_sock_crit_edge, %if.end40.err_put_sock_crit_edge
  tail call void @sock_gen_put(ptr noundef nonnull %sk.0) #6
  br label %err_cnt_ign

err_cnt_ign:                                      ; preds = %err_put_sock, %sw.epilog.err_cnt_ign_crit_edge, %if.then27, %do.body25.err_cnt_ign_crit_edge, %if.then8, %do.body.err_cnt_ign_crit_edge
  %err.0 = phi i32 [ 0, %err_put_sock ], [ 0, %sw.epilog.err_cnt_ign_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body.err_cnt_ign_crit_edge ], [ -22, %if.then27 ], [ -22, %do.body25.err_cnt_ign_crit_edge ]
  %ktls_rx_resync_ign = getelementptr i8, ptr %netdev, i32 60952
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_rx_resync_ign, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ktls_rx_resync_ign, i32 1, i32 3, i32 1) #6
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ktls_rx_resync_ign, ptr %ktls_rx_resync_ign, i32 1, ptr elementtype(i32) %ktls_rx_resync_ign) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %err_cnt_ign, %if.end54
  %retval.0 = phi i32 [ %err.0, %err_cnt_ign ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_net_tls_init(ptr noundef %nn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %crypto_ops = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 5
  %2 = ptrtoint ptr %crypto_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crypto_ops, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_cmsg_types = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 4
  %4 = ptrtoint ptr %mbox_cmsg_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbox_cmsg_types, align 4
  %and3 = and i32 %5, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 7680
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call zeroext i1 @nfp_ccm_mbox_fits(ptr noundef %nn, i32 noundef 112) #6
  br i1 %call, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev1, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %mbox_len = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %8 = ptrtoint ptr %mbox_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mbox_len, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str, ptr noundef nonnull %7, ptr noundef nonnull @.str.4, i32 noundef %9) #9
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nn, align 128
  %mbox_len16 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 2
  %12 = ptrtoint ptr %mbox_len16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox_len16, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %13) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %call.i.i = tail call ptr @nfp_ccm_mbox_msg_alloc(ptr noundef %nn, i32 noundef 8, i32 noundef 8, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %nfp_net_tls_reset.exit

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nfp_net_tls_reset.exit:                           ; preds = %if.end18
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %ep_id.i = getelementptr inbounds %struct.nfp_crypto_req_reset, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ep_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ep_id.i, align 4
  %call1.i = tail call fastcc i32 @nfp_net_tls_communicate_simple(ptr noundef %nn, ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.9, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool20.not = icmp eq i32 %call1.i, 0
  br i1 %tobool20.not, label %if.end22, label %nfp_net_tls_reset.exit.cleanup_crit_edge

nfp_net_tls_reset.exit.cleanup_crit_edge:         ; preds = %nfp_net_tls_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %nfp_net_tls_reset.exit
  %bar_lock.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 33
  tail call void @down(ptr noundef %bar_lock.i) #6
  %crypto_enable_off = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 6
  %17 = ptrtoint ptr %crypto_enable_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crypto_enable_off, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %19 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !69
  %call24 = tail call i32 @__nfp_net_reconfig(ptr noundef %nn, i32 noundef 16384) #6
  tail call void @up(ptr noundef %bar_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %21 = ptrtoint ptr %crypto_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crypto_ops, align 4
  %and30 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end34_crit_edge, label %if.then32

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hw_features, align 8
  %or = or i64 %24, 18014398509481984
  store i64 %or, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %25 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features, align 16
  %or33 = or i64 %26, 18014398509481984
  store i64 %or33, ptr %features, align 16
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end27.if.end34_crit_edge
  %27 = ptrtoint ptr %crypto_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crypto_ops, align 4
  %and37 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.if.end44_crit_edge, label %if.then39

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %hw_features40 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %hw_features40 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %hw_features40, align 8
  %or41 = or i64 %30, 9007199254740992
  store i64 %or41, ptr %hw_features40, align 8
  %features42 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %31 = ptrtoint ptr %features42 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %features42, align 16
  %or43 = or i64 %32, 9007199254740992
  store i64 %or43, ptr %features42, align 16
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end34.if.end44_crit_edge
  %tlsdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 48
  %33 = ptrtoint ptr %tlsdev_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nfp_net_tls_ops, ptr %tlsdev_ops, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end22.cleanup_crit_edge, %nfp_net_tls_reset.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then10 ], [ %call1.i, %nfp_net_tls_reset.exit.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ccm_mbox_fits(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_net_reconfig(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_device_sk_destruct(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_tls_communicate_simple(ptr noundef %nn, ptr noundef %skb, ptr noundef %name, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %type)
  %cmp = icmp eq i32 %type, 11
  %call = tail call i32 @__nfp_ccm_mbox_communicate(ptr noundef %nn, ptr noundef %skb, i32 noundef %type, i32 noundef 8, i32 noundef 8, i1 noundef zeroext %cmp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then5, !prof !70

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %netdev = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %call) #9
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %call) #9
  br label %cleanup

if.end10:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %error = getelementptr inbounds %struct.nfp_crypto_reply_simple, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  %sub = sub i32 0, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end10.if.end35_crit_edge, label %if.then12

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then12:                                        ; preds = %if.end10
  %call15 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.if.end35_crit_edge, label %if.then23, !prof !70

if.then12.if.end35_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then23:                                        ; preds = %if.then12
  %netdev24 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 1
  %8 = ptrtoint ptr %netdev24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev24, align 4
  %tobool25.not = icmp eq ptr %9, null
  br i1 %tobool25.not, label %do.end31, label %if.then26

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %sub) #9
  br label %if.end35

do.end31:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %nn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nn, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %sub) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %if.then26, %if.then12.if.end35_crit_edge, %if.end10.if.end35_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end35 ], [ %call, %if.then7 ], [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_ccm_mbox_msg_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_ccm_mbox_communicate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_tls_add(ptr noundef %netdev, ptr noundef %sk, i32 noundef %direction, ptr nocapture noundef readonly %crypto_info, i32 noundef %start_offload_tcp_sn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cipher_type = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info, i32 0, i32 1
  %0 = ptrtoint ptr %cipher_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cipher_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %1)
  %cond.i = icmp eq i16 %1, 51
  br i1 %cond.i, label %nfp_net_cipher_supported.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nfp_net_cipher_supported.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp ne i32 %direction, 1
  %..i = zext i1 %cmp.i to i32
  %crypto_ops.i = getelementptr i8, ptr %netdev, i32 60904
  %2 = ptrtoint ptr %crypto_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crypto_ops.i, align 4
  %shl.i = shl nuw nsw i32 1, %..i
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %nfp_net_cipher_supported.exit.cleanup_crit_edge, label %if.end

nfp_net_cipher_supported.exit.cleanup_crit_edge:  ; preds = %nfp_net_cipher_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nfp_net_cipher_supported.exit
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %5, label %if.end.cleanup_crit_edge [
    i16 10, label %sw.bb
    i16 2, label %if.end.sw.bb12_crit_edge
  ]

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %8 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #6
  %and.i385 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i385)
  %cmp.not = icmp eq i32 %and.i385, 4096
  br i1 %cmp.not, label %lor.lhs.false.sw.bb12_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.sw.bb12_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.bb12:                                          ; preds = %lor.lhs.false.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %req_sz.0 = phi i32 [ 88, %sw.bb12 ], [ 112, %lor.lhs.false.sw.epilog_crit_edge ], [ 112, %sw.bb.sw.epilog_crit_edge ]
  %ipv6.0.off0 = phi i1 [ false, %sw.bb12 ], [ true, %lor.lhs.false.sw.epilog_crit_edge ], [ true, %sw.bb.sw.epilog_crit_edge ]
  %call.i386 = tail call fastcc i32 @nfp_net_tls_conn_cnt_changed(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %direction) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %tobool14.not = icmp eq i32 %call.i386, 0
  br i1 %tobool14.not, label %if.end16, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %call17 = tail call ptr @nfp_ccm_mbox_msg_alloc(ptr noundef %add.ptr.i, i32 noundef %req_sz.0, i32 noundef 16, i32 noundef 3264) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.err_conn_remove_crit_edge, label %if.end20

if.end16.err_conn_remove_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_conn_remove

if.end20:                                         ; preds = %if.end16
  %data = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %ep_id = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ep_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ep_id, align 4
  %key_len = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %key_len, align 4
  %13 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %direction, label %land.end.i [
    i32 1, label %if.end20.nfp_tls_1_2_dir_to_opcode.exit_crit_edge
    i32 0, label %sw.bb1.i
  ]

if.end20.nfp_tls_1_2_dir_to_opcode.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_tls_1_2_dir_to_opcode.exit

sw.bb1.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_tls_1_2_dir_to_opcode.exit

land.end.i:                                       ; preds = %if.end20
  %.b36.i = load i1, ptr @nfp_tls_1_2_dir_to_opcode.__already_done, align 1
  br i1 %.b36.i, label %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, label %if.then.i, !prof !70

land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_tls_1_2_dir_to_opcode.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_tls_1_2_dir_to_opcode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 238, i32 noundef 9, ptr noundef null) #6
  br label %nfp_tls_1_2_dir_to_opcode.exit

nfp_tls_1_2_dir_to_opcode.exit:                   ; preds = %if.then.i, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, %sw.bb1.i, %if.end20.nfp_tls_1_2_dir_to_opcode.exit_crit_edge
  %retval.0.i387 = phi i8 [ 1, %sw.bb1.i ], [ 0, %if.end20.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ]
  %opcode = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 3
  %14 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i387, ptr %opcode, align 1
  %resv = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 2
  %15 = call ptr @memset(ptr %resv, i32 0, i32 3)
  %or.i = select i1 %ipv6.0.off0, i16 28671, i16 20479
  %ipver_vlan.i = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %ipver_vlan.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %or.i, ptr %ipver_vlan.i, align 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  br i1 %ipv6.0.off0, label %if.then27, label %if.else

if.then27:                                        ; preds = %nfp_tls_1_2_dir_to_opcode.exit
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %20 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then27.inet6_sk.exit.i_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %21 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then27.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %22, %cond.true.i.i ], [ null, %if.then27.inet6_sk.exit.i_crit_edge ]
  %key_len.i = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %key_len.i, align 4
  %add.i = add i8 %24, 32
  store i8 %add.i, ptr %key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i389 = icmp eq i32 %direction, 1
  br i1 %cmp.i389, label %if.then.i390, label %if.else.i

if.then.i390:                                     ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_conn_id_gen.i.i = getelementptr i8, ptr %netdev, i32 60936
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_conn_id_gen.i.i, i32 noundef 8) #6
  %call.i2.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %ktls_conn_id_gen.i.i) #6
  %25 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %key_len.i, align 4
  %conv.i.i = zext i8 %26 to i32
  %l3_addrs.i.i = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %18, i32 0, i32 7
  %27 = ptrtoint ptr %l3_addrs.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %call.i2.i.i.i, ptr %l3_addrs.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.nfp_crypto_req_add_front, ptr %18, i32 1, i32 2
  %sub3.i.i = add nsw i32 %conv.i.i, -16
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub3.i.i)
  br label %nfp_net_tls_set_ipv6.exit

if.else.i:                                        ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %src_ip.i = getelementptr inbounds %struct.nfp_crypto_req_add_v6, ptr %18, i32 0, i32 1
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %29 = call ptr @memcpy(ptr %src_ip.i, ptr %skc_v6_daddr.i, i32 16)
  %dst_ip.i = getelementptr inbounds %struct.nfp_crypto_req_add_v6, ptr %18, i32 0, i32 2
  %30 = call ptr @memcpy(ptr %dst_ip.i, ptr %cond.i.i, i32 16)
  br label %nfp_net_tls_set_ipv6.exit

nfp_net_tls_set_ipv6.exit:                        ; preds = %if.else.i, %if.then.i390
  %back.i = getelementptr inbounds %struct.nfp_crypto_req_add_v6, ptr %18, i32 0, i32 3
  br label %if.end30

if.else:                                          ; preds = %nfp_tls_1_2_dir_to_opcode.exit
  %key_len.i391 = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %18, i32 0, i32 4
  %31 = ptrtoint ptr %key_len.i391 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %key_len.i391, align 4
  %add.i392 = add i8 %32, 8
  store i8 %add.i392, ptr %key_len.i391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i393 = icmp eq i32 %direction, 1
  br i1 %cmp.i393, label %if.then.i401, label %if.else.i404

if.then.i401:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_conn_id_gen.i.i394 = getelementptr i8, ptr %netdev, i32 60936
  %call.i.i.i.i395 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_conn_id_gen.i.i394, i32 noundef 8) #6
  %call.i2.i.i.i396 = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %ktls_conn_id_gen.i.i394) #6
  %33 = ptrtoint ptr %key_len.i391 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %key_len.i391, align 4
  %conv.i.i397 = zext i8 %34 to i32
  %l3_addrs.i.i398 = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %18, i32 0, i32 7
  %35 = ptrtoint ptr %l3_addrs.i.i398 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %call.i2.i.i.i396, ptr %l3_addrs.i.i398, align 4
  %add.ptr.i.i399 = getelementptr %struct.nfp_crypto_req_add_front, ptr %18, i32 1, i32 2
  %sub3.i.i400 = add nsw i32 %conv.i.i397, -16
  %36 = call ptr @memset(ptr %add.ptr.i.i399, i32 0, i32 %sub3.i.i400)
  br label %nfp_net_tls_set_ipv4.exit

if.else.i404:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk, align 8
  %src_ip.i402 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, ptr %18, i32 0, i32 1
  %39 = ptrtoint ptr %src_ip.i402 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %src_ip.i402, align 4
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %40 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inet_saddr.i, align 4
  %dst_ip.i403 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, ptr %18, i32 0, i32 2
  %42 = ptrtoint ptr %dst_ip.i403 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dst_ip.i403, align 4
  br label %nfp_net_tls_set_ipv4.exit

nfp_net_tls_set_ipv4.exit:                        ; preds = %if.else.i404, %if.then.i401
  %back.i405 = getelementptr inbounds %struct.nfp_crypto_req_add_v4, ptr %18, i32 0, i32 3
  br label %if.end30

if.end30:                                         ; preds = %nfp_net_tls_set_ipv4.exit, %nfp_net_tls_set_ipv6.exit
  %back.0 = phi ptr [ %back.i, %nfp_net_tls_set_ipv6.exit ], [ %back.i405, %nfp_net_tls_set_ipv4.exit ]
  %l4_proto.i = getelementptr inbounds %struct.nfp_crypto_req_add_front, ptr %10, i32 0, i32 6
  %43 = ptrtoint ptr %l4_proto.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 6, ptr %l4_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i406 = icmp eq i32 %direction, 1
  br i1 %cmp.i406, label %if.then.i407, label %if.else.i408

if.then.i407:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %back.0 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %back.0, align 4
  br label %nfp_net_tls_set_l4.exit

if.else.i408:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %45 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 4
  %48 = ptrtoint ptr %back.0 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %back.0, align 4
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %49 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inet_sport.i, align 8
  br label %nfp_net_tls_set_l4.exit

nfp_net_tls_set_l4.exit:                          ; preds = %if.else.i408, %if.then.i407
  %.sink.i = phi i16 [ 0, %if.then.i407 ], [ %50, %if.else.i408 ]
  %51 = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink.i, ptr %51, align 2
  %counter = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 5
  %53 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %counter, align 4
  %tcp_seq = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 7
  %54 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %start_offload_tcp_sn, ptr %tcp_seq, align 4
  %key = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 2
  %key32 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 2
  %55 = call ptr @memcpy(ptr %key, ptr %key32, i32 16)
  %arrayidx = getelementptr %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 2, i32 4
  %56 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  %iv = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 4
  %iv36 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 1
  %57 = ptrtoint ptr %iv36 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %iv36, align 2
  %59 = ptrtoint ptr %iv to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %iv, align 4
  %salt = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 3
  %salt38 = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 3
  %60 = ptrtoint ptr %salt38 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %salt38, align 2
  %62 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %salt, align 4
  %rec_no = getelementptr inbounds %struct.nfp_crypto_req_add_back, ptr %back.0, i32 0, i32 6
  %rec_seq = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 4
  %63 = ptrtoint ptr %rec_seq to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %rec_seq, align 2
  %65 = ptrtoint ptr %rec_no to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %rec_no, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #6
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #6, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %nfp_net_tls_set_l4.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

nfp_net_tls_set_l4.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %nfp_net_tls_set_l4.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %nfp_net_tls_set_l4.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %67 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !70

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %nfp_net_tls_set_l4.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %nfp_net_tls_set_l4.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #6
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call43 = tail call i32 @nfp_ccm_mbox_communicate(ptr noundef %add.ptr.i, ptr noundef nonnull %call17, i32 noundef 10, i32 noundef 16, i32 noundef 16) #6
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 18
  %70 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head, align 8
  %cmp45 = icmp ult ptr %back.0, %71
  br i1 %cmp45, label %skb_get.exit.land.rhs_crit_edge, label %lor.rhs

skb_get.exit.land.rhs_crit_edge:                  ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

lor.rhs:                                          ; preds = %skb_get.exit
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 17
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp48 = icmp ugt ptr %back.0, %73
  br i1 %cmp48, label %lor.rhs.land.rhs_crit_edge, label %land.lhs.true.critedge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %skb_get.exit.land.rhs_crit_edge
  %.b381 = load i1, ptr @nfp_net_tls_add.__already_done, align 1
  br i1 %.b381, label %land.rhs.if.end151_crit_edge, label %if.then58, !prof !70

land.rhs.if.end151_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then58:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_tls_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 356, i32 noundef 9, ptr noundef null) #6
  br label %if.end151

land.lhs.true.critedge:                           ; preds = %lor.rhs
  %arrayidx93 = getelementptr %struct.nfp_crypto_reply_add, ptr %69, i32 1
  %cmp94 = icmp ugt ptr %arrayidx93, %back.0
  br i1 %cmp94, label %land.rhs103, label %if.then150.critedge

land.rhs103:                                      ; preds = %land.lhs.true.critedge
  %.b379380 = load i1, ptr @nfp_net_tls_add.__already_done.15, align 1
  br i1 %.b379380, label %land.rhs103.if.end151_crit_edge, label %if.then114, !prof !70

land.rhs103.if.end151_crit_edge:                  ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.then114:                                       ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_net_tls_add.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 357, i32 noundef 9, ptr noundef null) #6
  br label %if.end151

if.then150.critedge:                              ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %74 = call ptr @memset(ptr %back.0, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %back.0) #6, !srcloc !73
  br label %if.end151

if.end151:                                        ; preds = %if.then150.critedge, %if.then114, %land.rhs103.if.end151_crit_edge, %if.then58, %land.rhs.if.end151_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call17, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool152.not = icmp eq i32 %call43, 0
  br i1 %tobool152.not, label %if.end177, label %if.then153

if.then153:                                       ; preds = %if.end151
  %call154 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then153.err_conn_remove_crit_edge, label %if.then162, !prof !70

if.then153.err_conn_remove_crit_edge:             ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_conn_remove

if.then162:                                       ; preds = %if.then153
  %netdev163 = getelementptr i8, ptr %netdev, i32 2308
  %75 = ptrtoint ptr %netdev163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev163, align 4
  %tobool164.not = icmp eq ptr %76, null
  br i1 %tobool164.not, label %do.end172, label %if.then165

if.then165:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %conv168 = zext i1 %cmp.i406 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %76, ptr noundef nonnull @.str.16, i32 noundef %call43, i32 noundef %conv168) #9
  br label %err_conn_remove

do.end172:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  %conv174 = zext i1 %cmp.i406 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.16, i32 noundef %call43, i32 noundef %conv174) #9
  br label %err_conn_remove

if.end177:                                        ; preds = %if.end151
  %error = getelementptr inbounds %struct.nfp_crypto_reply_add, ptr %69, i32 0, i32 1
  %79 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %error, align 4
  %sub = sub i32 0, %80
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %80, label %if.else200 [
    i32 0, label %if.end224
    i32 28, label %if.then182
  ]

if.then182:                                       ; preds = %if.end177
  %ktls_no_space = getelementptr i8, ptr %netdev, i32 60944
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_no_space, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %ktls_no_space, i32 1, i32 3, i32 1) #6
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ktls_no_space, ptr %ktls_no_space, i32 1, ptr elementtype(i32) %ktls_no_space) #6, !srcloc !71
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool184.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool184.not, label %if.then185, label %if.then182.err_free_skb_crit_edge

if.then182.err_free_skb_crit_edge:                ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_skb

if.then185:                                       ; preds = %if.then182
  %netdev187 = getelementptr i8, ptr %netdev, i32 2308
  %83 = ptrtoint ptr %netdev187 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %netdev187, align 4
  %tobool188.not = icmp eq ptr %84, null
  br i1 %tobool188.not, label %do.end195, label %if.then189

if.then189:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %84, ptr noundef nonnull @.str.19) #9
  br label %err_free_skb

do.end195:                                        ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 128
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %86, ptr noundef nonnull @.str.21) #9
  br label %err_free_skb

if.else200:                                       ; preds = %if.end177
  %call203 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.else200.err_free_skb_crit_edge, label %if.then211, !prof !70

if.else200.err_free_skb_crit_edge:                ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_skb

if.then211:                                       ; preds = %if.else200
  %netdev212 = getelementptr i8, ptr %netdev, i32 2308
  %87 = ptrtoint ptr %netdev212 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %netdev212, align 4
  %tobool213.not = icmp eq ptr %88, null
  br i1 %tobool213.not, label %do.end219, label %if.then214

if.then214:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %88, ptr noundef nonnull @.str.23, i32 noundef %sub) #9
  br label %err_free_skb

do.end219:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.23, i32 noundef %sub) #9
  br label %err_free_skb

if.end224:                                        ; preds = %if.end177
  %handle = getelementptr inbounds %struct.nfp_crypto_reply_add, ptr %69, i32 0, i32 2
  %91 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool226.not = icmp eq i32 %92, 0
  br i1 %tobool226.not, label %land.lhs.true227, label %if.end224.if.end254_crit_edge

if.end224.if.end254_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

land.lhs.true227:                                 ; preds = %if.end224
  %arrayidx229 = getelementptr %struct.nfp_crypto_reply_add, ptr %69, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool230.not = icmp eq i32 %94, 0
  br i1 %tobool230.not, label %if.then231, label %land.lhs.true227.if.end254_crit_edge

land.lhs.true227.if.end254_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254

if.then231:                                       ; preds = %land.lhs.true227
  %call234 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then231.if.end253_crit_edge, label %if.then242, !prof !70

if.then231.if.end253_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end253

if.then242:                                       ; preds = %if.then231
  %netdev243 = getelementptr i8, ptr %netdev, i32 2308
  %95 = ptrtoint ptr %netdev243 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev243, align 4
  %tobool244.not = icmp eq ptr %96, null
  br i1 %tobool244.not, label %do.end250, label %if.then245

if.then245:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %96, ptr noundef nonnull @.str.26) #9
  br label %if.end253

do.end250:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.26) #9
  br label %if.end253

if.end253:                                        ; preds = %do.end250, %if.then245, %if.then231.if.end253_crit_edge
  tail call fastcc void @nfp_net_tls_del_fw(ptr noundef %add.ptr.i, ptr noundef %handle)
  br label %err_free_skb

if.end254:                                        ; preds = %land.lhs.true227.if.end254_crit_edge, %if.end224.if.end254_crit_edge
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %99 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  br i1 %cmp.i406, label %if.then261, label %if.end266.critedge

if.then261:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #8
  %priv_ctx_tx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %priv_ctx_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv_ctx_tx.i.i.i, align 4
  %driver_state.i.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %handle to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %handle, align 4
  %105 = ptrtoint ptr %driver_state.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 %104, ptr %driver_state.i.i, align 4
  %next_seq = getelementptr inbounds %struct.tls_offload_context_tx, ptr %102, i32 1, i32 1, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %next_seq to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %start_offload_tcp_sn, ptr %next_seq, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call17, i32 noundef 0) #6
  br label %cleanup

if.end266.critedge:                               ; preds = %if.end254
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %100, i32 0, i32 5
  %107 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %handle to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %handle, align 4
  %111 = ptrtoint ptr %driver_state2.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 8)
  store i64 %110, ptr %driver_state2.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call17, i32 noundef 0) #6
  %tls_resync_ss = getelementptr i8, ptr %netdev, i32 60920
  %112 = ptrtoint ptr %tls_resync_ss to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load267 = load i8, ptr %tls_resync_ss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load267)
  %tobool269.not = icmp sgt i8 %bf.load267, -1
  br i1 %tobool269.not, label %if.then270, label %if.end266.critedge.cleanup_crit_edge

if.end266.critedge.cleanup_crit_edge:             ; preds = %if.end266.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then270:                                       ; preds = %if.end266.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %resync_type.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %resync_type.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %resync_type.i, align 8
  br label %cleanup

err_free_skb:                                     ; preds = %if.end253, %do.end219, %if.then214, %if.else200.err_free_skb_crit_edge, %do.end195, %if.then189, %if.then182.err_free_skb_crit_edge
  %err.0 = phi i32 [ -28, %if.then182.err_free_skb_crit_edge ], [ -22, %if.end253 ], [ -28, %do.end195 ], [ -28, %if.then189 ], [ %sub, %if.then214 ], [ %sub, %do.end219 ], [ %sub, %if.else200.err_free_skb_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call17, i32 noundef 0) #6
  br label %err_conn_remove

err_conn_remove:                                  ; preds = %err_free_skb, %do.end172, %if.then165, %if.then153.err_conn_remove_crit_edge, %if.end16.err_conn_remove_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_skb ], [ -12, %if.end16.err_conn_remove_crit_edge ], [ %call43, %if.then165 ], [ %call43, %do.end172 ], [ %call43, %if.then153.err_conn_remove_crit_edge ]
  %call.i410 = tail call fastcc i32 @nfp_net_tls_conn_cnt_changed(ptr noundef %add.ptr.i, i32 noundef -1, i32 noundef %direction) #6
  br label %cleanup

cleanup:                                          ; preds = %err_conn_remove, %if.then270, %if.end266.critedge.cleanup_crit_edge, %if.then261, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nfp_net_cipher_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_conn_remove ], [ 0, %if.then261 ], [ -95, %nfp_net_cipher_supported.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call.i386, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then270 ], [ 0, %if.end266.critedge.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_net_tls_del(ptr noundef %netdev, ptr nocapture noundef readonly %tls_ctx, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call.i = tail call fastcc i32 @nfp_net_tls_conn_cnt_changed(ptr noundef %add.ptr.i, i32 noundef -1, i32 noundef %direction) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 4
  %0 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %driver_state.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %1, i32 0, i32 9
  br label %__tls_driver_ctx.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %driver_state2.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %3, i32 0, i32 4
  br label %__tls_driver_ctx.exit

__tls_driver_ctx.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %driver_state.i, %if.then.i ], [ %driver_state2.i, %if.else.i ]
  %call.i.i = tail call ptr @nfp_ccm_mbox_msg_alloc(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 8, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %__tls_driver_ctx.exit.nfp_net_tls_del_fw.exit_crit_edge, label %if.end.i

__tls_driver_ctx.exit.nfp_net_tls_del_fw.exit_crit_edge: ; preds = %__tls_driver_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_net_tls_del_fw.exit

if.end.i:                                         ; preds = %__tls_driver_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %ep_id.i = getelementptr inbounds %struct.nfp_crypto_req_del, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ep_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ep_id.i, align 4
  %handle.i = getelementptr inbounds %struct.nfp_crypto_req_del, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %retval.0.i, align 4
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %handle.i, align 4
  %call1.i = tail call fastcc i32 @nfp_net_tls_communicate_simple(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.29, i32 noundef 11) #6
  br label %nfp_net_tls_del_fw.exit

nfp_net_tls_del_fw.exit:                          ; preds = %if.end.i, %__tls_driver_ctx.exit.nfp_net_tls_del_fw.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_net_tls_resync(ptr noundef %netdev, ptr nocapture noundef readonly %sk, i32 noundef %seq, ptr nocapture noundef readonly %rcd_sn, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, i32 3264, i32 2592
  %call.i = tail call ptr @nfp_ccm_mbox_msg_alloc(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 8, i32 noundef %cond) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  br i1 %cmp, label %tls_driver_ctx.exit.thread, label %tls_driver_ctx.exit

tls_driver_ctx.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %priv_ctx_tx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv_ctx_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_tx.i.i.i, align 4
  %driver_state.i.i = getelementptr inbounds %struct.tls_offload_context_tx, ptr %3, i32 0, i32 9
  %data44 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data44, align 4
  %ep_id45 = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ep_id45 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ep_id45, align 4
  br label %nfp_tls_1_2_dir_to_opcode.exit

tls_driver_ctx.exit:                              ; preds = %if.end
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %8, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %ep_id = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ep_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ep_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cond47 = icmp eq i32 %direction, 0
  br i1 %cond47, label %tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, label %land.end.i

tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge: ; preds = %tls_driver_ctx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_tls_1_2_dir_to_opcode.exit

land.end.i:                                       ; preds = %tls_driver_ctx.exit
  %.b36.i = load i1, ptr @nfp_tls_1_2_dir_to_opcode.__already_done, align 1
  br i1 %.b36.i, label %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, label %if.then.i, !prof !70

land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_tls_1_2_dir_to_opcode.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nfp_tls_1_2_dir_to_opcode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 238, i32 noundef 9, ptr noundef null) #6
  br label %nfp_tls_1_2_dir_to_opcode.exit

nfp_tls_1_2_dir_to_opcode.exit:                   ; preds = %if.then.i, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, %tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge, %tls_driver_ctx.exit.thread
  %12 = phi ptr [ %10, %if.then.i ], [ %10, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ], [ %5, %tls_driver_ctx.exit.thread ], [ %10, %tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ]
  %retval.0.i.i46 = phi ptr [ %driver_state2.i.i, %if.then.i ], [ %driver_state2.i.i, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ], [ %driver_state.i.i, %tls_driver_ctx.exit.thread ], [ %driver_state2.i.i, %tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ]
  %retval.0.i = phi i8 [ 0, %if.then.i ], [ 0, %land.end.i.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ], [ 0, %tls_driver_ctx.exit.thread ], [ 1, %tls_driver_ctx.exit.nfp_tls_1_2_dir_to_opcode.exit_crit_edge ]
  %opcode = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %opcode, align 1
  %resv = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %12, i32 0, i32 2
  %14 = call ptr @memset(ptr %resv, i32 0, i32 3)
  %handle = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %retval.0.i.i46 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %retval.0.i.i46, align 4
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %handle, align 4
  %tcp_seq = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %12, i32 0, i32 6
  %18 = ptrtoint ptr %tcp_seq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %seq, ptr %tcp_seq, align 4
  %rec_no = getelementptr inbounds %struct.nfp_crypto_req_update, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %rcd_sn, align 1
  %21 = ptrtoint ptr %rec_no to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %rec_no, align 4
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %nfp_tls_1_2_dir_to_opcode.exit
  %call9 = tail call fastcc i32 @nfp_net_tls_communicate_simple(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.30, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %next_seq = getelementptr inbounds %struct.nfp_net_tls_offload_ctx, ptr %retval.0.i.i46, i32 0, i32 2
  %22 = ptrtoint ptr %next_seq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %seq, ptr %next_seq, align 4
  br label %cleanup

if.else:                                          ; preds = %nfp_tls_1_2_dir_to_opcode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %tls_resync_ss = getelementptr i8, ptr %netdev, i32 60920
  %23 = ptrtoint ptr %tls_resync_ss to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %tls_resync_ss, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool13.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool13.not, i32 12, i32 13
  %call16 = tail call i32 @nfp_ccm_mbox_post(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i, i32 noundef %spec.select, i32 noundef 8) #6
  %ktls_rx_resync_sent = getelementptr i8, ptr %netdev, i32 60956
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ktls_rx_resync_sent, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ktls_rx_resync_sent, i32 1, i32 3, i32 1) #6
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ktls_rx_resync_sent, ptr %ktls_rx_resync_sent, i32 1, ptr elementtype(i32) %ktls_rx_resync_sent) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end12, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ccm_mbox_communicate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_net_tls_del_fw(ptr noundef %nn, ptr nocapture noundef readonly %fw_handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @nfp_ccm_mbox_msg_alloc(ptr noundef %nn, i32 noundef 16, i32 noundef 8, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ep_id = getelementptr inbounds %struct.nfp_crypto_req_del, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ep_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ep_id, align 4
  %handle = getelementptr inbounds %struct.nfp_crypto_req_del, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %fw_handle to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %fw_handle, align 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %handle, align 4
  %call1 = tail call fastcc i32 @nfp_net_tls_communicate_simple(ptr noundef %nn, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.29, i32 noundef 11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_tls_conn_cnt_changed(ptr noundef %nn, i32 noundef %add, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bar_lock.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 33
  tail call void @down(ptr noundef %bar_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_tx_conn_cnt.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 44
  %0 = ptrtoint ptr %ktls_tx_conn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ktls_tx_conn_cnt.i, align 4
  %add1.i = add i32 %1, %add
  store i32 %add1.i, ptr %ktls_tx_conn_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %tobool.not.i = icmp eq i32 %add1.i, 0
  %ktls_tx.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 2
  %2 = ptrtoint ptr %ktls_tx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ktls_tx.i, align 8
  %bf.shl.i = select i1 %tobool.not.i, i8 0, i8 32
  %bf.clear.i = and i8 %bf.load.i, -33
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %ktls_tx.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_rx_conn_cnt.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 45
  %3 = ptrtoint ptr %ktls_rx_conn_cnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ktls_rx_conn_cnt.i, align 128
  %add5.i = add i32 %4, %add
  store i32 %add5.i, ptr %ktls_rx_conn_cnt.i, align 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %opcode.0.i = phi i32 [ 0, %if.then.i ], [ 1, %if.else.i ]
  %cnt.0.i = phi i32 [ %add1.i, %if.then.i ], [ %add5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.0.i)
  %cmp7.i = icmp sgt i32 %cnt.0.i, 1
  br i1 %cmp7.i, label %if.end.i.if.end4_crit_edge, label %if.then

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.i)
  %tobool11.not.i = icmp eq i32 %cnt.0.i, 0
  %crypto_enable_off.i.i = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 43, i32 6
  %5 = ptrtoint ptr %crypto_enable_off.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %crypto_enable_off.i.i, align 4
  %ctrl_bar.i.i.i = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 11
  %7 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !76
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %shl.i.i = shl nuw nsw i32 1, %opcode.0.i
  %or.i.i = or i32 %10, %shl.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and6.i.i = and i32 %10, %neg.i.i
  %val.0.i.i = select i1 %tobool11.not.i, i32 %and6.i.i, i32 %or.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #6
  %12 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %13, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %11) #6, !srcloc !69
  %call1 = tail call i32 @__nfp_net_reconfig(ptr noundef %nn, i32 noundef 16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.then
  br i1 %cmp.i, label %if.then.i21, label %if.else.i24

if.then.i21:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_tx_conn_cnt.i13 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 44
  %14 = ptrtoint ptr %ktls_tx_conn_cnt.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ktls_tx_conn_cnt.i13, align 4
  %add1.i14 = sub i32 %15, %add
  store i32 %add1.i14, ptr %ktls_tx_conn_cnt.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i14)
  %tobool.not.i15 = icmp eq i32 %add1.i14, 0
  %ktls_tx.i16 = getelementptr inbounds %struct.nfp_net_dp, ptr %nn, i32 0, i32 2
  %16 = ptrtoint ptr %ktls_tx.i16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i17 = load i8, ptr %ktls_tx.i16, align 8
  %bf.shl.i18 = select i1 %tobool.not.i15, i8 0, i8 32
  %bf.clear.i19 = and i8 %bf.load.i17, -33
  %bf.set.i20 = or i8 %bf.clear.i19, %bf.shl.i18
  store i8 %bf.set.i20, ptr %ktls_tx.i16, align 8
  br label %if.end.i28

if.else.i24:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %ktls_rx_conn_cnt.i22 = getelementptr inbounds %struct.nfp_net, ptr %nn, i32 0, i32 45
  %17 = ptrtoint ptr %ktls_rx_conn_cnt.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ktls_rx_conn_cnt.i22, align 128
  %add5.i23 = sub i32 %18, %add
  store i32 %add5.i23, ptr %ktls_rx_conn_cnt.i22, align 128
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.else.i24, %if.then.i21
  %opcode.0.i25 = phi i32 [ 0, %if.then.i21 ], [ 1, %if.else.i24 ]
  %cnt.0.i26 = phi i32 [ %add1.i14, %if.then.i21 ], [ %add5.i23, %if.else.i24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.0.i26)
  %cmp7.i27 = icmp sgt i32 %cnt.0.i26, 1
  br i1 %cmp7.i27, label %if.end.i28.if.end4_crit_edge, label %if.end10.i39

if.end.i28.if.end4_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end10.i39:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.i26)
  %tobool11.not.i29 = icmp eq i32 %cnt.0.i26, 0
  %19 = ptrtoint ptr %crypto_enable_off.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crypto_enable_off.i.i, align 4
  %21 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i.i.i32 = getelementptr i8, ptr %22, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i32) #6, !srcloc !76
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %shl.i.i33 = shl nuw nsw i32 1, %opcode.0.i25
  %or.i.i34 = or i32 %24, %shl.i.i33
  %neg.i.i35 = xor i32 %shl.i.i33, -1
  %and6.i.i36 = and i32 %24, %neg.i.i35
  %val.0.i.i37 = select i1 %tobool11.not.i29, i32 %and6.i.i36, i32 %or.i.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i37) #6
  %26 = ptrtoint ptr %ctrl_bar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_bar.i.i.i, align 4
  %add.ptr.i15.i.i38 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i38, i32 %25) #6, !srcloc !69
  br label %if.end4

if.end4:                                          ; preds = %if.end10.i39, %if.end.i28.if.end4_crit_edge, %if.then.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.if.end4_crit_edge ], [ 0, %if.end.i.if.end4_crit_edge ], [ %call1, %if.end.i28.if.end4_crit_edge ], [ %call1, %if.end10.i39 ]
  tail call void @up(ptr noundef %bar_lock.i) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_ccm_mbox_post(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{null, !1, !"__print_once", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 489, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__print_once", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 510, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 573, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfp_net_tls_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfp_net_tls_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 556, i32 49}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 121, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfp_net_tls_communicate_simple._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfp_net_tls_communicate_simple._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 128, i32 3}
!24 = !{ptr @nfp_net_tls_communicate_simple._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_net_tls_communicate_simple._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nfp_net_tls_ops, !27, !"nfp_net_tls_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 465, i32 32}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 355, i32 7}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 357, i32 7}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 362, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nfp_net_tls_add._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfp_net_tls_add._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 372, i32 5}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfp_net_tls_add._entry.20, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_net_tls_add._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 374, i32 4}
!45 = !{ptr @nfp_net_tls_add._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfp_net_tls_add._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 381, i32 3}
!49 = !{ptr @nfp_net_tls_add._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nfp_net_tls_add._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 238, i32 3}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 148, i32 42}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/crypto/tls.c", i32 450, i32 49}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2158785098}
!67 = !{i64 2148469394, i64 2148469420, i64 2148469449, i64 2148469483, i64 2148469514, i64 2148469537}
!68 = !{i64 2159199882}
!69 = !{i64 6117288}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148470924, i64 2148470956, i64 2148470985, i64 2148471019, i64 2148471050, i64 2148471073}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2149502475}
!74 = !{i64 2148556325}
!75 = !{i64 2148556553}
!76 = !{i64 6117706}
!77 = !{i64 2159199495}
