; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtllib_tx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtllib_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtllib_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_rtllib_xmit\09\09\09\09"
module asm "\09.long\09__crc_rtllib_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtllib_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22rtllib_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_rtllib_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.147, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.142 }
%struct.anon.142 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.143 }
%struct.anon.143 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.146, i32 }
%union.anon.146 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtllib_hdr_3addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16, [0 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rtllib_txb = type { i8, i8, i8, i8, i16, i16, i16, [0 x ptr] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtllib_snap_hdr = type { i8, i8, i8, [3 x i8] }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.rtllib_hdr_1addr = type { i16, i16, [6 x i8], [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
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

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"=========>%s(), crypt is null\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rtllib_encrypt_fragment = private unnamed_addr constant [24 x i8] c"rtllib_encrypt_fragment\00", align 1
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Encryption failed: len=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_rtllib_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtllib_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_rtllib_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtllib_xmit to i32), ptr @__kstrtab_rtllib_xmit, ptr @__kstrtabns_rtllib_xmit }, section "___ksymtab+rtllib_xmit", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No xmit handler.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skb too small (%d).\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate TXB\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"=================>DHCP Protocol start tx ARP pkt!!\0A\00", [44 x i8] zeroinitializer }, align 32
@rtllib_xmit_inter.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtllib_xmit_inter\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/rtl8192e/rtllib_tx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX: IEEE 802.11 EAPOL frame: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skb->priority = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"converted skb->priority = %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@eap_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EAP-Packet\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EAPOL-Start\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EAPOL-Logoff\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EAPOL-Key\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EAPOL-Encap-ASF-Alert\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: can't get TS\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.rtllib_tx_query_agg_cap = private unnamed_addr constant [24 x i8] c"rtllib_tx_query_agg_cap\00", align 1
@switch.table.rtllib_xmit_inter = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 3, i32 4, i32 5, i32 6, i32 7], [36 x i8] zeroinitializer }, align 32
@switch.table.rtllib_xmit_inter.19 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 5, i32 5, i32 1, i32 3, i32 3, i32 5, i32 5], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 67, i64 68]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 166, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 186, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 583, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 590, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 605, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 635, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 655, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 719, i32 28 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 989, i32 48 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"eap_types\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 979, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 980, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 981, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 982, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 983, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [37 x i8] c"../drivers/staging/rtl8192e/rtllib.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 984, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [40 x i8] c"../drivers/staging/rtl8192e/rtllib_tx.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 297, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"switch.table.rtllib_xmit_inter\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [34 x i8] c"switch.table.rtllib_xmit_inter.19\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_rtllib_xmit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @eap_types, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.rtllib_xmit_inter, ptr @switch.table.rtllib_xmit_inter.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eap_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtllib_xmit_inter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtllib_xmit_inter.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_encrypt_fragment(ptr nocapture noundef readonly %ieee, ptr noundef %frag, i32 noundef %hdr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_keyidx = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 81, i32 3
  %0 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_keyidx, align 8
  %arrayidx = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 81, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.then_crit_edge, label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rtllib_encrypt_fragment) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !57
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %encrypt_msdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %encrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encrypt_msdu, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.land.lhs.true10_crit_edge, label %if.end9

if.end.land.lhs.true10_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true10

if.end9:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call = tail call i32 %12(ptr noundef %frag, i32 noundef %hdr_len, ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end9.land.lhs.true10_crit_edge, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end9.land.lhs.true10_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end9.land.lhs.true10_crit_edge, %if.end.land.lhs.true10_crit_edge
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %encrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %encrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encrypt_mpdu, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %land.lhs.true10.if.end18_crit_edge, label %if.then13

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  %priv16 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %priv16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv16, align 4
  %call17 = tail call i32 %18(ptr noundef %frag, i32 noundef %hdr_len, ptr noundef %20) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %land.lhs.true10.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %res.1 = phi i32 [ %call17, %if.then13 ], [ 0, %land.lhs.true10.if.end18_crit_edge ], [ %call, %if.end9.if.end18_crit_edge ]
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1)
  %cmp20 = icmp slt i32 %res.1, 0
  br i1 %cmp20, label %if.then21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %frag, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then21 ], [ -1, %if.then ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtllib_txb_free(ptr noundef %txb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txb, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !59

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %txb) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call = tail call fastcc i32 @rtllib_xmit_inter(ptr noundef %skb, ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_xmit_inter(ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %pTxTs.i = alloca ptr, align 4
  %pTS.i = alloca ptr, align 4
  %header = alloca %struct.rtllib_hdr_3addrqos, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %header) #7
  %0 = call ptr @memset(ptr %header, i32 0, i32 26)
  %current_network = getelementptr i8, ptr %dev, i32 24776
  %active = getelementptr i8, ptr %dev, i32 24888
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active, align 4
  %lock = getelementptr i8, ptr %dev, i32 20744
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hard_start_xmit = getelementptr i8, ptr %dev, i32 30640
  %3 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hard_start_xmit, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %softmac_features = getelementptr i8, ptr %dev, i32 26074
  %5 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %softmac_features, align 2
  %7 = and i16 %6, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %softmac_data_hard_start_xmit = getelementptr i8, ptr %dev, i32 30652
  %8 = ptrtoint ptr %softmac_data_hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %softmac_data_hard_start_xmit, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true10, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %softmac_features11 = getelementptr i8, ptr %dev, i32 26074
  %10 = ptrtoint ptr %softmac_features11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %softmac_features11, align 2
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  br i1 %tobool14.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true10.if.then_crit_edge

land.lhs.true10.if.then_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true10.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %dev15 = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.2) #10
  br label %if.end705.critedge

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %raw_tx = getelementptr i8, ptr %dev, i32 26138
  %15 = ptrtoint ptr %raw_tx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %raw_tx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp17 = icmp eq i16 %16, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  br i1 %cmp17, label %if.then21, label %if.else546, !prof !60

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp22 = icmp ult i32 %18, 8
  br i1 %cmp22, label %if.then30, label %if.end33, !prof !59

if.then30:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr i8, ptr %dev, i32 2308
  %19 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %18) #10
  br label %if.end705.critedge

if.end33:                                         ; preds = %if.then21
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %add.ptr = getelementptr i8, ptr %22, i32 6
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %add.ptr.i1009 = getelementptr i8, ptr %22, i32 10
  %29 = ptrtoint ptr %add.ptr.i1009 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i1009, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %31 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %22, i32 0, i32 2
  %32 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %h_proto, align 1
  %iw_mode = getelementptr i8, ptr %dev, i32 20736
  %34 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp39 = icmp eq i32 %35, 6
  br i1 %cmp39, label %if.then41, label %if.end61

if.then41:                                        ; preds = %if.end33
  %call43 = tail call fastcc ptr @rtllib_alloc_txb(i32 noundef 1, i32 noundef %18)
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.then41.failed_crit_edge, label %if.end55, !prof !59

if.then41.failed_crit_edge:                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end55:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %encrypted = getelementptr inbounds %struct.rtllib_txb, ptr %call43, i32 0, i32 1
  %36 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %encrypted, align 1
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %conv57 = trunc i32 %38 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %payload_size = getelementptr inbounds %struct.rtllib_txb, ptr %call43, i32 0, i32 6
  %40 = ptrtoint ptr %payload_size to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %payload_size, align 4
  %fragments = getelementptr inbounds %struct.rtllib_txb, ptr %call43, i32 0, i32 7
  %41 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fragments, align 4
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %42, i32 noundef %46) #7
  %47 = call ptr @memcpy(ptr %call.i, ptr %44, i32 %46)
  br label %if.then577

if.end61:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 282, i32 %18)
  %cmp63 = icmp ugt i32 %18, 282
  br i1 %cmp63, label %if.then65, label %if.end61.if.end107_crit_edge

if.end61.if.end107_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then65:                                        ; preds = %if.end61
  %48 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %if.then65.if.end107_crit_edge [
    i16 2048, label %if.then68
    i16 2054, label %if.then101
  ]

if.then65.if.end107_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then68:                                        ; preds = %if.then65
  %protocol = getelementptr i8, ptr %22, i32 23
  %49 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %50)
  %cmp72 = icmp eq i8 %50, 17
  br i1 %cmp72, label %if.then74, label %if.then68.if.end107_crit_edge

if.then68.if.end107_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then74:                                        ; preds = %if.then68
  %add.ptr70 = getelementptr i8, ptr %22, i32 14
  %51 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %add.ptr70, align 4
  %bf.clear = shl i8 %bf.load, 2
  %52 = and i8 %bf.clear, 60
  %shl = zext i8 %52 to i32
  %add.ptr76 = getelementptr i8, ptr %add.ptr70, i32 %shl
  %arrayidx77 = getelementptr i8, ptr %add.ptr76, i32 1
  %53 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx77, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %54, label %if.then74.if.end107_crit_edge [
    i8 68, label %land.lhs.true81
    i8 67, label %land.lhs.true91
  ]

if.then74.if.end107_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true81:                                  ; preds = %if.then74
  %arrayidx82 = getelementptr i8, ptr %add.ptr76, i32 3
  %56 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %57)
  %cmp84 = icmp eq i8 %57, 67
  br i1 %cmp84, label %land.lhs.true81.if.end107.sink.split_crit_edge, label %land.lhs.true81.if.end107_crit_edge

land.lhs.true81.if.end107_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true81.if.end107.sink.split_crit_edge:   ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.sink.split

land.lhs.true91:                                  ; preds = %if.then74
  %arrayidx92 = getelementptr i8, ptr %add.ptr76, i32 3
  %58 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %59)
  %cmp94 = icmp eq i8 %59, 68
  br i1 %cmp94, label %land.lhs.true91.if.end107.sink.split_crit_edge, label %land.lhs.true91.if.end107_crit_edge

land.lhs.true91.if.end107_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true91.if.end107.sink.split_crit_edge:   ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.sink.split

if.then101:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %dev102 = getelementptr i8, ptr %dev, i32 2308
  %60 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev102, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %61, ptr noundef nonnull @.str.5) #10
  %tim = getelementptr i8, ptr %dev, i32 25472
  %62 = ptrtoint ptr %tim to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tim, align 8
  br label %if.end107.sink.split

if.end107.sink.split:                             ; preds = %if.then101, %land.lhs.true91.if.end107.sink.split_crit_edge, %land.lhs.true81.if.end107.sink.split_crit_edge
  %.sink = phi i8 [ %63, %if.then101 ], [ -56, %land.lhs.true91.if.end107.sink.split_crit_edge ], [ -56, %land.lhs.true81.if.end107.sink.split_crit_edge ]
  %LPSDelayCnt = getelementptr i8, ptr %dev, i32 26913
  %64 = ptrtoint ptr %LPSDelayCnt to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.sink, ptr %LPSDelayCnt, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.end107.sink.split, %land.lhs.true91.if.end107_crit_edge, %land.lhs.true81.if.end107_crit_edge, %if.then74.if.end107_crit_edge, %if.then68.if.end107_crit_edge, %if.then65.if.end107_crit_edge, %if.end61.if.end107_crit_edge
  %extract.t999 = phi i1 [ false, %if.then74.if.end107_crit_edge ], [ false, %land.lhs.true81.if.end107_crit_edge ], [ false, %if.then65.if.end107_crit_edge ], [ false, %if.then68.if.end107_crit_edge ], [ false, %land.lhs.true91.if.end107_crit_edge ], [ false, %if.end61.if.end107_crit_edge ], [ true, %if.end107.sink.split ]
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %68)
  %cmp.not.i = icmp eq i16 %68, 2048
  br i1 %cmp.not.i, label %if.end.i, label %if.end107.rtllib_classify.exit_crit_edge

if.end107.rtllib_classify.exit_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_classify.exit

if.end.i:                                         ; preds = %if.end107
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %69 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %71 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %72 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tos.i, align 1
  %75 = and i8 %74, -4
  %and.i = zext i8 %75 to i32
  %76 = add nsw i32 %and.i, -32
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %78 = icmp ult i32 %77, 7
  br i1 %78, label %switch.lookup, label %if.end.i.rtllib_classify.exit_crit_edge

if.end.i.rtllib_classify.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_classify.exit

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rtllib_xmit_inter, i32 0, i32 %77
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rtllib_classify.exit

rtllib_classify.exit:                             ; preds = %switch.lookup, %if.end.i.rtllib_classify.exit_crit_edge, %if.end107.rtllib_classify.exit_crit_edge
  %retval.0.i1011 = phi i32 [ 0, %if.end107.rtllib_classify.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end.i.rtllib_classify.exit_crit_edge ]
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %80 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i1011, ptr %priority, align 4
  %tx_keyidx = getelementptr i8, ptr %dev, i32 20936
  %81 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_keyidx, align 8
  %arrayidx111 = getelementptr %struct.rtllib_device, ptr %add.ptr.i.i, i32 0, i32 81, i32 2, i32 %82
  %83 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %33)
  %cmp112 = icmp eq i16 %33, -30578
  br i1 %cmp112, label %land.lhs.true114, label %rtllib_classify.exit.land.lhs.true116_crit_edge

rtllib_classify.exit.land.lhs.true116_crit_edge:  ; preds = %rtllib_classify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true116

land.lhs.true114:                                 ; preds = %rtllib_classify.exit
  %ieee802_1x = getelementptr i8, ptr %dev, i32 20860
  %85 = ptrtoint ptr %ieee802_1x to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ieee802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool115.not = icmp eq i32 %86, 0
  br i1 %tobool115.not, label %land.lhs.true114.land.lhs.true116_crit_edge, label %land.lhs.true114.land.lhs.true122_crit_edge

land.lhs.true114.land.lhs.true122_crit_edge:      ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true122

land.lhs.true114.land.lhs.true116_crit_edge:      ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true116

land.lhs.true116:                                 ; preds = %land.lhs.true114.land.lhs.true116_crit_edge, %rtllib_classify.exit.land.lhs.true116_crit_edge
  %host_encrypt = getelementptr i8, ptr %dev, i32 20852
  %87 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool117.not = icmp eq i32 %88, 0
  %tobool119.not = icmp eq ptr %84, null
  %or.cond = select i1 %tobool117.not, i1 true, i1 %tobool119.not
  br i1 %or.cond, label %land.lhs.true116.land.lhs.true122_crit_edge, label %land.end

land.lhs.true116.land.lhs.true122_crit_edge:      ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true122

land.end:                                         ; preds = %land.lhs.true116
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %84, i32 0, i32 1
  %89 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops, align 4
  %tobool120.not = icmp eq ptr %90, null
  br i1 %tobool120.not, label %land.end.land.lhs.true122_crit_edge, label %land.end.if.end163.thread_crit_edge

land.end.if.end163.thread_crit_edge:              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.thread

land.end.land.lhs.true122_crit_edge:              ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true122

land.lhs.true122:                                 ; preds = %land.end.land.lhs.true122_crit_edge, %land.lhs.true116.land.lhs.true122_crit_edge, %land.lhs.true114.land.lhs.true122_crit_edge
  %ieee802_1x123 = getelementptr i8, ptr %dev, i32 20860
  %91 = ptrtoint ptr %ieee802_1x123 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ieee802_1x123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool124.not = icmp eq i32 %92, 0
  br i1 %tobool124.not, label %land.lhs.true122.if.end131_crit_edge, label %land.lhs.true125

land.lhs.true122.if.end131_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

land.lhs.true125:                                 ; preds = %land.lhs.true122
  %drop_unencrypted = getelementptr i8, ptr %dev, i32 20872
  %93 = ptrtoint ptr %drop_unencrypted to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %drop_unencrypted, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool126.not = icmp eq i32 %94, 0
  %or.cond1004 = select i1 %tobool126.not, i1 true, i1 %cmp112
  br i1 %or.cond1004, label %land.lhs.true125.if.end131_crit_edge, label %if.then130

land.lhs.true125.if.end131_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then130:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dropped = getelementptr i8, ptr %dev, i32 20568
  %95 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %96, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end705.critedge

if.end131:                                        ; preds = %land.lhs.true125.if.end131_crit_edge, %land.lhs.true122.if.end131_crit_edge
  %tobool132.not = icmp eq ptr %84, null
  %cmp112.not = xor i1 %cmp112, true
  %brmerge1005 = select i1 %tobool132.not, i1 true, i1 %cmp112.not
  br i1 %brmerge1005, label %if.end131.if.end163.thread_crit_edge, label %if.then138

if.end131.if.end163.thread_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163.thread

if.then138:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_xmit_inter.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_xmit_inter, %if.then154)) #7
          to label %if.end163.thread [label %if.then154], !srcloc !61

if.then154:                                       ; preds = %if.then138
  %dev155 = getelementptr i8, ptr %dev, i32 2308
  %97 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev155, align 4
  %type = getelementptr i8, ptr %66, i32 15
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %100)
  %cmp.i = icmp ugt i8 %100, 4
  br i1 %cmp.i, label %if.then154.eap_get_type.exit_crit_edge, label %cond.false.i

if.then154.eap_get_type.exit_crit_edge:           ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %eap_get_type.exit

cond.false.i:                                     ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  %conv156 = zext i8 %100 to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv156
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 4
  br label %eap_get_type.exit

eap_get_type.exit:                                ; preds = %cond.false.i, %if.then154.eap_get_type.exit_crit_edge
  %cond.i = phi ptr [ %102, %cond.false.i ], [ @.str.12, %if.then154.eap_get_type.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_xmit_inter.__UNIQUE_ID_ddebug476, ptr noundef %98, ptr noundef nonnull @.str.9, ptr noundef %cond.i) #7
  br label %if.end163.thread

if.end163.thread:                                 ; preds = %eap_get_type.exit, %if.then138, %if.end131.if.end163.thread_crit_edge, %land.end.if.end163.thread_crit_edge
  %103 = phi i1 [ false, %eap_get_type.exit ], [ false, %if.end131.if.end163.thread_crit_edge ], [ false, %if.then138 ], [ true, %land.end.if.end163.thread_crit_edge ]
  %104 = phi i32 [ 8, %eap_get_type.exit ], [ 8, %if.end131.if.end163.thread_crit_edge ], [ 8, %if.then138 ], [ 16392, %land.end.if.end163.thread_crit_edge ]
  %call164 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #7
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  %add166 = add i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool171.not = icmp eq i32 %2, 0
  %or = or i32 %104, 128
  %fc.1 = select i1 %tobool171.not, i32 %104, i32 %or
  %107 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iw_mode, align 8
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %108, label %if.end163.thread.if.end214_crit_edge [
    i32 2, label %if.then179
    i32 1, label %if.then201
  ]

if.end163.thread.if.end214_crit_edge:             ; preds = %if.end163.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then179:                                       ; preds = %if.end163.thread
  call void @__sanitizer_cov_trace_pc() #9
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2
  %110 = ptrtoint ptr %current_network to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %current_network, align 4
  %112 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %addr1, align 4
  %add.ptr.i1012 = getelementptr i8, ptr %dev, i32 24780
  %113 = ptrtoint ptr %add.ptr.i1012 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i1012, align 2
  %add.ptr1.i1013 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 4
  %115 = ptrtoint ptr %add.ptr1.i1013 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %add.ptr1.i1013, align 2
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 3
  %116 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %28, ptr %addr2, align 4
  %add.ptr1.i1015 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 4
  %117 = ptrtoint ptr %add.ptr1.i1015 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %30, ptr %add.ptr1.i1015, align 2
  %or180 = or i32 %fc.1, 256
  %addr3193 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 4
  %118 = ptrtoint ptr %addr3193 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %24, ptr %addr3193, align 4
  br label %if.end214.sink.split

if.then201:                                       ; preds = %if.end163.thread
  call void @__sanitizer_cov_trace_pc() #9
  %addr1202 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2
  %119 = ptrtoint ptr %addr1202 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %24, ptr %addr1202, align 4
  %add.ptr1.i1019 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 4
  %120 = ptrtoint ptr %add.ptr1.i1019 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %26, ptr %add.ptr1.i1019, align 2
  %addr2205 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 3
  %121 = ptrtoint ptr %addr2205 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %28, ptr %addr2205, align 4
  %add.ptr1.i1021 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %add.ptr1.i1021 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %30, ptr %add.ptr1.i1021, align 2
  %addr3208 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 4
  %123 = ptrtoint ptr %current_network to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %current_network, align 4
  %125 = ptrtoint ptr %addr3208 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %addr3208, align 4
  %add.ptr.i1022 = getelementptr i8, ptr %dev, i32 24780
  %126 = ptrtoint ptr %add.ptr.i1022 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.i1022, align 2
  br label %if.end214.sink.split

if.end214.sink.split:                             ; preds = %if.then201, %if.then179
  %.sink1195 = phi i16 [ %127, %if.then201 ], [ %26, %if.then179 ]
  %fc.2.ph = phi i32 [ %fc.1, %if.then201 ], [ %or180, %if.then179 ]
  %add.ptr1.i1023 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 4, i32 4
  %128 = ptrtoint ptr %add.ptr1.i1023 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %.sink1195, ptr %add.ptr1.i1023, align 2
  br label %if.end214

if.end214:                                        ; preds = %if.end214.sink.split, %if.end163.thread.if.end214_crit_edge
  %fc.2 = phi i32 [ %fc.1, %if.end163.thread.if.end214_crit_edge ], [ %fc.2.ph, %if.end214.sink.split ]
  %addr1215 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2
  %129 = ptrtoint ptr %addr1215 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %addr1215, align 4
  %131 = and i32 %130, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i = icmp ne i32 %131, 0
  %conv219 = trunc i32 %fc.2 to i16
  %132 = tail call i16 @llvm.bswap.i16(i16 %conv219)
  %133 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %header, align 2
  br i1 %tobool.i, label %if.end214.if.end225_crit_edge, label %if.else223

if.end214.if.end225_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.else223:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %fts = getelementptr i8, ptr %dev, i32 24764
  %134 = ptrtoint ptr %fts to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %fts, align 4
  %conv224 = zext i16 %135 to i32
  br label %if.end225

if.end225:                                        ; preds = %if.else223, %if.end214.if.end225_crit_edge
  %frag_size.0 = phi i32 [ %conv224, %if.else223 ], [ 2346, %if.end214.if.end225_crit_edge ]
  br i1 %tobool171.not, label %if.end225.if.end252_crit_edge, label %while.cond.preheader

if.end225.if.end252_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end252

while.cond.preheader:                             ; preds = %if.end225
  %wmm_acm = getelementptr i8, ptr %dev, i32 26520
  %136 = ptrtoint ptr %wmm_acm to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %wmm_acm, align 8
  %138 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %priority, align 4
  %shl2291176 = shl nuw i32 1, %139
  %and2301177 = and i32 %shl2291176, %137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2301177)
  %tobool231.not1178 = icmp eq i32 %and2301177, 0
  br i1 %tobool231.not1178, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph, !prof !60

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev238 = getelementptr i8, ptr %dev, i32 2308
  br label %while.body

while.body:                                       ; preds = %switch.lookup1200.while.body_crit_edge, %while.body.lr.ph
  %140 = phi i32 [ %139, %while.body.lr.ph ], [ %154, %switch.lookup1200.while.body_crit_edge ]
  %141 = ptrtoint ptr %dev238 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev238, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %142, ptr noundef nonnull @.str.10, i32 noundef %140) #10
  %143 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %144)
  %145 = icmp ult i32 %144, 8
  br i1 %145, label %switch.hole_check, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

switch.hole_check:                                ; preds = %while.body
  %switch.maskindex = trunc i32 %144 to i8
  %switch.shifted = lshr i8 -7, %switch.maskindex
  %146 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %switch.lobit.not = icmp eq i8 %146, 0
  br i1 %switch.lobit.not, label %switch.hole_check.while.end_crit_edge, label %switch.lookup1200

switch.hole_check.while.end_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

switch.lookup1200:                                ; preds = %switch.hole_check
  %switch.gep1201 = getelementptr inbounds [8 x i32], ptr @switch.table.rtllib_xmit_inter.19, i32 0, i32 %144
  %147 = ptrtoint ptr %switch.gep1201 to i32
  call void @__asan_load4_noabort(i32 %147)
  %switch.load1202 = load i32, ptr %switch.gep1201, align 4
  %148 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %switch.load1202, ptr %priority, align 4
  %149 = ptrtoint ptr %dev238 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev238, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %150, ptr noundef nonnull @.str.11, i32 noundef %switch.load1202) #10
  %151 = ptrtoint ptr %wmm_acm to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %wmm_acm, align 8
  %153 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %priority, align 4
  %shl229 = shl nuw i32 1, %154
  %and230 = and i32 %shl229, %152
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %switch.lookup1200.while.end_crit_edge, label %switch.lookup1200.while.body_crit_edge, !prof !60

switch.lookup1200.while.body_crit_edge:           ; preds = %switch.lookup1200
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

switch.lookup1200.while.end_crit_edge:            ; preds = %switch.lookup1200
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %switch.lookup1200.while.end_crit_edge, %switch.hole_check.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %155 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %priority, align 4
  %157 = trunc i32 %156 to i16
  %conv249 = shl i16 %157, 8
  %158 = and i16 %conv249, 3840
  %qos_ctl250 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 6
  %159 = ptrtoint ptr %qos_ctl250 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %qos_ctl250, align 2
  br label %if.end252

if.end252:                                        ; preds = %while.end, %if.end225.if.end252_crit_edge
  %hdr_len.0 = phi i32 [ 26, %while.end ], [ 24, %if.end225.if.end252_crit_edge ]
  %sub = sub nsw i32 %frag_size.0, %hdr_len.0
  %config = getelementptr i8, ptr %dev, i32 20836
  %160 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %config, align 4
  %and253 = and i32 %161, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  %sub256 = add nsw i32 %sub, -4
  %spec.select = select i1 %tobool254.not, i32 %sub, i32 %sub256
  br i1 %103, label %if.then259, label %if.end252.if.end268_crit_edge

if.end252.if.end268_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.then259:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  %ops260 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %84, i32 0, i32 1
  %162 = ptrtoint ptr %ops260 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops260, align 4
  %extra_mpdu_prefix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %163, i32 0, i32 13
  %164 = ptrtoint ptr %extra_mpdu_prefix_len to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %extra_mpdu_prefix_len, align 4
  %extra_mpdu_postfix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %163, i32 0, i32 14
  %166 = ptrtoint ptr %extra_mpdu_postfix_len to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %extra_mpdu_postfix_len, align 4
  %extra_msdu_prefix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %163, i32 0, i32 15
  %168 = ptrtoint ptr %extra_msdu_prefix_len to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %extra_msdu_prefix_len, align 4
  %extra_msdu_postfix_len = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %163, i32 0, i32 16
  %170 = ptrtoint ptr %extra_msdu_postfix_len to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %extra_msdu_postfix_len, align 4
  %172 = add i32 %165, %167
  %173 = add i32 %172, %169
  %174 = add i32 %173, %171
  %sub267 = sub i32 %spec.select, %174
  br label %if.end268

if.end268:                                        ; preds = %if.then259, %if.end252.if.end268_crit_edge
  %bytes_per_frag.1 = phi i32 [ %sub267, %if.then259 ], [ %spec.select, %if.end252.if.end268_crit_edge ]
  %add166.frozen = freeze i32 %add166
  %bytes_per_frag.1.frozen = freeze i32 %bytes_per_frag.1
  %div = sdiv i32 %add166.frozen, %bytes_per_frag.1.frozen
  %175 = mul i32 %div, %bytes_per_frag.1.frozen
  %rem.decomposed = sub i32 %add166.frozen, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool269.not = icmp eq i32 %rem.decomposed, 0
  %not.tobool269.not = xor i1 %tobool269.not, true
  %inc271 = zext i1 %not.tobool269.not to i32
  %nr_frags.0 = add i32 %div, %inc271
  %bytes_last_frag.0 = select i1 %tobool269.not, i32 %bytes_per_frag.1, i32 %rem.decomposed
  %tx_headroom = getelementptr i8, ptr %dev, i32 20832
  %176 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tx_headroom, align 8
  %add274 = add i32 %177, %frag_size.0
  %call275 = tail call fastcc ptr @rtllib_alloc_txb(i32 noundef %nr_frags.0, i32 noundef %add274)
  %tobool276.not = icmp eq ptr %call275, null
  br i1 %tobool276.not, label %if.end268.failed_crit_edge, label %if.end287, !prof !59

if.end268.failed_crit_edge:                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end287:                                        ; preds = %if.end268
  %conv288 = zext i1 %103 to i8
  %encrypted289 = getelementptr inbounds %struct.rtllib_txb, ptr %call275, i32 0, i32 1
  %178 = ptrtoint ptr %encrypted289 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv288, ptr %encrypted289, align 1
  %conv290 = trunc i32 %add166 to i16
  %179 = tail call i16 @llvm.bswap.i16(i16 %conv290)
  %payload_size291 = getelementptr inbounds %struct.rtllib_txb, ptr %call275, i32 0, i32 6
  %180 = ptrtoint ptr %payload_size291 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %payload_size291, align 4
  br i1 %tobool171.not, label %if.end287.if.end318_crit_edge, label %if.then293

if.end287.if.end318_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318

if.then293:                                       ; preds = %if.end287
  %181 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp295 = icmp eq i32 %182, 0
  br i1 %cmp295, label %if.then293.if.end318_crit_edge, label %cond.false

if.then293.if.end318_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318

cond.false:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp298 = icmp ult i32 %182, 3
  br i1 %cmp298, label %cond.false.if.end318_crit_edge, label %cond.false301

cond.false.if.end318_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318

cond.false301:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp303 = icmp eq i32 %182, 3
  br i1 %cmp303, label %cond.false301.if.end318_crit_edge, label %cond.false306

cond.false301.if.end318_crit_edge:                ; preds = %cond.false301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318

cond.false306:                                    ; preds = %cond.false301
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp308 = icmp ult i32 %182, 6
  %cond = select i1 %cmp308, i8 2, i8 3
  br label %if.end318

if.end318:                                        ; preds = %cond.false306, %cond.false301.if.end318_crit_edge, %cond.false.if.end318_crit_edge, %if.then293.if.end318_crit_edge, %if.end287.if.end318_crit_edge
  %.sink1196 = phi i8 [ 1, %if.then293.if.end318_crit_edge ], [ 0, %cond.false.if.end318_crit_edge ], [ %cond, %cond.false306 ], [ 1, %cond.false301.if.end318_crit_edge ], [ 1, %if.end287.if.end318_crit_edge ]
  %queue_index317 = getelementptr inbounds %struct.rtllib_txb, ptr %call275, i32 0, i32 2
  %183 = ptrtoint ptr %queue_index317 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %.sink1196, ptr %queue_index317, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags.0)
  %cmp3191179 = icmp sgt i32 %nr_frags.0, 0
  br i1 %cmp3191179, label %for.body.lr.ph, label %if.end318.for.end_crit_edge

if.end318.for.end_crit_edge:                      ; preds = %if.end318
  %.pre = select i1 %tobool171.not, i1 true, i1 %tobool.i
  br i1 %.pre, label %if.end318.for.end_crit_edge.if.else531_crit_edge, label %if.end318.for.end_crit_edge.if.then439_crit_edge

if.end318.for.end_crit_edge.if.then439_crit_edge: ; preds = %if.end318.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then439

if.end318.for.end_crit_edge.if.else531_crit_edge: ; preds = %if.end318.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else531

for.body.lr.ph:                                   ; preds = %if.end318
  %hwsec_active = getelementptr i8, ptr %dev, i32 2482
  %ops373 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %84, i32 0, i32 1
  %sub384 = add nsw i32 %nr_frags.0, -1
  %conv389 = or i16 %conv219, 1024
  %184 = call i16 @llvm.bswap.i16(i16 %conv389)
  %brmerge1006 = select i1 %tobool171.not, i1 true, i1 %tobool.i
  %seq_ctrl = getelementptr i8, ptr %dev, i32 26076
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32457, i16 %33)
  %switch.selectcmp.case1.i = icmp eq i16 %33, -32457
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32525, i16 %33)
  %switch.selectcmp.case2.i = icmp eq i16 %33, -32525
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %185 = select i1 %switch.selectcmp.i, i8 -8, i8 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc435, %for.inc.for.body_crit_edge ]
  %arrayidx322 = getelementptr %struct.rtllib_txb, ptr %call275, i32 0, i32 7, i32 %i.01180
  %186 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx322, align 4
  %add.ptr325 = getelementptr %struct.sk_buff, ptr %187, i32 0, i32 3, i32 8
  br i1 %tobool171.not, label %if.else357, label %if.then327

if.then327:                                       ; preds = %for.body
  %188 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %priority, align 4
  %priority329 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 15, i32 0, i32 6
  %190 = ptrtoint ptr %priority329 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %priority329, align 4
  %191 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp331 = icmp eq i32 %191, 0
  br i1 %cmp331, label %if.then327.if.end360_crit_edge, label %cond.false334

if.then327.if.end360_crit_edge:                   ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end360

cond.false334:                                    ; preds = %if.then327
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %cmp336 = icmp ult i32 %191, 3
  br i1 %cmp336, label %cond.false334.if.end360_crit_edge, label %cond.false339

cond.false334.if.end360_crit_edge:                ; preds = %cond.false334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end360

cond.false339:                                    ; preds = %cond.false334
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %cmp341 = icmp eq i32 %191, 3
  br i1 %cmp341, label %cond.false339.if.end360_crit_edge, label %cond.false344

cond.false339.if.end360_crit_edge:                ; preds = %cond.false339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end360

cond.false344:                                    ; preds = %cond.false339
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %191)
  %cmp346 = icmp ult i32 %191, 6
  %cond348 = select i1 %cmp346, i8 2, i8 3
  br label %if.end360

if.else357:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %priority358 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 15, i32 0, i32 6
  %192 = ptrtoint ptr %priority358 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %priority358, align 4
  br label %if.end360

if.end360:                                        ; preds = %if.else357, %cond.false344, %cond.false339.if.end360_crit_edge, %cond.false334.if.end360_crit_edge, %if.then327.if.end360_crit_edge
  %.sink1197 = phi i8 [ 1, %if.else357 ], [ 1, %if.then327.if.end360_crit_edge ], [ 0, %cond.false334.if.end360_crit_edge ], [ %cond348, %cond.false344 ], [ 1, %cond.false339.if.end360_crit_edge ]
  %queue_index359 = getelementptr %struct.sk_buff, ptr %187, i32 0, i32 3, i32 13
  %193 = ptrtoint ptr %queue_index359 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %.sink1197, ptr %queue_index359, align 1
  %194 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tx_headroom, align 8
  %data.i1026 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 19
  %196 = ptrtoint ptr %data.i1026 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %data.i1026, align 4
  %add.ptr.i1027 = getelementptr i8, ptr %197, i32 %195
  store ptr %add.ptr.i1027, ptr %data.i1026, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 16
  %198 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i1028 = getelementptr i8, ptr %199, i32 %195
  store ptr %add.ptr1.i1028, ptr %tail.i, align 8
  br i1 %103, label %if.then363, label %if.else378

if.then363:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool364.not = icmp ne i8 %201, 0
  %202 = ptrtoint ptr %add.ptr325 to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load369 = load i8, ptr %add.ptr325, align 2
  %bf.clear370 = and i8 %bf.load369, -2
  %masksel = zext i1 %tobool364.not to i8
  %storemerge1003 = or i8 %bf.clear370, %masksel
  store i8 %storemerge1003, ptr %add.ptr325, align 2
  %203 = ptrtoint ptr %ops373 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops373, align 4
  %extra_mpdu_prefix_len374 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %204, i32 0, i32 13
  %205 = ptrtoint ptr %extra_mpdu_prefix_len374 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %extra_mpdu_prefix_len374, align 4
  %extra_msdu_prefix_len376 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %204, i32 0, i32 15
  %207 = ptrtoint ptr %extra_msdu_prefix_len376 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %extra_msdu_prefix_len376, align 4
  %add377 = add i32 %208, %206
  %add.ptr.i1030 = getelementptr i8, ptr %add.ptr.i1027, i32 %add377
  %209 = ptrtoint ptr %data.i1026 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %add.ptr.i1030, ptr %data.i1026, align 4
  %add.ptr1.i1032 = getelementptr i8, ptr %add.ptr1.i1028, i32 %add377
  %210 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %add.ptr1.i1032, ptr %tail.i, align 8
  br label %if.end382

if.else378:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %add.ptr325 to i32
  call void @__asan_load1_noabort(i32 %211)
  %bf.load379 = load i8, ptr %add.ptr325, align 2
  %bf.clear380 = and i8 %bf.load379, -2
  store i8 %bf.clear380, ptr %add.ptr325, align 2
  br label %if.end382

if.end382:                                        ; preds = %if.else378, %if.then363
  %call.i1033 = call ptr @skb_put(ptr noundef %187, i32 noundef %hdr_len.0) #7
  %212 = call ptr @memcpy(ptr %call.i1033, ptr %header, i32 %hdr_len.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.01180, i32 %sub384)
  %cmp385.not = icmp eq i32 %i.01180, %sub384
  br i1 %cmp385.not, label %if.end382.if.end392_crit_edge, label %if.then387

if.end382.if.end392_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end392

if.then387:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %call.i1033 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 2)
  store i16 %184, ptr %call.i1033, align 1
  br label %if.end392

if.end392:                                        ; preds = %if.then387, %if.end382.if.end392_crit_edge
  %bytes.0 = phi i32 [ %bytes_per_frag.1, %if.then387 ], [ %bytes_last_frag.0, %if.end382.if.end392_crit_edge ]
  br i1 %brmerge1006, label %if.else406, label %if.then396

if.then396:                                       ; preds = %if.end392
  %214 = ptrtoint ptr %addr1215 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %addr1215, align 4
  %216 = and i32 %215, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.i.not.i = icmp eq i32 %216, 0
  br i1 %tobool.i.not.i, label %if.end.i1036, label %if.then396.rtllib_query_seqnum.exit_crit_edge

if.then396.rtllib_query_seqnum.exit_crit_edge:    ; preds = %if.then396
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_seqnum.exit

if.end.i1036:                                     ; preds = %if.then396
  %217 = ptrtoint ptr %data.i1026 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data.i1026, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %218, align 2
  %221 = and i16 %220, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %221)
  %cmp.i1035 = icmp eq i16 %221, 136
  br i1 %cmp.i1035, label %if.then2.i, label %if.end.i1036.rtllib_query_seqnum.exit_crit_edge

if.end.i1036.rtllib_query_seqnum.exit_crit_edge:  ; preds = %if.end.i1036
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_seqnum.exit

if.then2.i:                                       ; preds = %if.end.i1036
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS.i) #7
  %222 = ptrtoint ptr %pTS.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %pTS.i, align 4
  %priority.i1037 = getelementptr inbounds %struct.sk_buff, ptr %187, i32 0, i32 15, i32 0, i32 6
  %223 = ptrtoint ptr %priority.i1037 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %priority.i1037, align 4
  %conv3.i = trunc i32 %224 to i8
  %call4.i = call zeroext i1 @GetTs(ptr noundef %add.ptr.i.i, ptr noundef nonnull %pTS.i, ptr noundef %addr1215, i8 noundef zeroext %conv3.i, i32 noundef 0, i1 noundef zeroext true) #7
  br i1 %call4.i, label %if.end6.i, label %if.then2.i.cleanup.i_crit_edge

if.then2.i.cleanup.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %225 = ptrtoint ptr %pTS.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pTS.i, align 4
  %TxCurSeq.i = getelementptr inbounds %struct.tx_ts_record, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %TxCurSeq.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %TxCurSeq.i, align 4
  %229 = add i16 %228, 1
  %230 = and i16 %229, 4095
  store i16 %230, ptr %TxCurSeq.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end6.i, %if.then2.i.cleanup.i_crit_edge
  %retval.0.i1038 = phi i16 [ %228, %if.end6.i ], [ 0, %if.then2.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS.i) #7
  br label %rtllib_query_seqnum.exit

rtllib_query_seqnum.exit:                         ; preds = %cleanup.i, %if.end.i1036.rtllib_query_seqnum.exit_crit_edge, %if.then396.rtllib_query_seqnum.exit_crit_edge
  %retval.1.i = phi i16 [ %retval.0.i1038, %cleanup.i ], [ 0, %if.then396.rtllib_query_seqnum.exit_crit_edge ], [ 0, %if.end.i1036.rtllib_query_seqnum.exit_crit_edge ]
  %seq_ctl = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %call.i1033, i32 0, i32 5
  %conv401 = zext i16 %retval.1.i to i32
  %shl402 = shl nuw nsw i32 %conv401, 4
  %or403 = or i32 %shl402, %i.01180
  %conv404 = trunc i32 %or403 to i16
  %231 = call i16 @llvm.bswap.i16(i16 %conv404)
  %232 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_storeN_noabort(i32 %232, i32 2)
  store i16 %231, ptr %seq_ctl, align 1
  br label %if.end413

if.else406:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #9
  %233 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %seq_ctrl, align 4
  %conv408 = zext i16 %234 to i32
  %shl409 = shl nuw nsw i32 %conv408, 4
  %or410 = or i32 %shl409, %i.01180
  %conv411 = trunc i32 %or410 to i16
  %235 = call i16 @llvm.bswap.i16(i16 %conv411)
  %seq_ctl412 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %call.i1033, i32 0, i32 5
  %236 = ptrtoint ptr %seq_ctl412 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 2)
  store i16 %235, ptr %seq_ctl412, align 1
  br label %if.end413

if.end413:                                        ; preds = %if.else406, %rtllib_query_seqnum.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01180)
  %cmp414 = icmp eq i32 %i.01180, 0
  br i1 %cmp414, label %if.then416, label %if.end413.if.end421_crit_edge

if.end413.if.end421_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end421

if.then416:                                       ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #9
  %call417 = call ptr @skb_put(ptr noundef %187, i32 noundef 8) #7
  %237 = ptrtoint ptr %call417 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -86, ptr %call417, align 1
  %ssap.i = getelementptr inbounds %struct.rtllib_snap_hdr, ptr %call417, i32 0, i32 1
  %238 = ptrtoint ptr %ssap.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 -86, ptr %ssap.i, align 1
  %ctrl.i = getelementptr inbounds %struct.rtllib_snap_hdr, ptr %call417, i32 0, i32 2
  %239 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 3, ptr %ctrl.i, align 1
  %oui5.i = getelementptr inbounds %struct.rtllib_snap_hdr, ptr %call417, i32 0, i32 3
  %240 = ptrtoint ptr %oui5.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %oui5.i, align 1
  %arrayidx9.i = getelementptr %struct.rtllib_snap_hdr, ptr %call417, i32 0, i32 3, i32 1
  %241 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %arrayidx9.i, align 1
  %arrayidx12.i = getelementptr %struct.rtllib_snap_hdr, ptr %call417, i32 0, i32 3, i32 2
  %242 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %185, ptr %arrayidx12.i, align 1
  %add.ptr.i1039 = getelementptr i8, ptr %call417, i32 6
  %243 = ptrtoint ptr %add.ptr.i1039 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %33, ptr %add.ptr.i1039, align 2
  %sub420 = add i32 %bytes.0, -8
  br label %if.end421

if.end421:                                        ; preds = %if.then416, %if.end413.if.end421_crit_edge
  %bytes.1 = phi i32 [ %sub420, %if.then416 ], [ %bytes.0, %if.end413.if.end421_crit_edge ]
  %244 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data, align 4
  %call.i1040 = call ptr @skb_put(ptr noundef %187, i32 noundef %bytes.1) #7
  %246 = call ptr @memcpy(ptr %call.i1040, ptr %245, i32 %bytes.1)
  %call424 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %bytes.1) #7
  br i1 %103, label %if.then426, label %if.end421.if.end428_crit_edge

if.end421.if.end428_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end428

if.then426:                                       ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #9
  %call427 = call i32 @rtllib_encrypt_fragment(ptr noundef %add.ptr.i.i, ptr noundef %187, i32 noundef %hdr_len.0)
  br label %if.end428

if.end428:                                        ; preds = %if.then426, %if.end421.if.end428_crit_edge
  %247 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %config, align 4
  %and430 = and i32 %248, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430)
  %tobool431.not = icmp eq i32 %and430, 0
  br i1 %tobool431.not, label %if.end428.for.inc_crit_edge, label %if.then432

if.end428.for.inc_crit_edge:                      ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then432:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #9
  %call433 = call ptr @skb_put(ptr noundef %187, i32 noundef 4) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then432, %if.end428.for.inc_crit_edge
  %inc435 = add nuw nsw i32 %i.01180, 1
  %exitcond.not = icmp eq i32 %inc435, %nr_frags.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %brmerge1006, label %for.end.if.else531_crit_edge, label %for.end.if.then439_crit_edge

for.end.if.then439_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then439

for.end.if.else531_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else531

if.then439:                                       ; preds = %for.end.if.then439_crit_edge, %if.end318.for.end_crit_edge.if.then439_crit_edge
  %249 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %cmp442 = icmp eq i32 %250, 0
  br i1 %cmp442, label %cond.end464.thread, label %cond.false445

cond.false445:                                    ; preds = %if.then439
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp447 = icmp ult i32 %250, 3
  br i1 %cmp447, label %cond.end464.thread1189, label %cond.false450

cond.false450:                                    ; preds = %cond.false445
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp452 = icmp eq i32 %250, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %250)
  %cmp457 = icmp ult i32 %250, 6
  %cond459.op = select i1 %cmp457, i32 3, i32 4
  %add466 = select i1 %cmp452, i32 2, i32 %cond459.op
  %arrayidx467 = getelementptr %struct.rtllib_device, ptr %add.ptr.i.i, i32 0, i32 105, i32 %add466
  %251 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx467, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %252)
  %cmp469 = icmp eq i16 %252, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp484 = icmp eq i32 %250, 3
  br i1 %cmp469, label %cond.false482.critedge, label %cond.false511.critedge

cond.end464.thread1189:                           ; preds = %cond.false445
  %arrayidx4671192 = getelementptr i8, ptr %dev, i32 26078
  %253 = ptrtoint ptr %arrayidx4671192 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx4671192, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %254)
  %cmp4691193 = icmp eq i16 %254, 4095
  br i1 %cmp4691193, label %cond.end464.thread1189.cond.end496_crit_edge, label %cond.end464.thread1189.cond.end525_crit_edge

cond.end464.thread1189.cond.end525_crit_edge:     ; preds = %cond.end464.thread1189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end525

cond.end464.thread1189.cond.end496_crit_edge:     ; preds = %cond.end464.thread1189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end496

cond.end464.thread:                               ; preds = %if.then439
  %arrayidx4671158 = getelementptr i8, ptr %dev, i32 26080
  %255 = ptrtoint ptr %arrayidx4671158 to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %arrayidx4671158, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %256)
  %cmp4691159 = icmp eq i16 %256, 4095
  br i1 %cmp4691159, label %cond.end464.thread.cond.end496_crit_edge, label %cond.end464.thread.cond.end525_crit_edge

cond.end464.thread.cond.end525_crit_edge:         ; preds = %cond.end464.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end525

cond.end464.thread.cond.end496_crit_edge:         ; preds = %cond.end464.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end496

cond.false482.critedge:                           ; preds = %cond.false450
  br i1 %cmp484, label %cond.false482.critedge.cond.end496_crit_edge, label %cond.false487

cond.false482.critedge.cond.end496_crit_edge:     ; preds = %cond.false482.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end496

cond.false487:                                    ; preds = %cond.false482.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %250)
  %cmp489 = icmp ult i32 %250, 6
  %phi.bo1002 = select i1 %cmp489, i32 3, i32 4
  br label %cond.end496

cond.end496:                                      ; preds = %cond.false487, %cond.false482.critedge.cond.end496_crit_edge, %cond.end464.thread.cond.end496_crit_edge, %cond.end464.thread1189.cond.end496_crit_edge
  %cond497 = phi i32 [ %phi.bo1002, %cond.false487 ], [ 2, %cond.false482.critedge.cond.end496_crit_edge ], [ 2, %cond.end464.thread.cond.end496_crit_edge ], [ 1, %cond.end464.thread1189.cond.end496_crit_edge ]
  %arrayidx499 = getelementptr %struct.rtllib_device, ptr %add.ptr.i.i, i32 0, i32 105, i32 %cond497
  %257 = ptrtoint ptr %arrayidx499 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 0, ptr %arrayidx499, align 2
  br label %if.then577

cond.false511.critedge:                           ; preds = %cond.false450
  br i1 %cmp484, label %cond.false511.critedge.cond.end525_crit_edge, label %cond.false516

cond.false511.critedge.cond.end525_crit_edge:     ; preds = %cond.false511.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end525

cond.false516:                                    ; preds = %cond.false511.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %250)
  %cmp518 = icmp ult i32 %250, 6
  %phi.bo = select i1 %cmp518, i32 3, i32 4
  br label %cond.end525

cond.end525:                                      ; preds = %cond.false516, %cond.false511.critedge.cond.end525_crit_edge, %cond.end464.thread.cond.end525_crit_edge, %cond.end464.thread1189.cond.end525_crit_edge
  %cond526 = phi i32 [ %phi.bo, %cond.false516 ], [ 2, %cond.false511.critedge.cond.end525_crit_edge ], [ 2, %cond.end464.thread.cond.end525_crit_edge ], [ 1, %cond.end464.thread1189.cond.end525_crit_edge ]
  %arrayidx528 = getelementptr %struct.rtllib_device, ptr %add.ptr.i.i, i32 0, i32 105, i32 %cond526
  %258 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx528, align 2
  %inc529 = add i16 %259, 1
  store i16 %inc529, ptr %arrayidx528, align 2
  br label %if.then577

if.else531:                                       ; preds = %for.end.if.else531_crit_edge, %if.end318.for.end_crit_edge.if.else531_crit_edge
  %seq_ctrl532 = getelementptr i8, ptr %dev, i32 26076
  %260 = ptrtoint ptr %seq_ctrl532 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %seq_ctrl532, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %261)
  %cmp535 = icmp eq i16 %261, 4095
  br i1 %cmp535, label %if.then537, label %if.else540

if.then537:                                       ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %seq_ctrl532 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %seq_ctrl532, align 4
  br label %if.then577

if.else540:                                       ; preds = %if.else531
  call void @__sanitizer_cov_trace_pc() #9
  %inc543 = add i16 %261, 1
  %263 = ptrtoint ptr %seq_ctrl532 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %inc543, ptr %seq_ctrl532, align 4
  br label %if.then577

if.else546:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %18)
  %cmp548 = icmp ult i32 %18, 24
  br i1 %cmp548, label %if.then556, label %if.end559, !prof !59

if.then556:                                       ; preds = %if.else546
  call void @__sanitizer_cov_trace_pc() #9
  %dev557 = getelementptr i8, ptr %dev, i32 2308
  %264 = ptrtoint ptr %dev557 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev557, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %265, ptr noundef nonnull @.str.3, i32 noundef %18) #10
  br label %if.end705.critedge

if.end559:                                        ; preds = %if.else546
  %call561 = tail call fastcc ptr @rtllib_alloc_txb(i32 noundef 1, i32 noundef %18)
  %tobool562.not = icmp eq ptr %call561, null
  br i1 %tobool562.not, label %if.end559.failed_crit_edge, label %if.end565

if.end559.failed_crit_edge:                       ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end565:                                        ; preds = %if.end559
  call void @__sanitizer_cov_trace_pc() #9
  %encrypted566 = getelementptr inbounds %struct.rtllib_txb, ptr %call561, i32 0, i32 1
  %266 = ptrtoint ptr %encrypted566 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %encrypted566, align 1
  %267 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %len, align 4
  %conv568 = trunc i32 %268 to i16
  %269 = tail call i16 @llvm.bswap.i16(i16 %conv568)
  %payload_size569 = getelementptr inbounds %struct.rtllib_txb, ptr %call561, i32 0, i32 6
  %270 = ptrtoint ptr %payload_size569 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %269, ptr %payload_size569, align 4
  %fragments570 = getelementptr inbounds %struct.rtllib_txb, ptr %call561, i32 0, i32 7
  %271 = ptrtoint ptr %fragments570 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %fragments570, align 4
  %data572 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %273 = ptrtoint ptr %data572 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %data572, align 4
  %275 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %len, align 4
  %call.i1041 = tail call ptr @skb_put(ptr noundef %272, i32 noundef %276) #7
  %277 = call ptr @memcpy(ptr %call.i1041, ptr %274, i32 %276)
  br label %if.then577

if.then577:                                       ; preds = %if.end565, %if.else540, %if.then537, %cond.end525, %cond.end496, %if.end55
  %txb.01172 = phi ptr [ %call561, %if.end565 ], [ %call43, %if.end55 ], [ %call275, %if.then537 ], [ %call275, %if.else540 ], [ %call275, %cond.end496 ], [ %call275, %cond.end525 ]
  %bdhcp.3.off01171 = phi i1 [ false, %if.end565 ], [ false, %if.end55 ], [ %extract.t999, %if.then537 ], [ %extract.t999, %if.else540 ], [ %extract.t999, %cond.end496 ], [ %extract.t999, %cond.end525 ]
  %ether_type.0.shrunk1170 = phi i16 [ 0, %if.end565 ], [ %33, %if.end55 ], [ %33, %if.then537 ], [ %33, %if.else540 ], [ %33, %cond.end496 ], [ %33, %cond.end525 ]
  %fragments578 = getelementptr inbounds %struct.rtllib_txb, ptr %txb.01172, i32 0, i32 7
  %278 = ptrtoint ptr %fragments578 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %fragments578, align 4
  %add.ptr582 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 8
  %bTxEnableFwCalcDur = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 10
  %280 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %280)
  %bf.load583 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set585 = or i16 %bf.load583, 2048
  store i16 %bf.set585, ptr %bTxEnableFwCalcDur, align 2
  %priority586 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %281 = ptrtoint ptr %priority586 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %priority586, align 4
  %conv587 = trunc i32 %282 to i8
  %priority588 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 19
  %283 = ptrtoint ptr %priority588 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv587, ptr %priority588, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %ether_type.0.shrunk1170)
  %cmp589 = icmp eq i16 %ether_type.0.shrunk1170, -30578
  br i1 %cmp589, label %if.then591, label %if.else609

if.then591:                                       ; preds = %if.then577
  %pHTInfo = getelementptr i8, ptr %dev, i32 2504
  %284 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %pHTInfo, align 8
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %285, i32 0, i32 51
  %286 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %286, i32 4)
  %287 = load i32, ptr %IOTAction, align 1
  %and592 = and i32 %287, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and592)
  %tobool593.not = icmp eq i32 %and592, 0
  br i1 %tobool593.not, label %if.else599, label %if.then594

if.then594:                                       ; preds = %if.then591
  call void @__sanitizer_cov_trace_pc() #9
  %call595 = call zeroext i8 @MgntQuery_TxRateExcludeCCKRates(ptr noundef %add.ptr.i.i) #7
  %288 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %288)
  %bf.load596 = load i8, ptr %add.ptr582, align 2
  %bf.clear597 = and i8 %bf.load596, -5
  br label %if.end605

if.else599:                                       ; preds = %if.then591
  call void @__sanitizer_cov_trace_pc() #9
  %basic_rate = getelementptr i8, ptr %dev, i32 26068
  %289 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %basic_rate, align 4
  %conv600 = trunc i32 %290 to i8
  %291 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load602 = load i8, ptr %add.ptr582, align 2
  %bf.set604 = or i8 %bf.load602, 4
  br label %if.end605

if.end605:                                        ; preds = %if.else599, %if.then594
  %call595.sink = phi i8 [ %conv600, %if.else599 ], [ %call595, %if.then594 ]
  %storemerge1001 = phi i8 [ %bf.set604, %if.else599 ], [ %bf.clear597, %if.then594 ]
  %292 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 20
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %call595.sink, ptr %292, align 2
  %RATRIndex = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 16
  %294 = ptrtoint ptr %RATRIndex to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 7, ptr %RATRIndex, align 2
  %bf.set608 = or i8 %storemerge1001, 2
  %295 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %bf.set608, ptr %add.ptr582, align 2
  br label %if.then679

if.else609:                                       ; preds = %if.then577
  %addr1610 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2
  %296 = ptrtoint ptr %addr1610 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %addr1610, align 4
  %298 = and i32 %297, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool.i1042.not = icmp eq i32 %298, 0
  br i1 %tobool.i1042.not, label %if.else609.if.end617_crit_edge, label %if.then613

if.else609.if.end617_crit_edge:                   ; preds = %if.else609
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end617

if.then613:                                       ; preds = %if.else609
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set616 = or i16 %bf.load583, 2056
  %299 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 %bf.set616, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end617

if.end617:                                        ; preds = %if.then613, %if.else609.if.end617_crit_edge
  %300 = ptrtoint ptr %addr1610 to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %addr1610, align 2
  %add.ptr1.i1043 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 2
  %302 = ptrtoint ptr %add.ptr1.i1043 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %add.ptr1.i1043, align 2
  %and9.i = and i16 %303, %301
  %add.ptr3.i = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %header, i32 0, i32 2, i32 4
  %304 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %305
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i1044 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i1044, label %if.then621, label %if.end617.if.end625_crit_edge

if.end617.if.end625_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end625

if.then621:                                       ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %306)
  %bf.load622 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set624 = or i16 %bf.load622, 4
  store i16 %bf.set624, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end625

if.end625:                                        ; preds = %if.then621, %if.end617.if.end625_crit_edge
  %bTxDisableRateFallBack.i = getelementptr i8, ptr %dev, i32 2618
  %307 = ptrtoint ptr %bTxDisableRateFallBack.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %bTxDisableRateFallBack.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool.not.i = icmp eq i8 %308, 0
  br i1 %tobool.not.i, label %if.end625.if.end.i1045_crit_edge, label %if.then.i

if.end625.if.end.i1045_crit_edge:                 ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i1045

if.then.i:                                        ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %309)
  %bf.load.i = load i8, ptr %add.ptr582, align 2
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %add.ptr582, align 2
  br label %if.end.i1045

if.end.i1045:                                     ; preds = %if.then.i, %if.end625.if.end.i1045_crit_edge
  %bTxUseDriverAssingedRate.i = getelementptr i8, ptr %dev, i32 2619
  %310 = ptrtoint ptr %bTxUseDriverAssingedRate.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %bTxUseDriverAssingedRate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool1.not.i = icmp eq i8 %311, 0
  br i1 %tobool1.not.i, label %if.end.i1045.if.end6.i1047_crit_edge, label %if.then2.i1046

if.end.i1045.if.end6.i1047_crit_edge:             ; preds = %if.end.i1045
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i1047

if.then2.i1046:                                   ; preds = %if.end.i1045
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %312)
  %bf.load3.i = load i8, ptr %add.ptr582, align 2
  %bf.set5.i = or i8 %bf.load3.i, 2
  store i8 %bf.set5.i, ptr %add.ptr582, align 2
  br label %if.end6.i1047

if.end6.i1047:                                    ; preds = %if.then2.i1046, %if.end.i1045.if.end6.i1047_crit_edge
  %313 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %313)
  %bf.load7.i = load i8, ptr %add.ptr582, align 2
  %314 = and i8 %bf.load7.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %314)
  %.not.i = icmp eq i8 %314, 6
  br i1 %.not.i, label %if.end6.i1047.rtllib_txrate_selectmode.exit_crit_edge, label %if.then14.i

if.end6.i1047.rtllib_txrate_selectmode.exit_crit_edge: ; preds = %if.end6.i1047
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_txrate_selectmode.exit

if.then14.i:                                      ; preds = %if.end6.i1047
  %iw_mode.i = getelementptr i8, ptr %dev, i32 20736
  %315 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %iw_mode.i, align 8
  %.off.i = add i32 %316, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then18.i, label %if.then14.i.rtllib_txrate_selectmode.exit_crit_edge

if.then14.i.rtllib_txrate_selectmode.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_txrate_selectmode.exit

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %RATRIndex.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 16
  %317 = ptrtoint ptr %RATRIndex.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %RATRIndex.i, align 2
  br label %rtllib_txrate_selectmode.exit

rtllib_txrate_selectmode.exit:                    ; preds = %if.then18.i, %if.then14.i.rtllib_txrate_selectmode.exit_crit_edge, %if.end6.i1047.rtllib_txrate_selectmode.exit_crit_edge
  %318 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %318)
  %bf.load627 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %319 = and i16 %bf.load627, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %319)
  %320 = icmp eq i16 %319, 0
  br i1 %320, label %if.else643, label %if.then639

if.then639:                                       ; preds = %rtllib_txrate_selectmode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %basic_rate640 = getelementptr i8, ptr %dev, i32 26068
  %321 = ptrtoint ptr %basic_rate640 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %basic_rate640, align 4
  %conv641 = trunc i32 %322 to i8
  br label %if.end646

if.else643:                                       ; preds = %rtllib_txrate_selectmode.exit
  %mode.i = getelementptr i8, ptr %dev, i32 25880
  %323 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %mode.i, align 8
  %and.i1048 = and i32 %324, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1048)
  %tobool.not.i1049 = icmp eq i32 %and.i1048, 0
  br i1 %tobool.not.i1049, label %if.end.i1052, label %if.then.i1050

if.then.i1050:                                    ; preds = %if.else643
  call void @__sanitizer_cov_trace_pc() #9
  %rate.i = getelementptr i8, ptr %dev, i32 26064
  %325 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %rate.i, align 8
  %conv.i = trunc i32 %326 to i8
  br label %if.end646

if.end.i1052:                                     ; preds = %if.else643
  %HTCurrentOperaRate.i = getelementptr i8, ptr %dev, i32 2616
  %327 = ptrtoint ptr %HTCurrentOperaRate.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %HTCurrentOperaRate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool1.not.i1051 = icmp eq i8 %328, 0
  br i1 %tobool1.not.i1051, label %if.else.i, label %if.end.i1052.if.end646_crit_edge

if.end.i1052.if.end646_crit_edge:                 ; preds = %if.end.i1052
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end646

if.else.i:                                        ; preds = %if.end.i1052
  call void @__sanitizer_cov_trace_pc() #9
  %rate4.i = getelementptr i8, ptr %dev, i32 26064
  %329 = ptrtoint ptr %rate4.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %rate4.i, align 8
  %331 = trunc i32 %330 to i8
  %conv6.i = and i8 %331, 127
  br label %if.end646

if.end646:                                        ; preds = %if.else.i, %if.end.i1052.if.end646_crit_edge, %if.then.i1050, %if.then639
  %retval.0.i1053.sink = phi i8 [ %conv641, %if.then639 ], [ %conv.i, %if.then.i1050 ], [ %conv6.i, %if.else.i ], [ %328, %if.end.i1052.if.end646_crit_edge ]
  %data_rate645 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 20
  %332 = ptrtoint ptr %data_rate645 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %retval.0.i1053.sink, ptr %data_rate645, align 2
  br i1 %bdhcp.3.off01171, label %if.then648, label %if.end646.if.end670_crit_edge

if.end646.if.end670_crit_edge:                    ; preds = %if.end646
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end670

if.then648:                                       ; preds = %if.end646
  %pHTInfo649 = getelementptr i8, ptr %dev, i32 2504
  %333 = ptrtoint ptr %pHTInfo649 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pHTInfo649, align 8
  %IOTAction650 = getelementptr inbounds %struct.rt_hi_throughput, ptr %334, i32 0, i32 51
  %335 = ptrtoint ptr %IOTAction650 to i32
  call void @__asan_loadN_noabort(i32 %335, i32 4)
  %336 = load i32, ptr %IOTAction650, align 1
  %and651 = and i32 %336, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and651)
  %tobool652.not = icmp eq i32 %and651, 0
  br i1 %tobool652.not, label %if.else659, label %if.then653

if.then653:                                       ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #9
  %call654 = call zeroext i8 @MgntQuery_TxRateExcludeCCKRates(ptr noundef %add.ptr.i.i) #7
  %337 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %337)
  %bf.load656 = load i8, ptr %add.ptr582, align 2
  %bf.clear657 = and i8 %bf.load656, -5
  br label %if.end664

if.else659:                                       ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #9
  %338 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_load1_noabort(i32 %338)
  %bf.load661 = load i8, ptr %add.ptr582, align 2
  %bf.set663 = or i8 %bf.load661, 4
  br label %if.end664

if.end664:                                        ; preds = %if.else659, %if.then653
  %call654.sink = phi i8 [ 2, %if.else659 ], [ %call654, %if.then653 ]
  %storemerge = phi i8 [ %bf.set663, %if.else659 ], [ %bf.clear657, %if.then653 ]
  %339 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 20
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %call654.sink, ptr %339, align 2
  %RATRIndex665 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 16
  %341 = ptrtoint ptr %RATRIndex665 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 7, ptr %RATRIndex665, align 2
  %bf.set668 = or i8 %storemerge, 2
  %342 = ptrtoint ptr %add.ptr582 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %bf.set668, ptr %add.ptr582, align 2
  %bdhcp669 = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 25
  %343 = ptrtoint ptr %bdhcp669 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 1, ptr %bdhcp669, align 1
  br label %if.end670

if.end670:                                        ; preds = %if.end664, %if.end646.if.end670_crit_edge
  %344 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %344)
  %bf.load.i1054 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i = and i16 %bf.load.i1054, -4097
  store i16 %bf.clear.i, ptr %bTxEnableFwCalcDur, align 2
  %data_rate.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 20
  %345 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %data_rate.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %346)
  %cmp.i1055 = icmp eq i8 %346, 2
  br i1 %cmp.i1055, label %if.end670.rtllib_query_ShortPreambleMode.exit_crit_edge, label %if.else.i1057

if.end670.rtllib_query_ShortPreambleMode.exit_crit_edge: ; preds = %if.end670
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_ShortPreambleMode.exit

if.else.i1057:                                    ; preds = %if.end670
  %capability.i = getelementptr i8, ptr %dev, i32 25016
  %347 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %capability.i, align 8
  %349 = and i16 %348, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %tobool.not.i1056 = icmp eq i16 %349, 0
  br i1 %tobool.not.i1056, label %if.else.i1057.rtllib_query_ShortPreambleMode.exit_crit_edge, label %if.then3.i

if.else.i1057.rtllib_query_ShortPreambleMode.exit_crit_edge: ; preds = %if.else.i1057
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_ShortPreambleMode.exit

if.then3.i:                                       ; preds = %if.else.i1057
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set7.i = or i16 %bf.load.i1054, 4096
  %350 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 %bf.set7.i, ptr %bTxEnableFwCalcDur, align 2
  br label %rtllib_query_ShortPreambleMode.exit

rtllib_query_ShortPreambleMode.exit:              ; preds = %if.then3.i, %if.else.i1057.rtllib_query_ShortPreambleMode.exit_crit_edge, %if.end670.rtllib_query_ShortPreambleMode.exit_crit_edge
  %351 = ptrtoint ptr %fragments578 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %fragments578, align 4
  %pHTInfo1.i = getelementptr i8, ptr %dev, i32 2504
  %353 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %pHTInfo1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTxTs.i) #7
  %355 = ptrtoint ptr %pTxTs.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr null, ptr %pTxTs.i, align 4
  %data.i1058 = getelementptr inbounds %struct.sk_buff, ptr %352, i32 0, i32 19
  %356 = ptrtoint ptr %data.i1058 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %data.i1058, align 4
  %call.i1059 = call zeroext i1 @rtllib_act_scanning(ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #7
  br i1 %call.i1059, label %rtllib_query_ShortPreambleMode.exit.rtllib_tx_query_agg_cap.exit_crit_edge, label %if.end.i1061

rtllib_query_ShortPreambleMode.exit.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %rtllib_query_ShortPreambleMode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end.i1061:                                     ; preds = %rtllib_query_ShortPreambleMode.exit
  %bCurrentHTSupport.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 1
  %358 = ptrtoint ptr %bCurrentHTSupport.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %bCurrentHTSupport.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i1060 = icmp eq i8 %359, 0
  br i1 %tobool.not.i1060, label %if.end.i1061.rtllib_tx_query_agg_cap.exit_crit_edge, label %lor.lhs.false.i

if.end.i1061.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end.i1061
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

lor.lhs.false.i:                                  ; preds = %if.end.i1061
  %360 = ptrtoint ptr %354 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %354, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool2.not.i = icmp eq i8 %361, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.rtllib_tx_query_agg_cap.exit_crit_edge, label %if.end4.i

lor.lhs.false.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %362 = ptrtoint ptr %data.i1058 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %data.i1058, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %363, align 2
  %366 = and i16 %365, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %366)
  %cmp.i1062 = icmp eq i16 %366, 136
  br i1 %cmp.i1062, label %if.end8.i, label %if.end4.i.rtllib_tx_query_agg_cap.exit_crit_edge

if.end4.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end8.i:                                        ; preds = %if.end4.i
  %addr1.i = getelementptr inbounds %struct.rtllib_hdr_1addr, ptr %357, i32 0, i32 2
  %367 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %addr1.i, align 4
  %369 = and i32 %368, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool.i.not.i1063 = icmp eq i32 %369, 0
  br i1 %tobool.i.not.i1063, label %if.end11.i, label %if.end8.i.rtllib_tx_query_agg_cap.exit_crit_edge

if.end8.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end11.i:                                       ; preds = %if.end8.i
  %bdhcp.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 25
  %370 = ptrtoint ptr %bdhcp.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %bdhcp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %tobool13.not.i = icmp eq i8 %371, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %if.end11.i.rtllib_tx_query_agg_cap.exit_crit_edge

if.end11.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

lor.lhs.false14.i:                                ; preds = %if.end11.i
  %CntAfterLink.i = getelementptr i8, ptr %dev, i32 2456
  %372 = ptrtoint ptr %CntAfterLink.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %CntAfterLink.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %373)
  %cmp16.i = icmp ult i8 %373, 2
  br i1 %cmp16.i, label %lor.lhs.false14.i.rtllib_tx_query_agg_cap.exit_crit_edge, label %if.end19.i

lor.lhs.false14.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end19.i:                                       ; preds = %lor.lhs.false14.i
  %IOTAction.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 51
  %374 = ptrtoint ptr %IOTAction.i to i32
  call void @__asan_loadN_noabort(i32 %374, i32 4)
  %375 = load i32, ptr %IOTAction.i, align 1
  %and20.i = and i32 %375, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.rtllib_tx_query_agg_cap.exit_crit_edge

if.end19.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end23.i:                                       ; preds = %if.end19.i
  %GetNmodeSupportBySecCfg.i = getelementptr i8, ptr %dev, i32 30716
  %376 = ptrtoint ptr %GetNmodeSupportBySecCfg.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %GetNmodeSupportBySecCfg.i, align 4
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %378 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev.i, align 4
  %call24.i = call zeroext i1 %377(ptr noundef %379) #7
  br i1 %call24.i, label %if.end26.i, label %if.end23.i.rtllib_tx_query_agg_cap.exit_crit_edge

if.end23.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

if.end26.i:                                       ; preds = %if.end23.i
  %bCurrentAMPDUEnable.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 20
  %380 = ptrtoint ptr %bCurrentAMPDUEnable.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %bCurrentAMPDUEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool27.not.i = icmp eq i8 %381, 0
  br i1 %tobool27.not.i, label %if.end26.i.FORCED_AGG_SETTING.i_crit_edge, label %if.then28.i

if.end26.i.FORCED_AGG_SETTING.i_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.then28.i:                                      ; preds = %if.end26.i
  %priority.i1064 = getelementptr inbounds %struct.sk_buff, ptr %352, i32 0, i32 15, i32 0, i32 6
  %382 = ptrtoint ptr %priority.i1064 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %priority.i1064, align 4
  %conv31.i = trunc i32 %383 to i8
  %call32.i = call zeroext i1 @GetTs(ptr noundef %add.ptr.i.i, ptr noundef nonnull %pTxTs.i, ptr noundef %addr1.i, i8 noundef zeroext %conv31.i, i32 noundef 0, i1 noundef zeroext true) #7
  br i1 %call32.i, label %if.end35.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %384 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %385, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rtllib_tx_query_agg_cap) #10
  br label %rtllib_tx_query_agg_cap.exit

if.end35.i:                                       ; preds = %if.then28.i
  %386 = ptrtoint ptr %pTxTs.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %pTxTs.i, align 4
  %b_valid.i = getelementptr inbounds %struct.tx_ts_record, ptr %387, i32 0, i32 3, i32 1
  %388 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %b_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool36.not.i = icmp eq i8 %389, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %if.else54.i

if.then37.i:                                      ; preds = %if.end35.i
  %wpa_ie_len.i = getelementptr i8, ptr %dev, i32 20884
  %390 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %wpa_ie_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool38.not.i = icmp eq i32 %391, 0
  br i1 %tobool38.not.i, label %if.then37.i.if.else.i1065_crit_edge, label %land.lhs.true.i

if.then37.i.if.else.i1065_crit_edge:              ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i1065

land.lhs.true.i:                                  ; preds = %if.then37.i
  %pairwise_key_type.i = getelementptr i8, ptr %dev, i32 20906
  %392 = ptrtoint ptr %pairwise_key_type.i to i32
  call void @__asan_load2_noabort(i32 %392)
  %393 = load i16, ptr %pairwise_key_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %393)
  %cmp40.i = icmp eq i16 %393, 0
  br i1 %cmp40.i, label %land.lhs.true.i.FORCED_AGG_SETTING.i_crit_edge, label %land.lhs.true.i.if.else.i1065_crit_edge

land.lhs.true.i.if.else.i1065_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i1065

land.lhs.true.i.FORCED_AGG_SETTING.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.else.i1065:                                    ; preds = %land.lhs.true.i.if.else.i1065_crit_edge, %if.then37.i.if.else.i1065_crit_edge
  %394 = ptrtoint ptr %bdhcp.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %bdhcp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %395)
  %cmp45.i = icmp eq i8 %395, 1
  br i1 %cmp45.i, label %if.else.i1065.FORCED_AGG_SETTING.i_crit_edge, label %if.else48.i

if.else.i1065.FORCED_AGG_SETTING.i_crit_edge:     ; preds = %if.else.i1065
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.else48.i:                                      ; preds = %if.else.i1065
  %bDisable_AddBa.i = getelementptr inbounds %struct.tx_ts_record, ptr %387, i32 0, i32 7
  %396 = ptrtoint ptr %bDisable_AddBa.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %bDisable_AddBa.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool49.not.i = icmp eq i8 %397, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.else48.i.FORCED_AGG_SETTING.i_crit_edge

if.else48.i.FORCED_AGG_SETTING.i_crit_edge:       ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.then50.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @TsStartAddBaProcess(ptr noundef %add.ptr.i.i, ptr noundef %387) #7
  br label %FORCED_AGG_SETTING.i

if.else54.i:                                      ; preds = %if.end35.i
  %bUsingBa.i = getelementptr inbounds %struct.tx_ts_record, ptr %387, i32 0, i32 6
  %398 = ptrtoint ptr %bUsingBa.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %bUsingBa.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %399)
  %tobool55.not.i = icmp eq i8 %399, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.else54.i.if.end68.i_crit_edge

if.else54.i.if.end68.i_crit_edge:                 ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i

if.then56.i:                                      ; preds = %if.else54.i
  %ba_start_seq_ctrl.i = getelementptr inbounds %struct.tx_ts_record, ptr %387, i32 0, i32 3, i32 5
  %400 = ptrtoint ptr %ba_start_seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %400)
  %bf.load.i1066 = load i16, ptr %ba_start_seq_ctrl.i, align 2
  %conv58.i = zext i16 %bf.load.i1066 to i32
  %TxCurSeq.i1067 = getelementptr inbounds %struct.tx_ts_record, ptr %387, i32 0, i32 1
  %401 = ptrtoint ptr %TxCurSeq.i1067 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %TxCurSeq.i1067, align 4
  %403 = add i16 %402, 1
  %rem.i = zext i16 %403 to i32
  %sub.i = sub nsw i32 %conv58.i, %rem.i
  %and60.i = and i32 %sub.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %cmp61.not.i = icmp eq i32 %and60.i, 0
  br i1 %cmp61.not.i, label %if.then56.i.FORCED_AGG_SETTING.i_crit_edge, label %if.then63.i

if.then56.i.FORCED_AGG_SETTING.i_crit_edge:       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.then63.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  %404 = ptrtoint ptr %bUsingBa.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 1, ptr %bUsingBa.i, align 2
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then63.i, %if.else54.i.if.end68.i_crit_edge
  %iw_mode.i1068 = getelementptr i8, ptr %dev, i32 20736
  %405 = ptrtoint ptr %iw_mode.i1068 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %iw_mode.i1068, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %406)
  %cmp69.i = icmp eq i32 %406, 2
  br i1 %cmp69.i, label %if.then71.i, label %if.end68.i.FORCED_AGG_SETTING.i_crit_edge

if.end68.i.FORCED_AGG_SETTING.i_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FORCED_AGG_SETTING.i

if.then71.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %407 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %407)
  %bf.load72.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set.i1069 = or i16 %bf.load72.i, 1024
  store i16 %bf.set.i1069, ptr %bTxEnableFwCalcDur, align 2
  %CurrentAMPDUFactor.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 22
  %408 = ptrtoint ptr %CurrentAMPDUFactor.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %CurrentAMPDUFactor.i, align 1
  %ampdu_factor.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 22
  %410 = ptrtoint ptr %ampdu_factor.i to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %409, ptr %ampdu_factor.i, align 2
  %CurrentMPDUDensity.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 24
  %411 = ptrtoint ptr %CurrentMPDUDensity.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %CurrentMPDUDensity.i, align 1
  %ampdu_density.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 23
  %413 = ptrtoint ptr %ampdu_density.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %412, ptr %ampdu_density.i, align 1
  br label %FORCED_AGG_SETTING.i

FORCED_AGG_SETTING.i:                             ; preds = %if.then71.i, %if.end68.i.FORCED_AGG_SETTING.i_crit_edge, %if.then56.i.FORCED_AGG_SETTING.i_crit_edge, %if.then50.i, %if.else48.i.FORCED_AGG_SETTING.i_crit_edge, %if.else.i1065.FORCED_AGG_SETTING.i_crit_edge, %land.lhs.true.i.FORCED_AGG_SETTING.i_crit_edge, %if.end26.i.FORCED_AGG_SETTING.i_crit_edge
  %ForcedAMPDUMode.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 25
  %414 = ptrtoint ptr %ForcedAMPDUMode.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 4)
  %415 = load i32, ptr %ForcedAMPDUMode.i, align 1
  %416 = zext i32 %415 to i64
  call void @__sanitizer_cov_trace_switch(i64 %416, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %415, label %FORCED_AGG_SETTING.i.rtllib_tx_query_agg_cap.exit_crit_edge [
    i32 2, label %sw.bb82.i
    i32 1, label %sw.bb.i
  ]

FORCED_AGG_SETTING.i.rtllib_tx_query_agg_cap.exit_crit_edge: ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_tx_query_agg_cap.exit

sw.bb.i:                                          ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #9
  %417 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %417)
  %bf.load77.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set79.i = or i16 %bf.load77.i, 1024
  store i16 %bf.set79.i, ptr %bTxEnableFwCalcDur, align 2
  %ForcedMPDUDensity.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 27
  %418 = ptrtoint ptr %ForcedMPDUDensity.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %ForcedMPDUDensity.i, align 1
  %ampdu_density80.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 23
  %420 = ptrtoint ptr %ampdu_density80.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %419, ptr %ampdu_density80.i, align 1
  %ForcedAMPDUFactor.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %354, i32 0, i32 26
  %421 = ptrtoint ptr %ForcedAMPDUFactor.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %ForcedAMPDUFactor.i, align 1
  %ampdu_factor81.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 22
  %423 = ptrtoint ptr %ampdu_factor81.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %422, ptr %ampdu_factor81.i, align 2
  br label %rtllib_tx_query_agg_cap.exit

sw.bb82.i:                                        ; preds = %FORCED_AGG_SETTING.i
  call void @__sanitizer_cov_trace_pc() #9
  %424 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %424)
  %bf.load84.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear85.i = and i16 %bf.load84.i, -1025
  store i16 %bf.clear85.i, ptr %bTxEnableFwCalcDur, align 2
  %ampdu_density87.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 23
  %425 = ptrtoint ptr %ampdu_density87.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 0, ptr %ampdu_density87.i, align 1
  %ampdu_factor88.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 22
  %426 = ptrtoint ptr %ampdu_factor88.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 0, ptr %ampdu_factor88.i, align 2
  br label %rtllib_tx_query_agg_cap.exit

rtllib_tx_query_agg_cap.exit:                     ; preds = %sw.bb82.i, %sw.bb.i, %FORCED_AGG_SETTING.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.then33.i, %if.end23.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.end19.i.rtllib_tx_query_agg_cap.exit_crit_edge, %lor.lhs.false14.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.end11.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.end8.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.end4.i.rtllib_tx_query_agg_cap.exit_crit_edge, %lor.lhs.false.i.rtllib_tx_query_agg_cap.exit_crit_edge, %if.end.i1061.rtllib_tx_query_agg_cap.exit_crit_edge, %rtllib_query_ShortPreambleMode.exit.rtllib_tx_query_agg_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs.i) #7
  %427 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %pHTInfo1.i, align 8
  %429 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %429)
  %bf.load.i1072 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i1073 = and i16 %bf.load.i1072, -8193
  store i16 %bf.clear.i1073, ptr %bTxEnableFwCalcDur, align 2
  %bCurrentHTSupport.i1074 = getelementptr inbounds %struct.rt_hi_throughput, ptr %428, i32 0, i32 1
  %430 = ptrtoint ptr %bCurrentHTSupport.i1074 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %bCurrentHTSupport.i1074, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool.not.i1075 = icmp eq i8 %431, 0
  br i1 %tobool.not.i1075, label %rtllib_tx_query_agg_cap.exit.rtllib_query_HTCapShortGI.exit_crit_edge, label %lor.lhs.false.i1077

rtllib_tx_query_agg_cap.exit.rtllib_query_HTCapShortGI.exit_crit_edge: ; preds = %rtllib_tx_query_agg_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_HTCapShortGI.exit

lor.lhs.false.i1077:                              ; preds = %rtllib_tx_query_agg_cap.exit
  %432 = ptrtoint ptr %428 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %428, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool2.not.i1076 = icmp eq i8 %433, 0
  br i1 %tobool2.not.i1076, label %lor.lhs.false.i1077.rtllib_query_HTCapShortGI.exit_crit_edge, label %if.end.i1078

lor.lhs.false.i1077.rtllib_query_HTCapShortGI.exit_crit_edge: ; preds = %lor.lhs.false.i1077
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_HTCapShortGI.exit

if.end.i1078:                                     ; preds = %lor.lhs.false.i1077
  %bForcedShortGI.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %428, i32 0, i32 30
  %434 = ptrtoint ptr %bForcedShortGI.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %bForcedShortGI.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool3.not.i = icmp eq i8 %435, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %if.end.i1078.cleanup.sink.split.i_crit_edge

if.end.i1078.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i1078
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i1078
  %bCurBW40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %428, i32 0, i32 3
  %436 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool10.not.i = icmp eq i8 %437, 0
  br i1 %tobool10.not.i, label %land.lhs.true20.i, label %land.lhs.true.i1079

land.lhs.true.i1079:                              ; preds = %if.end9.i
  %bCurShortGI40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %428, i32 0, i32 5
  %438 = ptrtoint ptr %bCurShortGI40MHz.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %bCurShortGI40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %tobool12.not.i = icmp eq i8 %439, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i1079.rtllib_query_HTCapShortGI.exit_crit_edge, label %land.lhs.true.i1079.cleanup.sink.split.i_crit_edge

land.lhs.true.i1079.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i1079
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

land.lhs.true.i1079.rtllib_query_HTCapShortGI.exit_crit_edge: ; preds = %land.lhs.true.i1079
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_HTCapShortGI.exit

land.lhs.true20.i:                                ; preds = %if.end9.i
  %bCurShortGI20MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %428, i32 0, i32 7
  %440 = ptrtoint ptr %bCurShortGI20MHz.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %bCurShortGI20MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool22.not.i = icmp eq i8 %441, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.rtllib_query_HTCapShortGI.exit_crit_edge, label %land.lhs.true20.i.cleanup.sink.split.i_crit_edge

land.lhs.true20.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

land.lhs.true20.i.rtllib_query_HTCapShortGI.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_HTCapShortGI.exit

cleanup.sink.split.i:                             ; preds = %land.lhs.true20.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i1079.cleanup.sink.split.i_crit_edge, %if.end.i1078.cleanup.sink.split.i_crit_edge
  %bf.set17.i = or i16 %bf.load.i1072, 8192
  %442 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %bf.set17.i, ptr %bTxEnableFwCalcDur, align 2
  br label %rtllib_query_HTCapShortGI.exit

rtllib_query_HTCapShortGI.exit:                   ; preds = %cleanup.sink.split.i, %land.lhs.true20.i.rtllib_query_HTCapShortGI.exit_crit_edge, %land.lhs.true.i1079.rtllib_query_HTCapShortGI.exit_crit_edge, %lor.lhs.false.i1077.rtllib_query_HTCapShortGI.exit_crit_edge, %rtllib_tx_query_agg_cap.exit.rtllib_query_HTCapShortGI.exit_crit_edge
  %443 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %pHTInfo1.i, align 8
  %445 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %445)
  %bf.load.i1082 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear.i1083 = and i16 %bf.load.i1082, -65
  store i16 %bf.clear.i1083, ptr %bTxEnableFwCalcDur, align 2
  %bCurrentHTSupport.i1084 = getelementptr inbounds %struct.rt_hi_throughput, ptr %444, i32 0, i32 1
  %446 = ptrtoint ptr %bCurrentHTSupport.i1084 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %bCurrentHTSupport.i1084, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %447)
  %tobool.not.i1085 = icmp eq i8 %447, 0
  br i1 %tobool.not.i1085, label %rtllib_query_HTCapShortGI.exit.rtllib_query_BandwidthMode.exit_crit_edge, label %lor.lhs.false.i1087

rtllib_query_HTCapShortGI.exit.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %rtllib_query_HTCapShortGI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

lor.lhs.false.i1087:                              ; preds = %rtllib_query_HTCapShortGI.exit
  %448 = ptrtoint ptr %444 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %444, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool2.not.i1086 = icmp ne i8 %449, 0
  %450 = and i16 %bf.load.i1082, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %450)
  %451 = icmp eq i16 %450, 0
  %or.cond.i = select i1 %tobool2.not.i1086, i1 %451, i1 false
  br i1 %or.cond.i, label %if.end14.i, label %lor.lhs.false.i1087.rtllib_query_BandwidthMode.exit_crit_edge

lor.lhs.false.i1087.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %lor.lhs.false.i1087
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

if.end14.i:                                       ; preds = %lor.lhs.false.i1087
  %452 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %data_rate.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %453)
  %cmp.i1089 = icmp sgt i8 %453, -1
  br i1 %cmp.i1089, label %if.end14.i.rtllib_query_BandwidthMode.exit_crit_edge, label %if.end18.i

if.end14.i.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

if.end18.i:                                       ; preds = %if.end14.i
  %bCurBW40MHz.i1090 = getelementptr inbounds %struct.rt_hi_throughput, ptr %444, i32 0, i32 3
  %454 = ptrtoint ptr %bCurBW40MHz.i1090 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %bCurBW40MHz.i1090, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool20.not.i = icmp eq i8 %455, 0
  br i1 %tobool20.not.i, label %if.end18.i.rtllib_query_BandwidthMode.exit_crit_edge, label %land.lhs.true.i1092

if.end18.i.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

land.lhs.true.i1092:                              ; preds = %if.end18.i
  %bCurTxBW40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %444, i32 0, i32 35
  %456 = ptrtoint ptr %bCurTxBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %bCurTxBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool22.not.i1091 = icmp eq i8 %457, 0
  br i1 %tobool22.not.i1091, label %land.lhs.true.i1092.rtllib_query_BandwidthMode.exit_crit_edge, label %land.lhs.true23.i

land.lhs.true.i1092.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %land.lhs.true.i1092
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

land.lhs.true23.i:                                ; preds = %land.lhs.true.i1092
  %bforced_tx20Mhz.i = getelementptr i8, ptr %dev, i32 28780
  %458 = ptrtoint ptr %bforced_tx20Mhz.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %bforced_tx20Mhz.i, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %459)
  %tobool24.not.i = icmp eq i8 %459, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true23.i.rtllib_query_BandwidthMode.exit_crit_edge

land.lhs.true23.i.rtllib_query_BandwidthMode.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtllib_query_BandwidthMode.exit

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set29.i = or i16 %bf.load.i1082, 64
  %460 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %bf.set29.i, ptr %bTxEnableFwCalcDur, align 2
  br label %rtllib_query_BandwidthMode.exit

rtllib_query_BandwidthMode.exit:                  ; preds = %if.then25.i, %land.lhs.true23.i.rtllib_query_BandwidthMode.exit_crit_edge, %land.lhs.true.i1092.rtllib_query_BandwidthMode.exit_crit_edge, %if.end18.i.rtllib_query_BandwidthMode.exit_crit_edge, %if.end14.i.rtllib_query_BandwidthMode.exit_crit_edge, %lor.lhs.false.i1087.rtllib_query_BandwidthMode.exit_crit_edge, %rtllib_query_HTCapShortGI.exit.rtllib_query_BandwidthMode.exit_crit_edge
  %461 = ptrtoint ptr %fragments578 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %fragments578, align 4
  %463 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %463)
  %bf.load.i1094 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.clear11.i = and i16 %bf.load.i1094, 31855
  store i16 %bf.clear11.i, ptr %bTxEnableFwCalcDur, align 2
  %464 = and i16 %bf.load.i1094, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %464)
  %465 = icmp eq i16 %464, 0
  br i1 %465, label %if.end.i1097, label %rtllib_query_BandwidthMode.exit.if.then679_crit_edge

rtllib_query_BandwidthMode.exit.if.then679_crit_edge: ; preds = %rtllib_query_BandwidthMode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then679

if.end.i1097:                                     ; preds = %rtllib_query_BandwidthMode.exit
  %data.i1095 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 19
  %466 = ptrtoint ptr %data.i1095 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %data.i1095, align 4
  %add.ptr.i1096 = getelementptr i8, ptr %467, i32 16
  %468 = ptrtoint ptr %add.ptr.i1096 to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %add.ptr.i1096, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %467, i32 18
  %470 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %471, %469
  %add.ptr3.i.i = getelementptr i8, ptr %467, i32 20
  %472 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %473
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i, label %if.end.i1097.if.then679_crit_edge, label %if.end22.i

if.end.i1097.if.then679_crit_edge:                ; preds = %if.end.i1097
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then679

if.end22.i:                                       ; preds = %if.end.i1097
  %mode.i1098 = getelementptr i8, ptr %dev, i32 25880
  %474 = ptrtoint ptr %mode.i1098 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %mode.i1098, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %475)
  %cmp.i1099 = icmp slt i32 %475, 16
  br i1 %cmp.i1099, label %if.then24.i, label %if.end45.i

if.then24.i:                                      ; preds = %if.end22.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 6
  %476 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %len.i, align 4
  %rts.i = getelementptr i8, ptr %dev, i32 24766
  %478 = ptrtoint ptr %rts.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %rts.i, align 2
  %conv25.i = zext i16 %479 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %477, i32 %conv25.i)
  %cmp26.i = icmp ugt i32 %477, %conv25.i
  br i1 %cmp26.i, label %if.then28.i1100, label %if.else.i1101

if.then28.i1100:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set31.i = or i16 %bf.clear11.i, 16384
  %480 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %bf.set31.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %481 = ptrtoint ptr %rts_rate.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 48, ptr %rts_rate.i, align 1
  br label %if.then679

if.else.i1101:                                    ; preds = %if.then24.i
  %buseprotection.i = getelementptr i8, ptr %dev, i32 25861
  %482 = ptrtoint ptr %buseprotection.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %buseprotection.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool32.not.i = icmp eq i8 %483, 0
  br i1 %tobool32.not.i, label %if.else.i1101.if.then679_crit_edge, label %if.then33.i1102

if.else.i1101.if.then679_crit_edge:               ; preds = %if.else.i1101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then679

if.then33.i1102:                                  ; preds = %if.else.i1101
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set41.i = or i16 %bf.clear11.i, -16384
  %484 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 %bf.set41.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate42.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %485 = ptrtoint ptr %rts_rate42.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 48, ptr %rts_rate42.i, align 1
  br label %if.then679

if.end45.i:                                       ; preds = %if.end22.i
  %486 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %pHTInfo1.i, align 8
  %IOTAction.i1103 = getelementptr inbounds %struct.rt_hi_throughput, ptr %487, i32 0, i32 51
  %488 = ptrtoint ptr %IOTAction.i1103 to i32
  call void @__asan_loadN_noabort(i32 %488, i32 4)
  %489 = load i32, ptr %IOTAction.i1103, align 1
  %and.i1104 = and i32 %489, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1104)
  %tobool47.not.i = icmp eq i32 %and.i1104, 0
  br i1 %tobool47.not.i, label %if.else58.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %rts_rate53.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %490 = ptrtoint ptr %rts_rate53.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 48, ptr %rts_rate53.i, align 1
  %bf.set57.i = or i16 %bf.clear11.i, -16384
  %491 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %bf.set57.i, ptr %bTxEnableFwCalcDur, align 2
  br label %while.end.i

if.else58.i:                                      ; preds = %if.end45.i
  %and60.i1105 = and i32 %489, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i1105)
  %tobool61.not.i = icmp eq i32 %and60.i1105, 0
  br i1 %tobool61.not.i, label %if.end69.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set66.i = or i16 %bf.clear11.i, 16384
  %492 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 %bf.set66.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate67.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %493 = ptrtoint ptr %rts_rate67.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 48, ptr %rts_rate67.i, align 1
  br label %while.end.i

if.end69.i:                                       ; preds = %if.else58.i
  %buseprotection71.i = getelementptr i8, ptr %dev, i32 25861
  %494 = ptrtoint ptr %buseprotection71.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %buseprotection71.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %495)
  %tobool72.not.i = icmp eq i8 %495, 0
  br i1 %tobool72.not.i, label %if.end83.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set81.i = or i16 %bf.clear11.i, -16384
  %496 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %496)
  store i16 %bf.set81.i, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate82.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %497 = ptrtoint ptr %rts_rate82.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 48, ptr %rts_rate82.i, align 1
  br label %while.end.i

if.end83.i:                                       ; preds = %if.end69.i
  %bCurrentHTSupport.i1106 = getelementptr inbounds %struct.rt_hi_throughput, ptr %487, i32 0, i32 1
  %498 = ptrtoint ptr %bCurrentHTSupport.i1106 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %bCurrentHTSupport.i1106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %tobool85.not.i = icmp eq i8 %499, 0
  br i1 %tobool85.not.i, label %if.end83.i.if.end113.i_crit_edge, label %land.lhs.true.i1107

if.end83.i.if.end113.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

land.lhs.true.i1107:                              ; preds = %if.end83.i
  %500 = ptrtoint ptr %487 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %487, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool87.not.i = icmp eq i8 %501, 0
  br i1 %tobool87.not.i, label %land.lhs.true.i1107.if.end113.i_crit_edge, label %if.then88.i

land.lhs.true.i1107.if.end113.i_crit_edge:        ; preds = %land.lhs.true.i1107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then88.i:                                      ; preds = %land.lhs.true.i1107
  %CurrentOpMode.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %487, i32 0, i32 31
  %502 = ptrtoint ptr %CurrentOpMode.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %CurrentOpMode.i, align 1
  %bCurBW40MHz.i1108 = getelementptr inbounds %struct.rt_hi_throughput, ptr %487, i32 0, i32 3
  %504 = ptrtoint ptr %bCurBW40MHz.i1108 to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %bCurBW40MHz.i1108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool90.not.i = icmp ne i8 %505, 0
  %506 = and i8 %503, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %506)
  %switch222.i = icmp eq i8 %506, 2
  %or.cond223.i = select i1 %tobool90.not.i, i1 %switch222.i, i1 false
  br i1 %or.cond223.i, label %if.then88.i.cleanup.i1109_crit_edge, label %lor.lhs.false99.i

if.then88.i.cleanup.i1109_crit_edge:              ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i1109

lor.lhs.false99.i:                                ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool101.not.i = icmp eq i8 %505, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %503)
  %cmp104.i = icmp eq i8 %503, 3
  %or.cond221.i = select i1 %tobool101.not.i, i1 %cmp104.i, i1 false
  br i1 %or.cond221.i, label %lor.lhs.false99.i.cleanup.i1109_crit_edge, label %lor.lhs.false99.i.if.end113.i_crit_edge

lor.lhs.false99.i.if.end113.i_crit_edge:          ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

lor.lhs.false99.i.cleanup.i1109_crit_edge:        ; preds = %lor.lhs.false99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i1109

cleanup.i1109:                                    ; preds = %lor.lhs.false99.i.cleanup.i1109_crit_edge, %if.then88.i.cleanup.i1109_crit_edge
  %rts_rate107.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %507 = ptrtoint ptr %rts_rate107.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 48, ptr %rts_rate107.i, align 1
  %bf.set111.i = or i16 %bf.clear11.i, 16384
  %508 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 %bf.set111.i, ptr %bTxEnableFwCalcDur, align 2
  br label %while.end.i

if.end113.i:                                      ; preds = %lor.lhs.false99.i.if.end113.i_crit_edge, %land.lhs.true.i1107.if.end113.i_crit_edge, %if.end83.i.if.end113.i_crit_edge
  %len114.i = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 6
  %509 = ptrtoint ptr %len114.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %len114.i, align 4
  %rts115.i = getelementptr i8, ptr %dev, i32 24766
  %511 = ptrtoint ptr %rts115.i to i32
  call void @__asan_load2_noabort(i32 %511)
  %512 = load i16, ptr %rts115.i, align 2
  %conv116.i = zext i16 %512 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %510, i32 %conv116.i)
  %cmp117.i = icmp ugt i32 %510, %conv116.i
  br i1 %cmp117.i, label %if.then119.i, label %if.end125.i

if.then119.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %rts_rate120.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %513 = ptrtoint ptr %rts_rate120.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 48, ptr %rts_rate120.i, align 1
  %bf.set124.i = or i16 %bf.clear11.i, 16384
  %514 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %514)
  store i16 %bf.set124.i, ptr %bTxEnableFwCalcDur, align 2
  br label %while.end.i

if.end125.i:                                      ; preds = %if.end113.i
  %515 = and i16 %bf.load.i1094, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %515)
  %tobool130.not.i = icmp eq i16 %515, 0
  br i1 %tobool130.not.i, label %if.end125.i.NO_PROTECTION.i_crit_edge, label %if.then131.i

if.end125.i.NO_PROTECTION.i_crit_edge:            ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %NO_PROTECTION.i

if.then131.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  %rts_rate132.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %516 = ptrtoint ptr %rts_rate132.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 48, ptr %rts_rate132.i, align 1
  %bf.clear135.i = and i16 %bf.load.i1094, 15471
  %517 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 %bf.clear135.i, ptr %bTxEnableFwCalcDur, align 2
  br label %while.end.i

while.end.i:                                      ; preds = %if.then131.i, %if.then119.i, %cleanup.i1109, %if.then73.i, %if.then62.i, %if.then48.i
  %capability.i1110 = getelementptr i8, ptr %dev, i32 25016
  %518 = ptrtoint ptr %capability.i1110 to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %capability.i1110, align 8
  %520 = and i16 %519, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %520)
  %tobool141.not.i = icmp eq i16 %520, 0
  br i1 %tobool141.not.i, label %while.end.i.if.end146.i_crit_edge, label %if.then142.i

while.end.i.if.end146.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then142.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %521 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %521)
  %bf.load143.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set145.i = or i16 %bf.load143.i, 4096
  store i16 %bf.set145.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then142.i, %while.end.i.if.end146.i_crit_edge
  %iw_mode.i1111 = getelementptr i8, ptr %dev, i32 20736
  %522 = ptrtoint ptr %iw_mode.i1111 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %iw_mode.i1111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %523)
  %cmp147.i = icmp eq i32 %523, 3
  br i1 %cmp147.i, label %if.end146.i.NO_PROTECTION.i_crit_edge, label %if.end146.i.if.then679_crit_edge

if.end146.i.if.then679_crit_edge:                 ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then679

if.end146.i.NO_PROTECTION.i_crit_edge:            ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %NO_PROTECTION.i

NO_PROTECTION.i:                                  ; preds = %if.end146.i.NO_PROTECTION.i_crit_edge, %if.end125.i.NO_PROTECTION.i_crit_edge
  %524 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %524)
  %bf.load152.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %rts_rate159.i = getelementptr %struct.sk_buff, ptr %279, i32 0, i32 3, i32 21
  %525 = ptrtoint ptr %rts_rate159.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 0, ptr %rts_rate159.i, align 1
  %bf.clear166.i = and i16 %bf.load152.i, 15999
  store i16 %bf.clear166.i, ptr %bTxEnableFwCalcDur, align 2
  br label %if.then679

if.then679:                                       ; preds = %NO_PROTECTION.i, %if.end146.i.if.then679_crit_edge, %if.then33.i1102, %if.else.i1101.if.then679_crit_edge, %if.then28.i1100, %if.end.i1097.if.then679_crit_edge, %rtllib_query_BandwidthMode.exit.if.then679_crit_edge, %if.end605
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  %softmac_features680 = getelementptr i8, ptr %dev, i32 26074
  %526 = ptrtoint ptr %softmac_features680 to i32
  call void @__asan_load2_noabort(i32 %526)
  %527 = load i16, ptr %softmac_features680, align 2
  %528 = and i16 %527, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %528)
  %tobool683.not = icmp eq i16 %528, 0
  br i1 %tobool683.not, label %if.else691, label %if.then684

if.then684:                                       ; preds = %if.then679
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %529 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %tx_packets, align 4
  %inc686 = add i32 %530, 1
  store i32 %inc686, ptr %tx_packets, align 4
  %payload_size687 = getelementptr inbounds %struct.rtllib_txb, ptr %txb.01172, i32 0, i32 6
  %531 = ptrtoint ptr %payload_size687 to i32
  call void @__asan_load2_noabort(i32 %531)
  %532 = load i16, ptr %payload_size687, align 4
  %533 = call i16 @llvm.bswap.i16(i16 %532)
  %conv688 = zext i16 %533 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %534 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %tx_bytes, align 4
  %add690 = add i32 %535, %conv688
  store i32 %add690, ptr %tx_bytes, align 4
  call void @rtllib_softmac_xmit(ptr noundef nonnull %txb.01172, ptr noundef %add.ptr.i.i) #7
  br label %cleanup

if.else691:                                       ; preds = %if.then679
  %536 = ptrtoint ptr %hard_start_xmit to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %hard_start_xmit, align 8
  %call693 = call i32 %537(ptr noundef nonnull %txb.01172, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call693)
  %cmp694 = icmp eq i32 %call693, 0
  br i1 %cmp694, label %if.then696, label %rtllib_txb_free.exit

if.then696:                                       ; preds = %if.else691
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets697 = getelementptr i8, ptr %dev, i32 20544
  %538 = ptrtoint ptr %tx_packets697 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %tx_packets697, align 4
  %inc698 = add i32 %539, 1
  store i32 %inc698, ptr %tx_packets697, align 4
  %payload_size699 = getelementptr inbounds %struct.rtllib_txb, ptr %txb.01172, i32 0, i32 6
  %540 = ptrtoint ptr %payload_size699 to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %payload_size699, align 4
  %542 = call i16 @llvm.bswap.i16(i16 %541)
  %conv700 = zext i16 %542 to i32
  %tx_bytes701 = getelementptr i8, ptr %dev, i32 20552
  %543 = ptrtoint ptr %tx_bytes701 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %tx_bytes701, align 4
  %add702 = add i32 %544, %conv700
  store i32 %add702, ptr %tx_bytes701, align 4
  br label %cleanup

rtllib_txb_free.exit:                             ; preds = %if.else691
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %txb.01172) #7
  br label %cleanup

if.end705.critedge:                               ; preds = %if.then556, %if.then130, %if.then30, %if.then
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

failed:                                           ; preds = %if.end559.failed_crit_edge, %if.end268.failed_crit_edge, %if.then41.failed_crit_edge
  %dev564 = getelementptr i8, ptr %dev, i32 2308
  %545 = ptrtoint ptr %dev564 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dev564, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %546, ptr noundef nonnull @.str.4) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %547 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %548, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %tx_errors = getelementptr i8, ptr %dev, i32 20560
  %549 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %tx_errors, align 4
  %inc707 = add i32 %550, 1
  store i32 %inc707, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end705.critedge, %rtllib_txb_free.exit, %if.then696, %if.then684
  %retval.0 = phi i32 [ 0, %if.then696 ], [ 1, %failed ], [ 0, %if.end705.critedge ], [ 0, %if.then684 ], [ 0, %rtllib_txb_free.exit ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %header) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtllib_alloc_txb(i32 noundef %nr_frags, i32 noundef %txb_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nr_frags, 2
  %add = add i32 %mul, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %call9.i, i32 0, i32 12)
  %conv = trunc i32 %nr_frags to i8
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %call9.i, align 128
  %conv2 = trunc i32 %txb_size to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %frag_size = getelementptr inbounds %struct.rtllib_txb, ptr %call9.i, i32 0, i32 5
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
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %txb_size, i32 noundef 2592) #7
  %arrayidx = getelementptr %struct.rtllib_txb, ptr %call9.i, i32 0, i32 7, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %for.end, label %if.end12, !prof !59

if.end12:                                         ; preds = %for.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %5 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %nr_frags
  br i1 %exitcond.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.body
  %dec = add nsw i32 %i.06, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %nr_frags)
  %cmp15.not = icmp eq i32 %dec, %nr_frags
  br i1 %cmp15.not, label %for.end.cleanup_crit_edge, label %while.cond.preheader, !prof !60

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.thread12:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags)
  %cmp15.not14 = icmp eq i32 %nr_frags, 0
  br i1 %cmp15.not14, label %for.end.thread12.cleanup_crit_edge, label %for.end.thread12.while.body.preheader_crit_edge, !prof !60

for.end.thread12.while.body.preheader_crit_edge:  ; preds = %for.end.thread12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

for.end.thread12.cleanup_crit_edge:               ; preds = %for.end.thread12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06)
  %cmp247.not = icmp eq i32 %i.06, 0
  br i1 %cmp247.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body.preheader_crit_edge

while.cond.preheader.while.body.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader.while.body.preheader_crit_edge, %for.end.thread12.while.body.preheader_crit_edge
  %i.28.ph = phi i32 [ 0, %for.end.thread12.while.body.preheader_crit_edge ], [ %dec, %while.cond.preheader.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.28 = phi i32 [ %dec27, %while.body.while.body_crit_edge ], [ %i.28.ph, %while.body.preheader ]
  %dec27 = add nsw i32 %i.28, -1
  %arrayidx28 = getelementptr %struct.rtllib_txb, ptr %call9.i, i32 0, i32 7, i32 %i.28
  %6 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx28, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %7, i32 noundef 1) #7
  %cmp24.not = icmp eq i32 %i.28, 0
  br i1 %cmp24.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end.thread12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %call9.i, %for.end.cleanup_crit_edge ], [ %call9.i, %for.end.thread12.cleanup_crit_edge ], [ %call9.i, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @MgntQuery_TxRateExcludeCCKRates(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_softmac_xmit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtllib_act_scanning(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @TsStartAddBaProcess(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 166, i32 26}
!2 = !{ptr @__func__.rtllib_encrypt_fragment, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 167, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 186, i32 26}
!6 = !{ptr @__ksymtab_rtllib_xmit, !7, !"__ksymtab_rtllib_xmit", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 972, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 583, i32 26}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 590, i32 27}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 605, i32 10}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 635, i32 10}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 655, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtllib_xmit_inter.__UNIQUE_ID_ddebug476, !17, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 719, i32 28}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 723, i32 28}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 989, i32 48}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 980, i32 18}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 981, i32 19}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 982, i32 20}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 983, i32 17}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 984, i32 28}
!38 = !{ptr @eap_types, !39, !"eap_types", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 979, i32 27}
!40 = distinct !{null, !41, !"P802_1H_OUI", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 131, i32 11}
!42 = distinct !{null, !43, !"RFC1042_OUI", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 132, i32 11}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 297, i32 27}
!46 = !{ptr @__func__.rtllib_tx_query_agg_cap, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtllib_tx.c", i32 297, i32 49}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148376849, i64 2148376875, i64 2148376904, i64 2148376938, i64 2148376969, i64 2148376992}
!58 = !{i64 2148379314, i64 2148379340, i64 2148379369, i64 2148379403, i64 2148379434, i64 2148379457}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148858280, i64 2148858285, i64 2148858298, i64 2148858342, i64 2148858376, i64 2148858397}
!62 = !{i8 0, i8 2}
