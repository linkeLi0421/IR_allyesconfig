; ModuleID = '/llk/IR_all_yes/net/ipv4/ah4.c_pt.bc'
source_filename = "../net/ipv4/ah4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfrm4_protocol = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.130, %union.anon.131, [48 x i8], %union.anon.132, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.134, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.130 = type { ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.136, i32, i32, i32, i16, i16, %union.anon.138, i32, %union.anon.139, %union.anon.140, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.136 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.151 }
%union.anon.151 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.127, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.128, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.127 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.128 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.ah_data = type { i32, i32, ptr }
%struct.xfrm_algo_auth = type { [64 x i8], i32, i32, [0 x i8] }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.158, %struct.sadb_alg }
%union.anon.158 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }
%struct.xfrm_algo_auth_info = type { i16, i16 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.154, ptr, ptr, ptr, ptr, %union.anon.155, [120 x i8] }
%union.anon.154 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.155 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.164, i32, i32, i8, i8 }
%struct.anon.164 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }

@ah4_protocol = internal global { %struct.xfrm4_protocol, [40 x i8] } { %struct.xfrm4_protocol { ptr @xfrm4_rcv, ptr @xfrm_input, ptr @ah4_rcv_cb, ptr @ah4_err, ptr null, i32 0 }, [40 x i8] zeroinitializer }, align 32
@ah4_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016IPsec: %s: can't remove protocol\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ah4_fini\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv4/ah4.c\00", [17 x i8] zeroinitializer }, align 32
@ah4_fini._entry_ptr = internal global ptr @ah4_fini._entry, section ".printk_index", align 4
@ah_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 51, i8 2, ptr @ah_init_state, ptr @ah_destroy, ptr @ah_input, ptr @ah_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ah4__508_596_ah4_init6 = internal global ptr @ah4_init, section ".initcall6.init", align 4
@__exitcall_ah4_fini = internal global ptr @ah4_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file509 = internal constant [22 x i8] c"ah4.file=net/ipv4/ah4\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [16 x i8] c"ah4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias511 = internal constant [25 x i8] c"ah4.alias=xfrm-type-2-51\00", section ".modinfo", align 1
@ah_init_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016IPsec: %s: %s digestsize %u != %hu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ah_init_state\00", [18 x i8] zeroinitializer }, align 32
@ah_init_state._entry_ptr = internal global ptr @ah_init_state._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ah4_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016IPsec: %s: can't add xfrm type\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ah4_init\00", [23 x i8] zeroinitializer }, align 32
@ah4_init._entry_ptr = internal global ptr @ah4_init._entry, section ".printk_index", align 4
@ah4_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016IPsec: %s: can't add protocol\0A\00", [63 x i8] zeroinitializer }, align 32
@ah4_init._entry_ptr.10 = internal global ptr @ah4_init._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 8, i64 130, i64 131, i64 133, i64 134, i64 137, i64 148, i64 149]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 8, i64 130, i64 131, i64 133, i64 134, i64 137, i64 148, i64 149]
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"ah4_protocol\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 567, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 592, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"ah_type\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 556, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 510, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1719, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 578, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [18 x i8] c"../net/ipv4/ah4.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 582, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias511, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_ah4_fini, ptr @__initcall__kmod_ah4__508_596_ah4_init6, ptr @ah4_fini, ptr @ah4_fini._entry, ptr @ah4_fini._entry_ptr, ptr @ah4_init._entry, ptr @ah4_init._entry.8, ptr @ah4_init._entry_ptr, ptr @ah4_init._entry_ptr.10, ptr @ah_init_state._entry, ptr @ah_init_state._entry_ptr, ptr @ah4_protocol, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ah_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah4_protocol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah4_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah_init_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah4_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah4_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ah4_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @xfrm4_protocol_deregister(ptr noundef nonnull @ah4_protocol, i8 noundef zeroext 51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah_type, i16 noundef zeroext 2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_deregister(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ah4_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_register_type(ptr noundef nonnull @ah_type, i16 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm4_protocol_register(ptr noundef nonnull @ah4_protocol, i8 noundef zeroext 51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #14
  tail call void @xfrm_unregister_type(ptr noundef nonnull @ah_type, i16 noundef zeroext 2) #11
  br label %return

return:                                           ; preds = %do.end6, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ -11, %do.end6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_rcv(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ah4_rcv_cb(ptr nocapture noundef readnone %skb, i32 noundef %err) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah4_err(ptr noundef %skb, i32 noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %6, align 4
  %bf.clear = shl i8 %bf.load, 2
  %8 = and i8 %bf.clear, 60
  %shl = zext i8 %8 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %shl
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 5, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp.not = icmp eq i8 %17, 4
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 9
  %spi = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr, i32 0, i32 3
  %21 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spi, align 4
  %call7 = tail call ptr @xfrm_state_lookup(ptr noundef %4, i32 noundef %20, ptr noundef %daddr, i32 noundef %22, i8 noundef zeroext 51, i16 noundef zeroext 2) #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i38 = zext i16 %26 to i32
  %add.ptr.i.i39 = getelementptr i8, ptr %24, i32 %conv.i.i38
  %27 = ptrtoint ptr %add.ptr.i.i39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp13 = icmp eq i8 %28, 3
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef 0, i8 noundef zeroext 51) #11
  br label %if.end16

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 51) #11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call7, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !45
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !47
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call7, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah_init_state(ptr nocapture noundef %x) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aalg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 16
  %0 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aalg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %2 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encap, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #15
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aalg, align 8
  %call8 = tail call ptr @crypto_alloc_ahash(ptr noundef %6, i32 noundef 0, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.if.then84_crit_edge, label %if.end11

if.end6.if.then84_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

if.end11:                                         ; preds = %if.end6
  %ahash12 = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ahash12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %ahash12, align 8
  %8 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aalg, align 8
  %alg_key = getelementptr inbounds %struct.xfrm_algo_auth, ptr %9, i32 0, i32 3
  %alg_key_len = getelementptr inbounds %struct.xfrm_algo_auth, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %alg_key_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alg_key_len, align 4
  %add = add i32 %11, 7
  %div118 = lshr i32 %add, 3
  %call16 = tail call i32 @crypto_ahash_setkey(ptr noundef %call8, ptr noundef %alg_key, i32 noundef %div118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end11.if.then84_crit_edge

if.end11.if.then84_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

if.end19:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aalg, align 8
  %call23 = tail call ptr @xfrm_aalg_get_byname(ptr noundef %13, i32 noundef 0) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.body29, label %do.end35, !prof !48

do.body29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ah4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #11, !srcloc !49
  unreachable

do.end35:                                         ; preds = %if.end19
  %uinfo = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call23, i32 0, i32 3
  %icv_fullbits = getelementptr inbounds %struct.xfrm_algo_auth_info, ptr %uinfo, i32 0, i32 1
  %14 = ptrtoint ptr %icv_fullbits to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %icv_fullbits, align 2
  %16 = lshr i16 %15, 3
  %div36 = zext i16 %16 to i32
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call8, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 -128
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %div36)
  %cmp.not = icmp eq i32 %20, %div36
  br i1 %cmp.not, label %if.end52, label %do.end42

do.end42:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aalg, align 8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %20, i32 noundef %div36) #14
  br label %if.then84

if.end52:                                         ; preds = %do.end35
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div36, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %aalg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aalg, align 8
  %alg_trunc_len = getelementptr inbounds %struct.xfrm_algo_auth, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %alg_trunc_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alg_trunc_len, align 4
  %div58119 = lshr i32 %27, 3
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div58119, ptr %icv_trunc_len, align 4
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 1
  %31 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool60.not = icmp eq i8 %31, 0
  %. = select i1 %tobool60.not, i32 19, i32 15
  %.126 = select i1 %tobool60.not, i32 1073741816, i32 1073741820
  %add69 = add nuw nsw i32 %div58119, %.
  %and70 = and i32 %add69, %.126
  %32 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and70, ptr %32, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp76 = icmp eq i8 %35, 1
  br i1 %cmp76, label %if.then78, label %if.end52.if.end82_crit_edge

if.end52.if.end82_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then78:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %32, align 4
  %add81 = add i32 %37, 20
  store i32 %add81, ptr %32, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end52.if.end82_crit_edge
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %data, align 8
  br label %cleanup

if.then84:                                        ; preds = %do.end42, %if.end11.if.then84_crit_edge, %if.end6.if.then84_crit_edge
  %ahash85 = getelementptr inbounds %struct.ah_data, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %ahash85 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ahash85, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %40, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %40, ptr noundef %base.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end82, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %if.then84 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah_destroy(ptr nocapture noundef readonly %x) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ahash = getelementptr inbounds %struct.ah_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahash, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah_input(ptr nocapture noundef readonly %x, ptr noundef %skb) #4 align 64 {
entry:
  %trailer = alloca ptr, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #11
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !50
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp3.i = icmp ult i32 %2, 12
  br i1 %cmp3.i, label %if.end.i.cleanup130_crit_edge, label %pskb_may_pull.exit, !prof !48

if.end.i.cleanup130_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup130_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_may_pull.exit.cleanup130_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1, align 8
  %ahash2 = getelementptr inbounds %struct.ah_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ahash2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ahash2, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %6, align 4
  %conv = zext i8 %12 to i32
  %hdrlen = getelementptr inbounds %struct.ip_auth_hdr, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hdrlen, align 1
  %conv4 = zext i8 %14 to i32
  %add = shl nuw nsw i32 %conv4, 2
  %shl = add nuw nsw i32 %add, 8
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %8, align 4
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %add8 = add i32 %19, 15
  %and9 = and i32 %add8, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and9)
  %cmp.not = icmp eq i32 %shl, %and9
  br i1 %cmp.not, label %if.then6.if.end33_crit_edge, label %land.lhs.true

if.then6.if.end33_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then6
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %icv_trunc_len, align 4
  %add12 = add i32 %21, 15
  %and13 = and i32 %add12, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and13)
  %cmp14.not = icmp eq i32 %shl, %and13
  br i1 %cmp14.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup130_crit_edge

land.lhs.true.cleanup130_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.else:                                          ; preds = %if.end
  %add20 = add i32 %19, 19
  %and21 = and i32 %add20, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and21)
  %cmp22.not = icmp eq i32 %shl, %and21
  br i1 %cmp22.not, label %if.else.if.end33_crit_edge, label %land.lhs.true24

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true24:                                  ; preds = %if.else
  %icv_trunc_len25 = getelementptr inbounds %struct.ah_data, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %icv_trunc_len25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %icv_trunc_len25, align 4
  %add27 = add i32 %23, 19
  %and28 = and i32 %add27, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and28)
  %cmp29.not = icmp eq i32 %shl, %and28
  br i1 %cmp29.not, label %land.lhs.true24.if.end33_crit_edge, label %land.lhs.true24.cleanup130_crit_edge

land.lhs.true24.cleanup130_crit_edge:             ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true24.if.end33_crit_edge, %if.else.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.then6.if.end33_crit_edge
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i238 = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub.i.i238)
  %cmp.not.i239 = icmp ugt i32 %shl, %sub.i.i238
  br i1 %cmp.not.i239, label %if.end.i241, label %if.end33.if.end36_crit_edge, !prof !48

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.i241:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shl)
  %cmp3.i240 = icmp ult i32 %25, %shl
  br i1 %cmp3.i240, label %if.end.i241.cleanup130_crit_edge, label %pskb_may_pull.exit247, !prof !48

if.end.i241.cleanup130_crit_edge:                 ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

pskb_may_pull.exit247:                            ; preds = %if.end.i241
  %sub.i242 = sub i32 %shl, %sub.i.i238
  %call13.i243 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i242) #11
  %cmp14.i244.not = icmp eq ptr %call13.i243, null
  br i1 %cmp14.i244.not, label %pskb_may_pull.exit247.cleanup130_crit_edge, label %pskb_may_pull.exit247.if.end36_crit_edge

pskb_may_pull.exit247.if.end36_crit_edge:         ; preds = %pskb_may_pull.exit247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

pskb_may_pull.exit247.cleanup130_crit_edge:       ; preds = %pskb_may_pull.exit247
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

if.end36:                                         ; preds = %pskb_may_pull.exit247.if.end36_crit_edge, %if.end33.if.end36_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %28 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end36.if.end40_crit_edge, label %skb_cloned.exit.i

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

skb_cloned.exit.i:                                ; preds = %if.end36
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end40_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.if.end40_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool38.not = icmp eq i32 %call7.i, 0
  br i1 %tobool38.not, label %skb_unclone.exit.if.end40_crit_edge, label %skb_unclone.exit.cleanup130_crit_edge

skb_unclone.exit.cleanup130_crit_edge:            ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

skb_unclone.exit.if.end40_crit_edge:              ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %skb_unclone.exit.if.end40_crit_edge, %skb_cloned.exit.i.if.end40_crit_edge, %if.end36.if.end40_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call41 = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %trailer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup130_crit_edge, label %if.end45

if.end40.cleanup130_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

if.end45:                                         ; preds = %if.end40
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %41 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags, align 1
  %44 = lshr i8 %43, 5
  %45 = and i8 %44, 4
  %46 = zext i8 %45 to i32
  %.lobit = lshr i8 %43, 7
  %47 = zext i8 %.lobit to i32
  %add56 = add nuw i32 %call41, %47
  %icv_trunc_len57 = getelementptr inbounds %struct.ah_data, ptr %8, i32 0, i32 1
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10, i32 3
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 8
  %48 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reqsize.i.i, align 32
  %add13.i = add i32 %49, 131
  %50 = ptrtoint ptr %icv_trunc_len57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %icv_trunc_len57, align 4
  %add58 = add i32 %51, 127
  %add59 = add i32 %add58, %mul.i
  %add.i = add i32 %add59, %46
  %52 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %53, i32 -128
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add3.i = add i32 %add.i, %55
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %57, -128
  %add6.i = add i32 %add3.i, %and.i
  %and10.i = and i32 %add6.i, -128
  %add14.i = add i32 %add13.i, %and10.i
  %and15.i = and i32 %add14.i, -4
  %mul.i249 = mul i32 %add56, 20
  %add16.i = add i32 %and15.i, %mul.i249
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #16
  %tobool61.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool61.not, label %if.end45.cleanup130_crit_edge, label %if.end63

if.end45.cleanup130_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

if.end63:                                         ; preds = %if.end45
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %mul.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %46
  %58 = ptrtoint ptr %icv_trunc_len57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %icv_trunc_len57, align 4
  %add.ptr.i250 = getelementptr i8, ptr %add.ptr.i, i32 %59
  %60 = ptrtoint ptr %add.ptr.i250 to i32
  %61 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i252 = getelementptr inbounds %struct.crypto_alg, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %cra_alignmask.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cra_alignmask.i.i.i252, align 4
  %add1.i = add i32 %64, %60
  %neg.i = xor i32 %64, -1
  %and.i253 = and i32 %add1.i, %neg.i
  %65 = inttoptr i32 %and.i253 to ptr
  %add.ptr.i.i.i.i255 = getelementptr i8, ptr %62, i32 -128
  %66 = ptrtoint ptr %add.ptr.i.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i.i.i255, align 128
  %add.ptr.i256 = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %add.ptr.i256 to i32
  %add.i257 = add i32 %68, 127
  %and.i258 = and i32 %add.i257, -128
  %69 = inttoptr i32 %and.i258 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %10, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i259 = getelementptr %struct.ahash_request, ptr %69, i32 1
  %71 = ptrtoint ptr %add.ptr.i259 to i32
  %72 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reqsize.i.i, align 32
  %add.i261 = add i32 %73, 3
  %add1.i262 = add i32 %add.i261, %71
  %and.i263 = and i32 %add1.i262, -4
  %74 = inttoptr i32 %and.i263 to ptr
  %add.ptr69 = getelementptr %struct.scatterlist, ptr %74, i32 %call41
  %75 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr.i.i, i32 %mul.i)
  %auth_data70 = getelementptr inbounds %struct.ip_auth_hdr, ptr %35, i32 0, i32 5
  %76 = load i32, ptr %icv_trunc_len57, align 4
  %77 = call ptr @memcpy(ptr %add.ptr.i, ptr %auth_data70, i32 %76)
  %78 = load i32, ptr %icv_trunc_len57, align 4
  %79 = call ptr @memset(ptr %auth_data70, i32 0, i32 %78)
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %ttl, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %tos, align 1
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %frag_off, align 2
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %83 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %41)
  %cmp75 = icmp ugt i8 %41, 20
  br i1 %cmp75, label %if.then77, label %if.end63.if.end82_crit_edge

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then77:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #11
  %call78 = call fastcc i32 @ip_clear_mutable_options(ptr noundef %add.ptr.i.i, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #11
  br i1 %tobool79.not, label %if.then77.if.end82_crit_edge, label %if.then77.out_free_crit_edge

if.then77.out_free_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.end82:                                         ; preds = %if.then77.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %call83 = call ptr @skb_push(ptr noundef %skb, i32 noundef %mul.i) #11
  call void @sg_init_table(ptr noundef %74, i32 noundef %add56) #11
  %84 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i.i, align 4
  %call85 = call i32 @skb_to_sgvec_nomark(ptr noundef %skb, ptr noundef %74, i32 noundef 0, i32 noundef %85) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end82.out_free_crit_edge, label %if.end91, !prof !48

if.end82.out_free_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end91:                                         ; preds = %if.end82
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %87)
  %tobool96.not = icmp sgt i8 %87, -1
  br i1 %tobool96.not, label %if.end91.if.end98_crit_edge, label %if.then97

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then97:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %hi = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %88 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hi, align 4
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %add.ptr, align 4
  call fastcc void @sg_set_buf(ptr noundef %add.ptr69, ptr noundef %add.ptr, i32 noundef %46)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end91.if.end98_crit_edge
  %91 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i.i, align 4
  %add100 = add i32 %92, %46
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 2
  %93 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %74, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 1
  %94 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add100, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %69, i32 0, i32 3
  %95 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %65, ptr %result3.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 1
  %96 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @ah_input_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 2
  %97 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %skb, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %69, i32 0, i32 4
  %98 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %flags4.i, align 4
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %99 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call9.i.i, ptr %tmp, align 4
  %call103 = call i32 @crypto_ahash_digest(ptr noundef %69) #11
  %100 = zext i32 %call103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call103, label %if.end98.out_free_crit_edge [
    i32 0, label %if.end110
    i32 -115, label %if.end98.cleanup130_crit_edge
  ]

if.end98.cleanup130_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup130

if.end98.out_free_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end110:                                        ; preds = %if.end98
  %101 = ptrtoint ptr %icv_trunc_len57 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %icv_trunc_len57, align 4
  %call.i = call i32 @__crypto_memneq(ptr noundef %65, ptr noundef %add.ptr.i, i32 noundef %102) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i264.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i264.not, label %if.end116, label %if.end110.out_free_crit_edge

if.end110.out_free_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end116:                                        ; preds = %if.end110
  %103 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %network_header.i.i, align 4
  %105 = trunc i32 %shl to i16
  %conv119 = add i16 %104, %105
  store i16 %conv119, ptr %network_header.i.i, align 4
  %106 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i.i, align 8
  %conv.i = zext i16 %conv119 to i32
  %add.ptr.i265 = getelementptr i8, ptr %107, i32 %conv.i
  %108 = call ptr @memcpy(ptr %add.ptr.i265, ptr %call9.i.i, i32 %mul.i)
  %add121 = add nuw nsw i32 %shl, %mul.i
  %109 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i.i, align 4
  %sub.i266 = sub i32 %110, %add121
  store i32 %sub.i266, ptr %len.i.i, align 4
  %111 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i266, i32 %112)
  %cmp.i = icmp ult i32 %sub.i266, %112
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !48

do.body4.i:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !51
  unreachable

__skb_pull.exit:                                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %add.ptr.i267 = getelementptr i8, ptr %114, i32 %add121
  store ptr %add.ptr.i267, ptr %data, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %115 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp125 = icmp eq i8 %116, 1
  %117 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i267 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %118 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i270 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %narrow = select i1 %cmp125, i8 0, i8 %41
  %conv1.i = zext i8 %narrow to i16
  %conv.i270.sink = sub i16 %conv.i270, %conv1.i
  %119 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i270.sink, ptr %transport_header.i, align 2
  br label %out_free

out_free:                                         ; preds = %__skb_pull.exit, %if.end110.out_free_crit_edge, %if.end98.out_free_crit_edge, %if.end82.out_free_crit_edge, %if.then77.out_free_crit_edge
  %err.0 = phi i32 [ %call78, %if.then77.out_free_crit_edge ], [ %call85, %if.end82.out_free_crit_edge ], [ -74, %if.end110.out_free_crit_edge ], [ %call103, %if.end98.out_free_crit_edge ], [ %conv, %__skb_pull.exit ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup130

cleanup130:                                       ; preds = %out_free, %if.end98.cleanup130_crit_edge, %if.end45.cleanup130_crit_edge, %if.end40.cleanup130_crit_edge, %skb_unclone.exit.cleanup130_crit_edge, %pskb_may_pull.exit247.cleanup130_crit_edge, %if.end.i241.cleanup130_crit_edge, %land.lhs.true24.cleanup130_crit_edge, %land.lhs.true.cleanup130_crit_edge, %pskb_may_pull.exit.cleanup130_crit_edge, %if.end.i.cleanup130_crit_edge
  %retval.0 = phi i32 [ -12, %land.lhs.true.cleanup130_crit_edge ], [ -12, %skb_unclone.exit.cleanup130_crit_edge ], [ %call41, %if.end40.cleanup130_crit_edge ], [ %err.0, %out_free ], [ -12, %pskb_may_pull.exit247.cleanup130_crit_edge ], [ -12, %land.lhs.true24.cleanup130_crit_edge ], [ -12, %pskb_may_pull.exit.cleanup130_crit_edge ], [ -12, %if.end45.cleanup130_crit_edge ], [ %call103, %if.end98.cleanup130_crit_edge ], [ -12, %if.end.i.cleanup130_crit_edge ], [ -12, %if.end.i241.cleanup130_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah_output(ptr nocapture noundef readonly %x, ptr noundef %skb) #4 align 64 {
entry:
  %trailer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer) #11
  %0 = ptrtoint ptr %trailer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer, align 4, !annotation !50
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  %ahash1 = getelementptr inbounds %struct.ah_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ahash1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ahash1, align 4
  %call = call i32 @skb_cow_data(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %trailer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call3 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #11
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i217 = zext i16 %14 to i32
  %add.ptr.i.i218 = getelementptr i8, ptr %12, i32 %conv.i.i217
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %18 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %18 to i32
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %21 = lshr i8 %20, 5
  %22 = and i8 %21, 4
  %23 = zext i8 %22 to i32
  %.lobit = lshr i8 %20, 7
  %24 = zext i8 %.lobit to i32
  %add = add nuw i32 %call, %24
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10, i32 3
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 8
  %25 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reqsize.i.i, align 32
  %add13.i = add i32 %26, 131
  %add8 = add nuw nsw i32 %mul.i, 127
  %27 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %28, i32 -128
  %29 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i = add i32 %add8, %30
  %add3.i = add i32 %add.i, %23
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %and.i = and i32 %32, -128
  %add6.i = add i32 %add3.i, %and.i
  %and10.i = and i32 %add6.i, -128
  %add14.i = add i32 %add13.i, %and10.i
  %and15.i = and i32 %add14.i, -4
  %mul.i219 = mul i32 %add, 20
  %add16.i = add i32 %and15.i, %mul.i219
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add16.i, i32 noundef 2592) #16
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end.out_crit_edge, label %if.end12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %mul.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %23
  %33 = ptrtoint ptr %add.ptr.i to i32
  %34 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i221 = getelementptr inbounds %struct.crypto_alg, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %cra_alignmask.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cra_alignmask.i.i.i221, align 4
  %add1.i = add i32 %37, %33
  %neg.i = xor i32 %37, -1
  %and.i222 = and i32 %add1.i, %neg.i
  %38 = inttoptr i32 %and.i222 to ptr
  %add.ptr.i.i.i.i224 = getelementptr i8, ptr %35, i32 -128
  %39 = ptrtoint ptr %add.ptr.i.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i.i224, align 128
  %add.ptr.i225 = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %add.ptr.i225 to i32
  %add.i226 = add i32 %41, 127
  %and.i227 = and i32 %add.i226, -128
  %42 = inttoptr i32 %and.i227 to ptr
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %add.ptr.i228 = getelementptr %struct.ahash_request, ptr %42, i32 1
  %44 = ptrtoint ptr %add.ptr.i228 to i32
  %45 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reqsize.i.i, align 32
  %add.i230 = add i32 %46, 3
  %add1.i231 = add i32 %add.i230, %44
  %and.i232 = and i32 %add1.i231, -4
  %47 = inttoptr i32 %and.i232 to ptr
  %add.ptr16 = getelementptr %struct.scatterlist, ptr %47, i32 %call
  %auth_data = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i218, i32 0, i32 5
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %2, i32 0, i32 1
  %48 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %icv_trunc_len, align 4
  %50 = call ptr @memset(ptr %auth_data, i32 0, i32 %49)
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %53 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i235 = zext i16 %54 to i32
  %add.ptr.i.i236 = getelementptr i8, ptr %52, i32 %conv.i.i235
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 1
  %55 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tos, align 1
  %tos18 = getelementptr inbounds %struct.iphdr, ptr %call9.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %tos18 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %tos18, align 1
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 5
  %58 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ttl, align 4
  %ttl19 = getelementptr inbounds %struct.iphdr, ptr %call9.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %ttl19 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %ttl19, align 8
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 4
  %61 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %frag_off, align 2
  %frag_off20 = getelementptr inbounds %struct.iphdr, ptr %call9.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %frag_off20 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %frag_off20, align 2
  %64 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %add.ptr.i.i236, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp22.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp22.not, label %if.end12.if.end37_crit_edge, label %if.then24

if.end12.if.end37_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then24:                                        ; preds = %if.end12
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 9
  %65 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %daddr, align 4
  %daddr25 = getelementptr inbounds %struct.iphdr, ptr %call9.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %daddr25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %daddr25, align 16
  %add.ptr26 = getelementptr %struct.iphdr, ptr %call9.i.i, i32 1
  %add.ptr27 = getelementptr %struct.iphdr, ptr %add.ptr.i.i236, i32 1
  %68 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load28 = load i8, ptr %add.ptr.i.i236, align 4
  %bf.clear29 = shl i8 %bf.load28, 2
  %69 = and i8 %bf.clear29, 60
  %mul = zext i8 %69 to i32
  %sub31 = add nsw i32 %mul, -20
  %70 = call ptr @memcpy(ptr %add.ptr26, ptr %add.ptr27, i32 %sub31)
  %bf.load.i237 = load i8, ptr %add.ptr.i.i236, align 4
  %bf.clear.i238 = shl i8 %bf.load.i237, 2
  %71 = and i8 %bf.clear.i238, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %71)
  %cmp39.i = icmp ugt i8 %71, 20
  br i1 %cmp39.i, label %while.body.preheader.i, label %if.then24.if.end37_crit_edge

if.then24.if.end37_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

while.body.preheader.i:                           ; preds = %if.then24
  %mul.i239 = zext i8 %71 to i32
  %sub.i = add nsw i32 %mul.i239, -20
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.preheader.i
  %l.043.i = phi i32 [ %l.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %optptr.040.i = phi ptr [ %incdec.ptr.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %add.ptr27, %while.body.preheader.i ]
  %72 = ptrtoint ptr %optptr.040.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %optptr.040.i, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %73, label %sw.epilog.i [
    i8 0, label %while.body.i.if.end37_crit_edge
    i8 1, label %sw.bb3.i
  ]

while.body.i.if.end37_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

sw.bb3.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %l.043.i, -1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %sw.epilog18.i, %sw.bb3.i
  %.sink.i = phi i32 [ 1, %sw.bb3.i ], [ %conv4.i, %sw.epilog18.i ]
  %l.0.be.i = phi i32 [ %dec.i, %sw.bb3.i ], [ %sub19.i, %sw.epilog18.i ]
  %incdec.ptr.i = getelementptr i8, ptr %optptr.040.i, i32 %.sink.i
  %cmp.i = icmp sgt i32 %l.0.be.i, 0
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.end37_crit_edge

while.cond.backedge.i.if.end37_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sw.epilog.i:                                      ; preds = %while.body.i
  %arrayidx.i = getelementptr i8, ptr %optptr.040.i, i32 1
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp5.i = icmp ult i8 %76, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %l.043.i, i32 %conv4.i)
  %cmp7.i = icmp ult i32 %l.043.i, %conv4.i
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %sw.epilog.i.out_free_crit_edge, label %if.end.i

sw.epilog.i.out_free_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end.i:                                         ; preds = %sw.epilog.i
  %77 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %73, label %if.end.i.sw.default.i_crit_edge [
    i8 -126, label %if.end.i.sw.epilog18.i_crit_edge
    i8 -123, label %if.end.i.sw.epilog18.i_crit_edge259
    i8 -122, label %if.end.i.sw.epilog18.i_crit_edge260
    i8 -108, label %if.end.i.sw.epilog18.i_crit_edge261
    i8 -107, label %if.end.i.sw.epilog18.i_crit_edge262
    i8 -125, label %if.end.i.sw.bb11.i_crit_edge
    i8 -119, label %if.end.i.sw.bb11.i_crit_edge263
  ]

if.end.i.sw.bb11.i_crit_edge263:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end.i.sw.bb11.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

if.end.i.sw.epilog18.i_crit_edge262:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.epilog18.i_crit_edge261:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.epilog18.i_crit_edge260:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.epilog18.i_crit_edge259:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.epilog18.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18.i

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

sw.bb11.i:                                        ; preds = %if.end.i.sw.bb11.i_crit_edge, %if.end.i.sw.bb11.i_crit_edge263
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %76)
  %cmp12.i = icmp ult i8 %76, 6
  br i1 %cmp12.i, label %sw.bb11.i.out_free_crit_edge, label %if.end15.i

sw.bb11.i.out_free_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end15.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr16.i = getelementptr i8, ptr %optptr.040.i, i32 -4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %conv4.i
  %78 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %add.ptr17.i, align 1
  %80 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %daddr, align 4
  br label %sw.default.i

sw.default.i:                                     ; preds = %if.end15.i, %if.end.i.sw.default.i_crit_edge
  %81 = call ptr @memset(ptr %optptr.040.i, i32 0, i32 %conv4.i)
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %sw.default.i, %if.end.i.sw.epilog18.i_crit_edge, %if.end.i.sw.epilog18.i_crit_edge259, %if.end.i.sw.epilog18.i_crit_edge260, %if.end.i.sw.epilog18.i_crit_edge261, %if.end.i.sw.epilog18.i_crit_edge262
  %sub19.i = sub nsw i32 %l.043.i, %conv4.i
  br label %while.cond.backedge.i

if.end37:                                         ; preds = %while.cond.backedge.i.if.end37_crit_edge, %while.body.i.if.end37_crit_edge, %if.then24.if.end37_crit_edge, %if.end12.if.end37_crit_edge
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %84 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %85 to i32
  %add.ptr.i241 = getelementptr i8, ptr %83, i32 %conv.i
  %86 = ptrtoint ptr %add.ptr.i241 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr.i241, align 1
  %88 = ptrtoint ptr %add.ptr.i.i218 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %add.ptr.i.i218, align 4
  %89 = load ptr, ptr %head.i.i, align 8
  %90 = load i16, ptr %mac_header.i, align 2
  %conv.i244 = zext i16 %90 to i32
  %add.ptr.i245 = getelementptr i8, ptr %89, i32 %conv.i244
  %91 = ptrtoint ptr %add.ptr.i245 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 51, ptr %add.ptr.i245, align 1
  %92 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %tos, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %93 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len, align 4
  %conv41 = trunc i32 %94 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 2
  %95 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv41, ptr %tot_len, align 2
  %96 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %frag_off, align 2
  %97 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %ttl, align 4
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 7
  %98 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %check, align 2
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags, align 1
  %101 = and i8 %100, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool48.not = icmp eq i8 %101, 0
  %102 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %icv_trunc_len, align 4
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %add52 = add i32 %103, 15
  %shr = lshr i32 %add52, 2
  %104 = trunc i32 %shr to i8
  %conv55 = add i8 %104, -2
  br label %if.end64

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %add58 = add i32 %103, 19
  %and59 = lshr i32 %add58, 2
  %105 = trunc i32 %and59 to i8
  %106 = add i8 %105, -2
  %conv62 = and i8 %106, -2
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then49
  %conv55.sink = phi i8 [ %conv62, %if.else ], [ %conv55, %if.then49 ]
  %107 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i218, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv55.sink, ptr %107, align 1
  %reserved = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i218, i32 0, i32 2
  %109 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %reserved, align 2
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %110 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %spi, align 4
  %spi65 = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i218, i32 0, i32 3
  %112 = ptrtoint ptr %spi65 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %spi65, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %113 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %seq, align 4
  %seq_no = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i218, i32 0, i32 4
  %115 = ptrtoint ptr %seq_no to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %seq_no, align 4
  call void @sg_init_table(ptr noundef %47, i32 noundef %add) #11
  %116 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len, align 4
  %call68 = call i32 @skb_to_sgvec_nomark(ptr noundef %skb, ptr noundef %47, i32 noundef 0, i32 noundef %117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end64.out_free_crit_edge, label %if.end74, !prof !48

if.end64.out_free_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end74:                                         ; preds = %if.end64
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %119)
  %tobool79.not = icmp sgt i8 %119, -1
  br i1 %tobool79.not, label %if.end74.if.end84_crit_edge, label %if.then80

if.end74.if.end84_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then80:                                        ; preds = %if.end74
  %hi = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %120 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hi, align 4
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %add.ptr, align 4
  %123 = ptrtoint ptr %add.ptr to i32
  %cmp.i246 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i246, label %land.lhs.true.i, label %if.then80.do.body5.i_crit_edge, !prof !46

if.then80.do.body5.i_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %124 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %124, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !46

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i247 = add i32 %123, 1073741824
  %shr.i = lshr i32 %sub.i247, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %125 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i248 = add i32 %125, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i248) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !48

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then80.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !52
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %126 = load ptr, ptr @mem_map, align 4
  %add.ptr.i249 = getelementptr %struct.page, ptr %126, i32 %shr.i
  %127 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr16, align 4
  %129 = ptrtoint ptr %add.ptr.i249 to i32
  %and2.i.i.i = and i32 %129, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i250 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i250, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !46

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !46

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !54
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i251 = and i32 %123, 4028
  %and.i.i.i = and i32 %128, 3
  %or.i.i.i = or i32 %and.i.i.i, %129
  %130 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i.i.i, ptr %add.ptr16, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %47, i32 %call, i32 1
  %131 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and.i251, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %47, i32 %call, i32 2
  %132 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %23, ptr %length.i.i, align 4
  br label %if.end84

if.end84:                                         ; preds = %sg_set_buf.exit, %if.end74.if.end84_crit_edge
  %133 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len, align 4
  %add86 = add i32 %134, %23
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %42, i32 0, i32 2
  %135 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %47, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %42, i32 0, i32 1
  %136 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add86, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %42, i32 0, i32 3
  %137 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %38, ptr %result3.i, align 32
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %42, i32 0, i32 1
  %138 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @ah_output_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %42, i32 0, i32 2
  %139 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %skb, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %42, i32 0, i32 4
  %140 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %flags4.i, align 4
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %141 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call9.i.i, ptr %tmp, align 4
  %call89 = call i32 @crypto_ahash_digest(ptr noundef %42) #11
  %142 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call89, label %if.end95 [
    i32 0, label %if.end100
    i32 -115, label %if.end84.out_crit_edge
  ]

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end95:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call89)
  %cmp96 = icmp eq i32 %call89, -28
  %spec.store.select = select i1 %cmp96, i32 1, i32 %call89
  br label %out_free

if.end100:                                        ; preds = %if.end84
  %143 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %icv_trunc_len, align 4
  %145 = call ptr @memcpy(ptr %auth_data, ptr %38, i32 %144)
  %146 = ptrtoint ptr %tos18 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %tos18, align 1
  %148 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %tos, align 1
  %149 = ptrtoint ptr %ttl19 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ttl19, align 8
  %151 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %ttl, align 4
  %152 = ptrtoint ptr %frag_off20 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %frag_off20, align 2
  %154 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %frag_off, align 2
  %155 = ptrtoint ptr %add.ptr.i.i236 to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load110 = load i8, ptr %add.ptr.i.i236, align 4
  %bf.clear111 = and i8 %bf.load110, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear111)
  %cmp113.not = icmp eq i8 %bf.clear111, 5
  br i1 %cmp113.not, label %if.end100.out_free_crit_edge, label %if.then115

if.end100.out_free_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then115:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %daddr116 = getelementptr inbounds %struct.iphdr, ptr %call9.i.i, i32 0, i32 9
  %156 = ptrtoint ptr %daddr116 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %daddr116, align 16
  %daddr117 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236, i32 0, i32 9
  %158 = ptrtoint ptr %daddr117 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %daddr117, align 4
  %add.ptr118 = getelementptr %struct.iphdr, ptr %add.ptr.i.i236, i32 1
  %add.ptr119 = getelementptr %struct.iphdr, ptr %call9.i.i, i32 1
  %bf.clear121 = shl i8 %bf.load110, 2
  %159 = and i8 %bf.clear121, 60
  %mul123 = zext i8 %159 to i32
  %sub124 = add nsw i32 %mul123, -20
  %160 = call ptr @memcpy(ptr %add.ptr118, ptr %add.ptr119, i32 %sub124)
  br label %out_free

out_free:                                         ; preds = %if.then115, %if.end100.out_free_crit_edge, %if.end95, %if.end64.out_free_crit_edge, %sw.bb11.i.out_free_crit_edge, %sw.epilog.i.out_free_crit_edge
  %err.0 = phi i32 [ %call68, %if.end64.out_free_crit_edge ], [ %spec.store.select, %if.end95 ], [ 0, %if.then115 ], [ 0, %if.end100.out_free_crit_edge ], [ -22, %sw.epilog.i.out_free_crit_edge ], [ -22, %sw.bb11.i.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out

out:                                              ; preds = %out_free, %if.end84.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_free ], [ -12, %if.end.out_crit_edge ], [ %call89, %if.end84.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer) #11
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_aalg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_clear_mutable_options(ptr nocapture noundef %iph, ptr nocapture noundef writeonly %daddr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %iph, align 4
  %bf.clear = shl i8 %bf.load, 2
  %1 = and i8 %bf.clear, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %1)
  %cmp39 = icmp ugt i8 %1, 20
  br i1 %cmp39, label %while.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %mul = zext i8 %1 to i32
  %sub = add nsw i32 %mul, -20
  %add.ptr = getelementptr %struct.iphdr, ptr %iph, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.preheader
  %l.043 = phi i32 [ %l.0.be, %while.cond.backedge.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %optptr.040 = phi ptr [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %2 = ptrtoint ptr %optptr.040 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %optptr.040, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %3, label %sw.epilog [
    i8 0, label %while.body.cleanup_crit_edge
    i8 1, label %sw.bb3
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add nsw i32 %l.043, -1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog18, %sw.bb3
  %.sink = phi i32 [ 1, %sw.bb3 ], [ %conv4, %sw.epilog18 ]
  %l.0.be = phi i32 [ %dec, %sw.bb3 ], [ %sub19, %sw.epilog18 ]
  %incdec.ptr = getelementptr i8, ptr %optptr.040, i32 %.sink
  %cmp = icmp sgt i32 %l.0.be, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog:                                        ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %optptr.040, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp5 = icmp ult i8 %6, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %l.043, i32 %conv4)
  %cmp7 = icmp ult i32 %l.043, %conv4
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %3, label %if.end.sw.default_crit_edge [
    i8 -126, label %if.end.sw.epilog18_crit_edge
    i8 -123, label %if.end.sw.epilog18_crit_edge47
    i8 -122, label %if.end.sw.epilog18_crit_edge48
    i8 -108, label %if.end.sw.epilog18_crit_edge49
    i8 -107, label %if.end.sw.epilog18_crit_edge50
    i8 -125, label %if.end.sw.bb11_crit_edge
    i8 -119, label %if.end.sw.bb11_crit_edge51
  ]

if.end.sw.bb11_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

if.end.sw.epilog18_crit_edge50:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

if.end.sw.epilog18_crit_edge49:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

if.end.sw.epilog18_crit_edge48:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

if.end.sw.epilog18_crit_edge47:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

if.end.sw.epilog18_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge51
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp12 = icmp ult i8 %6, 6
  br i1 %cmp12, label %sw.bb11.cleanup_crit_edge, label %if.end15

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr16 = getelementptr i8, ptr %optptr.040, i32 -4
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 %conv4
  %8 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr17, align 1
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end15, %if.end.sw.default_crit_edge
  %11 = call ptr @memset(ptr %optptr.040, i32 0, i32 %conv4)
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.default, %if.end.sw.epilog18_crit_edge, %if.end.sw.epilog18_crit_edge47, %if.end.sw.epilog18_crit_edge48, %if.end.sw.epilog18_crit_edge49, %if.end.sw.epilog18_crit_edge50
  %sub19 = sub nsw i32 %l.043, %conv4
  br label %while.cond.backedge

cleanup:                                          ; preds = %sw.bb11.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec_nomark(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_set_buf(ptr nocapture noundef %sg, ptr noundef %buf, i32 noundef %buflen) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.do.body5_crit_edge, !prof !46

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.do.body5_crit_edge, !prof !46

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

land.rhs:                                         ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end8, !prof !48

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #11, !srcloc !52
  unreachable

do.end8:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !46

do.body5.i.i:                                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !53
  unreachable

do.body11.i.i:                                    ; preds = %do.end8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !46

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !54
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %0, 4095
  %and.i.i = and i32 %5, 3
  %or.i.i = or i32 %and.i.i, %6
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buflen, ptr %length.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah_input_done(ptr nocapture noundef readonly %base, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_input_state.exit_crit_edge, label %if.then.i.i.i

entry.xfrm_input_state.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_input_state.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %shl.i.i.i
  br label %xfrm_input_state.exit

xfrm_input_state.exit:                            ; preds = %if.then.i.i.i, %entry.xfrm_input_state.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %entry.xfrm_input_state.exit_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i.i.i, align 4
  %sub.i = add i32 %10, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %retval.0.i.i.i, i32 0, i32 2, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i49 = zext i16 %18 to i32
  %add.ptr.i.i.i50 = getelementptr i8, ptr %14, i32 %conv.i.i.i49
  %19 = ptrtoint ptr %add.ptr.i.i.i50 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i50, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %20 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %20 to i32
  %hdrlen = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %22 to i32
  %add = shl nuw nsw i32 %conv, 2
  %shl = add nuw nsw i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end, label %xfrm_input_state.exit.out_crit_edge

xfrm_input_state.exit.out_crit_edge:              ; preds = %xfrm_input_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %xfrm_input_state.exit
  %data1 = getelementptr inbounds %struct.xfrm_state, ptr %12, i32 0, i32 51
  %23 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data1, align 8
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %mul.i
  %ahash = getelementptr inbounds %struct.ah_data, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ahash, align 4
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icv_trunc_len, align 4
  %add.ptr.i51 = getelementptr i8, ptr %add.ptr.i, i32 %30
  %31 = ptrtoint ptr %add.ptr.i51 to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %28, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add1.i = add i32 %35, %31
  %neg.i = xor i32 %35, -1
  %and.i = and i32 %add1.i, %neg.i
  %36 = inttoptr i32 %and.i to ptr
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %36, ptr noundef %add.ptr.i, i32 noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end11, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i, align 4
  %39 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i, align 4
  %41 = trunc i32 %shl to i16
  %conv15 = add i16 %40, %41
  store i16 %conv15, ptr %network_header.i.i.i, align 4
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %conv.i = zext i16 %conv15 to i32
  %add.ptr.i52 = getelementptr i8, ptr %43, i32 %conv.i
  %44 = call ptr @memcpy(ptr %add.ptr.i52, ptr %26, i32 %mul.i)
  %add17 = add nuw nsw i32 %shl, %mul.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i, align 4
  %sub.i53 = sub i32 %46, %add17
  store i32 %sub.i53, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i53, i32 %48)
  %cmp.i = icmp ult i32 %sub.i53, %48
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !48

do.body4.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !51
  unreachable

__skb_pull.exit:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = zext i8 %38 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %50, i32 %add17
  store ptr %add.ptr.i54, ptr %data.i, align 4
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %12, i32 0, i32 14, i32 1
  %51 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp = icmp eq i8 %52, 1
  %53 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i57 = trunc i32 %sub.ptr.sub.i to i16
  %narrow = select i1 %cmp, i8 0, i8 %20
  %conv1.i = zext i8 %narrow to i16
  %conv.i57.sink = sub i16 %conv.i57, %conv1.i
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i57.sink, ptr %transport_header.i.i, align 2
  br label %out

out:                                              ; preds = %__skb_pull.exit, %if.end.out_crit_edge, %xfrm_input_state.exit.out_crit_edge
  %err.addr.0 = phi i32 [ %err, %xfrm_input_state.exit.out_crit_edge ], [ -74, %if.end.out_crit_edge ], [ %conv12, %__skb_pull.exit ]
  %tmp25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %56 = ptrtoint ptr %tmp25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tmp25, align 4
  tail call void @kfree(ptr noundef %57) #11
  %call26 = tail call i32 @xfrm_input_resume(ptr noundef %1, i32 noundef %err.addr.0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ah_output_done(ptr nocapture noundef readonly %base, i32 noundef %err) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !48

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xfrm, align 4
  %data1 = getelementptr inbounds %struct.xfrm_state, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data1, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i39 = zext i16 %17 to i32
  %add.ptr.i.i40 = getelementptr i8, ptr %13, i32 %conv.i.i39
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %19 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %19 to i32
  %tmp = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp, align 4
  %ahash = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %ahash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ahash, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %mul.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %23, i32 0, i32 10, i32 3
  %25 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_alignmask.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %cra_alignmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_alignmask.i.i.i, align 4
  %add1.i = add i32 %28, %24
  %neg.i = xor i32 %28, -1
  %and.i41 = and i32 %add1.i, %neg.i
  %29 = inttoptr i32 %and.i41 to ptr
  %auth_data = getelementptr inbounds %struct.ip_auth_hdr, ptr %add.ptr.i.i40, i32 0, i32 5
  %icv_trunc_len = getelementptr inbounds %struct.ah_data, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %icv_trunc_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %icv_trunc_len, align 4
  %32 = call ptr @memcpy(ptr %auth_data, ptr %29, i32 %31)
  %tos = getelementptr inbounds %struct.iphdr, ptr %21, i32 0, i32 1
  %33 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tos, align 1
  %tos6 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %tos6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tos6, align 1
  %ttl = getelementptr inbounds %struct.iphdr, ptr %21, i32 0, i32 5
  %36 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ttl, align 4
  %ttl7 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %ttl7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %ttl7, align 4
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %21, i32 0, i32 4
  %39 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %frag_off, align 2
  %frag_off8 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %frag_off8 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %frag_off8, align 2
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp.not, label %skb_dst.exit.if.end_crit_edge, label %if.then

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  %daddr = getelementptr inbounds %struct.iphdr, ptr %21, i32 0, i32 9
  %42 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr, align 4
  %daddr10 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %daddr10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %daddr10, align 4
  %add.ptr = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1
  %add.ptr11 = getelementptr %struct.iphdr, ptr %21, i32 1
  %bf.clear13 = shl i8 %bf.load, 2
  %45 = and i8 %bf.clear13, 60
  %mul = zext i8 %45 to i32
  %sub = add nsw i32 %mul, -20
  %46 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr11, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %skb_dst.exit.if.end_crit_edge
  %47 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tmp, align 4
  tail call void @kfree(ptr noundef %48) #11
  %49 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call18 = tail call i32 @xfrm_output_resume(ptr noundef %51, ptr noundef %1, i32 noundef %err) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_output_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_protocol_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/ah4.c", i32 592, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ah4_fini._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ah4_fini._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ah4__508_596_ah4_init6, !7, !"__initcall__kmod_ah4__508_596_ah4_init6", i1 false, i1 false}
!7 = !{!"../net/ipv4/ah4.c", i32 596, i32 1}
!8 = !{ptr @__exitcall_ah4_fini, !9, !"__exitcall_ah4_fini", i1 false, i1 false}
!9 = !{!"../net/ipv4/ah4.c", i32 597, i32 1}
!10 = !{ptr @__UNIQUE_ID_file509, !11, !"__UNIQUE_ID_file509", i1 false, i1 false}
!11 = !{!"../net/ipv4/ah4.c", i32 598, i32 1}
!12 = !{ptr @__UNIQUE_ID_license510, !11, !"__UNIQUE_ID_license510", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias511, !14, !"__UNIQUE_ID_alias511", i1 false, i1 false}
!14 = !{!"../net/ipv4/ah4.c", i32 599, i32 1}
!15 = !{ptr @ah4_protocol, !16, !"ah4_protocol", i1 false, i1 false}
!16 = !{!"../net/ipv4/ah4.c", i32 567, i32 30}
!17 = !{ptr @ah_type, !18, !"ah_type", i1 false, i1 false}
!18 = !{!"../net/ipv4/ah4.c", i32 556, i32 31}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv4/ah4.c", i32 510, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ah_init_state._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ah_init_state._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/ah4.c", i32 578, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ah4_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ah4_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/ah4.c", i32 582, i32 3}
!33 = !{ptr @ah4_init._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ah4_init._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148257183}
!45 = !{i64 2148171647, i64 2148171679, i64 2148171708, i64 2148171742, i64 2148171773, i64 2148171796}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148880351}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 2157907625, i64 2157908104, i64 2157907662, i64 2157907718, i64 2157907752, i64 2157907776, i64 2157907817, i64 2157907838, i64 2157907866, i64 2157907900}
!50 = !{!"auto-init"}
!51 = !{i64 2154693208, i64 2154693696, i64 2154693245, i64 2154693301, i64 2154693335, i64 2154693359, i64 2154693400, i64 2154693421, i64 2154693449, i64 2154693483}
!52 = !{i64 2154462907, i64 2154463399, i64 2154462944, i64 2154463000, i64 2154463034, i64 2154463058, i64 2154463099, i64 2154463120, i64 2154463148, i64 2154463182}
!53 = !{i64 2154456588, i64 2154457080, i64 2154456625, i64 2154456681, i64 2154456715, i64 2154456739, i64 2154456780, i64 2154456801, i64 2154456829, i64 2154456863}
!54 = !{i64 2154458198, i64 2154458690, i64 2154458235, i64 2154458291, i64 2154458325, i64 2154458349, i64 2154458390, i64 2154458411, i64 2154458439, i64 2154458473}
