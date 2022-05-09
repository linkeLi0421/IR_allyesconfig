; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_rx_rsl\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_rx_rsl\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_rx_rsl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_rsl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_rsl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_rsl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_rx_mgt_rsl\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_rx_mgt_rsl\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_rx_mgt_rsl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_mgt_rsl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_mgt_rsl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_mgt_rsl:\09\09\09\09\09"
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
%struct.ieee80211_rxb = type <{ i8, [64 x ptr], [6 x i8], [6 x i8] }>
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
%struct.rtl_80211_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8] }
%struct.ieee80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.ieee80211_crypto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }
%struct.rtl_80211_hdr_4addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8], i16 }
%struct.rtl_80211_hdr_3addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8], i16 }
%struct.ieee_ibss_seq = type { [6 x i8], [17 x i16], [17 x i16], [17 x i32], %struct.list_head }
%struct.rtl_80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
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
%struct.ieee80211_qos_information_element = type { i8, i8, [3 x i8], i8, i8, i8, i8 }
%struct.ieee80211_qos_parameter_info = type { %struct.ieee80211_qos_information_element, i8, [4 x %struct.ieee80211_qos_ac_parameter] }
%struct.ieee80211_qos_ac_parameter = type { i8, i8, i16 }
%struct.ieee80211_info_element = type { i8, i8, [0 x i8] }
%struct.rt_dot11d_info = type { i16, [6 x i8], [255 x i8], i8, [162 x i8], [162 x i8], i32, i8 }
%struct.ieee80211_probe_response = type { %struct.rtl_80211_hdr_3addr, [2 x i32], i16, i16, [0 x %struct.ieee80211_info_element] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SKB length < 10\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"find HTCControl\0A\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ieee80211_rx_rsl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017ieee80211: Decryption failed (not set) (SA=%pM)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ieee80211_rx_rsl\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c\00", [46 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr = internal global ptr @ieee80211_rx_rsl._entry, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017ieee80211: %s(): No TS!! Skip the check!!\0A\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.7 = internal global ptr @ieee80211_rx_rsl._entry.5, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017ieee80211: RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x, len=%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.10 = internal global ptr @ieee80211_rx_rsl._entry.8, section ".printk_index", align 4
@ieee80211_rx_rsl.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"decrypt frame error\0A\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ieee80211: Rx Fragment received (%u)\0A\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.15 = internal global ptr @ieee80211_rx_rsl._entry.13, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017ieee80211: Rx cannot get skb from fragment cache (morefrag=%d seq=%u frag=%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.18 = internal global ptr @ieee80211_rx_rsl._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"host decrypted and reassembled frame did not fit skb\0A\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"==>decrypt msdu error\0A\00", [41 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ieee80211: RX: IEEE 802.1X EAPOL frame: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.23 = internal global ptr @ieee80211_rx_rsl._entry.21, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017ieee80211: encryption configured, but RX frame not encrypted (SA=%pM)\0A\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.26 = internal global ptr @ieee80211_rx_rsl._entry.24, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.28 = internal global ptr @ieee80211_rx_rsl._entry.27, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017ieee80211: dropped unencrypted RX data frame from %pM (drop_unencrypted=1)\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.31 = internal global ptr @ieee80211_rx_rsl._entry.29, section ".printk_index", align 4
@ieee80211_rx_rsl._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017ieee80211: %s(): REORDER ENABLE AND PTS not NULL, and we will enter RxReorderIndicatePacket()\0A\00", [63 x i8] zeroinitializer }, align 32
@ieee80211_rx_rsl._entry_ptr.34 = internal global ptr @ieee80211_rx_rsl._entry.32, section ".printk_index", align 4
@__kstrtab_ieee80211_rx_rsl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_rsl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_rsl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_rsl to i32), ptr @__kstrtab_ieee80211_rx_rsl, ptr @__kstrtabns_ieee80211_rx_rsl }, section "___ksymtab+ieee80211_rx_rsl", align 4
@ieee80211_parse_info_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017ieee80211: Info elem: parse failed: info_element->len + 2 > left : info_element->len+2=%zd left=%d, id=%d.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee80211_parse_info_param\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr = internal global ptr @ieee80211_parse_info_param._entry, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ieee80211: MFIE_TYPE_SSID: '%s' len=%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.39 = internal global ptr @ieee80211_parse_info_param._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.4, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: MFIE_TYPE_RATES: '%s' (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.43 = internal global ptr @ieee80211_parse_info_param._entry.41, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.4, i32 1608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: MFIE_TYPE_RATES_EX: '%s' (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.46 = internal global ptr @ieee80211_parse_info_param._entry.44, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.4, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017ieee80211: MFIE_TYPE_DS_SET: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.49 = internal global ptr @ieee80211_parse_info_param._entry.47, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.4, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ieee80211: MFIE_TYPE_FH_SET: ignored\0A\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.52 = internal global ptr @ieee80211_parse_info_param._entry.50, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.36, ptr @.str.4, i32 1622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ieee80211: MFIE_TYPE_CF_SET: ignored\0A\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.55 = internal global ptr @ieee80211_parse_info_param._entry.53, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.36, ptr @.str.4, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017ieee80211: MFIE_TYPE_ERP_SET: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.58 = internal global ptr @ieee80211_parse_info_param._entry.56, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.36, ptr @.str.4, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017ieee80211: MFIE_TYPE_IBSS_SET: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.61 = internal global ptr @ieee80211_parse_info_param._entry.59, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.36, ptr @.str.4, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ieee80211: MFIE_TYPE_CHALLENGE: ignored\0A\00", [53 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.64 = internal global ptr @ieee80211_parse_info_param._entry.62, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.36, ptr @.str.4, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: MFIE_TYPE_GENERIC: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.67 = internal global ptr @ieee80211_parse_info_param._entry.65, section ".printk_index", align 4
@ieee80211_parse_info_param.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.36, ptr @.str.4, ptr @.str.68, i8 1, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"========> athros AP is exist\0A\00", [34 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.36, ptr @.str.4, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017ieee80211: MFIE_TYPE_RSN: %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.71 = internal global ptr @ieee80211_parse_info_param._entry.69, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.36, ptr @.str.4, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: MFIE_TYPE_HT_CAP: %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.74 = internal global ptr @ieee80211_parse_info_param._entry.72, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.36, ptr @.str.4, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: MFIE_TYPE_HT_INFO: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.77 = internal global ptr @ieee80211_parse_info_param._entry.75, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.36, ptr @.str.4, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: MFIE_TYPE_AIRONET: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.80 = internal global ptr @ieee80211_parse_info_param._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"QoS Error need to parse QOS_PARAMETER IE\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.36, ptr @.str.4, i32 1932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: MFIE_TYPE_COUNTRY: %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.84 = internal global ptr @ieee80211_parse_info_param._entry.82, section ".printk_index", align 4
@ieee80211_parse_info_param._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.36, ptr @.str.4, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: Unsupported info element: %s (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@ieee80211_parse_info_param._entry_ptr.87 = internal global ptr @ieee80211_parse_info_param._entry.85, section ".printk_index", align 4
@ieee80211_rx_mgt_rsl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 2448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017ieee80211: received BEACON (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee80211_rx_mgt_rsl\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_rx_mgt_rsl._entry_ptr = internal global ptr @ieee80211_rx_mgt_rsl._entry, section ".printk_index", align 4
@ieee80211_rx_mgt_rsl._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.4, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017ieee80211: Beacon\0A\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_rx_mgt_rsl._entry_ptr.92 = internal global ptr @ieee80211_rx_mgt_rsl._entry.90, section ".printk_index", align 4
@ieee80211_rx_mgt_rsl._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.4, i32 2456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ieee80211: received PROBE RESPONSE (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@ieee80211_rx_mgt_rsl._entry_ptr.95 = internal global ptr @ieee80211_rx_mgt_rsl._entry.93, section ".printk_index", align 4
@ieee80211_rx_mgt_rsl._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.4, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017ieee80211: Probe response\0A\00", [35 x i8] zeroinitializer }, align 32
@ieee80211_rx_mgt_rsl._entry_ptr.98 = internal global ptr @ieee80211_rx_mgt_rsl._entry.96, section ".printk_index", align 4
@__kstrtab_ieee80211_rx_mgt_rsl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_mgt_rsl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_mgt_rsl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_mgt_rsl to i32), ptr @__kstrtab_ieee80211_rx_mgt_rsl, ptr @__kstrtabns_ieee80211_rx_mgt_rsl }, section "___ksymtab+ieee80211_rx_mgt_rsl", align 4
@rfc1042_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TKIP\00", [27 x i8] zeroinitializer }, align 32
@ieee80211_rx_frame_decrypt.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee80211_rx_frame_decrypt\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TKIP countermeasures: dropped received packet from %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_frame_decrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017ieee80211: decryption failed (SA=%pM) res=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ieee80211_rx_frame_decrypt._entry_ptr = internal global ptr @ieee80211_rx_frame_decrypt._entry, section ".printk_index", align 4
@ieee80211_rx_frame_decrypt._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.4, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017ieee80211: Decryption failed ICV mismatch (key %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_rx_frame_decrypt._entry_ptr.105 = internal global ptr @ieee80211_rx_frame_decrypt._entry.103, section ".printk_index", align 4
@ieee80211_frag_cache_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.4, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017ieee80211: expiring fragment cache entry seq=%u last_frag=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ieee80211_frag_cache_find\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_frag_cache_find._entry_ptr = internal global ptr @ieee80211_frag_cache_find._entry, section ".printk_index", align 4
@ieee80211_frag_cache_invalidate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017ieee80211: could not invalidate fragment cache entry (seq=%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ieee80211_frag_cache_invalidate\00", [32 x i8] zeroinitializer }, align 32
@ieee80211_frag_cache_invalidate._entry_ptr = internal global ptr @ieee80211_frag_cache_invalidate._entry, section ".printk_index", align 4
@ieee80211_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.110, ptr @.str.4, ptr @.str.111, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ieee80211_rx_frame_decrypt_msdu\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MSDU decryption/MIC verification failed (SA=%pM keyidx=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@eap_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EAP-Packet\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EAPOL-Start\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EAPOL-Logoff\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EAPOL-Key\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EAPOL-Encap-ASF-Alert\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parse_subframe.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.118, ptr @.str.4, ptr @.str.119, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parse_subframe\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"A-MSDU parse error!! pRfd->nTotalSubframe : %d\0A\00", [48 x i8] zeroinitializer }, align 32
@parse_subframe.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.118, ptr @.str.4, ptr @.str.120, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"A-MSDU parse error!! Subframe Length: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_subframe.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.118, ptr @.str.4, ptr @.str.121, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nRemain_Length is %d and nSubframe_Length is : %d\0A\00", [45 x i8] zeroinitializer }, align 32
@parse_subframe.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.118, ptr @.str.4, ptr @.str.122, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"The Packet SeqNum is %d\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_subframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.4, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017ieee80211: ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", [60 x i8] zeroinitializer }, align 32
@parse_subframe._entry_ptr = internal global ptr @parse_subframe._entry, section ".printk_index", align 4
@RxReorderIndicatePacket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.4, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017ieee80211: %s(): Seq is %d,pTS->rx_indicate_seq is %d, WinSize is %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RxReorderIndicatePacket\00", [40 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr = internal global ptr @RxReorderIndicatePacket._entry, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.4, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017ieee80211: Packet Drop! IndicateSeq: %d, NewSeq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.128 = internal global ptr @RxReorderIndicatePacket._entry.126, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.4, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017ieee80211: Window Shift! IndicateSeq: %d, NewSeq: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.131 = internal global ptr @RxReorderIndicatePacket._entry.129, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.4, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017ieee80211: Packets indication!! IndicateSeq: %d, NewSeq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.134 = internal global ptr @RxReorderIndicatePacket._entry.132, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.125, ptr @.str.4, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017ieee80211: %s(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.137 = internal global ptr @RxReorderIndicatePacket._entry.135, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.125, ptr @.str.4, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017ieee80211: Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.140 = internal global ptr @RxReorderIndicatePacket._entry.138, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.125, ptr @.str.4, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017ieee80211: RxReorderIndicatePacket(): There is no reorder entry!! Packet is dropped!!\0A\00", [39 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.143 = internal global ptr @RxReorderIndicatePacket._entry.141, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.125, ptr @.str.4, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: %s(): start RREORDER indicate\0A\00", [52 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.146 = internal global ptr @RxReorderIndicatePacket._entry.144, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.125, ptr @.str.4, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017ieee80211: RxReorderIndicatePacket(): Buffer overflow!! \0A\00", [36 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.149 = internal global ptr @RxReorderIndicatePacket._entry.147, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.4, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.151 = internal global ptr @RxReorderIndicatePacket._entry.150, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.125, ptr @.str.4, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017ieee80211: RxReorderIndicatePacket(): Rx Reorder buffer full!! \0A\00", [61 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.154 = internal global ptr @RxReorderIndicatePacket._entry.152, section ".printk_index", align 4
@RxReorderIndicatePacket._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.125, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: %s(): SET rx timeout timer\0A\00", [55 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket._entry_ptr.157 = internal global ptr @RxReorderIndicatePacket._entry.155, section ".printk_index", align 4
@ieee80211_parse_qos_info_param_IE._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.4, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017ieee80211: QoS is supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ieee80211_parse_qos_info_param_IE\00", [62 x i8] zeroinitializer }, align 32
@ieee80211_parse_qos_info_param_IE._entry_ptr = internal global ptr @ieee80211_parse_qos_info_param_IE._entry, section ".printk_index", align 4
@qos_oui = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00P\F2", [29 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DS_SET\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CF_SET\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TIM\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBSS_SET\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COUNTRY\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HOP_PARAMS\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HOP_TABLE\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REQUEST\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHALLENGE\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POWER_CONSTRAINT\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POWER_CAPABILITY\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TPC_REQUEST\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TPC_REPORT\00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SUPP_CHANNELS\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CSA\00", [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEASURE_REQUEST\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEASURE_REPORT\00", [17 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUIET\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBSS_DFS\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RSN\00", [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RATES_EX\00", [23 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GENERIC\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QOS_PARAMETER\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.4, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017ieee80211: '%s' (%pM): %c%c%c%c %c%c%c%c-%c%c%c%c %c%c%c%c\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ieee80211_process_probe_response\00", [63 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry_ptr = internal global ptr @ieee80211_process_probe_response._entry, section ".printk_index", align 4
@ieee80211_process_probe_response._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.4, i32 2285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017ieee80211: Dropped '%s' (%pM) via %s.\0A\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry_ptr.191 = internal global ptr @ieee80211_process_probe_response._entry.189, section ".printk_index", align 4
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROBE RESPONSE\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BEACON\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"GetScanInfo(): For Country code, filter probe response at channel(%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"GetScanInfo(): For Global Domain, filter probe response at channel(%d).\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"GetScanInfo(): For Country code, filter beacon at channel(%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"GetScanInfo(): For Global Domain, filter beacon at channel(%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.188, ptr @.str.4, i32 2379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017ieee80211: Expired '%s' (%pM) from network list.\0A\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry_ptr.200 = internal global ptr @ieee80211_process_probe_response._entry.198, section ".printk_index", align 4
@ieee80211_process_probe_response._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.188, ptr @.str.4, i32 2394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017ieee80211: Adding '%s' (%pM) via %s.\0A\00", [56 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry_ptr.203 = internal global ptr @ieee80211_process_probe_response._entry.201, section ".printk_index", align 4
@ieee80211_process_probe_response._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.188, ptr @.str.4, i32 2406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017ieee80211: Updating '%s' (%pM) via %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_process_probe_response._entry_ptr.206 = internal global ptr @ieee80211_process_probe_response._entry.204, section ".printk_index", align 4
@escape_essid.escaped = internal global { [65 x i8], [63 x i8] } zeroinitializer, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<hidden>\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%*pE\00", [27 x i8] zeroinitializer }, align 32
@ieee80211_network_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.4, i32 2082, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: Filtered out '%s (%pM)' network.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee80211_network_init\00", [41 x i8] zeroinitializer }, align 32
@ieee80211_network_init._entry_ptr = internal global ptr @ieee80211_network_init._entry, section ".printk_index", align 4
@update_network._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.4, i32 2194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ieee80211: QoS the network %s is QoS supported\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_network\00", [17 x i8] zeroinitializer }, align 32
@update_network._entry_ptr = internal global ptr @update_network._entry, section ".printk_index", align 4
@update_network._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.4, i32 2197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: QoS the network is QoS supported\0A\00", [49 x i8] zeroinitializer }, align 32
@update_network._entry_ptr.215 = internal global ptr @update_network._entry.213, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.220 = internal global [8 x i64] [i64 6, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.222 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 10, i64 256, i64 512]
@__sancov_gen_cov_switch_values.225 = internal global [19 x i64] [i64 17, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16, i64 42, i64 45, i64 48, i64 50, i64 61, i64 133, i64 221, i64 222]
@__sancov_gen_cov_switch_values.226 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.227 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.228 = internal global [25 x i64] [i64 23, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 48, i64 50, i64 221, i64 222]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 128]
@__sancov_gen_cov_switch_values.230 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 16]
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 916, i32 20 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 930, i32 21 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 990, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1027, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1110, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1124, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1137, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1140, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1152, i32 21 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1188, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1206, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1210, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1223, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1230, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1276, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1526, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1553, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1567, i32 29 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1580, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1607, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1612, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1618, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1622, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1665, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1670, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1675, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1679, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1809, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1865, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1875, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1894, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1906, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1927, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1931, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1937, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2447, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2449, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2455, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2457, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant [15 x i8] c"rfc1042_header\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 283, i32 22 }
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c"bridge_tunnel_header\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 286, i32 22 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 349, i32 31 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 351, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 362, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 366, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 72, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 190, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 399, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1186, i32 48 }
@___asan_gen_.507 = private unnamed_addr constant [10 x i8] c"eap_types\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1176, i32 20 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1177, i32 18 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1178, i32 19 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1179, i32 20 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1180, i32 17 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 1181, i32 28 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 825, i32 5 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 827, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 828, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 829, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 850, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 596, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 610, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 640, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 654, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 672, i32 5 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 684, i32 5 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 693, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 707, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 713, i32 5 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 723, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 743, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 752, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1434, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [8 x i8] c"qos_oui\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1304, i32 11 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1449, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1450, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1451, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1452, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1453, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1454, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1455, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1456, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1457, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1458, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1459, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1460, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1461, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1462, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1463, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1464, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1465, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1466, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1467, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1469, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1470, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1471, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1472, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 1474, i32 10 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2258, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2280, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2303, i32 29 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2310, i32 29 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2318, i32 29 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2325, i32 29 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2375, i32 4 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2389, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2401, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant [8 x i8] c"escaped\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2418, i32 14 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2421, i32 19 }
@___asan_gen_.760 = private unnamed_addr constant [50 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211.h\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 2425, i32 37 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2078, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2192, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.784 = private constant [53 x i8] c"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.784, i32 2196, i32 4 }
@llvm.compiler.used = appending global [244 x ptr] [ptr @RxReorderIndicatePacket._entry, ptr @RxReorderIndicatePacket._entry.126, ptr @RxReorderIndicatePacket._entry.129, ptr @RxReorderIndicatePacket._entry.132, ptr @RxReorderIndicatePacket._entry.135, ptr @RxReorderIndicatePacket._entry.138, ptr @RxReorderIndicatePacket._entry.141, ptr @RxReorderIndicatePacket._entry.144, ptr @RxReorderIndicatePacket._entry.147, ptr @RxReorderIndicatePacket._entry.150, ptr @RxReorderIndicatePacket._entry.152, ptr @RxReorderIndicatePacket._entry.155, ptr @RxReorderIndicatePacket._entry_ptr, ptr @RxReorderIndicatePacket._entry_ptr.128, ptr @RxReorderIndicatePacket._entry_ptr.131, ptr @RxReorderIndicatePacket._entry_ptr.134, ptr @RxReorderIndicatePacket._entry_ptr.137, ptr @RxReorderIndicatePacket._entry_ptr.140, ptr @RxReorderIndicatePacket._entry_ptr.143, ptr @RxReorderIndicatePacket._entry_ptr.146, ptr @RxReorderIndicatePacket._entry_ptr.149, ptr @RxReorderIndicatePacket._entry_ptr.151, ptr @RxReorderIndicatePacket._entry_ptr.154, ptr @RxReorderIndicatePacket._entry_ptr.157, ptr @__ksymtab_ieee80211_rx_mgt_rsl, ptr @__ksymtab_ieee80211_rx_rsl, ptr @ieee80211_frag_cache_find._entry, ptr @ieee80211_frag_cache_find._entry_ptr, ptr @ieee80211_frag_cache_invalidate._entry, ptr @ieee80211_frag_cache_invalidate._entry_ptr, ptr @ieee80211_network_init._entry, ptr @ieee80211_network_init._entry_ptr, ptr @ieee80211_parse_info_param._entry, ptr @ieee80211_parse_info_param._entry.37, ptr @ieee80211_parse_info_param._entry.41, ptr @ieee80211_parse_info_param._entry.44, ptr @ieee80211_parse_info_param._entry.47, ptr @ieee80211_parse_info_param._entry.50, ptr @ieee80211_parse_info_param._entry.53, ptr @ieee80211_parse_info_param._entry.56, ptr @ieee80211_parse_info_param._entry.59, ptr @ieee80211_parse_info_param._entry.62, ptr @ieee80211_parse_info_param._entry.65, ptr @ieee80211_parse_info_param._entry.69, ptr @ieee80211_parse_info_param._entry.72, ptr @ieee80211_parse_info_param._entry.75, ptr @ieee80211_parse_info_param._entry.78, ptr @ieee80211_parse_info_param._entry.82, ptr @ieee80211_parse_info_param._entry.85, ptr @ieee80211_parse_info_param._entry_ptr, ptr @ieee80211_parse_info_param._entry_ptr.39, ptr @ieee80211_parse_info_param._entry_ptr.43, ptr @ieee80211_parse_info_param._entry_ptr.46, ptr @ieee80211_parse_info_param._entry_ptr.49, ptr @ieee80211_parse_info_param._entry_ptr.52, ptr @ieee80211_parse_info_param._entry_ptr.55, ptr @ieee80211_parse_info_param._entry_ptr.58, ptr @ieee80211_parse_info_param._entry_ptr.61, ptr @ieee80211_parse_info_param._entry_ptr.64, ptr @ieee80211_parse_info_param._entry_ptr.67, ptr @ieee80211_parse_info_param._entry_ptr.71, ptr @ieee80211_parse_info_param._entry_ptr.74, ptr @ieee80211_parse_info_param._entry_ptr.77, ptr @ieee80211_parse_info_param._entry_ptr.80, ptr @ieee80211_parse_info_param._entry_ptr.84, ptr @ieee80211_parse_info_param._entry_ptr.87, ptr @ieee80211_parse_qos_info_param_IE._entry, ptr @ieee80211_parse_qos_info_param_IE._entry_ptr, ptr @ieee80211_process_probe_response._entry, ptr @ieee80211_process_probe_response._entry.189, ptr @ieee80211_process_probe_response._entry.198, ptr @ieee80211_process_probe_response._entry.201, ptr @ieee80211_process_probe_response._entry.204, ptr @ieee80211_process_probe_response._entry_ptr, ptr @ieee80211_process_probe_response._entry_ptr.191, ptr @ieee80211_process_probe_response._entry_ptr.200, ptr @ieee80211_process_probe_response._entry_ptr.203, ptr @ieee80211_process_probe_response._entry_ptr.206, ptr @ieee80211_rx_frame_decrypt._entry, ptr @ieee80211_rx_frame_decrypt._entry.103, ptr @ieee80211_rx_frame_decrypt._entry_ptr, ptr @ieee80211_rx_frame_decrypt._entry_ptr.105, ptr @ieee80211_rx_mgt_rsl._entry, ptr @ieee80211_rx_mgt_rsl._entry.90, ptr @ieee80211_rx_mgt_rsl._entry.93, ptr @ieee80211_rx_mgt_rsl._entry.96, ptr @ieee80211_rx_mgt_rsl._entry_ptr, ptr @ieee80211_rx_mgt_rsl._entry_ptr.92, ptr @ieee80211_rx_mgt_rsl._entry_ptr.95, ptr @ieee80211_rx_mgt_rsl._entry_ptr.98, ptr @ieee80211_rx_rsl._entry, ptr @ieee80211_rx_rsl._entry.13, ptr @ieee80211_rx_rsl._entry.16, ptr @ieee80211_rx_rsl._entry.21, ptr @ieee80211_rx_rsl._entry.24, ptr @ieee80211_rx_rsl._entry.27, ptr @ieee80211_rx_rsl._entry.29, ptr @ieee80211_rx_rsl._entry.32, ptr @ieee80211_rx_rsl._entry.5, ptr @ieee80211_rx_rsl._entry.8, ptr @ieee80211_rx_rsl._entry_ptr, ptr @ieee80211_rx_rsl._entry_ptr.10, ptr @ieee80211_rx_rsl._entry_ptr.15, ptr @ieee80211_rx_rsl._entry_ptr.18, ptr @ieee80211_rx_rsl._entry_ptr.23, ptr @ieee80211_rx_rsl._entry_ptr.26, ptr @ieee80211_rx_rsl._entry_ptr.28, ptr @ieee80211_rx_rsl._entry_ptr.31, ptr @ieee80211_rx_rsl._entry_ptr.34, ptr @ieee80211_rx_rsl._entry_ptr.7, ptr @parse_subframe._entry, ptr @parse_subframe._entry_ptr, ptr @update_network._entry, ptr @update_network._entry.213, ptr @update_network._entry_ptr, ptr @update_network._entry_ptr.215, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @rfc1042_header, ptr @bridge_tunnel_header, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @eap_types, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @qos_oui, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @escape_essid.escaped, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_rsl._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_info_param._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_mgt_rsl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_mgt_rsl._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_mgt_rsl._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_mgt_rsl._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_frame_decrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_frame_decrypt._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_frag_cache_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_frag_cache_invalidate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eap_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_subframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxReorderIndicatePacket._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_parse_qos_info_param_IE._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_oui to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_process_probe_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_process_probe_response._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_process_probe_response._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_process_probe_response._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_process_probe_response._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escape_essid.escaped to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_network_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_network._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_network._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_indicate_packets(ptr nocapture noundef %ieee, ptr nocapture noundef readonly %prxbIndicateArray, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp6.not = icmp eq i8 %index, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i8 %index to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %prxbIndicateArray, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @indicate_packets(ptr noundef %ieee, ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #13
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @indicate_packets(ptr nocapture noundef %ieee, ptr nocapture noundef readonly %rxb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 8
  %2 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp77.not = icmp eq i8 %3, 0
  br i1 %cmp77.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %src = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 3
  %dst = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 2
  %rx_bytes = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35, i32 2
  %multicast = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35, i32 8
  %last_rx_ps_time = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 129
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 1, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %arrayidx, align 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx5 = getelementptr i8, ptr %7, i32 6
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i16
  %shl = shl nuw i16 %conv6, 8
  %arrayidx8 = getelementptr i8, ptr %7, i32 7
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i16
  %or = or i16 %shl, %conv9
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp11 = icmp ugt i32 %13, 7
  br i1 %cmp11, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #16
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %tobool14.not.not = icmp eq i32 %bcmp.fr, 0
  br i1 %tobool14.not.not, label %switch.early.test, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %14 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %switch.early.test.if.then26_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false_crit_edge79
  ]

switch.early.test.lor.lhs.false_crit_edge79:      ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

switch.early.test.lor.lhs.false_crit_edge:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

switch.early.test.if.then26_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

lor.lhs.false:                                    ; preds = %switch.early.test.lor.lhs.false_crit_edge, %switch.early.test.lor.lhs.false_crit_edge79, %land.lhs.true.lor.lhs.false_crit_edge
  %bcmp75 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %tobool25.not = icmp eq i32 %bcmp75, 0
  br i1 %tobool25.not, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %switch.early.test.if.then26_crit_edge
  %call27 = tail call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef 6) #13
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end.if.else_crit_edge
  %conv29 = trunc i32 %13 to i16
  %call30 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 2) #13
  %15 = ptrtoint ptr %call30 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv29, ptr %call30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %call32 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 6) #13
  %16 = call ptr @memcpy(ptr %call32, ptr %src, i32 6)
  %call33 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 6) #13
  %17 = call ptr @memcpy(ptr %call33, ptr %dst, i32 6)
  %18 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stats1, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %stats1, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %23, %21
  store i32 %add, ptr %rx_bytes, align 4
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end31.if.end41_crit_edge, label %if.then39

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multicast, align 4
  %inc40 = add i32 %28, 1
  store i32 %inc40, ptr %multicast, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end31.if.end41_crit_edge
  %call42 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %5, ptr noundef %1) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %call42, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %30 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %31 = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %31, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %last_rx_ps_time to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %last_rx_ps_time, align 4
  %call44 = tail call i32 @netif_rx(ptr noundef nonnull %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %for.body.cleanup_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %36 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rxb, align 1
  %38 = zext i8 %37 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %38
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_rsl(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats) #0 align 64 {
entry:
  %pTS = alloca ptr, align 4
  %dst = alloca [6 x i8], align 1
  %src = alloca [6 x i8], align 1
  %bssid = alloca [6 x i8], align 1
  %pRxTS = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS) #13
  %2 = ptrtoint ptr %pTS to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pTS, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #13
  %3 = call ptr @memset(ptr %dst, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #13
  %4 = call ptr @memset(ptr %src, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %stats2 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp = icmp ult i32 %9, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str) #17
  br label %rx_dropped

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %7, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %and = and i16 %12, 12
  %and5 = and i16 %12, 240
  %seq_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %seq_ctl, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv7 = zext i16 %15 to i32
  %and8 = and i32 %conv7, 15
  %and.i = and i32 %conv, 12
  %16 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %and.i, label %if.end.ieee80211_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb11.i
  ]

if.end.ieee80211_get_hdrlen.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %17 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %17)
  %.not.i = icmp eq i32 %17, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and7.i = and i32 %conv, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 136
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %hdrlen.0.i
  br label %ieee80211_get_hdrlen.exit

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = and i16 %12, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %18)
  %switch.selectcmp.i = icmp eq i16 %18, 192
  %19 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %ieee80211_get_hdrlen.exit

ieee80211_get_hdrlen.exit:                        ; preds = %sw.bb11.i, %sw.bb.i, %if.end.ieee80211_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end.ieee80211_get_hdrlen.exit_crit_edge ], [ %19, %sw.bb11.i ], [ %spec.select.i, %sw.bb.i ]
  %call10 = tail call zeroext i8 @HTCCheck(ptr noundef %ieee, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10)
  %tobool.not = icmp eq i8 %call10, 0
  br i1 %tobool.not, label %ieee80211_get_hdrlen.exit.if.end16_crit_edge, label %if.then11

ieee80211_get_hdrlen.exit.if.end16_crit_edge:     ; preds = %ieee80211_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then11:                                        ; preds = %ieee80211_get_hdrlen.exit
  %call12 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end15_crit_edge, label %if.then14

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.1) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then11.if.end15_crit_edge
  %add = add nuw nsw i32 %hdrlen.1.i, 4
  %bContainHTC = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %rx_stats, i32 0, i32 29
  %20 = ptrtoint ptr %bContainHTC to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %bContainHTC, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %ieee80211_get_hdrlen.exit.if.end16_crit_edge
  %hdrlen.0 = phi i32 [ %add, %if.end15 ], [ %hdrlen.1.i, %ieee80211_get_hdrlen.exit.if.end16_crit_edge ]
  %iw_mode = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %21 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp17 = icmp eq i32 %22, 6
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %24, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #13
  %28 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ieee, align 8
  %30 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %34 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %conv.i1.i = zext i16 %27 to i32
  %and.i.i = and i32 %conv.i1.i, 12
  %35 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %and.i.i, label %if.then19.ieee80211_monitor_rx.exit_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb11.i.i
  ]

if.then19.ieee80211_monitor_rx.exit_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_monitor_rx.exit

sw.bb.i.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %36 = and i32 %conv.i1.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %36)
  %.not.i.i = icmp eq i32 %36, 768
  %hdrlen.0.i.i = select i1 %.not.i.i, i32 30, i32 24
  %and7.i.i = and i32 %conv.i1.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i.i)
  %cmp.i.i = icmp eq i32 %and7.i.i, 136
  %add.i.i = add nuw nsw i32 %hdrlen.0.i.i, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %hdrlen.0.i.i
  br label %ieee80211_monitor_rx.exit

sw.bb11.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %37 = and i16 %27, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %37)
  %switch.selectcmp.i.i = icmp eq i16 %37, 192
  %38 = select i1 %switch.selectcmp.i.i, i32 10, i32 16
  br label %ieee80211_monitor_rx.exit

ieee80211_monitor_rx.exit:                        ; preds = %sw.bb11.i.i, %sw.bb.i.i, %if.then19.ieee80211_monitor_rx.exit_crit_edge
  %hdrlen.1.i.i = phi i32 [ 24, %if.then19.ieee80211_monitor_rx.exit_crit_edge ], [ %38, %sw.bb11.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %hdrlen.1.i.i) #13
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %39 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, 24576
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %40 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 25, ptr %protocol.i, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %41 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %call2.i = tail call i32 @netif_rx(ptr noundef %skb) #13
  %42 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats2, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %stats2, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35, i32 2
  %46 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_bytes, align 4
  %add21 = add i32 %47, %45
  store i32 %add21, ptr %rx_bytes, align 4
  br label %cleanup552

if.end22:                                         ; preds = %if.end16
  %host_decrypt = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 54
  %48 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not = icmp eq i32 %49, 0
  br i1 %tobool23.not, label %if.end22.if.end58_crit_edge, label %if.then24

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then24:                                        ; preds = %if.end22
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %add26 = add nuw nsw i32 %hdrlen.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add26)
  %cmp27.not = icmp ult i32 %51, %add26
  br i1 %cmp27.not, label %if.then24.if.end33_crit_edge, label %if.then29

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %53, i32 %add26
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  %56 = lshr i8 %55, 6
  %57 = zext i8 %56 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then24.if.end33_crit_edge
  %idx.0 = phi i32 [ %57, %if.then29 ], [ 0, %if.then24.if.end33_crit_edge ]
  %arrayidx35 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 71, i32 %idx.0
  %58 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %59, null
  br i1 %tobool36.not, label %if.end33.if.end41_crit_edge, label %land.lhs.true

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end33
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %tobool37.not = icmp eq ptr %61, null
  br i1 %tobool37.not, label %land.lhs.true.if.end41_crit_edge, label %lor.lhs.false

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %decrypt_mpdu = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %decrypt_mpdu, align 4
  %tobool39.not = icmp eq ptr %63, null
  br i1 %tobool39.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.end41:                                         ; preds = %lor.lhs.false.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  %and45 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end41.if.end58_crit_edge, label %do.body

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do.body:                                          ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %64 = load i32, ptr @ieee80211_debug_level, align 4
  %and48 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %addr2) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %rx_discards_undecryptable = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 36, i32 18
  %65 = ptrtoint ptr %rx_discards_undecryptable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_discards_undecryptable, align 8
  %inc56 = add i32 %66, 1
  store i32 %inc56, ptr %rx_discards_undecryptable, align 8
  br label %rx_dropped

if.end58:                                         ; preds = %if.end41.if.end58_crit_edge, %lor.lhs.false.if.end58_crit_edge, %if.end22.if.end58_crit_edge
  %crypt.1 = phi ptr [ null, %if.end22.if.end58_crit_edge ], [ null, %if.end41.if.end58_crit_edge ], [ %59, %lor.lhs.false.if.end58_crit_edge ]
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %68)
  %cmp60 = icmp ult i32 %68, 24
  br i1 %cmp60, label %if.end58.rx_dropped_crit_edge, label %if.end63

if.end58.rx_dropped_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end63:                                         ; preds = %if.end58
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %69 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pHTInfo, align 8
  %bCurRxReorderEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %bCurRxReorderEnable to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bCurRxReorderEnable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool64.not = icmp eq i8 %72, 0
  br i1 %tobool64.not, label %if.end63.if.then89_crit_edge, label %lor.lhs.false65

if.end63.if.then89_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then89

lor.lhs.false65:                                  ; preds = %if.end63
  %active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 1
  %73 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool66.not = icmp eq i32 %74, 0
  br i1 %tobool66.not, label %lor.lhs.false65.if.then89_crit_edge, label %lor.lhs.false67

lor.lhs.false65.if.then89_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then89

lor.lhs.false67:                                  ; preds = %lor.lhs.false65
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %79 = and i8 %78, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %79)
  %.not = icmp eq i8 %79, -120
  br i1 %.not, label %if.else, label %lor.lhs.false67.if.then89_crit_edge

lor.lhs.false67.if.then89_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false67.if.then89_crit_edge, %lor.lhs.false65.if.then89_crit_edge, %if.end63.if.then89_crit_edge
  %80 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %7, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #13
  %83 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %seq_ctl, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #13
  %86 = lshr i16 %85, 4
  %87 = and i16 %85, 15
  %conv5.i = zext i16 %82 to i32
  %88 = and i32 %conv5.i, 956
  call void @__sanitizer_cov_trace_const_cmp4(i32 904, i32 %88)
  %89 = icmp eq i32 %88, 904
  br i1 %89, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then89
  %qos_ctl.i = getelementptr inbounds %struct.rtl_80211_hdr_4addrqos, ptr %7, i32 0, i32 8
  %90 = ptrtoint ptr %qos_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %qos_ctl.i, align 1
  %92 = lshr i16 %91, 8
  %93 = and i16 %92, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp16.i = icmp eq i16 %93, 0
  br i1 %cmp16.i, label %if.then.i.if.end74.i_crit_edge, label %cond.false.i

if.then.i.if.end74.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %93)
  %cmp19.i = icmp ult i16 %93, 3
  br i1 %cmp19.i, label %cond.false.i.if.end74.i_crit_edge, label %cond.false22.i

cond.false.i.if.end74.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false22.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %93)
  %cmp24.i = icmp eq i16 %93, 3
  br i1 %cmp24.i, label %cond.false22.i.if.end74.i_crit_edge, label %cond.false27.i

cond.false22.i.if.end74.i_crit_edge:              ; preds = %cond.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false27.i:                                   ; preds = %cond.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %93)
  %cmp29.i = icmp ult i16 %93, 6
  %phi.bo217.i = select i1 %cmp29.i, i8 3, i8 4
  br label %if.end74.i

if.else.i:                                        ; preds = %if.then89
  %and9.i = and i32 %conv5.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and9.i)
  %cmp10.i = icmp eq i32 %and9.i, 136
  br i1 %cmp10.i, label %if.then41.i, label %if.else.i.if.end74.i_crit_edge

if.else.i.if.end74.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

if.then41.i:                                      ; preds = %if.else.i
  %qos_ctl42.i = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %7, i32 0, i32 7
  %94 = ptrtoint ptr %qos_ctl42.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %qos_ctl42.i, align 1
  %96 = lshr i16 %95, 8
  %97 = and i16 %96, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp47.i = icmp eq i16 %97, 0
  br i1 %cmp47.i, label %if.then41.i.if.end74.i_crit_edge, label %cond.false50.i

if.then41.i.if.end74.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false50.i:                                   ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %97)
  %cmp52.i = icmp ult i16 %97, 3
  br i1 %cmp52.i, label %cond.false50.i.if.end74.i_crit_edge, label %cond.false55.i

cond.false50.i.if.end74.i_crit_edge:              ; preds = %cond.false50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false55.i:                                   ; preds = %cond.false50.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %97)
  %cmp57.i = icmp eq i16 %97, 3
  br i1 %cmp57.i, label %cond.false55.i.if.end74.i_crit_edge, label %cond.false60.i

cond.false55.i.if.end74.i_crit_edge:              ; preds = %cond.false55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

cond.false60.i:                                   ; preds = %cond.false55.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %97)
  %cmp62.i = icmp ult i16 %97, 6
  %phi.bo.i = select i1 %cmp62.i, i8 3, i8 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %cond.false60.i, %cond.false55.i.if.end74.i_crit_edge, %cond.false50.i.if.end74.i_crit_edge, %if.then41.i.if.end74.i_crit_edge, %if.else.i.if.end74.i_crit_edge, %cond.false27.i, %cond.false22.i.if.end74.i_crit_edge, %cond.false.i.if.end74.i_crit_edge, %if.then.i.if.end74.i_crit_edge
  %tid.0.i = phi i8 [ 2, %if.then.i.if.end74.i_crit_edge ], [ 1, %cond.false.i.if.end74.i_crit_edge ], [ %phi.bo217.i, %cond.false27.i ], [ 2, %cond.false22.i.if.end74.i_crit_edge ], [ 2, %if.then41.i.if.end74.i_crit_edge ], [ 1, %cond.false50.i.if.end74.i_crit_edge ], [ %phi.bo.i, %cond.false60.i ], [ 2, %cond.false55.i.if.end74.i_crit_edge ], [ 0, %if.else.i.if.end74.i_crit_edge ]
  %98 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iw_mode, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %99, label %if.end74.i.if.end141_crit_edge [
    i32 1, label %sw.bb.i754
    i32 2, label %sw.bb118.i
  ]

if.end74.i.if.end141_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

sw.bb.i754:                                       ; preds = %if.end74.i
  %addr2.i = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3, i32 5
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i, align 1
  %103 = urem i8 %102, 31
  %rem.i = zext i8 %103 to i32
  %arrayidx77.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 125, i32 %rem.i
  %104 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %p.0221.i = load ptr, ptr %arrayidx77.i, align 4
  %cmp.i222.i = icmp eq ptr %p.0221.i, %arrayidx77.i
  br i1 %cmp.i222.i, label %sw.bb.i754.if.then91.i_crit_edge, label %sw.bb.i754.for.body.i_crit_edge

sw.bb.i754.for.body.i_crit_edge:                  ; preds = %sw.bb.i754
  br label %for.body.i

sw.bb.i754.if.then91.i_crit_edge:                 ; preds = %sw.bb.i754
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91.i

for.cond.i:                                       ; preds = %for.body.i
  %105 = ptrtoint ptr %p.0223.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %p.0.i = load ptr, ptr %p.0223.i, align 4
  %cmp.i.i755 = icmp eq ptr %p.0.i, %arrayidx77.i
  br i1 %cmp.i.i755, label %for.cond.i.if.then91.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.if.then91.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then91.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb.i754.for.body.i_crit_edge
  %p.0223.i = phi ptr [ %p.0.i, %for.cond.i.for.body.i_crit_edge ], [ %p.0221.i, %sw.bb.i754.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %p.0223.i, i32 -144
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool83.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool83.not.i, label %cleanup.i, label %for.cond.i

if.then91.i:                                      ; preds = %for.cond.i.if.then91.i_crit_edge, %sw.bb.i754.if.then91.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 2592, i32 noundef 152) #19
  %tobool93.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool93.not.i, label %if.then91.i.if.end141_crit_edge, label %if.end95.i

if.then91.i.if.end141_crit_edge:                  ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.end95.i:                                       ; preds = %if.then91.i
  %107 = call ptr @memcpy(ptr %call7.i.i, ptr %addr2.i, i32 6)
  %idxprom.i = zext i8 %tid.0.i to i32
  %arrayidx98.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i, i32 0, i32 1, i32 %idxprom.i
  %108 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %86, ptr %arrayidx98.i, align 2
  %arrayidx100.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i, i32 0, i32 2, i32 %idxprom.i
  %109 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %87, ptr %arrayidx100.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %arrayidx102.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i, i32 0, i32 3, i32 %idxprom.i
  %111 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx102.i, align 4
  %list.i = getelementptr inbounds %struct.ieee_ibss_seq, ptr %call7.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx77.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %arrayidx77.i, ptr noundef %113) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end95.i.if.end141_crit_edge

if.end95.i.if.end141_crit_edge:                   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.end.i.i.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %115 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %113, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ieee_ibss_seq, ptr %call7.i.i, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %arrayidx77.i, ptr %prev3.i.i.i, align 4
  %117 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %list.i, ptr %arrayidx77.i, align 4
  br label %if.end141

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom107.i = zext i8 %tid.0.i to i32
  %arrayidx108.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i, i32 0, i32 1, i32 %idxprom107.i
  %arrayidx111.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i, i32 0, i32 2, i32 %idxprom107.i
  %arrayidx114.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i, i32 0, i32 3, i32 %idxprom107.i
  br label %sw.epilog.i

sw.bb118.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom119.i = zext i8 %tid.0.i to i32
  %arrayidx120.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 126, i32 %idxprom119.i
  %arrayidx122.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 127, i32 %idxprom119.i
  %arrayidx124.i = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 128, i32 %idxprom119.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb118.i, %cleanup.i
  %last_seq.1.i = phi ptr [ %arrayidx120.i, %sw.bb118.i ], [ %arrayidx108.i, %cleanup.i ]
  %last_frag.1.i = phi ptr [ %arrayidx122.i, %sw.bb118.i ], [ %arrayidx111.i, %cleanup.i ]
  %last_time.1.i = phi ptr [ %arrayidx124.i, %sw.bb118.i ], [ %arrayidx114.i, %cleanup.i ]
  %118 = ptrtoint ptr %last_seq.1.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %last_seq.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %86)
  %cmp127.i = icmp eq i16 %119, %86
  br i1 %cmp127.i, label %land.lhs.true129.i, label %sw.epilog.i.if.else146.i_crit_edge

sw.epilog.i.if.else146.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else146.i

land.lhs.true129.i:                               ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %121 = ptrtoint ptr %last_time.1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %last_time.1.i, align 4
  %add.neg.i = add i32 %120, -500
  %sub.i = sub i32 %add.neg.i, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp130.i = icmp slt i32 %sub.i, 0
  br i1 %cmp130.i, label %if.then132.i, label %land.lhs.true129.i.if.else146.i_crit_edge

land.lhs.true129.i.if.else146.i_crit_edge:        ; preds = %land.lhs.true129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else146.i

if.then132.i:                                     ; preds = %land.lhs.true129.i
  %123 = ptrtoint ptr %last_frag.1.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %last_frag.1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %124, i16 %87)
  %cmp135.i = icmp eq i16 %124, %87
  br i1 %cmp135.i, label %if.then132.i.rx_dropped_crit_edge, label %if.end138.i

if.then132.i.rx_dropped_crit_edge:                ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end138.i:                                      ; preds = %if.then132.i
  %conv134.i = zext i16 %87 to i32
  %conv133.i = zext i16 %124 to i32
  %add140.i = add nuw nsw i32 %conv133.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add140.i, i32 %conv134.i)
  %cmp142.not.i = icmp eq i32 %add140.i, %conv134.i
  br i1 %cmp142.not.i, label %if.end138.i.if.end147.i_crit_edge, label %if.end138.i.rx_dropped_crit_edge

if.end138.i.rx_dropped_crit_edge:                 ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end138.i.if.end147.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147.i

if.else146.i:                                     ; preds = %land.lhs.true129.i.if.else146.i_crit_edge, %sw.epilog.i.if.else146.i_crit_edge
  %125 = ptrtoint ptr %last_seq.1.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %86, ptr %last_seq.1.i, align 2
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else146.i, %if.end138.i.if.end147.i_crit_edge
  %126 = ptrtoint ptr %last_frag.1.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %87, ptr %last_frag.1.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %128 = ptrtoint ptr %last_time.1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %last_time.1.i, align 4
  br label %if.end141

if.else:                                          ; preds = %lor.lhs.false67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pRxTS) #13
  %129 = ptrtoint ptr %pRxTS to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %pRxTS, align 4
  %addr294 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %130 = ptrtoint ptr %76 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %131 = load i16, ptr %76, align 1
  %132 = and i16 %131, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %132)
  %.not.i756 = icmp eq i16 %132, 3
  %133 = select i1 %.not.i756, i32 30, i32 24
  %add.ptr.i757 = getelementptr i8, ptr %76, i32 %133
  %134 = ptrtoint ptr %add.ptr.i757 to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load.i758 = load i16, ptr %add.ptr.i757, align 2
  %bf.lshr.i = lshr i16 %bf.load.i758, 12
  %conv4.i = trunc i16 %bf.lshr.i to i8
  %call98 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pRxTS, ptr noundef %addr294, i8 noundef zeroext %conv4.i, i32 noundef 1, i1 noundef zeroext true) #13
  br i1 %call98, label %if.then99, label %do.body125

if.then99:                                        ; preds = %if.else
  %and101 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then99.cleanup138_crit_edge, label %land.lhs.true103

if.then99.cleanup138_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup138

land.lhs.true103:                                 ; preds = %if.then99
  %135 = ptrtoint ptr %pRxTS to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pRxTS, align 4
  %rx_last_frag_num = getelementptr inbounds %struct.rx_ts_record, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %rx_last_frag_num to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %rx_last_frag_num, align 2
  %conv104 = zext i8 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %conv104)
  %cmp105 = icmp eq i32 %and8, %conv104
  br i1 %cmp105, label %land.lhs.true107, label %land.lhs.true103.cleanup138_crit_edge

land.lhs.true103.cleanup138_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup138

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %139 = lshr i32 %conv7, 4
  %rx_last_seq_num = getelementptr inbounds %struct.rx_ts_record, ptr %136, i32 0, i32 6
  %140 = ptrtoint ptr %rx_last_seq_num to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %rx_last_seq_num, align 4
  %conv111 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %conv111)
  %cmp112 = icmp eq i32 %139, %conv111
  br i1 %cmp112, label %land.lhs.true107.cleanup138.thread_crit_edge, label %land.lhs.true107.cleanup138_crit_edge

land.lhs.true107.cleanup138_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup138

land.lhs.true107.cleanup138.thread_crit_edge:     ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup138.thread

do.body125:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %142 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %tobool127.not = icmp sgt i32 %142, -1
  br i1 %tobool127.not, label %do.body125.cleanup138.thread_crit_edge, label %do.end131

do.body125.cleanup138.thread_crit_edge:           ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup138.thread

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #15
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #17
  br label %cleanup138.thread

cleanup138.thread:                                ; preds = %do.end131, %do.body125.cleanup138.thread_crit_edge, %land.lhs.true107.cleanup138.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTS) #13
  br label %rx_dropped

cleanup138:                                       ; preds = %land.lhs.true107.cleanup138_crit_edge, %land.lhs.true103.cleanup138_crit_edge, %if.then99.cleanup138_crit_edge
  %conv116 = trunc i32 %and8 to i8
  %143 = ptrtoint ptr %pRxTS to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pRxTS, align 4
  %rx_last_frag_num117 = getelementptr inbounds %struct.rx_ts_record, ptr %144, i32 0, i32 7
  %145 = ptrtoint ptr %rx_last_frag_num117 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv116, ptr %rx_last_frag_num117, align 2
  %146 = lshr i16 %15, 4
  %rx_last_seq_num122 = getelementptr inbounds %struct.rx_ts_record, ptr %144, i32 0, i32 6
  %147 = ptrtoint ptr %rx_last_seq_num122 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %rx_last_seq_num122, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTS) #13
  br label %if.end141

if.end141:                                        ; preds = %cleanup138, %if.end147.i, %if.end.i.i.i, %if.end95.i.if.end141_crit_edge, %if.then91.i.if.end141_crit_edge, %if.end74.i.if.end141_crit_edge
  %conv142 = zext i16 %and to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %cmp143 = icmp eq i16 %and, 0
  br i1 %cmp143, label %if.then145, label %if.end150

if.then145:                                       ; preds = %if.end141
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len, align 4
  %conv.i760 = trunc i32 %151 to i16
  %len1.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %rx_stats, i32 0, i32 9
  %152 = ptrtoint ptr %len1.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i760, ptr %len1.i, align 2
  %153 = load ptr, ptr %data, align 4
  call void @ieee80211_rx_mgt_rsl(ptr noundef %ieee, ptr noundef %153, ptr noundef %rx_stats) #13
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %149, i32 0, i32 2
  %154 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ieee, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 86
  %156 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev_addr.i, align 64
  %bcmp.i761 = call i32 @bcmp(ptr noundef dereferenceable(6) %addr1.i, ptr noundef dereferenceable(6) %157, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i761)
  %tobool.not.i = icmp eq i32 %bcmp.i761, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then145.ieee80211_rx_frame_mgmt.exit_crit_edge

if.then145.ieee80211_rx_frame_mgmt.exit_crit_edge: ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_rx_frame_mgmt.exit

if.end.i:                                         ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = call i32 @ieee80211_rx_frame_softmac(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats, i16 noundef zeroext 0, i16 noundef zeroext %and5) #13
  br label %ieee80211_rx_frame_mgmt.exit

ieee80211_rx_frame_mgmt.exit:                     ; preds = %if.end.i, %if.then145.ieee80211_rx_frame_mgmt.exit_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup552

if.end150:                                        ; preds = %if.end141
  %and152 = and i32 %conv, 768
  %158 = zext i32 %and152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %and152, label %sw.default [
    i32 512, label %sw.bb
    i32 256, label %sw.bb160
    i32 768, label %sw.bb170
  ]

sw.bb:                                            ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 2
  %159 = call ptr @memcpy(ptr %dst, ptr %addr1, i32 6)
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 4
  %160 = call ptr @memcpy(ptr %src, ptr %addr3, i32 6)
  %addr2158 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %161 = call ptr @memcpy(ptr %bssid, ptr %addr2158, i32 6)
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  %addr3162 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 4
  %162 = call ptr @memcpy(ptr %dst, ptr %addr3162, i32 6)
  %addr2165 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %163 = call ptr @memcpy(ptr %src, ptr %addr2165, i32 6)
  %addr1168 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 2
  %164 = call ptr @memcpy(ptr %bssid, ptr %addr1168, i32 6)
  br label %sw.epilog

sw.bb170:                                         ; preds = %if.end150
  %165 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %166)
  %cmp172 = icmp ult i32 %166, 30
  br i1 %cmp172, label %sw.bb170.rx_dropped_crit_edge, label %if.end175

sw.bb170.rx_dropped_crit_edge:                    ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end175:                                        ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #15
  %addr3177 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 4
  %167 = call ptr @memcpy(ptr %dst, ptr %addr3177, i32 6)
  %addr4 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 6
  %168 = call ptr @memcpy(ptr %src, ptr %addr4, i32 6)
  %current_network182 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %169 = call ptr @memcpy(ptr %bssid, ptr %current_network182, i32 6)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  %addr1186 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 2
  %170 = call ptr @memcpy(ptr %dst, ptr %addr1186, i32 6)
  %addr2189 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 3
  %171 = call ptr @memcpy(ptr %src, ptr %addr2189, i32 6)
  %addr3192 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %7, i32 0, i32 4
  %172 = call ptr @memcpy(ptr %bssid, ptr %addr3192, i32 6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end175, %sw.bb160, %sw.bb
  %conv194 = zext i16 %and5 to i32
  %173 = lshr exact i16 %and5, 4
  %trunc = trunc i16 %173 to i4
  %174 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.220)
  switch i4 %trunc, label %do.body218 [
    i4 0, label %sw.epilog.if.end234_crit_edge
    i4 1, label %sw.epilog.if.end234_crit_edge807
    i4 2, label %sw.epilog.if.end234_crit_edge808
    i4 3, label %sw.epilog.if.end234_crit_edge809
    i4 -8, label %sw.epilog.if.end234_crit_edge810
    i4 4, label %sw.epilog.rx_dropped_crit_edge
  ]

sw.epilog.rx_dropped_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

sw.epilog.if.end234_crit_edge810:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

sw.epilog.if.end234_crit_edge809:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

sw.epilog.if.end234_crit_edge808:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

sw.epilog.if.end234_crit_edge807:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

sw.epilog.if.end234_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

do.body218:                                       ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %175 = load i32, ptr @ieee80211_debug_level, align 4
  %and219 = and i32 %175, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %do.body218.rx_dropped_crit_edge, label %do.end224

do.body218.rx_dropped_crit_edge:                  ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

do.end224:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len, align 4
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv142, i32 noundef %conv194, i32 noundef %177) #17
  br label %rx_dropped

if.end234:                                        ; preds = %sw.epilog.if.end234_crit_edge, %sw.epilog.if.end234_crit_edge807, %sw.epilog.if.end234_crit_edge808, %sw.epilog.if.end234_crit_edge809, %sw.epilog.if.end234_crit_edge810
  %current_network236 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %current_network236, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool240.not = icmp eq i32 %bcmp, 0
  br i1 %tobool240.not, label %if.end242, label %if.end234.rx_dropped_crit_edge

if.end234.rx_dropped_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end242:                                        ; preds = %if.end234
  %178 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %host_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool244.not = icmp eq i32 %179, 0
  %and247 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  %or.cond743 = or i1 %tobool248.not, %tobool244.not
  br i1 %or.cond743, label %if.end242.if.end268_crit_edge, label %land.lhs.true249

if.end242.if.end268_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

land.lhs.true249:                                 ; preds = %if.end242
  %call250 = call fastcc i32 @ieee80211_rx_frame_decrypt(ptr noundef %ieee, ptr noundef %skb, ptr noundef %crypt.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %do.body255, label %land.lhs.true249.if.end268_crit_edge

land.lhs.true249.if.end268_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

do.body255:                                       ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_rx_rsl.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_rx_rsl, %if.then261)) #13
          to label %rx_dropped [label %if.then261], !srcloc !383

if.then261:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #15
  %180 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ieee, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_rx_rsl.__UNIQUE_ID_ddebug482, ptr noundef %181, ptr noundef nonnull @.str.12) #13
  br label %rx_dropped

if.end268:                                        ; preds = %land.lhs.true249.if.end268_crit_edge, %if.end242.if.end268_crit_edge
  %keyidx.0 = phi i32 [ %call250, %land.lhs.true249.if.end268_crit_edge ], [ 0, %if.end242.if.end268_crit_edge ]
  %182 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp270.not = icmp eq i32 %and8, 0
  %and274 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  %184 = or i32 %and8, %and274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %if.end268.if.end343_crit_edge, label %if.then276

if.end268.if.end343_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end343

if.then276:                                       ; preds = %if.end268
  %call277 = call fastcc ptr @ieee80211_frag_cache_get(ptr noundef %ieee, ptr noundef %183)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %186 = load i32, ptr @ieee80211_debug_level, align 4
  %and279 = and i32 %186, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.then276.do.end289_crit_edge, label %do.end284

if.then276.do.end289_crit_edge:                   ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end289

do.end284:                                        ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #15
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %and8) #17
  br label %do.end289

do.end289:                                        ; preds = %do.end284, %if.then276.do.end289_crit_edge
  %tobool290.not = icmp eq ptr %call277, null
  br i1 %tobool290.not, label %do.body292, label %if.end311

do.body292:                                       ; preds = %do.end289
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %187 = load i32, ptr @ieee80211_debug_level, align 4
  %and293 = and i32 %187, 544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %do.body292.rx_dropped_crit_edge, label %do.end298

do.body292.rx_dropped_crit_edge:                  ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

do.end298:                                        ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #15
  %and301 = lshr i32 %conv, 10
  %and301.lobit = and i32 %and301, 1
  %188 = lshr i32 %conv7, 4
  %call307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and301.lobit, i32 noundef %188, i32 noundef %and8) #17
  br label %rx_dropped

if.end311:                                        ; preds = %do.end289
  %189 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %len, align 4
  %sub = select i1 %cmp270.not, i32 0, i32 %hdrlen.0
  %spec.select = sub i32 %190, %sub
  %tail = getelementptr inbounds %struct.sk_buff, ptr %call277, i32 0, i32 16
  %191 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %192, i32 %spec.select
  %end = getelementptr inbounds %struct.sk_buff, ptr %call277, i32 0, i32 17
  %193 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %end, align 4
  %cmp317 = icmp ugt ptr %add.ptr, %194
  br i1 %cmp317, label %if.then319, label %if.end321

if.then319:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #17
  call fastcc void @ieee80211_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %183)
  br label %rx_dropped

if.end321:                                        ; preds = %if.end311
  %195 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data, align 4
  %add.ptr329.sink.idx = select i1 %cmp270.not, i32 0, i32 %hdrlen.0
  %add.ptr329.sink = getelementptr i8, ptr %196, i32 %add.ptr329.sink.idx
  %call.i763 = call ptr @skb_put(ptr noundef nonnull %call277, i32 noundef %spec.select) #13
  %197 = call ptr @memcpy(ptr %call.i763, ptr %add.ptr329.sink, i32 %spec.select)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br i1 %tobool275.not, label %cleanup339, label %if.end321.cleanup552_crit_edge

if.end321.cleanup552_crit_edge:                   ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup552

cleanup339:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #15
  %data337 = getelementptr inbounds %struct.sk_buff, ptr %call277, i32 0, i32 19
  %198 = ptrtoint ptr %data337 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %data337, align 4
  call fastcc void @ieee80211_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %199)
  br label %if.end343

if.end343:                                        ; preds = %cleanup339, %if.end268.if.end343_crit_edge
  %skb.addr.1 = phi ptr [ %call277, %cleanup339 ], [ %skb, %if.end268.if.end343_crit_edge ]
  %200 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %host_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool345.not = icmp eq i32 %201, 0
  %or.cond745 = or i1 %tobool248.not, %tobool345.not
  br i1 %or.cond745, label %if.end343.if.end374_crit_edge, label %land.lhs.true350

if.end343.if.end374_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end374

land.lhs.true350:                                 ; preds = %if.end343
  %call351 = call fastcc i32 @ieee80211_rx_frame_decrypt_msdu(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %keyidx.0, ptr noundef %crypt.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %land.lhs.true350.if.end374_crit_edge, label %do.body355

land.lhs.true350.if.end374_crit_edge:             ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end374

do.body355:                                       ; preds = %land.lhs.true350
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_rx_rsl.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_rx_rsl, %if.then367)) #13
          to label %rx_dropped [label %if.then367], !srcloc !383

if.then367:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ieee, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_rx_rsl.__UNIQUE_ID_ddebug483, ptr noundef %203, ptr noundef nonnull @.str.20) #13
  br label %rx_dropped

if.end374:                                        ; preds = %land.lhs.true350.if.end374_crit_edge, %if.end343.if.end374_crit_edge
  %NumRecvDataInPeriod = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 156, i32 1
  %204 = ptrtoint ptr %NumRecvDataInPeriod to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %NumRecvDataInPeriod, align 4
  %inc375 = add i32 %205, 1
  store i32 %inc375, ptr %NumRecvDataInPeriod, align 4
  %NumRxOkInPeriod = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 156, i32 7
  %206 = ptrtoint ptr %NumRxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %NumRxOkInPeriod, align 8
  %inc377 = add i32 %207, 1
  store i32 %inc377, ptr %NumRxOkInPeriod, align 8
  %data378 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %208 = ptrtoint ptr %data378 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data378, align 4
  %tobool379.not = icmp ne ptr %crypt.1, null
  %or.cond746 = and i1 %tobool248.not, %tobool379.not
  br i1 %or.cond746, label %land.lhs.true384, label %if.end374.if.end478_crit_edge

if.end374.if.end478_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true384:                                 ; preds = %if.end374
  %open_wep = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 49
  %210 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool385.not = icmp eq i32 %211, 0
  br i1 %tobool385.not, label %if.then386, label %land.lhs.true384.land.lhs.true429_crit_edge

land.lhs.true384.land.lhs.true429_crit_edge:      ; preds = %land.lhs.true384
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true429

if.then386:                                       ; preds = %land.lhs.true384
  %call387 = call fastcc i32 @ieee80211_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %212 = load i32, ptr @ieee80211_debug_level, align 4
  br i1 %tobool388.not, label %do.body408, label %if.then389

if.then389:                                       ; preds = %if.then386
  %and393 = and i32 %212, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393)
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %if.then389.land.lhs.true429_crit_edge, label %do.end398

if.then389.land.lhs.true429_crit_edge:            ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true429

do.end398:                                        ; preds = %if.then389
  %type400 = getelementptr i8, ptr %209, i32 33
  %213 = ptrtoint ptr %type400 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %type400, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %214)
  %cmp.i764 = icmp ugt i8 %214, 4
  br i1 %cmp.i764, label %do.end398.eap_get_type.exit_crit_edge, label %cond.false.i766

do.end398.eap_get_type.exit_crit_edge:            ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #15
  br label %eap_get_type.exit

cond.false.i766:                                  ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #15
  %conv401 = zext i8 %214 to i32
  %arrayidx.i765 = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv401
  %215 = ptrtoint ptr %arrayidx.i765 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i765, align 4
  br label %eap_get_type.exit

eap_get_type.exit:                                ; preds = %cond.false.i766, %do.end398.eap_get_type.exit_crit_edge
  %cond.i = phi ptr [ %216, %cond.false.i766 ], [ @.str.112, %do.end398.eap_get_type.exit_crit_edge ]
  %call403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %cond.i) #17
  br label %land.lhs.true429

do.body408:                                       ; preds = %if.then386
  %and409 = and i32 %212, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %do.body408.rx_dropped_crit_edge, label %do.end414

do.body408.rx_dropped_crit_edge:                  ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

do.end414:                                        ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #15
  %addr2416 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %209, i32 0, i32 3
  %call418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %addr2416) #17
  br label %rx_dropped

land.lhs.true429:                                 ; preds = %eap_get_type.exit, %if.then389.land.lhs.true429_crit_edge, %land.lhs.true384.land.lhs.true429_crit_edge
  %call430 = call fastcc i32 @ieee80211_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %land.lhs.true429.land.lhs.true457_crit_edge, label %if.then432

land.lhs.true429.land.lhs.true457_crit_edge:      ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true457

if.then432:                                       ; preds = %land.lhs.true429
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %217 = load i32, ptr @ieee80211_debug_level, align 4
  %and437 = and i32 %217, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437)
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %if.then432.land.lhs.true457_crit_edge, label %do.end442

if.then432.land.lhs.true457_crit_edge:            ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true457

do.end442:                                        ; preds = %if.then432
  %218 = ptrtoint ptr %data378 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %data378, align 4
  %type444 = getelementptr i8, ptr %219, i32 33
  %220 = ptrtoint ptr %type444 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %type444, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %221)
  %cmp.i767 = icmp ugt i8 %221, 4
  br i1 %cmp.i767, label %do.end442.eap_get_type.exit771_crit_edge, label %cond.false.i769

do.end442.eap_get_type.exit771_crit_edge:         ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #15
  br label %eap_get_type.exit771

cond.false.i769:                                  ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #15
  %conv445 = zext i8 %221 to i32
  %arrayidx.i768 = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv445
  %222 = ptrtoint ptr %arrayidx.i768 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i768, align 4
  br label %eap_get_type.exit771

eap_get_type.exit771:                             ; preds = %cond.false.i769, %do.end442.eap_get_type.exit771_crit_edge
  %cond.i770 = phi ptr [ %223, %cond.false.i769 ], [ @.str.112, %do.end442.eap_get_type.exit771_crit_edge ]
  %call447 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %cond.i770) #17
  br label %land.lhs.true457

land.lhs.true457:                                 ; preds = %eap_get_type.exit771, %if.then432.land.lhs.true457_crit_edge, %land.lhs.true429.land.lhs.true457_crit_edge
  %224 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %open_wep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool459.not = icmp eq i32 %225, 0
  br i1 %tobool459.not, label %land.lhs.true460, label %land.lhs.true457.if.end478_crit_edge

land.lhs.true457.if.end478_crit_edge:             ; preds = %land.lhs.true457
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true460:                                 ; preds = %land.lhs.true457
  %call461 = call fastcc i32 @ieee80211_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call461)
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %do.body464, label %land.lhs.true460.if.end478_crit_edge

land.lhs.true460.if.end478_crit_edge:             ; preds = %land.lhs.true460
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

do.body464:                                       ; preds = %land.lhs.true460
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %226 = load i32, ptr @ieee80211_debug_level, align 4
  %and465 = and i32 %226, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and465)
  %tobool466.not = icmp eq i32 %and465, 0
  br i1 %tobool466.not, label %do.body464.rx_dropped_crit_edge, label %do.end470

do.body464.rx_dropped_crit_edge:                  ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

do.end470:                                        ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #15
  %addr2472 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %209, i32 0, i32 3
  %call474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %addr2472) #17
  br label %rx_dropped

if.end478:                                        ; preds = %land.lhs.true460.if.end478_crit_edge, %land.lhs.true457.if.end478_crit_edge, %if.end374.if.end478_crit_edge
  %active481 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 1
  %227 = ptrtoint ptr %active481 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %active481, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool482.not = icmp eq i32 %228, 0
  br i1 %tobool482.not, label %if.end478.if.end512_crit_edge, label %land.lhs.true483

if.end478.if.end512_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end512

land.lhs.true483:                                 ; preds = %if.end478
  %229 = ptrtoint ptr %data378 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %data378, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %230, align 2
  %233 = and i16 %232, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %233)
  %cmp487 = icmp eq i16 %233, 136
  br i1 %cmp487, label %land.lhs.true489, label %land.lhs.true483.if.end512_crit_edge

land.lhs.true483.if.end512_crit_edge:             ; preds = %land.lhs.true483
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end512

land.lhs.true489:                                 ; preds = %land.lhs.true483
  %addr1490 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %209, i32 0, i32 2
  %234 = ptrtoint ptr %addr1490 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr1490, align 4
  %236 = and i32 %235, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.i.not = icmp eq i32 %236, 0
  br i1 %tobool.i.not, label %if.then493, label %land.lhs.true489.if.end512_crit_edge

land.lhs.true489.if.end512_crit_edge:             ; preds = %land.lhs.true489
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end512

if.then493:                                       ; preds = %land.lhs.true489
  %237 = and i16 %232, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %237)
  %.not.i772 = icmp eq i16 %237, 3
  %238 = select i1 %.not.i772, i32 30, i32 24
  %add.ptr.i773 = getelementptr i8, ptr %230, i32 %238
  %239 = ptrtoint ptr %add.ptr.i773 to i32
  call void @__asan_load2_noabort(i32 %239)
  %bf.load.i774 = load i16, ptr %add.ptr.i773, align 2
  %bf.lshr.i775 = lshr i16 %bf.load.i774, 12
  %conv4.i776 = trunc i16 %bf.lshr.i775 to i8
  %240 = lshr i16 %15, 4
  %addr2500 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %209, i32 0, i32 3
  %call502 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2500, i8 noundef zeroext %conv4.i776, i32 noundef 1, i1 noundef zeroext true) #13
  %trunc797 = trunc i16 %bf.lshr.i775 to i4
  %241 = zext i4 %trunc797 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.221)
  switch i4 %trunc797, label %if.then510 [
    i4 0, label %if.then493.if.end512_crit_edge
    i4 3, label %if.then493.if.end512_crit_edge811
  ]

if.then493.if.end512_crit_edge811:                ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end512

if.then493.if.end512_crit_edge:                   ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end512

if.then510:                                       ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #15
  %bis_any_nonbepkts = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 153
  %242 = ptrtoint ptr %bis_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %bis_any_nonbepkts, align 4
  br label %if.end512

if.end512:                                        ; preds = %if.then510, %if.then493.if.end512_crit_edge, %if.then493.if.end512_crit_edge811, %land.lhs.true489.if.end512_crit_edge, %land.lhs.true483.if.end512_crit_edge, %if.end478.if.end512_crit_edge
  %SeqNum.0 = phi i16 [ 0, %land.lhs.true489.if.end512_crit_edge ], [ %240, %if.then510 ], [ %240, %if.then493.if.end512_crit_edge ], [ 0, %land.lhs.true483.if.end512_crit_edge ], [ 0, %if.end478.if.end512_crit_edge ], [ %240, %if.then493.if.end512_crit_edge811 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %243 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %243, i32 noundef 2592, i32 noundef 269) #19
  %tobool514.not = icmp eq ptr %call7.i, null
  br i1 %tobool514.not, label %if.end512.rx_dropped_crit_edge, label %if.end516

if.end512.rx_dropped_crit_edge:                   ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #15
  br label %rx_dropped

if.end516:                                        ; preds = %if.end512
  %call519 = call fastcc zeroext i8 @parse_subframe(ptr noundef %ieee, ptr noundef %skb.addr.1, ptr noundef %rx_stats, ptr noundef nonnull %call7.i, ptr noundef nonnull %src, ptr noundef nonnull %dst)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call519)
  %cmp521 = icmp eq i8 %call519, 0
  br i1 %cmp521, label %for.cond.preheader, label %if.end529

for.cond.preheader:                               ; preds = %if.end516
  %244 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %cmp525800.not = icmp eq i8 %245, 0
  br i1 %cmp525800.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0801 = phi i32 [ %inc528, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx527 = getelementptr %struct.ieee80211_rxb, ptr %call7.i, i32 0, i32 1, i32 %i.0801
  %246 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load ptr, ptr %arrayidx527, align 1
  call void @consume_skb(ptr noundef %247) #13
  %inc528 = add nuw nsw i32 %i.0801, 1
  %248 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %call7.i, align 8
  %conv524 = zext i8 %249 to i32
  %cmp525 = icmp ult i32 %inc528, %conv524
  br i1 %cmp525, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %rx_dropped

if.end529:                                        ; preds = %if.end516
  %250 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pHTInfo, align 8
  %bCurRxReorderEnable531 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %251, i32 0, i32 44
  %252 = ptrtoint ptr %bCurRxReorderEnable531 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %bCurRxReorderEnable531, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool532.not = icmp eq i8 %253, 0
  br i1 %tobool532.not, label %if.end529.if.then535_crit_edge, label %lor.lhs.false533

if.end529.if.then535_crit_edge:                   ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then535

lor.lhs.false533:                                 ; preds = %if.end529
  %254 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %pTS, align 4
  %tobool534.not = icmp eq ptr %255, null
  br i1 %tobool534.not, label %lor.lhs.false533.if.then535_crit_edge, label %do.body537

lor.lhs.false533.if.then535_crit_edge:            ; preds = %lor.lhs.false533
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then535

if.then535:                                       ; preds = %lor.lhs.false533.if.then535_crit_edge, %if.end529.if.then535_crit_edge
  call fastcc void @indicate_packets(ptr noundef %ieee, ptr noundef nonnull %call7.i)
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %if.end549

do.body537:                                       ; preds = %lor.lhs.false533
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %256 = load i32, ptr @ieee80211_debug_level, align 4
  %and538 = and i32 %256, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and538)
  %tobool539.not = icmp eq i32 %and538, 0
  br i1 %tobool539.not, label %do.body537.do.end548_crit_edge, label %do.end543

do.body537.do.end548_crit_edge:                   ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end548

do.end543:                                        ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #15
  %call545 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #17
  br label %do.end548

do.end548:                                        ; preds = %do.end543, %do.body537.do.end548_crit_edge
  %257 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pTS, align 4
  call fastcc void @RxReorderIndicatePacket(ptr noundef %ieee, ptr noundef nonnull %call7.i, ptr noundef %258, i16 noundef zeroext %SeqNum.0)
  br label %if.end549

if.end549:                                        ; preds = %do.end548, %if.then535
  call void @consume_skb(ptr noundef %skb.addr.1) #13
  br label %cleanup552

rx_dropped:                                       ; preds = %for.end, %if.end512.rx_dropped_crit_edge, %do.end470, %do.body464.rx_dropped_crit_edge, %do.end414, %do.body408.rx_dropped_crit_edge, %if.then367, %do.body355, %if.then319, %do.end298, %do.body292.rx_dropped_crit_edge, %if.then261, %do.body255, %if.end234.rx_dropped_crit_edge, %do.end224, %do.body218.rx_dropped_crit_edge, %sw.epilog.rx_dropped_crit_edge, %sw.bb170.rx_dropped_crit_edge, %cleanup138.thread, %if.end138.i.rx_dropped_crit_edge, %if.then132.i.rx_dropped_crit_edge, %if.end58.rx_dropped_crit_edge, %cleanup, %if.then
  call void @kfree(ptr noundef null) #13
  %rx_dropped550 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 35, i32 6
  %259 = ptrtoint ptr %rx_dropped550 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %rx_dropped550, align 4
  %inc551 = add i32 %260, 1
  store i32 %inc551, ptr %rx_dropped550, align 4
  br label %cleanup552

cleanup552:                                       ; preds = %rx_dropped, %if.end549, %if.end321.cleanup552_crit_edge, %ieee80211_rx_frame_mgmt.exit, %ieee80211_monitor_rx.exit
  %retval.0 = phi i32 [ 0, %rx_dropped ], [ 1, %ieee80211_monitor_rx.exit ], [ 1, %ieee80211_rx_frame_mgmt.exit ], [ 1, %if.end549 ], [ 1, %if.end321.cleanup552_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HTCCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_frame_decrypt(ptr nocapture noundef %ieee, ptr noundef %skb, ptr noundef %crypt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %crypt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_mpdu = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_mpdu, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwsec_active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 2
  %4 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %add.ptr, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %8, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv.i = zext i16 %11 to i32
  %and.i = and i32 %conv.i, 12
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %and.i, label %if.end4.ieee80211_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb11.i
  ]

if.end4.ieee80211_get_hdrlen.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %.not.i = icmp eq i32 %13, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and7.i = and i32 %conv.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 136
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %hdrlen.0.i
  br label %ieee80211_get_hdrlen.exit

sw.bb11.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %14 = and i16 %11, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %14)
  %switch.selectcmp.i = icmp eq i16 %14, 192
  %15 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %ieee80211_get_hdrlen.exit

ieee80211_get_hdrlen.exit:                        ; preds = %sw.bb11.i, %sw.bb.i, %if.end4.ieee80211_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end4.ieee80211_get_hdrlen.exit_crit_edge ], [ %15, %sw.bb11.i ], [ %spec.select.i, %sw.bb.i ]
  %tkip_countermeasures = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 63
  %16 = ptrtoint ptr %tkip_countermeasures to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tkip_countermeasures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %ieee80211_get_hdrlen.exit.if.end23_crit_edge, label %land.lhs.true

ieee80211_get_hdrlen.exit.if.end23_crit_edge:     ; preds = %ieee80211_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true:                                    ; preds = %ieee80211_get_hdrlen.exit
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(5) @.str.99) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %do.body12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_rx_frame_decrypt.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_rx_frame_decrypt, %if.then17)) #13
          to label %cleanup [label %if.then17], !srcloc !383

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ieee, align 8
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_rx_frame_decrypt.__UNIQUE_ID_ddebug476, ptr noundef %23, ptr noundef nonnull @.str.101, ptr noundef %addr2) #13
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %ieee80211_get_hdrlen.exit.if.end23_crit_edge
  %refcnt = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !384
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %decrypt_mpdu25 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %decrypt_mpdu25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %decrypt_mpdu25, align 4
  %priv = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 2
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %call26 = tail call i32 %28(ptr noundef %skb, i32 noundef %hdrlen.1.i, ptr noundef %30) #13
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp28 = icmp slt i32 %call26, 0
  br i1 %cmp28, label %do.body30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body30:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %32 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body30.do.end42_crit_edge, label %do.end35

do.body30.do.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  %addr237 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %8, i32 0, i32 3
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %addr237, i32 noundef %call26) #17
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %do.body30.do.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call26)
  %cmp43 = icmp eq i32 %call26, -2
  br i1 %cmp43, label %do.body45, label %do.end42.if.end58_crit_edge

do.end42.if.end58_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do.body45:                                        ; preds = %do.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %33 = load i32, ptr @ieee80211_debug_level, align 4
  %and46 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.if.end58_crit_edge, label %do.end51

do.body45.if.end58_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %hdrlen.1.i, 3
  %arrayidx = getelementptr i8, ptr %35, i32 %add
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %38 = lshr i8 %37, 6
  %39 = zext i8 %38 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %39) #17
  br label %if.end58

if.end58:                                         ; preds = %do.end51, %do.body45.if.end58_crit_edge, %do.end42.if.end58_crit_edge
  %rx_discards_undecryptable = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 36, i32 18
  %40 = ptrtoint ptr %rx_discards_undecryptable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_discards_undecryptable, align 8
  %inc = add i32 %41, 1
  store i32 %inc, ptr %rx_discards_undecryptable, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end23.cleanup_crit_edge, %if.then17, %do.body12, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end58 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then17 ], [ -1, %if.then8.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ -1, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_frag_cache_get(ptr noundef %ieee, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %hdr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %seq_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 5
  %3 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %seq_ctl, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15
  %6 = lshr i32 %conv, 4
  %conv4 = zext i16 %2 to i32
  %and8 = and i32 %conv4, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 136
  %7 = and i32 %conv4, 956
  call void @__sanitizer_cov_trace_const_cmp4(i32 904, i32 %7)
  %8 = icmp eq i32 %7, 904
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %qos_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addrqos, ptr %hdr, i32 0, i32 8
  %9 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %qos_ctl, align 1
  %11 = lshr i16 %10, 8
  %12 = and i16 %11, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp15 = icmp eq i16 %12, 0
  br i1 %cmp15, label %if.then.if.end73_crit_edge, label %cond.false

if.then.if.end73_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp18 = icmp ult i16 %12, 3
  br i1 %cmp18, label %cond.false.if.end73_crit_edge, label %cond.false21

cond.false.if.end73_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false21:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp23 = icmp eq i16 %12, 3
  br i1 %cmp23, label %cond.false21.if.end73_crit_edge, label %cond.false26

cond.false21.if.end73_crit_edge:                  ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false26:                                     ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %12)
  %cmp28 = icmp ult i16 %12, 6
  %phi.bo184 = select i1 %cmp28, i8 3, i8 4
  br label %if.end73

if.else:                                          ; preds = %entry
  br i1 %cmp9, label %if.then40, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then40:                                        ; preds = %if.else
  %qos_ctl41 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %hdr, i32 0, i32 7
  %13 = ptrtoint ptr %qos_ctl41 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %qos_ctl41, align 1
  %15 = lshr i16 %14, 8
  %16 = and i16 %15, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp46 = icmp eq i16 %16, 0
  br i1 %cmp46, label %if.then40.if.end73_crit_edge, label %cond.false49

if.then40.if.end73_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false49:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp51 = icmp ult i16 %16, 3
  br i1 %cmp51, label %cond.false49.if.end73_crit_edge, label %cond.false54

cond.false49.if.end73_crit_edge:                  ; preds = %cond.false49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false54:                                     ; preds = %cond.false49
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp56 = icmp eq i16 %16, 3
  br i1 %cmp56, label %cond.false54.if.end73_crit_edge, label %cond.false59

cond.false54.if.end73_crit_edge:                  ; preds = %cond.false54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

cond.false59:                                     ; preds = %cond.false54
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %16)
  %cmp61 = icmp ult i16 %16, 6
  %phi.bo = select i1 %cmp61, i8 3, i8 4
  br label %if.end73

if.end73:                                         ; preds = %cond.false59, %cond.false54.if.end73_crit_edge, %cond.false49.if.end73_crit_edge, %if.then40.if.end73_crit_edge, %if.else.if.end73_crit_edge, %cond.false26, %cond.false21.if.end73_crit_edge, %cond.false.if.end73_crit_edge, %if.then.if.end73_crit_edge
  %tid.0 = phi i8 [ 2, %if.then.if.end73_crit_edge ], [ 1, %cond.false.if.end73_crit_edge ], [ %phi.bo184, %cond.false26 ], [ 2, %cond.false21.if.end73_crit_edge ], [ 2, %if.then40.if.end73_crit_edge ], [ 1, %cond.false49.if.end73_crit_edge ], [ %phi.bo, %cond.false59 ], [ 2, %cond.false54.if.end73_crit_edge ], [ 0, %if.else.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp74 = icmp eq i32 %and, 0
  br i1 %cmp74, label %if.then76, label %if.else116

if.then76:                                        ; preds = %if.end73
  %17 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ieee, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu, align 4
  %add80 = select i1 %cmp9, i32 56, i32 54
  %add86 = add i32 %add80, %20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add86, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then76.cleanup_crit_edge, label %if.end88

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end88:                                         ; preds = %if.then76
  %idxprom = zext i8 %tid.0 to i32
  %arrayidx90 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 77, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx90, align 4
  %arrayidx91 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22
  %inc95 = add i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc95)
  %cmp99 = icmp ugt i32 %inc95, 3
  %spec.select = select i1 %cmp99, i32 0, i32 %inc95
  %23 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %arrayidx90, align 4
  %skb106 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22, i32 3
  %24 = ptrtoint ptr %skb106 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb106, align 4
  %tobool107.not = icmp eq ptr %25, null
  br i1 %tobool107.not, label %if.end88.if.end110_crit_edge, label %if.then108

if.end88.if.end110_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then108:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %25, i32 noundef 1) #13
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end88.if.end110_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx91, align 4
  %seq111 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22, i32 1
  %28 = ptrtoint ptr %seq111 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %6, ptr %seq111, align 4
  %last_frag = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22, i32 2
  %29 = ptrtoint ptr %last_frag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %last_frag, align 4
  %30 = ptrtoint ptr %skb106 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %skb106, align 4
  %src_addr = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22, i32 4
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 3
  %31 = call ptr @memcpy(ptr %src_addr, ptr %addr2, i32 6)
  %dst_addr = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %22, i32 5
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %dst_addr, ptr %addr1, i32 6)
  br label %cleanup

if.else116:                                       ; preds = %if.end73
  %addr2117 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 3
  %addr1119 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 2
  %call121 = tail call fastcc ptr @ieee80211_frag_cache_find(ptr noundef %ieee, i32 noundef %6, i32 noundef %and, i8 noundef zeroext %tid.0, ptr noundef %addr2117, ptr noundef %addr1119)
  %tobool122.not = icmp eq ptr %call121, null
  br i1 %tobool122.not, label %if.else116.cleanup_crit_edge, label %if.then123

if.else116.cleanup_crit_edge:                     ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then123:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #15
  %last_frag124 = getelementptr inbounds %struct.ieee80211_frag_entry, ptr %call121, i32 0, i32 2
  %33 = ptrtoint ptr %last_frag124 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and, ptr %last_frag124, align 4
  %skb125 = getelementptr inbounds %struct.ieee80211_frag_entry, ptr %call121, i32 0, i32 3
  %34 = ptrtoint ptr %skb125 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb125, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.else116.cleanup_crit_edge, %if.end110, %if.then76.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then76.cleanup_crit_edge ], [ %call.i.i, %if.end110 ], [ %35, %if.then123 ], [ null, %if.else116.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_frag_cache_invalidate(ptr noundef %ieee, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %hdr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %seq_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 5
  %3 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %seq_ctl, align 1
  %5 = and i16 %4, -3841
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = lshr exact i16 %6, 4
  %8 = zext i16 %7 to i32
  %conv2 = zext i16 %2 to i32
  %9 = and i32 %conv2, 956
  call void @__sanitizer_cov_trace_const_cmp4(i32 904, i32 %9)
  %10 = icmp eq i32 %9, 904
  br i1 %10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %qos_ctl = getelementptr inbounds %struct.rtl_80211_hdr_4addrqos, ptr %hdr, i32 0, i32 8
  %11 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %qos_ctl, align 1
  %13 = lshr i16 %12, 8
  %14 = and i16 %13, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp13 = icmp eq i16 %14, 0
  br i1 %cmp13, label %if.then.if.end71_crit_edge, label %cond.false

if.then.if.end71_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp16 = icmp ult i16 %14, 3
  br i1 %cmp16, label %cond.false.if.end71_crit_edge, label %cond.false19

cond.false.if.end71_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false19:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp21 = icmp eq i16 %14, 3
  br i1 %cmp21, label %cond.false19.if.end71_crit_edge, label %cond.false24

cond.false19.if.end71_crit_edge:                  ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false24:                                     ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %14)
  %cmp26 = icmp ult i16 %14, 6
  %phi.bo1 = select i1 %cmp26, i8 3, i8 4
  br label %if.end71

if.else:                                          ; preds = %entry
  %and6 = and i32 %conv2, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 136
  br i1 %cmp7, label %if.then38, label %if.else.if.end71_crit_edge

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then38:                                        ; preds = %if.else
  %qos_ctl39 = getelementptr inbounds %struct.rtl_80211_hdr_3addrqos, ptr %hdr, i32 0, i32 7
  %15 = ptrtoint ptr %qos_ctl39 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %qos_ctl39, align 1
  %17 = lshr i16 %16, 8
  %18 = and i16 %17, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp44 = icmp eq i16 %18, 0
  br i1 %cmp44, label %if.then38.if.end71_crit_edge, label %cond.false47

if.then38.if.end71_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false47:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp49 = icmp ult i16 %18, 3
  br i1 %cmp49, label %cond.false47.if.end71_crit_edge, label %cond.false52

cond.false47.if.end71_crit_edge:                  ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false52:                                     ; preds = %cond.false47
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp54 = icmp eq i16 %18, 3
  br i1 %cmp54, label %cond.false52.if.end71_crit_edge, label %cond.false57

cond.false52.if.end71_crit_edge:                  ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

cond.false57:                                     ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %18)
  %cmp59 = icmp ult i16 %18, 6
  %phi.bo = select i1 %cmp59, i8 3, i8 4
  br label %if.end71

if.end71:                                         ; preds = %cond.false57, %cond.false52.if.end71_crit_edge, %cond.false47.if.end71_crit_edge, %if.then38.if.end71_crit_edge, %if.else.if.end71_crit_edge, %cond.false24, %cond.false19.if.end71_crit_edge, %cond.false.if.end71_crit_edge, %if.then.if.end71_crit_edge
  %tid.0 = phi i8 [ 2, %if.then.if.end71_crit_edge ], [ 1, %cond.false.if.end71_crit_edge ], [ %phi.bo1, %cond.false24 ], [ 2, %cond.false19.if.end71_crit_edge ], [ 2, %if.then38.if.end71_crit_edge ], [ 1, %cond.false47.if.end71_crit_edge ], [ %phi.bo, %cond.false57 ], [ 2, %cond.false52.if.end71_crit_edge ], [ 0, %if.else.if.end71_crit_edge ]
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %hdr, i32 0, i32 2
  %call = tail call fastcc ptr @ieee80211_frag_cache_find(ptr noundef %ieee, i32 noundef %8, i32 noundef -1, i8 noundef zeroext %tid.0, ptr noundef %addr2, ptr noundef %addr1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end82

do.body:                                          ; preds = %if.end71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %19 = load i32, ptr @ieee80211_debug_level, align 4
  %and74 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %8) #17
  br label %cleanup

if.end82:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %skb = getelementptr inbounds %struct.ieee80211_frag_entry, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_rx_frame_decrypt_msdu(ptr nocapture noundef readonly %ieee, ptr noundef %skb, i32 noundef %keyidx, ptr noundef %crypt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %crypt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_msdu = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %decrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_msdu, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwsec_active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 2
  %4 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %add.ptr, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %8, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv.i = zext i16 %11 to i32
  %and.i = and i32 %conv.i, 12
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %and.i, label %if.end4.ieee80211_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb11.i
  ]

if.end4.ieee80211_get_hdrlen.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %.not.i = icmp eq i32 %13, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and7.i = and i32 %conv.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 136
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %hdrlen.0.i
  br label %ieee80211_get_hdrlen.exit

sw.bb11.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %14 = and i16 %11, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %14)
  %switch.selectcmp.i = icmp eq i16 %14, 192
  %15 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %ieee80211_get_hdrlen.exit

ieee80211_get_hdrlen.exit:                        ; preds = %sw.bb11.i, %sw.bb.i, %if.end4.ieee80211_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end4.ieee80211_get_hdrlen.exit_crit_edge ], [ %15, %sw.bb11.i ], [ %spec.select.i, %sw.bb.i ]
  %refcnt = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !384
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %decrypt_msdu6 = getelementptr inbounds %struct.ieee80211_crypto_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %decrypt_msdu6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %decrypt_msdu6, align 4
  %priv = getelementptr inbounds %struct.ieee80211_crypt_data, ptr %crypt, i32 0, i32 2
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call7 = tail call i32 %20(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %hdrlen.1.i, ptr noundef %22) #13
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.body10, label %ieee80211_get_hdrlen.exit.cleanup_crit_edge

ieee80211_get_hdrlen.exit.cleanup_crit_edge:      ; preds = %ieee80211_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body10:                                        ; preds = %ieee80211_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_rx_frame_decrypt_msdu, %if.then15)) #13
          to label %cleanup [label %if.then15], !srcloc !383

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ieee, align 8
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug477, ptr noundef %25, ptr noundef nonnull @.str.111, ptr noundef %addr2, i32 noundef %keyidx) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %ieee80211_get_hdrlen.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then15 ], [ 0, %ieee80211_get_hdrlen.exit.cleanup_crit_edge ], [ -1, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ieee80211_is_eapol_frame(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %skb, i32 noundef %hdrlen) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp ult i32 %3, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %.tr = trunc i16 %7 to i10
  %trunc = shl i10 %.tr, 8
  %8 = zext i10 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.224)
  switch i10 %trunc, label %if.end.cleanup_crit_edge [
    i10 256, label %land.lhs.true
    i10 -512, label %land.lhs.true17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %bcmp57 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr1, ptr noundef dereferenceable(6) %10, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp57)
  %cmp4 = icmp eq i32 %bcmp57, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %5, i32 0, i32 4
  %bcmp58 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr3, ptr noundef dereferenceable(6) %10, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58)
  %cmp10 = icmp ne i32 %bcmp58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp29.old = icmp ult i32 %3, 32
  %or.cond59 = select i1 %cmp10, i1 true, i1 %cmp29.old
  br i1 %or.cond59, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end32_crit_edge

land.lhs.true6.if.end32_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end
  %addr118 = getelementptr inbounds %struct.rtl_80211_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr20, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr118, ptr noundef dereferenceable(6) %12, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22 = icmp ne i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp29 = icmp ult i32 %3, 32
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp29
  br i1 %or.cond, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end32_crit_edge

land.lhs.true17.if.end32_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true17.if.end32_crit_edge, %land.lhs.true6.if.end32_crit_edge
  %add.ptr = getelementptr i8, ptr %5, i32 %hdrlen
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 6
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv34, 8
  %arrayidx35 = getelementptr i8, ptr %add.ptr, i32 7
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %16 to i32
  %or = or i32 %shl, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 34958, i32 %or)
  %cmp39 = icmp eq i32 %or, 34958
  %. = zext i1 %cmp39 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ %., %if.end32 ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @parse_subframe(ptr nocapture noundef readonly %ieee, ptr noundef %skb, ptr nocapture noundef readonly %rx_stats, ptr nocapture noundef %rxb, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %seq_ctl = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %seq_ctl, align 1
  %6 = and i16 %5, -3841
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = lshr exact i16 %7, 4
  %9 = and i16 %3, -17408
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %9)
  %cmp = icmp eq i16 %9, -30720
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %add.ptr, align 2
  %11 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp ne i16 %11, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %spec.select242 = phi i16 [ 26, %land.lhs.true ], [ 24, %entry.if.end_crit_edge ]
  %bIsAggregateFrame.0.off0 = phi i1 [ %tobool.not, %land.lhs.true ], [ false, %entry.if.end_crit_edge ]
  %bContainHTC = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %rx_stats, i32 0, i32 29
  %12 = ptrtoint ptr %bContainHTC to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bContainHTC, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %14 = or i16 %spec.select242, 4
  %LLCOffset.1 = select i1 %tobool15.not, i16 %spec.select242, i16 %14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %conv21 = zext i16 %LLCOffset.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp22.not = icmp ugt i32 %16, %conv21
  br i1 %cmp22.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv21) #13
  br i1 %bIsAggregateFrame.0.off0, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %rxb to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rxb, align 1
  %call29 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #13
  %subframes = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 1
  %18 = ptrtoint ptr %subframes to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store ptr %call29, ptr %subframes, align 1
  %src30 = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %src30, ptr %src, i32 6)
  %dst31 = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %dst31, ptr %dst, i32 6)
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %21 = ptrtoint ptr %rxb to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %rxb, align 1
  %src34 = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %src34, ptr %src, i32 6)
  %dst36 = getelementptr inbounds %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %dst36, ptr %dst, i32 6)
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %25)
  %cmp39258 = icmp ugt i32 %25, 14
  br i1 %cmp39258, label %if.else.while.body_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %if.end183.while.body_crit_edge, %if.else.while.body_crit_edge
  %26 = phi i32 [ %.pr, %if.end183.while.body_crit_edge ], [ %25, %if.else.while.body_crit_edge ]
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %add.ptr42 = getelementptr i8, ptr %28, i32 12
  %29 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr42, align 2
  %add46 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv49 = zext i16 %add46 to i32
  %add50 = add nuw nsw i32 %conv49, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add50)
  %cmp51 = icmp ult i32 %26, %add50
  br i1 %cmp51, label %do.body54, label %if.end129

do.body54:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_subframe.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_subframe, %if.then59)) #13
          to label %do.body66 [label %if.then59], !srcloc !383

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ieee, align 8
  %33 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rxb, align 1
  %conv61 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @parse_subframe.__UNIQUE_ID_ddebug478, ptr noundef %32, ptr noundef nonnull @.str.119, i32 noundef %conv61) #13
  br label %do.body66

do.body66:                                        ; preds = %if.then59, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_subframe.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_subframe, %if.then78)) #13
          to label %do.body87 [label %if.then78], !srcloc !383

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ieee, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @parse_subframe.__UNIQUE_ID_ddebug479, ptr noundef %36, ptr noundef nonnull @.str.120, i32 noundef %conv49) #13
  br label %do.body87

do.body87:                                        ; preds = %if.then78, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_subframe.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_subframe, %if.then99)) #13
          to label %do.body109 [label %if.then99], !srcloc !383

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ieee, align 8
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @parse_subframe.__UNIQUE_ID_ddebug480, ptr noundef %38, ptr noundef nonnull @.str.121, i32 noundef %40, i32 noundef %conv49) #13
  br label %do.body109

do.body109:                                       ; preds = %if.then99, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_subframe.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_subframe, %if.then121)) #13
          to label %cleanup [label %if.then121], !srcloc !383

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ieee, align 8
  %conv123 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @parse_subframe.__UNIQUE_ID_ddebug481, ptr noundef %42, ptr noundef nonnull @.str.122, i32 noundef %conv123) #13
  br label %cleanup

if.end129:                                        ; preds = %while.body
  %call130 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #13
  %add132 = add nuw nsw i32 %conv49, 12
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add132, i32 noundef 2592) #13
  %tobool134.not = icmp eq ptr %call.i.i, null
  br i1 %tobool134.not, label %if.end129.cleanup_crit_edge, label %if.end136

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end136:                                        ; preds = %if.end129
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %46, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv49) #13
  %49 = call ptr @memcpy(ptr %call.i, ptr %48, i32 %conv49)
  %50 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rxb, align 1
  %inc = add i8 %51, 1
  store i8 %inc, ptr %rxb, align 1
  %idxprom = zext i8 %51 to i32
  %arrayidx142 = getelementptr %struct.ieee80211_rxb, ptr %rxb, i32 0, i32 1, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store ptr %call.i.i, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc)
  %cmp145 = icmp ugt i8 %inc, 63
  br i1 %cmp145, label %do.body148, label %if.end160

do.body148:                                       ; preds = %if.end136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %53 = load i32, ptr @ieee80211_debug_level, align 4
  %and149 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %do.body148.while.end_crit_edge, label %do.end154

do.body148.while.end_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #15
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #17
  br label %while.end

if.end160:                                        ; preds = %if.end136
  %call162 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv49) #13
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp164.not = icmp eq i32 %55, 0
  br i1 %cmp164.not, label %if.end160.while.end_crit_edge, label %if.then166

if.end160.while.end_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then166:                                       ; preds = %if.end160
  %56 = trunc i32 %add50 to i8
  %57 = and i8 %56, 3
  %conv169 = sub nuw nsw i8 4, %57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp171 = icmp eq i8 %57, 0
  %spec.store.select = select i1 %cmp171, i8 0, i8 %conv169
  %conv176 = zext i8 %spec.store.select to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv176)
  %cmp177 = icmp ult i32 %55, %conv176
  br i1 %cmp177, label %if.then166.cleanup_crit_edge, label %if.end183

if.then166.cleanup_crit_edge:                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end183:                                        ; preds = %if.then166
  %call182 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv176) #13
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %len, align 4
  %cmp39 = icmp ugt i32 %.pr, 14
  br i1 %cmp39, label %if.end183.while.body_crit_edge, label %if.end183.while.end_crit_edge

if.end183.while.end_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end183.while.body_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end183.while.end_crit_edge, %if.end160.while.end_crit_edge, %do.end154, %do.body148.while.end_crit_edge, %if.else.while.end_crit_edge
  %59 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rxb, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then166.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.then121, %do.body109, %if.then28, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ %60, %while.end ], [ 1, %if.then28 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then121 ], [ 0, %do.body109 ], [ 0, %if.end129.cleanup_crit_edge ], [ 0, %if.then166.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @RxReorderIndicatePacket(ptr noundef %ieee, ptr noundef %prxb, ptr noundef %pTS, i16 noundef zeroext %SeqNum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %RxReorderWinSize = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %RxReorderWinSize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RxReorderWinSize, align 1
  %rx_indicate_seq = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 1
  %4 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_indicate_seq, align 4
  %conv = zext i16 %5 to i32
  %conv2 = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %6 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv5 = zext i16 %SeqNum to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, i32 noundef %conv5, i32 noundef %conv, i32 noundef %conv2) #17
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 512) #19
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %8 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_indicate_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp = icmp eq i16 %9, -1
  br i1 %cmp, label %if.then18, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %SeqNum, ptr %rx_indicate_seq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %conv21 = zext i16 %SeqNum to i32
  %11 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_indicate_seq, align 4
  %conv23 = zext i16 %12 to i32
  %sub24 = sub nsw i32 %conv21, %conv23
  %and25 = and i32 %sub24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %if.end48, label %do.body29

do.body29:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %13 = load i32, ptr @ieee80211_debug_level, align 4
  %and30 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.end43_crit_edge, label %do.end35

do.body29.do.end43_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv23, i32 noundef %conv21) #17
  br label %do.end43

do.end43:                                         ; preds = %do.end35, %do.body29.do.end43_crit_edge
  %RxReorderDropCounter = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 47
  %14 = ptrtoint ptr %RxReorderDropCounter to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %RxReorderDropCounter, align 1
  %inc = add i16 %15, 1
  store i16 %inc, ptr %RxReorderDropCounter, align 1
  %16 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp45486.not = icmp eq i8 %17, 0
  br i1 %cmp45486.not, label %do.end43.for.end_crit_edge, label %do.end43.for.body_crit_edge

do.end43.for.body_crit_edge:                      ; preds = %do.end43
  br label %for.body

do.end43.for.end_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end43.for.body_crit_edge
  %i.0487 = phi i32 [ %inc47, %for.body.for.body_crit_edge ], [ 0, %do.end43.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_rxb, ptr %prxb, i32 0, i32 1, i32 %i.0487
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %arrayidx, align 1
  tail call void @consume_skb(ptr noundef %19) #13
  %inc47 = add nuw nsw i32 %i.0487, 1
  %20 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prxb, align 1
  %conv44 = zext i8 %21 to i32
  %cmp45 = icmp ult i32 %inc47, %conv44
  br i1 %cmp45, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end43.for.end_crit_edge
  tail call void @kfree(ptr noundef %prxb) #13
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %SeqNum)
  %cmp52 = icmp eq i16 %12, %SeqNum
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end48
  %add57 = add i16 %SeqNum, 1
  %rem58 = and i16 %add57, 4095
  %22 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %rem58, ptr %rx_indicate_seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %23 = load i32, ptr @ieee80211_debug_level, align 4
  %and110 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then54.do.end123_crit_edge, label %do.end115

if.then54.do.end123_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end123

if.else:                                          ; preds = %if.end48
  %add = sub nsw i32 4095, %conv21
  %sub = add nsw i32 %add, %conv2
  %sub63 = add nsw i32 %sub, %conv
  %and64 = and i32 %sub63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %cmp65.not = icmp eq i32 %and64, 0
  br i1 %cmp65.not, label %if.else.if.else125_crit_edge, label %if.then67

if.else.if.else125_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else125

if.then67:                                        ; preds = %if.else
  %sub70 = add nsw i32 %conv2, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub70, i32 %conv21)
  %cmp71.not = icmp sgt i32 %sub70, %conv21
  br i1 %cmp71.not, label %if.else80, label %if.then73

if.then73:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %add75 = add nuw nsw i32 %conv21, 1
  %sub77 = sub nsw i32 %add75, %conv2
  %conv78 = trunc i32 %sub77 to i16
  br label %do.body90

if.else80:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %add83.neg = xor i32 %conv21, -1
  %sub84 = add nsw i32 %conv2, %add83.neg
  %24 = trunc i32 %sub84 to i16
  %conv87 = sub i16 4096, %24
  br label %do.body90

do.body90:                                        ; preds = %if.else80, %if.then73
  %storemerge = phi i16 [ %conv87, %if.else80 ], [ %conv78, %if.then73 ]
  %25 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge, ptr %rx_indicate_seq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %26 = load i32, ptr @ieee80211_debug_level, align 4
  %and91 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.body90.if.else125_crit_edge, label %do.end96

do.body90.if.else125_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else125

do.end96:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #15
  %conv99 = zext i16 %storemerge to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv99, i32 noundef %conv21) #17
  br label %if.else125

do.end115:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  %conv118 = zext i16 %rem58 to i32
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv118, i32 noundef %conv21) #17
  br label %do.end123

do.end123:                                        ; preds = %do.end115, %if.then54.do.end123_crit_edge
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %prxb, ptr %call7.i.i, align 8
  br label %if.end207

if.else125:                                       ; preds = %do.end96, %do.body90.if.else125_crit_edge, %if.else.if.else125_crit_edge
  %RxReorder_Unused_List = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33
  %28 = ptrtoint ptr %RxReorder_Unused_List to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %RxReorder_Unused_List, align 4
  %cmp.i.not = icmp eq ptr %29, %RxReorder_Unused_List
  br i1 %cmp.i.not, label %do.body182, label %if.then128

if.then128:                                       ; preds = %if.else125
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then128.list_del_init.exit_crit_edge

if.then128.list_del_init.exit_crit_edge:          ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then128.list_del_init.exit_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i, align 4
  %SeqNum131 = getelementptr inbounds %struct.rx_reorder_entry, ptr %29, i32 0, i32 1
  %38 = ptrtoint ptr %SeqNum131 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %SeqNum, ptr %SeqNum131, align 4
  %prxb132 = getelementptr inbounds %struct.rx_reorder_entry, ptr %29, i32 0, i32 2
  %39 = ptrtoint ptr %prxb132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %prxb, ptr %prxb132, align 4
  %rx_pending_pkt_list.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %list_del_init.exit
  %pList.0.i = phi ptr [ %rx_pending_pkt_list.i, %list_del_init.exit ], [ %41, %while.body.i.while.cond.i_crit_edge ]
  %40 = ptrtoint ptr %pList.0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pList.0.i, align 4
  %cmp.not.i = icmp eq ptr %41, %rx_pending_pkt_list.i
  br i1 %cmp.not.i, label %while.cond.i.do.body165_crit_edge, label %while.body.i

while.cond.i.do.body165_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body165

while.body.i:                                     ; preds = %while.cond.i
  %SeqNum3.i = getelementptr inbounds %struct.rx_reorder_entry, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %SeqNum3.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %SeqNum3.i, align 4
  %conv4.i = zext i16 %43 to i32
  %sub.i = sub nsw i32 %conv21, %conv4.i
  %and.i = and i32 %sub.i, 2048
  %cmp5.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.not.i, label %if.else.i453, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.else.i453:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %SeqNum)
  %cmp16.i = icmp eq i16 %43, %SeqNum
  br i1 %cmp16.i, label %do.body135, label %if.else.i453.do.body165_crit_edge

if.else.i453.do.body165_crit_edge:                ; preds = %if.else.i453
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body165

do.body135:                                       ; preds = %if.else.i453
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %44 = load i32, ptr @ieee80211_debug_level, align 4
  %and136 = and i32 %44, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body135.do.end149_crit_edge, label %do.end141

do.body135.do.end149_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end149

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rx_indicate_seq, align 4
  %conv144 = zext i16 %46 to i32
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.125, i32 noundef %conv144, i32 noundef %conv21) #17
  br label %do.end149

do.end149:                                        ; preds = %do.end141, %do.body135.do.end149_crit_edge
  %prev.i455 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33, i32 1
  %47 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i455, align 4
  %call.i.i456 = tail call zeroext i1 @__list_add_valid(ptr noundef %29, ptr noundef %48, ptr noundef %RxReorder_Unused_List) #13
  br i1 %call.i.i456, label %if.end.i.i457, label %do.end149.list_add_tail.exit_crit_edge

do.end149.list_add_tail.exit_crit_edge:           ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i457:                                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %prev.i455 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %29, ptr %prev.i455, align 4
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %RxReorder_Unused_List, ptr %29, align 4
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %29, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i457, %do.end149.list_add_tail.exit_crit_edge
  %53 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp156489.not = icmp eq i8 %54, 0
  br i1 %cmp156489.not, label %list_add_tail.exit.for.end163_crit_edge, label %list_add_tail.exit.for.body158_crit_edge

list_add_tail.exit.for.body158_crit_edge:         ; preds = %list_add_tail.exit
  br label %for.body158

list_add_tail.exit.for.end163_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end163

for.body158:                                      ; preds = %for.body158.for.body158_crit_edge, %list_add_tail.exit.for.body158_crit_edge
  %i152.0490 = phi i32 [ %inc162, %for.body158.for.body158_crit_edge ], [ 0, %list_add_tail.exit.for.body158_crit_edge ]
  %arrayidx160 = getelementptr %struct.ieee80211_rxb, ptr %prxb, i32 0, i32 1, i32 %i152.0490
  %55 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load ptr, ptr %arrayidx160, align 1
  tail call void @consume_skb(ptr noundef %56) #13
  %inc162 = add nuw nsw i32 %i152.0490, 1
  %57 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %prxb, align 1
  %conv155 = zext i8 %58 to i32
  %cmp156 = icmp ult i32 %inc162, %conv155
  br i1 %cmp156, label %for.body158.for.body158_crit_edge, label %for.body158.for.end163_crit_edge

for.body158.for.end163_crit_edge:                 ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end163

for.body158.for.body158_crit_edge:                ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body158

for.end163:                                       ; preds = %for.body158.for.end163_crit_edge, %list_add_tail.exit.for.end163_crit_edge
  tail call void @kfree(ptr noundef %prxb) #13
  br label %if.end207

do.body165:                                       ; preds = %if.else.i453.do.body165_crit_edge, %while.cond.i.do.body165_crit_edge
  %59 = phi ptr [ %41, %if.else.i453.do.body165_crit_edge ], [ %rx_pending_pkt_list.i, %while.cond.i.do.body165_crit_edge ]
  %60 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %29, ptr %prev.i, align 4
  %62 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %pList.0.i, ptr %prev.i3.i, align 4
  %63 = ptrtoint ptr %pList.0.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %29, ptr %pList.0.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %64 = load i32, ptr @ieee80211_debug_level, align 4
  %and166 = and i32 %64, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.body165.if.end207_crit_edge, label %do.end171

do.body165.if.end207_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

do.end171:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rx_indicate_seq, align 4
  %conv174 = zext i16 %66 to i32
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %conv174, i32 noundef %conv21) #17
  br label %if.end207

do.body182:                                       ; preds = %if.else125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %67 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %tobool184.not = icmp sgt i32 %67, -1
  br i1 %tobool184.not, label %do.body182.do.end193_crit_edge, label %do.end188

do.body182.do.end193_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end193

do.end188:                                        ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #15
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #17
  br label %do.end193

do.end193:                                        ; preds = %do.end188, %do.body182.do.end193_crit_edge
  %68 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp198492.not = icmp eq i8 %69, 0
  br i1 %cmp198492.not, label %do.end193.for.end205_crit_edge, label %do.end193.for.body200_crit_edge

do.end193.for.body200_crit_edge:                  ; preds = %do.end193
  br label %for.body200

do.end193.for.end205_crit_edge:                   ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end205

for.body200:                                      ; preds = %for.body200.for.body200_crit_edge, %do.end193.for.body200_crit_edge
  %i194.0493 = phi i32 [ %inc204, %for.body200.for.body200_crit_edge ], [ 0, %do.end193.for.body200_crit_edge ]
  %arrayidx202 = getelementptr %struct.ieee80211_rxb, ptr %prxb, i32 0, i32 1, i32 %i194.0493
  %70 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load ptr, ptr %arrayidx202, align 1
  tail call void @consume_skb(ptr noundef %71) #13
  %inc204 = add nuw nsw i32 %i194.0493, 1
  %72 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %prxb, align 1
  %conv197 = zext i8 %73 to i32
  %cmp198 = icmp ult i32 %inc204, %conv197
  br i1 %cmp198, label %for.body200.for.body200_crit_edge, label %for.body200.for.end205_crit_edge

for.body200.for.end205_crit_edge:                 ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end205

for.body200.for.body200_crit_edge:                ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body200

for.end205:                                       ; preds = %for.body200.for.end205_crit_edge, %do.end193.for.end205_crit_edge
  tail call void @kfree(ptr noundef %prxb) #13
  br label %if.end207

if.end207:                                        ; preds = %for.end205, %do.end171, %do.body165.if.end207_crit_edge, %for.end163, %do.end123
  %index.0 = phi i8 [ 1, %do.end123 ], [ 0, %for.end205 ], [ 0, %do.end171 ], [ 0, %do.body165.if.end207_crit_edge ], [ 0, %for.end163 ]
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3
  %74 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i458.not494 = icmp eq ptr %75, %rx_pending_pkt_list
  br i1 %cmp.i458.not494, label %if.end207.while.end_crit_edge, label %do.body210.lr.ph

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body210.lr.ph:                                 ; preds = %if.end207
  %prev = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3, i32 1
  %RxReorder_Unused_List292 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33
  %prev.i466 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 33, i32 1
  %76 = zext i8 %index.0 to i32
  br label %do.body210

do.body210:                                       ; preds = %list_add_tail.exit470.do.body210_crit_edge, %do.body210.lr.ph
  %indvars.iv = phi i32 [ %76, %do.body210.lr.ph ], [ %indvars.iv.next, %list_add_tail.exit470.do.body210_crit_edge ]
  %index.1495 = phi i8 [ %index.0, %do.body210.lr.ph ], [ %inc290, %list_add_tail.exit470.do.body210_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %77 = load i32, ptr @ieee80211_debug_level, align 4
  %and211 = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %do.body210.do.end221_crit_edge, label %do.end216

do.body210.do.end221_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end221

do.end216:                                        ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #15
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.125) #17
  br label %do.end221

do.end221:                                        ; preds = %do.end216, %do.body210.do.end221_crit_edge
  %78 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev, align 4
  %SeqNum226 = getelementptr inbounds %struct.rx_reorder_entry, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %SeqNum226 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %SeqNum226, align 4
  %conv227 = zext i16 %81 to i32
  %82 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %rx_indicate_seq, align 4
  %conv229 = zext i16 %83 to i32
  %sub230 = sub nsw i32 %conv227, %conv229
  %and231 = and i32 %sub230, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %cmp232.not = icmp ne i32 %and231, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %83)
  %cmp238 = icmp eq i16 %81, %83
  %or.cond = select i1 %cmp232.not, i1 true, i1 %cmp238
  br i1 %or.cond, label %if.then240, label %while.end.loopexit

if.then240:                                       ; preds = %do.end221
  %84 = and i32 %indvars.iv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp242.not = icmp eq i32 %84, 0
  br i1 %cmp242.not, label %if.end257, label %do.body245

do.body245:                                       ; preds = %if.then240
  %85 = trunc i32 %indvars.iv to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %86 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %tobool247.not = icmp sgt i32 %86, -1
  br i1 %tobool247.not, label %do.body245.if.then298_crit_edge, label %do.end251

do.body245.if.then298_crit_edge:                  ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then298

do.end251:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #15
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #17
  br label %if.then298

if.end257:                                        ; preds = %if.then240
  %call.i.i460 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %79) #13
  br i1 %call.i.i460, label %if.end.i.i463, label %if.end257.list_del_init.exit465_crit_edge

if.end257.list_del_init.exit465_crit_edge:        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit465

if.end.i.i463:                                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i461 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i461 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i461, align 4
  %89 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %79, align 4
  %prev1.i.i.i462 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i462 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i462, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del_init.exit465

list_del_init.exit465:                            ; preds = %if.end.i.i463, %if.end257.list_del_init.exit465_crit_edge
  %93 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %79, ptr %79, align 4
  %prev.i3.i464 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i3.i464 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %79, ptr %prev.i3.i464, align 4
  %95 = ptrtoint ptr %SeqNum226 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %SeqNum226, align 4
  %97 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %rx_indicate_seq, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp263 = icmp eq i16 %96, %98
  br i1 %cmp263, label %if.then265, label %list_del_init.exit465.do.body273_crit_edge

list_del_init.exit465.do.body273_crit_edge:       ; preds = %list_del_init.exit465
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body273

if.then265:                                       ; preds = %list_del_init.exit465
  call void @__sanitizer_cov_trace_pc() #15
  %99 = add i16 %96, 1
  %100 = and i16 %99, 4095
  %101 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %rx_indicate_seq, align 4
  br label %do.body273

do.body273:                                       ; preds = %if.then265, %list_del_init.exit465.do.body273_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %102 = load i32, ptr @ieee80211_debug_level, align 4
  %and274 = and i32 %102, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %do.body273.do.end287_crit_edge, label %do.end279

do.body273.do.end287_crit_edge:                   ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end287

do.end279:                                        ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %rx_indicate_seq, align 4
  %conv282 = zext i16 %104 to i32
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv282, i32 noundef %conv21) #17
  br label %do.end287

do.end287:                                        ; preds = %do.end279, %do.body273.do.end287_crit_edge
  %prxb288 = getelementptr inbounds %struct.rx_reorder_entry, ptr %79, i32 0, i32 2
  %105 = ptrtoint ptr %prxb288 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prxb288, align 4
  %arrayidx289 = getelementptr ptr, ptr %call7.i.i, i32 %indvars.iv
  %107 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %arrayidx289, align 4
  %indvars.iv.next = add i32 %indvars.iv, 1
  %inc290 = add nuw i8 %index.1495, 1
  %108 = ptrtoint ptr %prev.i466 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i466, align 4
  %call.i.i467 = tail call zeroext i1 @__list_add_valid(ptr noundef %79, ptr noundef %109, ptr noundef %RxReorder_Unused_List292) #13
  br i1 %call.i.i467, label %if.end.i.i469, label %do.end287.list_add_tail.exit470_crit_edge

do.end287.list_add_tail.exit470_crit_edge:        ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit470

if.end.i.i469:                                    ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %prev.i466 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %79, ptr %prev.i466, align 4
  %111 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %RxReorder_Unused_List292, ptr %79, align 4
  %112 = ptrtoint ptr %prev.i3.i464 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev.i3.i464, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %79, ptr %109, align 4
  br label %list_add_tail.exit470

list_add_tail.exit470:                            ; preds = %if.end.i.i469, %do.end287.list_add_tail.exit470_crit_edge
  %114 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i458.not = icmp eq ptr %115, %rx_pending_pkt_list
  br i1 %cmp.i458.not, label %list_add_tail.exit470.if.then298.thread_crit_edge, label %list_add_tail.exit470.do.body210_crit_edge

list_add_tail.exit470.do.body210_crit_edge:       ; preds = %list_add_tail.exit470
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body210

list_add_tail.exit470.if.then298.thread_crit_edge: ; preds = %list_add_tail.exit470
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then298.thread

while.end.loopexit:                               ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #15
  %116 = trunc i32 %indvars.iv to i8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end207.while.end_crit_edge
  %index.1.lcssa = phi i8 [ %index.0, %if.end207.while.end_crit_edge ], [ %116, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.1.lcssa)
  %cmp296.not = icmp eq i8 %index.1.lcssa, 0
  br i1 %cmp296.not, label %while.end.if.end316_crit_edge, label %while.end.if.then298.thread_crit_edge

while.end.if.then298.thread_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then298.thread

while.end.if.end316_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316

if.then298.thread:                                ; preds = %while.end.if.then298.thread_crit_edge, %list_add_tail.exit470.if.then298.thread_crit_edge
  %cmp.i458.not.lcssa510 = phi i1 [ %cmp.i458.not494, %while.end.if.then298.thread_crit_edge ], [ true, %list_add_tail.exit470.if.then298.thread_crit_edge ]
  %index.1.lcssa509 = phi i8 [ %index.1.lcssa, %while.end.if.then298.thread_crit_edge ], [ %inc290, %list_add_tail.exit470.if.then298.thread_crit_edge ]
  %rx_timeout_indicate_seq473 = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 2
  %117 = ptrtoint ptr %rx_timeout_indicate_seq473 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %rx_timeout_indicate_seq473, align 2
  br label %for.body.preheader.i

if.then298:                                       ; preds = %do.end251, %do.body245.if.then298_crit_edge
  %rx_timeout_indicate_seq = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 2
  %118 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %85)
  %cmp300 = icmp ugt i8 %85, -128
  br i1 %cmp300, label %do.body303, label %if.then298.for.body.preheader.i_crit_edge

if.then298.for.body.preheader.i_crit_edge:        ; preds = %if.then298
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader.i

do.body303:                                       ; preds = %if.then298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %119 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %tobool305.not = icmp sgt i32 %119, -1
  br i1 %tobool305.not, label %do.body303.cleanup.sink.split_crit_edge, label %do.end309

do.body303.cleanup.sink.split_crit_edge:          ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end309:                                        ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #15
  %call311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #17
  br label %cleanup.sink.split

for.body.preheader.i:                             ; preds = %if.then298.for.body.preheader.i_crit_edge, %if.then298.thread
  %index.1480 = phi i8 [ -128, %if.then298.for.body.preheader.i_crit_edge ], [ %index.1.lcssa509, %if.then298.thread ]
  %cmp.i458.not477 = phi i1 [ false, %if.then298.for.body.preheader.i_crit_edge ], [ %cmp.i458.not.lcssa510, %if.then298.thread ]
  %wide.trip.count.i = zext i8 %index.1480 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call7.i.i, i32 %indvars.iv.i
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i, align 4
  tail call fastcc void @indicate_packets(ptr noundef %ieee, ptr noundef %121) #13
  tail call void @kfree(ptr noundef %121) #13
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.end316_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end316_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end316

if.end316:                                        ; preds = %for.body.i.if.end316_crit_edge, %while.end.if.end316_crit_edge
  %cmp.i458.not478 = phi i1 [ %cmp.i458.not494, %while.end.if.end316_crit_edge ], [ %cmp.i458.not477, %for.body.i.if.end316_crit_edge ]
  br i1 %cmp.i458.not478, label %if.end316.cleanup.sink.split_crit_edge, label %land.lhs.true

if.end316.cleanup.sink.split_crit_edge:           ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end316
  %rx_timeout_indicate_seq319 = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 2
  %122 = ptrtoint ptr %rx_timeout_indicate_seq319 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %rx_timeout_indicate_seq319, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %123)
  %cmp321 = icmp eq i16 %123, -1
  br i1 %cmp321, label %do.body324, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body324:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %124 = load i32, ptr @ieee80211_debug_level, align 4
  %and325 = and i32 %124, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %do.body324.do.end335_crit_edge, label %do.end330

do.body324.do.end335_crit_edge:                   ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end335

do.end330:                                        ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #15
  %call332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.125) #17
  br label %do.end335

do.end335:                                        ; preds = %do.end330, %do.body324.do.end335_crit_edge
  %125 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %rx_indicate_seq, align 4
  %127 = ptrtoint ptr %rx_timeout_indicate_seq319 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %rx_timeout_indicate_seq319, align 2
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4
  %pprev.i.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4, i32 0, i32 1
  %128 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %129, null
  br i1 %tobool.not.i.i.not, label %do.end335.if.end343_crit_edge, label %if.then340

do.end335.if.end343_crit_edge:                    ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end343

if.then340:                                       ; preds = %do.end335
  call void @__sanitizer_cov_trace_pc() #15
  %call342 = tail call i32 @del_timer_sync(ptr noundef %rx_pkt_pending_timer) #13
  br label %if.end343

if.end343:                                        ; preds = %if.then340, %do.end335.if.end343_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %RxReorderPendingTime = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %1, i32 0, i32 46
  %131 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %RxReorderPendingTime, align 1
  %conv344 = zext i8 %132 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv344) #13
  %add346 = add i32 %call2.i, %130
  %expires = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4, i32 1
  %133 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add346, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %rx_pkt_pending_timer) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end343, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end316.cleanup.sink.split_crit_edge, %do.end309, %do.body303.cleanup.sink.split_crit_edge, %for.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_parse_info_param(ptr noundef %ieee, ptr noundef %info_element, i16 noundef zeroext %length, ptr noundef %network, ptr nocapture noundef readonly %stats) local_unnamed_addr #0 align 64 {
entry:
  %qos_info_element.i = alloca %struct.ieee80211_qos_information_element, align 1
  %param_element.i = alloca %struct.ieee80211_qos_parameter_info, align 1
  %ht_realtek_agg_buf = alloca [255 x i8], align 1
  %rates_str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %ht_realtek_agg_buf)
  %0 = call ptr @memset(ptr %ht_realtek_agg_buf, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rates_str) #13
  %1 = call ptr @memset(ptr %rates_str, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %length)
  %cmp1597 = icmp ugt i16 %length, 1
  br i1 %cmp1597, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dot11d_info.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 94
  %CountryIeBuf.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 48
  %CountryIeLen.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 47
  %add.ptr1.i.i = getelementptr i8, ptr %network, i32 4
  %bWithAironetIE1181 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 9
  %bCkipSupported1182 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 10
  %bdHTSpecVer1124 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 5
  %bdHTInfoLen1135 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 4
  %bdHTInfoBuf1137 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 3
  %bssht1066 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49
  %bdHTCapLen1078 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 2
  %bdHTCapBuf1080 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 1
  %rsn_ie_len = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 37
  %rsn_ie = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 36
  %2 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %qos_info_element.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %qos_info_element.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %qos_info_element.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %qos_info_element.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %qos_info_element.i, i32 0, i32 6
  %7 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %param_element.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %param_element.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %param_element.i, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %param_element.i, i32 0, i32 5
  %11 = getelementptr inbounds %struct.ieee80211_qos_information_element, ptr %param_element.i, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1, i32 1
  %17 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 1, i32 2
  %18 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2
  %19 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2, i32 1
  %20 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 2, i32 2
  %21 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3
  %22 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3, i32 1
  %23 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, ptr %param_element.i, i32 0, i32 2, i32 3, i32 2
  %qos_data6.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 8
  %flags8.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 26
  %param_count16.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 8, i32 3
  %supported.i = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 8, i32 2
  %Turbo_Enable = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 45
  %aggregation = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 139
  %bdRT2RTAggregation = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 6
  %bdRT2RTLongSlotTime = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 7
  %broadcom_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 50
  %ralink_cap_exist800 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 51
  %atheros_cap_exist862 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 52
  %cisco_cap_exist888 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 53
  %bCcxRmEnable963 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 11
  %CcxRmState = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 13
  %arrayidx936 = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 13, i32 1
  %MBssidMask = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 4
  %bMBssidValid = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 2
  %MBssid = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 3
  %add.ptr1.i = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 3, i32 4
  %arrayidx955 = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 3, i32 5
  %bWithCcxVerNum1003 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 14
  %BssCcxVerNumber1004 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 15
  %wpa_ie_len = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 35
  %wpa_ie = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 33
  %atim_window = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 31
  %erp_value = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 32
  %tim = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 38
  %tim_period = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 38, i32 1
  %dtim_period = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 39
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 83
  %last_dtim_sta_time = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 41
  %arrayidx271 = getelementptr [2 x i32], ptr %stats, i32 0, i32 1
  %arrayidx273 = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 41, i32 1
  %dtim_data = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 40
  %assoc_id = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 102
  %channel = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 1
  %rates_ex_len = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 22
  %sub.ptr.rhs.cast160 = ptrtoint ptr %rates_str to i32
  %sub.ptr.sub161.neg = add i32 %sub.ptr.rhs.cast160, 64
  %rates_len = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 20
  %ssid_len = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 6
  %ssid = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 5
  %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx691.sroa_idx = getelementptr inbounds i8, ptr %ht_realtek_agg_buf, i32 4
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx696.sroa_idx = getelementptr inbounds i8, ptr %ht_realtek_agg_buf, i32 5
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %info_element.addr.01617 = phi ptr [ %info_element, %while.body.lr.ph ], [ %arrayidx1229, %sw.epilog.while.body_crit_edge ]
  %length.addr.01616 = phi i16 [ %length, %while.body.lr.ph ], [ %conv1225, %sw.epilog.while.body_crit_edge ]
  %tmp_htcap_len.01610 = phi i16 [ 0, %while.body.lr.ph ], [ %tmp_htcap_len.3, %sw.epilog.while.body_crit_edge ]
  %tmp_htinfo_len.01604 = phi i16 [ 0, %while.body.lr.ph ], [ %tmp_htinfo_len.2, %sw.epilog.while.body_crit_edge ]
  %ht_realtek_agg_len.01598 = phi i16 [ 0, %while.body.lr.ph ], [ %ht_realtek_agg_len.3, %sw.epilog.while.body_crit_edge ]
  %conv1646 = zext i16 %length.addr.01616 to i32
  %len = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 1
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %len, align 1
  %conv2 = zext i8 %25 to i32
  %add = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1646)
  %cmp4 = icmp ugt i32 %add, %conv1646
  br i1 %cmp4, label %do.body, label %if.end15

do.body:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %26 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %info_element.addr.01617 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %info_element.addr.01617, align 1
  %conv12 = zext i8 %28 to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %add, i32 noundef %conv1646, i32 noundef %conv12) #17
  br label %while.end

if.end15:                                         ; preds = %while.body
  %29 = ptrtoint ptr %info_element.addr.01617 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %info_element.addr.01617, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.225)
  switch i8 %30, label %do.body1203 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb66
    i8 50, label %sw.bb131
    i8 3, label %do.body207
    i8 2, label %do.body225
    i8 4, label %do.body238
    i8 5, label %sw.bb250
    i8 42, label %sw.bb333
    i8 6, label %sw.bb352
    i8 16, label %do.body371
    i8 -35, label %do.body384
    i8 48, label %do.body1008
    i8 45, label %do.body1035
    i8 61, label %do.body1094
    i8 -123, label %do.body1146
    i8 -34, label %sw.bb1184
    i8 7, label %do.body1187
  ]

sw.bb:                                            ; preds = %if.end15
  %data = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.i = icmp eq i8 %25, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.while.cond.i.preheader_crit_edge

sw.bb.while.cond.i.preheader_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

land.lhs.true.i:                                  ; preds = %sw.bb
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %cmp1.i = icmp eq i8 %33, 32
  br i1 %cmp1.i, label %land.lhs.true.i.if.then22_crit_edge, label %land.lhs.true.i.while.cond.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

land.lhs.true.i.if.then22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

while.cond.i.preheader:                           ; preds = %land.lhs.true.i.while.cond.i.preheader_crit_edge, %sw.bb.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %essid_len.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %conv2, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i)
  %tobool.not.i = icmp eq i32 %essid_len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.then22_crit_edge, label %while.body.i

while.cond.i.if.then22_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %essid_len.addr.0.i, -1
  %arrayidx3.i = getelementptr i8, ptr %data, i32 %dec.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i8 %35, 0
  br i1 %cmp5.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end23

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.then22:                                        ; preds = %while.cond.i.if.then22_crit_edge, %land.lhs.true.i.if.then22_crit_edge
  %36 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags8.i, align 8
  %or = or i32 %37, 1
  store i32 %or, ptr %flags8.i, align 8
  br label %sw.epilog

if.end23:                                         ; preds = %while.body.i
  %38 = call i8 @llvm.umin.i8(i8 %25, i8 32)
  %39 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ssid_len, align 8
  %conv37 = zext i8 %38 to i32
  %40 = call ptr @memcpy(ptr %ssid, ptr %data, i32 %conv37)
  %41 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %41)
  %cmp40 = icmp ult i8 %41, 32
  br i1 %cmp40, label %if.then42, label %if.end23.do.body50_crit_edge

if.end23.do.body50_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

if.then42:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %conv39 = zext i8 %41 to i32
  %add.ptr = getelementptr i8, ptr %ssid, i32 %conv39
  %sub = sub nuw nsw i32 32, %conv39
  %42 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %do.body50

do.body50:                                        ; preds = %if.then42, %if.end23.do.body50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %43 = load i32, ptr @ieee80211_debug_level, align 4
  %and51 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.sw.epilog_crit_edge, label %do.end56

do.body50.sw.epilog_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ssid_len, align 8
  %conv61 = zext i8 %45 to i32
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %ssid, i32 noundef %conv61) #17
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end15
  %46 = call i8 @llvm.umin.i8(i8 %25, i8 12)
  %47 = ptrtoint ptr %rates_len to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %rates_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp841592.not = icmp eq i8 %46, 0
  br i1 %cmp841592.not, label %sw.bb66.do.body116_crit_edge, label %sw.bb66.for.body_crit_edge

sw.bb66.for.body_crit_edge:                       ; preds = %sw.bb66
  br label %for.body

sw.bb66.do.body116_crit_edge:                     ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body116

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb66.for.body_crit_edge
  %indvars.iv1652 = phi i32 [ %indvars.iv.next1653, %for.inc.for.body_crit_edge ], [ 0, %sw.bb66.for.body_crit_edge ]
  %p.01593 = phi ptr [ %add.ptr96, %for.inc.for.body_crit_edge ], [ %rates_str, %sw.bb66.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2, i32 %indvars.iv1652
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  %arrayidx88 = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 19, i32 %indvars.iv1652
  %50 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx88, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %p.01593 to i32
  %sub90 = sub i32 %sub.ptr.sub161.neg, %sub.ptr.lhs.cast
  %conv94 = zext i8 %49 to i32
  %call95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.01593, i32 noundef %sub90, ptr noundef nonnull @.str.40, i32 noundef %conv94) #13
  %add.ptr96 = getelementptr i8, ptr %p.01593, i32 %call95
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx, align 1
  %53 = and i8 %52, 127
  %and.i = zext i8 %53 to i32
  %54 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 12, label %for.body.if.then102_crit_edge
    i32 18, label %for.body.if.then102_crit_edge1685
    i32 24, label %for.body.if.then102_crit_edge1686
    i32 36, label %for.body.if.then102_crit_edge1687
    i32 48, label %for.body.if.then102_crit_edge1688
    i32 72, label %for.body.if.then102_crit_edge1689
    i32 96, label %for.body.if.then102_crit_edge1690
    i32 108, label %for.body.if.then102_crit_edge1691
  ]

for.body.if.then102_crit_edge1691:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1690:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1689:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1688:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1687:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1686:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge1685:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.if.then102_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then102

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then102:                                       ; preds = %for.body.if.then102_crit_edge, %for.body.if.then102_crit_edge1685, %for.body.if.then102_crit_edge1686, %for.body.if.then102_crit_edge1687, %for.body.if.then102_crit_edge1688, %for.body.if.then102_crit_edge1689, %for.body.if.then102_crit_edge1690, %for.body.if.then102_crit_edge1691
  %55 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags8.i, align 8
  %or104 = or i32 %56, 2
  store i32 %or104, ptr %flags8.i, align 8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %tobool110.not = icmp sgt i8 %58, -1
  br i1 %tobool110.not, label %if.then102.for.inc_crit_edge, label %if.then111

if.then102.for.inc_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then111:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  %and113 = and i32 %or104, -5
  %59 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and113, ptr %flags8.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %if.then102.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next1653 = add nuw nsw i32 %indvars.iv1652, 1
  %60 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rates_len, align 2
  %62 = zext i8 %61 to i32
  %cmp84 = icmp ult i32 %indvars.iv.next1653, %62
  br i1 %cmp84, label %for.inc.for.body_crit_edge, label %for.inc.do.body116_crit_edge

for.inc.do.body116_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body116

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body116:                                       ; preds = %for.inc.do.body116_crit_edge, %sw.bb66.do.body116_crit_edge
  %.lcssa1591 = phi i8 [ 0, %sw.bb66.do.body116_crit_edge ], [ %61, %for.inc.do.body116_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %63 = load i32, ptr @ieee80211_debug_level, align 4
  %and117 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body116.sw.epilog_crit_edge, label %do.end122

do.body116.sw.epilog_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #15
  %conv83.le = zext i8 %.lcssa1591 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %rates_str, i32 noundef %conv83.le) #17
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end15
  %64 = call i8 @llvm.umin.i8(i8 %25, i8 16)
  %65 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %rates_ex_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp1501588.not = icmp eq i8 %64, 0
  br i1 %cmp1501588.not, label %sw.bb131.do.body191_crit_edge, label %sw.bb131.for.body152_crit_edge

sw.bb131.for.body152_crit_edge:                   ; preds = %sw.bb131
  br label %for.body152

sw.bb131.do.body191_crit_edge:                    ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body191

for.body152:                                      ; preds = %for.inc188.for.body152_crit_edge, %sw.bb131.for.body152_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc188.for.body152_crit_edge ], [ 0, %sw.bb131.for.body152_crit_edge ]
  %p.11589 = phi ptr [ %add.ptr168, %for.inc188.for.body152_crit_edge ], [ %rates_str, %sw.bb131.for.body152_crit_edge ]
  %arrayidx155 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2, i32 %indvars.iv
  %66 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx155, align 1
  %arrayidx157 = getelementptr %struct.ieee80211_network, ptr %network, i32 0, i32 21, i32 %indvars.iv
  %68 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx157, align 1
  %sub.ptr.lhs.cast159 = ptrtoint ptr %p.11589 to i32
  %sub162 = sub i32 %sub.ptr.sub161.neg, %sub.ptr.lhs.cast159
  %conv166 = zext i8 %67 to i32
  %call167 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.11589, i32 noundef %sub162, ptr noundef nonnull @.str.40, i32 noundef %conv166) #13
  %add.ptr168 = getelementptr i8, ptr %p.11589, i32 %call167
  %69 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx155, align 1
  %71 = and i8 %70, 127
  %and.i1559 = zext i8 %71 to i32
  %72 = zext i32 %and.i1559 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %and.i1559, label %for.body152.for.inc188_crit_edge [
    i32 12, label %for.body152.if.then174_crit_edge
    i32 18, label %for.body152.if.then174_crit_edge1692
    i32 24, label %for.body152.if.then174_crit_edge1693
    i32 36, label %for.body152.if.then174_crit_edge1694
    i32 48, label %for.body152.if.then174_crit_edge1695
    i32 72, label %for.body152.if.then174_crit_edge1696
    i32 96, label %for.body152.if.then174_crit_edge1697
    i32 108, label %for.body152.if.then174_crit_edge1698
  ]

for.body152.if.then174_crit_edge1698:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1697:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1696:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1695:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1694:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1693:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge1692:             ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.if.then174_crit_edge:                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then174

for.body152.for.inc188_crit_edge:                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc188

if.then174:                                       ; preds = %for.body152.if.then174_crit_edge, %for.body152.if.then174_crit_edge1692, %for.body152.if.then174_crit_edge1693, %for.body152.if.then174_crit_edge1694, %for.body152.if.then174_crit_edge1695, %for.body152.if.then174_crit_edge1696, %for.body152.if.then174_crit_edge1697, %for.body152.if.then174_crit_edge1698
  %73 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags8.i, align 8
  %or176 = or i32 %74, 2
  store i32 %or176, ptr %flags8.i, align 8
  %75 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %tobool182.not = icmp sgt i8 %76, -1
  br i1 %tobool182.not, label %if.then174.for.inc188_crit_edge, label %if.then183

if.then174.for.inc188_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc188

if.then183:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #15
  %and185 = and i32 %or176, -5
  %77 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and185, ptr %flags8.i, align 8
  br label %for.inc188

for.inc188:                                       ; preds = %if.then183, %if.then174.for.inc188_crit_edge, %for.body152.for.inc188_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %78 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rates_ex_len, align 1
  %80 = zext i8 %79 to i32
  %cmp150 = icmp ult i32 %indvars.iv.next, %80
  br i1 %cmp150, label %for.inc188.for.body152_crit_edge, label %for.inc188.do.body191_crit_edge

for.inc188.do.body191_crit_edge:                  ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body191

for.inc188.for.body152_crit_edge:                 ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body152

do.body191:                                       ; preds = %for.inc188.do.body191_crit_edge, %sw.bb131.do.body191_crit_edge
  %.lcssa = phi i8 [ 0, %sw.bb131.do.body191_crit_edge ], [ %79, %for.inc188.do.body191_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %81 = load i32, ptr @ieee80211_debug_level, align 4
  %and192 = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body191.sw.epilog_crit_edge, label %do.end197

do.body191.sw.epilog_crit_edge:                   ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end197:                                        ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #15
  %conv149.le = zext i8 %.lcssa to i32
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull %rates_str, i32 noundef %conv149.le) #17
  br label %sw.epilog

do.body207:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %82 = load i32, ptr @ieee80211_debug_level, align 4
  %and208 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %do.body207.do.end221_crit_edge, label %do.end213

do.body207.do.end221_crit_edge:                   ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end221

do.end213:                                        ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #15
  %data215 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %83 = ptrtoint ptr %data215 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %data215, align 1
  %conv217 = zext i8 %84 to i32
  %call218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv217) #17
  br label %do.end221

do.end221:                                        ; preds = %do.end213, %do.body207.do.end221_crit_edge
  %data222 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %85 = ptrtoint ptr %data222 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data222, align 1
  %87 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %channel, align 2
  br label %sw.epilog

do.body225:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %88 = load i32, ptr @ieee80211_debug_level, align 4
  %and226 = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %do.body225.sw.epilog_crit_edge, label %do.end231

do.body225.sw.epilog_crit_edge:                   ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end231:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #15
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %sw.epilog

do.body238:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %89 = load i32, ptr @ieee80211_debug_level, align 4
  %and239 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body238.sw.epilog_crit_edge, label %do.end244

do.body238.sw.epilog_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end244:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #15
  %call246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #17
  br label %sw.epilog

sw.bb250:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp253 = icmp ult i8 %25, 4
  br i1 %cmp253, label %sw.bb250.sw.epilog_crit_edge, label %if.end256

sw.bb250.sw.epilog_crit_edge:                     ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end256:                                        ; preds = %sw.bb250
  %data257 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %90 = ptrtoint ptr %data257 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %data257, align 1
  %92 = ptrtoint ptr %tim to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %tim, align 8
  %arrayidx260 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx260, align 1
  %95 = ptrtoint ptr %tim_period to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %tim_period, align 1
  %96 = load i8, ptr %arrayidx260, align 1
  %97 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %dtim_period, align 2
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %99)
  %cmp264.not = icmp eq i32 %99, 5
  br i1 %cmp264.not, label %if.end267, label %if.end256.sw.epilog_crit_edge

if.end256.sw.epilog_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end267:                                        ; preds = %if.end256
  %100 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %stats, align 8
  %102 = ptrtoint ptr %last_dtim_sta_time to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %last_dtim_sta_time, align 4
  %103 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx271, align 4
  %105 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx273, align 4
  %106 = ptrtoint ptr %dtim_data to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %dtim_data, align 1
  %107 = ptrtoint ptr %data257 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %data257, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp277.not = icmp eq i8 %108, 0
  br i1 %cmp277.not, label %if.end280, label %if.end267.sw.epilog_crit_edge

if.end267.sw.epilog_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end280:                                        ; preds = %if.end267
  %arrayidx282 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %109 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx282, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool285.not = icmp eq i8 %111, 0
  br i1 %tobool285.not, label %if.end280.if.end291_crit_edge, label %if.then286

if.end280.if.end291_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end291

if.then286:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %dtim_data to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 5, ptr %dtim_data, align 1
  br label %if.end291

if.end291:                                        ; preds = %if.then286, %if.end280.if.end291_crit_edge
  %113 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx282, align 1
  %115 = and i8 %114, -2
  %116 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %assoc_id, align 4
  %conv296 = zext i16 %117 to i32
  %118 = zext i8 %115 to i32
  %mul298 = shl nuw nsw i32 %118, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul298, i32 %conv296)
  %cmp299 = icmp ugt i32 %mul298, %conv296
  br i1 %cmp299, label %if.end291.sw.epilog_crit_edge, label %lor.lhs.false

if.end291.sw.epilog_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end291
  %119 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %len, align 1
  %conv305 = zext i8 %120 to i32
  %add306 = add nuw nsw i32 %conv305, %118
  %sub307 = shl nuw nsw i32 %add306, 3
  %mul308 = add nsw i32 %sub307, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %mul308, i32 %conv296)
  %cmp309 = icmp slt i32 %mul308, %conv296
  br i1 %cmp309, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end312

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end312:                                        ; preds = %lor.lhs.false
  %div1553 = lshr i32 %conv296, 3
  %sub316 = sub nsw i32 3, %118
  %add320 = add nsw i32 %sub316, %div1553
  %arrayidx321 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2, i32 %add320
  %121 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx321, align 1
  %conv322 = zext i8 %122 to i32
  %rem = and i32 %conv296, 7
  %shl = shl nuw nsw i32 1, %rem
  %and325 = and i32 %shl, %conv322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.end312.sw.epilog_crit_edge, label %if.then327

if.end312.sw.epilog_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then327:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %dtim_data to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dtim_data, align 1
  %125 = or i8 %124, 2
  store i8 %125, ptr %dtim_data, align 1
  br label %sw.epilog

sw.bb333:                                         ; preds = %if.end15
  %data334 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %126 = ptrtoint ptr %data334 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %data334, align 1
  %128 = ptrtoint ptr %erp_value to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %erp_value, align 2
  %129 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags8.i, align 8
  %or337 = or i32 %130, 1024
  store i32 %or337, ptr %flags8.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %131 = load i32, ptr @ieee80211_debug_level, align 4
  %and339 = and i32 %131, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %sw.bb333.sw.epilog_crit_edge, label %do.end344

sw.bb333.sw.epilog_crit_edge:                     ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end344:                                        ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #15
  %conv347 = zext i8 %127 to i32
  %call348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %conv347) #17
  br label %sw.epilog

sw.bb352:                                         ; preds = %if.end15
  %data353 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %132 = ptrtoint ptr %data353 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %data353, align 1
  %conv355 = zext i8 %133 to i16
  %134 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv355, ptr %atim_window, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %135 = load i32, ptr @ieee80211_debug_level, align 4
  %and357 = and i32 %135, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %tobool358.not = icmp eq i32 %and357, 0
  br i1 %tobool358.not, label %sw.bb352.sw.epilog_crit_edge, label %do.end362

sw.bb352.sw.epilog_crit_edge:                     ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end362:                                        ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #15
  %conv365 = zext i8 %133 to i32
  %call366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv365) #17
  br label %sw.epilog

do.body371:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %136 = load i32, ptr @ieee80211_debug_level, align 4
  %and372 = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and372)
  %tobool373.not = icmp eq i32 %and372, 0
  br i1 %tobool373.not, label %do.body371.sw.epilog_crit_edge, label %do.end377

do.body371.sw.epilog_crit_edge:                   ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end377:                                        ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #15
  %call379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #17
  br label %sw.epilog

do.body384:                                       ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %137 = load i32, ptr @ieee80211_debug_level, align 4
  %and385 = and i32 %137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and385)
  %tobool386.not = icmp eq i32 %and385, 0
  br i1 %tobool386.not, label %do.body384.do.end397_crit_edge, label %do.end390

do.body384.do.end397_crit_edge:                   ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end397

do.end390:                                        ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #15
  %call394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv2) #17
  br label %do.end397

do.end397:                                        ; preds = %do.end390, %do.body384.do.end397_crit_edge
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %qos_info_element.i) #13
  %tobool1.not.i.i = icmp eq ptr %info_element.addr.01617, null
  br i1 %tobool1.not.i.i, label %if.else.i, label %lor.lhs.false2.i.i

lor.lhs.false2.i.i:                               ; preds = %do.end397
  %138 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %139)
  %cmp.not.i.i = icmp eq i8 %139, 7
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.lor.lhs.false2.i42.i_crit_edge

lor.lhs.false2.i.i.lor.lhs.false2.i42.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.i

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %140 = call ptr @memcpy(ptr %qos_info_element.i, ptr %info_element.addr.01617, i32 9)
  %141 = ptrtoint ptr %qos_info_element.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %qos_info_element.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %142)
  %cmp.not.i.i.i = icmp eq i8 %142, -35
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge

if.end.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.ithread-pre-split

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp3.not.i.i.i = icmp eq i8 %144, 0
  br i1 %cmp3.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge

if.end.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.ithread-pre-split

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(3) %2, ptr noundef nonnull dereferenceable(3) @qos_oui, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.i, label %if.end6.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge

if.end6.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.ithread-pre-split

if.end8.i.i.i:                                    ; preds = %if.end6.i.i.i
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %146)
  %cmp10.not.i.i.i = icmp eq i8 %146, 2
  br i1 %cmp10.not.i.i.i, label %ieee80211_read_qos_info_element.exit.i, label %if.end8.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge

if.end8.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.ithread-pre-split

ieee80211_read_qos_info_element.exit.i:           ; preds = %if.end8.i.i.i
  %147 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %148)
  %cmp15.not.i.i.not.i = icmp eq i8 %148, 1
  br i1 %cmp15.not.i.i.not.i, label %if.end17.thread.i, label %ieee80211_read_qos_info_element.exit.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge

ieee80211_read_qos_info_element.exit.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge: ; preds = %ieee80211_read_qos_info_element.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false2.i42.ithread-pre-split

if.end17.thread.i:                                ; preds = %ieee80211_read_qos_info_element.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %149 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %6, align 1
  %151 = and i8 %150, 15
  %152 = ptrtoint ptr %param_count16.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %param_count16.i, align 4
  %153 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flags8.i, align 8
  %or.i = or i32 %154, 16
  store i32 %or.i, ptr %flags8.i, align 8
  br label %do.body.i

if.else.i:                                        ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %param_element.i) #13
  br label %if.end401thread-pre-split

lor.lhs.false2.i42.ithread-pre-split:             ; preds = %ieee80211_read_qos_info_element.exit.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge, %if.end8.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge, %if.end6.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge, %if.end.i.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge, %if.end.i.i.lor.lhs.false2.i42.ithread-pre-split_crit_edge
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %155)
  %.pr1657 = load i8, ptr %len, align 1
  br label %lor.lhs.false2.i42.i

lor.lhs.false2.i42.i:                             ; preds = %lor.lhs.false2.i42.ithread-pre-split, %lor.lhs.false2.i.i.lor.lhs.false2.i42.i_crit_edge
  %156 = phi i8 [ %.pr1657, %lor.lhs.false2.i42.ithread-pre-split ], [ %139, %lor.lhs.false2.i.i.lor.lhs.false2.i42.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %param_element.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %156)
  %cmp.not.i41.i = icmp eq i8 %156, 24
  br i1 %cmp.not.i41.i, label %if.end.i44.i, label %lor.lhs.false2.i42.i.if.end401_crit_edge

lor.lhs.false2.i42.i.if.end401_crit_edge:         ; preds = %lor.lhs.false2.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401

if.end.i44.i:                                     ; preds = %lor.lhs.false2.i42.i
  %157 = call ptr @memcpy(ptr %param_element.i, ptr %info_element.addr.01617, i32 26)
  %158 = ptrtoint ptr %param_element.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %param_element.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %159)
  %cmp.not.i.i43.i = icmp eq i8 %159, -35
  br i1 %cmp.not.i.i43.i, label %if.end.i.i47.i, label %if.end.i44.i.if.end401thread-pre-split_crit_edge

if.end.i44.i.if.end401thread-pre-split_crit_edge: ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401thread-pre-split

if.end.i.i47.i:                                   ; preds = %if.end.i44.i
  %160 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %161)
  %cmp3.not.i.i46.i = icmp eq i8 %161, 1
  br i1 %cmp3.not.i.i46.i, label %if.end6.i.i51.i, label %if.end.i.i47.i.if.end401thread-pre-split_crit_edge

if.end.i.i47.i.if.end401thread-pre-split_crit_edge: ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401thread-pre-split

if.end6.i.i51.i:                                  ; preds = %if.end.i.i47.i
  %bcmp.i.i49.i = call i32 @bcmp(ptr noundef dereferenceable(3) %7, ptr noundef nonnull dereferenceable(3) @qos_oui, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i49.i)
  %tobool.not.i.i50.i = icmp eq i32 %bcmp.i.i49.i, 0
  br i1 %tobool.not.i.i50.i, label %if.end8.i.i54.i, label %if.end6.i.i51.i.if.end401thread-pre-split_crit_edge

if.end6.i.i51.i.if.end401thread-pre-split_crit_edge: ; preds = %if.end6.i.i51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401thread-pre-split

if.end8.i.i54.i:                                  ; preds = %if.end6.i.i51.i
  %162 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %163)
  %cmp10.not.i.i53.i = icmp eq i8 %163, 2
  br i1 %cmp10.not.i.i53.i, label %ieee80211_read_qos_param_element.exit.i, label %if.end8.i.i54.i.if.end401thread-pre-split_crit_edge

if.end8.i.i54.i.if.end401thread-pre-split_crit_edge: ; preds = %if.end8.i.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401thread-pre-split

ieee80211_read_qos_param_element.exit.i:          ; preds = %if.end8.i.i54.i
  %164 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %165)
  %cmp15.not.i.i56.not.i = icmp eq i8 %165, 1
  br i1 %cmp15.not.i.i56.not.i, label %if.end17.i, label %ieee80211_read_qos_param_element.exit.i.if.end401thread-pre-split_crit_edge

ieee80211_read_qos_param_element.exit.i.if.end401thread-pre-split_crit_edge: ; preds = %ieee80211_read_qos_param_element.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end401thread-pre-split

if.end17.i:                                       ; preds = %ieee80211_read_qos_param_element.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %166 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %12, align 1
  %and.i.i = lshr i8 %167, 5
  %168 = and i8 %and.i.i, 3
  %conv2.i.i = zext i8 %168 to i32
  %169 = and i8 %167, 15
  %arrayidx9.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 2, i32 %conv2.i.i
  %170 = call i8 @llvm.umax.i8(i8 %169, i8 2) #13
  %171 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx9.i.i, align 1
  %172 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %13, align 1
  %174 = and i8 %173, 15
  %conv26.i.i = zext i8 %174 to i16
  %175 = shl nuw nsw i16 %conv26.i.i, 8
  %arrayidx28.i.i = getelementptr [4 x i16], ptr %qos_data6.i, i32 0, i32 %conv2.i.i
  %176 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %175, ptr %arrayidx28.i.i, align 1
  %177 = lshr i8 %173, 4
  %conv33.i.i = zext i8 %177 to i16
  %178 = shl nuw nsw i16 %conv33.i.i, 8
  %arrayidx35.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 1, i32 %conv2.i.i
  %179 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 %178, ptr %arrayidx35.i.i, align 1
  %180 = lshr i8 %167, 4
  %.lobit.i.i = and i8 %180, 1
  %arrayidx42.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 3, i32 %conv2.i.i
  %181 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %.lobit.i.i, ptr %arrayidx42.i.i, align 1
  %182 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %14, align 1
  %arrayidx45.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 4, i32 %conv2.i.i
  %184 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_storeN_noabort(i32 %184, i32 2)
  store i16 %183, ptr %arrayidx45.i.i, align 1
  %185 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %15, align 1
  %and.1.i.i = lshr i8 %186, 5
  %187 = and i8 %and.1.i.i, 3
  %conv2.1.i.i = zext i8 %187 to i32
  %188 = and i8 %186, 15
  %arrayidx9.1.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 2, i32 %conv2.1.i.i
  %189 = call i8 @llvm.umax.i8(i8 %188, i8 2) #13
  %190 = ptrtoint ptr %arrayidx9.1.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx9.1.i.i, align 1
  %191 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %16, align 1
  %193 = and i8 %192, 15
  %conv26.1.i.i = zext i8 %193 to i16
  %194 = shl nuw nsw i16 %conv26.1.i.i, 8
  %arrayidx28.1.i.i = getelementptr [4 x i16], ptr %qos_data6.i, i32 0, i32 %conv2.1.i.i
  %195 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 2)
  store i16 %194, ptr %arrayidx28.1.i.i, align 1
  %196 = lshr i8 %192, 4
  %conv33.1.i.i = zext i8 %196 to i16
  %197 = shl nuw nsw i16 %conv33.1.i.i, 8
  %arrayidx35.1.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 1, i32 %conv2.1.i.i
  %198 = ptrtoint ptr %arrayidx35.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 %197, ptr %arrayidx35.1.i.i, align 1
  %199 = lshr i8 %186, 4
  %.lobit.1.i.i = and i8 %199, 1
  %arrayidx42.1.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 3, i32 %conv2.1.i.i
  %200 = ptrtoint ptr %arrayidx42.1.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.lobit.1.i.i, ptr %arrayidx42.1.i.i, align 1
  %201 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %202 = load i16, ptr %17, align 1
  %arrayidx45.1.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 4, i32 %conv2.1.i.i
  %203 = ptrtoint ptr %arrayidx45.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %203, i32 2)
  store i16 %202, ptr %arrayidx45.1.i.i, align 1
  %204 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %18, align 1
  %and.2.i.i = lshr i8 %205, 5
  %206 = and i8 %and.2.i.i, 3
  %conv2.2.i.i = zext i8 %206 to i32
  %207 = and i8 %205, 15
  %arrayidx9.2.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 2, i32 %conv2.2.i.i
  %208 = call i8 @llvm.umax.i8(i8 %207, i8 2) #13
  %209 = ptrtoint ptr %arrayidx9.2.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %arrayidx9.2.i.i, align 1
  %210 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %19, align 1
  %212 = and i8 %211, 15
  %conv26.2.i.i = zext i8 %212 to i16
  %213 = shl nuw nsw i16 %conv26.2.i.i, 8
  %arrayidx28.2.i.i = getelementptr [4 x i16], ptr %qos_data6.i, i32 0, i32 %conv2.2.i.i
  %214 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 2)
  store i16 %213, ptr %arrayidx28.2.i.i, align 1
  %215 = lshr i8 %211, 4
  %conv33.2.i.i = zext i8 %215 to i16
  %216 = shl nuw nsw i16 %conv33.2.i.i, 8
  %arrayidx35.2.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 1, i32 %conv2.2.i.i
  %217 = ptrtoint ptr %arrayidx35.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 2)
  store i16 %216, ptr %arrayidx35.2.i.i, align 1
  %218 = lshr i8 %205, 4
  %.lobit.2.i.i = and i8 %218, 1
  %arrayidx42.2.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 3, i32 %conv2.2.i.i
  %219 = ptrtoint ptr %arrayidx42.2.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %.lobit.2.i.i, ptr %arrayidx42.2.i.i, align 1
  %220 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %221 = load i16, ptr %20, align 1
  %arrayidx45.2.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 4, i32 %conv2.2.i.i
  %222 = ptrtoint ptr %arrayidx45.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 2)
  store i16 %221, ptr %arrayidx45.2.i.i, align 1
  %223 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %21, align 1
  %and.3.i.i = lshr i8 %224, 5
  %225 = and i8 %and.3.i.i, 3
  %conv2.3.i.i = zext i8 %225 to i32
  %226 = and i8 %224, 15
  %arrayidx9.3.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 2, i32 %conv2.3.i.i
  %227 = call i8 @llvm.umax.i8(i8 %226, i8 2) #13
  %228 = ptrtoint ptr %arrayidx9.3.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx9.3.i.i, align 1
  %229 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %22, align 1
  %231 = and i8 %230, 15
  %conv26.3.i.i = zext i8 %231 to i16
  %232 = shl nuw nsw i16 %conv26.3.i.i, 8
  %arrayidx28.3.i.i = getelementptr [4 x i16], ptr %qos_data6.i, i32 0, i32 %conv2.3.i.i
  %233 = ptrtoint ptr %arrayidx28.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 2)
  store i16 %232, ptr %arrayidx28.3.i.i, align 1
  %234 = lshr i8 %230, 4
  %conv33.3.i.i = zext i8 %234 to i16
  %235 = shl nuw nsw i16 %conv33.3.i.i, 8
  %arrayidx35.3.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 1, i32 %conv2.3.i.i
  %236 = ptrtoint ptr %arrayidx35.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 %235, ptr %arrayidx35.3.i.i, align 1
  %237 = lshr i8 %224, 4
  %.lobit.3.i.i = and i8 %237, 1
  %arrayidx42.3.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 3, i32 %conv2.3.i.i
  %238 = ptrtoint ptr %arrayidx42.3.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %.lobit.3.i.i, ptr %arrayidx42.3.i.i, align 1
  %239 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %23, align 1
  %arrayidx45.3.i.i = getelementptr %struct.ieee80211_qos_parameters, ptr %qos_data6.i, i32 0, i32 4, i32 %conv2.3.i.i
  %241 = ptrtoint ptr %arrayidx45.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 %240, ptr %arrayidx45.3.i.i, align 1
  %242 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %flags8.i, align 8
  %or9.i = or i32 %243, 8
  store i32 %or9.i, ptr %flags8.i, align 8
  %244 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %11, align 1
  %246 = and i8 %245, 15
  %247 = ptrtoint ptr %param_count16.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %param_count16.i, align 4
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element.i) #13
  br label %do.body.i

do.body.i:                                        ; preds = %if.end17.i, %if.end17.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %248 = load i32, ptr @ieee80211_debug_level, align 4
  %and21.i = and i32 %248, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i1563 = icmp eq i32 %and21.i, 0
  br i1 %tobool.not.i1563, label %do.body.i.ieee80211_parse_qos_info_param_IE.exit.thread_crit_edge, label %do.end.i

do.body.i.ieee80211_parse_qos_info_param_IE.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_parse_qos_info_param_IE.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #17
  br label %ieee80211_parse_qos_info_param_IE.exit.thread

ieee80211_parse_qos_info_param_IE.exit.thread:    ; preds = %do.end.i, %do.body.i.ieee80211_parse_qos_info_param_IE.exit.thread_crit_edge
  %249 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %supported.i, align 4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %qos_info_element.i) #13
  br label %sw.epilog

if.end401thread-pre-split:                        ; preds = %ieee80211_read_qos_param_element.exit.i.if.end401thread-pre-split_crit_edge, %if.end8.i.i54.i.if.end401thread-pre-split_crit_edge, %if.end6.i.i51.i.if.end401thread-pre-split_crit_edge, %if.end.i.i47.i.if.end401thread-pre-split_crit_edge, %if.end.i44.i.if.end401thread-pre-split_crit_edge, %if.else.i
  %250 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %250)
  %.pr = load i8, ptr %len, align 1
  br label %if.end401

if.end401:                                        ; preds = %if.end401thread-pre-split, %lor.lhs.false2.i42.i.if.end401_crit_edge
  %251 = phi i8 [ %.pr, %if.end401thread-pre-split ], [ %156, %lor.lhs.false2.i42.i.if.end401_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element.i) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %qos_info_element.i) #13
  %conv403 = zext i8 %251 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %251)
  %cmp404 = icmp ugt i8 %251, 3
  br i1 %cmp404, label %land.lhs.true, label %if.end401.if.end478_crit_edge

if.end401.if.end478_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true:                                    ; preds = %if.end401
  %data406 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %252 = ptrtoint ptr %data406 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %data406, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %cmp409 = icmp eq i8 %253, 0
  br i1 %cmp409, label %land.lhs.true411, label %land.lhs.true.if.end442_crit_edge

land.lhs.true.if.end442_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end442

land.lhs.true411:                                 ; preds = %land.lhs.true
  %arrayidx413 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %254 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx413, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %255)
  %cmp415 = icmp eq i8 %255, 80
  br i1 %cmp415, label %land.lhs.true417, label %land.lhs.true411.if.end442_crit_edge

land.lhs.true411.if.end442_crit_edge:             ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end442

land.lhs.true417:                                 ; preds = %land.lhs.true411
  %arrayidx419 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %256 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx419, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %257)
  %cmp421 = icmp eq i8 %257, -14
  br i1 %cmp421, label %land.lhs.true423, label %land.lhs.true417.if.end442_crit_edge

land.lhs.true417.if.end442_crit_edge:             ; preds = %land.lhs.true417
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end442

land.lhs.true423:                                 ; preds = %land.lhs.true417
  %arrayidx425 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %258 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %259)
  %cmp427 = icmp eq i8 %259, 1
  br i1 %cmp427, label %if.then429, label %land.lhs.true423.if.end442_crit_edge

land.lhs.true423.if.end442_crit_edge:             ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end442

if.then429:                                       ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %251)
  %cmp434 = icmp ult i8 %251, 62
  %add432 = add nuw nsw i32 %conv403, 2
  %cond439 = select i1 %cmp434, i32 %add432, i32 64
  %260 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %cond439, ptr %wpa_ie_len, align 8
  %261 = call ptr @memcpy(ptr %wpa_ie, ptr %info_element.addr.01617, i32 %cond439)
  br label %sw.epilog

if.end442:                                        ; preds = %land.lhs.true423.if.end442_crit_edge, %land.lhs.true417.if.end442_crit_edge, %land.lhs.true411.if.end442_crit_edge, %land.lhs.true.if.end442_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %251)
  %cmp445 = icmp eq i8 %251, 7
  br i1 %cmp445, label %land.lhs.true447, label %if.end442.if.end478_crit_edge

if.end442.if.end478_crit_edge:                    ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true447:                                 ; preds = %if.end442
  %262 = ptrtoint ptr %data406 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %data406, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %cmp451 = icmp eq i8 %263, 0
  br i1 %cmp451, label %land.lhs.true453, label %land.lhs.true447.if.end478_crit_edge

land.lhs.true447.if.end478_crit_edge:             ; preds = %land.lhs.true447
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true453:                                 ; preds = %land.lhs.true447
  %arrayidx455 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %264 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx455, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %265)
  %cmp457 = icmp eq i8 %265, -32
  br i1 %cmp457, label %land.lhs.true459, label %land.lhs.true453.if.end478_crit_edge

land.lhs.true453.if.end478_crit_edge:             ; preds = %land.lhs.true453
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true459:                                 ; preds = %land.lhs.true453
  %arrayidx461 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %266 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx461, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %267)
  %cmp463 = icmp eq i8 %267, 76
  br i1 %cmp463, label %land.lhs.true465, label %land.lhs.true459.if.end478_crit_edge

land.lhs.true459.if.end478_crit_edge:             ; preds = %land.lhs.true459
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true465:                                 ; preds = %land.lhs.true459
  %arrayidx467 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %268 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx467, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %269)
  %cmp469 = icmp eq i8 %269, 1
  br i1 %cmp469, label %land.lhs.true471, label %land.lhs.true465.if.end478_crit_edge

land.lhs.true465.if.end478_crit_edge:             ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

land.lhs.true471:                                 ; preds = %land.lhs.true465
  %arrayidx473 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 3
  %270 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx473, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %271)
  %cmp475 = icmp eq i8 %271, 2
  br i1 %cmp475, label %if.then477, label %land.lhs.true471.if.end478_crit_edge

land.lhs.true471.if.end478_crit_edge:             ; preds = %land.lhs.true471
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end478

if.then477:                                       ; preds = %land.lhs.true471
  call void @__sanitizer_cov_trace_pc() #15
  %272 = ptrtoint ptr %Turbo_Enable to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %Turbo_Enable, align 2
  br label %if.end478

if.end478:                                        ; preds = %if.then477, %land.lhs.true471.if.end478_crit_edge, %land.lhs.true465.if.end478_crit_edge, %land.lhs.true459.if.end478_crit_edge, %land.lhs.true453.if.end478_crit_edge, %land.lhs.true447.if.end478_crit_edge, %if.end442.if.end478_crit_edge, %if.end401.if.end478_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp_htcap_len.01610)
  %cmp480 = icmp eq i16 %tmp_htcap_len.01610, 0
  br i1 %cmp480, label %if.then482, label %if.end478.if.end556_crit_edge

if.end478.if.end556_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556

if.then482:                                       ; preds = %if.end478
  %273 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %len, align 1
  %conv484 = zext i8 %274 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %274)
  %cmp485 = icmp ugt i8 %274, 3
  br i1 %cmp485, label %land.lhs.true487, label %if.then482.if.end556.sink.split_crit_edge

if.then482.if.end556.sink.split_crit_edge:        ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556.sink.split

land.lhs.true487:                                 ; preds = %if.then482
  %data488 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %275 = ptrtoint ptr %data488 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %data488, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp491 = icmp eq i8 %276, 0
  br i1 %cmp491, label %land.lhs.true493, label %land.lhs.true487.if.end556.sink.split_crit_edge

land.lhs.true487.if.end556.sink.split_crit_edge:  ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556.sink.split

land.lhs.true493:                                 ; preds = %land.lhs.true487
  %arrayidx495 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %277 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx495, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %278)
  %cmp497 = icmp eq i8 %278, -112
  br i1 %cmp497, label %land.lhs.true499, label %land.lhs.true493.if.end556.sink.split_crit_edge

land.lhs.true493.if.end556.sink.split_crit_edge:  ; preds = %land.lhs.true493
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556.sink.split

land.lhs.true499:                                 ; preds = %land.lhs.true493
  %arrayidx501 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %279 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx501, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %280)
  %cmp503 = icmp eq i8 %280, 76
  br i1 %cmp503, label %land.lhs.true505, label %land.lhs.true499.if.end556.sink.split_crit_edge

land.lhs.true499.if.end556.sink.split_crit_edge:  ; preds = %land.lhs.true499
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556.sink.split

land.lhs.true505:                                 ; preds = %land.lhs.true499
  %arrayidx507 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %281 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx507, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %282)
  %cmp509 = icmp eq i8 %282, 51
  br i1 %cmp509, label %if.end547, label %land.lhs.true505.if.end556.sink.split_crit_edge

land.lhs.true505.if.end556.sink.split_crit_edge:  ; preds = %land.lhs.true505
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end556.sink.split

if.end547:                                        ; preds = %land.lhs.true505
  call void @__sanitizer_cov_trace_pc() #15
  %283 = ptrtoint ptr %bdHTSpecVer1124 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 4)
  store i32 1, ptr %bdHTSpecVer1124, align 1
  %284 = call i16 @llvm.umin.i16(i16 %conv484, i16 32)
  %285 = ptrtoint ptr %bdHTCapLen1078 to i32
  call void @__asan_storeN_noabort(i32 %285, i32 2)
  store i16 %284, ptr %bdHTCapLen1078, align 1
  %conv545 = zext i16 %284 to i32
  %286 = call ptr @memcpy(ptr %bdHTCapBuf1080, ptr %data488, i32 %conv545)
  br label %if.end556.sink.split

if.end556.sink.split:                             ; preds = %if.end547, %land.lhs.true505.if.end556.sink.split_crit_edge, %land.lhs.true499.if.end556.sink.split_crit_edge, %land.lhs.true493.if.end556.sink.split_crit_edge, %land.lhs.true487.if.end556.sink.split_crit_edge, %if.then482.if.end556.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end547 ], [ 0, %if.then482.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true487.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true493.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true499.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true505.if.end556.sink.split_crit_edge ]
  %tmp_htcap_len.2.ph = phi i16 [ %conv484, %if.end547 ], [ 0, %if.then482.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true487.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true493.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true499.if.end556.sink.split_crit_edge ], [ 0, %land.lhs.true505.if.end556.sink.split_crit_edge ]
  %287 = ptrtoint ptr %bssht1066 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %.sink, ptr %bssht1066, align 1
  br label %if.end556

if.end556:                                        ; preds = %if.end556.sink.split, %if.end478.if.end556_crit_edge
  %tmp_htcap_len.2 = phi i16 [ %tmp_htcap_len.01610, %if.end478.if.end556_crit_edge ], [ %tmp_htcap_len.2.ph, %if.end556.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp_htinfo_len.01604)
  %cmp558 = icmp eq i16 %tmp_htinfo_len.01604, 0
  br i1 %cmp558, label %if.then560, label %if.end556.if.end631_crit_edge

if.end556.if.end631_crit_edge:                    ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

if.then560:                                       ; preds = %if.end556
  %288 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %len, align 1
  %conv562 = zext i8 %289 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %289)
  %cmp563 = icmp ugt i8 %289, 3
  br i1 %cmp563, label %land.lhs.true565, label %if.then560.if.end631_crit_edge

if.then560.if.end631_crit_edge:                   ; preds = %if.then560
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

land.lhs.true565:                                 ; preds = %if.then560
  %data566 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %290 = ptrtoint ptr %data566 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %data566, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %cmp569 = icmp eq i8 %291, 0
  br i1 %cmp569, label %land.lhs.true571, label %land.lhs.true565.if.end631_crit_edge

land.lhs.true565.if.end631_crit_edge:             ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

land.lhs.true571:                                 ; preds = %land.lhs.true565
  %arrayidx573 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %292 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx573, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %293)
  %cmp575 = icmp eq i8 %293, -112
  br i1 %cmp575, label %land.lhs.true577, label %land.lhs.true571.if.end631_crit_edge

land.lhs.true571.if.end631_crit_edge:             ; preds = %land.lhs.true571
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

land.lhs.true577:                                 ; preds = %land.lhs.true571
  %arrayidx579 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %294 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx579, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %295)
  %cmp581 = icmp eq i8 %295, 76
  br i1 %cmp581, label %land.lhs.true583, label %land.lhs.true577.if.end631_crit_edge

land.lhs.true577.if.end631_crit_edge:             ; preds = %land.lhs.true577
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

land.lhs.true583:                                 ; preds = %land.lhs.true577
  %arrayidx585 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %296 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx585, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %297)
  %cmp587 = icmp eq i8 %297, 52
  br i1 %cmp587, label %if.then589, label %land.lhs.true583.if.end631_crit_edge

land.lhs.true583.if.end631_crit_edge:             ; preds = %land.lhs.true583
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end631

if.then589:                                       ; preds = %land.lhs.true583
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %bdHTSpecVer1124 to i32
  call void @__asan_storeN_noabort(i32 %298, i32 4)
  store i32 1, ptr %bdHTSpecVer1124, align 1
  %299 = call i16 @llvm.umin.i16(i16 %conv562, i16 32)
  %300 = ptrtoint ptr %bdHTInfoLen1135 to i32
  call void @__asan_storeN_noabort(i32 %300, i32 2)
  store i16 %299, ptr %bdHTInfoLen1135, align 1
  %conv627 = zext i16 %299 to i32
  %301 = call ptr @memcpy(ptr %bdHTInfoBuf1137, ptr %data566, i32 %conv627)
  br label %if.end631

if.end631:                                        ; preds = %if.then589, %land.lhs.true583.if.end631_crit_edge, %land.lhs.true577.if.end631_crit_edge, %land.lhs.true571.if.end631_crit_edge, %land.lhs.true565.if.end631_crit_edge, %if.then560.if.end631_crit_edge, %if.end556.if.end631_crit_edge
  %tmp_htinfo_len.1 = phi i16 [ %conv562, %if.then589 ], [ 0, %land.lhs.true583.if.end631_crit_edge ], [ 0, %land.lhs.true577.if.end631_crit_edge ], [ 0, %land.lhs.true571.if.end631_crit_edge ], [ 0, %land.lhs.true565.if.end631_crit_edge ], [ 0, %if.then560.if.end631_crit_edge ], [ %tmp_htinfo_len.01604, %if.end556.if.end631_crit_edge ]
  %302 = ptrtoint ptr %aggregation to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %aggregation, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool632.not = icmp eq i8 %303, 0
  br i1 %tobool632.not, label %if.end631.if.end705_crit_edge, label %if.then633

if.end631.if.end705_crit_edge:                    ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end705

if.then633:                                       ; preds = %if.end631
  %304 = ptrtoint ptr %bssht1066 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %bssht1066, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool636.not = icmp eq i8 %305, 0
  br i1 %tobool636.not, label %if.then633.if.end705_crit_edge, label %if.then637

if.then633.if.end705_crit_edge:                   ; preds = %if.then633
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end705

if.then637:                                       ; preds = %if.then633
  %306 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %len, align 1
  %conv639 = zext i8 %307 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %307)
  %cmp640 = icmp ugt i8 %307, 3
  br i1 %cmp640, label %land.lhs.true642, label %if.then637.if.end685_crit_edge

if.then637.if.end685_crit_edge:                   ; preds = %if.then637
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

land.lhs.true642:                                 ; preds = %if.then637
  %data643 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %308 = ptrtoint ptr %data643 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %data643, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %cmp646 = icmp eq i8 %309, 0
  br i1 %cmp646, label %land.lhs.true648, label %land.lhs.true642.if.end685_crit_edge

land.lhs.true642.if.end685_crit_edge:             ; preds = %land.lhs.true642
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

land.lhs.true648:                                 ; preds = %land.lhs.true642
  %arrayidx650 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %310 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx650, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %311)
  %cmp652 = icmp eq i8 %311, -32
  br i1 %cmp652, label %land.lhs.true654, label %land.lhs.true648.if.end685_crit_edge

land.lhs.true648.if.end685_crit_edge:             ; preds = %land.lhs.true648
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

land.lhs.true654:                                 ; preds = %land.lhs.true648
  %arrayidx656 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %312 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx656, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %313)
  %cmp658 = icmp eq i8 %313, 76
  br i1 %cmp658, label %land.lhs.true660, label %land.lhs.true654.if.end685_crit_edge

land.lhs.true654.if.end685_crit_edge:             ; preds = %land.lhs.true654
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

land.lhs.true660:                                 ; preds = %land.lhs.true654
  %arrayidx662 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %314 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx662, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %315)
  %cmp664 = icmp eq i8 %315, 2
  br i1 %cmp664, label %if.then666, label %land.lhs.true660.if.end685_crit_edge

land.lhs.true660.if.end685_crit_edge:             ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end685

if.then666:                                       ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #15
  %conv684 = zext i8 %307 to i32
  %316 = call ptr @memcpy(ptr %ht_realtek_agg_buf, ptr %data643, i32 %conv684)
  br label %if.end685

if.end685:                                        ; preds = %if.then666, %land.lhs.true660.if.end685_crit_edge, %land.lhs.true654.if.end685_crit_edge, %land.lhs.true648.if.end685_crit_edge, %land.lhs.true642.if.end685_crit_edge, %if.then637.if.end685_crit_edge
  %ht_realtek_agg_len.1 = phi i16 [ %conv639, %if.then666 ], [ %ht_realtek_agg_len.01598, %land.lhs.true660.if.end685_crit_edge ], [ %ht_realtek_agg_len.01598, %land.lhs.true654.if.end685_crit_edge ], [ %ht_realtek_agg_len.01598, %land.lhs.true648.if.end685_crit_edge ], [ %ht_realtek_agg_len.01598, %land.lhs.true642.if.end685_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then637.if.end685_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %ht_realtek_agg_len.1)
  %cmp687 = icmp ugt i16 %ht_realtek_agg_len.1, 4
  br i1 %cmp687, label %if.then689, label %if.end685.if.end705_crit_edge

if.end685.if.end705_crit_edge:                    ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end705

if.then689:                                       ; preds = %if.end685
  %317 = ptrtoint ptr %bdRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 1, ptr %bdRT2RTAggregation, align 1
  %318 = ptrtoint ptr %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx691.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %318)
  %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4. = load i8, ptr %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx691.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.)
  %cmp693 = icmp eq i8 %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4., 1
  br i1 %cmp693, label %land.lhs.true695, label %if.then689.if.end705_crit_edge

if.then689.if.end705_crit_edge:                   ; preds = %if.then689
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end705

land.lhs.true695:                                 ; preds = %if.then689
  %319 = ptrtoint ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx696.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %319)
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5. = load i8, ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx696.sroa_idx, align 1
  %320 = and i8 %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5., 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool699.not = icmp eq i8 %320, 0
  br i1 %tobool699.not, label %land.lhs.true695.if.end705_crit_edge, label %if.then700

land.lhs.true695.if.end705_crit_edge:             ; preds = %land.lhs.true695
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end705

if.then700:                                       ; preds = %land.lhs.true695
  call void @__sanitizer_cov_trace_pc() #15
  %321 = ptrtoint ptr %bdRT2RTLongSlotTime to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %bdRT2RTLongSlotTime, align 1
  br label %if.end705

if.end705:                                        ; preds = %if.then700, %land.lhs.true695.if.end705_crit_edge, %if.then689.if.end705_crit_edge, %if.end685.if.end705_crit_edge, %if.then633.if.end705_crit_edge, %if.end631.if.end705_crit_edge
  %ht_realtek_agg_len.2 = phi i16 [ %ht_realtek_agg_len.1, %if.then700 ], [ %ht_realtek_agg_len.1, %land.lhs.true695.if.end705_crit_edge ], [ %ht_realtek_agg_len.1, %if.then689.if.end705_crit_edge ], [ %ht_realtek_agg_len.1, %if.end685.if.end705_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then633.if.end705_crit_edge ], [ %ht_realtek_agg_len.01598, %if.end631.if.end705_crit_edge ]
  %322 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %323)
  %cmp708 = icmp ugt i8 %323, 2
  br i1 %cmp708, label %land.lhs.true710, label %if.end705.if.else799_crit_edge

if.end705.if.else799_crit_edge:                   ; preds = %if.end705
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else799

land.lhs.true710:                                 ; preds = %if.end705
  %data711 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %324 = ptrtoint ptr %data711 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %data711, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %cmp714 = icmp eq i8 %325, 0
  br i1 %cmp714, label %land.lhs.true716, label %land.lhs.true710.if.end775_crit_edge

land.lhs.true710.if.end775_crit_edge:             ; preds = %land.lhs.true710
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end775

land.lhs.true716:                                 ; preds = %land.lhs.true710
  %arrayidx718 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %326 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx718, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %327)
  %cmp720 = icmp eq i8 %327, 5
  br i1 %cmp720, label %land.lhs.true722, label %land.lhs.true716.land.lhs.true733_crit_edge

land.lhs.true716.land.lhs.true733_crit_edge:      ; preds = %land.lhs.true716
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true733

land.lhs.true722:                                 ; preds = %land.lhs.true716
  %arrayidx724 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %328 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx724, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -75, i8 %329)
  %cmp726 = icmp eq i8 %329, -75
  br i1 %cmp726, label %land.lhs.true722.if.then774_crit_edge, label %land.lhs.true722.land.lhs.true733_crit_edge

land.lhs.true722.land.lhs.true733_crit_edge:      ; preds = %land.lhs.true722
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true733

land.lhs.true722.if.then774_crit_edge:            ; preds = %land.lhs.true722
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then774

land.lhs.true733:                                 ; preds = %land.lhs.true722.land.lhs.true733_crit_edge, %land.lhs.true716.land.lhs.true733_crit_edge
  %330 = ptrtoint ptr %data711 to i32
  call void @__asan_load1_noabort(i32 %330)
  %.pr1658 = load i8, ptr %data711, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1658)
  %cmp737 = icmp eq i8 %.pr1658, 0
  br i1 %cmp737, label %land.lhs.true739, label %land.lhs.true733.if.end775_crit_edge

land.lhs.true733.if.end775_crit_edge:             ; preds = %land.lhs.true733
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end775

land.lhs.true739:                                 ; preds = %land.lhs.true733
  %arrayidx741 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %331 = ptrtoint ptr %arrayidx741 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx741, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %332)
  %cmp743 = icmp eq i8 %332, 10
  br i1 %cmp743, label %land.lhs.true745, label %land.lhs.true739.land.lhs.true756_crit_edge

land.lhs.true739.land.lhs.true756_crit_edge:      ; preds = %land.lhs.true739
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true756

land.lhs.true745:                                 ; preds = %land.lhs.true739
  %arrayidx747 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %333 = ptrtoint ptr %arrayidx747 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx747, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %334)
  %cmp749 = icmp eq i8 %334, -9
  br i1 %cmp749, label %land.lhs.true745.if.then774_crit_edge, label %land.lhs.true745.land.lhs.true756_crit_edge

land.lhs.true745.land.lhs.true756_crit_edge:      ; preds = %land.lhs.true745
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true756

land.lhs.true745.if.then774_crit_edge:            ; preds = %land.lhs.true745
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then774

land.lhs.true756:                                 ; preds = %land.lhs.true745.land.lhs.true756_crit_edge, %land.lhs.true739.land.lhs.true756_crit_edge
  %335 = ptrtoint ptr %data711 to i32
  call void @__asan_load1_noabort(i32 %335)
  %.pr1660 = load i8, ptr %data711, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1660)
  %cmp760 = icmp eq i8 %.pr1660, 0
  br i1 %cmp760, label %land.lhs.true762, label %land.lhs.true756.if.end775_crit_edge

land.lhs.true756.if.end775_crit_edge:             ; preds = %land.lhs.true756
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end775

land.lhs.true762:                                 ; preds = %land.lhs.true756
  %arrayidx764 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %336 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx764, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %337)
  %cmp766 = icmp eq i8 %337, 16
  br i1 %cmp766, label %land.lhs.true768, label %land.lhs.true762.if.end775_crit_edge

land.lhs.true762.if.end775_crit_edge:             ; preds = %land.lhs.true762
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end775

land.lhs.true768:                                 ; preds = %land.lhs.true762
  %arrayidx770 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %338 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx770, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %339)
  %cmp772 = icmp eq i8 %339, 24
  br i1 %cmp772, label %land.lhs.true768.if.then774_crit_edge, label %land.lhs.true768.if.end775_crit_edge

land.lhs.true768.if.end775_crit_edge:             ; preds = %land.lhs.true768
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end775

land.lhs.true768.if.then774_crit_edge:            ; preds = %land.lhs.true768
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then774

if.then774:                                       ; preds = %land.lhs.true768.if.then774_crit_edge, %land.lhs.true745.if.then774_crit_edge, %land.lhs.true722.if.then774_crit_edge
  %340 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 1, ptr %broadcom_cap_exist, align 4
  br label %if.end775

if.end775:                                        ; preds = %if.then774, %land.lhs.true768.if.end775_crit_edge, %land.lhs.true762.if.end775_crit_edge, %land.lhs.true756.if.end775_crit_edge, %land.lhs.true733.if.end775_crit_edge, %land.lhs.true710.if.end775_crit_edge
  %341 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %341)
  %.pr1579 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr1579)
  %cmp778 = icmp ugt i8 %.pr1579, 2
  br i1 %cmp778, label %land.lhs.true780, label %if.end775.if.else799_crit_edge

if.end775.if.else799_crit_edge:                   ; preds = %if.end775
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else799

land.lhs.true780:                                 ; preds = %if.end775
  %342 = ptrtoint ptr %data711 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %data711, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %cmp784 = icmp eq i8 %343, 0
  br i1 %cmp784, label %land.lhs.true786, label %land.lhs.true780.if.else799_crit_edge

land.lhs.true780.if.else799_crit_edge:            ; preds = %land.lhs.true780
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else799

land.lhs.true786:                                 ; preds = %land.lhs.true780
  %arrayidx788 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %344 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx788, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %345)
  %cmp790 = icmp eq i8 %345, 12
  br i1 %cmp790, label %land.lhs.true792, label %land.lhs.true786.if.else799_crit_edge

land.lhs.true786.if.else799_crit_edge:            ; preds = %land.lhs.true786
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else799

land.lhs.true792:                                 ; preds = %land.lhs.true786
  %arrayidx794 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %346 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx794, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %347)
  %cmp796 = icmp eq i8 %347, 67
  br i1 %cmp796, label %land.lhs.true792.if.end801_crit_edge, label %land.lhs.true792.if.else799_crit_edge

land.lhs.true792.if.else799_crit_edge:            ; preds = %land.lhs.true792
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else799

land.lhs.true792.if.end801_crit_edge:             ; preds = %land.lhs.true792
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end801

if.else799:                                       ; preds = %land.lhs.true792.if.else799_crit_edge, %land.lhs.true786.if.else799_crit_edge, %land.lhs.true780.if.else799_crit_edge, %if.end775.if.else799_crit_edge, %if.end705.if.else799_crit_edge
  br label %if.end801

if.end801:                                        ; preds = %if.else799, %land.lhs.true792.if.end801_crit_edge
  %storemerge = phi i8 [ 0, %if.else799 ], [ 1, %land.lhs.true792.if.end801_crit_edge ]
  %348 = ptrtoint ptr %ralink_cap_exist800 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %storemerge, ptr %ralink_cap_exist800, align 1
  %349 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %350)
  %cmp804 = icmp ugt i8 %350, 2
  br i1 %cmp804, label %land.lhs.true806, label %if.end801.if.end863_crit_edge

if.end801.if.end863_crit_edge:                    ; preds = %if.end801
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end863

land.lhs.true806:                                 ; preds = %if.end801
  %data807 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %351 = ptrtoint ptr %data807 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %data807, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %cmp810 = icmp eq i8 %352, 0
  br i1 %cmp810, label %land.lhs.true812, label %land.lhs.true806.if.end863_crit_edge

land.lhs.true806.if.end863_crit_edge:             ; preds = %land.lhs.true806
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end863

land.lhs.true812:                                 ; preds = %land.lhs.true806
  %arrayidx814 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %353 = ptrtoint ptr %arrayidx814 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx814, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %354)
  %cmp816 = icmp eq i8 %354, 3
  br i1 %cmp816, label %land.lhs.true818, label %land.lhs.true812.land.lhs.true829_crit_edge

land.lhs.true812.land.lhs.true829_crit_edge:      ; preds = %land.lhs.true812
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true829

land.lhs.true818:                                 ; preds = %land.lhs.true812
  %arrayidx820 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %355 = ptrtoint ptr %arrayidx820 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx820, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %356)
  %cmp822 = icmp eq i8 %356, 127
  br i1 %cmp822, label %land.lhs.true818.do.body849_crit_edge, label %land.lhs.true818.land.lhs.true829_crit_edge

land.lhs.true818.land.lhs.true829_crit_edge:      ; preds = %land.lhs.true818
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true829

land.lhs.true818.do.body849_crit_edge:            ; preds = %land.lhs.true818
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body849

land.lhs.true829:                                 ; preds = %land.lhs.true818.land.lhs.true829_crit_edge, %land.lhs.true812.land.lhs.true829_crit_edge
  %357 = ptrtoint ptr %data807 to i32
  call void @__asan_load1_noabort(i32 %357)
  %.pr1662 = load i8, ptr %data807, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1662)
  %cmp833 = icmp eq i8 %.pr1662, 0
  br i1 %cmp833, label %land.lhs.true835, label %land.lhs.true829.if.end863_crit_edge

land.lhs.true829.if.end863_crit_edge:             ; preds = %land.lhs.true829
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end863

land.lhs.true835:                                 ; preds = %land.lhs.true829
  %arrayidx837 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %358 = ptrtoint ptr %arrayidx837 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx837, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %359)
  %cmp839 = icmp eq i8 %359, 19
  br i1 %cmp839, label %land.lhs.true841, label %land.lhs.true835.if.end863_crit_edge

land.lhs.true835.if.end863_crit_edge:             ; preds = %land.lhs.true835
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end863

land.lhs.true841:                                 ; preds = %land.lhs.true835
  %arrayidx843 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %360 = ptrtoint ptr %arrayidx843 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx843, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %361)
  %cmp845 = icmp eq i8 %361, 116
  br i1 %cmp845, label %land.lhs.true841.do.body849_crit_edge, label %land.lhs.true841.if.end863_crit_edge

land.lhs.true841.if.end863_crit_edge:             ; preds = %land.lhs.true841
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end863

land.lhs.true841.do.body849_crit_edge:            ; preds = %land.lhs.true841
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body849

do.body849:                                       ; preds = %land.lhs.true841.do.body849_crit_edge, %land.lhs.true818.do.body849_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ieee80211_parse_info_param.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ieee80211_parse_info_param, %if.then855)) #13
          to label %if.end863 [label %if.then855], !srcloc !383

if.then855:                                       ; preds = %do.body849
  call void @__sanitizer_cov_trace_pc() #15
  %362 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ieee, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ieee80211_parse_info_param.__UNIQUE_ID_ddebug498, ptr noundef %363, ptr noundef nonnull @.str.68) #13
  br label %if.end863

if.end863:                                        ; preds = %if.then855, %do.body849, %land.lhs.true841.if.end863_crit_edge, %land.lhs.true835.if.end863_crit_edge, %land.lhs.true829.if.end863_crit_edge, %land.lhs.true806.if.end863_crit_edge, %if.end801.if.end863_crit_edge
  %storemerge1654 = phi i8 [ 1, %do.body849 ], [ 1, %if.then855 ], [ 0, %if.end801.if.end863_crit_edge ], [ 0, %land.lhs.true841.if.end863_crit_edge ], [ 0, %land.lhs.true835.if.end863_crit_edge ], [ 0, %land.lhs.true829.if.end863_crit_edge ], [ 0, %land.lhs.true806.if.end863_crit_edge ]
  %364 = ptrtoint ptr %atheros_cap_exist862 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %storemerge1654, ptr %atheros_cap_exist862, align 2
  %365 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %366)
  %cmp866 = icmp ugt i8 %366, 2
  br i1 %cmp866, label %land.lhs.true868, label %if.end863.if.else887_crit_edge

if.end863.if.else887_crit_edge:                   ; preds = %if.end863
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else887

land.lhs.true868:                                 ; preds = %if.end863
  %data869 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %367 = ptrtoint ptr %data869 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %data869, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %cmp872 = icmp eq i8 %368, 0
  br i1 %cmp872, label %land.lhs.true874, label %land.lhs.true868.if.else887_crit_edge

land.lhs.true868.if.else887_crit_edge:            ; preds = %land.lhs.true868
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else887

land.lhs.true874:                                 ; preds = %land.lhs.true868
  %arrayidx876 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %369 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx876, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %370)
  %cmp878 = icmp eq i8 %370, 64
  br i1 %cmp878, label %land.lhs.true880, label %land.lhs.true874.if.else887_crit_edge

land.lhs.true874.if.else887_crit_edge:            ; preds = %land.lhs.true874
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else887

land.lhs.true880:                                 ; preds = %land.lhs.true874
  %arrayidx882 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %371 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx882, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %372)
  %cmp884 = icmp eq i8 %372, -106
  br i1 %cmp884, label %land.lhs.true880.if.end889_crit_edge, label %land.lhs.true880.if.else887_crit_edge

land.lhs.true880.if.else887_crit_edge:            ; preds = %land.lhs.true880
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else887

land.lhs.true880.if.end889_crit_edge:             ; preds = %land.lhs.true880
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end889

if.else887:                                       ; preds = %land.lhs.true880.if.else887_crit_edge, %land.lhs.true874.if.else887_crit_edge, %land.lhs.true868.if.else887_crit_edge, %if.end863.if.else887_crit_edge
  br label %if.end889

if.end889:                                        ; preds = %if.else887, %land.lhs.true880.if.end889_crit_edge
  %storemerge1655 = phi i8 [ 0, %if.else887 ], [ 1, %land.lhs.true880.if.end889_crit_edge ]
  %373 = ptrtoint ptr %cisco_cap_exist888 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %storemerge1655, ptr %cisco_cap_exist888, align 1
  %374 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %375)
  %cmp892 = icmp ugt i8 %375, 4
  br i1 %cmp892, label %land.lhs.true894, label %if.end889.sw.epilog_crit_edge

if.end889.sw.epilog_crit_edge:                    ; preds = %if.end889
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true894:                                 ; preds = %if.end889
  %data895 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %376 = ptrtoint ptr %data895 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %data895, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %cmp898 = icmp eq i8 %377, 0
  br i1 %cmp898, label %land.lhs.true900, label %land.lhs.true894.if.end965_crit_edge

land.lhs.true894.if.end965_crit_edge:             ; preds = %land.lhs.true894
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end965

land.lhs.true900:                                 ; preds = %land.lhs.true894
  %arrayidx902 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %378 = ptrtoint ptr %arrayidx902 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx902, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %379)
  %cmp904 = icmp eq i8 %379, 64
  br i1 %cmp904, label %land.lhs.true906, label %land.lhs.true900.if.end965_crit_edge

land.lhs.true900.if.end965_crit_edge:             ; preds = %land.lhs.true900
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end965

land.lhs.true906:                                 ; preds = %land.lhs.true900
  %arrayidx908 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %380 = ptrtoint ptr %arrayidx908 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx908, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %381)
  %cmp910 = icmp eq i8 %381, -106
  br i1 %cmp910, label %land.lhs.true912, label %land.lhs.true906.if.end965_crit_edge

land.lhs.true906.if.end965_crit_edge:             ; preds = %land.lhs.true906
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end965

land.lhs.true912:                                 ; preds = %land.lhs.true906
  %arrayidx914 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %382 = ptrtoint ptr %arrayidx914 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx914, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %383)
  %cmp916 = icmp eq i8 %383, 1
  br i1 %cmp916, label %if.then918, label %land.lhs.true912.if.end965_crit_edge

land.lhs.true912.if.end965_crit_edge:             ; preds = %land.lhs.true912
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end965

if.then918:                                       ; preds = %land.lhs.true912
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %375)
  %cmp921 = icmp eq i8 %375, 6
  br i1 %cmp921, label %if.then923, label %if.else962

if.then923:                                       ; preds = %if.then918
  %arrayidx925 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 4
  %384 = ptrtoint ptr %arrayidx925 to i32
  call void @__asan_loadN_noabort(i32 %384, i32 2)
  %385 = load i16, ptr %arrayidx925, align 1
  %386 = ptrtoint ptr %CcxRmState to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %385, ptr %CcxRmState, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %385)
  %cmp929.not = icmp ne i16 %385, 0
  %spec.select = zext i1 %cmp929.not to i8
  %387 = ptrtoint ptr %bCcxRmEnable963 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %spec.select, ptr %bCcxRmEnable963, align 2
  %388 = ptrtoint ptr %arrayidx936 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %arrayidx936, align 2
  %390 = trunc i16 %389 to i8
  %conv939 = and i8 %390, 7
  %391 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %conv939, ptr %MBssidMask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv939)
  %cmp942.not = icmp eq i8 %conv939, 0
  br i1 %cmp942.not, label %if.else959, label %if.then944

if.then944:                                       ; preds = %if.then923
  call void @__sanitizer_cov_trace_pc() #15
  %392 = ptrtoint ptr %bMBssidValid to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 1, ptr %bMBssidValid, align 1
  %shl947 = shl nsw i8 -1, %conv939
  %393 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %shl947, ptr %MBssidMask, align 2
  %394 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %network, align 4
  %396 = ptrtoint ptr %MBssid to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %MBssid, align 4
  %397 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %add.ptr1.i.i, align 2
  %399 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %398, ptr %add.ptr1.i, align 2
  %400 = trunc i16 %398 to i8
  %and9571552 = and i8 %shl947, %400
  %401 = ptrtoint ptr %arrayidx955 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %and9571552, ptr %arrayidx955, align 1
  br label %if.end965

if.else959:                                       ; preds = %if.then923
  call void @__sanitizer_cov_trace_pc() #15
  %402 = ptrtoint ptr %bMBssidValid to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 0, ptr %bMBssidValid, align 1
  br label %if.end965

if.else962:                                       ; preds = %if.then918
  call void @__sanitizer_cov_trace_pc() #15
  %403 = ptrtoint ptr %bCcxRmEnable963 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 0, ptr %bCcxRmEnable963, align 2
  br label %if.end965

if.end965:                                        ; preds = %if.else962, %if.else959, %if.then944, %land.lhs.true912.if.end965_crit_edge, %land.lhs.true906.if.end965_crit_edge, %land.lhs.true900.if.end965_crit_edge, %land.lhs.true894.if.end965_crit_edge
  %404 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %404)
  %.pr1582 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr1582)
  %cmp968 = icmp ugt i8 %.pr1582, 4
  br i1 %cmp968, label %land.lhs.true970, label %if.end965.sw.epilog_crit_edge

if.end965.sw.epilog_crit_edge:                    ; preds = %if.end965
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true970:                                 ; preds = %if.end965
  %405 = ptrtoint ptr %data895 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %data895, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %cmp974 = icmp eq i8 %406, 0
  br i1 %cmp974, label %land.lhs.true976, label %land.lhs.true970.sw.epilog_crit_edge

land.lhs.true970.sw.epilog_crit_edge:             ; preds = %land.lhs.true970
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true976:                                 ; preds = %land.lhs.true970
  %arrayidx978 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 1, i32 1
  %407 = ptrtoint ptr %arrayidx978 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx978, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %408)
  %cmp980 = icmp eq i8 %408, 64
  br i1 %cmp980, label %land.lhs.true982, label %land.lhs.true976.sw.epilog_crit_edge

land.lhs.true976.sw.epilog_crit_edge:             ; preds = %land.lhs.true976
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true982:                                 ; preds = %land.lhs.true976
  %arrayidx984 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2
  %409 = ptrtoint ptr %arrayidx984 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx984, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %410)
  %cmp986 = icmp eq i8 %410, -106
  br i1 %cmp986, label %land.lhs.true988, label %land.lhs.true982.sw.epilog_crit_edge

land.lhs.true982.sw.epilog_crit_edge:             ; preds = %land.lhs.true982
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true988:                                 ; preds = %land.lhs.true982
  %arrayidx990 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 2, i32 1
  %411 = ptrtoint ptr %arrayidx990 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx990, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %412)
  %cmp992 = icmp eq i8 %412, 3
  br i1 %cmp992, label %if.then994, label %land.lhs.true988.sw.epilog_crit_edge

land.lhs.true988.sw.epilog_crit_edge:             ; preds = %land.lhs.true988
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then994:                                       ; preds = %land.lhs.true988
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr1582)
  %cmp997 = icmp eq i8 %.pr1582, 5
  br i1 %cmp997, label %if.then999, label %if.else1002

if.then999:                                       ; preds = %if.then994
  call void @__sanitizer_cov_trace_pc() #15
  %413 = ptrtoint ptr %bWithCcxVerNum1003 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 1, ptr %bWithCcxVerNum1003, align 8
  %arrayidx1001 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 3
  %414 = ptrtoint ptr %arrayidx1001 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx1001, align 1
  %416 = ptrtoint ptr %BssCcxVerNumber1004 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %415, ptr %BssCcxVerNumber1004, align 1
  br label %sw.epilog

if.else1002:                                      ; preds = %if.then994
  call void @__sanitizer_cov_trace_pc() #15
  %417 = ptrtoint ptr %bWithCcxVerNum1003 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %bWithCcxVerNum1003, align 8
  %418 = ptrtoint ptr %BssCcxVerNumber1004 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 0, ptr %BssCcxVerNumber1004, align 1
  br label %sw.epilog

do.body1008:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %419 = load i32, ptr @ieee80211_debug_level, align 4
  %and1009 = and i32 %419, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1009)
  %tobool1010.not = icmp eq i32 %and1009, 0
  br i1 %tobool1010.not, label %do.body1008.do.end1021_crit_edge, label %do.end1014

do.body1008.do.end1021_crit_edge:                 ; preds = %do.body1008
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1021

do.end1014:                                       ; preds = %do.body1008
  call void @__sanitizer_cov_trace_pc() #15
  %call1018 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv2) #17
  br label %do.end1021

do.end1021:                                       ; preds = %do.end1014, %do.body1008.do.end1021_crit_edge
  %420 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %421)
  %cmp1026 = icmp ult i8 %421, 62
  %conv1023 = zext i8 %421 to i32
  %add1024 = add nuw nsw i32 %conv1023, 2
  %cond1031 = select i1 %cmp1026, i32 %add1024, i32 64
  %422 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %cond1031, ptr %rsn_ie_len, align 4
  %423 = call ptr @memcpy(ptr %rsn_ie, ptr %info_element.addr.01617, i32 %cond1031)
  br label %sw.epilog

do.body1035:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %424 = load i32, ptr @ieee80211_debug_level, align 4
  %and1036 = and i32 %424, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1036)
  %tobool1037.not = icmp eq i32 %and1036, 0
  br i1 %tobool1037.not, label %do.body1035.do.end1048_crit_edge, label %do.end1041

do.body1035.do.end1048_crit_edge:                 ; preds = %do.body1035
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1048

do.end1041:                                       ; preds = %do.body1035
  call void @__sanitizer_cov_trace_pc() #15
  %call1045 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv2) #17
  br label %do.end1048

do.end1048:                                       ; preds = %do.end1041, %do.body1035.do.end1048_crit_edge
  %425 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %cmp1063.not = icmp eq i8 %426, 0
  br i1 %cmp1063.not, label %if.else1089, label %if.then1065

if.then1065:                                      ; preds = %do.end1048
  call void @__sanitizer_cov_trace_pc() #15
  %conv1051 = zext i8 %426 to i16
  %427 = ptrtoint ptr %bdHTSpecVer1124 to i32
  call void @__asan_storeN_noabort(i32 %427, i32 4)
  store i32 1, ptr %bdHTSpecVer1124, align 1
  %428 = call i16 @llvm.umin.i16(i16 %conv1051, i16 32)
  %429 = ptrtoint ptr %bdHTCapLen1078 to i32
  call void @__asan_storeN_noabort(i32 %429, i32 2)
  store i16 %428, ptr %bdHTCapLen1078, align 1
  %data1082 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %conv1086 = zext i16 %428 to i32
  %430 = call ptr @memcpy(ptr %bdHTCapBuf1080, ptr %data1082, i32 %conv1086)
  %431 = ptrtoint ptr %bssht1066 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 1, ptr %bssht1066, align 1
  br label %sw.epilog

if.else1089:                                      ; preds = %do.end1048
  call void @__sanitizer_cov_trace_pc() #15
  %432 = ptrtoint ptr %bssht1066 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 0, ptr %bssht1066, align 1
  br label %sw.epilog

do.body1094:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %433 = load i32, ptr @ieee80211_debug_level, align 4
  %and1095 = and i32 %433, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1095)
  %tobool1096.not = icmp eq i32 %and1095, 0
  br i1 %tobool1096.not, label %do.body1094.do.end1107_crit_edge, label %do.end1100

do.body1094.do.end1107_crit_edge:                 ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1107

do.end1100:                                       ; preds = %do.body1094
  call void @__sanitizer_cov_trace_pc() #15
  %call1104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv2) #17
  br label %do.end1107

do.end1107:                                       ; preds = %do.end1100, %do.body1094.do.end1107_crit_edge
  %434 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool1121.not = icmp eq i8 %435, 0
  br i1 %tobool1121.not, label %do.end1107.sw.epilog_crit_edge, label %if.then1122

do.end1107.sw.epilog_crit_edge:                   ; preds = %do.end1107
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then1122:                                      ; preds = %do.end1107
  call void @__sanitizer_cov_trace_pc() #15
  %conv1110 = zext i8 %435 to i16
  %436 = ptrtoint ptr %bdHTSpecVer1124 to i32
  call void @__asan_storeN_noabort(i32 %436, i32 4)
  store i32 0, ptr %bdHTSpecVer1124, align 1
  %437 = call i16 @llvm.umin.i16(i16 %conv1110, i16 32)
  %438 = ptrtoint ptr %bdHTInfoLen1135 to i32
  call void @__asan_storeN_noabort(i32 %438, i32 2)
  store i16 %437, ptr %bdHTInfoLen1135, align 1
  %data1139 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %conv1143 = zext i16 %437 to i32
  %439 = call ptr @memcpy(ptr %bdHTInfoBuf1137, ptr %data1139, i32 %conv1143)
  br label %sw.epilog

do.body1146:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %440 = load i32, ptr @ieee80211_debug_level, align 4
  %and1147 = and i32 %440, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1147)
  %tobool1148.not = icmp eq i32 %and1147, 0
  br i1 %tobool1148.not, label %do.body1146.do.end1159_crit_edge, label %do.end1152

do.body1146.do.end1159_crit_edge:                 ; preds = %do.body1146
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1159

do.end1152:                                       ; preds = %do.body1146
  call void @__sanitizer_cov_trace_pc() #15
  %call1156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %conv2) #17
  br label %do.end1159

do.end1159:                                       ; preds = %do.end1152, %do.body1146.do.end1159_crit_edge
  %441 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %442)
  %cmp1162 = icmp ugt i8 %442, 8
  br i1 %cmp1162, label %if.then1164, label %if.else1180

if.then1164:                                      ; preds = %do.end1159
  %443 = ptrtoint ptr %bWithAironetIE1181 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 1, ptr %bWithAironetIE1181, align 8
  %arrayidx1166 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 5
  %444 = ptrtoint ptr %arrayidx1166 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %arrayidx1166, align 1
  %446 = and i8 %445, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %446)
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %if.else1177, label %if.then1176

if.then1176:                                      ; preds = %if.then1164
  call void @__sanitizer_cov_trace_pc() #15
  %448 = ptrtoint ptr %bCkipSupported1182 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 1, ptr %bCkipSupported1182, align 1
  br label %sw.epilog

if.else1177:                                      ; preds = %if.then1164
  call void @__sanitizer_cov_trace_pc() #15
  %449 = ptrtoint ptr %bCkipSupported1182 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 0, ptr %bCkipSupported1182, align 1
  br label %sw.epilog

if.else1180:                                      ; preds = %do.end1159
  call void @__sanitizer_cov_trace_pc() #15
  %450 = ptrtoint ptr %bWithAironetIE1181 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %bWithAironetIE1181, align 8
  %451 = ptrtoint ptr %bCkipSupported1182 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 0, ptr %bCkipSupported1182, align 1
  br label %sw.epilog

sw.bb1184:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %452 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %ieee, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %453, ptr noundef nonnull @.str.81) #17
  br label %sw.epilog

do.body1187:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %454 = load i32, ptr @ieee80211_debug_level, align 4
  %and1188 = and i32 %454, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1188)
  %tobool1189.not = icmp eq i32 %and1188, 0
  br i1 %tobool1189.not, label %do.body1187.do.end1200_crit_edge, label %do.end1193

do.body1187.do.end1200_crit_edge:                 ; preds = %do.body1187
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end1200

do.end1193:                                       ; preds = %do.body1187
  call void @__sanitizer_cov_trace_pc() #15
  %call1197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv2) #17
  br label %do.end1200

do.end1200:                                       ; preds = %do.end1193, %do.body1187.do.end1200_crit_edge
  %455 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dot11d_info.i, align 4
  %dot11d_enabled.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %456, i32 0, i32 7
  %457 = ptrtoint ptr %dot11d_enabled.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %dot11d_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %458)
  %tobool.not.i1564 = icmp eq i8 %458, 0
  br i1 %tobool.not.i1564, label %do.end1200.sw.epilog_crit_edge, label %if.then.i

do.end1200.sw.epilog_crit_edge:                   ; preds = %do.end1200
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i:                                        ; preds = %do.end1200
  %459 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %cmp.not.i = icmp eq i8 %460, 0
  br i1 %cmp.not.i, label %if.then.i.if.end17.i1565_crit_edge, label %if.then2.i

if.then.i.if.end17.i1565_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i1565

if.then2.i:                                       ; preds = %if.then.i
  %conv.i = zext i8 %460 to i32
  %data.i = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2
  %461 = call ptr @memcpy(ptr %CountryIeBuf.i, ptr %data.i, i32 %conv.i)
  %462 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %463 to i16
  %464 = ptrtoint ptr %CountryIeLen.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %conv7.i, ptr %CountryIeLen.i, align 8
  %465 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %dot11d_info.i, align 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %466, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp10.not.i = icmp eq i16 %468, 0
  br i1 %cmp10.not.i, label %if.then12.i, label %if.then2.i.if.end17.i1565_crit_edge

if.then2.i.if.end17.i1565_crit_edge:              ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i1565

if.then12.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %469 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %len, align 1
  %conv14.i = zext i8 %470 to i16
  call void @dot11d_update_country_ie(ptr noundef %ieee, ptr noundef %network, i16 noundef zeroext %conv14.i, ptr noundef %data.i) #13
  br label %if.end17.i1565

if.end17.i1565:                                   ; preds = %if.then12.i, %if.then2.i.if.end17.i1565_crit_edge, %if.then.i.if.end17.i1565_crit_edge
  %471 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %dot11d_info.i, align 4
  %country_ie_src_addr.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %472, i32 0, i32 1
  %473 = ptrtoint ptr %country_ie_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %country_ie_src_addr.i, align 4
  %475 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %network, align 4
  %xor.i.i = xor i32 %476, %474
  %add.ptr.i.i = getelementptr %struct.rt_dot11d_info, ptr %472, i32 0, i32 1, i32 4
  %477 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %add.ptr.i.i, align 2
  %479 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %480, %478
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then20.i, label %if.end17.i1565.sw.epilog_crit_edge

if.end17.i1565.sw.epilog_crit_edge:               ; preds = %if.end17.i1565
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then20.i:                                      ; preds = %if.end17.i1565
  call void @__sanitizer_cov_trace_pc() #15
  %country_ie_watchdog.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %472, i32 0, i32 3
  %481 = ptrtoint ptr %country_ie_watchdog.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %country_ie_watchdog.i, align 1
  %inc.i = add i8 %482, 1
  store i8 %inc.i, ptr %country_ie_watchdog.i, align 1
  br label %sw.epilog

do.body1203:                                      ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %483 = load i32, ptr @ieee80211_debug_level, align 4
  %and1204 = and i32 %483, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1204)
  %tobool1205.not = icmp eq i32 %and1204, 0
  br i1 %tobool1205.not, label %do.body1203.sw.epilog_crit_edge, label %do.end1209

do.body1203.sw.epilog_crit_edge:                  ; preds = %do.body1203
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end1209:                                       ; preds = %do.body1203
  %484 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %484, ptr @__sancov_gen_cov_switch_values.228)
  switch i8 %30, label %sw.default.i [
    i8 -34, label %sw.bb25.i
    i8 -35, label %sw.bb24.i
    i8 50, label %sw.bb23.i
    i8 3, label %do.end1209.get_info_element_string.exit_crit_edge
    i8 4, label %sw.bb4.i
    i8 5, label %sw.bb5.i
    i8 6, label %sw.bb6.i
    i8 7, label %sw.bb7.i
    i8 8, label %sw.bb8.i
    i8 9, label %sw.bb9.i
    i8 10, label %sw.bb10.i
    i8 16, label %sw.bb11.i
    i8 32, label %sw.bb12.i
    i8 33, label %sw.bb13.i
    i8 34, label %sw.bb14.i
    i8 35, label %sw.bb15.i
    i8 36, label %sw.bb16.i
    i8 37, label %sw.bb17.i
    i8 38, label %sw.bb18.i
    i8 39, label %sw.bb19.i
    i8 40, label %sw.bb20.i
    i8 41, label %sw.bb21.i
    i8 48, label %sw.bb22.i
  ]

do.end1209.get_info_element_string.exit_crit_edge: ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb4.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb5.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb6.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb7.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb8.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb9.i:                                         ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb10.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb11.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb12.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb13.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb14.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb15.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb16.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb17.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb18.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb19.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb20.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb21.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb22.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb23.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb24.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.bb25.i:                                        ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

sw.default.i:                                     ; preds = %do.end1209
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_info_element_string.exit

get_info_element_string.exit:                     ; preds = %sw.default.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %do.end1209.get_info_element_string.exit_crit_edge
  %retval.0.i1566 = phi ptr [ @.str.186, %sw.default.i ], [ @.str.185, %sw.bb25.i ], [ @.str.184, %sw.bb24.i ], [ @.str.183, %sw.bb23.i ], [ @.str.182, %sw.bb22.i ], [ @.str.181, %sw.bb21.i ], [ @.str.180, %sw.bb20.i ], [ @.str.179, %sw.bb19.i ], [ @.str.178, %sw.bb18.i ], [ @.str.177, %sw.bb17.i ], [ @.str.176, %sw.bb16.i ], [ @.str.175, %sw.bb15.i ], [ @.str.174, %sw.bb14.i ], [ @.str.173, %sw.bb13.i ], [ @.str.172, %sw.bb12.i ], [ @.str.171, %sw.bb11.i ], [ @.str.170, %sw.bb10.i ], [ @.str.169, %sw.bb9.i ], [ @.str.168, %sw.bb8.i ], [ @.str.167, %sw.bb7.i ], [ @.str.166, %sw.bb6.i ], [ @.str.165, %sw.bb5.i ], [ @.str.164, %sw.bb4.i ], [ @.str.163, %do.end1209.get_info_element_string.exit_crit_edge ]
  %conv1215 = zext i8 %30 to i32
  %call1216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull %retval.0.i1566, i32 noundef %conv1215) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %get_info_element_string.exit, %do.body1203.sw.epilog_crit_edge, %if.then20.i, %if.end17.i1565.sw.epilog_crit_edge, %do.end1200.sw.epilog_crit_edge, %sw.bb1184, %if.else1180, %if.else1177, %if.then1176, %if.then1122, %do.end1107.sw.epilog_crit_edge, %if.else1089, %if.then1065, %do.end1021, %if.else1002, %if.then999, %land.lhs.true988.sw.epilog_crit_edge, %land.lhs.true982.sw.epilog_crit_edge, %land.lhs.true976.sw.epilog_crit_edge, %land.lhs.true970.sw.epilog_crit_edge, %if.end965.sw.epilog_crit_edge, %if.end889.sw.epilog_crit_edge, %if.then429, %ieee80211_parse_qos_info_param_IE.exit.thread, %do.end377, %do.body371.sw.epilog_crit_edge, %do.end362, %sw.bb352.sw.epilog_crit_edge, %do.end344, %sw.bb333.sw.epilog_crit_edge, %if.then327, %if.end312.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end291.sw.epilog_crit_edge, %if.end267.sw.epilog_crit_edge, %if.end256.sw.epilog_crit_edge, %sw.bb250.sw.epilog_crit_edge, %do.end244, %do.body238.sw.epilog_crit_edge, %do.end231, %do.body225.sw.epilog_crit_edge, %do.end221, %do.end197, %do.body191.sw.epilog_crit_edge, %do.end122, %do.body116.sw.epilog_crit_edge, %do.end56, %do.body50.sw.epilog_crit_edge, %if.then22
  %ht_realtek_agg_len.3 = phi i16 [ %ht_realtek_agg_len.01598, %get_info_element_string.exit ], [ %ht_realtek_agg_len.01598, %do.body1203.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %sw.bb1184 ], [ %ht_realtek_agg_len.01598, %if.then1176 ], [ %ht_realtek_agg_len.01598, %if.else1177 ], [ %ht_realtek_agg_len.01598, %if.else1180 ], [ %ht_realtek_agg_len.01598, %if.then1122 ], [ %ht_realtek_agg_len.01598, %do.end1107.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then1065 ], [ %ht_realtek_agg_len.01598, %if.else1089 ], [ %ht_realtek_agg_len.01598, %do.end1021 ], [ %ht_realtek_agg_len.01598, %if.then429 ], [ %ht_realtek_agg_len.2, %if.then999 ], [ %ht_realtek_agg_len.2, %if.else1002 ], [ %ht_realtek_agg_len.2, %land.lhs.true988.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.2, %land.lhs.true982.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.2, %land.lhs.true976.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.2, %land.lhs.true970.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.2, %if.end965.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end377 ], [ %ht_realtek_agg_len.01598, %do.body371.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end362 ], [ %ht_realtek_agg_len.01598, %sw.bb352.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end344 ], [ %ht_realtek_agg_len.01598, %sw.bb333.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %sw.bb250.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.end256.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.end267.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.end291.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %lor.lhs.false.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then327 ], [ %ht_realtek_agg_len.01598, %if.end312.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end244 ], [ %ht_realtek_agg_len.01598, %do.body238.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end231 ], [ %ht_realtek_agg_len.01598, %do.body225.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end221 ], [ %ht_realtek_agg_len.01598, %do.end197 ], [ %ht_realtek_agg_len.01598, %do.body191.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %do.end122 ], [ %ht_realtek_agg_len.01598, %do.body116.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then22 ], [ %ht_realtek_agg_len.01598, %do.end56 ], [ %ht_realtek_agg_len.01598, %do.body50.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %ieee80211_parse_qos_info_param_IE.exit.thread ], [ %ht_realtek_agg_len.01598, %do.end1200.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.end17.i1565.sw.epilog_crit_edge ], [ %ht_realtek_agg_len.01598, %if.then20.i ], [ %ht_realtek_agg_len.2, %if.end889.sw.epilog_crit_edge ]
  %tmp_htinfo_len.2 = phi i16 [ %tmp_htinfo_len.01604, %get_info_element_string.exit ], [ %tmp_htinfo_len.01604, %do.body1203.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %sw.bb1184 ], [ %tmp_htinfo_len.01604, %if.then1176 ], [ %tmp_htinfo_len.01604, %if.else1177 ], [ %tmp_htinfo_len.01604, %if.else1180 ], [ %conv1110, %if.then1122 ], [ 0, %do.end1107.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.then1065 ], [ %tmp_htinfo_len.01604, %if.else1089 ], [ %tmp_htinfo_len.01604, %do.end1021 ], [ %tmp_htinfo_len.01604, %if.then429 ], [ %tmp_htinfo_len.1, %if.then999 ], [ %tmp_htinfo_len.1, %if.else1002 ], [ %tmp_htinfo_len.1, %land.lhs.true988.sw.epilog_crit_edge ], [ %tmp_htinfo_len.1, %land.lhs.true982.sw.epilog_crit_edge ], [ %tmp_htinfo_len.1, %land.lhs.true976.sw.epilog_crit_edge ], [ %tmp_htinfo_len.1, %land.lhs.true970.sw.epilog_crit_edge ], [ %tmp_htinfo_len.1, %if.end965.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end377 ], [ %tmp_htinfo_len.01604, %do.body371.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end362 ], [ %tmp_htinfo_len.01604, %sw.bb352.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end344 ], [ %tmp_htinfo_len.01604, %sw.bb333.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %sw.bb250.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.end256.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.end267.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.end291.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %lor.lhs.false.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.then327 ], [ %tmp_htinfo_len.01604, %if.end312.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end244 ], [ %tmp_htinfo_len.01604, %do.body238.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end231 ], [ %tmp_htinfo_len.01604, %do.body225.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end221 ], [ %tmp_htinfo_len.01604, %do.end197 ], [ %tmp_htinfo_len.01604, %do.body191.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %do.end122 ], [ %tmp_htinfo_len.01604, %do.body116.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.then22 ], [ %tmp_htinfo_len.01604, %do.end56 ], [ %tmp_htinfo_len.01604, %do.body50.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %ieee80211_parse_qos_info_param_IE.exit.thread ], [ %tmp_htinfo_len.01604, %do.end1200.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.end17.i1565.sw.epilog_crit_edge ], [ %tmp_htinfo_len.01604, %if.then20.i ], [ %tmp_htinfo_len.1, %if.end889.sw.epilog_crit_edge ]
  %tmp_htcap_len.3 = phi i16 [ %tmp_htcap_len.01610, %get_info_element_string.exit ], [ %tmp_htcap_len.01610, %do.body1203.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %sw.bb1184 ], [ %tmp_htcap_len.01610, %if.then1176 ], [ %tmp_htcap_len.01610, %if.else1177 ], [ %tmp_htcap_len.01610, %if.else1180 ], [ %tmp_htcap_len.01610, %if.then1122 ], [ %tmp_htcap_len.01610, %do.end1107.sw.epilog_crit_edge ], [ %conv1051, %if.then1065 ], [ 0, %if.else1089 ], [ %tmp_htcap_len.01610, %do.end1021 ], [ %tmp_htcap_len.01610, %if.then429 ], [ %tmp_htcap_len.2, %if.then999 ], [ %tmp_htcap_len.2, %if.else1002 ], [ %tmp_htcap_len.2, %land.lhs.true988.sw.epilog_crit_edge ], [ %tmp_htcap_len.2, %land.lhs.true982.sw.epilog_crit_edge ], [ %tmp_htcap_len.2, %land.lhs.true976.sw.epilog_crit_edge ], [ %tmp_htcap_len.2, %land.lhs.true970.sw.epilog_crit_edge ], [ %tmp_htcap_len.2, %if.end965.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end377 ], [ %tmp_htcap_len.01610, %do.body371.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end362 ], [ %tmp_htcap_len.01610, %sw.bb352.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end344 ], [ %tmp_htcap_len.01610, %sw.bb333.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %sw.bb250.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.end256.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.end267.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.end291.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %lor.lhs.false.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.then327 ], [ %tmp_htcap_len.01610, %if.end312.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end244 ], [ %tmp_htcap_len.01610, %do.body238.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end231 ], [ %tmp_htcap_len.01610, %do.body225.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end221 ], [ %tmp_htcap_len.01610, %do.end197 ], [ %tmp_htcap_len.01610, %do.body191.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %do.end122 ], [ %tmp_htcap_len.01610, %do.body116.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.then22 ], [ %tmp_htcap_len.01610, %do.end56 ], [ %tmp_htcap_len.01610, %do.body50.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %ieee80211_parse_qos_info_param_IE.exit.thread ], [ %tmp_htcap_len.01610, %do.end1200.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.end17.i1565.sw.epilog_crit_edge ], [ %tmp_htcap_len.01610, %if.then20.i ], [ %tmp_htcap_len.2, %if.end889.sw.epilog_crit_edge ]
  %485 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %len, align 1
  %conv1221 = zext i8 %486 to i32
  %487 = zext i8 %486 to i16
  %.neg1585 = add i16 %length.addr.01616, -2
  %conv1225 = sub i16 %.neg1585, %487
  %arrayidx1229 = getelementptr %struct.ieee80211_info_element, ptr %info_element.addr.01617, i32 0, i32 2, i32 %conv1221
  %cmp = icmp ugt i16 %conv1225, 1
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %do.end, %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %atheros_cap_exist1230 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 52
  %488 = ptrtoint ptr %atheros_cap_exist1230 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %atheros_cap_exist1230, align 2, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool1231.not = icmp eq i8 %489, 0
  br i1 %tobool1231.not, label %land.lhs.true1232, label %while.end.if.else1246_crit_edge

while.end.if.else1246_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else1246

land.lhs.true1232:                                ; preds = %while.end
  %broadcom_cap_exist1233 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 50
  %490 = ptrtoint ptr %broadcom_cap_exist1233 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %broadcom_cap_exist1233, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %tobool1234.not = icmp eq i8 %491, 0
  br i1 %tobool1234.not, label %land.lhs.true1235, label %land.lhs.true1232.if.else1246_crit_edge

land.lhs.true1232.if.else1246_crit_edge:          ; preds = %land.lhs.true1232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else1246

land.lhs.true1235:                                ; preds = %land.lhs.true1232
  %cisco_cap_exist1236 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 53
  %492 = ptrtoint ptr %cisco_cap_exist1236 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %cisco_cap_exist1236, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool1237.not = icmp eq i8 %493, 0
  br i1 %tobool1237.not, label %land.lhs.true1238, label %land.lhs.true1235.if.else1246_crit_edge

land.lhs.true1235.if.else1246_crit_edge:          ; preds = %land.lhs.true1235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else1246

land.lhs.true1238:                                ; preds = %land.lhs.true1235
  %ralink_cap_exist1239 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 51
  %494 = ptrtoint ptr %ralink_cap_exist1239 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %ralink_cap_exist1239, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %495)
  %tobool1240.not = icmp eq i8 %495, 0
  br i1 %tobool1240.not, label %land.lhs.true1241, label %land.lhs.true1238.if.else1246_crit_edge

land.lhs.true1238.if.else1246_crit_edge:          ; preds = %land.lhs.true1238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else1246

land.lhs.true1241:                                ; preds = %land.lhs.true1238
  %bdRT2RTAggregation1243 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 49, i32 6
  %496 = ptrtoint ptr %bdRT2RTAggregation1243 to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %bdRT2RTAggregation1243, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %tobool1244.not = icmp eq i8 %497, 0
  br i1 %tobool1244.not, label %land.lhs.true1241.if.end1248_crit_edge, label %land.lhs.true1241.if.else1246_crit_edge

land.lhs.true1241.if.else1246_crit_edge:          ; preds = %land.lhs.true1241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else1246

land.lhs.true1241.if.end1248_crit_edge:           ; preds = %land.lhs.true1241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end1248

if.else1246:                                      ; preds = %land.lhs.true1241.if.else1246_crit_edge, %land.lhs.true1238.if.else1246_crit_edge, %land.lhs.true1235.if.else1246_crit_edge, %land.lhs.true1232.if.else1246_crit_edge, %while.end.if.else1246_crit_edge
  br label %if.end1248

if.end1248:                                       ; preds = %if.else1246, %land.lhs.true1241.if.end1248_crit_edge
  %.sink1669 = phi i8 [ 0, %if.else1246 ], [ 1, %land.lhs.true1241.if.end1248_crit_edge ]
  %unknown_cap_exist1247 = getelementptr inbounds %struct.ieee80211_network, ptr %network, i32 0, i32 54
  %498 = ptrtoint ptr %unknown_cap_exist1247 to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 %.sink1669, ptr %unknown_cap_exist1247, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rates_str) #13
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %ht_realtek_agg_buf)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_mgt_rsl(ptr noundef %ieee, ptr noundef %header, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %header to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %header, align 1
  %2 = lshr i16 %1, 8
  %3 = trunc i16 %2 to i8
  %trunc = and i8 %3, -16
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.229)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 -128, label %do.body
    i8 80, label %do.body18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and1 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef 128) #17
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %6 = load i32, ptr @ieee80211_debug_level, align 4
  %and8 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.sw.epilog.sink.split_crit_edge, label %do.body7.sw.epilog.sink.split.sink.split_crit_edge

do.body7.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.sink.split

do.body7.sw.epilog.sink.split_crit_edge:          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

do.body18:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %7 = load i32, ptr @ieee80211_debug_level, align 4
  %and19 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.body31_crit_edge, label %do.end23

do.body18.do.body31_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef 80) #17
  br label %do.body31

do.body31:                                        ; preds = %do.end23, %do.body18.do.body31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %8 = load i32, ptr @ieee80211_debug_level, align 4
  %and32 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.sw.epilog.sink.split_crit_edge, label %do.body31.sw.epilog.sink.split.sink.split_crit_edge

do.body31.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.sink.split

do.body31.sw.epilog.sink.split_crit_edge:         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %do.body31.sw.epilog.sink.split.sink.split_crit_edge, %do.body7.sw.epilog.sink.split.sink.split_crit_edge
  %.str.97.sink = phi ptr [ @.str.91, %do.body7.sw.epilog.sink.split.sink.split_crit_edge ], [ @.str.97, %do.body31.sw.epilog.sink.split.sink.split_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.97.sink) #17
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %do.body31.sw.epilog.sink.split_crit_edge, %do.body7.sw.epilog.sink.split_crit_edge
  tail call fastcc void @ieee80211_process_probe_response(ptr noundef %ieee, ptr noundef %header, ptr noundef %stats)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_process_probe_response(ptr noundef %ieee, ptr noundef %beacon, ptr nocapture noundef %stats) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %info_element1 = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 4
  %0 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %beacon, align 1
  %2 = lshr i16 %1, 8
  %3 = and i16 %2, 240
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 808) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.do.end76_crit_edge, label %do.end

if.end.do.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

do.end:                                           ; preds = %if.end
  %capability2 = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 3
  %6 = ptrtoint ptr %capability2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %capability2, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %data = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %len = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element1, i32 0, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %do.end.while.cond.i.i.preheader_crit_edge

do.end.while.cond.i.i.preheader_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %do.end
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp1.i.i = icmp eq i8 %12, 32
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge

land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.preheader

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.cond.i.i.preheader:                         ; preds = %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge, %do.end.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %essid_len.addr.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %conv.i, %while.cond.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %essid_len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.then.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.then.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %essid_len.addr.0.i.i, -1
  %arrayidx3.i.i = getelementptr i8, ptr %data, i32 %dec.i.i
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i.i, align 1
  %cmp5.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp5.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %if.end.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

if.then.i:                                        ; preds = %while.cond.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %15 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.207, i32 9)
  br label %escape_essid.exit

if.end.i:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.208, i32 noundef %conv.i, ptr noundef %data) #13
  br label %escape_essid.exit

escape_essid.exit:                                ; preds = %if.end.i, %if.then.i
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %beacon, i32 0, i32 4
  %conv10 = zext i16 %8 to i32
  %and11 = and i32 %conv10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool12.not, i32 48, i32 49
  %and14 = and i32 %conv10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, i32 48, i32 49
  %and18 = and i32 %conv10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond20 = select i1 %tobool19.not, i32 48, i32 49
  %and22 = and i32 %conv10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, i32 48, i32 49
  %and26 = and i32 %conv10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond28 = select i1 %tobool27.not, i32 48, i32 49
  %and30 = and i32 %conv10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, i32 48, i32 49
  %and34 = and i32 %conv10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, i32 48, i32 49
  %and38 = and i32 %conv10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, i32 48, i32 49
  %and42 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, i32 48, i32 49
  %and46 = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, i32 48, i32 49
  %and50 = and i32 %conv10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, i32 48, i32 49
  %and54 = and i32 %conv10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %cond56 = select i1 %tobool55.not, i32 48, i32 49
  %and58 = and i32 %conv10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %cond60 = select i1 %tobool59.not, i32 48, i32 49
  %and62 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, i32 48, i32 49
  %and66 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %cond68 = select i1 %tobool67.not, i32 48, i32 49
  %and70 = and i32 %conv10, 1
  %16 = or i32 %and70, 48
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @escape_essid.escaped, ptr noundef %addr3, i32 noundef %cond, i32 noundef %cond16, i32 noundef %cond20, i32 noundef %cond24, i32 noundef %cond28, i32 noundef %cond32, i32 noundef %cond36, i32 noundef %cond40, i32 noundef %cond44, i32 noundef %cond48, i32 noundef %cond52, i32 noundef %cond56, i32 noundef %cond60, i32 noundef %cond64, i32 noundef %cond68, i32 noundef %16) #17
  br label %do.end76

do.end76:                                         ; preds = %escape_essid.exit, %if.end.do.end76_crit_edge
  %active.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 8, i32 1
  %addr3.i = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %beacon, i32 0, i32 4
  %17 = call ptr @memset(ptr %active.i, i32 0, i32 10)
  %18 = call ptr @memcpy(ptr %call7.i.i, ptr %addr3.i, i32 6)
  %capability.i = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 3
  %19 = ptrtoint ptr %capability.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %capability.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #13
  %capability5.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %capability5.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %capability5.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_scanned.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 23
  %24 = ptrtoint ptr %last_scanned.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_scanned.i, align 8
  %time_stamp.i = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 1
  %25 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %time_stamp.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %time_stamp6.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 28
  %28 = ptrtoint ptr %time_stamp6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %time_stamp6.i, align 8
  %arrayidx9.i = getelementptr %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx9.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %arrayidx11.i = getelementptr %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 28, i32 1
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx11.i, align 4
  %beacon_interval.i = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 0, i32 2
  %33 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %beacon_interval.i, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #13
  %beacon_interval12.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 29
  %36 = ptrtoint ptr %beacon_interval12.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %beacon_interval12.i, align 8
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 30
  %37 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 10, ptr %listen_interval.i, align 2
  %rates_ex_len.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 22
  %38 = ptrtoint ptr %rates_ex_len.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %rates_ex_len.i, align 1
  %rates_len.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 20
  %39 = ptrtoint ptr %rates_len.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %rates_len.i, align 2
  %last_associate.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 27
  %40 = ptrtoint ptr %last_associate.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %last_associate.i, align 4
  %ssid_len.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %ssid_len.i, align 8
  %flags.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 26
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags.i, align 8
  %atim_window.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 31
  %43 = ptrtoint ptr %atim_window.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %atim_window.i, align 4
  %44 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i = icmp eq i16 %44, 0
  %conv14.i = select i1 %tobool.not.i, i8 0, i8 3
  %erp_value.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 32
  %45 = ptrtoint ptr %erp_value.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv14.i, ptr %erp_value.i, align 2
  %broadcom_cap_exist.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 50
  %Turbo_Enable.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 45
  %46 = ptrtoint ptr %Turbo_Enable.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %Turbo_Enable.i, align 2
  %CountryIeLen.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 47
  %bssht.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 49
  %47 = call ptr @memset(ptr %CountryIeLen.i, i32 0, i32 257)
  %48 = call ptr @memset(ptr %broadcom_cap_exist.i, i32 0, i32 6)
  tail call void @HTInitializeBssDesc(ptr noundef %bssht.i) #13
  %freq.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 8
  %49 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp.i = icmp eq i8 %50, 2
  br i1 %cmp.i, label %if.then.i543, label %if.else.i

if.then.i543:                                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %received_channel.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 5
  %51 = ptrtoint ptr %received_channel.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %received_channel.i, align 2
  %channel.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %channel.i, align 2
  br label %if.end.i544

if.else.i:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %55, 4
  store i32 %or.i, ptr %flags.i, align 8
  br label %if.end.i544

if.end.i544:                                      ; preds = %if.else.i, %if.then.i543
  %wpa_ie_len.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 35
  %56 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %wpa_ie_len.i, align 8
  %rsn_ie_len.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 37
  %57 = ptrtoint ptr %rsn_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rsn_ie_len.i, align 4
  %len.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 9
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len.i, align 2
  %sub.i = add i16 %59, -36
  %call.i = tail call i32 @ieee80211_parse_info_param(ptr noundef %ieee, ptr noundef %info_element1, i16 noundef zeroext %sub.i, ptr noundef %call7.i.i, ptr noundef %stats) #13
  %mode.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 24
  %60 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %mode.i, align 4
  %61 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %freq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp27.i = icmp eq i8 %62, 2
  br i1 %cmp27.i, label %if.end68.thread.i, label %if.else31.i

if.else31.i:                                      ; preds = %if.end.i544
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 8
  %and33.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end40.i, label %if.end40.i.thread

if.end40.i:                                       ; preds = %if.else31.i
  %65 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %.pr.i.pr = load i8, ptr %mode.i, align 4
  %and42.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end50.i, label %if.end40.i.if.then44.i_crit_edge

if.end40.i.if.then44.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

if.end40.i.thread:                                ; preds = %if.else31.i
  %66 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 4, ptr %mode.i, align 4
  %and42.i654 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i654)
  %tobool43.not.i655 = icmp eq i32 %and42.i654, 0
  br i1 %tobool43.not.i655, label %if.end68.i.thread, label %if.end40.i.thread.if.then44.i_crit_edge

if.end40.i.thread.if.then44.i_crit_edge:          ; preds = %if.end40.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.end40.i.thread.if.then44.i_crit_edge, %if.end40.i.if.then44.i_crit_edge
  %.pr.i657 = phi i8 [ 4, %if.end40.i.thread.if.then44.i_crit_edge ], [ %.pr.i.pr, %if.end40.i.if.then44.i_crit_edge ]
  %67 = or i8 %.pr.i657, 2
  %68 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %mode.i, align 4
  br label %if.end68.i

if.end50.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.pr)
  %cmp53.i = icmp eq i8 %.pr.i.pr, 0
  br i1 %cmp53.i, label %do.body.i, label %if.end50.i.if.end68.i_crit_edge

if.end50.i.if.end68.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i

do.body.i:                                        ; preds = %if.end50.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %69 = load i32, ptr @ieee80211_debug_level, align 4
  %and56.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body.i.do.body80_crit_edge, label %do.end.i

do.body.i.do.body80_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

do.end.i:                                         ; preds = %do.body.i
  %ssid.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ssid_len.i, align 8
  %conv.i.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp.i.i.i = icmp eq i8 %71, 1
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %do.end.i.while.cond.i.i.i.preheader_crit_edge

do.end.i.while.cond.i.i.i.preheader_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i.preheader

land.lhs.true.i.i.i:                              ; preds = %do.end.i
  %72 = ptrtoint ptr %ssid.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ssid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %73)
  %cmp1.i.i.i = icmp eq i8 %73, 32
  br i1 %cmp1.i.i.i, label %land.lhs.true.i.i.i.if.then.i.i_crit_edge, label %land.lhs.true.i.i.i.while.cond.i.i.i.preheader_crit_edge

land.lhs.true.i.i.i.while.cond.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i.preheader

land.lhs.true.i.i.i.if.then.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

while.cond.i.i.i.preheader:                       ; preds = %land.lhs.true.i.i.i.while.cond.i.i.i.preheader_crit_edge, %do.end.i.while.cond.i.i.i.preheader_crit_edge
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.i.i.i.preheader
  %essid_len.addr.0.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %conv.i.i, %while.cond.i.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %essid_len.addr.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.if.then.i.i_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.if.then.i.i_crit_edge:           ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %dec.i.i.i = add nsw i32 %essid_len.addr.0.i.i.i, -1
  %arrayidx3.i.i.i = getelementptr i8, ptr %ssid.i, i32 %dec.i.i.i
  %74 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i.i.i, align 1
  %cmp5.not.i.i.i = icmp eq i8 %75, 0
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %if.end.i.i545

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i.i

if.then.i.i:                                      ; preds = %while.cond.i.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.i.if.then.i.i_crit_edge
  %76 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.207, i32 9)
  br label %escape_essid.exit.i

if.end.i.i545:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.208, i32 noundef %conv.i.i, ptr noundef %ssid.i) #13
  br label %escape_essid.exit.i

escape_essid.exit.i:                              ; preds = %if.end.i.i545, %if.then.i.i
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @escape_essid.escaped, ptr noundef %call7.i.i) #17
  br label %do.body80

if.end68.i:                                       ; preds = %if.end50.i.if.end68.i_crit_edge, %if.then44.i
  %77 = phi i8 [ %.pr.i.pr, %if.end50.i.if.end68.i_crit_edge ], [ %67, %if.then44.i ]
  %78 = ptrtoint ptr %bssht.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bssht.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool70.not.i = icmp eq i8 %79, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end87.i_crit_edge, label %if.then71.i

if.end68.i.if.end87.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.i

if.end68.i.thread:                                ; preds = %if.end40.i.thread
  %80 = ptrtoint ptr %bssht.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bssht.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool70.not.i660 = icmp eq i8 %81, 0
  br i1 %tobool70.not.i660, label %if.end68.i.thread.if.end87.i_crit_edge, label %if.end68.i.thread.if.end87.sink.split.i_crit_edge

if.end68.i.thread.if.end87.sink.split.i_crit_edge: ; preds = %if.end68.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.sink.split.i

if.end68.i.thread.if.end87.i_crit_edge:           ; preds = %if.end68.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.i

if.end68.thread.i:                                ; preds = %if.end.i544
  %82 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %mode.i, align 4
  %83 = ptrtoint ptr %bssht.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bssht.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool70.not179.i = icmp eq i8 %84, 0
  br i1 %tobool70.not179.i, label %if.end68.thread.i.if.end87.i_crit_edge, label %if.end68.thread.i.if.end87.sink.split.i_crit_edge

if.end68.thread.i.if.end87.sink.split.i_crit_edge: ; preds = %if.end68.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.sink.split.i

if.end68.thread.i.if.end87.i_crit_edge:           ; preds = %if.end68.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp74.i = icmp eq i8 %77, 1
  br i1 %cmp74.i, label %if.then71.i.if.end87.sink.split.i_crit_edge, label %if.else78.i

if.then71.i.if.end87.sink.split.i_crit_edge:      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.sink.split.i

if.else78.i:                                      ; preds = %if.then71.i
  %85 = and i8 %77, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool82.not.i = icmp eq i8 %85, 0
  br i1 %tobool82.not.i, label %if.else78.i.if.end87.i_crit_edge, label %if.else78.i.if.end87.sink.split.i_crit_edge

if.else78.i.if.end87.sink.split.i_crit_edge:      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.sink.split.i

if.else78.i.if.end87.i_crit_edge:                 ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87.i

if.end87.sink.split.i:                            ; preds = %if.else78.i.if.end87.sink.split.i_crit_edge, %if.then71.i.if.end87.sink.split.i_crit_edge, %if.end68.thread.i.if.end87.sink.split.i_crit_edge, %if.end68.i.thread.if.end87.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 32, %if.end68.thread.i.if.end87.sink.split.i_crit_edge ], [ 32, %if.then71.i.if.end87.sink.split.i_crit_edge ], [ 16, %if.else78.i.if.end87.sink.split.i_crit_edge ], [ 16, %if.end68.i.thread.if.end87.sink.split.i_crit_edge ]
  %86 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink.i, ptr %mode.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end87.sink.split.i, %if.else78.i.if.end87.i_crit_edge, %if.end68.thread.i.if.end87.i_crit_edge, %if.end68.i.thread.if.end87.i_crit_edge, %if.end68.i.if.end87.i_crit_edge
  %ssid88.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ssid_len.i, align 8
  %conv91.i = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %88)
  %cmp.i.i546 = icmp eq i8 %88, 1
  br i1 %cmp.i.i546, label %land.lhs.true.i.i548, label %if.end87.i.while.cond.i.i551.preheader_crit_edge

if.end87.i.while.cond.i.i551.preheader_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i551.preheader

land.lhs.true.i.i548:                             ; preds = %if.end87.i
  %89 = ptrtoint ptr %ssid88.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ssid88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %90)
  %cmp1.i.i547 = icmp eq i8 %90, 32
  br i1 %cmp1.i.i547, label %land.lhs.true.i.i548.if.then94.i_crit_edge, label %land.lhs.true.i.i548.while.cond.i.i551.preheader_crit_edge

land.lhs.true.i.i548.while.cond.i.i551.preheader_crit_edge: ; preds = %land.lhs.true.i.i548
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i551.preheader

land.lhs.true.i.i548.if.then94.i_crit_edge:       ; preds = %land.lhs.true.i.i548
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94.i

while.cond.i.i551.preheader:                      ; preds = %land.lhs.true.i.i548.while.cond.i.i551.preheader_crit_edge, %if.end87.i.while.cond.i.i551.preheader_crit_edge
  br label %while.cond.i.i551

while.cond.i.i551:                                ; preds = %while.body.i.i555.while.cond.i.i551_crit_edge, %while.cond.i.i551.preheader
  %essid_len.addr.0.i.i549 = phi i32 [ %dec.i.i552, %while.body.i.i555.while.cond.i.i551_crit_edge ], [ %conv91.i, %while.cond.i.i551.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i549)
  %tobool.not.i.i550 = icmp eq i32 %essid_len.addr.0.i.i549, 0
  br i1 %tobool.not.i.i550, label %while.cond.i.i551.if.then94.i_crit_edge, label %while.body.i.i555

while.cond.i.i551.if.then94.i_crit_edge:          ; preds = %while.cond.i.i551
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then94.i

while.body.i.i555:                                ; preds = %while.cond.i.i551
  %dec.i.i552 = add nsw i32 %essid_len.addr.0.i.i549, -1
  %arrayidx3.i.i553 = getelementptr i8, ptr %ssid88.i, i32 %dec.i.i552
  %91 = ptrtoint ptr %arrayidx3.i.i553 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx3.i.i553, align 1
  %cmp5.not.i.i554 = icmp eq i8 %92, 0
  br i1 %cmp5.not.i.i554, label %while.body.i.i555.while.cond.i.i551_crit_edge, label %while.body.i.i555.if.end101_crit_edge

while.body.i.i555.if.end101_crit_edge:            ; preds = %while.body.i.i555
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

while.body.i.i555.while.cond.i.i551_crit_edge:    ; preds = %while.body.i.i555
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i551

if.then94.i:                                      ; preds = %while.cond.i.i551.if.then94.i_crit_edge, %land.lhs.true.i.i548.if.then94.i_crit_edge
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 8
  %or96.i = or i32 %94, 1
  store i32 %or96.i, ptr %flags.i, align 8
  br label %if.end101

do.body80:                                        ; preds = %escape_essid.exit.i, %do.body.i.do.body80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %95 = load i32, ptr @ieee80211_debug_level, align 4
  %and81 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.out_crit_edge, label %do.end86

do.body80.out_crit_edge:                          ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end86:                                         ; preds = %do.body80
  %data88 = getelementptr inbounds %struct.ieee80211_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %len90 = getelementptr inbounds %struct.ieee80211_info_element, ptr %info_element1, i32 0, i32 1
  %96 = ptrtoint ptr %len90 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %len90, align 1
  %conv.i556 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp.i.i557 = icmp eq i8 %97, 1
  br i1 %cmp.i.i557, label %land.lhs.true.i.i559, label %do.end86.while.cond.i.i563.preheader_crit_edge

do.end86.while.cond.i.i563.preheader_crit_edge:   ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i563.preheader

land.lhs.true.i.i559:                             ; preds = %do.end86
  %98 = ptrtoint ptr %data88 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %99)
  %cmp1.i.i558 = icmp eq i8 %99, 32
  br i1 %cmp1.i.i558, label %land.lhs.true.i.i559.if.then.i568_crit_edge, label %land.lhs.true.i.i559.while.cond.i.i563.preheader_crit_edge

land.lhs.true.i.i559.while.cond.i.i563.preheader_crit_edge: ; preds = %land.lhs.true.i.i559
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i563.preheader

land.lhs.true.i.i559.if.then.i568_crit_edge:      ; preds = %land.lhs.true.i.i559
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i568

while.cond.i.i563.preheader:                      ; preds = %land.lhs.true.i.i559.while.cond.i.i563.preheader_crit_edge, %do.end86.while.cond.i.i563.preheader_crit_edge
  br label %while.cond.i.i563

while.cond.i.i563:                                ; preds = %while.body.i.i567.while.cond.i.i563_crit_edge, %while.cond.i.i563.preheader
  %essid_len.addr.0.i.i561 = phi i32 [ %dec.i.i564, %while.body.i.i567.while.cond.i.i563_crit_edge ], [ %conv.i556, %while.cond.i.i563.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i561)
  %tobool.not.i.i562 = icmp eq i32 %essid_len.addr.0.i.i561, 0
  br i1 %tobool.not.i.i562, label %while.cond.i.i563.if.then.i568_crit_edge, label %while.body.i.i567

while.cond.i.i563.if.then.i568_crit_edge:         ; preds = %while.cond.i.i563
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i568

while.body.i.i567:                                ; preds = %while.cond.i.i563
  %dec.i.i564 = add nsw i32 %essid_len.addr.0.i.i561, -1
  %arrayidx3.i.i565 = getelementptr i8, ptr %data88, i32 %dec.i.i564
  %100 = ptrtoint ptr %arrayidx3.i.i565 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx3.i.i565, align 1
  %cmp5.not.i.i566 = icmp eq i8 %101, 0
  br i1 %cmp5.not.i.i566, label %while.body.i.i567.while.cond.i.i563_crit_edge, label %if.end.i570

while.body.i.i567.while.cond.i.i563_crit_edge:    ; preds = %while.body.i.i567
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i563

if.then.i568:                                     ; preds = %while.cond.i.i563.if.then.i568_crit_edge, %land.lhs.true.i.i559.if.then.i568_crit_edge
  %102 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.207, i32 9)
  br label %escape_essid.exit571

if.end.i570:                                      ; preds = %while.body.i.i567
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i569 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.208, i32 noundef %conv.i556, ptr noundef %data88) #13
  br label %escape_essid.exit571

escape_essid.exit571:                             ; preds = %if.end.i570, %if.then.i568
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp = icmp eq i16 %3, 80
  %cond96 = select i1 %cmp, ptr @.str.192, ptr @.str.193
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @escape_essid.escaped, ptr noundef %addr3.i, ptr noundef nonnull %cond96) #17
  br label %out

if.end101:                                        ; preds = %if.then94.i, %while.body.i.i555.if.end101_crit_edge
  %SignalStrength.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 17
  %103 = ptrtoint ptr %SignalStrength.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %SignalStrength.i, align 1
  %conv98.i = zext i8 %104 to i16
  %mul.i = mul nuw nsw i16 %conv98.i, 70
  %div.i = udiv i16 %mul.i, 100
  %105 = trunc i16 %div.i to i8
  %conv99.i = add nuw i8 %105, 30
  %signal.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 2
  %106 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv99.i, ptr %signal.i, align 1
  %sub102.i = sub i8 70, %105
  %conv.i175.i = zext i8 %sub102.i to i16
  %add.i.i = add nuw nsw i16 %conv.i175.i, 1
  %107 = lshr i16 %add.i.i, 1
  %108 = trunc i16 %107 to i8
  %conv106.i = add i8 %108, -120
  %noise.i = getelementptr inbounds %struct.ieee80211_rx_stats, ptr %stats, i32 0, i32 3
  %109 = ptrtoint ptr %noise.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv106.i, ptr %noise.i, align 2
  %stats107.i = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 17
  %110 = call ptr @memcpy(ptr %stats107.i, ptr %stats, i32 112)
  %channel = getelementptr inbounds %struct.ieee80211_network, ptr %call7.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %channel, align 2
  %call102 = tail call i32 @is_legal_channel(ptr noundef %ieee, i8 noundef zeroext %112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.out_crit_edge, label %if.end105

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end105:                                        ; preds = %if.end101
  %bGlobalDomain = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 95
  %113 = ptrtoint ptr %bGlobalDomain to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bGlobalDomain, align 8, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool106.not = icmp eq i8 %114, 0
  br i1 %tobool106.not, label %if.end105.do.body161_crit_edge, label %if.then107

if.end105.do.body161_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp108 = icmp eq i16 %3, 80
  %dot11d_info = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 94
  %115 = ptrtoint ptr %dot11d_info to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dot11d_info, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %cmp112.not = icmp eq i16 %118, 0
  %119 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %channel, align 2
  br i1 %cmp108, label %if.then110, label %if.else132

if.then110:                                       ; preds = %if.then107
  br i1 %cmp112.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %if.then110
  %call116 = tail call i32 @is_legal_channel(ptr noundef %ieee, i8 noundef zeroext %120) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %if.then114.do.body161_crit_edge

if.then114.do.body161_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

if.then118:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ieee, align 8
  %123 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %channel, align 2
  %conv120 = zext i8 %124 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %122, ptr noundef nonnull @.str.194, i32 noundef %conv120) #17
  br label %out

if.else:                                          ; preds = %if.then110
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %120)
  %cmp124 = icmp ugt i8 %120, 11
  br i1 %cmp124, label %if.then126, label %if.else.do.body161_crit_edge

if.else.do.body161_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

if.then126:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %conv123 = zext i8 %120 to i32
  %125 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ieee, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %126, ptr noundef nonnull @.str.195, i32 noundef %conv123) #17
  br label %out

if.else132:                                       ; preds = %if.then107
  br i1 %cmp112.not, label %if.else147, label %if.then138

if.then138:                                       ; preds = %if.else132
  %call140 = tail call i32 @is_legal_channel(ptr noundef %ieee, i8 noundef zeroext %120) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then142, label %if.then138.do.body161_crit_edge

if.then138.do.body161_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

if.then142:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ieee, align 8
  %129 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %channel, align 2
  %conv145 = zext i8 %130 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %128, ptr noundef nonnull @.str.196, i32 noundef %conv145) #17
  br label %out

if.else147:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %120)
  %cmp150 = icmp ugt i8 %120, 14
  br i1 %cmp150, label %if.then152, label %if.else147.do.body161_crit_edge

if.else147.do.body161_crit_edge:                  ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

if.then152:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #15
  %conv149 = zext i8 %120 to i32
  %131 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ieee, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %132, ptr noundef nonnull @.str.197, i32 noundef %conv149) #17
  br label %out

do.body161:                                       ; preds = %if.else147.do.body161_crit_edge, %if.then138.do.body161_crit_edge, %if.else.do.body161_crit_edge, %if.then114.do.body161_crit_edge, %if.end105.do.body161_crit_edge
  %lock = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 45
  %call166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %current_network = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %ssid_len.i572 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 6
  %133 = ptrtoint ptr %ssid_len.i572 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ssid_len.i572, align 8
  %135 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %136)
  %cmp.i573 = icmp eq i8 %134, %136
  br i1 %cmp.i573, label %do.body161.land.lhs.true.i_crit_edge, label %lor.lhs.false.i

do.body161.land.lhs.true.i_crit_edge:             ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %do.body161
  %iw_mode.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %137 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %iw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp4.i = icmp eq i32 %138, 2
  br i1 %cmp4.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end216_crit_edge

lor.lhs.false.i.if.end216_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %do.body161.land.lhs.true.i_crit_edge
  %channel.i574 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %139 = ptrtoint ptr %channel.i574 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %channel.i574, align 2
  %141 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp9.i = icmp eq i8 %140, %142
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.if.end216_crit_edge

land.lhs.true.i.if.end216_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %current_network, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i575 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i575, label %land.lhs.true14.i, label %land.lhs.true11.i.if.end216_crit_edge

land.lhs.true11.i.if.end216_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

land.lhs.true14.i:                                ; preds = %land.lhs.true11.i
  %ssid.i576 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 5
  %conv19.i = zext i8 %134 to i32
  %bcmp55.i = tail call i32 @bcmp(ptr %ssid.i576, ptr %ssid88.i, i32 %conv19.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i)
  %tobool21.not.i = icmp eq i32 %bcmp55.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true14.i.land.lhs.true26.i_crit_edge, label %lor.lhs.false22.i

land.lhs.true14.i.land.lhs.true26.i_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i

lor.lhs.false22.i:                                ; preds = %land.lhs.true14.i
  %iw_mode23.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %143 = ptrtoint ptr %iw_mode23.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %iw_mode23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp24.i = icmp eq i32 %144, 2
  br i1 %cmp24.i, label %lor.lhs.false22.i.land.lhs.true26.i_crit_edge, label %lor.lhs.false22.i.if.end216_crit_edge

lor.lhs.false22.i.if.end216_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

lor.lhs.false22.i.land.lhs.true26.i_crit_edge:    ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i

land.lhs.true26.i:                                ; preds = %lor.lhs.false22.i.land.lhs.true26.i_crit_edge, %land.lhs.true14.i.land.lhs.true26.i_crit_edge
  %capability.i577 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 18
  %145 = ptrtoint ptr %capability.i577 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %capability.i577, align 8
  %147 = ptrtoint ptr %capability5.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %capability5.i, align 8
  %149 = xor i16 %148, %146
  %150 = and i16 %149, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %if.then173, label %land.lhs.true26.i.if.end216_crit_edge

land.lhs.true26.i.if.end216_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

if.then173:                                       ; preds = %land.lhs.true26.i
  tail call fastcc void @update_network(ptr noundef %current_network, ptr noundef nonnull %call7.i.i)
  %mode = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 24
  %152 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %mode, align 4
  %154 = zext i8 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %153, label %if.then173.if.end198_crit_edge [
    i8 16, label %if.then173.land.lhs.true_crit_edge
    i8 4, label %if.then173.land.lhs.true_crit_edge707
  ]

if.then173.land.lhs.true_crit_edge707:            ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then173.land.lhs.true_crit_edge:               ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then173.if.end198_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

land.lhs.true:                                    ; preds = %if.then173.land.lhs.true_crit_edge, %if.then173.land.lhs.true_crit_edge707
  %berp_info_valid = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 55
  %155 = ptrtoint ptr %berp_info_valid to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %berp_info_valid, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool185.not = icmp eq i8 %156, 0
  br i1 %tobool185.not, label %land.lhs.true.if.end198_crit_edge, label %if.then187

land.lhs.true.if.end198_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

if.then187:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %erp_value = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 32
  %157 = ptrtoint ptr %erp_value to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %erp_value, align 2
  %buseprotection196 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 56
  %159 = lshr i8 %158, 1
  %.lobit = and i8 %159, 1
  %160 = ptrtoint ptr %buseprotection196 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.lobit, ptr %buseprotection196, align 2
  br label %if.end198

if.end198:                                        ; preds = %if.then187, %land.lhs.true.if.end198_crit_edge, %if.then173.if.end198_crit_edge
  %161 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %beacon, align 1
  %163 = and i16 %162, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %163)
  %cmp.i578.not = icmp eq i16 %163, -32768
  br i1 %cmp.i578.not, label %if.then203, label %if.else208

if.then203:                                       ; preds = %if.end198
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 83
  %164 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %165)
  %cmp204 = icmp eq i32 %165, 5
  br i1 %cmp204, label %if.then206, label %if.then203.if.end216_crit_edge

if.then203.if.end216_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  %LinkDetectInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 156
  %166 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %LinkDetectInfo, align 8
  %inc = add i32 %167, 1
  store i32 %inc, ptr %LinkDetectInfo, align 8
  br label %if.end216

if.else208:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #15
  %168 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags.i, align 8
  %and210 = and i32 %169, -2
  %flags212 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 26
  %170 = ptrtoint ptr %flags212 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags212, align 8
  %and213 = and i32 %171, 1
  %or = or i32 %and213, %and210
  store i32 %or, ptr %flags.i, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.else208, %if.then206, %if.then203.if.end216_crit_edge, %land.lhs.true26.i.if.end216_crit_edge, %lor.lhs.false22.i.if.end216_crit_edge, %land.lhs.true11.i.if.end216_crit_edge, %land.lhs.true.i.if.end216_crit_edge, %lor.lhs.false.i.if.end216_crit_edge
  %network_list = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 39
  %172 = ptrtoint ptr %network_list to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pn680 = load ptr, ptr %network_list, align 4
  %cmp219682 = icmp eq ptr %.pn680, %network_list
  br i1 %cmp219682, label %if.end216.if.then241.critedge_crit_edge, label %for.body.lr.ph

if.end216.if.then241.critedge_crit_edge:          ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then241.critedge

for.body.lr.ph:                                   ; preds = %if.end216
  %173 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ssid_len.i, align 8
  %iw_mode.i582 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn684 = phi ptr [ %.pn680, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %oldest.0683 = phi ptr [ null, %for.body.lr.ph ], [ %oldest.1, %for.inc.for.body_crit_edge ]
  %target.0685 = getelementptr i8, ptr %.pn684, i32 -796
  %ssid_len.i579 = getelementptr i8, ptr %.pn684, i32 -748
  %175 = ptrtoint ptr %ssid_len.i579 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ssid_len.i579, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %176, i8 %174)
  %cmp.i581 = icmp eq i8 %176, %174
  br i1 %cmp.i581, label %for.body.land.lhs.true.i588_crit_edge, label %lor.lhs.false.i584

for.body.land.lhs.true.i588_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i588

lor.lhs.false.i584:                               ; preds = %for.body
  %177 = ptrtoint ptr %iw_mode.i582 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %iw_mode.i582, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %178)
  %cmp4.i583 = icmp eq i32 %178, 2
  br i1 %cmp4.i583, label %lor.lhs.false.i584.land.lhs.true.i588_crit_edge, label %lor.lhs.false.i584.if.end224_crit_edge

lor.lhs.false.i584.if.end224_crit_edge:           ; preds = %lor.lhs.false.i584
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

lor.lhs.false.i584.land.lhs.true.i588_crit_edge:  ; preds = %lor.lhs.false.i584
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i588

land.lhs.true.i588:                               ; preds = %lor.lhs.false.i584.land.lhs.true.i588_crit_edge, %for.body.land.lhs.true.i588_crit_edge
  %channel.i585 = getelementptr i8, ptr %.pn684, i32 -790
  %179 = ptrtoint ptr %channel.i585 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %channel.i585, align 2
  %181 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %180, i8 %182)
  %cmp9.i587 = icmp eq i8 %180, %182
  br i1 %cmp9.i587, label %land.lhs.true11.i591, label %land.lhs.true.i588.if.end224_crit_edge

land.lhs.true.i588.if.end224_crit_edge:           ; preds = %land.lhs.true.i588
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

land.lhs.true11.i591:                             ; preds = %land.lhs.true.i588
  %bcmp.i589 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %target.0685, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i589)
  %tobool.not.i590 = icmp eq i32 %bcmp.i589, 0
  br i1 %tobool.not.i590, label %land.lhs.true14.i597, label %land.lhs.true11.i591.if.end224_crit_edge

land.lhs.true11.i591.if.end224_crit_edge:         ; preds = %land.lhs.true11.i591
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

land.lhs.true14.i597:                             ; preds = %land.lhs.true11.i591
  %ssid.i592 = getelementptr i8, ptr %.pn684, i32 -781
  %conv19.i594 = zext i8 %176 to i32
  %bcmp55.i595 = tail call i32 @bcmp(ptr %ssid.i592, ptr %ssid88.i, i32 %conv19.i594) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i595)
  %tobool21.not.i596 = icmp eq i32 %bcmp55.i595, 0
  br i1 %tobool21.not.i596, label %land.lhs.true14.i597.land.lhs.true26.i604_crit_edge, label %lor.lhs.false22.i600

land.lhs.true14.i597.land.lhs.true26.i604_crit_edge: ; preds = %land.lhs.true14.i597
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i604

lor.lhs.false22.i600:                             ; preds = %land.lhs.true14.i597
  %183 = ptrtoint ptr %iw_mode.i582 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %iw_mode.i582, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp24.i599 = icmp eq i32 %184, 2
  br i1 %cmp24.i599, label %lor.lhs.false22.i600.land.lhs.true26.i604_crit_edge, label %lor.lhs.false22.i600.if.end224_crit_edge

lor.lhs.false22.i600.if.end224_crit_edge:         ; preds = %lor.lhs.false22.i600
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

lor.lhs.false22.i600.land.lhs.true26.i604_crit_edge: ; preds = %lor.lhs.false22.i600
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i604

land.lhs.true26.i604:                             ; preds = %lor.lhs.false22.i600.land.lhs.true26.i604_crit_edge, %land.lhs.true14.i597.land.lhs.true26.i604_crit_edge
  %capability.i601 = getelementptr i8, ptr %.pn684, i32 -572
  %185 = ptrtoint ptr %capability.i601 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %capability.i601, align 8
  %187 = ptrtoint ptr %capability5.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %capability5.i, align 8
  %189 = xor i16 %188, %186
  %190 = and i16 %189, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %do.body299, label %land.lhs.true26.i604.if.end224_crit_edge

land.lhs.true26.i604.if.end224_crit_edge:         ; preds = %land.lhs.true26.i604
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.end224:                                        ; preds = %land.lhs.true26.i604.if.end224_crit_edge, %lor.lhs.false22.i600.if.end224_crit_edge, %land.lhs.true11.i591.if.end224_crit_edge, %land.lhs.true.i588.if.end224_crit_edge, %lor.lhs.false.i584.if.end224_crit_edge
  %tobool225.not = icmp eq ptr %oldest.0683, null
  br i1 %tobool225.not, label %if.end224.if.then230_crit_edge, label %lor.lhs.false226

if.end224.if.then230_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then230

lor.lhs.false226:                                 ; preds = %if.end224
  %last_scanned = getelementptr i8, ptr %.pn684, i32 -540
  %192 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %last_scanned, align 8
  %last_scanned227 = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0683, i32 0, i32 23
  %194 = ptrtoint ptr %last_scanned227 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %last_scanned227, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp228 = icmp ult i32 %193, %195
  br i1 %cmp228, label %lor.lhs.false226.if.then230_crit_edge, label %lor.lhs.false226.for.inc_crit_edge

lor.lhs.false226.for.inc_crit_edge:               ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false226.if.then230_crit_edge:            ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then230

if.then230:                                       ; preds = %lor.lhs.false226.if.then230_crit_edge, %if.end224.if.then230_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then230, %lor.lhs.false226.for.inc_crit_edge
  %oldest.1 = phi ptr [ %target.0685, %if.then230 ], [ %oldest.0683, %lor.lhs.false226.for.inc_crit_edge ]
  %196 = ptrtoint ptr %.pn684 to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pn = load ptr, ptr %.pn684, align 4
  %cmp219 = icmp eq ptr %.pn, %network_list
  br i1 %cmp219, label %for.inc.if.then241.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.then241.critedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then241.critedge

if.then241.critedge:                              ; preds = %for.inc.if.then241.critedge_crit_edge, %if.end216.if.then241.critedge_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %if.end216.if.then241.critedge_crit_edge ], [ %oldest.1, %for.inc.if.then241.critedge_crit_edge ]
  %network_free_list = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 38
  %197 = ptrtoint ptr %network_free_list to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile ptr, ptr %network_free_list, align 4
  %cmp.i608.not = icmp eq ptr %198, %network_free_list
  br i1 %cmp.i608.not, label %if.then244, label %if.else261

if.then244:                                       ; preds = %if.then241.critedge
  %list245 = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0.lcssa, i32 0, i32 58
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list245) #13
  br i1 %call.i.i, label %if.end.i.i610, label %if.then244.list_del.exit_crit_edge

if.then244.list_del.exit_crit_edge:               ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i610:                                    ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0.lcssa, i32 0, i32 58, i32 1
  %199 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %prev.i.i, align 4
  %201 = ptrtoint ptr %list245 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %list245, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %200, ptr %prev1.i.i.i, align 4
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %202, ptr %200, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i610, %if.then244.list_del.exit_crit_edge
  %205 = ptrtoint ptr %list245 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr inttoptr (i32 256 to ptr), ptr %list245, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0.lcssa, i32 0, i32 58, i32 1
  %206 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %207 = load i32, ptr @ieee80211_debug_level, align 4
  %and247 = and i32 %207, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %list_del.exit.do.body270_crit_edge, label %do.end252

list_del.exit.do.body270_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body270

do.end252:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ssid = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0.lcssa, i32 0, i32 5
  %ssid_len = getelementptr inbounds %struct.ieee80211_network, ptr %oldest.0.lcssa, i32 0, i32 6
  %208 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ssid_len, align 8
  tail call fastcc void @escape_essid(ptr noundef %ssid, i8 noundef zeroext %209)
  %call257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @escape_essid.escaped, ptr noundef %oldest.0.lcssa) #17
  br label %do.body270

if.else261:                                       ; preds = %if.then241.critedge
  %add.ptr266 = getelementptr i8, ptr %198, i32 -796
  %call.i.i611 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %198) #13
  br i1 %call.i.i611, label %if.end.i.i614, label %if.else261.list_del.exit616_crit_edge

if.else261.list_del.exit616_crit_edge:            ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit616

if.end.i.i614:                                    ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i612 = getelementptr inbounds %struct.list_head, ptr %198, i32 0, i32 1
  %210 = ptrtoint ptr %prev.i.i612 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %prev.i.i612, align 4
  %212 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %198, align 4
  %prev1.i.i.i613 = getelementptr inbounds %struct.list_head, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %prev1.i.i.i613 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %211, ptr %prev1.i.i.i613, align 4
  %215 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile ptr %213, ptr %211, align 4
  br label %list_del.exit616

list_del.exit616:                                 ; preds = %if.end.i.i614, %if.else261.list_del.exit616_crit_edge
  %216 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr inttoptr (i32 256 to ptr), ptr %198, align 4
  %prev.i615 = getelementptr inbounds %struct.list_head, ptr %198, i32 0, i32 1
  %217 = ptrtoint ptr %prev.i615 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i615, align 4
  br label %do.body270

do.body270:                                       ; preds = %list_del.exit616, %do.end252, %list_del.exit.do.body270_crit_edge
  %target.1 = phi ptr [ %oldest.0.lcssa, %do.end252 ], [ %oldest.0.lcssa, %list_del.exit.do.body270_crit_edge ], [ %add.ptr266, %list_del.exit616 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %218 = load i32, ptr @ieee80211_debug_level, align 4
  %and271 = and i32 %218, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %do.body270.do.end290_crit_edge, label %do.end276

do.body270.do.end290_crit_edge:                   ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end290

do.end276:                                        ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #15
  %219 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ssid_len.i, align 8
  tail call fastcc void @escape_essid(ptr noundef %ssid88.i, i8 noundef zeroext %220)
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp284 = icmp eq i16 %3, 80
  %cond286 = select i1 %cmp284, ptr @.str.192, ptr @.str.193
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @escape_essid.escaped, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %cond286) #17
  br label %do.end290

do.end290:                                        ; preds = %do.end276, %do.body270.do.end290_crit_edge
  %221 = call ptr @memcpy(ptr %target.1, ptr %call7.i.i, i32 808)
  %list291 = getelementptr inbounds %struct.ieee80211_network, ptr %target.1, i32 0, i32 58
  %prev.i617 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 39, i32 1
  %222 = ptrtoint ptr %prev.i617 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %prev.i617, align 4
  %call.i.i618 = tail call zeroext i1 @__list_add_valid(ptr noundef %list291, ptr noundef %223, ptr noundef %network_list) #13
  br i1 %call.i.i618, label %if.end.i.i619, label %do.end290.list_add_tail.exit_crit_edge

do.end290.list_add_tail.exit_crit_edge:           ; preds = %do.end290
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i619:                                    ; preds = %do.end290
  call void @__sanitizer_cov_trace_pc() #15
  %224 = ptrtoint ptr %prev.i617 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %list291, ptr %prev.i617, align 4
  %225 = ptrtoint ptr %list291 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %network_list, ptr %list291, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_network, ptr %target.1, i32 0, i32 58, i32 1
  %226 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %223, ptr %prev3.i.i, align 4
  %227 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %list291, ptr %223, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i619, %do.end290.list_add_tail.exit_crit_edge
  %softmac_features = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 99
  %228 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %softmac_features, align 2
  %230 = and i16 %229, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %tobool295.not = icmp eq i16 %230, 0
  br i1 %tobool295.not, label %list_add_tail.exit.if.end390_crit_edge, label %list_add_tail.exit.if.end390.sink.split_crit_edge

list_add_tail.exit.if.end390.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390.sink.split

list_add_tail.exit.if.end390_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390

do.body299:                                       ; preds = %land.lhs.true26.i604
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %231 = load i32, ptr @ieee80211_debug_level, align 4
  %and300 = and i32 %231, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %do.body299.do.end319_crit_edge, label %do.end305

do.body299.do.end319_crit_edge:                   ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end319

do.end305:                                        ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #15
  %ssid_len.i579.le = getelementptr i8, ptr %.pn684, i32 -748
  %232 = ptrtoint ptr %ssid_len.i579.le to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %ssid_len.i579.le, align 8
  tail call fastcc void @escape_essid(ptr noundef %ssid.i592, i8 noundef zeroext %233)
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %3)
  %cmp313 = icmp eq i16 %3, 80
  %cond315 = select i1 %cmp313, ptr @.str.192, ptr @.str.193
  %call316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @escape_essid.escaped, ptr noundef %target.0685, ptr noundef nonnull %cond315) #17
  br label %do.end319

do.end319:                                        ; preds = %do.end305, %do.body299.do.end319_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %234 = load volatile i32, ptr @jiffies, align 128
  %last_scanned320 = getelementptr i8, ptr %.pn684, i32 -540
  %235 = ptrtoint ptr %last_scanned320 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %last_scanned320, align 8
  %scan_age = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 42
  %237 = ptrtoint ptr %scan_age to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %scan_age, align 8
  %239 = add i32 %236, %238
  %sub = sub i32 %234, %239
  %240 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %240, i32 2)
  %241 = load i16, ptr %beacon, align 1
  %242 = and i16 %241, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %242)
  %cmp.i620.not = icmp eq i16 %242, -32768
  br i1 %cmp.i620.not, label %do.end319.if.end337_crit_edge, label %if.then330

do.end319.if.end337_crit_edge:                    ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end337

if.then330:                                       ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #15
  %243 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %flags.i, align 8
  %and332 = and i32 %244, -2
  %flags333 = getelementptr i8, ptr %.pn684, i32 -532
  %245 = ptrtoint ptr %flags333 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %flags333, align 8
  %and334 = and i32 %246, 1
  %or335 = or i32 %and334, %and332
  store i32 %or335, ptr %flags.i, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then330, %do.end319.if.end337_crit_edge
  %247 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %flags.i, align 8
  %and339 = and i32 %248, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %cmp340.not = icmp eq i32 %and339, 0
  br i1 %cmp340.not, label %if.end337.if.end380_crit_edge, label %land.lhs.true342

if.end337.if.end380_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

land.lhs.true342:                                 ; preds = %if.end337
  %249 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %cmp345.not = icmp eq i8 %250, 0
  br i1 %cmp345.not, label %land.lhs.true342.lor.lhs.false356_crit_edge, label %land.lhs.true347

land.lhs.true342.lor.lhs.false356_crit_edge:      ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false356

land.lhs.true347:                                 ; preds = %land.lhs.true342
  %conv344 = zext i8 %250 to i32
  %call354 = tail call i32 @strncmp(ptr noundef %ssid.i592, ptr noundef %ssid88.i, i32 noundef %conv344)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %land.lhs.true347.lor.lhs.false356_crit_edge, label %land.lhs.true347.if.end380.thread_crit_edge

land.lhs.true347.if.end380.thread_crit_edge:      ; preds = %land.lhs.true347
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380.thread

land.lhs.true347.lor.lhs.false356_crit_edge:      ; preds = %land.lhs.true347
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false356

lor.lhs.false356:                                 ; preds = %land.lhs.true347.lor.lhs.false356_crit_edge, %land.lhs.true342.lor.lhs.false356_crit_edge
  %251 = ptrtoint ptr %ssid_len.i572 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %ssid_len.i572, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %252, i8 %250)
  %cmp362 = icmp eq i8 %252, %250
  br i1 %cmp362, label %land.lhs.true364, label %lor.lhs.false356.if.end380_crit_edge

lor.lhs.false356.if.end380_crit_edge:             ; preds = %lor.lhs.false356
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

land.lhs.true364:                                 ; preds = %lor.lhs.false356
  %conv361 = zext i8 %250 to i32
  %ssid366 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 5
  %call372 = tail call i32 @strncmp(ptr noundef %ssid366, ptr noundef %ssid88.i, i32 noundef %conv361)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %cmp373 = icmp eq i32 %call372, 0
  br i1 %cmp373, label %land.lhs.true375, label %land.lhs.true364.if.end380_crit_edge

land.lhs.true364.if.end380_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

land.lhs.true375:                                 ; preds = %land.lhs.true364
  %state376 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 83
  %253 = ptrtoint ptr %state376 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %state376, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp377 = icmp eq i32 %254, 0
  br i1 %cmp377, label %land.lhs.true375.if.end380.thread_crit_edge, label %land.lhs.true375.if.end380_crit_edge

land.lhs.true375.if.end380_crit_edge:             ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

land.lhs.true375.if.end380.thread_crit_edge:      ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380.thread

if.end380.thread:                                 ; preds = %land.lhs.true375.if.end380.thread_crit_edge, %land.lhs.true347.if.end380.thread_crit_edge
  tail call fastcc void @update_network(ptr noundef %target.0685, ptr noundef nonnull %call7.i.i)
  br label %land.lhs.true383

if.end380:                                        ; preds = %land.lhs.true375.if.end380_crit_edge, %land.lhs.true364.if.end380_crit_edge, %lor.lhs.false356.if.end380_crit_edge, %if.end337.if.end380_crit_edge
  tail call fastcc void @update_network(ptr noundef %target.0685, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool382.not = icmp slt i32 %sub, 0
  br i1 %tobool382.not, label %if.end380.if.end390_crit_edge, label %if.end380.land.lhs.true383_crit_edge

if.end380.land.lhs.true383_crit_edge:             ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true383

if.end380.if.end390_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390

land.lhs.true383:                                 ; preds = %if.end380.land.lhs.true383_crit_edge, %if.end380.thread
  %softmac_features384 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 99
  %255 = ptrtoint ptr %softmac_features384 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %softmac_features384, align 2
  %257 = and i16 %256, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool387.not = icmp eq i16 %257, 0
  br i1 %tobool387.not, label %land.lhs.true383.if.end390_crit_edge, label %land.lhs.true383.if.end390.sink.split_crit_edge

land.lhs.true383.if.end390.sink.split_crit_edge:  ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390.sink.split

land.lhs.true383.if.end390_crit_edge:             ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end390

if.end390.sink.split:                             ; preds = %land.lhs.true383.if.end390.sink.split_crit_edge, %list_add_tail.exit.if.end390.sink.split_crit_edge
  tail call void @ieee80211_softmac_new_net(ptr noundef %ieee, ptr noundef nonnull %call7.i.i) #13
  br label %if.end390

if.end390:                                        ; preds = %if.end390.sink.split, %land.lhs.true383.if.end390_crit_edge, %if.end380.if.end390_crit_edge, %list_add_tail.exit.if.end390_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call166) #13
  %258 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %259 = load i16, ptr %beacon, align 1
  %260 = and i16 %259, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %260)
  %cmp.i622.not = icmp eq i16 %260, -32768
  br i1 %cmp.i622.not, label %land.lhs.true396, label %if.end390.out_crit_edge

if.end390.out_crit_edge:                          ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true396:                                 ; preds = %if.end390
  %261 = ptrtoint ptr %ssid_len.i572 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %ssid_len.i572, align 8
  %263 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %262, i8 %264)
  %cmp.i626 = icmp eq i8 %262, %264
  br i1 %cmp.i626, label %land.lhs.true396.land.lhs.true.i633_crit_edge, label %lor.lhs.false.i629

land.lhs.true396.land.lhs.true.i633_crit_edge:    ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i633

lor.lhs.false.i629:                               ; preds = %land.lhs.true396
  %iw_mode.i627 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %265 = ptrtoint ptr %iw_mode.i627 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %iw_mode.i627, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %266)
  %cmp4.i628 = icmp eq i32 %266, 2
  br i1 %cmp4.i628, label %lor.lhs.false.i629.land.lhs.true.i633_crit_edge, label %lor.lhs.false.i629.out_crit_edge

lor.lhs.false.i629.out_crit_edge:                 ; preds = %lor.lhs.false.i629
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false.i629.land.lhs.true.i633_crit_edge:  ; preds = %lor.lhs.false.i629
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i633

land.lhs.true.i633:                               ; preds = %lor.lhs.false.i629.land.lhs.true.i633_crit_edge, %land.lhs.true396.land.lhs.true.i633_crit_edge
  %channel.i630 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 1
  %267 = ptrtoint ptr %channel.i630 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %channel.i630, align 2
  %269 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %268, i8 %270)
  %cmp9.i632 = icmp eq i8 %268, %270
  br i1 %cmp9.i632, label %land.lhs.true11.i636, label %land.lhs.true.i633.out_crit_edge

land.lhs.true.i633.out_crit_edge:                 ; preds = %land.lhs.true.i633
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true11.i636:                             ; preds = %land.lhs.true.i633
  %bcmp.i634 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %current_network, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i634)
  %tobool.not.i635 = icmp eq i32 %bcmp.i634, 0
  br i1 %tobool.not.i635, label %land.lhs.true14.i642, label %land.lhs.true11.i636.out_crit_edge

land.lhs.true11.i636.out_crit_edge:               ; preds = %land.lhs.true11.i636
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true14.i642:                             ; preds = %land.lhs.true11.i636
  %ssid.i637 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 5
  %conv19.i639 = zext i8 %262 to i32
  %bcmp55.i640 = tail call i32 @bcmp(ptr %ssid.i637, ptr %ssid88.i, i32 %conv19.i639) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55.i640)
  %tobool21.not.i641 = icmp eq i32 %bcmp55.i640, 0
  br i1 %tobool21.not.i641, label %land.lhs.true14.i642.land.lhs.true26.i649_crit_edge, label %lor.lhs.false22.i645

land.lhs.true14.i642.land.lhs.true26.i649_crit_edge: ; preds = %land.lhs.true14.i642
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i649

lor.lhs.false22.i645:                             ; preds = %land.lhs.true14.i642
  %iw_mode23.i643 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 43
  %271 = ptrtoint ptr %iw_mode23.i643 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %iw_mode23.i643, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %272)
  %cmp24.i644 = icmp eq i32 %272, 2
  br i1 %cmp24.i644, label %lor.lhs.false22.i645.land.lhs.true26.i649_crit_edge, label %lor.lhs.false22.i645.out_crit_edge

lor.lhs.false22.i645.out_crit_edge:               ; preds = %lor.lhs.false22.i645
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false22.i645.land.lhs.true26.i649_crit_edge: ; preds = %lor.lhs.false22.i645
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26.i649

land.lhs.true26.i649:                             ; preds = %lor.lhs.false22.i645.land.lhs.true26.i649_crit_edge, %land.lhs.true14.i642.land.lhs.true26.i649_crit_edge
  %capability.i646 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 18
  %273 = ptrtoint ptr %capability.i646 to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %capability.i646, align 8
  %275 = ptrtoint ptr %capability5.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %capability5.i, align 8
  %277 = xor i16 %276, %274
  %278 = and i16 %277, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %land.lhs.true400, label %land.lhs.true26.i649.out_crit_edge

land.lhs.true26.i649.out_crit_edge:               ; preds = %land.lhs.true26.i649
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true400:                                 ; preds = %land.lhs.true26.i649
  %state401 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 83
  %280 = ptrtoint ptr %state401 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %state401, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %281)
  %cmp402 = icmp eq i32 %281, 5
  br i1 %cmp402, label %if.then404, label %land.lhs.true400.out_crit_edge

land.lhs.true400.out_crit_edge:                   ; preds = %land.lhs.true400
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then404:                                       ; preds = %land.lhs.true400
  %handle_beacon = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 190
  %282 = ptrtoint ptr %handle_beacon to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %handle_beacon, align 8
  %tobool405.not = icmp eq ptr %283, null
  br i1 %tobool405.not, label %if.then404.out_crit_edge, label %if.then406

if.then404.out_crit_edge:                         ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then406:                                       ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #15
  %284 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ieee, align 8
  %call410 = tail call i32 %283(ptr noundef %285, ptr noundef %beacon, ptr noundef %current_network) #13
  br label %out

out:                                              ; preds = %if.then406, %if.then404.out_crit_edge, %land.lhs.true400.out_crit_edge, %land.lhs.true26.i649.out_crit_edge, %lor.lhs.false22.i645.out_crit_edge, %land.lhs.true11.i636.out_crit_edge, %land.lhs.true.i633.out_crit_edge, %lor.lhs.false.i629.out_crit_edge, %if.end390.out_crit_edge, %if.then152, %if.then142, %if.then126, %if.then118, %if.end101.out_crit_edge, %escape_essid.exit571, %do.body80.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rx_frame_softmac(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_frag_cache_find(ptr noundef %ieee, i32 noundef %seq, i32 noundef %frag, i8 noundef zeroext %tid, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag)
  %cmp22 = icmp eq i32 %frag, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049
  %skb = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.body, label %if.end12

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %seq7 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 1
  %6 = ptrtoint ptr %seq7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq7, align 4
  %last_frag = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 2
  %8 = ptrtoint ptr %last_frag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_frag, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %7, i32 noundef %9) #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #13
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb, align 4
  br label %for.inc

if.end12:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %skb, align 4
  %tobool14.not = icmp eq ptr %.pr, null
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %land.lhs.true15

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true15:                                  ; preds = %if.end12
  %seq16 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 1
  %14 = ptrtoint ptr %seq16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %seq)
  %cmp17 = icmp eq i32 %15, %seq
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %last_frag19 = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 2
  %16 = ptrtoint ptr %last_frag19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_frag19, align 4
  %add20 = add i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %frag)
  %cmp21 = icmp eq i32 %add20, %frag
  %or.cond = or i1 %cmp22, %cmp21
  br i1 %or.cond, label %land.lhs.true23, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %src_addr = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src_addr, ptr noundef dereferenceable(6) %src, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp25 = icmp eq i32 %bcmp, 0
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %dst_addr = getelementptr %struct.ieee80211_device, ptr %ieee, i32 0, i32 76, i32 %idxprom, i32 %i.049, i32 5
  %bcmp47 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst_addr, ptr noundef dereferenceable(6) %dst, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp47)
  %cmp29 = icmp eq i32 %bcmp47, 0
  br i1 %cmp29, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true26.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %do.end9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx2, %land.lhs.true26.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dot11d_update_country_ie(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @escape_essid(ptr noundef %essid, i8 noundef zeroext %essid_len) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %essid_len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %essid_len)
  %cmp.i = icmp eq i8 %essid_len, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.while.cond.i.preheader_crit_edge

entry.while.cond.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %essid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %essid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp1.i = icmp eq i8 %1, 32
  br i1 %cmp1.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.while.cond.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.preheader

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.cond.i.preheader:                           ; preds = %land.lhs.true.i.while.cond.i.preheader_crit_edge, %entry.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %essid_len.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %conv, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i)
  %tobool.not.i = icmp eq i32 %essid_len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.then_crit_edge, label %while.body.i

while.cond.i.if.then_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %essid_len.addr.0.i, -1
  %arrayidx3.i = getelementptr i8, ptr %essid, i32 %dec.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i8 %3, 0
  br i1 %cmp5.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.then:                                          ; preds = %while.cond.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge
  %4 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.207, i32 9)
  br label %return

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.208, i32 noundef %conv, ptr noundef %essid)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_legal_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_network(ptr noundef %dst, ptr noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %stats = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 17
  %stats1 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 17
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 112)
  %capability = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 18
  %1 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %capability, align 8
  %capability2 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 18
  %3 = ptrtoint ptr %capability2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %capability2, align 8
  %rates = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 19
  %rates3 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 19
  %rates_len = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 20
  %4 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rates_len, align 2
  %conv = zext i8 %5 to i32
  %6 = call ptr @memcpy(ptr %rates, ptr %rates3, i32 %conv)
  %7 = load i8, ptr %rates_len, align 2
  %rates_len6 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 20
  %8 = ptrtoint ptr %rates_len6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rates_len6, align 2
  %rates_ex = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 21
  %rates_ex8 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 21
  %rates_ex_len = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 22
  %9 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rates_ex_len, align 1
  %conv10 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %rates_ex, ptr %rates_ex8, i32 %conv10)
  %12 = load i8, ptr %rates_ex_len, align 1
  %rates_ex_len12 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 22
  %13 = ptrtoint ptr %rates_ex_len12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rates_ex_len12, align 1
  %ssid_len = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 6
  %14 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not = icmp eq i8 %15, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ssid = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 5
  %ssid_len16 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 6
  %16 = ptrtoint ptr %ssid_len16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssid_len16, align 8
  %conv17 = zext i8 %17 to i32
  %18 = call ptr @memset(ptr %ssid, i32 0, i32 %conv17)
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 8
  store i8 %20, ptr %ssid_len16, align 8
  %ssid22 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 5
  %21 = load i8, ptr %ssid_len, align 8
  %conv25 = zext i8 %21 to i32
  %22 = call ptr @memcpy(ptr %ssid, ptr %ssid22, i32 %conv25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 24
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode, align 4
  %mode26 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 24
  %25 = ptrtoint ptr %mode26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %mode26, align 4
  %flags = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 26
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %flags27 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 26
  %28 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags27, align 8
  %time_stamp = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 28
  %29 = ptrtoint ptr %time_stamp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %time_stamp, align 8
  %time_stamp28 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 28
  %31 = ptrtoint ptr %time_stamp28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %time_stamp28, align 8
  %arrayidx31 = getelementptr %struct.ieee80211_network, ptr %src, i32 0, i32 28, i32 1
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr %struct.ieee80211_network, ptr %dst, i32 0, i32 28, i32 1
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx33, align 4
  %35 = load i32, ptr %flags, align 8
  %and = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end38_crit_edge, label %if.then35

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %erp_value = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 32
  %36 = ptrtoint ptr %erp_value to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %erp_value, align 2
  %erp_value36 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 32
  %38 = ptrtoint ptr %erp_value36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %erp_value36, align 2
  %berp_info_valid = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 55
  %39 = ptrtoint ptr %berp_info_valid to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %berp_info_valid, align 1
  %berp_info_valid37 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 55
  %40 = ptrtoint ptr %berp_info_valid37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %berp_info_valid37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end.if.end38_crit_edge
  %beacon_interval = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 29
  %41 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %beacon_interval, align 8
  %beacon_interval39 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 29
  %43 = ptrtoint ptr %beacon_interval39 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %beacon_interval39, align 8
  %listen_interval = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 30
  %44 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %listen_interval, align 2
  %listen_interval40 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 30
  %46 = ptrtoint ptr %listen_interval40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %listen_interval40, align 2
  %atim_window = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 31
  %47 = ptrtoint ptr %atim_window to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %atim_window, align 4
  %atim_window41 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 31
  %49 = ptrtoint ptr %atim_window41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %atim_window41, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 39
  %50 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dtim_period, align 2
  %dtim_period42 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 39
  %52 = ptrtoint ptr %dtim_period42 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %dtim_period42, align 2
  %dtim_data = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 40
  %53 = ptrtoint ptr %dtim_data to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dtim_data, align 1
  %dtim_data43 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 40
  %55 = ptrtoint ptr %dtim_data43 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %dtim_data43, align 1
  %last_dtim_sta_time = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 41
  %56 = ptrtoint ptr %last_dtim_sta_time to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_dtim_sta_time, align 4
  %last_dtim_sta_time45 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 41
  %58 = ptrtoint ptr %last_dtim_sta_time45 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %last_dtim_sta_time45, align 4
  %arrayidx48 = getelementptr %struct.ieee80211_network, ptr %src, i32 0, i32 41, i32 1
  %59 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx48, align 4
  %arrayidx50 = getelementptr %struct.ieee80211_network, ptr %dst, i32 0, i32 41, i32 1
  %61 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx50, align 4
  %tim = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 38
  %tim51 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 38
  %62 = ptrtoint ptr %tim51 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tim51, align 8
  %64 = ptrtoint ptr %tim to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %tim, align 8
  %bssht = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49
  %65 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bssht, align 1
  %bssht52 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49
  %67 = ptrtoint ptr %bssht52 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %bssht52, align 1
  %bdRT2RTAggregation = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 6
  %68 = ptrtoint ptr %bdRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bdRT2RTAggregation, align 1
  %bdRT2RTAggregation56 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 6
  %70 = ptrtoint ptr %bdRT2RTAggregation56 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %bdRT2RTAggregation56, align 1
  %bdHTCapLen = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 2
  %71 = ptrtoint ptr %bdHTCapLen to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %bdHTCapLen, align 1
  %bdHTCapLen59 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 2
  %73 = ptrtoint ptr %bdHTCapLen59 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %72, ptr %bdHTCapLen59, align 1
  %bdHTCapBuf = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 1
  %bdHTCapBuf63 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 1
  %74 = load i16, ptr %bdHTCapLen, align 1
  %conv67 = zext i16 %74 to i32
  %75 = call ptr @memcpy(ptr %bdHTCapBuf, ptr %bdHTCapBuf63, i32 %conv67)
  %bdHTInfoLen = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 4
  %76 = ptrtoint ptr %bdHTInfoLen to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %bdHTInfoLen, align 1
  %bdHTInfoLen70 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 4
  %78 = ptrtoint ptr %bdHTInfoLen70 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %bdHTInfoLen70, align 1
  %bdHTInfoBuf = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 3
  %bdHTInfoBuf74 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 3
  %79 = load i16, ptr %bdHTInfoLen, align 1
  %conv78 = zext i16 %79 to i32
  %80 = call ptr @memcpy(ptr %bdHTInfoBuf, ptr %bdHTInfoBuf74, i32 %conv78)
  %bdHTSpecVer = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 5
  %81 = ptrtoint ptr %bdHTSpecVer to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %bdHTSpecVer, align 1
  %bdHTSpecVer81 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 5
  %83 = ptrtoint ptr %bdHTSpecVer81 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %bdHTSpecVer81, align 1
  %bdRT2RTLongSlotTime = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 49, i32 7
  %84 = ptrtoint ptr %bdRT2RTLongSlotTime to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bdRT2RTLongSlotTime, align 1
  %bdRT2RTLongSlotTime84 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 49, i32 7
  %86 = ptrtoint ptr %bdRT2RTLongSlotTime84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %bdRT2RTLongSlotTime84, align 1
  %broadcom_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 50
  %87 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %broadcom_cap_exist, align 4, !range !386
  %broadcom_cap_exist86 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 50
  %89 = ptrtoint ptr %broadcom_cap_exist86 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %broadcom_cap_exist86, align 4
  %ralink_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 51
  %90 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ralink_cap_exist, align 1, !range !386
  %ralink_cap_exist88 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 51
  %92 = ptrtoint ptr %ralink_cap_exist88 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %ralink_cap_exist88, align 1
  %atheros_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 52
  %93 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %atheros_cap_exist, align 2, !range !386
  %atheros_cap_exist91 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 52
  %95 = ptrtoint ptr %atheros_cap_exist91 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %atheros_cap_exist91, align 2
  %cisco_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 53
  %96 = ptrtoint ptr %cisco_cap_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cisco_cap_exist, align 1, !range !386
  %cisco_cap_exist94 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 53
  %98 = ptrtoint ptr %cisco_cap_exist94 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %cisco_cap_exist94, align 1
  %unknown_cap_exist = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 54
  %99 = ptrtoint ptr %unknown_cap_exist to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %unknown_cap_exist, align 8, !range !386
  %unknown_cap_exist97 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 54
  %101 = ptrtoint ptr %unknown_cap_exist97 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %unknown_cap_exist97, align 8
  %wpa_ie = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 33
  %wpa_ie100 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 33
  %wpa_ie_len = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 35
  %102 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wpa_ie_len, align 8
  %104 = call ptr @memcpy(ptr %wpa_ie, ptr %wpa_ie100, i32 %103)
  %105 = load i32, ptr %wpa_ie_len, align 8
  %wpa_ie_len103 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 35
  %106 = ptrtoint ptr %wpa_ie_len103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %wpa_ie_len103, align 8
  %rsn_ie = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 36
  %rsn_ie105 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 36
  %rsn_ie_len = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 37
  %107 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rsn_ie_len, align 4
  %109 = call ptr @memcpy(ptr %rsn_ie, ptr %rsn_ie105, i32 %108)
  %110 = load i32, ptr %rsn_ie_len, align 4
  %rsn_ie_len108 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 37
  %111 = ptrtoint ptr %rsn_ie_len108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rsn_ie_len108, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 23
  %113 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %last_scanned, align 8
  %active = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %active, align 4
  %param_count = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8, i32 3
  %116 = ptrtoint ptr %param_count to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %param_count, align 4
  %118 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags27, align 8
  %and111 = and i32 %119, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %qos_data = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8
  %qos_data115 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 8
  %120 = call ptr @memcpy(ptr %qos_data, ptr %qos_data115, i32 44)
  br label %if.end123

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %supported = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 8, i32 2
  %121 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %supported, align 4
  %supported118 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8, i32 2
  %123 = ptrtoint ptr %supported118 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %supported118, align 4
  %param_count120 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 8, i32 3
  %124 = ptrtoint ptr %param_count120 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %param_count120, align 4
  %126 = ptrtoint ptr %param_count to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %param_count, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then113
  %supported125 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8, i32 2
  %127 = ptrtoint ptr %supported125 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %supported125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp126 = icmp eq i32 %128, 1
  br i1 %cmp126, label %if.then128, label %if.end123.if.end155_crit_edge

if.end123.if.end155_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

if.then128:                                       ; preds = %if.end123
  %QoS_Enable = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 44
  %129 = ptrtoint ptr %QoS_Enable to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %QoS_Enable, align 1
  %ssid_len129 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 6
  %130 = ptrtoint ptr %ssid_len129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ssid_len129, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool130.not = icmp eq i8 %131, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %132 = load i32, ptr @ieee80211_debug_level, align 4
  %and143 = and i32 %132, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool130.not, label %do.body142, label %do.body

do.body:                                          ; preds = %if.then128
  br i1 %tobool144.not, label %do.body.if.end155_crit_edge, label %do.end

do.body.if.end155_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ssid136 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %ssid136) #17
  br label %if.end155

do.body142:                                       ; preds = %if.then128
  br i1 %tobool144.not, label %do.body142.if.end155_crit_edge, label %do.end148

do.body142.if.end155_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end155

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #17
  br label %if.end155

if.end155:                                        ; preds = %do.end148, %do.body142.if.end155_crit_edge, %do.end, %do.body.if.end155_crit_edge, %if.end123.if.end155_crit_edge
  %133 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %115, ptr %active, align 4
  %old_param_count = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 8, i32 4
  %134 = ptrtoint ptr %old_param_count to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %117, ptr %old_param_count, align 1
  %wmm_info = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 42
  %135 = ptrtoint ptr %wmm_info to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %wmm_info, align 4
  %wmm_info159 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 42
  %137 = ptrtoint ptr %wmm_info159 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %wmm_info159, align 4
  %wmm_param = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 43
  %138 = ptrtoint ptr %wmm_param to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %wmm_param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool162.not = icmp eq i8 %139, 0
  br i1 %tobool162.not, label %lor.lhs.false, label %if.end155.if.then180_crit_edge

if.end155.if.then180_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then180

lor.lhs.false:                                    ; preds = %if.end155
  %arrayidx164 = getelementptr %struct.ieee80211_network, ptr %src, i32 0, i32 43, i32 1
  %140 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx164, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool167.not = icmp eq i8 %141, 0
  br i1 %tobool167.not, label %lor.lhs.false168, label %lor.lhs.false.if.then180_crit_edge

lor.lhs.false.if.then180_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then180

lor.lhs.false168:                                 ; preds = %lor.lhs.false
  %arrayidx170 = getelementptr %struct.ieee80211_network, ptr %src, i32 0, i32 43, i32 2
  %142 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool173.not = icmp eq i8 %143, 0
  br i1 %tobool173.not, label %lor.lhs.false174, label %lor.lhs.false168.if.then180_crit_edge

lor.lhs.false168.if.then180_crit_edge:            ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then180

lor.lhs.false174:                                 ; preds = %lor.lhs.false168
  %arrayidx176 = getelementptr %struct.ieee80211_network, ptr %src, i32 0, i32 43, i32 3
  %144 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool179.not = icmp eq i8 %145, 0
  br i1 %tobool179.not, label %lor.lhs.false174.if.end185_crit_edge, label %lor.lhs.false174.if.then180_crit_edge

lor.lhs.false174.if.then180_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then180

lor.lhs.false174.if.end185_crit_edge:             ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end185

if.then180:                                       ; preds = %lor.lhs.false174.if.then180_crit_edge, %lor.lhs.false168.if.then180_crit_edge, %lor.lhs.false.if.then180_crit_edge, %if.end155.if.then180_crit_edge
  %wmm_param181 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 43
  %146 = call ptr @memcpy(ptr %wmm_param181, ptr %wmm_param, i32 16)
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %lor.lhs.false174.if.end185_crit_edge
  %Turbo_Enable = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 45
  %147 = ptrtoint ptr %Turbo_Enable to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %Turbo_Enable, align 2
  %Turbo_Enable186 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 45
  %149 = ptrtoint ptr %Turbo_Enable186 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %Turbo_Enable186, align 2
  %CountryIeLen = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 47
  %150 = ptrtoint ptr %CountryIeLen to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %CountryIeLen, align 8
  %CountryIeLen187 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 47
  %152 = ptrtoint ptr %CountryIeLen187 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %CountryIeLen187, align 8
  %CountryIeBuf = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 48
  %CountryIeBuf189 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 48
  %153 = load i16, ptr %CountryIeLen, align 8
  %conv192 = zext i16 %153 to i32
  %154 = call ptr @memcpy(ptr %CountryIeBuf, ptr %CountryIeBuf189, i32 %conv192)
  %bWithAironetIE = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 9
  %155 = ptrtoint ptr %bWithAironetIE to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bWithAironetIE, align 8, !range !386
  %bWithAironetIE194 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 9
  %157 = ptrtoint ptr %bWithAironetIE194 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %bWithAironetIE194, align 8
  %bCkipSupported = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 10
  %158 = ptrtoint ptr %bCkipSupported to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %bCkipSupported, align 1, !range !386
  %bCkipSupported197 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 10
  %160 = ptrtoint ptr %bCkipSupported197 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %bCkipSupported197, align 1
  %CcxRmState = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 13
  %CcxRmState200 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 13
  %161 = ptrtoint ptr %CcxRmState200 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %CcxRmState200, align 4
  %163 = ptrtoint ptr %CcxRmState to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %CcxRmState, align 4
  %bCcxRmEnable = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 11
  %164 = ptrtoint ptr %bCcxRmEnable to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bCcxRmEnable, align 2, !range !386
  %bCcxRmEnable203 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 11
  %166 = ptrtoint ptr %bCcxRmEnable203 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %bCcxRmEnable203, align 2
  %MBssidMask = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 4
  %167 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %MBssidMask, align 2
  %MBssidMask205 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 4
  %169 = ptrtoint ptr %MBssidMask205 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %MBssidMask205, align 2
  %bMBssidValid = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 2
  %170 = ptrtoint ptr %bMBssidValid to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %bMBssidValid, align 1, !range !386
  %bMBssidValid207 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 2
  %172 = ptrtoint ptr %bMBssidValid207 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %bMBssidValid207, align 1
  %MBssid = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 3
  %MBssid210 = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 3
  %173 = call ptr @memcpy(ptr %MBssid, ptr %MBssid210, i32 6)
  %bWithCcxVerNum = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 14
  %174 = ptrtoint ptr %bWithCcxVerNum to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %bWithCcxVerNum, align 8, !range !386
  %bWithCcxVerNum213 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 14
  %176 = ptrtoint ptr %bWithCcxVerNum213 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %bWithCcxVerNum213, align 8
  %BssCcxVerNumber = getelementptr inbounds %struct.ieee80211_network, ptr %src, i32 0, i32 15
  %177 = ptrtoint ptr %BssCcxVerNumber to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %BssCcxVerNumber, align 1
  %BssCcxVerNumber215 = getelementptr inbounds %struct.ieee80211_network, ptr %dst, i32 0, i32 15
  %179 = ptrtoint ptr %BssCcxVerNumber215 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %BssCcxVerNumber215, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_softmac_new_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTInitializeBssDesc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !326, !327, !328, !330, !331, !332, !333, !334, !336, !338, !340, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !358, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !373}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 916, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 930, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 990, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ieee80211_rx_rsl._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ieee80211_rx_rsl._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1027, i32 4}
!12 = !{ptr @ieee80211_rx_rsl._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ieee80211_rx_rsl._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1110, i32 4}
!16 = !{ptr @ieee80211_rx_rsl._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ieee80211_rx_rsl._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1124, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ieee80211_rx_rsl.__UNIQUE_ID_ddebug482, !19, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1137, i32 3}
!24 = !{ptr @ieee80211_rx_rsl._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ieee80211_rx_rsl._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1140, i32 4}
!28 = !{ptr @ieee80211_rx_rsl._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ieee80211_rx_rsl._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1152, i32 21}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1188, i32 3}
!34 = !{ptr @ieee80211_rx_rsl.__UNIQUE_ID_ddebug483, !33, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1206, i32 4}
!37 = !{ptr @ieee80211_rx_rsl._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ieee80211_rx_rsl._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1210, i32 4}
!41 = !{ptr @ieee80211_rx_rsl._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ieee80211_rx_rsl._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ieee80211_rx_rsl._entry.27, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1223, i32 3}
!45 = !{ptr @ieee80211_rx_rsl._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1230, i32 3}
!48 = !{ptr @ieee80211_rx_rsl._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ieee80211_rx_rsl._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1276, i32 3}
!52 = !{ptr @ieee80211_rx_rsl._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ieee80211_rx_rsl._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_ieee80211_rx_rsl, !55, !"__ksymtab_ieee80211_rx_rsl", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1300, i32 1}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1526, i32 4}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ieee80211_parse_info_param._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ieee80211_parse_info_param._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1553, i32 4}
!63 = !{ptr @ieee80211_parse_info_param._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ieee80211_parse_info_param._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1567, i32 29}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1580, i32 4}
!69 = !{ptr @ieee80211_parse_info_param._entry.41, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ieee80211_parse_info_param._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1607, i32 4}
!73 = !{ptr @ieee80211_parse_info_param._entry.44, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ieee80211_parse_info_param._entry_ptr.46, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1612, i32 4}
!77 = !{ptr @ieee80211_parse_info_param._entry.47, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ieee80211_parse_info_param._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1618, i32 4}
!81 = !{ptr @ieee80211_parse_info_param._entry.50, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ieee80211_parse_info_param._entry_ptr.52, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1622, i32 4}
!85 = !{ptr @ieee80211_parse_info_param._entry.53, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ieee80211_parse_info_param._entry_ptr.55, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1665, i32 4}
!89 = !{ptr @ieee80211_parse_info_param._entry.56, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ieee80211_parse_info_param._entry_ptr.58, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1670, i32 4}
!93 = !{ptr @ieee80211_parse_info_param._entry.59, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ieee80211_parse_info_param._entry_ptr.61, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.63, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1675, i32 4}
!97 = !{ptr @ieee80211_parse_info_param._entry.62, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ieee80211_parse_info_param._entry_ptr.64, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.66, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1679, i32 4}
!101 = !{ptr @ieee80211_parse_info_param._entry.65, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ieee80211_parse_info_param._entry_ptr.67, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.68, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1809, i32 5}
!105 = !{ptr @ieee80211_parse_info_param.__UNIQUE_ID_ddebug498, !104, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!106 = !{ptr @.str.70, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1865, i32 4}
!108 = !{ptr @ieee80211_parse_info_param._entry.69, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ieee80211_parse_info_param._entry_ptr.71, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.73, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1875, i32 4}
!112 = !{ptr @ieee80211_parse_info_param._entry.72, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ieee80211_parse_info_param._entry_ptr.74, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.76, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1894, i32 4}
!116 = !{ptr @ieee80211_parse_info_param._entry.75, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ieee80211_parse_info_param._entry_ptr.77, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.79, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1906, i32 4}
!120 = !{ptr @ieee80211_parse_info_param._entry.78, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ieee80211_parse_info_param._entry_ptr.80, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1927, i32 8}
!124 = !{ptr @.str.83, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1931, i32 4}
!126 = !{ptr @ieee80211_parse_info_param._entry.82, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ieee80211_parse_info_param._entry_ptr.84, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.86, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1937, i32 4}
!130 = !{ptr @ieee80211_parse_info_param._entry.85, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ieee80211_parse_info_param._entry_ptr.87, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.88, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2447, i32 3}
!134 = !{ptr @.str.89, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ieee80211_rx_mgt_rsl._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @ieee80211_rx_mgt_rsl._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.91, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2449, i32 3}
!139 = !{ptr @ieee80211_rx_mgt_rsl._entry.90, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @ieee80211_rx_mgt_rsl._entry_ptr.92, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.94, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2455, i32 3}
!143 = !{ptr @ieee80211_rx_mgt_rsl._entry.93, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ieee80211_rx_mgt_rsl._entry_ptr.95, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.97, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2457, i32 3}
!147 = !{ptr @ieee80211_rx_mgt_rsl._entry.96, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ieee80211_rx_mgt_rsl._entry_ptr.98, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @__ksymtab_ieee80211_rx_mgt_rsl, !150, !"__ksymtab_ieee80211_rx_mgt_rsl", i1 false, i1 false}
!150 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2464, i32 1}
!151 = !{ptr @rfc1042_header, !152, !"rfc1042_header", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 283, i32 22}
!153 = !{ptr @bridge_tunnel_header, !154, !"bridge_tunnel_header", i1 false, i1 false}
!154 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 286, i32 22}
!155 = !{ptr @.str.99, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 349, i32 31}
!157 = !{ptr @.str.100, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 351, i32 4}
!159 = !{ptr @.str.101, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ieee80211_rx_frame_decrypt.__UNIQUE_ID_ddebug476, !158, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!161 = !{ptr @.str.102, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 362, i32 3}
!163 = !{ptr @ieee80211_rx_frame_decrypt._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ieee80211_rx_frame_decrypt._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.104, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 366, i32 4}
!167 = !{ptr @ieee80211_rx_frame_decrypt._entry.103, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ieee80211_rx_frame_decrypt._entry_ptr.105, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.106, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 72, i32 4}
!171 = !{ptr @.str.107, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @ieee80211_frag_cache_find._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @ieee80211_frag_cache_find._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.108, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 190, i32 3}
!176 = !{ptr @.str.109, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @ieee80211_frag_cache_invalidate._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @ieee80211_frag_cache_invalidate._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.110, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 399, i32 3}
!181 = !{ptr @.str.111, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ieee80211_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug477, !180, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!183 = !{ptr @.str.112, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1186, i32 48}
!185 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1177, i32 18}
!187 = !{ptr @.str.114, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1178, i32 19}
!189 = !{ptr @.str.115, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1179, i32 20}
!191 = !{ptr @.str.116, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1180, i32 17}
!193 = !{ptr @.str.117, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1181, i32 28}
!195 = !{ptr @eap_types, !196, !"eap_types", i1 false, i1 false}
!196 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 1176, i32 20}
!197 = !{ptr @.str.118, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 825, i32 5}
!199 = !{ptr @.str.119, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @parse_subframe.__UNIQUE_ID_ddebug478, !198, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!201 = !{ptr @.str.120, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 827, i32 5}
!203 = !{ptr @parse_subframe.__UNIQUE_ID_ddebug479, !202, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!204 = !{ptr @.str.121, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 828, i32 5}
!206 = !{ptr @parse_subframe.__UNIQUE_ID_ddebug480, !205, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!207 = !{ptr @.str.122, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 829, i32 5}
!209 = !{ptr @parse_subframe.__UNIQUE_ID_ddebug481, !208, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!210 = !{ptr @.str.123, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 850, i32 5}
!212 = !{ptr @parse_subframe._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @parse_subframe._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.124, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 596, i32 2}
!216 = !{ptr @.str.125, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @RxReorderIndicatePacket._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @RxReorderIndicatePacket._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.127, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 610, i32 3}
!221 = !{ptr @RxReorderIndicatePacket._entry.126, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @RxReorderIndicatePacket._entry_ptr.128, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.130, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 640, i32 3}
!225 = !{ptr @RxReorderIndicatePacket._entry.129, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @RxReorderIndicatePacket._entry_ptr.131, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.133, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 654, i32 3}
!229 = !{ptr @RxReorderIndicatePacket._entry.132, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @RxReorderIndicatePacket._entry_ptr.134, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.136, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 672, i32 5}
!233 = !{ptr @RxReorderIndicatePacket._entry.135, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @RxReorderIndicatePacket._entry_ptr.137, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.139, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 684, i32 5}
!237 = !{ptr @RxReorderIndicatePacket._entry.138, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @RxReorderIndicatePacket._entry_ptr.140, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.142, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 693, i32 4}
!241 = !{ptr @RxReorderIndicatePacket._entry.141, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @RxReorderIndicatePacket._entry_ptr.143, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.145, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 707, i32 3}
!245 = !{ptr @RxReorderIndicatePacket._entry.144, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @RxReorderIndicatePacket._entry_ptr.146, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.148, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 713, i32 5}
!249 = !{ptr @RxReorderIndicatePacket._entry.147, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @RxReorderIndicatePacket._entry_ptr.149, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @RxReorderIndicatePacket._entry.150, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 723, i32 4}
!253 = !{ptr @RxReorderIndicatePacket._entry_ptr.151, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.153, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 743, i32 4}
!256 = !{ptr @RxReorderIndicatePacket._entry.152, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @RxReorderIndicatePacket._entry_ptr.154, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.156, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 752, i32 3}
!260 = !{ptr @RxReorderIndicatePacket._entry.155, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @RxReorderIndicatePacket._entry_ptr.157, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.158, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1434, i32 3}
!264 = !{ptr @.str.159, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @ieee80211_parse_qos_info_param_IE._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @ieee80211_parse_qos_info_param_IE._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @qos_oui, !268, !"qos_oui", i1 false, i1 false}
!268 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1304, i32 11}
!269 = distinct !{null, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1446, i32 3}
!271 = distinct !{null, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1447, i32 3}
!273 = distinct !{null, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1448, i32 3}
!275 = !{ptr @.str.163, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1449, i32 3}
!277 = !{ptr @.str.164, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1450, i32 3}
!279 = !{ptr @.str.165, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1451, i32 3}
!281 = !{ptr @.str.166, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1452, i32 3}
!283 = !{ptr @.str.167, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1453, i32 3}
!285 = !{ptr @.str.168, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1454, i32 3}
!287 = !{ptr @.str.169, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1455, i32 3}
!289 = !{ptr @.str.170, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1456, i32 3}
!291 = !{ptr @.str.171, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1457, i32 3}
!293 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1458, i32 3}
!295 = !{ptr @.str.173, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1459, i32 3}
!297 = !{ptr @.str.174, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1460, i32 3}
!299 = !{ptr @.str.175, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1461, i32 3}
!301 = !{ptr @.str.176, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1462, i32 3}
!303 = !{ptr @.str.177, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1463, i32 3}
!305 = !{ptr @.str.178, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1464, i32 3}
!307 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1465, i32 3}
!309 = !{ptr @.str.180, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1466, i32 3}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1467, i32 3}
!313 = !{ptr @.str.182, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1469, i32 3}
!315 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1470, i32 3}
!317 = !{ptr @.str.184, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1471, i32 3}
!319 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1472, i32 3}
!321 = !{ptr @.str.186, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 1474, i32 10}
!323 = !{ptr @.str.187, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2258, i32 2}
!325 = !{ptr @.str.188, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @ieee80211_process_probe_response._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @ieee80211_process_probe_response._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.190, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2280, i32 3}
!330 = !{ptr @ieee80211_process_probe_response._entry.189, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @ieee80211_process_probe_response._entry_ptr.191, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.192, !329, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.193, !329, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.194, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2303, i32 29}
!336 = !{ptr @.str.195, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2310, i32 29}
!338 = !{ptr @.str.196, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2318, i32 29}
!340 = !{ptr @.str.197, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2325, i32 29}
!342 = !{ptr @.str.199, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2375, i32 4}
!344 = !{ptr @ieee80211_process_probe_response._entry.198, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @ieee80211_process_probe_response._entry_ptr.200, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.202, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2389, i32 3}
!348 = !{ptr @ieee80211_process_probe_response._entry.201, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @ieee80211_process_probe_response._entry_ptr.203, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.205, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2401, i32 3}
!352 = !{ptr @ieee80211_process_probe_response._entry.204, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ieee80211_process_probe_response._entry_ptr.206, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @escape_essid.escaped, !355, !"escaped", i1 false, i1 false}
!355 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 2418, i32 14}
!356 = !{ptr @.str.207, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 2421, i32 19}
!358 = !{ptr @.str.208, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211.h", i32 2425, i32 37}
!360 = !{ptr @.str.209, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2078, i32 3}
!362 = !{ptr @.str.210, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @ieee80211_network_init._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @ieee80211_network_init._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.211, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2192, i32 4}
!367 = !{ptr @.str.212, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @update_network._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @update_network._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.214, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c", i32 2196, i32 4}
!372 = !{ptr @update_network._entry.213, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @update_network._entry_ptr.215, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{i64 2148907183, i64 2148907188, i64 2148907201, i64 2148907245, i64 2148907279, i64 2148907300}
!384 = !{i64 2148425752, i64 2148425778, i64 2148425807, i64 2148425841, i64 2148425872, i64 2148425895}
!385 = !{i64 2148428217, i64 2148428243, i64 2148428272, i64 2148428306, i64 2148428337, i64 2148428360}
!386 = !{i8 0, i8 2}
