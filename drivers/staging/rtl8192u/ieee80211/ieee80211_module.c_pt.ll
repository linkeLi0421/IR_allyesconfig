; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.79 }
%union.anon.79 = type { ptr }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.ieee80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.ieee80211_crypto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__UNIQUE_ID_description476 = internal constant [49 x i8] c"description=802.11 data/management/control stack\00", section ".modinfo", align 1
@__UNIQUE_ID_author477 = internal constant [71 x i8] c"author=Copyright (C) 2004 Intel Corporation <jketreno@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license478 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@ieee80211_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@alloc_ieee80211_rsl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017ieee80211: Initializing...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc_ieee80211_rsl\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_module.c\00", [42 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl._entry_ptr = internal global ptr @alloc_ieee80211_rsl._entry, section ".printk_index", align 4
@alloc_ieee80211_rsl._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ieee80211: Unable to network device.\0A\00", [56 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl._entry_ptr.5 = internal global ptr @alloc_ieee80211_rsl._entry.3, section ".printk_index", align 4
@alloc_ieee80211_rsl._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ieee80211: Unable to allocate beacon storage: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl._entry_ptr.8 = internal global ptr @alloc_ieee80211_rsl._entry.6, section ".printk_index", align 4
@alloc_ieee80211_rsl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&ieee->crypt_deinit_timer)\00", [36 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ieee->lock\00", [20 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ieee->wpax_suitlist_lock\00", [38 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ieee->bw_spinlock\00", [45 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ieee->reorder_spinlock\00", [40 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: can't alloc memory for HTInfo\0A\00", [52 x i8] zeroinitializer }, align 32
@alloc_ieee80211_rsl._entry_ptr.20 = internal global ptr @alloc_ieee80211_rsl._entry.18, section ".printk_index", align 4
@debug = internal global { i32, [28 x i8] } { i32 -2147483648, [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ieee80211\00", [22 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@ieee80211_proc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ieee80211_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ieee80211: Unable to create ieee80211 proc directory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee80211_debug_init\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_debug_init._entry_ptr = internal global ptr @ieee80211_debug_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"debug_level\00", [20 x i8] zeroinitializer }, align 32
@debug_level_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @open_debug_level, ptr @seq_read, ptr null, ptr @write_debug_level, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @___asan_gen_.90, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.79 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype479 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug480 = internal constant [29 x i8] c"parm=debug:debug output mask\00", section ".modinfo", align 1
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Out of memory allocating beacons\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08X\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"ieee80211_debug_level\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 204, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 86, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 90, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 99, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 116, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 121, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 122, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 141, i32 3 }
@___asan_gen_.90 = private constant [6 x i8] c"debug\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 205, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 264, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"ieee80211_proc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 224, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 266, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 270, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"debug_level_proc_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 250, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 55, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [57 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 228, i32 16 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author477, ptr @__UNIQUE_ID_debug480, ptr @__UNIQUE_ID_debugtype479, ptr @__UNIQUE_ID_description476, ptr @__UNIQUE_ID_license478, ptr @__param_debug, ptr @alloc_ieee80211_rsl._entry, ptr @alloc_ieee80211_rsl._entry.18, ptr @alloc_ieee80211_rsl._entry.3, ptr @alloc_ieee80211_rsl._entry.6, ptr @alloc_ieee80211_rsl._entry_ptr, ptr @alloc_ieee80211_rsl._entry_ptr.20, ptr @alloc_ieee80211_rsl._entry_ptr.5, ptr @alloc_ieee80211_rsl._entry_ptr.8, ptr @ieee80211_debug_init._entry, ptr @ieee80211_debug_init._entry_ptr, ptr @ieee80211_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @alloc_ieee80211_rsl.__key, ptr @.str.9, ptr @alloc_ieee80211_rsl.__key.10, ptr @.str.11, ptr @alloc_ieee80211_rsl.__key.12, ptr @.str.13, ptr @alloc_ieee80211_rsl.__key.14, ptr @.str.15, ptr @alloc_ieee80211_rsl.__key.16, ptr @.str.17, ptr @.str.19, ptr @debug, ptr @.str.21, ptr @ieee80211_proc, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @debug_level_proc_ops, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ieee80211_rsl._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_proc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_level_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_ieee80211_rsl(i32 noundef %sizeof_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %add = add i32 %sizeof_priv, 27816
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef %add, i32 noundef 1, i32 noundef 1) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %add.ptr.i, align 8
  %networks.i = getelementptr i8, ptr %call4, i32 20808
  %2 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %networks.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i:                                         ; preds = %if.end12
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 103424, i32 noundef 3520, i32 noundef 5) #11
  %4 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i.i.i.i.i, ptr %networks.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool3.not.i, label %do.end20, label %if.end.i.if.end23_crit_edge

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end20:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.25) #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef -12) #10
  br label %if.then71

if.end23:                                         ; preds = %if.end.i.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %network_free_list.i = getelementptr i8, ptr %call4, i32 20792
  %7 = ptrtoint ptr %network_free_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %network_free_list.i, ptr %network_free_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call4, i32 20796
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %network_free_list.i, ptr %prev.i.i, align 4
  %network_list.i = getelementptr i8, ptr %call4, i32 20800
  %9 = ptrtoint ptr %network_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %network_list.i, ptr %network_list.i, align 4
  %prev.i7.i = getelementptr i8, ptr %call4, i32 20804
  %10 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %network_list.i, ptr %prev.i7.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end23
  %i.09.i = phi i32 [ 0, %if.end23 ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %networks.i, align 8
  %list.i = getelementptr %struct.ieee80211_network, ptr %12, i32 %i.09.i, i32 58
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %14, ptr noundef %network_free_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %network_free_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr %struct.ieee80211_network, ptr %12, i32 %i.09.i, i32 58, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %ieee80211_networks_initialize.exit, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ieee80211_networks_initialize.exit:               ; preds = %list_add_tail.exit.i
  %fts = getelementptr i8, ptr %call4, i32 23160
  %19 = ptrtoint ptr %fts to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2346, ptr %fts, align 8
  %scan_age = getelementptr i8, ptr %call4, i32 20816
  %20 = ptrtoint ptr %scan_age to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1500, ptr %scan_age, align 8
  %open_wep = getelementptr i8, ptr %call4, i32 21020
  %21 = ptrtoint ptr %open_wep to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %open_wep, align 4
  %host_encrypt = getelementptr i8, ptr %call4, i32 21032
  %22 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %host_encrypt, align 8
  %host_decrypt = getelementptr i8, ptr %call4, i32 21040
  %23 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %host_decrypt, align 8
  %ieee802_1x = getelementptr i8, ptr %call4, i32 21060
  %24 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %ieee802_1x, align 4
  %crypt_deinit_list = getelementptr i8, ptr %call4, i32 21104
  %25 = ptrtoint ptr %crypt_deinit_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %crypt_deinit_list, ptr %crypt_deinit_list, align 4
  %prev.i = getelementptr i8, ptr %call4, i32 21108
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %crypt_deinit_list, ptr %prev.i, align 4
  %crypt_deinit_timer = getelementptr i8, ptr %call4, i32 21132
  tail call void @init_timer_key(ptr noundef %crypt_deinit_timer, ptr noundef nonnull @ieee80211_crypt_deinit_handler_rsl, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @alloc_ieee80211_rsl.__key) #7
  %lock = getelementptr i8, ptr %call4, i32 20924
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @alloc_ieee80211_rsl.__key.10, i16 noundef signext 3) #7
  %wpax_suitlist_lock = getelementptr i8, ptr %call4, i32 20968
  tail call void @__raw_spin_lock_init(ptr noundef %wpax_suitlist_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @alloc_ieee80211_rsl.__key.12, i16 noundef signext 3) #7
  %bw_spinlock = getelementptr i8, ptr %call4, i32 2476
  tail call void @__raw_spin_lock_init(ptr noundef %bw_spinlock, ptr noundef nonnull @.str.15, ptr noundef nonnull @alloc_ieee80211_rsl.__key.14, i16 noundef signext 3) #7
  %reorder_spinlock = getelementptr i8, ptr %call4, i32 2520
  tail call void @__raw_spin_lock_init(ptr noundef %reorder_spinlock, ptr noundef nonnull @.str.17, ptr noundef nonnull @alloc_ieee80211_rsl.__key.16, i16 noundef signext 3) #7
  %atm_chnlop = getelementptr i8, ptr %call4, i32 2616
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %atm_chnlop, i32 noundef 4) #7
  %27 = ptrtoint ptr %atm_chnlop to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %atm_chnlop, align 4
  %atm_swbw = getelementptr i8, ptr %call4, i32 2620
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %atm_swbw, i32 noundef 4) #7
  %28 = ptrtoint ptr %atm_swbw to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %atm_swbw, align 4
  %wpax_type_set = getelementptr i8, ptr %call4, i32 24394
  %29 = ptrtoint ptr %wpax_type_set to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %wpax_type_set, align 2
  %wpa_enabled = getelementptr i8, ptr %call4, i32 21068
  %30 = call ptr @memset(ptr %wpa_enabled, i32 0, i32 16)
  %31 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %ieee802_1x, align 4
  %raw_tx = getelementptr i8, ptr %call4, i32 24108
  %32 = ptrtoint ptr %raw_tx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %raw_tx, align 4
  %hwsec_active = getelementptr i8, ptr %call4, i32 2446
  %33 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %hwsec_active, align 2
  tail call void @ieee80211_softmac_init(ptr noundef %add.ptr.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 187) #12
  %pHTInfo = getelementptr i8, ptr %call4, i32 2472
  %35 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %pHTInfo, align 8
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %do.body48, label %if.end60

do.body48:                                        ; preds = %ieee80211_networks_initialize.exit
  %36 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool50.not = icmp sgt i32 %36, -1
  br i1 %tobool50.not, label %do.body48.do.end59_crit_edge, label %do.end54

do.body48.do.end59_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end54, %do.body48.do.end59_crit_edge
  %37 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %networks.i, align 8
  %tobool.not.i128 = icmp eq ptr %38, null
  br i1 %tobool.not.i128, label %do.end59.if.then71_crit_edge, label %if.end.i129

do.end59.if.then71_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

if.end.i129:                                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %38) #7
  %39 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %networks.i, align 8
  br label %if.then71

if.end60:                                         ; preds = %ieee80211_networks_initialize.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @HTUpdateDefaultSetting(ptr noundef %add.ptr.i) #7
  tail call void @HTInitializeHTInfo(ptr noundef %add.ptr.i) #7
  tail call void @TSInitialize(ptr noundef %add.ptr.i) #7
  %arrayidx = getelementptr i8, ptr %call4, i32 24404
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i130 = getelementptr i8, ptr %call4, i32 24408
  %41 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx, ptr %prev.i130, align 4
  %arrayidx.1 = getelementptr i8, ptr %call4, i32 24412
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i130.1 = getelementptr i8, ptr %call4, i32 24416
  %43 = ptrtoint ptr %prev.i130.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.1, ptr %prev.i130.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %call4, i32 24420
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i130.2 = getelementptr i8, ptr %call4, i32 24424
  %45 = ptrtoint ptr %prev.i130.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.2, ptr %prev.i130.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %call4, i32 24428
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i130.3 = getelementptr i8, ptr %call4, i32 24432
  %47 = ptrtoint ptr %prev.i130.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.3, ptr %prev.i130.3, align 4
  %arrayidx.4 = getelementptr i8, ptr %call4, i32 24436
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i130.4 = getelementptr i8, ptr %call4, i32 24440
  %49 = ptrtoint ptr %prev.i130.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx.4, ptr %prev.i130.4, align 4
  %arrayidx.5 = getelementptr i8, ptr %call4, i32 24444
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i130.5 = getelementptr i8, ptr %call4, i32 24448
  %51 = ptrtoint ptr %prev.i130.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.5, ptr %prev.i130.5, align 4
  %arrayidx.6 = getelementptr i8, ptr %call4, i32 24452
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i130.6 = getelementptr i8, ptr %call4, i32 24456
  %53 = ptrtoint ptr %prev.i130.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx.6, ptr %prev.i130.6, align 4
  %arrayidx.7 = getelementptr i8, ptr %call4, i32 24460
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i130.7 = getelementptr i8, ptr %call4, i32 24464
  %55 = ptrtoint ptr %prev.i130.7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.7, ptr %prev.i130.7, align 4
  %arrayidx.8 = getelementptr i8, ptr %call4, i32 24468
  %56 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 4
  %prev.i130.8 = getelementptr i8, ptr %call4, i32 24472
  %57 = ptrtoint ptr %prev.i130.8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.8, ptr %prev.i130.8, align 4
  %arrayidx.9 = getelementptr i8, ptr %call4, i32 24476
  %58 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 4
  %prev.i130.9 = getelementptr i8, ptr %call4, i32 24480
  %59 = ptrtoint ptr %prev.i130.9 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.9, ptr %prev.i130.9, align 4
  %arrayidx.10 = getelementptr i8, ptr %call4, i32 24484
  %60 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %arrayidx.10, ptr %arrayidx.10, align 4
  %prev.i130.10 = getelementptr i8, ptr %call4, i32 24488
  %61 = ptrtoint ptr %prev.i130.10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.10, ptr %prev.i130.10, align 4
  %arrayidx.11 = getelementptr i8, ptr %call4, i32 24492
  %62 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx.11, ptr %arrayidx.11, align 4
  %prev.i130.11 = getelementptr i8, ptr %call4, i32 24496
  %63 = ptrtoint ptr %prev.i130.11 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx.11, ptr %prev.i130.11, align 4
  %arrayidx.12 = getelementptr i8, ptr %call4, i32 24500
  %64 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx.12, ptr %arrayidx.12, align 4
  %prev.i130.12 = getelementptr i8, ptr %call4, i32 24504
  %65 = ptrtoint ptr %prev.i130.12 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx.12, ptr %prev.i130.12, align 4
  %arrayidx.13 = getelementptr i8, ptr %call4, i32 24508
  %66 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx.13, ptr %arrayidx.13, align 4
  %prev.i130.13 = getelementptr i8, ptr %call4, i32 24512
  %67 = ptrtoint ptr %prev.i130.13 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx.13, ptr %prev.i130.13, align 4
  %arrayidx.14 = getelementptr i8, ptr %call4, i32 24516
  %68 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx.14, ptr %arrayidx.14, align 4
  %prev.i130.14 = getelementptr i8, ptr %call4, i32 24520
  %69 = ptrtoint ptr %prev.i130.14 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.14, ptr %prev.i130.14, align 4
  %arrayidx.15 = getelementptr i8, ptr %call4, i32 24524
  %70 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %arrayidx.15, ptr %arrayidx.15, align 4
  %prev.i130.15 = getelementptr i8, ptr %call4, i32 24528
  %71 = ptrtoint ptr %prev.i130.15 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx.15, ptr %prev.i130.15, align 4
  %arrayidx.16 = getelementptr i8, ptr %call4, i32 24532
  %72 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx.16, ptr %arrayidx.16, align 4
  %prev.i130.16 = getelementptr i8, ptr %call4, i32 24536
  %73 = ptrtoint ptr %prev.i130.16 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx.16, ptr %prev.i130.16, align 4
  %arrayidx.17 = getelementptr i8, ptr %call4, i32 24540
  %74 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %arrayidx.17, ptr %arrayidx.17, align 4
  %prev.i130.17 = getelementptr i8, ptr %call4, i32 24544
  %75 = ptrtoint ptr %prev.i130.17 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx.17, ptr %prev.i130.17, align 4
  %arrayidx.18 = getelementptr i8, ptr %call4, i32 24548
  %76 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %arrayidx.18, ptr %arrayidx.18, align 4
  %prev.i130.18 = getelementptr i8, ptr %call4, i32 24552
  %77 = ptrtoint ptr %prev.i130.18 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx.18, ptr %prev.i130.18, align 4
  %arrayidx.19 = getelementptr i8, ptr %call4, i32 24556
  %78 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %arrayidx.19, ptr %arrayidx.19, align 4
  %prev.i130.19 = getelementptr i8, ptr %call4, i32 24560
  %79 = ptrtoint ptr %prev.i130.19 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx.19, ptr %prev.i130.19, align 4
  %arrayidx.20 = getelementptr i8, ptr %call4, i32 24564
  %80 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx.20, ptr %arrayidx.20, align 4
  %prev.i130.20 = getelementptr i8, ptr %call4, i32 24568
  %81 = ptrtoint ptr %prev.i130.20 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx.20, ptr %prev.i130.20, align 4
  %arrayidx.21 = getelementptr i8, ptr %call4, i32 24572
  %82 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx.21, ptr %arrayidx.21, align 4
  %prev.i130.21 = getelementptr i8, ptr %call4, i32 24576
  %83 = ptrtoint ptr %prev.i130.21 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx.21, ptr %prev.i130.21, align 4
  %arrayidx.22 = getelementptr i8, ptr %call4, i32 24580
  %84 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %arrayidx.22, ptr %arrayidx.22, align 4
  %prev.i130.22 = getelementptr i8, ptr %call4, i32 24584
  %85 = ptrtoint ptr %prev.i130.22 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx.22, ptr %prev.i130.22, align 4
  %arrayidx.23 = getelementptr i8, ptr %call4, i32 24588
  %86 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %arrayidx.23, ptr %arrayidx.23, align 4
  %prev.i130.23 = getelementptr i8, ptr %call4, i32 24592
  %87 = ptrtoint ptr %prev.i130.23 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx.23, ptr %prev.i130.23, align 4
  %arrayidx.24 = getelementptr i8, ptr %call4, i32 24596
  %88 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %arrayidx.24, ptr %arrayidx.24, align 4
  %prev.i130.24 = getelementptr i8, ptr %call4, i32 24600
  %89 = ptrtoint ptr %prev.i130.24 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.24, ptr %prev.i130.24, align 4
  %arrayidx.25 = getelementptr i8, ptr %call4, i32 24604
  %90 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %arrayidx.25, ptr %arrayidx.25, align 4
  %prev.i130.25 = getelementptr i8, ptr %call4, i32 24608
  %91 = ptrtoint ptr %prev.i130.25 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx.25, ptr %prev.i130.25, align 4
  %arrayidx.26 = getelementptr i8, ptr %call4, i32 24612
  %92 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %arrayidx.26, ptr %arrayidx.26, align 4
  %prev.i130.26 = getelementptr i8, ptr %call4, i32 24616
  %93 = ptrtoint ptr %prev.i130.26 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx.26, ptr %prev.i130.26, align 4
  %arrayidx.27 = getelementptr i8, ptr %call4, i32 24620
  %94 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %arrayidx.27, ptr %arrayidx.27, align 4
  %prev.i130.27 = getelementptr i8, ptr %call4, i32 24624
  %95 = ptrtoint ptr %prev.i130.27 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx.27, ptr %prev.i130.27, align 4
  %arrayidx.28 = getelementptr i8, ptr %call4, i32 24628
  %96 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %arrayidx.28, ptr %arrayidx.28, align 4
  %prev.i130.28 = getelementptr i8, ptr %call4, i32 24632
  %97 = ptrtoint ptr %prev.i130.28 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx.28, ptr %prev.i130.28, align 4
  %arrayidx.29 = getelementptr i8, ptr %call4, i32 24636
  %98 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %arrayidx.29, ptr %arrayidx.29, align 4
  %prev.i130.29 = getelementptr i8, ptr %call4, i32 24640
  %99 = ptrtoint ptr %prev.i130.29 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %arrayidx.29, ptr %prev.i130.29, align 4
  %arrayidx.30 = getelementptr i8, ptr %call4, i32 24644
  %100 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %arrayidx.30, ptr %arrayidx.30, align 4
  %prev.i130.30 = getelementptr i8, ptr %call4, i32 24648
  %101 = ptrtoint ptr %prev.i130.30 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx.30, ptr %prev.i130.30, align 4
  %arrayidx64 = getelementptr i8, ptr %call4, i32 24652
  %102 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %arrayidx64, align 2
  %arrayidx65 = getelementptr i8, ptr %call4, i32 24686
  %103 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 -1, ptr %arrayidx65, align 2
  %arrayidx66 = getelementptr i8, ptr %call4, i32 24720
  %104 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx66, align 4
  %arrayidx64.1 = getelementptr i8, ptr %call4, i32 24654
  %105 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 -1, ptr %arrayidx64.1, align 2
  %arrayidx65.1 = getelementptr i8, ptr %call4, i32 24688
  %106 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 -1, ptr %arrayidx65.1, align 2
  %arrayidx66.1 = getelementptr i8, ptr %call4, i32 24724
  %107 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx66.1, align 4
  %arrayidx64.2 = getelementptr i8, ptr %call4, i32 24656
  %108 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 -1, ptr %arrayidx64.2, align 2
  %arrayidx65.2 = getelementptr i8, ptr %call4, i32 24690
  %109 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %arrayidx65.2, align 2
  %arrayidx66.2 = getelementptr i8, ptr %call4, i32 24728
  %110 = ptrtoint ptr %arrayidx66.2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx66.2, align 4
  %arrayidx64.3 = getelementptr i8, ptr %call4, i32 24658
  %111 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -1, ptr %arrayidx64.3, align 2
  %arrayidx65.3 = getelementptr i8, ptr %call4, i32 24692
  %112 = ptrtoint ptr %arrayidx65.3 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %arrayidx65.3, align 2
  %arrayidx66.3 = getelementptr i8, ptr %call4, i32 24732
  %113 = ptrtoint ptr %arrayidx66.3 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx66.3, align 4
  %arrayidx64.4 = getelementptr i8, ptr %call4, i32 24660
  %114 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -1, ptr %arrayidx64.4, align 2
  %arrayidx65.4 = getelementptr i8, ptr %call4, i32 24694
  %115 = ptrtoint ptr %arrayidx65.4 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 -1, ptr %arrayidx65.4, align 2
  %arrayidx66.4 = getelementptr i8, ptr %call4, i32 24736
  %116 = ptrtoint ptr %arrayidx66.4 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx66.4, align 4
  %arrayidx64.5 = getelementptr i8, ptr %call4, i32 24662
  %117 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %arrayidx64.5, align 2
  %arrayidx65.5 = getelementptr i8, ptr %call4, i32 24696
  %118 = ptrtoint ptr %arrayidx65.5 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %arrayidx65.5, align 2
  %arrayidx66.5 = getelementptr i8, ptr %call4, i32 24740
  %119 = ptrtoint ptr %arrayidx66.5 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %arrayidx66.5, align 4
  %arrayidx64.6 = getelementptr i8, ptr %call4, i32 24664
  %120 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %arrayidx64.6, align 2
  %arrayidx65.6 = getelementptr i8, ptr %call4, i32 24698
  %121 = ptrtoint ptr %arrayidx65.6 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %arrayidx65.6, align 2
  %arrayidx66.6 = getelementptr i8, ptr %call4, i32 24744
  %122 = ptrtoint ptr %arrayidx66.6 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx66.6, align 4
  %arrayidx64.7 = getelementptr i8, ptr %call4, i32 24666
  %123 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %arrayidx64.7, align 2
  %arrayidx65.7 = getelementptr i8, ptr %call4, i32 24700
  %124 = ptrtoint ptr %arrayidx65.7 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -1, ptr %arrayidx65.7, align 2
  %arrayidx66.7 = getelementptr i8, ptr %call4, i32 24748
  %125 = ptrtoint ptr %arrayidx66.7 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx66.7, align 4
  %arrayidx64.8 = getelementptr i8, ptr %call4, i32 24668
  %126 = ptrtoint ptr %arrayidx64.8 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %arrayidx64.8, align 2
  %arrayidx65.8 = getelementptr i8, ptr %call4, i32 24702
  %127 = ptrtoint ptr %arrayidx65.8 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %arrayidx65.8, align 2
  %arrayidx66.8 = getelementptr i8, ptr %call4, i32 24752
  %128 = ptrtoint ptr %arrayidx66.8 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx66.8, align 4
  %arrayidx64.9 = getelementptr i8, ptr %call4, i32 24670
  %129 = ptrtoint ptr %arrayidx64.9 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -1, ptr %arrayidx64.9, align 2
  %arrayidx65.9 = getelementptr i8, ptr %call4, i32 24704
  %130 = ptrtoint ptr %arrayidx65.9 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %arrayidx65.9, align 2
  %arrayidx66.9 = getelementptr i8, ptr %call4, i32 24756
  %131 = ptrtoint ptr %arrayidx66.9 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx66.9, align 4
  %arrayidx64.10 = getelementptr i8, ptr %call4, i32 24672
  %132 = ptrtoint ptr %arrayidx64.10 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %arrayidx64.10, align 2
  %arrayidx65.10 = getelementptr i8, ptr %call4, i32 24706
  %133 = ptrtoint ptr %arrayidx65.10 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -1, ptr %arrayidx65.10, align 2
  %arrayidx66.10 = getelementptr i8, ptr %call4, i32 24760
  %134 = ptrtoint ptr %arrayidx66.10 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %arrayidx66.10, align 4
  %arrayidx64.11 = getelementptr i8, ptr %call4, i32 24674
  %135 = ptrtoint ptr %arrayidx64.11 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -1, ptr %arrayidx64.11, align 2
  %arrayidx65.11 = getelementptr i8, ptr %call4, i32 24708
  %136 = ptrtoint ptr %arrayidx65.11 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %arrayidx65.11, align 2
  %arrayidx66.11 = getelementptr i8, ptr %call4, i32 24764
  %137 = ptrtoint ptr %arrayidx66.11 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %arrayidx66.11, align 4
  %arrayidx64.12 = getelementptr i8, ptr %call4, i32 24676
  %138 = ptrtoint ptr %arrayidx64.12 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -1, ptr %arrayidx64.12, align 2
  %arrayidx65.12 = getelementptr i8, ptr %call4, i32 24710
  %139 = ptrtoint ptr %arrayidx65.12 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %arrayidx65.12, align 2
  %arrayidx66.12 = getelementptr i8, ptr %call4, i32 24768
  %140 = ptrtoint ptr %arrayidx66.12 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %arrayidx66.12, align 4
  %arrayidx64.13 = getelementptr i8, ptr %call4, i32 24678
  %141 = ptrtoint ptr %arrayidx64.13 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -1, ptr %arrayidx64.13, align 2
  %arrayidx65.13 = getelementptr i8, ptr %call4, i32 24712
  %142 = ptrtoint ptr %arrayidx65.13 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -1, ptr %arrayidx65.13, align 2
  %arrayidx66.13 = getelementptr i8, ptr %call4, i32 24772
  %143 = ptrtoint ptr %arrayidx66.13 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %arrayidx66.13, align 4
  %arrayidx64.14 = getelementptr i8, ptr %call4, i32 24680
  %144 = ptrtoint ptr %arrayidx64.14 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %arrayidx64.14, align 2
  %arrayidx65.14 = getelementptr i8, ptr %call4, i32 24714
  %145 = ptrtoint ptr %arrayidx65.14 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -1, ptr %arrayidx65.14, align 2
  %arrayidx66.14 = getelementptr i8, ptr %call4, i32 24776
  %146 = ptrtoint ptr %arrayidx66.14 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %arrayidx66.14, align 4
  %arrayidx64.15 = getelementptr i8, ptr %call4, i32 24682
  %147 = ptrtoint ptr %arrayidx64.15 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %arrayidx64.15, align 2
  %arrayidx65.15 = getelementptr i8, ptr %call4, i32 24716
  %148 = ptrtoint ptr %arrayidx65.15 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -1, ptr %arrayidx65.15, align 2
  %arrayidx66.15 = getelementptr i8, ptr %call4, i32 24780
  %149 = ptrtoint ptr %arrayidx66.15 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %arrayidx66.15, align 4
  %arrayidx64.16 = getelementptr i8, ptr %call4, i32 24684
  %150 = ptrtoint ptr %arrayidx64.16 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %arrayidx64.16, align 2
  %arrayidx65.16 = getelementptr i8, ptr %call4, i32 24718
  %151 = ptrtoint ptr %arrayidx65.16 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -1, ptr %arrayidx65.16, align 2
  %arrayidx66.16 = getelementptr i8, ptr %call4, i32 24784
  %152 = ptrtoint ptr %arrayidx66.16 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %arrayidx66.16, align 4
  tail call void @ieee80211_tkip_null_rsl() #7
  br label %cleanup

if.then71:                                        ; preds = %if.end.i129, %do.end59.if.then71_crit_edge, %do.end20
  tail call void @free_netdev(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end60, %do.end9
  %retval.0 = phi ptr [ %call4, %if.end60 ], [ null, %do.end9 ], [ null, %if.then71 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_crypt_deinit_handler_rsl(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_softmac_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTUpdateDefaultSetting(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTInitializeHTInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @TSInitialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tkip_null_rsl() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_ieee80211_rsl(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pHTInfo = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pHTInfo, align 8
  tail call void @RemoveAllTS(ptr noundef %add.ptr.i) #7
  tail call void @ieee80211_softmac_free(ptr noundef %add.ptr.i) #7
  %crypt_deinit_timer = getelementptr i8, ptr %dev, i32 21132
  %call2 = tail call i32 @del_timer_sync(ptr noundef %crypt_deinit_timer) #7
  tail call void @ieee80211_crypt_deinit_entries_rsl(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %arrayidx = getelementptr i8, ptr %dev, i32 21112
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %deinit = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %deinit, align 4
  %priv = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  tail call void %8(ptr noundef %10) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %4) #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 21116
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %if.end9.if.end9.1_crit_edge, label %if.then.1

if.end9.if.end9.1_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.1

if.then.1:                                        ; preds = %if.end9
  %ops.1 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.1, align 4
  %tobool4.not.1 = icmp eq ptr %15, null
  br i1 %tobool4.not.1, label %if.then.1.if.end.1_crit_edge, label %if.then5.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

if.then5.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.1 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %deinit.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %deinit.1, align 4
  %priv.1 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.1, align 4
  tail call void %17(ptr noundef %19) #7
  br label %if.end.1

if.end.1:                                         ; preds = %if.then5.1, %if.then.1.if.end.1_crit_edge
  tail call void @kfree(ptr noundef nonnull %13) #7
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.1, align 4
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.end.1, %if.end9.if.end9.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 21120
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %22, null
  br i1 %tobool.not.2, label %if.end9.1.if.end9.2_crit_edge, label %if.then.2

if.end9.1.if.end9.2_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.2

if.then.2:                                        ; preds = %if.end9.1
  %ops.2 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.2, align 4
  %tobool4.not.2 = icmp eq ptr %24, null
  br i1 %tobool4.not.2, label %if.then.2.if.end.2_crit_edge, label %if.then5.2

if.then.2.if.end.2_crit_edge:                     ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2

if.then5.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.2 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %deinit.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %deinit.2, align 4
  %priv.2 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %priv.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.2, align 4
  tail call void %26(ptr noundef %28) #7
  br label %if.end.2

if.end.2:                                         ; preds = %if.then5.2, %if.then.2.if.end.2_crit_edge
  tail call void @kfree(ptr noundef nonnull %22) #7
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.2, align 4
  br label %if.end9.2

if.end9.2:                                        ; preds = %if.end.2, %if.end9.1.if.end9.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 21124
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %31, null
  br i1 %tobool.not.3, label %if.end9.2.if.end9.3_crit_edge, label %if.then.3

if.end9.2.if.end9.3_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.3

if.then.3:                                        ; preds = %if.end9.2
  %ops.3 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.3, align 4
  %tobool4.not.3 = icmp eq ptr %33, null
  br i1 %tobool4.not.3, label %if.then.3.if.end.3_crit_edge, label %if.then5.3

if.then.3.if.end.3_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3

if.then5.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  %deinit.3 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %deinit.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %deinit.3, align 4
  %priv.3 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %priv.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.3, align 4
  tail call void %35(ptr noundef %37) #7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then5.3, %if.then.3.if.end.3_crit_edge
  tail call void @kfree(ptr noundef nonnull %31) #7
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.3, align 4
  br label %if.end9.3

if.end9.3:                                        ; preds = %if.end.3, %if.end9.2.if.end9.3_crit_edge
  %networks.i = getelementptr i8, ptr %dev, i32 20808
  %39 = ptrtoint ptr %networks.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %networks.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end9.3.ieee80211_networks_free.exit_crit_edge, label %if.end.i

if.end9.3.ieee80211_networks_free.exit_crit_edge: ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_networks_free.exit

if.end.i:                                         ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %40) #7
  %41 = ptrtoint ptr %networks.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %networks.i, align 8
  br label %ieee80211_networks_free.exit

ieee80211_networks_free.exit:                     ; preds = %if.end.i, %if.end9.3.ieee80211_networks_free.exit_crit_edge
  tail call void @free_netdev(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @RemoveAllTS(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_softmac_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_crypt_deinit_entries_rsl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_debug_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  store i32 %0, ptr @ieee80211_debug_level, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.21, ptr noundef %1) #7
  store ptr %call, ptr @ieee80211_proc, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @proc_create(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef nonnull %call, ptr noundef nonnull @debug_level_proc_ops) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.21, ptr noundef %2) #7
  store ptr null, ptr @ieee80211_proc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %if.then4 ], [ -5, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_debug_exit() local_unnamed_addr #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @ieee80211_proc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef nonnull %0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.21, ptr noundef %1) #7
  store ptr null, ptr @ieee80211_proc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_debug_level(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @show_debug_level, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_debug_level(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !75
  %call = call i32 @kstrtoul_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  store i32 %2, ptr @ieee80211_debug_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_debug_level(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__UNIQUE_ID_description476, !1, !"__UNIQUE_ID_description476", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_author477, !3, !"__UNIQUE_ID_author477", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_license478, !5, !"__UNIQUE_ID_license478", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 42, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 86, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @alloc_ieee80211_rsl._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @alloc_ieee80211_rsl._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 90, i32 3}
!14 = !{ptr @alloc_ieee80211_rsl._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @alloc_ieee80211_rsl._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 99, i32 3}
!18 = !{ptr @alloc_ieee80211_rsl._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @alloc_ieee80211_rsl._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @alloc_ieee80211_rsl.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 116, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @alloc_ieee80211_rsl.__key.10, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 119, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @alloc_ieee80211_rsl.__key.12, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 120, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @alloc_ieee80211_rsl.__key.14, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 121, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @alloc_ieee80211_rsl.__key.16, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 122, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 141, i32 3}
!37 = !{ptr @alloc_ieee80211_rsl._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @alloc_ieee80211_rsl._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 264, i32 30}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 266, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ieee80211_debug_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ieee80211_debug_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 270, i32 18}
!48 = !{ptr @__param_debug, !49, !"__param_debug", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 288, i32 1}
!50 = !{ptr @__UNIQUE_ID_debugtype479, !49, !"__UNIQUE_ID_debugtype479", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_debug480, !52, !"__UNIQUE_ID_debug480", i1 false, i1 false}
!52 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 289, i32 1}
!53 = !{ptr @ieee80211_debug_level, !54, !"ieee80211_debug_level", i1 false, i1 false}
!54 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 204, i32 5}
!55 = !{ptr @ieee80211_proc, !56, !"ieee80211_proc", i1 false, i1 false}
!56 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 224, i32 31}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 55, i32 26}
!59 = !{ptr @debug, !60, !"debug", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 205, i32 12}
!61 = !{ptr @debug_level_proc_ops, !62, !"debug_level_proc_ops", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 250, i32 30}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_module.c", i32 228, i32 16}
!65 = !{ptr @___asan_gen_.90, !49, !"__param_str_debug", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
