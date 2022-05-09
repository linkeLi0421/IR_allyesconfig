; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_txb_free_rsl\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_txb_free_rsl\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_txb_free_rsl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_txb_free_rsl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_txb_free_rsl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_txb_free_rsl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.142, i32 }
%union.anon.142 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtl_80211_hdr_3addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8], i16 }
%struct.ieee80211_crypto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ieee80211_txb = type { i8, i8, i8, i8, i16, i16, i16, [0 x ptr] }
%struct.ieee80211_snap_hdr = type { i8, i8, i8, [3 x i8] }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }
%struct.rtl_80211_hdr_1addr = type { i16, i16, [6 x i8], [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@ieee80211_encrypt_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"=========>%s(), crypt is null\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee80211_encrypt_fragment\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_encrypt_fragment._entry_ptr = internal global ptr @ieee80211_encrypt_fragment._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@ieee80211_encrypt_fragment.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TKIP countermeasures: dropped TX packet to %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Encryption failed: len=%d.\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_txb_free_rsl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_txb_free_rsl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_txb_free_rsl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_txb_free_rsl to i32), ptr @__kstrtab_ieee80211_txb_free_rsl, ptr @__kstrtabns_ieee80211_txb_free_rsl }, section "___ksymtab+ieee80211_txb_free_rsl", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No xmit handler.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skb too small (%d).\0A\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ieee80211_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: TX: IEEE 802.11 EAPOL frame: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ieee80211_xmit\00", [17 x i8] zeroinitializer }, align 32
@ieee80211_xmit._entry_ptr = internal global ptr @ieee80211_xmit._entry, section ".printk_index", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate TXB\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@eap_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EAP-Packet\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EAPOL-Start\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EAPOL-Logoff\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EAPOL-Key\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EAPOL-Encap-ASF-Alert\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_tx_query_agg_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"===>can't get TS\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee80211_tx_query_agg_cap\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_tx_query_agg_cap._entry_ptr = internal global ptr @ieee80211_tx_query_agg_cap._entry, section ".printk_index", align 4
@switch.table.ieee80211_xmit = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 173, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 178, i32 54 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 183, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 206, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 559, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 566, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 588, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 686, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1186, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"eap_types\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1176, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1177, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1178, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1179, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1180, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [50 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1181, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [53 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 309, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"switch.table.ieee80211_xmit\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_ieee80211_txb_free_rsl, ptr @ieee80211_encrypt_fragment._entry, ptr @ieee80211_encrypt_fragment._entry_ptr, ptr @ieee80211_tx_query_agg_cap._entry, ptr @ieee80211_tx_query_agg_cap._entry_ptr, ptr @ieee80211_xmit._entry, ptr @ieee80211_xmit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @eap_types, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.ieee80211_xmit], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_encrypt_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eap_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tx_query_agg_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_xmit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_encrypt_fragment(ptr nocapture noundef %ieee, ptr noundef %frag, i32 noundef %hdr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_keyidx = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 72
  %0 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_keyidx, align 8
  %arrayidx = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 71, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %if.end

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %tkip_countermeasures = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 63
  %6 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tkip_countermeasures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.if.end30_crit_edge, label %land.lhs.true9

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true9:                                   ; preds = %if.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call11 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(5) @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then12, label %land.lhs.true9.if.end30_crit_edge

land.lhs.true9.if.end30_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then12:                                        ; preds = %land.lhs.true9
  %call13 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %frag, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_encrypt_fragment.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_encrypt_fragment, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !59

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ieee, align 8
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_encrypt_fragment.__UNIQUE_ID_ddebug476, ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %addr1) #8
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true9.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %refcnt = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !60
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %encrypt_msdu = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %encrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encrypt_msdu, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end30.land.lhs.true39_crit_edge, label %if.end37

if.end30.land.lhs.true39_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39

if.end37:                                         ; preds = %if.end30
  %priv = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call36 = tail call i32 %18(ptr noundef %frag, i32 noundef %hdr_len, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp38 = icmp eq i32 %call36, 0
  br i1 %cmp38, label %if.end37.land.lhs.true39_crit_edge, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end37.land.lhs.true39_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end37.land.lhs.true39_crit_edge, %if.end30.land.lhs.true39_crit_edge
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %encrypt_mpdu = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %encrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encrypt_mpdu, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %land.lhs.true39.if.end47_crit_edge, label %if.then42

land.lhs.true39.if.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  %priv45 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %priv45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv45, align 4
  %call46 = tail call i32 %24(ptr noundef %frag, i32 noundef %hdr_len, ptr noundef %26) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true39.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %res.1 = phi i32 [ %call46, %if.then42 ], [ 0, %land.lhs.true39.if.end47_crit_edge ], [ %call36, %if.end37.if.end47_crit_edge ]
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1)
  %cmp49 = icmp slt i32 %res.1, 0
  br i1 %cmp49, label %if.then50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ieee, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %frag, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef %31) #11
  %tx_discards = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 36, i32 9
  %32 = ptrtoint ptr %tx_discards to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_discards, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %tx_discards, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end47.cleanup_crit_edge, %if.then23, %if.then15, %if.then12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %if.then50 ], [ -1, %do.end ], [ -1, %if.then23 ], [ -1, %if.then12.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -1, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_txb_free_rsl(ptr noundef %txb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !62

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %txb) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %pTS.i = alloca ptr, align 4
  %pTxTs.i = alloca ptr, align 4
  %header = alloca %struct.rtl_80211_hdr_3addrqos, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %header) #8
  %0 = call ptr @memset(ptr %header, i32 0, i32 26)
  %current_network = getelementptr i8, ptr %dev, i32 23176
  %active = getelementptr i8, ptr %dev, i32 23260
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active, align 4
  %lock = getelementptr i8, ptr %dev, i32 20924
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %hard_start_xmit = getelementptr i8, ptr %dev, i32 30008
  %3 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hard_start_xmit, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %softmac_features = getelementptr i8, ptr %dev, i32 24046
  %5 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %softmac_features, align 2
  %7 = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %softmac_data_hard_start_xmit = getelementptr i8, ptr %dev, i32 30032
  %8 = ptrtoint ptr %softmac_data_hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %softmac_data_hard_start_xmit, align 8
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true10, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %softmac_features11 = getelementptr i8, ptr %dev, i32 24046
  %10 = ptrtoint ptr %softmac_features11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %softmac_features11, align 2
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.if.then_crit_edge

land.lhs.true10.if.then_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true10.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.7) #11
  br label %if.end557.critedge

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %raw_tx = getelementptr i8, ptr %dev, i32 24108
  %15 = ptrtoint ptr %raw_tx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %raw_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp17 = icmp eq i16 %16, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  br i1 %cmp17, label %if.then21, label %if.else435, !prof !63

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp22 = icmp ult i32 %18, 8
  br i1 %cmp22, label %if.then30, label %if.end33, !prof !62

if.then30:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %18) #11
  br label %if.end557.critedge

if.end33:                                         ; preds = %if.then21
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %21 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %h_proto, align 1
  %tx_keyidx = getelementptr i8, ptr %dev, i32 21128
  %26 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_keyidx, align 8
  %arrayidx = getelementptr %struct.ieee80211_device, ptr %add.ptr.i, i32 0, i32 71, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %25)
  %cmp36 = icmp eq i16 %25, -30578
  br i1 %cmp36, label %land.lhs.true38, label %if.end33.land.lhs.true40_crit_edge

if.end33.land.lhs.true40_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true40

land.lhs.true38:                                  ; preds = %if.end33
  %ieee802_1x = getelementptr i8, ptr %dev, i32 21060
  %30 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ieee802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool39.not = icmp eq i32 %31, 0
  br i1 %tobool39.not, label %land.lhs.true38.land.lhs.true40_crit_edge, label %land.lhs.true38.land.lhs.true46_crit_edge

land.lhs.true38.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true46

land.lhs.true38.land.lhs.true40_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true38.land.lhs.true40_crit_edge, %if.end33.land.lhs.true40_crit_edge
  %host_encrypt = getelementptr i8, ptr %dev, i32 21032
  %32 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_encrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool41.not = icmp eq i32 %33, 0
  %tobool43.not = icmp eq ptr %29, null
  %or.cond = select i1 %tobool41.not, i1 true, i1 %tobool43.not
  br i1 %or.cond, label %land.lhs.true40.land.lhs.true46_crit_edge, label %land.end

land.lhs.true40.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true46

land.end:                                         ; preds = %land.lhs.true40
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %tobool44.not = icmp eq ptr %35, null
  br i1 %tobool44.not, label %land.end.land.lhs.true46_crit_edge, label %land.end.if.end80_crit_edge

land.end.if.end80_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.end.land.lhs.true46_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.end.land.lhs.true46_crit_edge, %land.lhs.true40.land.lhs.true46_crit_edge, %land.lhs.true38.land.lhs.true46_crit_edge
  %ieee802_1x47 = getelementptr i8, ptr %dev, i32 21060
  %36 = ptrtoint ptr %ieee802_1x47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ieee802_1x47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not = icmp eq i32 %37, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end55_crit_edge, label %land.lhs.true49

land.lhs.true46.if.end55_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %drop_unencrypted = getelementptr i8, ptr %dev, i32 21072
  %38 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %drop_unencrypted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  %or.cond818 = select i1 %tobool50.not, i1 true, i1 %cmp36
  br i1 %or.cond818, label %land.lhs.true49.if.end55_crit_edge, label %if.then54

land.lhs.true49.if.end55_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dropped = getelementptr i8, ptr %dev, i32 20568
  %40 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end557.critedge

if.end55:                                         ; preds = %land.lhs.true49.if.end55_crit_edge, %land.lhs.true46.if.end55_crit_edge
  %tobool56.not = icmp eq ptr %29, null
  %cmp36.not = xor i1 %cmp36, true
  %brmerge819 = select i1 %tobool56.not, i1 true, i1 %cmp36.not
  br i1 %brmerge819, label %if.end55.if.end80_crit_edge, label %if.then62

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then62:                                        ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %42 = load i32, ptr @ieee80211_debug_level, align 4
  %and67 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then62.if.end80_crit_edge, label %do.end72

if.then62.if.end80_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end72:                                         ; preds = %if.then62
  %type = getelementptr i8, ptr %23, i32 15
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %44)
  %cmp.i = icmp ugt i8 %44, 4
  br i1 %cmp.i, label %do.end72.eap_get_type.exit_crit_edge, label %cond.false.i

do.end72.eap_get_type.exit_crit_edge:             ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %eap_get_type.exit

cond.false.i:                                     ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %conv74 = zext i8 %44 to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv74
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  br label %eap_get_type.exit

eap_get_type.exit:                                ; preds = %cond.false.i, %do.end72.eap_get_type.exit_crit_edge
  %cond.i = phi ptr [ %46, %cond.false.i ], [ @.str.12, %do.end72.eap_get_type.exit_crit_edge ]
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %cond.i) #11
  br label %if.end80

if.end80:                                         ; preds = %eap_get_type.exit, %if.then62.if.end80_crit_edge, %if.end55.if.end80_crit_edge, %land.end.if.end80_crit_edge
  %47 = phi i1 [ false, %if.then62.if.end80_crit_edge ], [ false, %eap_get_type.exit ], [ false, %if.end55.if.end80_crit_edge ], [ true, %land.end.if.end80_crit_edge ]
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %dest.sroa.0.0.copyload = load i8, ptr %49, align 1
  %dest.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %49, i32 1
  %51 = ptrtoint ptr %dest.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %51)
  %dest.sroa.6.0.copyload = load i8, ptr %dest.sroa.6.0..sroa_idx, align 1
  %dest.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %49, i32 2
  %52 = ptrtoint ptr %dest.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %52)
  %dest.sroa.7.0.copyload = load i8, ptr %dest.sroa.7.0..sroa_idx, align 1
  %dest.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %49, i32 3
  %53 = ptrtoint ptr %dest.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %53)
  %dest.sroa.8.0.copyload = load i8, ptr %dest.sroa.8.0..sroa_idx, align 1
  %dest.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %49, i32 4
  %54 = ptrtoint ptr %dest.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %dest.sroa.9.0.copyload = load i8, ptr %dest.sroa.9.0..sroa_idx, align 1
  %dest.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %49, i32 5
  %55 = ptrtoint ptr %dest.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %55)
  %dest.sroa.10.0.copyload = load i8, ptr %dest.sroa.10.0..sroa_idx, align 1
  %add.ptr83 = getelementptr i8, ptr %49, i32 6
  %56 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %56)
  %src.sroa.0.0.copyload = load i8, ptr %add.ptr83, align 1
  %src.sroa.6.0.add.ptr83.sroa_idx = getelementptr i8, ptr %49, i32 7
  %57 = ptrtoint ptr %src.sroa.6.0.add.ptr83.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %57)
  %src.sroa.6.0.copyload = load i8, ptr %src.sroa.6.0.add.ptr83.sroa_idx, align 1
  %src.sroa.7.0.add.ptr83.sroa_idx = getelementptr i8, ptr %49, i32 8
  %58 = ptrtoint ptr %src.sroa.7.0.add.ptr83.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %58)
  %src.sroa.7.0.copyload = load i8, ptr %src.sroa.7.0.add.ptr83.sroa_idx, align 1
  %src.sroa.8.0.add.ptr83.sroa_idx = getelementptr i8, ptr %49, i32 9
  %59 = ptrtoint ptr %src.sroa.8.0.add.ptr83.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %59)
  %src.sroa.8.0.copyload = load i8, ptr %src.sroa.8.0.add.ptr83.sroa_idx, align 1
  %src.sroa.9.0.add.ptr83.sroa_idx = getelementptr i8, ptr %49, i32 10
  %60 = ptrtoint ptr %src.sroa.9.0.add.ptr83.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %60)
  %src.sroa.9.0.copyload = load i8, ptr %src.sroa.9.0.add.ptr83.sroa_idx, align 1
  %src.sroa.10.0.add.ptr83.sroa_idx = getelementptr i8, ptr %49, i32 11
  %61 = ptrtoint ptr %src.sroa.10.0.add.ptr83.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %61)
  %src.sroa.10.0.copyload = load i8, ptr %src.sroa.10.0.add.ptr83.sroa_idx, align 1
  %call84 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #8
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %add86 = add i32 %63, 8
  %spec.select913 = select i1 %47, i32 16392, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool90.not = icmp eq i32 %2, 0
  %or = or i32 %spec.select913, 128
  %fc.1 = select i1 %tobool90.not, i32 %spec.select913, i32 %or
  %iw_mode = getelementptr i8, ptr %dev, i32 20820
  %64 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iw_mode, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %65, label %if.end80.if.end115_crit_edge [
    i32 2, label %if.then97
    i32 1, label %if.then105
  ]

if.end80.if.end115_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then97:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %or98 = or i32 %fc.1, 256
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2
  %67 = call ptr @memcpy(ptr %addr1, ptr %current_network, i32 6)
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3
  %68 = ptrtoint ptr %addr2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %src.sroa.0.0.copyload, ptr %addr2, align 2
  %src.sroa.6.0.addr2.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %src.sroa.6.0.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %src.sroa.6.0.copyload, ptr %src.sroa.6.0.addr2.sroa_idx, align 1
  %src.sroa.7.0.addr2.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %src.sroa.7.0.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %src.sroa.7.0.copyload, ptr %src.sroa.7.0.addr2.sroa_idx, align 2
  %src.sroa.8.0.addr2.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %src.sroa.8.0.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %src.sroa.8.0.copyload, ptr %src.sroa.8.0.addr2.sroa_idx, align 1
  %src.sroa.9.0.addr2.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %src.sroa.9.0.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %src.sroa.9.0.copyload, ptr %src.sroa.9.0.addr2.sroa_idx, align 2
  %src.sroa.10.0.addr2.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 5
  %73 = ptrtoint ptr %src.sroa.10.0.addr2.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %src.sroa.10.0.copyload, ptr %src.sroa.10.0.addr2.sroa_idx, align 1
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4
  %74 = ptrtoint ptr %addr3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %dest.sroa.0.0.copyload, ptr %addr3, align 2
  %dest.sroa.6.0.addr3.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %dest.sroa.6.0.addr3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %dest.sroa.6.0.copyload, ptr %dest.sroa.6.0.addr3.sroa_idx, align 1
  %dest.sroa.7.0.addr3.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %dest.sroa.7.0.addr3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %dest.sroa.7.0.copyload, ptr %dest.sroa.7.0.addr3.sroa_idx, align 2
  %dest.sroa.8.0.addr3.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %dest.sroa.8.0.addr3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %dest.sroa.8.0.copyload, ptr %dest.sroa.8.0.addr3.sroa_idx, align 1
  %dest.sroa.9.0.addr3.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %dest.sroa.9.0.addr3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %dest.sroa.9.0.copyload, ptr %dest.sroa.9.0.addr3.sroa_idx, align 2
  %dest.sroa.10.0.addr3.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 5
  %79 = ptrtoint ptr %dest.sroa.10.0.addr3.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %dest.sroa.10.0.copyload, ptr %dest.sroa.10.0.addr3.sroa_idx, align 1
  br label %if.end115

if.then105:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %addr1106 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2
  %80 = ptrtoint ptr %addr1106 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %dest.sroa.0.0.copyload, ptr %addr1106, align 2
  %dest.sroa.6.0.addr1106.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %dest.sroa.6.0.addr1106.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %dest.sroa.6.0.copyload, ptr %dest.sroa.6.0.addr1106.sroa_idx, align 1
  %dest.sroa.7.0.addr1106.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %dest.sroa.7.0.addr1106.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %dest.sroa.7.0.copyload, ptr %dest.sroa.7.0.addr1106.sroa_idx, align 2
  %dest.sroa.8.0.addr1106.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 3
  %83 = ptrtoint ptr %dest.sroa.8.0.addr1106.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %dest.sroa.8.0.copyload, ptr %dest.sroa.8.0.addr1106.sroa_idx, align 1
  %dest.sroa.9.0.addr1106.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 4
  %84 = ptrtoint ptr %dest.sroa.9.0.addr1106.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %dest.sroa.9.0.copyload, ptr %dest.sroa.9.0.addr1106.sroa_idx, align 2
  %dest.sroa.10.0.addr1106.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 5
  %85 = ptrtoint ptr %dest.sroa.10.0.addr1106.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %dest.sroa.10.0.copyload, ptr %dest.sroa.10.0.addr1106.sroa_idx, align 1
  %addr2108 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3
  %86 = ptrtoint ptr %addr2108 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %src.sroa.0.0.copyload, ptr %addr2108, align 2
  %src.sroa.6.0.addr2108.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %src.sroa.6.0.addr2108.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %src.sroa.6.0.copyload, ptr %src.sroa.6.0.addr2108.sroa_idx, align 1
  %src.sroa.7.0.addr2108.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 2
  %88 = ptrtoint ptr %src.sroa.7.0.addr2108.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %src.sroa.7.0.copyload, ptr %src.sroa.7.0.addr2108.sroa_idx, align 2
  %src.sroa.8.0.addr2108.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 3
  %89 = ptrtoint ptr %src.sroa.8.0.addr2108.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %src.sroa.8.0.copyload, ptr %src.sroa.8.0.addr2108.sroa_idx, align 1
  %src.sroa.9.0.addr2108.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 4
  %90 = ptrtoint ptr %src.sroa.9.0.addr2108.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %src.sroa.9.0.copyload, ptr %src.sroa.9.0.addr2108.sroa_idx, align 2
  %src.sroa.10.0.addr2108.sroa_idx = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 5
  %91 = ptrtoint ptr %src.sroa.10.0.addr2108.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %src.sroa.10.0.copyload, ptr %src.sroa.10.0.addr2108.sroa_idx, align 1
  %addr3110 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 4
  %92 = call ptr @memcpy(ptr %addr3110, ptr %current_network, i32 6)
  br label %if.end115

if.end115:                                        ; preds = %if.then105, %if.then97, %if.end80.if.end115_crit_edge
  %fc.2 = phi i32 [ %or98, %if.then97 ], [ %fc.1, %if.then105 ], [ %fc.1, %if.end80.if.end115_crit_edge ]
  %conv116 = trunc i32 %fc.2 to i16
  %93 = tail call i16 @llvm.bswap.i16(i16 %conv116)
  %94 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %header, align 2
  %addr1117 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2
  %95 = ptrtoint ptr %addr1117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr1117, align 4
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.not = icmp eq i32 %97, 0
  br i1 %tobool.i.not, label %if.else122, label %if.end115.if.end124_crit_edge

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.else122:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %fts = getelementptr i8, ptr %dev, i32 23160
  %98 = ptrtoint ptr %fts to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fts, align 8
  %conv123 = zext i16 %99 to i32
  br label %if.end124

if.end124:                                        ; preds = %if.else122, %if.end115.if.end124_crit_edge
  %frag_size.0 = phi i32 [ %conv123, %if.else122 ], [ 2346, %if.end115.if.end124_crit_edge ]
  br i1 %tobool90.not, label %if.end124.if.end135_crit_edge, label %if.then126

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then126:                                       ; preds = %if.end124
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %103)
  %cmp.not.i = icmp eq i16 %103, 2048
  br i1 %cmp.not.i, label %if.end.i, label %if.then126.ieee80211_classify.exit_crit_edge

if.then126.ieee80211_classify.exit_crit_edge:     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_classify.exit

if.end.i:                                         ; preds = %if.then126
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %104 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %106 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %107 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %105, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %tos.i, align 1
  %110 = and i8 %109, -4
  %and.i = zext i8 %110 to i32
  %111 = add nsw i32 %and.i, -32
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %112)
  %113 = icmp ult i32 %112, 7
  br i1 %113, label %switch.lookup, label %if.end.i.ieee80211_classify.exit_crit_edge

if.end.i.ieee80211_classify.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_classify.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ieee80211_xmit, i32 0, i32 %112
  %114 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %114)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ieee80211_classify.exit

ieee80211_classify.exit:                          ; preds = %switch.lookup, %if.end.i.ieee80211_classify.exit_crit_edge, %if.then126.ieee80211_classify.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then126.ieee80211_classify.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.ieee80211_classify.exit_crit_edge ]
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %115 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %retval.0.i, ptr %priority, align 4
  %116 = trunc i32 %retval.0.i to i16
  %conv132 = shl nuw nsw i16 %116, 8
  %qos_ctl133 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 7
  %117 = ptrtoint ptr %qos_ctl133 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv132, ptr %qos_ctl133, align 2
  br label %if.end135

if.end135:                                        ; preds = %ieee80211_classify.exit, %if.end124.if.end135_crit_edge
  %hdr_len.0 = phi i32 [ 26, %ieee80211_classify.exit ], [ 24, %if.end124.if.end135_crit_edge ]
  %sub = sub nsw i32 %frag_size.0, %hdr_len.0
  %config = getelementptr i8, ptr %dev, i32 21016
  %118 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %config, align 8
  %and136 = and i32 %119, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  %sub139 = add nsw i32 %sub, -4
  %spec.select = select i1 %tobool137.not, i32 %sub, i32 %sub139
  br i1 %47, label %if.then142, label %if.end135.if.end147_crit_edge

if.end135.if.end147_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then142:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %ops143 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %29, i32 0, i32 1
  %120 = ptrtoint ptr %ops143 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops143, align 4
  %extra_prefix_len = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %121, i32 0, i32 10
  %122 = ptrtoint ptr %extra_prefix_len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %extra_prefix_len, align 4
  %extra_postfix_len = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %121, i32 0, i32 11
  %124 = ptrtoint ptr %extra_postfix_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %extra_postfix_len, align 4
  %126 = add i32 %123, %125
  %sub146 = sub i32 %spec.select, %126
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end135.if.end147_crit_edge
  %bytes_per_frag.1 = phi i32 [ %sub146, %if.then142 ], [ %spec.select, %if.end135.if.end147_crit_edge ]
  %add86.frozen = freeze i32 %add86
  %bytes_per_frag.1.frozen = freeze i32 %bytes_per_frag.1
  %div = sdiv i32 %add86.frozen, %bytes_per_frag.1.frozen
  %127 = mul i32 %div, %bytes_per_frag.1.frozen
  %rem.decomposed = sub i32 %add86.frozen, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool148.not = icmp eq i32 %rem.decomposed, 0
  %not.tobool148.not = xor i1 %tobool148.not, true
  %inc150 = zext i1 %not.tobool148.not to i32
  %nr_frags.0 = add i32 %div, %inc150
  %bytes_last_frag.0 = select i1 %tobool148.not, i32 %bytes_per_frag.1, i32 %rem.decomposed
  %tx_headroom = getelementptr i8, ptr %dev, i32 21012
  %128 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_headroom, align 4
  %add153 = add i32 %129, %frag_size.0
  %call154 = tail call fastcc ptr @ieee80211_alloc_txb(i32 noundef %nr_frags.0, i32 noundef %add153)
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %if.end147.failed_crit_edge, label %if.end166, !prof !62

if.end147.failed_crit_edge:                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end166:                                        ; preds = %if.end147
  %conv167 = zext i1 %47 to i8
  %encrypted = getelementptr inbounds %struct.ieee80211_txb, ptr %call154, i32 0, i32 1
  %130 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv167, ptr %encrypted, align 1
  %conv168 = trunc i32 %add86 to i16
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv168)
  %payload_size = getelementptr inbounds %struct.ieee80211_txb, ptr %call154, i32 0, i32 6
  %132 = ptrtoint ptr %payload_size to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %payload_size, align 4
  br i1 %tobool90.not, label %if.end166.if.end195_crit_edge, label %if.then170

if.end166.if.end195_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.then170:                                       ; preds = %if.end166
  %priority171 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %133 = ptrtoint ptr %priority171 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %priority171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp172 = icmp eq i32 %134, 0
  br i1 %cmp172, label %if.then170.if.end195_crit_edge, label %cond.false

if.then170.if.end195_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

cond.false:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp175 = icmp ult i32 %134, 3
  br i1 %cmp175, label %cond.false.if.end195_crit_edge, label %cond.false178

cond.false.if.end195_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

cond.false178:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp180 = icmp eq i32 %134, 3
  br i1 %cmp180, label %cond.false178.if.end195_crit_edge, label %cond.false183

cond.false178.if.end195_crit_edge:                ; preds = %cond.false178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

cond.false183:                                    ; preds = %cond.false178
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %134)
  %cmp185 = icmp ult i32 %134, 6
  %cond = select i1 %cmp185, i8 2, i8 3
  br label %if.end195

if.end195:                                        ; preds = %cond.false183, %cond.false178.if.end195_crit_edge, %cond.false.if.end195_crit_edge, %if.then170.if.end195_crit_edge, %if.end166.if.end195_crit_edge
  %.sink = phi i8 [ 1, %if.then170.if.end195_crit_edge ], [ 0, %cond.false.if.end195_crit_edge ], [ %cond, %cond.false183 ], [ 1, %cond.false178.if.end195_crit_edge ], [ 0, %if.end166.if.end195_crit_edge ]
  %queue_index194 = getelementptr inbounds %struct.ieee80211_txb, ptr %call154, i32 0, i32 2
  %135 = ptrtoint ptr %queue_index194 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %.sink, ptr %queue_index194, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags.0)
  %cmp196905 = icmp sgt i32 %nr_frags.0, 0
  br i1 %cmp196905, label %for.body.lr.ph, label %if.end195.for.end_crit_edge

if.end195.for.end_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end195
  %priority204 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %hwsec_active = getelementptr i8, ptr %dev, i32 2446
  %ops247 = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %29, i32 0, i32 1
  %sub255 = add nsw i32 %nr_frags.0, -1
  %conv260 = or i16 %conv116, 1024
  %136 = tail call i16 @llvm.bswap.i16(i16 %conv260)
  %seq_ctrl297 = getelementptr i8, ptr %dev, i32 24048
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %25)
  %switch.selectcmp.case1.i = icmp eq i16 %25, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %25)
  %switch.selectcmp.case2.i = icmp eq i16 %25, -32525
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %137 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0906 = phi i32 [ 0, %for.body.lr.ph ], [ %inc326, %for.inc.for.body_crit_edge ]
  %arrayidx198 = getelementptr %struct.ieee80211_txb, ptr %call154, i32 0, i32 7, i32 %i.0906
  %138 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx198, align 4
  %add.ptr201 = getelementptr %struct.sk_buff, ptr %139, i32 0, i32 3, i32 8
  br i1 %tobool90.not, label %if.else233, label %if.then203

if.then203:                                       ; preds = %for.body
  %140 = ptrtoint ptr %priority204 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %priority204, align 4
  %priority205 = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 15, i32 0, i32 6
  %142 = ptrtoint ptr %priority205 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %priority205, align 4
  %143 = load i32, ptr %priority204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp207 = icmp eq i32 %143, 0
  br i1 %cmp207, label %if.then203.if.end236_crit_edge, label %cond.false210

if.then203.if.end236_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

cond.false210:                                    ; preds = %if.then203
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %143)
  %cmp212 = icmp ult i32 %143, 3
  br i1 %cmp212, label %cond.false210.if.end236_crit_edge, label %cond.false215

cond.false210.if.end236_crit_edge:                ; preds = %cond.false210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

cond.false215:                                    ; preds = %cond.false210
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %143)
  %cmp217 = icmp eq i32 %143, 3
  br i1 %cmp217, label %cond.false215.if.end236_crit_edge, label %cond.false220

cond.false215.if.end236_crit_edge:                ; preds = %cond.false215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236

cond.false220:                                    ; preds = %cond.false215
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %143)
  %cmp222 = icmp ult i32 %143, 6
  %cond224 = select i1 %cmp222, i8 2, i8 3
  br label %if.end236

if.else233:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %priority234 = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 15, i32 0, i32 6
  %144 = ptrtoint ptr %priority234 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %priority234, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.else233, %cond.false220, %cond.false215.if.end236_crit_edge, %cond.false210.if.end236_crit_edge, %if.then203.if.end236_crit_edge
  %.sink914 = phi i8 [ 0, %if.else233 ], [ 1, %if.then203.if.end236_crit_edge ], [ 0, %cond.false210.if.end236_crit_edge ], [ %cond224, %cond.false220 ], [ 1, %cond.false215.if.end236_crit_edge ]
  %queue_index235 = getelementptr %struct.sk_buff, ptr %139, i32 0, i32 3, i32 13
  %145 = ptrtoint ptr %queue_index235 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %.sink914, ptr %queue_index235, align 1
  %146 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_headroom, align 4
  %data.i821 = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 19
  %148 = ptrtoint ptr %data.i821 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i821, align 4
  %add.ptr.i822 = getelementptr i8, ptr %149, i32 %147
  store ptr %add.ptr.i822, ptr %data.i821, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %139, i32 0, i32 16
  %150 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %151, i32 %147
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br i1 %47, label %if.then239, label %if.else249

if.then239:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool240.not = icmp ne i8 %153, 0
  %154 = ptrtoint ptr %add.ptr201 to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load243 = load i8, ptr %add.ptr201, align 2
  %bf.clear244 = and i8 %bf.load243, -2
  %masksel = zext i1 %tobool240.not to i8
  %storemerge = or i8 %bf.clear244, %masksel
  store i8 %storemerge, ptr %add.ptr201, align 2
  %155 = ptrtoint ptr %ops247 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops247, align 4
  %extra_prefix_len248 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %156, i32 0, i32 10
  %157 = ptrtoint ptr %extra_prefix_len248 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %extra_prefix_len248, align 4
  %add.ptr.i824 = getelementptr i8, ptr %add.ptr.i822, i32 %158
  %159 = ptrtoint ptr %data.i821 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %add.ptr.i824, ptr %data.i821, align 4
  %add.ptr1.i826 = getelementptr i8, ptr %add.ptr1.i, i32 %158
  %160 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %add.ptr1.i826, ptr %tail.i, align 8
  br label %if.end253

if.else249:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %add.ptr201 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load250 = load i8, ptr %add.ptr201, align 2
  %bf.clear251 = and i8 %bf.load250, -2
  store i8 %bf.clear251, ptr %add.ptr201, align 2
  br label %if.end253

if.end253:                                        ; preds = %if.else249, %if.then239
  %call.i = tail call ptr @skb_put(ptr noundef %139, i32 noundef %hdr_len.0) #8
  %162 = call ptr @memcpy(ptr %call.i, ptr %header, i32 %hdr_len.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0906, i32 %sub255)
  %cmp256.not = icmp eq i32 %i.0906, %sub255
  br i1 %cmp256.not, label %if.end253.if.end263_crit_edge, label %if.then258

if.end253.if.end263_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.then258:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %136, ptr %call.i, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.then258, %if.end253.if.end263_crit_edge
  %bytes.0 = phi i32 [ %bytes_per_frag.1, %if.then258 ], [ %bytes_last_frag.0, %if.end253.if.end263_crit_edge ]
  br i1 %tobool90.not, label %if.end263.if.end304_crit_edge, label %if.then265

if.end263.if.end304_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end304

if.then265:                                       ; preds = %if.end263
  %164 = ptrtoint ptr %priority204 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %priority204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp267 = icmp eq i32 %165, 0
  br i1 %cmp267, label %if.then265.cond.end289_crit_edge, label %cond.false270

if.then265.cond.end289_crit_edge:                 ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end289

cond.false270:                                    ; preds = %if.then265
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %165)
  %cmp272 = icmp ult i32 %165, 3
  br i1 %cmp272, label %cond.false270.cond.end289_crit_edge, label %cond.false275

cond.false270.cond.end289_crit_edge:              ; preds = %cond.false270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end289

cond.false275:                                    ; preds = %cond.false270
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %165)
  %cmp277 = icmp eq i32 %165, 3
  br i1 %cmp277, label %cond.false275.cond.end289_crit_edge, label %cond.false280

cond.false275.cond.end289_crit_edge:              ; preds = %cond.false275
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end289

cond.false280:                                    ; preds = %cond.false275
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %165)
  %cmp282 = icmp ult i32 %165, 6
  %cond284 = select i1 %cmp282, i32 2, i32 3
  br label %cond.end289

cond.end289:                                      ; preds = %cond.false280, %cond.false275.cond.end289_crit_edge, %cond.false270.cond.end289_crit_edge, %if.then265.cond.end289_crit_edge
  %cond290 = phi i32 [ 1, %if.then265.cond.end289_crit_edge ], [ 0, %cond.false270.cond.end289_crit_edge ], [ %cond284, %cond.false280 ], [ 1, %cond.false275.cond.end289_crit_edge ]
  %add291 = add nuw nsw i32 %cond290, 1
  %arrayidx292 = getelementptr %struct.ieee80211_device, ptr %add.ptr.i, i32 0, i32 100, i32 %add291
  br label %if.end304

if.end304:                                        ; preds = %cond.end289, %if.end263.if.end304_crit_edge
  %.sink916.in = phi ptr [ %arrayidx292, %cond.end289 ], [ %seq_ctrl297, %if.end263.if.end304_crit_edge ]
  %166 = ptrtoint ptr %.sink916.in to i32
  call void @__asan_load2_noabort(i32 %166)
  %.sink916 = load i16, ptr %.sink916.in, align 2
  %conv299 = zext i16 %.sink916 to i32
  %shl300 = shl nuw nsw i32 %conv299, 4
  %or301 = or i32 %shl300, %i.0906
  %conv302 = trunc i32 %or301 to i16
  %167 = tail call i16 @llvm.bswap.i16(i16 %conv302)
  %seq_ctl303 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %call.i, i32 0, i32 5
  %168 = ptrtoint ptr %seq_ctl303 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %167, ptr %seq_ctl303, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0906)
  %cmp305 = icmp eq i32 %i.0906, 0
  br i1 %cmp305, label %if.then307, label %if.end304.if.end312_crit_edge

if.end304.if.end312_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then307:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  %call308 = tail call ptr @skb_put(ptr noundef %139, i32 noundef 8) #8
  %169 = ptrtoint ptr %call308 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -86, ptr %call308, align 1
  %ssap.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %call308, i32 0, i32 1
  %170 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %call308, i32 0, i32 2
  %171 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 3, ptr %ctrl.i, align 1
  %oui5.i = getelementptr inbounds %struct.ieee80211_snap_hdr, ptr %call308, i32 0, i32 3
  %172 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.ieee80211_snap_hdr, ptr %call308, i32 0, i32 3, i32 1
  %173 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx12.i = getelementptr %struct.ieee80211_snap_hdr, ptr %call308, i32 0, i32 3, i32 2
  %174 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %137, ptr %arrayidx12.i, align 1
  %add.ptr.i827 = getelementptr i8, ptr %call308, i32 6
  %175 = ptrtoint ptr %add.ptr.i827 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %25, ptr %add.ptr.i827, align 2
  %sub311 = add i32 %bytes.0, -8
  br label %if.end312

if.end312:                                        ; preds = %if.then307, %if.end304.if.end312_crit_edge
  %bytes.1 = phi i32 [ %sub311, %if.then307 ], [ %bytes.0, %if.end304.if.end312_crit_edge ]
  %176 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data, align 4
  %call.i828 = tail call ptr @skb_put(ptr noundef %139, i32 noundef %bytes.1) #8
  %178 = call ptr @memcpy(ptr %call.i828, ptr %177, i32 %bytes.1)
  %call315 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %bytes.1) #8
  br i1 %47, label %if.then317, label %if.end312.if.end319_crit_edge

if.end312.if.end319_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319

if.then317:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  %call318 = tail call i32 @ieee80211_encrypt_fragment(ptr noundef %add.ptr.i, ptr noundef %139, i32 noundef %hdr_len.0)
  br label %if.end319

if.end319:                                        ; preds = %if.then317, %if.end312.if.end319_crit_edge
  %179 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %config, align 8
  %and321 = and i32 %180, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321)
  %tobool322.not = icmp eq i32 %and321, 0
  br i1 %tobool322.not, label %if.end319.for.inc_crit_edge, label %if.then323

if.end319.for.inc_crit_edge:                      ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then323:                                       ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  %call324 = tail call ptr @skb_put(ptr noundef %139, i32 noundef 4) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then323, %if.end319.for.inc_crit_edge
  %inc326 = add nuw nsw i32 %i.0906, 1
  %exitcond.not = icmp eq i32 %inc326, %nr_frags.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end195.for.end_crit_edge
  br i1 %tobool90.not, label %if.else420, label %if.then328

if.then328:                                       ; preds = %for.end
  %priority330 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %181 = ptrtoint ptr %priority330 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %priority330, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp331 = icmp eq i32 %182, 0
  br i1 %cmp331, label %cond.end353.thread, label %cond.false334

cond.false334:                                    ; preds = %if.then328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp336 = icmp ult i32 %182, 3
  br i1 %cmp336, label %cond.end353.thread908, label %cond.false339

cond.false339:                                    ; preds = %cond.false334
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp341 = icmp eq i32 %182, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp346 = icmp ult i32 %182, 6
  %cond348.op = select i1 %cmp346, i32 3, i32 4
  %add355 = select i1 %cmp341, i32 2, i32 %cond348.op
  %arrayidx356 = getelementptr %struct.ieee80211_device, ptr %add.ptr.i, i32 0, i32 100, i32 %add355
  %183 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx356, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %184)
  %cmp358 = icmp eq i16 %184, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp373 = icmp eq i32 %182, 3
  br i1 %cmp358, label %cond.false371.critedge, label %cond.false400.critedge

cond.end353.thread908:                            ; preds = %cond.false334
  %arrayidx356911 = getelementptr i8, ptr %dev, i32 24050
  %185 = ptrtoint ptr %arrayidx356911 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx356911, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %186)
  %cmp358912 = icmp eq i16 %186, 4095
  br i1 %cmp358912, label %cond.end353.thread908.cond.end385_crit_edge, label %cond.end353.thread908.cond.end414_crit_edge

cond.end353.thread908.cond.end414_crit_edge:      ; preds = %cond.end353.thread908
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end414

cond.end353.thread908.cond.end385_crit_edge:      ; preds = %cond.end353.thread908
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end385

cond.end353.thread:                               ; preds = %if.then328
  %arrayidx356896 = getelementptr i8, ptr %dev, i32 24052
  %187 = ptrtoint ptr %arrayidx356896 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx356896, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %188)
  %cmp358897 = icmp eq i16 %188, 4095
  br i1 %cmp358897, label %cond.end353.thread.cond.end385_crit_edge, label %cond.end353.thread.cond.end414_crit_edge

cond.end353.thread.cond.end414_crit_edge:         ; preds = %cond.end353.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end414

cond.end353.thread.cond.end385_crit_edge:         ; preds = %cond.end353.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end385

cond.false371.critedge:                           ; preds = %cond.false339
  br i1 %cmp373, label %cond.false371.critedge.cond.end385_crit_edge, label %cond.false376

cond.false371.critedge.cond.end385_crit_edge:     ; preds = %cond.false371.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end385

cond.false376:                                    ; preds = %cond.false371.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp378 = icmp ult i32 %182, 6
  %phi.bo817 = select i1 %cmp378, i32 3, i32 4
  br label %cond.end385

cond.end385:                                      ; preds = %cond.false376, %cond.false371.critedge.cond.end385_crit_edge, %cond.end353.thread.cond.end385_crit_edge, %cond.end353.thread908.cond.end385_crit_edge
  %cond386 = phi i32 [ %phi.bo817, %cond.false376 ], [ 2, %cond.false371.critedge.cond.end385_crit_edge ], [ 2, %cond.end353.thread.cond.end385_crit_edge ], [ 1, %cond.end353.thread908.cond.end385_crit_edge ]
  %arrayidx388 = getelementptr %struct.ieee80211_device, ptr %add.ptr.i, i32 0, i32 100, i32 %cond386
  %189 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %arrayidx388, align 2
  br label %if.then466

cond.false400.critedge:                           ; preds = %cond.false339
  br i1 %cmp373, label %cond.false400.critedge.cond.end414_crit_edge, label %cond.false405

cond.false400.critedge.cond.end414_crit_edge:     ; preds = %cond.false400.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end414

cond.false405:                                    ; preds = %cond.false400.critedge
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp407 = icmp ult i32 %182, 6
  %phi.bo = select i1 %cmp407, i32 3, i32 4
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false405, %cond.false400.critedge.cond.end414_crit_edge, %cond.end353.thread.cond.end414_crit_edge, %cond.end353.thread908.cond.end414_crit_edge
  %cond415 = phi i32 [ %phi.bo, %cond.false405 ], [ 2, %cond.false400.critedge.cond.end414_crit_edge ], [ 2, %cond.end353.thread.cond.end414_crit_edge ], [ 1, %cond.end353.thread908.cond.end414_crit_edge ]
  %arrayidx417 = getelementptr %struct.ieee80211_device, ptr %add.ptr.i, i32 0, i32 100, i32 %cond415
  %190 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %arrayidx417, align 2
  %inc418 = add i16 %191, 1
  store i16 %inc418, ptr %arrayidx417, align 2
  br label %if.then466

if.else420:                                       ; preds = %for.end
  %seq_ctrl421 = getelementptr i8, ptr %dev, i32 24048
  %192 = ptrtoint ptr %seq_ctrl421 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %seq_ctrl421, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %193)
  %cmp424 = icmp eq i16 %193, 4095
  br i1 %cmp424, label %if.then426, label %if.else429

if.then426:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %seq_ctrl421 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %seq_ctrl421, align 8
  br label %if.then466

if.else429:                                       ; preds = %if.else420
  call void @__sanitizer_cov_trace_pc() #10
  %inc432 = add i16 %193, 1
  %195 = ptrtoint ptr %seq_ctrl421 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %inc432, ptr %seq_ctrl421, align 8
  br label %if.then466

if.else435:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %18)
  %cmp437 = icmp ult i32 %18, 24
  br i1 %cmp437, label %if.then445, label %if.end448, !prof !62

if.then445:                                       ; preds = %if.else435
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %197, ptr noundef nonnull @.str.8, i32 noundef %18) #11
  br label %if.end557.critedge

if.end448:                                        ; preds = %if.else435
  %call450 = tail call fastcc ptr @ieee80211_alloc_txb(i32 noundef 1, i32 noundef %18)
  %tobool451.not = icmp eq ptr %call450, null
  br i1 %tobool451.not, label %if.end448.failed_crit_edge, label %success.thread900

if.end448.failed_crit_edge:                       ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

success.thread900:                                ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #10
  %encrypted455 = getelementptr inbounds %struct.ieee80211_txb, ptr %call450, i32 0, i32 1
  %198 = ptrtoint ptr %encrypted455 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %encrypted455, align 1
  %199 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len, align 4
  %conv457 = trunc i32 %200 to i16
  %201 = tail call i16 @llvm.bswap.i16(i16 %conv457)
  %payload_size458 = getelementptr inbounds %struct.ieee80211_txb, ptr %call450, i32 0, i32 6
  %202 = ptrtoint ptr %payload_size458 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %payload_size458, align 4
  %fragments459 = getelementptr inbounds %struct.ieee80211_txb, ptr %call450, i32 0, i32 7
  %203 = ptrtoint ptr %fragments459 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fragments459, align 4
  %data461 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %205 = ptrtoint ptr %data461 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data461, align 4
  %207 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len, align 4
  %call.i829 = tail call ptr @skb_put(ptr noundef %204, i32 noundef %208) #8
  %209 = call ptr @memcpy(ptr %call.i829, ptr %206, i32 %208)
  br label %if.then466

if.then466:                                       ; preds = %success.thread900, %if.else429, %if.then426, %cond.end414, %cond.end385
  %txb.0903 = phi ptr [ %call450, %success.thread900 ], [ %call154, %if.then426 ], [ %call154, %if.else429 ], [ %call154, %cond.end385 ], [ %call154, %cond.end414 ]
  %fragments467 = getelementptr inbounds %struct.ieee80211_txb, ptr %txb.0903, i32 0, i32 7
  %210 = ptrtoint ptr %fragments467 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %fragments467, align 4
  %add.ptr471 = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 8
  %bTxEnableFwCalcDur = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 10
  %212 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %212)
  %bf.load472 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set474 = or i16 %bf.load472, 2048
  store i16 %bf.set474, ptr %bTxEnableFwCalcDur, align 2
  %addr1475 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2
  %213 = ptrtoint ptr %addr1475 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %addr1475, align 4
  %215 = and i32 %214, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.i830.not = icmp eq i32 %215, 0
  br i1 %tobool.i830.not, label %if.then466.if.end482_crit_edge, label %if.then478

if.then466.if.end482_crit_edge:                   ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end482

if.then478:                                       ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set481 = or i16 %bf.load472, 2056
  %216 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %bf.set481, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end482

if.end482:                                        ; preds = %if.then478, %if.then466.if.end482_crit_edge
  %217 = ptrtoint ptr %addr1475 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %addr1475, align 2
  %add.ptr1.i831 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 2
  %219 = ptrtoint ptr %add.ptr1.i831 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %add.ptr1.i831, align 2
  %and9.i = and i16 %220, %218
  %add.ptr3.i = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 4
  %221 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %222
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i832 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i832, label %if.then486, label %if.end482.if.end490_crit_edge

if.end482.if.end490_crit_edge:                    ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end490

if.then486:                                       ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %223)
  %bf.load487 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set489 = or i16 %bf.load487, 4
  store i16 %bf.set489, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end490

if.end490:                                        ; preds = %if.then486, %if.end482.if.end490_crit_edge
  %bTxDisableRateFallBack.i = getelementptr i8, ptr %dev, i32 2614
  %224 = ptrtoint ptr %bTxDisableRateFallBack.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %bTxDisableRateFallBack.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i, label %if.end490.if.end.i833_crit_edge, label %if.then.i

if.end490.if.end.i833_crit_edge:                  ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i833

if.then.i:                                        ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %add.ptr471 to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load.i = load i8, ptr %add.ptr471, align 2
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %add.ptr471, align 2
  br label %if.end.i833

if.end.i833:                                      ; preds = %if.then.i, %if.end490.if.end.i833_crit_edge
  %bTxUseDriverAssingedRate.i = getelementptr i8, ptr %dev, i32 2615
  %227 = ptrtoint ptr %bTxUseDriverAssingedRate.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %bTxUseDriverAssingedRate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool1.not.i = icmp eq i8 %228, 0
  br i1 %tobool1.not.i, label %if.end.i833.if.end6.i_crit_edge, label %if.then2.i

if.end.i833.if.end6.i_crit_edge:                  ; preds = %if.end.i833
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i833
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %add.ptr471 to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load3.i = load i8, ptr %add.ptr471, align 2
  %bf.set5.i = or i8 %bf.load3.i, 2
  store i8 %bf.set5.i, ptr %add.ptr471, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i833.if.end6.i_crit_edge
  %230 = ptrtoint ptr %add.ptr471 to i32
  call void @__asan_load1_noabort(i32 %230)
  %bf.load7.i = load i8, ptr %add.ptr471, align 2
  %231 = and i8 %bf.load7.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %231)
  %.not.i = icmp eq i8 %231, 6
  br i1 %.not.i, label %if.end6.i.ieee80211_txrate_selectmode.exit_crit_edge, label %if.then14.i

if.end6.i.ieee80211_txrate_selectmode.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_txrate_selectmode.exit

if.then14.i:                                      ; preds = %if.end6.i
  %iw_mode.i = getelementptr i8, ptr %dev, i32 20820
  %232 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %iw_mode.i, align 4
  %.off.i = add i32 %233, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then18.i, label %if.then14.i.ieee80211_txrate_selectmode.exit_crit_edge

if.then14.i.ieee80211_txrate_selectmode.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_txrate_selectmode.exit

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %RATRIndex.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 16
  %234 = ptrtoint ptr %RATRIndex.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %RATRIndex.i, align 2
  br label %ieee80211_txrate_selectmode.exit

ieee80211_txrate_selectmode.exit:                 ; preds = %if.then18.i, %if.then14.i.ieee80211_txrate_selectmode.exit_crit_edge, %if.end6.i.ieee80211_txrate_selectmode.exit_crit_edge
  %235 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %235)
  %bf.load492 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %236 = and i16 %bf.load492, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %if.else506, label %if.then504

if.then504:                                       ; preds = %ieee80211_txrate_selectmode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %basic_rate = getelementptr i8, ptr %dev, i32 24040
  %238 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %basic_rate, align 8
  br label %if.end527

if.else506:                                       ; preds = %ieee80211_txrate_selectmode.exit
  %mode = getelementptr i8, ptr %dev, i32 23996
  %240 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %mode, align 4
  %and507 = and i32 %241, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and507)
  %cmp508.not = icmp eq i32 %and507, 0
  br i1 %cmp508.not, label %cond.false511, label %cond.true510

cond.true510:                                     ; preds = %if.else506
  call void @__sanitizer_cov_trace_pc() #10
  %rate = getelementptr i8, ptr %dev, i32 24036
  %242 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rate, align 4
  br label %if.end527

cond.false511:                                    ; preds = %if.else506
  %HTCurrentOperaRate = getelementptr i8, ptr %dev, i32 2612
  %244 = ptrtoint ptr %HTCurrentOperaRate to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %HTCurrentOperaRate, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %cmp513 = icmp eq i8 %245, 0
  br i1 %cmp513, label %cond.true515, label %cond.false518

cond.true515:                                     ; preds = %cond.false511
  call void @__sanitizer_cov_trace_pc() #10
  %rate516 = getelementptr i8, ptr %dev, i32 24036
  %246 = ptrtoint ptr %rate516 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rate516, align 4
  %and517 = and i32 %247, 127
  br label %if.end527

cond.false518:                                    ; preds = %cond.false511
  call void @__sanitizer_cov_trace_pc() #10
  %conv512 = zext i8 %245 to i32
  br label %if.end527

if.end527:                                        ; preds = %cond.false518, %cond.true515, %cond.true510, %if.then504
  %cond524.sink = phi i32 [ %239, %if.then504 ], [ %243, %cond.true510 ], [ %and517, %cond.true515 ], [ %conv512, %cond.false518 ]
  %conv525 = trunc i32 %cond524.sink to i8
  %data_rate526 = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 20
  %248 = ptrtoint ptr %data_rate526 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv525, ptr %data_rate526, align 2
  %249 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %249)
  %bf.load.i834 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i = and i16 %bf.load.i834, -4097
  store i16 %bf.clear.i, ptr %bTxEnableFwCalcDur, align 2
  %data_rate.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv525)
  %cmp.i835 = icmp eq i8 %conv525, 2
  br i1 %cmp.i835, label %if.end527.ieee80211_qurey_ShortPreambleMode.exit_crit_edge, label %if.else.i

if.end527.ieee80211_qurey_ShortPreambleMode.exit_crit_edge: ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_qurey_ShortPreambleMode.exit

if.else.i:                                        ; preds = %if.end527
  %capability.i = getelementptr i8, ptr %dev, i32 23400
  %250 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %capability.i, align 8
  %252 = and i16 %251, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %tobool.not.i836 = icmp eq i16 %252, 0
  br i1 %tobool.not.i836, label %if.else.i.ieee80211_qurey_ShortPreambleMode.exit_crit_edge, label %if.then3.i

if.else.i.ieee80211_qurey_ShortPreambleMode.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_qurey_ShortPreambleMode.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set7.i = or i16 %bf.load.i834, 4096
  %253 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %bf.set7.i, ptr %bTxEnableFwCalcDur, align 2
  br label %ieee80211_qurey_ShortPreambleMode.exit

ieee80211_qurey_ShortPreambleMode.exit:           ; preds = %if.then3.i, %if.else.i.ieee80211_qurey_ShortPreambleMode.exit_crit_edge, %if.end527.ieee80211_qurey_ShortPreambleMode.exit_crit_edge
  %254 = ptrtoint ptr %fragments467 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fragments467, align 4
  %pHTInfo1.i = getelementptr i8, ptr %dev, i32 2472
  %256 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pHTInfo1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTxTs.i) #8
  %258 = ptrtoint ptr %pTxTs.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %pTxTs.i, align 4
  %data.i837 = getelementptr inbounds %struct.sk_buff, ptr %255, i32 0, i32 19
  %259 = ptrtoint ptr %data.i837 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %data.i837, align 4
  %bCurrentHTSupport.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 1
  %261 = ptrtoint ptr %bCurrentHTSupport.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %bCurrentHTSupport.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i838 = icmp eq i8 %262, 0
  br i1 %tobool.not.i838, label %ieee80211_qurey_ShortPreambleMode.exit.ieee80211_tx_query_agg_cap.exit_crit_edge, label %lor.lhs.false.i

ieee80211_qurey_ShortPreambleMode.exit.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %ieee80211_qurey_ShortPreambleMode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

lor.lhs.false.i:                                  ; preds = %ieee80211_qurey_ShortPreambleMode.exit
  %263 = ptrtoint ptr %257 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %257, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool2.not.i = icmp eq i8 %264, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ieee80211_tx_query_agg_cap.exit_crit_edge, label %if.end.i840

lor.lhs.false.i.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

if.end.i840:                                      ; preds = %lor.lhs.false.i
  %265 = ptrtoint ptr %260 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %260, align 2
  %267 = and i16 %266, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %267)
  %cmp.i839 = icmp eq i16 %267, 136
  br i1 %cmp.i839, label %if.end6.i841, label %if.end.i840.ieee80211_tx_query_agg_cap.exit_crit_edge

if.end.i840.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end.i840
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

if.end6.i841:                                     ; preds = %if.end.i840
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_1addr, ptr %260, i32 0, i32 2
  %268 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %addr1.i, align 4
  %270 = and i32 %269, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool.i.not.i = icmp eq i32 %270, 0
  br i1 %tobool.i.not.i, label %if.end8.i, label %if.end6.i841.ieee80211_tx_query_agg_cap.exit_crit_edge

if.end6.i841.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end6.i841
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

if.end8.i:                                        ; preds = %if.end6.i841
  %GetNmodeSupportBySecCfg.i = getelementptr i8, ptr %dev, i32 30104
  %271 = ptrtoint ptr %GetNmodeSupportBySecCfg.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %GetNmodeSupportBySecCfg.i, align 8
  %273 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %add.ptr.i, align 8
  %call9.i = tail call zeroext i1 %272(ptr noundef %274) #8
  br i1 %call9.i, label %if.end11.i, label %if.end8.i.ieee80211_tx_query_agg_cap.exit_crit_edge

if.end8.i.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

if.end11.i:                                       ; preds = %if.end8.i
  %bCurrentAMPDUEnable.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 20
  %275 = ptrtoint ptr %bCurrentAMPDUEnable.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %bCurrentAMPDUEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool12.not.i = icmp eq i8 %276, 0
  br i1 %tobool12.not.i, label %if.end11.i.FORCED_AGG_SETTING.i_crit_edge, label %if.then13.i

if.end11.i.FORCED_AGG_SETTING.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %FORCED_AGG_SETTING.i

if.then13.i:                                      ; preds = %if.end11.i
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %255, i32 0, i32 15, i32 0, i32 6
  %277 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %priority.i, align 4
  %conv16.i = trunc i32 %278 to i8
  %call17.i = call zeroext i1 @GetTs(ptr noundef %add.ptr.i, ptr noundef nonnull %pTxTs.i, ptr noundef %addr1.i, i8 noundef zeroext %conv16.i, i32 noundef 0, i1 noundef zeroext true) #8
  br i1 %call17.i, label %if.end20.i, label %do.end.i

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %ieee80211_tx_query_agg_cap.exit

if.end20.i:                                       ; preds = %if.then13.i
  %279 = ptrtoint ptr %pTxTs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pTxTs.i, align 4
  %valid.i = getelementptr inbounds %struct.tx_ts_record, ptr %280, i32 0, i32 3, i32 1
  %281 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool21.not.i = icmp eq i8 %282, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else.i842

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @TsStartAddBaProcess(ptr noundef %add.ptr.i, ptr noundef %280) #8
  br label %FORCED_AGG_SETTING.i

if.else.i842:                                     ; preds = %if.end20.i
  %using_ba.i = getelementptr inbounds %struct.tx_ts_record, ptr %280, i32 0, i32 6
  %283 = ptrtoint ptr %using_ba.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %using_ba.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool23.not.i = icmp eq i8 %284, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else.i842.if.end36.i_crit_edge

if.else.i842.if.end36.i_crit_edge:                ; preds = %if.else.i842
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then24.i:                                      ; preds = %if.else.i842
  %start_seq_ctrl.i = getelementptr inbounds %struct.tx_ts_record, ptr %280, i32 0, i32 3, i32 5
  %285 = ptrtoint ptr %start_seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %bf.load.i843 = load i16, ptr %start_seq_ctrl.i, align 2
  %conv26.i = zext i16 %bf.load.i843 to i32
  %tx_cur_seq.i = getelementptr inbounds %struct.tx_ts_record, ptr %280, i32 0, i32 1
  %286 = ptrtoint ptr %tx_cur_seq.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %tx_cur_seq.i, align 4
  %288 = add i16 %287, 1
  %rem.i = zext i16 %288 to i32
  %sub.i = sub nsw i32 %conv26.i, %rem.i
  %and28.i = and i32 %sub.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %cmp29.not.i = icmp eq i32 %and28.i, 0
  br i1 %cmp29.not.i, label %if.then24.i.FORCED_AGG_SETTING.i_crit_edge, label %if.then31.i

if.then24.i.FORCED_AGG_SETTING.i_crit_edge:       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %FORCED_AGG_SETTING.i

if.then31.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %using_ba.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 1, ptr %using_ba.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.else.i842.if.end36.i_crit_edge
  %iw_mode.i844 = getelementptr i8, ptr %dev, i32 20820
  %290 = ptrtoint ptr %iw_mode.i844 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %iw_mode.i844, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %291)
  %cmp37.i = icmp eq i32 %291, 2
  br i1 %cmp37.i, label %if.then39.i, label %if.end36.i.FORCED_AGG_SETTING.i_crit_edge

if.end36.i.FORCED_AGG_SETTING.i_crit_edge:        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %FORCED_AGG_SETTING.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %292 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %292)
  %bf.load40.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set.i845 = or i16 %bf.load40.i, 1024
  store i16 %bf.set.i845, ptr %bTxEnableFwCalcDur, align 2
  %CurrentAMPDUFactor.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 22
  %293 = ptrtoint ptr %CurrentAMPDUFactor.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %CurrentAMPDUFactor.i, align 1
  %ampdu_factor.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 22
  %295 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %294, ptr %ampdu_factor.i, align 2
  %CurrentMPDUDensity.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 24
  %296 = ptrtoint ptr %CurrentMPDUDensity.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %CurrentMPDUDensity.i, align 1
  %ampdu_density.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 23
  %298 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %ampdu_density.i, align 1
  br label %FORCED_AGG_SETTING.i

FORCED_AGG_SETTING.i:                             ; preds = %if.then39.i, %if.end36.i.FORCED_AGG_SETTING.i_crit_edge, %if.then24.i.FORCED_AGG_SETTING.i_crit_edge, %if.then22.i, %if.end11.i.FORCED_AGG_SETTING.i_crit_edge
  %ForcedAMPDUMode.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 25
  %299 = ptrtoint ptr %ForcedAMPDUMode.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %ForcedAMPDUMode.i, align 1
  %301 = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %300, label %FORCED_AGG_SETTING.i.ieee80211_tx_query_agg_cap.exit_crit_edge [
    i32 2, label %sw.bb50.i
    i32 1, label %sw.bb.i
  ]

FORCED_AGG_SETTING.i.ieee80211_tx_query_agg_cap.exit_crit_edge: ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_tx_query_agg_cap.exit

sw.bb.i:                                          ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #10
  %302 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %302)
  %bf.load45.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set47.i = or i16 %bf.load45.i, 1024
  store i16 %bf.set47.i, ptr %bTxEnableFwCalcDur, align 2
  %ForcedMPDUDensity.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 27
  %303 = ptrtoint ptr %ForcedMPDUDensity.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %ForcedMPDUDensity.i, align 1
  %ampdu_density48.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 23
  %305 = ptrtoint ptr %ampdu_density48.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %ampdu_density48.i, align 1
  %ForcedAMPDUFactor.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %257, i32 0, i32 26
  %306 = ptrtoint ptr %ForcedAMPDUFactor.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %ForcedAMPDUFactor.i, align 1
  %ampdu_factor49.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 22
  %308 = ptrtoint ptr %ampdu_factor49.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %ampdu_factor49.i, align 2
  br label %ieee80211_tx_query_agg_cap.exit

sw.bb50.i:                                        ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #10
  %309 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %309)
  %bf.load52.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear53.i = and i16 %bf.load52.i, -1025
  store i16 %bf.clear53.i, ptr %bTxEnableFwCalcDur, align 2
  %ampdu_density55.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 23
  %310 = ptrtoint ptr %ampdu_density55.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %ampdu_density55.i, align 1
  %ampdu_factor56.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 22
  %311 = ptrtoint ptr %ampdu_factor56.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %ampdu_factor56.i, align 2
  br label %ieee80211_tx_query_agg_cap.exit

ieee80211_tx_query_agg_cap.exit:                  ; preds = %sw.bb50.i, %sw.bb.i, %FORCED_AGG_SETTING.i.ieee80211_tx_query_agg_cap.exit_crit_edge, %do.end.i, %if.end8.i.ieee80211_tx_query_agg_cap.exit_crit_edge, %if.end6.i841.ieee80211_tx_query_agg_cap.exit_crit_edge, %if.end.i840.ieee80211_tx_query_agg_cap.exit_crit_edge, %lor.lhs.false.i.ieee80211_tx_query_agg_cap.exit_crit_edge, %ieee80211_qurey_ShortPreambleMode.exit.ieee80211_tx_query_agg_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs.i) #8
  %312 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pHTInfo1.i, align 8
  %314 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %314)
  %bf.load.i847 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i848 = and i16 %bf.load.i847, -8193
  store i16 %bf.clear.i848, ptr %bTxEnableFwCalcDur, align 2
  %bCurrentHTSupport.i849 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %313, i32 0, i32 1
  %315 = ptrtoint ptr %bCurrentHTSupport.i849 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %bCurrentHTSupport.i849, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool.not.i850 = icmp eq i8 %316, 0
  br i1 %tobool.not.i850, label %ieee80211_tx_query_agg_cap.exit.ieee80211_query_HTCapShortGI.exit_crit_edge, label %lor.lhs.false.i852

ieee80211_tx_query_agg_cap.exit.ieee80211_query_HTCapShortGI.exit_crit_edge: ; preds = %ieee80211_tx_query_agg_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_HTCapShortGI.exit

lor.lhs.false.i852:                               ; preds = %ieee80211_tx_query_agg_cap.exit
  %317 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %313, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool2.not.i851 = icmp eq i8 %318, 0
  br i1 %tobool2.not.i851, label %lor.lhs.false.i852.ieee80211_query_HTCapShortGI.exit_crit_edge, label %if.end.i853

lor.lhs.false.i852.ieee80211_query_HTCapShortGI.exit_crit_edge: ; preds = %lor.lhs.false.i852
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_HTCapShortGI.exit

if.end.i853:                                      ; preds = %lor.lhs.false.i852
  %bForcedShortGI.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %313, i32 0, i32 30
  %319 = ptrtoint ptr %bForcedShortGI.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %bForcedShortGI.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool3.not.i = icmp eq i8 %320, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %if.end.i853.cleanup.sink.split.i_crit_edge

if.end.i853.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i853
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i853
  %bCurBW40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %313, i32 0, i32 3
  %321 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool10.not.i = icmp eq i8 %322, 0
  br i1 %tobool10.not.i, label %land.lhs.true20.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %bCurShortGI40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %313, i32 0, i32 5
  %323 = ptrtoint ptr %bCurShortGI40MHz.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %bCurShortGI40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool12.not.i854 = icmp eq i8 %324, 0
  br i1 %tobool12.not.i854, label %land.lhs.true.i.ieee80211_query_HTCapShortGI.exit_crit_edge, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.lhs.true.i.ieee80211_query_HTCapShortGI.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_HTCapShortGI.exit

land.lhs.true20.i:                                ; preds = %if.end9.i
  %bCurShortGI20MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %313, i32 0, i32 7
  %325 = ptrtoint ptr %bCurShortGI20MHz.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %bCurShortGI20MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool22.not.i = icmp eq i8 %326, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.ieee80211_query_HTCapShortGI.exit_crit_edge, label %land.lhs.true20.i.cleanup.sink.split.i_crit_edge

land.lhs.true20.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.lhs.true20.i.ieee80211_query_HTCapShortGI.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_HTCapShortGI.exit

cleanup.sink.split.i:                             ; preds = %land.lhs.true20.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.end.i853.cleanup.sink.split.i_crit_edge
  %bf.set17.i = or i16 %bf.load.i847, 8192
  %327 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %bf.set17.i, ptr %bTxEnableFwCalcDur, align 2
  br label %ieee80211_query_HTCapShortGI.exit

ieee80211_query_HTCapShortGI.exit:                ; preds = %cleanup.sink.split.i, %land.lhs.true20.i.ieee80211_query_HTCapShortGI.exit_crit_edge, %land.lhs.true.i.ieee80211_query_HTCapShortGI.exit_crit_edge, %lor.lhs.false.i852.ieee80211_query_HTCapShortGI.exit_crit_edge, %ieee80211_tx_query_agg_cap.exit.ieee80211_query_HTCapShortGI.exit_crit_edge
  %328 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %pHTInfo1.i, align 8
  %330 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %330)
  %bf.load.i856 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i857 = and i16 %bf.load.i856, -65
  store i16 %bf.clear.i857, ptr %bTxEnableFwCalcDur, align 2
  %bCurrentHTSupport.i858 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %329, i32 0, i32 1
  %331 = ptrtoint ptr %bCurrentHTSupport.i858 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %bCurrentHTSupport.i858, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool.not.i859 = icmp eq i8 %332, 0
  br i1 %tobool.not.i859, label %ieee80211_query_HTCapShortGI.exit.ieee80211_query_BandwidthMode.exit_crit_edge, label %lor.lhs.false.i861

ieee80211_query_HTCapShortGI.exit.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %ieee80211_query_HTCapShortGI.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

lor.lhs.false.i861:                               ; preds = %ieee80211_query_HTCapShortGI.exit
  %333 = ptrtoint ptr %329 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %329, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool2.not.i860 = icmp ne i8 %334, 0
  %335 = and i16 %bf.load.i856, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %335)
  %336 = icmp eq i16 %335, 0
  %or.cond.i = select i1 %tobool2.not.i860, i1 %336, i1 false
  br i1 %or.cond.i, label %if.end14.i, label %lor.lhs.false.i861.ieee80211_query_BandwidthMode.exit_crit_edge

lor.lhs.false.i861.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %lor.lhs.false.i861
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

if.end14.i:                                       ; preds = %lor.lhs.false.i861
  %337 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %data_rate.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %338)
  %cmp.i863 = icmp sgt i8 %338, -1
  br i1 %cmp.i863, label %if.end14.i.ieee80211_query_BandwidthMode.exit_crit_edge, label %if.end18.i

if.end14.i.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

if.end18.i:                                       ; preds = %if.end14.i
  %bCurBW40MHz.i864 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %329, i32 0, i32 3
  %339 = ptrtoint ptr %bCurBW40MHz.i864 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %bCurBW40MHz.i864, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool20.not.i = icmp eq i8 %340, 0
  br i1 %tobool20.not.i, label %if.end18.i.ieee80211_query_BandwidthMode.exit_crit_edge, label %land.lhs.true.i866

if.end18.i.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

land.lhs.true.i866:                               ; preds = %if.end18.i
  %bCurTxBW40MHz.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %329, i32 0, i32 35
  %341 = ptrtoint ptr %bCurTxBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %bCurTxBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool22.not.i865 = icmp eq i8 %342, 0
  br i1 %tobool22.not.i865, label %land.lhs.true.i866.ieee80211_query_BandwidthMode.exit_crit_edge, label %land.lhs.true23.i

land.lhs.true.i866.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %land.lhs.true.i866
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

land.lhs.true23.i:                                ; preds = %land.lhs.true.i866
  %bforced_tx20Mhz.i = getelementptr i8, ptr %dev, i32 27576
  %343 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %bforced_tx20Mhz.i, align 8, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool24.not.i = icmp eq i8 %344, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true23.i.ieee80211_query_BandwidthMode.exit_crit_edge

land.lhs.true23.i.ieee80211_query_BandwidthMode.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_BandwidthMode.exit

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set29.i = or i16 %bf.load.i856, 64
  %345 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %bf.set29.i, ptr %bTxEnableFwCalcDur, align 2
  br label %ieee80211_query_BandwidthMode.exit

ieee80211_query_BandwidthMode.exit:               ; preds = %if.then25.i, %land.lhs.true23.i.ieee80211_query_BandwidthMode.exit_crit_edge, %land.lhs.true.i866.ieee80211_query_BandwidthMode.exit_crit_edge, %if.end18.i.ieee80211_query_BandwidthMode.exit_crit_edge, %if.end14.i.ieee80211_query_BandwidthMode.exit_crit_edge, %lor.lhs.false.i861.ieee80211_query_BandwidthMode.exit_crit_edge, %ieee80211_query_HTCapShortGI.exit.ieee80211_query_BandwidthMode.exit_crit_edge
  %346 = ptrtoint ptr %fragments467 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %fragments467, align 4
  %348 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %348)
  %bf.load.i867 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear11.i = and i16 %bf.load.i867, 31855
  store i16 %bf.clear11.i, ptr %bTxEnableFwCalcDur, align 2
  %349 = and i16 %bf.load.i867, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %if.end.i870, label %ieee80211_query_BandwidthMode.exit.ieee80211_query_protectionmode.exit_crit_edge

ieee80211_query_BandwidthMode.exit.ieee80211_query_protectionmode.exit_crit_edge: ; preds = %ieee80211_query_BandwidthMode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_protectionmode.exit

if.end.i870:                                      ; preds = %ieee80211_query_BandwidthMode.exit
  %data.i868 = getelementptr inbounds %struct.sk_buff, ptr %347, i32 0, i32 19
  %351 = ptrtoint ptr %data.i868 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %data.i868, align 4
  %add.ptr.i869 = getelementptr i8, ptr %352, i32 16
  %353 = ptrtoint ptr %add.ptr.i869 to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %add.ptr.i869, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %352, i32 18
  %355 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %356, %354
  %add.ptr3.i.i = getelementptr i8, ptr %352, i32 20
  %357 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %358
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.end.i870.ieee80211_query_protectionmode.exit_crit_edge, label %if.end22.i

if.end.i870.ieee80211_query_protectionmode.exit_crit_edge: ; preds = %if.end.i870
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_protectionmode.exit

if.end22.i:                                       ; preds = %if.end.i870
  %mode.i = getelementptr i8, ptr %dev, i32 23996
  %359 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %360)
  %cmp.i871 = icmp slt i32 %360, 16
  br i1 %cmp.i871, label %if.then24.i872, label %if.else45.i

if.then24.i872:                                   ; preds = %if.end22.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %347, i32 0, i32 6
  %361 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %len.i, align 4
  %rts.i = getelementptr i8, ptr %dev, i32 23162
  %363 = ptrtoint ptr %rts.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %rts.i, align 2
  %conv25.i = zext i16 %364 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %362, i32 %conv25.i)
  %cmp26.i = icmp ugt i32 %362, %conv25.i
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i873

if.then28.i:                                      ; preds = %if.then24.i872
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set31.i = or i16 %bf.clear11.i, 16384
  %365 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %bf.set31.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %366 = ptrtoint ptr %rts_rate.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 48, ptr %rts_rate.i, align 1
  br label %ieee80211_query_protectionmode.exit

if.else.i873:                                     ; preds = %if.then24.i872
  %buseprotection.i = getelementptr i8, ptr %dev, i32 23970
  %367 = ptrtoint ptr %buseprotection.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %buseprotection.i, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool32.not.i = icmp eq i8 %368, 0
  br i1 %tobool32.not.i, label %if.else.i873.ieee80211_query_protectionmode.exit_crit_edge, label %if.then33.i

if.else.i873.ieee80211_query_protectionmode.exit_crit_edge: ; preds = %if.else.i873
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_protectionmode.exit

if.then33.i:                                      ; preds = %if.else.i873
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set41.i = or i16 %bf.clear11.i, -16384
  %369 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %bf.set41.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate42.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %370 = ptrtoint ptr %rts_rate42.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 48, ptr %rts_rate42.i, align 1
  br label %ieee80211_query_protectionmode.exit

if.else45.i:                                      ; preds = %if.end22.i
  %371 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %pHTInfo1.i, align 8
  %buseprotection48.i = getelementptr i8, ptr %dev, i32 23970
  %373 = ptrtoint ptr %buseprotection48.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %buseprotection48.i, align 2, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool49.not.i = icmp eq i8 %374, 0
  br i1 %tobool49.not.i, label %if.end60.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set58.i = or i16 %bf.clear11.i, -16384
  %375 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 %bf.set58.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate59.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %376 = ptrtoint ptr %rts_rate59.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 48, ptr %rts_rate59.i, align 1
  br label %if.end130.i

if.end60.i:                                       ; preds = %if.else45.i
  %bCurrentHTSupport.i874 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %372, i32 0, i32 1
  %377 = ptrtoint ptr %bCurrentHTSupport.i874 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %bCurrentHTSupport.i874, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %tobool62.not.i = icmp eq i8 %378, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.end90.i_crit_edge, label %land.lhs.true.i875

if.end60.i.if.end90.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

land.lhs.true.i875:                               ; preds = %if.end60.i
  %379 = ptrtoint ptr %372 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %372, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool64.not.i = icmp eq i8 %380, 0
  br i1 %tobool64.not.i, label %land.lhs.true.i875.if.end90.i_crit_edge, label %if.then65.i

land.lhs.true.i875.if.end90.i_crit_edge:          ; preds = %land.lhs.true.i875
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

if.then65.i:                                      ; preds = %land.lhs.true.i875
  %CurrentOpMode.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %372, i32 0, i32 31
  %381 = ptrtoint ptr %CurrentOpMode.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %CurrentOpMode.i, align 1
  %bCurBW40MHz.i876 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %372, i32 0, i32 3
  %383 = ptrtoint ptr %bCurBW40MHz.i876 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %bCurBW40MHz.i876, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool67.not.i = icmp ne i8 %384, 0
  %385 = and i8 %382, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %385)
  %switch212.i = icmp eq i8 %385, 2
  %or.cond213.i = select i1 %tobool67.not.i, i1 %switch212.i, i1 false
  br i1 %or.cond213.i, label %if.then65.i.cleanup.i_crit_edge, label %lor.lhs.false76.i

if.then65.i.cleanup.i_crit_edge:                  ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false76.i:                                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool78.not.i = icmp eq i8 %384, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %382)
  %cmp81.i = icmp eq i8 %382, 3
  %or.cond210.i = select i1 %tobool78.not.i, i1 %cmp81.i, i1 false
  br i1 %or.cond210.i, label %lor.lhs.false76.i.cleanup.i_crit_edge, label %lor.lhs.false76.i.if.end90.i_crit_edge

lor.lhs.false76.i.if.end90.i_crit_edge:           ; preds = %lor.lhs.false76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.i

lor.lhs.false76.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %lor.lhs.false76.i.cleanup.i_crit_edge, %if.then65.i.cleanup.i_crit_edge
  %rts_rate84.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %386 = ptrtoint ptr %rts_rate84.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 48, ptr %rts_rate84.i, align 1
  %bf.set88.i = or i16 %bf.clear11.i, 16384
  %387 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %bf.set88.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end130.i

if.end90.i:                                       ; preds = %lor.lhs.false76.i.if.end90.i_crit_edge, %land.lhs.true.i875.if.end90.i_crit_edge, %if.end60.i.if.end90.i_crit_edge
  %len91.i = getelementptr inbounds %struct.sk_buff, ptr %347, i32 0, i32 6
  %388 = ptrtoint ptr %len91.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %len91.i, align 4
  %rts92.i = getelementptr i8, ptr %dev, i32 23162
  %390 = ptrtoint ptr %rts92.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %rts92.i, align 2
  %conv93.i = zext i16 %391 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %389, i32 %conv93.i)
  %cmp94.i = icmp ugt i32 %389, %conv93.i
  br i1 %cmp94.i, label %if.then96.i, label %if.end102.i

if.then96.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  %rts_rate97.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %392 = ptrtoint ptr %rts_rate97.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 48, ptr %rts_rate97.i, align 1
  %bf.set101.i = or i16 %bf.clear11.i, 16384
  %393 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %bf.set101.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end130.i

if.end102.i:                                      ; preds = %if.end90.i
  %394 = and i16 %bf.load.i867, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %394)
  %tobool107.not.i = icmp eq i16 %394, 0
  br i1 %tobool107.not.i, label %if.end114.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %rts_rate109.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %395 = ptrtoint ptr %rts_rate109.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 48, ptr %rts_rate109.i, align 1
  %bf.clear112.i = and i16 %bf.load.i867, 15471
  %396 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 %bf.clear112.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end130.i

if.end114.i:                                      ; preds = %if.end102.i
  %IOTAction.i = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %372, i32 0, i32 50
  %397 = ptrtoint ptr %IOTAction.i to i32
  call void @__asan_loadN_noabort(i32 %397, i32 4)
  %398 = load i32, ptr %IOTAction.i, align 1
  %and.i877 = and i32 %398, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i877)
  %tobool115.not.i = icmp eq i32 %and.i877, 0
  br i1 %tobool115.not.i, label %if.end114.i.NO_PROTECTION.i_crit_edge, label %if.then116.i

if.end114.i.NO_PROTECTION.i_crit_edge:            ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NO_PROTECTION.i

if.then116.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  %rts_rate121.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %399 = ptrtoint ptr %rts_rate121.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 48, ptr %rts_rate121.i, align 1
  %bf.set125.i = or i16 %bf.clear11.i, -16384
  %400 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 %bf.set125.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then116.i, %if.then108.i, %if.then96.i, %cleanup.i, %if.then50.i
  %capability.i878 = getelementptr i8, ptr %dev, i32 23400
  %401 = ptrtoint ptr %capability.i878 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %capability.i878, align 8
  %403 = and i16 %402, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %403)
  %tobool134.not.i = icmp eq i16 %403, 0
  br i1 %tobool134.not.i, label %if.end130.i.if.end139.i_crit_edge, label %if.then135.i

if.end130.i.if.end139.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i

if.then135.i:                                     ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  %404 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %404)
  %bf.load136.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set138.i = or i16 %bf.load136.i, 4096
  store i16 %bf.set138.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then135.i, %if.end130.i.if.end139.i_crit_edge
  %405 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %406)
  %cmp141.i = icmp eq i32 %406, 3
  br i1 %cmp141.i, label %if.end139.i.NO_PROTECTION.i_crit_edge, label %if.end139.i.ieee80211_query_protectionmode.exit_crit_edge

if.end139.i.ieee80211_query_protectionmode.exit_crit_edge: ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_query_protectionmode.exit

if.end139.i.NO_PROTECTION.i_crit_edge:            ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %NO_PROTECTION.i

NO_PROTECTION.i:                                  ; preds = %if.end139.i.NO_PROTECTION.i_crit_edge, %if.end114.i.NO_PROTECTION.i_crit_edge
  %407 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %407)
  %bf.load146.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate153.i = getelementptr %struct.sk_buff, ptr %211, i32 0, i32 3, i32 21
  %408 = ptrtoint ptr %rts_rate153.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %rts_rate153.i, align 1
  %bf.clear160.i = and i16 %bf.load146.i, 15999
  store i16 %bf.clear160.i, ptr %bTxEnableFwCalcDur, align 2
  br label %ieee80211_query_protectionmode.exit

ieee80211_query_protectionmode.exit:              ; preds = %NO_PROTECTION.i, %if.end139.i.ieee80211_query_protectionmode.exit_crit_edge, %if.then33.i, %if.else.i873.ieee80211_query_protectionmode.exit_crit_edge, %if.then28.i, %if.end.i870.ieee80211_query_protectionmode.exit_crit_edge, %ieee80211_query_BandwidthMode.exit.ieee80211_query_protectionmode.exit_crit_edge
  %409 = ptrtoint ptr %fragments467 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %fragments467, align 4
  %411 = ptrtoint ptr %addr1475 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %addr1475, align 4
  %413 = and i32 %412, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool.i.not.i879 = icmp eq i32 %413, 0
  br i1 %tobool.i.not.i879, label %if.end.i882, label %ieee80211_query_protectionmode.exit.if.then539_crit_edge

ieee80211_query_protectionmode.exit.if.then539_crit_edge: ; preds = %ieee80211_query_protectionmode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then539

if.end.i882:                                      ; preds = %ieee80211_query_protectionmode.exit
  %data.i880 = getelementptr inbounds %struct.sk_buff, ptr %410, i32 0, i32 19
  %414 = ptrtoint ptr %data.i880 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %data.i880, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %415, align 2
  %418 = and i16 %417, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %418)
  %cmp.i881 = icmp eq i16 %418, 136
  br i1 %cmp.i881, label %if.then2.i884, label %if.end.i882.if.then539_crit_edge

if.end.i882.if.then539_crit_edge:                 ; preds = %if.end.i882
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then539

if.then2.i884:                                    ; preds = %if.end.i882
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS.i) #8
  %419 = ptrtoint ptr %pTS.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr null, ptr %pTS.i, align 4
  %priority.i883 = getelementptr inbounds %struct.sk_buff, ptr %410, i32 0, i32 15, i32 0, i32 6
  %420 = ptrtoint ptr %priority.i883 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %priority.i883, align 4
  %conv3.i = trunc i32 %421 to i8
  %call4.i = call zeroext i1 @GetTs(ptr noundef %add.ptr.i, ptr noundef nonnull %pTS.i, ptr noundef %addr1475, i8 noundef zeroext %conv3.i, i32 noundef 0, i1 noundef zeroext true) #8
  br i1 %call4.i, label %if.end6.i886, label %if.then2.i884.cleanup.i887_crit_edge

if.then2.i884.cleanup.i887_crit_edge:             ; preds = %if.then2.i884
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i887

if.end6.i886:                                     ; preds = %if.then2.i884
  call void @__sanitizer_cov_trace_pc() #10
  %422 = ptrtoint ptr %pTS.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %pTS.i, align 4
  %tx_cur_seq.i885 = getelementptr inbounds %struct.tx_ts_record, ptr %423, i32 0, i32 1
  %424 = ptrtoint ptr %tx_cur_seq.i885 to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %tx_cur_seq.i885, align 4
  %426 = add i16 %425, 1
  %427 = and i16 %426, 4095
  store i16 %427, ptr %tx_cur_seq.i885, align 4
  br label %cleanup.i887

cleanup.i887:                                     ; preds = %if.end6.i886, %if.then2.i884.cleanup.i887_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS.i) #8
  br label %if.then539

if.then539:                                       ; preds = %cleanup.i887, %if.end.i882.if.then539_crit_edge, %ieee80211_query_protectionmode.exit.if.then539_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %softmac_features540 = getelementptr i8, ptr %dev, i32 24046
  %428 = ptrtoint ptr %softmac_features540 to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %softmac_features540, align 2
  %430 = and i16 %429, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %430)
  %tobool543.not = icmp eq i16 %430, 0
  br i1 %tobool543.not, label %if.else545, label %if.then544

if.then544:                                       ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #10
  call void @ieee80211_softmac_xmit_rsl(ptr noundef nonnull %txb.0903, ptr noundef %add.ptr.i) #8
  br label %cleanup

if.else545:                                       ; preds = %if.then539
  %431 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %hard_start_xmit, align 8
  %call547 = call i32 %432(ptr noundef nonnull %txb.0903, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call547)
  %cmp548 = icmp eq i32 %call547, 0
  br i1 %cmp548, label %if.then550, label %ieee80211_txb_free_rsl.exit

if.then550:                                       ; preds = %if.else545
  call void @__sanitizer_cov_trace_pc() #10
  %tx_packets = getelementptr i8, ptr %dev, i32 20544
  %433 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %tx_packets, align 4
  %inc551 = add i32 %434, 1
  store i32 %inc551, ptr %tx_packets, align 4
  %payload_size552 = getelementptr inbounds %struct.ieee80211_txb, ptr %txb.0903, i32 0, i32 6
  %435 = ptrtoint ptr %payload_size552 to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %payload_size552, align 4
  %437 = call i16 @llvm.bswap.i16(i16 %436)
  %conv553 = zext i16 %437 to i32
  %tx_bytes = getelementptr i8, ptr %dev, i32 20552
  %438 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %tx_bytes, align 4
  %add554 = add i32 %439, %conv553
  store i32 %add554, ptr %tx_bytes, align 4
  br label %cleanup

ieee80211_txb_free_rsl.exit:                      ; preds = %if.else545
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %txb.0903) #8
  br label %cleanup

if.end557.critedge:                               ; preds = %if.then445, %if.then54, %if.then30, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

failed:                                           ; preds = %if.end448.failed_crit_edge, %if.end147.failed_crit_edge
  %440 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %441, ptr noundef nonnull @.str.11) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %442 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %443, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %tx_errors = getelementptr i8, ptr %dev, i32 20560
  %444 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %tx_errors, align 4
  %inc559 = add i32 %445, 1
  store i32 %inc559, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end557.critedge, %ieee80211_txb_free_rsl.exit, %if.then550, %if.then544
  %retval.0 = phi i32 [ 0, %if.then550 ], [ 1, %failed ], [ 0, %if.end557.critedge ], [ 0, %if.then544 ], [ 0, %ieee80211_txb_free_rsl.exit ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %header) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_alloc_txb(i32 noundef %nr_frags, i32 noundef %txb_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nr_frags, 2
  %add = add i32 %mul, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %call9.i, i32 0, i32 12)
  %conv = trunc i32 %nr_frags to i8
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %call9.i, align 128
  %conv2 = trunc i32 %txb_size to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %frag_size = getelementptr inbounds %struct.ieee80211_txb, ptr %call9.i, i32 0, i32 5
  %3 = ptrtoint ptr %frag_size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %frag_size, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags)
  %cmp5 = icmp sgt i32 %nr_frags, 0
  br i1 %cmp5, label %if.end.for.body_crit_edge, label %for.end.thread12

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %txb_size, i32 noundef 2592) #8
  %arrayidx = getelementptr %struct.ieee80211_txb, ptr %call9.i, i32 0, i32 7, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %for.end, label %if.end12, !prof !62

if.end12:                                         ; preds = %for.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %5 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %nr_frags
  br i1 %exitcond.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.body
  %dec = add nsw i32 %i.06, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %nr_frags)
  %cmp15.not = icmp eq i32 %dec, %nr_frags
  br i1 %cmp15.not, label %for.end.cleanup_crit_edge, label %while.cond.preheader, !prof !63

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.thread12:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags)
  %cmp15.not14 = icmp eq i32 %nr_frags, 0
  br i1 %cmp15.not14, label %for.end.thread12.cleanup_crit_edge, label %for.end.thread12.while.body.preheader_crit_edge, !prof !63

for.end.thread12.while.body.preheader_crit_edge:  ; preds = %for.end.thread12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

for.end.thread12.cleanup_crit_edge:               ; preds = %for.end.thread12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06)
  %cmp247.not = icmp eq i32 %i.06, 0
  br i1 %cmp247.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body.preheader_crit_edge

while.cond.preheader.while.body.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader.while.body.preheader_crit_edge, %for.end.thread12.while.body.preheader_crit_edge
  %i.28.ph = phi i32 [ 0, %for.end.thread12.while.body.preheader_crit_edge ], [ %dec, %while.cond.preheader.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.28 = phi i32 [ %dec27, %while.body.while.body_crit_edge ], [ %i.28.ph, %while.body.preheader ]
  %dec27 = add nsw i32 %i.28, -1
  %arrayidx28 = getelementptr %struct.ieee80211_txb, ptr %call9.i, i32 0, i32 7, i32 %i.28
  %6 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx28, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %7, i32 noundef 1) #8
  %cmp24.not = icmp eq i32 %i.28, 0
  br i1 %cmp24.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end.thread12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %call9.i, %for.end.cleanup_crit_edge ], [ %call9.i, %for.end.thread12.cleanup_crit_edge ], [ %call9.i, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_softmac_xmit_rsl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsStartAddBaProcess(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 173, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ieee80211_encrypt_fragment._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ieee80211_encrypt_fragment._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 178, i32 54}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 183, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ieee80211_encrypt_fragment.__UNIQUE_ID_ddebug476, !9, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 206, i32 26}
!14 = !{ptr @__ksymtab_ieee80211_txb_free_rsl, !15, !"__ksymtab_ieee80211_txb_free_rsl", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 223, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 559, i32 26}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 566, i32 27}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 588, i32 4}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ieee80211_xmit._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ieee80211_xmit._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 686, i32 27}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1186, i32 48}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1177, i32 18}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1178, i32 19}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1179, i32 20}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1180, i32 17}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1181, i32 28}
!39 = !{ptr @eap_types, !40, !"eap_types", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1176, i32 20}
!41 = distinct !{null, !42, !"P802_1H_OUI", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 138, i32 11}
!43 = distinct !{null, !44, !"RFC1042_OUI", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 139, i32 11}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c", i32 309, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ieee80211_tx_query_agg_cap._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ieee80211_tx_query_agg_cap._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148857245, i64 2148857250, i64 2148857263, i64 2148857307, i64 2148857341, i64 2148857362}
!60 = !{i64 2148375814, i64 2148375840, i64 2148375869, i64 2148375903, i64 2148375934, i64 2148375957}
!61 = !{i64 2148378279, i64 2148378305, i64 2148378334, i64 2148378368, i64 2148378399, i64 2148378422}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i8 0, i8 2}
