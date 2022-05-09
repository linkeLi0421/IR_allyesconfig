; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtllib_rx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtllib_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtllib_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_rtllib_rx\09\09\09\09"
module asm "\09.long\09__crc_rtllib_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtllib_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22rtllib_rx\22\09\09\09\09\09"
module asm "__kstrtabns_rtllib_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtllib_legal_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_rtllib_legal_channel\09\09\09\09"
module asm "\09.long\09__crc_rtllib_legal_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtllib_legal_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22rtllib_legal_channel\22\09\09\09\09\09"
module asm "__kstrtabns_rtllib_legal_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.rtllib_rxb = type <{ i8, [64 x ptr], [6 x i8], [6 x i8] }>
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
%struct.rtllib_hdr_4addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], [0 x i8] }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.rtllib_hdr_4addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16, [0 x i8] }
%struct.rtllib_hdr_3addrqos = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, i16, [0 x i8] }
%struct.ieee_ibss_seq = type { [6 x i8], [17 x i16], [17 x i16], [17 x i32], %struct.list_head }
%struct.rtllib_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rtllib_info_element = type { i8, i8, [0 x i8] }
%struct.rt_dot11d_info = type { i8, i16, [255 x i8], [6 x i8], i8, [162 x i8], [162 x i8], i32 }
%struct.rtllib_probe_response = type { %struct.rtllib_hdr_3addr, [2 x i32], i16, i16, [0 x %struct.rtllib_info_element] }
%struct.rtllib_qos_information_element = type { i8, i8, [3 x i8], i8, i8, i8, i8 }
%struct.rtllib_qos_parameter_info = type { %struct.rtllib_qos_information_element, i8, [4 x %struct.rtllib_qos_ac_parameter] }
%struct.rtllib_qos_ac_parameter = type { i8, i8, i16 }

@rfc1042_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\00", [26 x i8] zeroinitializer }, align 32
@bridge_tunnel_header = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\AA\03\00\00\F8", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"-------------->%s() error! RfdCnt >= REORDER_WIN_SIZE\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtllib_FlushRxTsPendingPkts = private unnamed_addr constant [28 x i8] c"rtllib_FlushRxTsPendingPkts\00", align 1
@rtllib_FlushRxTsPendingPkts.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_FlushRxTsPendingPkts, ptr @.str.2, ptr @.str.3, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/rtl8192e/rtllib_rx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): Indicate SeqNum %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtllib_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Input parameters NULL!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtllib_rx\00", [22 x i8] zeroinitializer }, align 32
@rtllib_rx._entry_ptr = internal global ptr @rtllib_rx._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: SKB length < 10\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ERR iw mode!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_rtllib_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtllib_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_rtllib_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtllib_rx to i32), ptr @__kstrtab_rtllib_rx, ptr @__kstrtabns_rtllib_rx }, section "___ksymtab+rtllib_rx", align 4
@rtllib_parse_info_param.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 1, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtllib_parse_info_param\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Info elem: parse failed: info_element->len + 2 > left : info_element->len+2=%zd left=%d, id=%d.\0A\00", [63 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 2, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MFIE_TYPE_SSID: '%s' len=%d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 2, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MFIE_TYPE_RATES: '%s' (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 2, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MFIE_TYPE_RATES_EX: '%s' (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.14, i8 2, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MFIE_TYPE_DS_SET: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.15, i8 2, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MFIE_TYPE_FH_SET: ignored\0A\00", [37 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.16, i8 2, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MFIE_TYPE_CF_SET: ignored\0A\00", [37 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 2, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MFIE_TYPE_ERP_SET: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.18, i8 2, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MFIE_TYPE_IBSS_SET: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.19, i8 2, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MFIE_TYPE_CHALLENGE: ignored\0A\00", [34 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.20, i8 2, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MFIE_TYPE_GENERIC: %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.21, i8 2, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MFIE_TYPE_RSN: %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.22, i8 2, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MFIE_TYPE_HT_CAP: %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.23, i8 2, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MFIE_TYPE_HT_INFO: %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.24, i8 2, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MFIE_TYPE_AIRONET: %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"QoS Error need to parse QOS_PARAMETER IE\0A\00", [54 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.26, i8 2, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MFIE_TYPE_COUNTRY: %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@rtllib_parse_info_param.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.2, ptr @.str.27, i8 2, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unsupported info element: %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): Invalid Channel\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtllib_legal_channel = private unnamed_addr constant [21 x i8] c"rtllib_legal_channel\00", align 1
@__kstrtab_rtllib_legal_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtllib_legal_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_rtllib_legal_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtllib_legal_channel to i32), ptr @__kstrtab_rtllib_legal_channel, ptr @__kstrtabns_rtllib_legal_channel }, section "___ksymtab+rtllib_legal_channel", align 4
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s():ERR!!! skb->len is smaller than hdrlen\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_InfraAdhoc = private unnamed_addr constant [21 x i8] c"rtllib_rx_InfraAdhoc\00", align 1
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: find HTCControl!\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_get_hdrlen = private unnamed_addr constant [21 x i8] c"rtllib_rx_get_hdrlen\00", align 1
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): No TS! Skip the check!\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_check_duplicate = private unnamed_addr constant [26 x i8] c"rtllib_rx_check_duplicate\00", align 1
@rtllib_rx_mgt.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 2, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtllib_rx_mgt\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"received BEACON (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@rtllib_rx_mgt.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 2, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received PROBE RESPONSE (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@rtllib_rx_mgt.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 2, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received PROBE RESQUEST (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@rtllib_process_probe_response.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 2, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtllib_process_probe_response\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"'%s' ( %pM ): %c%c%c%c %c%c%c%c-%c%c%c%c %c%c%c%c\0A\00", [45 x i8] zeroinitializer }, align 32
@rtllib_process_probe_response.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 2, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dropped '%s' ( %pM) via %s.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BEACON\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PROBE RESPONSE\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"GetScanInfo(): For Global Domain, filter probe response at channel(%d).\0A\00", [55 x i8] zeroinitializer }, align 32
@rtllib_process_probe_response.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.2, ptr @.str.42, i8 2, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Expired '%s' ( %pM) from network list.\0A\00", [56 x i8] zeroinitializer }, align 32
@rtllib_process_probe_response.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.2, ptr @.str.43, i8 2, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Adding '%s' ( %pM) via %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@rtllib_process_probe_response.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.2, ptr @.str.44, i8 2, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Updating '%s' ( %pM) via %s.\0A\00", [34 x i8] zeroinitializer }, align 32
@escape_essid.escaped = internal global { [65 x i8], [63 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<hidden>\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%*pE\00", [27 x i8] zeroinitializer }, align 32
@rtllib_network_init.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 2, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtllib_network_init\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Filtered out '%s (%pM)' network.\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.IsPassiveChannel = private unnamed_addr constant [17 x i8] c"IsPassiveChannel\00", align 1
@update_network.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 2, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"update_network\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"QoS the network %s is QoS supported\0A\00", [59 x i8] zeroinitializer }, align 32
@update_network.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 2, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"QoS the network is QoS supported\0A\00", [62 x i8] zeroinitializer }, align 32
@rtllib_rx_data_filter.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtllib_rx_data_filter\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"RX: dropped data frame with no data (type=0x%02x, subtype=0x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@rtllib_rx_get_crypt.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtllib_rx_get_crypt\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Decryption failed (not set) (SA= %pM)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: decrypt frame error\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_decrypt = private unnamed_addr constant [18 x i8] c"rtllib_rx_decrypt\00", align 1
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.57, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Rx Fragment received (%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.58, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Rx cannot get skb from fragment cache (morefrag=%d seq=%u frag=%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: host decrypted and reassembled frame did not fit skb\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ==>decrypt msdu error\0A\00", [37 x i8] zeroinitializer }, align 32
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.61, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RX: IEEE 802.1X EAPOL frame: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.62, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"encryption configured, but RX frame not encrypted (SA= %pM)\0A\00", [35 x i8] zeroinitializer }, align 32
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.61, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtllib_rx_decrypt.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.rtllib_rx_decrypt, ptr @.str.2, ptr @.str.63, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"dropped unencrypted RX data frame from %pM (drop_unencrypted=1)\0A\00", [63 x i8] zeroinitializer }, align 32
@rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtllib_rx_frame_decrypt\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"decryption failed (SA= %pM) res=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.2, ptr @.str.66, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Decryption failed ICV mismatch (key %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rtllib_frag_cache_find.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtllib_frag_cache_find\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"expiring fragment cache entry seq=%u last_frag=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@rtllib_frag_cache_invalidate.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtllib_frag_cache_invalidate\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Couldn't invalidate fragment cache entry (seq=%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@rtllib_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtllib_rx_frame_decrypt_msdu\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"MSDU decryption/MIC verification failed (SA= %pM keyidx=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@eap_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EAP-Packet\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EAPOL-Start\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EAPOL-Logoff\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EAPOL-Key\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EAPOL-Encap-ASF-Alert\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: A-MSDU parse error!! pRfd->nTotalSubframe : %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.parse_subframe = private unnamed_addr constant [15 x i8] c"parse_subframe\00", align 1
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: A-MSDU parse error!! Subframe Length: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nRemain_Length is %d and nSubframe_Length is : %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"The Packet SeqNum is %d\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_subframe.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.parse_subframe, ptr @.str.2, ptr @.str.83, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: rxb is NULL!!\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_indicate_pkt_legacy = private unnamed_addr constant [30 x i8] c"rtllib_rx_indicate_pkt_legacy\00", align 1
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RxReorderIndicatePacket\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s(): Seq is %d, pTS->rx_indicate_seq is %d, WinSize is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Packet Drop! IndicateSeq: %d, NewSeq: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.88, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Window Shift! IndicateSeq: %d, NewSeq: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.89, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Packets indication! IndicateSeq: %d, NewSeq: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.90, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s(): Duplicate packet is dropped. IndicateSeq: %d, NewSeq: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.91, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Pkt insert into struct buffer. IndicateSeq: %d, NewSeq: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): There is no reorder entry! Packet is dropped!\0A\00", [43 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.93, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): start RREORDER indicate\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): Buffer overflow!\0A\00", [40 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.3, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Rx Reorder struct buffer full!\0A\00", [58 x i8] zeroinitializer }, align 32
@RxReorderIndicatePacket.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.2, ptr @.str.96, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): SET rx timeout timer\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_Monitor = private unnamed_addr constant [18 x i8] c"rtllib_rx_Monitor\00", align 1
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Find HTCControl!\0A\00", [42 x i8] zeroinitializer }, align 32
@rtllib_parse_mife_generic.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtllib_parse_mife_generic\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MFIE_TYPE_WZC: %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@rtllib_parse_qos_info_param_IE.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 1, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtllib_parse_qos_info_param_IE\00", [33 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QoS is supported\0A\00", [46 x i8] zeroinitializer }, align 32
@qos_oui = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00P\F2", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Received beacon ContryIE, SSID: <%s>\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSID\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RATES\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FH_SET\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DS_SET\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CF_SET\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TIM\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBSS_SET\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COUNTRY\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HOP_PARAMS\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HOP_TABLE\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REQUEST\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHALLENGE\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POWER_CONSTRAINT\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"POWER_CAPABILITY\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TPC_REQUEST\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TPC_REPORT\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SUPP_CHANNELS\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CSA\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MEASURE_REQUEST\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MEASURE_REPORT\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUIET\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IBSS_DFS\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RSN\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RATES_EX\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GENERIC\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QOS_PARAMETER\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.130 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [19 x i64] [i64 17, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16, i64 42, i64 45, i64 48, i64 50, i64 61, i64 133, i64 221, i64 222]
@__sancov_gen_cov_switch_values.139 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.141 = internal global [10 x i64] [i64 8, i64 32, i64 12, i64 18, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.142 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 48, i64 50, i64 221, i64 222]
@__sancov_gen_cov_switch_values.143 = internal global [8 x i64] [i64 6, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 16, i64 33011, i64 33079]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 128]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 80, i64 128]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 16]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 10, i64 256, i64 512]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"rfc1042_header\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 232, i32 22 }
@___asan_gen_.156 = private unnamed_addr constant [21 x i8] c"bridge_tunnel_header\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 236, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 543, i32 9 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 551, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1515, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1519, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1539, i32 26 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2036, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2063, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2074, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2091, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2114, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2119, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2125, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2129, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2168, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2173, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2178, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2182, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2191, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2200, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2209, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2226, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2245, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2249, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2256, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2528, i32 28 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1330, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 902, i32 27 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 947, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2715, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2729, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2735, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2555, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2577, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2591, i32 9 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2643, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2654, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2664, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [8 x i8] c"escaped\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 2125, i32 14 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 2128, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 2132, i32 37 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2355, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2472, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 2476, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1021, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1068, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1099, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1108, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1111, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1123, i32 9 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1164, i32 26 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1178, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1182, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1199, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 309, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 312, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 68, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 189, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 349, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 989, i32 48 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"eap_types\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 979, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 980, i32 18 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 981, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 982, i32 20 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 983, i32 17 }
@___asan_gen_.403 = private unnamed_addr constant [37 x i8] c"../drivers/staging/rtl8192e/rtllib.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 984, i32 28 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 833, i32 9 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 836, i32 9 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 839, i32 9 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 842, i32 9 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 868, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1236, i32 20 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 578, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 591, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 620, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 637, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 659, i32 5 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 671, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 682, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 697, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 709, i32 9 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 744, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 755, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1487, i32 27 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1987, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1697, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [8 x i8] c"qos_oui\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1552, i32 11 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1779, i32 11 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1707, i32 10 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1709, i32 10 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1711, i32 10 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1713, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1715, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1717, i32 10 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1719, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1721, i32 10 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1723, i32 10 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1725, i32 10 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1727, i32 10 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1729, i32 10 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1731, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1733, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1735, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1737, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1739, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1741, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1743, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1745, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1747, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1749, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1751, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1753, i32 10 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1755, i32 10 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1757, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.559 = private constant [40 x i8] c"../drivers/staging/rtl8192e/rtllib_rx.c\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1759, i32 10 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__ksymtab_rtllib_legal_channel, ptr @__ksymtab_rtllib_rx, ptr @rtllib_rx._entry, ptr @rtllib_rx._entry_ptr, ptr @rfc1042_header, ptr @bridge_tunnel_header, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @escape_essid.escaped, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @eap_types, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @qos_oui, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc1042_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_tunnel_header to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtllib_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escape_essid.escaped to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eap_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_oui to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtllib_indicate_packets(ptr nocapture noundef %ieee, ptr nocapture noundef readonly %prxbIndicateArray, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp108.not = icmp eq i8 %index, 0
  br i1 %cmp108.not, label %entry.for.end66_crit_edge, label %for.body.lr.ph

entry.for.end66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end66

for.body.lr.ph:                                   ; preds = %entry
  %rx_bytes = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 2
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %last_rx_ps_time = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 134
  %wide.trip.count = zext i8 %index to i32
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv110 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next111, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %prxbIndicateArray, i32 %indvars.iv110
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7106.not = icmp eq i8 %3, 0
  br i1 %cmp7106.not, label %for.body.for.end_crit_edge, label %for.body9.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %src44 = getelementptr inbounds %struct.rtllib_rxb, ptr %1, i32 0, i32 3
  %dst47 = getelementptr inbounds %struct.rtllib_rxb, ptr %1, i32 0, i32 2
  br label %for.body9

for.body9:                                        ; preds = %if.end62.for.body9_crit_edge, %for.body9.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %if.end62.for.body9_crit_edge ]
  %arrayidx11 = getelementptr %struct.rtllib_rxb, ptr %1, i32 0, i32 1, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %arrayidx11, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx12 = getelementptr i8, ptr %7, i32 6
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i16
  %shl = shl nuw i16 %conv13, 8
  %arrayidx15 = getelementptr i8, ptr %7, i32 7
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %11 to i16
  %or = or i16 %shl, %conv16
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp18 = icmp ugt i32 %13, 7
  br i1 %cmp18, label %land.lhs.true, label %for.body9.if.else_crit_edge

for.body9.if.else_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %for.body9
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #15
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %cmp21.not = icmp eq i32 %bcmp.fr, 0
  br i1 %cmp21.not, label %switch.early.test, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %14 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %switch.early.test.if.then_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false_crit_edge112
  ]

switch.early.test.lor.lhs.false_crit_edge112:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test.lor.lhs.false_crit_edge:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test.if.then_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %switch.early.test.lor.lhs.false_crit_edge, %switch.early.test.lor.lhs.false_crit_edge112, %land.lhs.true.lor.lhs.false_crit_edge
  %bcmp104 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp104)
  %cmp33 = icmp eq i32 %bcmp104, 0
  br i1 %cmp33, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %switch.early.test.if.then_crit_edge
  %call35 = tail call ptr @skb_pull(ptr noundef %5, i32 noundef 6) #12
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %for.body9.if.else_crit_edge
  %conv41 = trunc i32 %13 to i16
  %call42 = tail call ptr @skb_push(ptr noundef %5, i32 noundef 2) #12
  %15 = ptrtoint ptr %call42 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv41, ptr %call42, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call43 = tail call ptr @skb_push(ptr noundef %5, i32 noundef 6) #12
  %16 = call ptr @memcpy(ptr %call43, ptr %src44, i32 6)
  %call46 = tail call ptr @skb_push(ptr noundef %5, i32 noundef 6) #12
  %17 = call ptr @memcpy(ptr %call46, ptr %dst47, i32 6)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end62_crit_edge, label %if.then49

if.end.if.end62_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
  %cb = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %24 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call52 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %5, ptr noundef %26) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call52, ptr %protocol, align 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = getelementptr inbounds %struct.anon.51, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 8
  %stats54 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36
  %32 = ptrtoint ptr %stats54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stats54, align 8
  %inc56 = add i32 %33, 1
  store i32 %inc56, ptr %stats54, align 8
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = load ptr, ptr %30, align 8
  %rx_bytes59 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 2
  %37 = ptrtoint ptr %rx_bytes59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_bytes59, align 8
  %add60 = add i32 %38, %35
  store i32 %add60, ptr %rx_bytes59, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %39 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = ptrtoint ptr %last_rx_ps_time to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_rx_ps_time, align 4
  %call61 = tail call i32 @netif_rx(ptr noundef nonnull %5) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then49, %if.end.if.end62_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 1
  %44 = zext i8 %43 to i32
  %cmp7 = icmp ult i32 %indvars.iv.next, %44
  br i1 %cmp7, label %if.end62.for.body9_crit_edge, label %if.end62.for.end_crit_edge

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end62.for.body9_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.end:                                          ; preds = %if.end62.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  %indvars.iv.next111 = add nuw nsw i32 %indvars.iv110, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %for.end.for.end66_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.for.end66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end66

for.end66:                                        ; preds = %for.end.for.end66_crit_edge, %entry.for.end66_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtllib_FlushRxTsPendingPkts(ptr noundef %ieee, ptr noundef %pTS) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4
  %call = tail call i32 @del_timer_sync(ptr noundef %rx_pkt_pending_timer) #12
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3
  %0 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not39 = icmp eq ptr %1, %rx_pending_pkt_list
  br i1 %cmp.i.not39, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %prev = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3, i32 1
  %dev12 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 173
  %RxReorder_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48
  %prev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv = phi i32 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %list_add_tail.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %indvars.iv)
  %exitcond = icmp eq i32 %indvars.iv, 128
  br i1 %exitcond, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rtllib_FlushRxTsPendingPkts) #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_FlushRxTsPendingPkts.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_FlushRxTsPendingPkts, %if.then11)) #12
          to label %do.end16 [label %if.then11], !srcloc !342

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev12, align 4
  %SeqNum = getelementptr inbounds %struct.rx_reorder_entry, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %SeqNum to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %SeqNum, align 4
  %conv13 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_FlushRxTsPendingPkts.__UNIQUE_ID_ddebug481, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rtllib_FlushRxTsPendingPkts, i32 noundef %conv13) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end16.list_del_init.exit_crit_edge

do.end16.list_del_init.exit_crit_edge:            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end16.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %prev.i3.i, align 4
  %prxb = getelementptr inbounds %struct.rx_reorder_entry, ptr %6, i32 0, i32 2
  %19 = ptrtoint ptr %prxb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prxb, align 4
  %arrayidx = getelementptr [128 x ptr], ptr %2, i32 0, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %23, ptr noundef %RxReorder_Unused_List) #12
  br i1 %call.i.i34, label %if.end.i.i35, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i35:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %prev.i, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %RxReorder_Unused_List, ptr %6, align 4
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %6, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i35, %list_del_init.exit.list_add_tail.exit_crit_edge
  %28 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %29, %rx_pending_pkt_list
  br i1 %cmp.i.not, label %while.end.loopexit, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.loopexit:                               ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %30 = trunc i32 %indvars.iv.next to i8
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then, %entry.while.end_crit_edge
  %RfdCnt.038 = phi i8 [ -128, %if.then ], [ 0, %entry.while.end_crit_edge ], [ %30, %while.end.loopexit ]
  %31 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 173
  tail call void @rtllib_indicate_packets(ptr noundef %ieee, ptr noundef %31, i8 noundef zeroext %RfdCnt.038)
  %rx_indicate_seq = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 1
  %32 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %rx_indicate_seq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_rx(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ieee, null
  %tobool1.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %rx_stats, null
  %or.cond36 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond36, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  br label %rx_dropped

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp ult i32 %1, 10
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #16
  br label %rx_dropped

if.end5:                                          ; preds = %if.end
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %4 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iw_mode, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %5, label %sw.default [
    i32 1, label %if.end5.sw.bb_crit_edge
    i32 2, label %if.end5.sw.bb_crit_edge37
    i32 3, label %if.end5.cleanup_crit_edge
    i32 4, label %if.end5.cleanup_crit_edge38
    i32 6, label %sw.bb9
    i32 7, label %if.end5.cleanup_crit_edge39
  ]

if.end5.cleanup_crit_edge39:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.cleanup_crit_edge38:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5.sw.bb_crit_edge37:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge37
  %call6 = tail call fastcc i32 @rtllib_rx_InfraAdhoc(ptr noundef nonnull %ieee, ptr noundef nonnull %skb, ptr noundef nonnull %rx_stats)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %8, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  %conv.i.i = zext i16 %11 to i32
  %and.i.i = and i32 %conv.i.i, 12
  %12 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %and.i.i, label %sw.bb9.rtllib_get_hdrlen.exit.i_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb11.i.i
  ]

sw.bb9.rtllib_get_hdrlen.exit.i_crit_edge:        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_get_hdrlen.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %13 = and i32 %conv.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %13)
  %.not.i.i = icmp eq i32 %13, 768
  %hdrlen.0.i.i = select i1 %.not.i.i, i32 30, i32 24
  %and7.i.i = and i32 %conv.i.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i.i)
  %cmp.i.i = icmp eq i32 %and7.i.i, 136
  %add.i.i = add nuw nsw i32 %hdrlen.0.i.i, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %hdrlen.0.i.i
  br label %rtllib_get_hdrlen.exit.i

sw.bb11.i.i:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = and i16 %11, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %14)
  %switch.selectcmp.i.i = icmp eq i16 %14, 192
  %15 = select i1 %switch.selectcmp.i.i, i32 10, i32 16
  br label %rtllib_get_hdrlen.exit.i

rtllib_get_hdrlen.exit.i:                         ; preds = %sw.bb11.i.i, %sw.bb.i.i, %sw.bb9.rtllib_get_hdrlen.exit.i_crit_edge
  %hdrlen.1.i.i = phi i32 [ 24, %sw.bb9.rtllib_get_hdrlen.exit.i_crit_edge ], [ %15, %sw.bb11.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hdrlen.1.i.i)
  %cmp.i = icmp ult i32 %1, %hdrlen.1.i.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %rtllib_get_hdrlen.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %17, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.rtllib_rx_Monitor) #16
  br label %cleanup

if.end.i:                                         ; preds = %rtllib_get_hdrlen.exit.i
  %call2.i = tail call zeroext i8 @HTCCheck(ptr noundef nonnull %ieee, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2.i)
  %tobool.not.i = icmp eq i8 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then3.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then6.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev7.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %18 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.rtllib_rx_Monitor) #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end8.i_crit_edge
  %add.i = add nuw nsw i32 %hdrlen.1.i.i, 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end8.i, %if.end.i.if.end9.i_crit_edge
  %hdrlen.0.i = phi i32 [ %add.i, %if.end8.i ], [ %hdrlen.1.i.i, %if.end.i.if.end9.i_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %call.i.i = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %hdrlen.0.i) #12
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %29 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  %bf.set.i.i = or i16 %bf.clear.i.i, 24576
  store i16 %bf.set.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 25, ptr %protocol.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %31 = call ptr @memset(ptr %cb.i.i, i32 0, i32 48)
  %call1.i.i = tail call i32 @netif_rx(ptr noundef nonnull %skb) #12
  %stats.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49
  %32 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stats.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %stats.i, align 4
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %rx_bytes.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 2
  %36 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bytes.i, align 4
  %add12.i = add i32 %37, %35
  store i32 %add12.i, ptr %rx_bytes.i, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %38 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #16
  br label %cleanup

rx_dropped:                                       ; preds = %if.then4, %do.end
  br i1 %tobool.not, label %rx_dropped.cleanup_crit_edge, label %if.then15

rx_dropped.cleanup_crit_edge:                     ; preds = %rx_dropped
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %rx_dropped
  call void @__sanitizer_cov_trace_pc() #14
  %rx_dropped16 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 6
  %40 = ptrtoint ptr %rx_dropped16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dropped16, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %rx_dropped16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %rx_dropped.cleanup_crit_edge, %sw.default, %if.end9.i, %if.then.i, %sw.bb, %if.end5.cleanup_crit_edge, %if.end5.cleanup_crit_edge38, %if.end5.cleanup_crit_edge39
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call6, %sw.bb ], [ 0, %if.then15 ], [ 0, %rx_dropped.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge38 ], [ 0, %if.then.i ], [ 1, %if.end9.i ], [ 0, %if.end5.cleanup_crit_edge39 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_rx_InfraAdhoc(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats) unnamed_addr #0 align 64 {
entry:
  %pRxTS.i = alloca ptr, align 4
  %pTS = alloca ptr, align 4
  %dst = alloca [6 x i8], align 4
  %src = alloca [6 x i8], align 4
  %bssid = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS) #12
  %4 = ptrtoint ptr %pTS to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pTS, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst) #12
  %5 = getelementptr inbounds [6 x i8], ptr %dst, i32 0, i32 4
  %6 = call ptr @memset(ptr %dst, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #12
  %7 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 4
  %8 = call ptr @memset(ptr %src, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #12
  %9 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %3, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = trunc i16 %12 to i8
  %conv2 = and i8 %13, 12
  %seq_ctl = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %seq_ctl, align 1
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr1, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  %.lobit = lshr exact i32 %18, 24
  %19 = trunc i32 %.lobit to i8
  %20 = xor i8 %19, 1
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %xor.i = xor i32 %24, %17
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %28, %26
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %bNetPromiscuousMode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 57
  %29 = ptrtoint ptr %bNetPromiscuousMode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNetPromiscuousMode, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool13.not = icmp eq i8 %30, 0
  br i1 %tobool13.not, label %if.then.rx_dropped_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then.rx_dropped_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %bToOtherSTA.0.off0 = phi i1 [ false, %land.lhs.true.if.end15_crit_edge ], [ false, %entry.if.end15_crit_edge ], [ true, %if.then.if.end15_crit_edge ]
  %conv.i.i = zext i16 %12 to i32
  %and.i.i = and i32 %conv.i.i, 12
  %31 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %and.i.i, label %if.end15.rtllib_get_hdrlen.exit.i_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 4, label %sw.bb11.i.i
  ]

if.end15.rtllib_get_hdrlen.exit.i_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_get_hdrlen.exit.i

sw.bb.i.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %32 = and i32 %conv.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %32)
  %.not.i.i = icmp eq i32 %32, 768
  %hdrlen.0.i.i = select i1 %.not.i.i, i32 30, i32 24
  %and7.i.i = and i32 %conv.i.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i.i)
  %cmp.i.i = icmp eq i32 %and7.i.i, 136
  %add.i.i = add nuw nsw i32 %hdrlen.0.i.i, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %hdrlen.0.i.i
  br label %rtllib_get_hdrlen.exit.i

sw.bb11.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %33 = and i16 %12, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %33)
  %switch.selectcmp.i.i = icmp eq i16 %33, 192
  %34 = select i1 %switch.selectcmp.i.i, i32 10, i32 16
  br label %rtllib_get_hdrlen.exit.i

rtllib_get_hdrlen.exit.i:                         ; preds = %sw.bb11.i.i, %sw.bb.i.i, %if.end15.rtllib_get_hdrlen.exit.i_crit_edge
  %hdrlen.1.i.i = phi i32 [ 24, %if.end15.rtllib_get_hdrlen.exit.i_crit_edge ], [ %34, %sw.bb11.i.i ], [ %spec.select.i.i, %sw.bb.i.i ]
  %call2.i = tail call zeroext i8 @HTCCheck(ptr noundef %ieee, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2.i)
  %tobool.not.i = icmp eq i8 %call2.i, 0
  br i1 %tobool.not.i, label %rtllib_get_hdrlen.exit.i.if.end6.i_crit_edge, label %if.then.i

rtllib_get_hdrlen.exit.i.if.end6.i_crit_edge:     ; preds = %rtllib_get_hdrlen.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %rtllib_get_hdrlen.exit.i
  %call3.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rtllib_rx_get_hdrlen) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %add.i = add nuw nsw i32 %hdrlen.1.i.i, 4
  %bContainHTC.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %rx_stats, i32 0, i32 28
  %37 = ptrtoint ptr %bContainHTC.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %bContainHTC.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %rtllib_get_hdrlen.exit.i.if.end6.i_crit_edge
  %hdrlen.0.i = phi i32 [ %add.i, %if.end.i ], [ %hdrlen.1.i.i, %rtllib_get_hdrlen.exit.i.if.end6.i_crit_edge ]
  %38 = and i16 %12, 188
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %38)
  %cmp.i281 = icmp eq i16 %38, 136
  br i1 %cmp.i281, label %if.then8.i, label %if.end6.i.rtllib_rx_get_hdrlen.exit_crit_edge

if.end6.i.rtllib_rx_get_hdrlen.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_get_hdrlen.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %bIsQosData.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %rx_stats, i32 0, i32 23
  %39 = ptrtoint ptr %bIsQosData.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %bIsQosData.i, align 1
  br label %rtllib_rx_get_hdrlen.exit

rtllib_rx_get_hdrlen.exit:                        ; preds = %if.then8.i, %if.end6.i.rtllib_rx_get_hdrlen.exit_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %hdrlen.0.i)
  %cmp = icmp ult i32 %41, %hdrlen.0.i
  br i1 %cmp, label %if.then18, label %if.end19

if.then18:                                        ; preds = %rtllib_rx_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.rtllib_rx_InfraAdhoc) #16
  br label %rx_dropped

if.end19:                                         ; preds = %rtllib_rx_get_hdrlen.exit
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %43, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #12
  %seq_ctl.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %43, i32 0, i32 5
  %47 = ptrtoint ptr %seq_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %seq_ctl.i, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #12
  %50 = trunc i16 %49 to i8
  %conv7.i = and i8 %50, 15
  %pHTInfo.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %51 = ptrtoint ptr %pHTInfo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pHTInfo.i, align 8
  %bCurRxReorderEnable.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %bCurRxReorderEnable.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bCurRxReorderEnable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i283 = icmp eq i8 %54, 0
  br i1 %tobool.not.i283, label %if.end19.if.then.i284_crit_edge, label %lor.lhs.false.i

if.end19.if.then.i284_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i284

lor.lhs.false.i:                                  ; preds = %if.end19
  %active.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %55 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool8.not.i = icmp eq i32 %56, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.then.i284_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.if.then.i284_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i284

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %43, align 1
  %59 = and i8 %58, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %59)
  %.not.i = icmp eq i8 %59, -120
  br i1 %.not.i, label %if.else.i, label %lor.lhs.false9.i.if.then.i284_crit_edge

lor.lhs.false9.i.if.then.i284_crit_edge:          ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i284

if.then.i284:                                     ; preds = %lor.lhs.false9.i.if.then.i284_crit_edge, %lor.lhs.false.i.if.then.i284_crit_edge, %if.end19.if.then.i284_crit_edge
  %60 = and i16 %46, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %60)
  %61 = icmp eq i16 %60, 128
  br i1 %61, label %if.then.i284.rtllib_rx_check_duplicate.exit_crit_edge, label %if.then35.i

if.then.i284.rtllib_rx_check_duplicate.exit_crit_edge: ; preds = %if.then.i284
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_check_duplicate.exit

if.then35.i:                                      ; preds = %if.then.i284
  %62 = lshr i16 %49, 4
  %63 = and i16 %49, 15
  %conv5.i.i = zext i16 %46 to i32
  %64 = and i32 %conv5.i.i, 956
  call void @__sanitizer_cov_trace_const_cmp4(i32 904, i32 %64)
  %65 = icmp eq i32 %64, 904
  br i1 %65, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then35.i
  %qos_ctl.i.i = getelementptr inbounds %struct.rtllib_hdr_4addrqos, ptr %43, i32 0, i32 7
  %66 = ptrtoint ptr %qos_ctl.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %qos_ctl.i.i, align 1
  %68 = lshr i16 %67, 8
  %69 = and i16 %68, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp16.i.i = icmp eq i16 %69, 0
  br i1 %cmp16.i.i, label %if.then.i.i.if.end74.i.i_crit_edge, label %cond.false.i.i

if.then.i.i.if.end74.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %69)
  %cmp19.i.i = icmp ult i16 %69, 3
  br i1 %cmp19.i.i, label %cond.false.i.i.if.end74.i.i_crit_edge, label %cond.false22.i.i

cond.false.i.i.if.end74.i.i_crit_edge:            ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false22.i.i:                                 ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %69)
  %cmp24.i.i = icmp eq i16 %69, 3
  br i1 %cmp24.i.i, label %cond.false22.i.i.if.end74.i.i_crit_edge, label %cond.false27.i.i

cond.false22.i.i.if.end74.i.i_crit_edge:          ; preds = %cond.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false27.i.i:                                 ; preds = %cond.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %69)
  %cmp29.i.i = icmp ult i16 %69, 6
  %phi.bo217.i.i = select i1 %cmp29.i.i, i8 3, i8 4
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %if.then35.i
  %and9.i.i = and i32 %conv5.i.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and9.i.i)
  %cmp10.i.i = icmp eq i32 %and9.i.i, 136
  br i1 %cmp10.i.i, label %if.then41.i.i, label %if.else.i.i.if.end74.i.i_crit_edge

if.else.i.i.if.end74.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

if.then41.i.i:                                    ; preds = %if.else.i.i
  %qos_ctl42.i.i = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %43, i32 0, i32 6
  %70 = ptrtoint ptr %qos_ctl42.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %qos_ctl42.i.i, align 1
  %72 = lshr i16 %71, 8
  %73 = and i16 %72, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp47.i.i = icmp eq i16 %73, 0
  br i1 %cmp47.i.i, label %if.then41.i.i.if.end74.i.i_crit_edge, label %cond.false50.i.i

if.then41.i.i.if.end74.i.i_crit_edge:             ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false50.i.i:                                 ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %73)
  %cmp52.i.i = icmp ult i16 %73, 3
  br i1 %cmp52.i.i, label %cond.false50.i.i.if.end74.i.i_crit_edge, label %cond.false55.i.i

cond.false50.i.i.if.end74.i.i_crit_edge:          ; preds = %cond.false50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false55.i.i:                                 ; preds = %cond.false50.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %73)
  %cmp57.i.i = icmp eq i16 %73, 3
  br i1 %cmp57.i.i, label %cond.false55.i.i.if.end74.i.i_crit_edge, label %cond.false60.i.i

cond.false55.i.i.if.end74.i.i_crit_edge:          ; preds = %cond.false55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i.i

cond.false60.i.i:                                 ; preds = %cond.false55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %73)
  %cmp62.i.i = icmp ult i16 %73, 6
  %phi.bo.i.i = select i1 %cmp62.i.i, i8 3, i8 4
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %cond.false60.i.i, %cond.false55.i.i.if.end74.i.i_crit_edge, %cond.false50.i.i.if.end74.i.i_crit_edge, %if.then41.i.i.if.end74.i.i_crit_edge, %if.else.i.i.if.end74.i.i_crit_edge, %cond.false27.i.i, %cond.false22.i.i.if.end74.i.i_crit_edge, %cond.false.i.i.if.end74.i.i_crit_edge, %if.then.i.i.if.end74.i.i_crit_edge
  %tid.0.i.i = phi i8 [ 2, %if.then.i.i.if.end74.i.i_crit_edge ], [ 1, %cond.false.i.i.if.end74.i.i_crit_edge ], [ %phi.bo217.i.i, %cond.false27.i.i ], [ 2, %cond.false22.i.i.if.end74.i.i_crit_edge ], [ 2, %if.then41.i.i.if.end74.i.i_crit_edge ], [ 1, %cond.false50.i.i.if.end74.i.i_crit_edge ], [ %phi.bo.i.i, %cond.false60.i.i ], [ 2, %cond.false55.i.i.if.end74.i.i_crit_edge ], [ 0, %if.else.i.i.if.end74.i.i_crit_edge ]
  %iw_mode.i.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %74 = ptrtoint ptr %iw_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iw_mode.i.i, align 8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %75, label %if.end74.i.i.rtllib_rx_check_duplicate.exit_crit_edge [
    i32 1, label %sw.bb.i.i285
    i32 2, label %sw.bb118.i.i
  ]

if.end74.i.i.rtllib_rx_check_duplicate.exit_crit_edge: ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_check_duplicate.exit

sw.bb.i.i285:                                     ; preds = %if.end74.i.i
  %addr2.i.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %43, i32 0, i32 3
  %arrayidx.i.i = getelementptr %struct.rtllib_hdr_4addr, ptr %43, i32 0, i32 3, i32 5
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i, align 1
  %79 = urem i8 %78, 31
  %rem.i.i = zext i8 %79 to i32
  %arrayidx77.i.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 130, i32 %rem.i.i
  %80 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %p.0221.i.i = load ptr, ptr %arrayidx77.i.i, align 4
  %cmp.i222.i.i = icmp eq ptr %p.0221.i.i, %arrayidx77.i.i
  br i1 %cmp.i222.i.i, label %sw.bb.i.i285.if.then91.i.i_crit_edge, label %sw.bb.i.i285.for.body.i.i_crit_edge

sw.bb.i.i285.for.body.i.i_crit_edge:              ; preds = %sw.bb.i.i285
  br label %for.body.i.i

sw.bb.i.i285.if.then91.i.i_crit_edge:             ; preds = %sw.bb.i.i285
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %81 = ptrtoint ptr %p.0223.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %p.0.i.i = load ptr, ptr %p.0223.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %p.0.i.i, %arrayidx77.i.i
  br i1 %cmp.i.i.i, label %for.cond.i.i.if.then91.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.if.then91.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %sw.bb.i.i285.for.body.i.i_crit_edge
  %p.0223.i.i = phi ptr [ %p.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %p.0221.i.i, %sw.bb.i.i285.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %p.0223.i.i, i32 -144
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr.i.i, ptr noundef dereferenceable(6) %addr2.i.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool83.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool83.not.i.i, label %cleanup.i.i, label %for.cond.i.i

if.then91.i.i:                                    ; preds = %for.cond.i.i.if.then91.i.i_crit_edge, %sw.bb.i.i285.if.then91.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 2592, i32 noundef 152) #18
  %tobool93.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool93.not.i.i, label %if.then91.i.i.rtllib_rx_check_duplicate.exit_crit_edge, label %if.end95.i.i

if.then91.i.i.rtllib_rx_check_duplicate.exit_crit_edge: ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_check_duplicate.exit

if.end95.i.i:                                     ; preds = %if.then91.i.i
  %83 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr2.i.i, align 4
  %85 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %call7.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.rtllib_hdr_4addr, ptr %43, i32 0, i32 3, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %88 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %add.ptr1.i.i.i, align 4
  %idxprom.i.i = zext i8 %tid.0.i.i to i32
  %arrayidx98.i.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i.i, i32 0, i32 1, i32 %idxprom.i.i
  %89 = ptrtoint ptr %arrayidx98.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %62, ptr %arrayidx98.i.i, align 2
  %arrayidx100.i.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i.i, i32 0, i32 2, i32 %idxprom.i.i
  %90 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %63, ptr %arrayidx100.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %arrayidx102.i.i = getelementptr %struct.ieee_ibss_seq, ptr %call7.i.i.i, i32 0, i32 3, i32 %idxprom.i.i
  %92 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx102.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.ieee_ibss_seq, ptr %call7.i.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx77.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %arrayidx77.i.i, ptr noundef %94) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end95.i.i.rtllib_rx_check_duplicate.exit_crit_edge

if.end95.i.i.rtllib_rx_check_duplicate.exit_crit_edge: ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_check_duplicate.exit

if.end.i.i.i.i:                                   ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %96 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %list.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.ieee_ibss_seq, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx77.i.i, ptr %prev3.i.i.i.i, align 4
  %98 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %list.i.i, ptr %arrayidx77.i.i, align 4
  br label %rtllib_rx_check_duplicate.exit

cleanup.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom107.i.i = zext i8 %tid.0.i.i to i32
  %arrayidx108.i.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i.i, i32 0, i32 1, i32 %idxprom107.i.i
  %arrayidx111.i.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i.i, i32 0, i32 2, i32 %idxprom107.i.i
  %arrayidx114.i.i = getelementptr %struct.ieee_ibss_seq, ptr %add.ptr.i.i, i32 0, i32 3, i32 %idxprom107.i.i
  br label %sw.epilog.i.i

sw.bb118.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idxprom119.i.i = zext i8 %tid.0.i.i to i32
  %arrayidx120.i.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 131, i32 %idxprom119.i.i
  %arrayidx122.i.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 132, i32 %idxprom119.i.i
  %arrayidx124.i.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 133, i32 %idxprom119.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb118.i.i, %cleanup.i.i
  %last_seq.1.i.i = phi ptr [ %arrayidx120.i.i, %sw.bb118.i.i ], [ %arrayidx108.i.i, %cleanup.i.i ]
  %last_frag.1.i.i = phi ptr [ %arrayidx122.i.i, %sw.bb118.i.i ], [ %arrayidx111.i.i, %cleanup.i.i ]
  %last_time.1.i.i = phi ptr [ %arrayidx124.i.i, %sw.bb118.i.i ], [ %arrayidx114.i.i, %cleanup.i.i ]
  %99 = ptrtoint ptr %last_seq.1.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %last_seq.1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %62)
  %cmp127.i.i = icmp eq i16 %100, %62
  br i1 %cmp127.i.i, label %land.lhs.true129.i.i, label %sw.epilog.i.i.if.else146.i.i_crit_edge

sw.epilog.i.i.if.else146.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else146.i.i

land.lhs.true129.i.i:                             ; preds = %sw.epilog.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %102 = ptrtoint ptr %last_time.1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %last_time.1.i.i, align 4
  %add.neg.i.i = add i32 %101, -500
  %sub.i.i = sub i32 %add.neg.i.i, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp130.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp130.i.i, label %if.then132.i.i, label %land.lhs.true129.i.i.if.else146.i.i_crit_edge

land.lhs.true129.i.i.if.else146.i.i_crit_edge:    ; preds = %land.lhs.true129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else146.i.i

if.then132.i.i:                                   ; preds = %land.lhs.true129.i.i
  %104 = ptrtoint ptr %last_frag.1.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %last_frag.1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %63)
  %cmp135.i.i = icmp eq i16 %105, %63
  br i1 %cmp135.i.i, label %if.then132.i.i.rx_dropped_crit_edge, label %if.end138.i.i

if.then132.i.i.rx_dropped_crit_edge:              ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end138.i.i:                                    ; preds = %if.then132.i.i
  %conv134.i.i = zext i16 %63 to i32
  %conv133.i.i = zext i16 %105 to i32
  %add140.i.i = add nuw nsw i32 %conv133.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add140.i.i, i32 %conv134.i.i)
  %cmp142.not.i.i = icmp eq i32 %add140.i.i, %conv134.i.i
  br i1 %cmp142.not.i.i, label %if.end138.i.i.if.end147.i.i_crit_edge, label %if.end138.i.i.rx_dropped_crit_edge

if.end138.i.i.rx_dropped_crit_edge:               ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end138.i.i.if.end147.i.i_crit_edge:            ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i.i

if.else146.i.i:                                   ; preds = %land.lhs.true129.i.i.if.else146.i.i_crit_edge, %sw.epilog.i.i.if.else146.i.i_crit_edge
  %106 = ptrtoint ptr %last_seq.1.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %62, ptr %last_seq.1.i.i, align 2
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %if.else146.i.i, %if.end138.i.i.if.end147.i.i_crit_edge
  %107 = ptrtoint ptr %last_frag.1.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %63, ptr %last_frag.1.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %109 = ptrtoint ptr %last_time.1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %last_time.1.i.i, align 4
  br label %rtllib_rx_check_duplicate.exit

if.else.i:                                        ; preds = %lor.lhs.false9.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pRxTS.i) #12
  %110 = ptrtoint ptr %pRxTS.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %pRxTS.i, align 4
  %addr2.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %43, i32 0, i32 3
  %111 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %43, align 1
  %113 = and i16 %112, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %113)
  %.not.i.i286 = icmp eq i16 %113, 3
  %114 = select i1 %.not.i.i286, i32 30, i32 24
  %add.ptr.i2.i = getelementptr i8, ptr %43, i32 %114
  %115 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i.i = load i16, ptr %add.ptr.i2.i, align 2
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 12
  %conv4.i.i = trunc i16 %bf.lshr.i.i to i8
  %call41.i = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pRxTS.i, ptr noundef %addr2.i, i8 noundef zeroext %conv4.i.i, i32 noundef 1, i1 noundef zeroext true) #12
  br i1 %call41.i, label %if.then42.i, label %if.else65.i

if.then42.i:                                      ; preds = %if.else.i
  %116 = and i16 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool45.not.i = icmp eq i16 %116, 0
  br i1 %tobool45.not.i, label %if.then42.i.if.end58.i_crit_edge, label %land.lhs.true46.i

if.then42.i.if.end58.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true46.i:                                ; preds = %if.then42.i
  %117 = ptrtoint ptr %pRxTS.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pRxTS.i, align 4
  %rx_last_frag_num.i = getelementptr inbounds %struct.rx_ts_record, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %rx_last_frag_num.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %rx_last_frag_num.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv7.i, i8 %120)
  %cmp49.i = icmp eq i8 %conv7.i, %120
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true46.i.if.end58.i_crit_edge

land.lhs.true46.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true51.i:                                ; preds = %land.lhs.true46.i
  %121 = lshr i16 %49, 4
  %rx_last_seq_num.i = getelementptr inbounds %struct.rx_ts_record, ptr %118, i32 0, i32 6
  %122 = ptrtoint ptr %rx_last_seq_num.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %rx_last_seq_num.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %123)
  %cmp55.i = icmp eq i16 %121, %123
  br i1 %cmp55.i, label %land.lhs.true51.i.cleanup.i_crit_edge, label %land.lhs.true51.i.if.end58.i_crit_edge

land.lhs.true51.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

land.lhs.true51.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end58.i:                                       ; preds = %land.lhs.true51.i.if.end58.i_crit_edge, %land.lhs.true46.i.if.end58.i_crit_edge, %if.then42.i.if.end58.i_crit_edge
  %124 = ptrtoint ptr %pRxTS.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pRxTS.i, align 4
  %rx_last_frag_num59.i = getelementptr inbounds %struct.rx_ts_record, ptr %125, i32 0, i32 7
  %126 = ptrtoint ptr %rx_last_frag_num59.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv7.i, ptr %rx_last_frag_num59.i, align 2
  %127 = lshr i16 %49, 4
  %rx_last_seq_num64.i = getelementptr inbounds %struct.rx_ts_record, ptr %125, i32 0, i32 6
  %128 = ptrtoint ptr %rx_last_seq_num64.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %rx_last_seq_num64.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTS.i) #12
  br label %rtllib_rx_check_duplicate.exit

if.else65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %130, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rtllib_rx_check_duplicate) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else65.i, %land.lhs.true51.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTS.i) #12
  br label %rx_dropped

rtllib_rx_check_duplicate.exit:                   ; preds = %if.end58.i, %if.end147.i.i, %if.end.i.i.i.i, %if.end95.i.i.rtllib_rx_check_duplicate.exit_crit_edge, %if.then91.i.i.rtllib_rx_check_duplicate.exit_crit_edge, %if.end74.i.i.rtllib_rx_check_duplicate.exit_crit_edge, %if.then.i284.rtllib_rx_check_duplicate.exit_crit_edge
  %trunc327 = trunc i8 %conv2 to i4
  %131 = zext i4 %trunc327 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.134)
  switch i4 %trunc327, label %if.end43 [
    i4 4, label %rtllib_rx_check_duplicate.exit.rx_dropped_crit_edge
    i4 0, label %if.then33
  ]

rtllib_rx_check_duplicate.exit.rx_dropped_crit_edge: ; preds = %rtllib_rx_check_duplicate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.then33:                                        ; preds = %rtllib_rx_check_duplicate.exit
  br i1 %bToOtherSTA.0.off0, label %if.then33.rx_dropped_crit_edge, label %if.end36

if.then33.rx_dropped_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end36:                                         ; preds = %if.then33
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %134 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len, align 4
  %conv.i = trunc i32 %135 to i16
  %len1.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %rx_stats, i32 0, i32 9
  %136 = ptrtoint ptr %len1.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i, ptr %len1.i, align 2
  call fastcc void @rtllib_rx_mgt(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats) #12
  %addr1.i = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %133, i32 0, i32 2
  %137 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev1, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 86
  %139 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_addr.i, align 64
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr1.i, ptr noundef dereferenceable(6) %140, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i290 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i290, label %if.end.i292, label %if.end36.rtllib_rx_frame_mgmt.exit_crit_edge

if.end36.rtllib_rx_frame_mgmt.exit_crit_edge:     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_rx_frame_mgmt.exit

if.end.i292:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %conv38 = and i16 %12, 240
  %conv37 = zext i8 %conv2 to i16
  %call2.i291 = call i32 @rtllib_rx_frame_softmac(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats, i16 noundef zeroext %conv37, i16 noundef zeroext %conv38) #12
  br label %rtllib_rx_frame_mgmt.exit

rtllib_rx_frame_mgmt.exit:                        ; preds = %if.end.i292, %if.end36.rtllib_rx_frame_mgmt.exit_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

if.end43:                                         ; preds = %rtllib_rx_check_duplicate.exit
  br i1 %bToOtherSTA.0.off0, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %NumRecvDataInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156, i32 1
  %141 = ptrtoint ptr %NumRecvDataInPeriod to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %NumRecvDataInPeriod, align 4
  %inc = add i32 %142, 1
  store i32 %inc, ptr %NumRecvDataInPeriod, align 4
  %NumRxOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156, i32 7
  %143 = ptrtoint ptr %NumRxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %NumRxOkInPeriod, align 4
  %inc47 = add i32 %144, 1
  store i32 %inc47, ptr %NumRxOkInPeriod, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %3, align 1
  %147 = shl i16 %146, 8
  %148 = and i16 %147, 768
  %and.i = zext i16 %148 to i32
  %149 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %and.i, label %sw.default.i [
    i32 512, label %sw.bb.i
    i32 256, label %sw.bb3.i
    i32 768, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr1, align 4
  %152 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %dst, align 4
  %add.ptr.i.i295 = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  %153 = ptrtoint ptr %add.ptr.i.i295 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %add.ptr.i.i295, align 2
  %155 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %5, align 4
  %addr3.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4
  %156 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %addr3.i, align 4
  %158 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %src, align 4
  %add.ptr.i42.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %159 = ptrtoint ptr %add.ptr.i42.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %add.ptr.i42.i, align 2
  %161 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %7, align 4
  %addr2.i296 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3
  %162 = ptrtoint ptr %addr2.i296 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %addr2.i296, align 4
  %164 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %bssid, align 4
  %add.ptr.i44.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  br label %rtllib_rx_extract_addr.exit

sw.bb3.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %addr34.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4
  %165 = ptrtoint ptr %addr34.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %addr34.i, align 4
  %167 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %dst, align 4
  %add.ptr.i46.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %168 = ptrtoint ptr %add.ptr.i46.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %add.ptr.i46.i, align 2
  %170 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %5, align 4
  %addr26.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3
  %171 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %addr26.i, align 4
  %173 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %src, align 4
  %add.ptr.i48.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  %174 = ptrtoint ptr %add.ptr.i48.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %add.ptr.i48.i, align 2
  %176 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %7, align 4
  %177 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %addr1, align 4
  %179 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %bssid, align 4
  %add.ptr.i50.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  br label %rtllib_rx_extract_addr.exit

sw.bb10.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %addr311.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4
  %180 = ptrtoint ptr %addr311.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %addr311.i, align 4
  %182 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %dst, align 4
  %add.ptr.i52.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  %183 = ptrtoint ptr %add.ptr.i52.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %add.ptr.i52.i, align 2
  %185 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %5, align 4
  %addr4.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 6
  %186 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %addr4.i, align 4
  %188 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %src, align 4
  %add.ptr.i54.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 6, i32 4
  %189 = ptrtoint ptr %add.ptr.i54.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %add.ptr.i54.i, align 2
  %191 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %190, ptr %7, align 4
  %current_network.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %192 = ptrtoint ptr %current_network.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %current_network.i, align 4
  %194 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %bssid, align 4
  %add.ptr.i56.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 0, i32 4
  br label %rtllib_rx_extract_addr.exit

sw.default.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %addr1, align 4
  %197 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %dst, align 4
  %add.ptr.i58.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 2, i32 4
  %198 = ptrtoint ptr %add.ptr.i58.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %add.ptr.i58.i, align 2
  %200 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %5, align 4
  %addr218.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3
  %201 = ptrtoint ptr %addr218.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %addr218.i, align 4
  %203 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %src, align 4
  %add.ptr.i60.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 3, i32 4
  %204 = ptrtoint ptr %add.ptr.i60.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %add.ptr.i60.i, align 2
  %206 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %7, align 4
  %addr320.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4
  %207 = ptrtoint ptr %addr320.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %addr320.i, align 4
  %209 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %bssid, align 4
  %add.ptr.i62.i = getelementptr %struct.rtllib_hdr_4addr, ptr %3, i32 0, i32 4, i32 4
  br label %rtllib_rx_extract_addr.exit

rtllib_rx_extract_addr.exit:                      ; preds = %sw.default.i, %sw.bb10.i, %sw.bb3.i, %sw.bb.i
  %add.ptr.i62.sink.i = phi ptr [ %add.ptr.i62.i, %sw.default.i ], [ %add.ptr.i56.i, %sw.bb10.i ], [ %add.ptr.i50.i, %sw.bb3.i ], [ %add.ptr.i44.i, %sw.bb.i ]
  %210 = ptrtoint ptr %add.ptr.i62.sink.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %add.ptr.i62.sink.i, align 2
  %add.ptr1.i63.i = getelementptr inbounds i8, ptr %bssid, i32 4
  %212 = ptrtoint ptr %add.ptr1.i63.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %add.ptr1.i63.i, align 4
  %call56 = call fastcc i32 @rtllib_rx_data_filter(ptr noundef %ieee, i16 noundef zeroext %12, ptr noundef nonnull %dst, ptr noundef nonnull %src, ptr noundef nonnull %bssid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %rtllib_rx_extract_addr.exit.rx_dropped_crit_edge, label %if.end60

rtllib_rx_extract_addr.exit.rx_dropped_crit_edge: ; preds = %rtllib_rx_extract_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end60:                                         ; preds = %rtllib_rx_extract_addr.exit
  %213 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %hdrlen.0.i)
  %cmp62 = icmp eq i32 %214, %hdrlen.0.i
  br i1 %cmp62, label %if.end60.rx_dropped_crit_edge, label %if.end65

if.end60.rx_dropped_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end65:                                         ; preds = %if.end60
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %215 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %216)
  %cmp66 = icmp eq i32 %216, 2
  br i1 %cmp66, label %land.lhs.true68, label %if.end65.if.end85_crit_edge

if.end65.if.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.lhs.true68:                                  ; preds = %if.end65
  %sta_sleep = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 110
  %217 = ptrtoint ptr %sta_sleep to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %sta_sleep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %218)
  %cmp70 = icmp eq i16 %218, 1
  br i1 %cmp70, label %land.lhs.true72, label %land.lhs.true68.if.end85_crit_edge

land.lhs.true68.if.end85_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %polling = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 115
  %219 = ptrtoint ptr %polling to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %polling, align 8, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool73.not = icmp eq i8 %220, 0
  %brmerge = or i1 %bToOtherSTA.0.off0, %tobool73.not
  br i1 %brmerge, label %land.lhs.true72.if.end85_crit_edge, label %if.then77

land.lhs.true72.if.end85_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then77:                                        ; preds = %land.lhs.true72
  %221 = and i16 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %tobool80.not = icmp eq i16 %221, 0
  br i1 %tobool80.not, label %if.else82, label %if.then81

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtllib_sta_ps_send_pspoll_frame(ptr noundef %ieee) #12
  br label %if.end85

if.else82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %222 = ptrtoint ptr %polling to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %polling, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then81, %land.lhs.true72.if.end85_crit_edge, %land.lhs.true68.if.end85_crit_edge, %if.end65.if.end85_crit_edge
  %223 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %226 = load i16, ptr %224, align 1
  %host_decrypt.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 67
  %227 = ptrtoint ptr %host_decrypt.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %host_decrypt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i298 = icmp eq i32 %228, 0
  br i1 %tobool.not.i298, label %if.end85.if.end90_crit_edge, label %if.then.i301

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then.i301:                                     ; preds = %if.end85
  %229 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %len, align 4
  %add.i300 = add nsw i32 %hdrlen.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %add.i300)
  %cmp.not.i = icmp ult i32 %230, %add.i300
  br i1 %cmp.not.i, label %if.then.i301.if.end.i302_crit_edge, label %if.then1.i

if.then.i301.if.end.i302_crit_edge:               ; preds = %if.then.i301
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i302

if.then1.i:                                       ; preds = %if.then.i301
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %224, i32 %add.i300
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i, align 1
  %233 = lshr i8 %232, 6
  %234 = zext i8 %233 to i32
  br label %if.end.i302

if.end.i302:                                      ; preds = %if.then1.i, %if.then.i301.if.end.i302_crit_edge
  %idx.0.i = phi i32 [ %234, %if.then1.i ], [ 0, %if.then.i301.if.end.i302_crit_edge ]
  %arrayidx5.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 81, i32 2, i32 %idx.0.i
  %235 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %236, null
  br i1 %tobool6.not.i, label %if.end.i302.if.end13.i_crit_edge, label %land.lhs.true.i

if.end.i302.if.end13.i_crit_edge:                 ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i302
  %ops.i = getelementptr inbounds %struct.lib80211_crypt_data, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ops.i, align 4
  %cmp7.i = icmp eq ptr %238, null
  br i1 %cmp7.i, label %land.lhs.true.i.if.end13.i_crit_edge, label %lor.lhs.false.i303

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

lor.lhs.false.i303:                               ; preds = %land.lhs.true.i
  %decrypt_mpdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %238, i32 0, i32 5
  %239 = ptrtoint ptr %decrypt_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %decrypt_mpdu.i, align 4
  %cmp10.i = icmp eq ptr %240, null
  br i1 %cmp10.i, label %lor.lhs.false.i303.if.end13.i_crit_edge, label %lor.lhs.false.i303.if.end90_crit_edge

lor.lhs.false.i303.if.end90_crit_edge:            ; preds = %lor.lhs.false.i303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

lor.lhs.false.i303.if.end13.i_crit_edge:          ; preds = %lor.lhs.false.i303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %lor.lhs.false.i303.if.end13.i_crit_edge, %land.lhs.true.i.if.end13.i_crit_edge, %if.end.i302.if.end13.i_crit_edge
  %241 = and i16 %226, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool17.not.i = icmp eq i16 %241, 0
  br i1 %tobool17.not.i, label %if.end13.i.if.end90_crit_edge, label %do.body19.i

if.end13.i.if.end90_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

do.body19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_get_crypt.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_InfraAdhoc, %if.then23.i)) #12
          to label %rx_dropped [label %if.then23.i], !srcloc !342

if.then23.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  %242 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev1, align 4
  %addr2.i305 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %224, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_get_crypt.__UNIQUE_ID_ddebug493, ptr noundef %243, ptr noundef nonnull @.str.55, ptr noundef %addr2.i305) #12
  br label %rx_dropped

if.end90:                                         ; preds = %if.end13.i.if.end90_crit_edge, %lor.lhs.false.i303.if.end90_crit_edge, %if.end85.if.end90_crit_edge
  %crypt.1.ph = phi ptr [ null, %if.end13.i.if.end90_crit_edge ], [ null, %if.end85.if.end90_crit_edge ], [ %236, %lor.lhs.false.i303.if.end90_crit_edge ]
  %call91 = call fastcc i32 @rtllib_rx_decrypt(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats, ptr noundef %crypt.1.ph, i32 noundef %hdrlen.0.i)
  %244 = zext i32 %call91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call91, label %if.end100 [
    i32 -1, label %if.end90.rx_dropped_crit_edge
    i32 -2, label %if.end90.cleanup_crit_edge
  ]

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90.rx_dropped_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end100:                                        ; preds = %if.end90
  %245 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %data, align 4
  %active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %247 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool102.not = icmp eq i32 %248, 0
  br i1 %tobool102.not, label %if.end100.if.end133_crit_edge, label %land.lhs.true103

if.end100.if.end133_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

land.lhs.true103:                                 ; preds = %if.end100
  %249 = ptrtoint ptr %246 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %246, align 2
  %251 = and i16 %250, 136
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %251)
  %cmp107 = icmp eq i16 %251, 136
  br i1 %cmp107, label %land.lhs.true109, label %land.lhs.true103.if.end133_crit_edge

land.lhs.true103.if.end133_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

land.lhs.true109:                                 ; preds = %land.lhs.true103
  %addr1110 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %246, i32 0, i32 2
  %252 = ptrtoint ptr %addr1110 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %addr1110, align 4
  %254 = and i32 %253, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool.i307 = icmp ne i32 %254, 0
  %brmerge279 = or i1 %bToOtherSTA.0.off0, %tobool.i307
  br i1 %brmerge279, label %land.lhs.true109.if.end133_crit_edge, label %if.then115

land.lhs.true109.if.end133_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then115:                                       ; preds = %land.lhs.true109
  %255 = and i16 %250, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %255)
  %.not.i308 = icmp eq i16 %255, 3
  %256 = select i1 %.not.i308, i32 30, i32 24
  %add.ptr.i309 = getelementptr i8, ptr %246, i32 %256
  %257 = ptrtoint ptr %add.ptr.i309 to i32
  call void @__asan_load2_noabort(i32 %257)
  %bf.load.i = load i16, ptr %add.ptr.i309, align 2
  %bf.lshr.i = lshr i16 %bf.load.i, 12
  %conv4.i = trunc i16 %bf.lshr.i to i8
  %258 = and i16 %15, -3841
  %259 = call i16 @llvm.bswap.i16(i16 %258)
  %260 = lshr exact i16 %259, 4
  %addr2121 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %246, i32 0, i32 3
  %call123 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2121, i8 noundef zeroext %conv4.i, i32 noundef 1, i1 noundef zeroext true) #12
  %trunc = trunc i16 %bf.lshr.i to i4
  %261 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.137)
  switch i4 %trunc, label %if.then131 [
    i4 0, label %if.then115.if.end133_crit_edge
    i4 3, label %if.then115.if.end133_crit_edge333
  ]

if.then115.if.end133_crit_edge333:                ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then115.if.end133_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then131:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  %bis_any_nonbepkts = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 153
  %262 = ptrtoint ptr %bis_any_nonbepkts to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %bis_any_nonbepkts, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.then115.if.end133_crit_edge, %if.then115.if.end133_crit_edge333, %land.lhs.true109.if.end133_crit_edge, %land.lhs.true103.if.end133_crit_edge, %if.end100.if.end133_crit_edge
  %SeqNum.0 = phi i16 [ 0, %land.lhs.true109.if.end133_crit_edge ], [ %260, %if.then131 ], [ %260, %if.then115.if.end133_crit_edge ], [ 0, %land.lhs.true103.if.end133_crit_edge ], [ 0, %if.end100.if.end133_crit_edge ], [ %260, %if.then115.if.end133_crit_edge333 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %263 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %263, i32 noundef 2592, i32 noundef 269) #18
  %tobool135.not = icmp eq ptr %call7.i, null
  br i1 %tobool135.not, label %if.end133.rx_dropped_crit_edge, label %if.end137

if.end133.rx_dropped_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %rx_dropped

if.end137:                                        ; preds = %if.end133
  %call140 = call fastcc zeroext i8 @parse_subframe(ptr noundef %ieee, ptr noundef %skb, ptr noundef %rx_stats, ptr noundef nonnull %call7.i, ptr noundef nonnull %src, ptr noundef nonnull %dst)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call140)
  %cmp142 = icmp eq i8 %call140, 0
  br i1 %cmp142, label %for.cond.preheader, label %if.end150

for.cond.preheader:                               ; preds = %if.end137
  %264 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %cmp147325.not = icmp eq i8 %265, 0
  br i1 %cmp147325.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0326 = phi i32 [ %inc149, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_rxb, ptr %call7.i, i32 0, i32 1, i32 %i.0326
  %266 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %267 = load ptr, ptr %arrayidx, align 1
  call void @consume_skb(ptr noundef %267) #12
  %inc149 = add nuw nsw i32 %i.0326, 1
  %268 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %call7.i, align 8
  %conv146 = zext i8 %269 to i32
  %cmp147 = icmp ult i32 %inc149, %conv146
  br i1 %cmp147, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %rx_dropped

if.end150:                                        ; preds = %if.end137
  br i1 %bToOtherSTA.0.off0, label %if.end150.if.end163_crit_edge, label %if.then152

if.end150.if.end163_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then152:                                       ; preds = %if.end150
  %bIsAggregateFrame = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 157
  %270 = ptrtoint ptr %bIsAggregateFrame to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %bIsAggregateFrame, align 8, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool153.not = icmp eq i8 %271, 0
  br i1 %tobool153.not, label %if.then152.if.end157_crit_edge, label %if.then154

if.then152.if.end157_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then154:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #14
  %272 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %call7.i, align 8
  %phi.cast = zext i8 %273 to i32
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.then152.if.end157_crit_edge
  %nr_subframes.0 = phi i32 [ %phi.cast, %if.then154 ], [ 1, %if.then152.if.end157_crit_edge ]
  br i1 %tobool.i.not, label %if.then159, label %if.end157.if.end162_crit_edge

if.end157.if.end162_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  %NumRxUnicastOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156, i32 8
  %274 = ptrtoint ptr %NumRxUnicastOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %NumRxUnicastOkInPeriod, align 4
  %add = add i32 %275, %nr_subframes.0
  store i32 %add, ptr %NumRxUnicastOkInPeriod, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.end157.if.end162_crit_edge
  call fastcc void @rtllib_rx_check_leave_lps(ptr noundef %ieee, i8 noundef zeroext %20)
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end150.if.end163_crit_edge
  %276 = ptrtoint ptr %pHTInfo.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pHTInfo.i, align 8
  %bCurRxReorderEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %277, i32 0, i32 45
  %278 = ptrtoint ptr %bCurRxReorderEnable to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %bCurRxReorderEnable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool164.not = icmp eq i8 %279, 0
  br i1 %tobool164.not, label %if.end163.if.then170_crit_edge, label %lor.lhs.false

if.end163.if.then170_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then170

lor.lhs.false:                                    ; preds = %if.end163
  %280 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pTS, align 4
  %cmp165 = icmp eq ptr %281, null
  %brmerge280 = or i1 %bToOtherSTA.0.off0, %cmp165
  br i1 %brmerge280, label %lor.lhs.false.if.then170_crit_edge, label %if.else173

lor.lhs.false.if.then170_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then170

if.then170:                                       ; preds = %lor.lhs.false.if.then170_crit_edge, %if.end163.if.then170_crit_edge
  call fastcc void @rtllib_rx_indicate_pkt_legacy(ptr noundef %ieee, ptr noundef nonnull %call7.i, ptr noundef nonnull %dst, ptr noundef nonnull %src)
  br label %if.end174

if.else173:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @RxReorderIndicatePacket(ptr noundef %ieee, ptr noundef nonnull %call7.i, ptr noundef nonnull %281, i16 noundef zeroext %SeqNum.0)
  br label %if.end174

if.end174:                                        ; preds = %if.else173, %if.then170
  call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

rx_dropped:                                       ; preds = %for.end, %if.end133.rx_dropped_crit_edge, %if.end90.rx_dropped_crit_edge, %if.then23.i, %do.body19.i, %if.end60.rx_dropped_crit_edge, %rtllib_rx_extract_addr.exit.rx_dropped_crit_edge, %if.then33.rx_dropped_crit_edge, %rtllib_rx_check_duplicate.exit.rx_dropped_crit_edge, %cleanup.i, %if.end138.i.i.rx_dropped_crit_edge, %if.then132.i.i.rx_dropped_crit_edge, %if.then18, %if.then.rx_dropped_crit_edge
  %rx_dropped175 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 6
  %282 = ptrtoint ptr %rx_dropped175 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %rx_dropped175, align 4
  %inc176 = add i32 %283, 1
  store i32 %inc176, ptr %rx_dropped175, align 4
  br label %cleanup

cleanup:                                          ; preds = %rx_dropped, %if.end174, %if.end90.cleanup_crit_edge, %rtllib_rx_frame_mgmt.exit
  %retval.0 = phi i32 [ 0, %rx_dropped ], [ 1, %if.end90.cleanup_crit_edge ], [ 1, %rtllib_rx_frame_mgmt.exit ], [ 1, %if.end174 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_parse_info_param(ptr noundef %ieee, ptr noundef %info_element, i16 noundef zeroext %length, ptr noundef %network, ptr nocapture readnone %stats) local_unnamed_addr #0 align 64 {
entry:
  %tmp_htcap_len = alloca i16, align 2
  %tmp_htinfo_len = alloca i16, align 2
  %rates_str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_htcap_len) #12
  %0 = ptrtoint ptr %tmp_htcap_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %tmp_htcap_len, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp_htinfo_len) #12
  %1 = ptrtoint ptr %tmp_htinfo_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %tmp_htinfo_len, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rates_str) #12
  %2 = call ptr @memset(ptr %rates_str, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %length)
  %cmp986 = icmp ugt i16 %length, 1
  br i1 %cmp986, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev655 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %dot11d_info.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %CountryIeBuf.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 44
  %CountryIeLen.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 43
  %FirstIe_InScan.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 20
  %ssid.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %network, i32 4
  %bWithAironetIE635 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 7
  %bCkipSupported636 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 8
  %bd_ht_spec_ver = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 5
  %bd_ht_info_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 4
  %bd_ht_info_buf = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 3
  %bssht.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45
  %bd_ht_cap_len.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 2
  %bd_ht_cap_buf.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 1
  %arrayidx.i = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 1, i32 4
  %3 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 10
  %4 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 6
  %rsn_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 33
  %rsn_ie = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 32
  %atim_window = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 28
  %erp_value = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 29
  %flags384 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %tim = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 36
  %tim_period = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 36, i32 1
  %dtim_period = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 37
  %state = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %last_dtim_sta_time = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 39
  %dtim_data = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 38
  %assoc_id = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 107
  %listen_interval = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 27
  %channel = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 1
  %rates_ex_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 21
  %sub.ptr.rhs.cast186 = ptrtoint ptr %rates_str to i32
  %sub.ptr.sub187.neg = add i32 %sub.ptr.rhs.cast186, 64
  %rates_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 19
  %ssid_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %info_element.addr.0988 = phi ptr [ %info_element, %while.body.lr.ph ], [ %arrayidx698, %sw.epilog.while.body_crit_edge ]
  %length.addr.0987 = phi i16 [ %length, %while.body.lr.ph ], [ %conv694, %sw.epilog.while.body_crit_edge ]
  %conv994 = zext i16 %length.addr.0987 to i32
  %len = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %conv2 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv994)
  %cmp4 = icmp ugt i32 %add, %conv994
  br i1 %cmp4, label %do.body6, label %if.end17

do.body6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then9)) #12
          to label %while.end [label %if.then9], !srcloc !342

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev655, align 4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %conv11 = zext i8 %10 to i32
  %add12 = add nuw nsw i32 %conv11, 2
  %11 = ptrtoint ptr %info_element.addr.0988 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %info_element.addr.0988, align 1
  %conv14 = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug522, ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef %add12, i32 noundef %conv994, i32 noundef %conv14) #12
  br label %while.end

if.end17:                                         ; preds = %while.body
  %13 = ptrtoint ptr %info_element.addr.0988 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %info_element.addr.0988, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %14, label %do.body665 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb76
    i8 50, label %sw.bb157
    i8 3, label %do.body242
    i8 2, label %do.body268
    i8 4, label %do.body289
    i8 5, label %sw.bb308
    i8 42, label %sw.bb381
    i8 6, label %sw.bb408
    i8 16, label %do.body436
    i8 -35, label %do.body457
    i8 48, label %do.body480
    i8 45, label %do.body515
    i8 61, label %do.body538
    i8 -123, label %do.body594
    i8 -34, label %sw.bb638
    i8 7, label %do.body642
  ]

sw.bb:                                            ; preds = %if.end17
  %data = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.while.cond.i.preheader_crit_edge

sw.bb.while.cond.i.preheader_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

land.lhs.true.i:                                  ; preds = %sw.bb
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp1.i = icmp eq i8 %17, 32
  br i1 %cmp1.i, label %land.lhs.true.i.if.then24_crit_edge, label %land.lhs.true.i.while.cond.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

land.lhs.true.i.if.then24_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

while.cond.i.preheader:                           ; preds = %land.lhs.true.i.while.cond.i.preheader_crit_edge, %sw.bb.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %essid_len.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %conv2, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i)
  %tobool.not.i = icmp eq i32 %essid_len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.then24_crit_edge, label %while.body.i

while.cond.i.if.then24_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %essid_len.addr.0.i, -1
  %arrayidx3.i = getelementptr i8, ptr %data, i32 %dec.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i8 %19, 0
  br i1 %cmp5.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end25

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then24:                                        ; preds = %while.cond.i.if.then24_crit_edge, %land.lhs.true.i.if.then24_crit_edge
  %20 = ptrtoint ptr %flags384 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags384, align 8
  %or = or i32 %21, 1
  store i32 %or, ptr %flags384, align 8
  br label %sw.epilog

if.end25:                                         ; preds = %while.body.i
  %22 = call i8 @llvm.umin.i8(i8 %6, i8 32)
  %23 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ssid_len, align 8
  %conv39 = zext i8 %22 to i32
  %24 = call ptr @memcpy(ptr %ssid.i, ptr %data, i32 %conv39)
  %25 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp42 = icmp ult i8 %25, 32
  br i1 %cmp42, label %if.then44, label %if.end25.do.body53_crit_edge

if.end25.do.body53_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then44:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %conv41 = zext i8 %25 to i32
  %add.ptr = getelementptr i8, ptr %ssid.i, i32 %conv41
  %sub = sub nuw nsw i32 32, %conv41
  %26 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %do.body53

do.body53:                                        ; preds = %if.then44, %if.end25.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then65)) #12
          to label %sw.epilog [label %if.then65], !srcloc !342

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev655, align 4
  %29 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ssid_len, align 8
  %conv70 = zext i8 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug525, ptr noundef %28, ptr noundef nonnull @.str.10, ptr noundef %ssid.i, i32 noundef %conv70) #12
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end17
  %31 = call i8 @llvm.umin.i8(i8 %6, i8 12)
  %32 = ptrtoint ptr %rates_len to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %rates_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp94982.not = icmp eq i8 %31, 0
  br i1 %cmp94982.not, label %sw.bb76.do.body135_crit_edge, label %sw.bb76.for.body_crit_edge

sw.bb76.for.body_crit_edge:                       ; preds = %sw.bb76
  br label %for.body

sw.bb76.do.body135_crit_edge:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body135

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb76.for.body_crit_edge
  %indvars.iv998 = phi i32 [ %indvars.iv.next999, %for.inc.for.body_crit_edge ], [ 0, %sw.bb76.for.body_crit_edge ]
  %p.0983 = phi ptr [ %add.ptr106, %for.inc.for.body_crit_edge ], [ %rates_str, %sw.bb76.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2, i32 %indvars.iv998
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %arrayidx98 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 18, i32 %indvars.iv998
  %35 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx98, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0983 to i32
  %sub100 = sub i32 %sub.ptr.sub187.neg, %sub.ptr.lhs.cast
  %conv104 = zext i8 %34 to i32
  %call105 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0983, i32 noundef %sub100, ptr noundef nonnull @.str.11, i32 noundef %conv104) #12
  %add.ptr106 = getelementptr i8, ptr %p.0983, i32 %call105
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %38 = and i8 %37, 127
  %and.i = zext i8 %38 to i32
  %39 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %and.i, label %for.body.if.end124_crit_edge [
    i32 12, label %for.body.if.then112_crit_edge
    i32 18, label %for.body.if.then112_crit_edge1012
    i32 24, label %for.body.if.then112_crit_edge1013
    i32 36, label %for.body.if.then112_crit_edge1014
    i32 48, label %for.body.if.then112_crit_edge1015
    i32 72, label %for.body.if.then112_crit_edge1016
    i32 96, label %for.body.if.then112_crit_edge1017
    i32 108, label %for.body.if.then112_crit_edge1018
  ]

for.body.if.then112_crit_edge1018:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1017:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1016:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1015:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1014:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1013:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge1012:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.then112_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

for.body.if.end124_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then112:                                       ; preds = %for.body.if.then112_crit_edge, %for.body.if.then112_crit_edge1012, %for.body.if.then112_crit_edge1013, %for.body.if.then112_crit_edge1014, %for.body.if.then112_crit_edge1015, %for.body.if.then112_crit_edge1016, %for.body.if.then112_crit_edge1017, %for.body.if.then112_crit_edge1018
  %40 = ptrtoint ptr %flags384 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags384, align 8
  %or114 = or i32 %41, 2
  store i32 %or114, ptr %flags384, align 8
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool119.not = icmp sgt i8 %43, -1
  br i1 %tobool119.not, label %if.then112.if.end124_crit_edge, label %if.then120

if.then112.if.end124_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then120:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  %and122 = and i32 %or114, -5
  %44 = ptrtoint ptr %flags384 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and122, ptr %flags384, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.then112.if.end124_crit_edge, %for.body.if.end124_crit_edge
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  %47 = and i8 %46, 127
  %and.i935 = zext i8 %47 to i32
  %48 = zext i32 %and.i935 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and.i935, label %if.end124.for.inc_crit_edge [
    i32 2, label %if.end124.if.then130_crit_edge
    i32 4, label %if.end124.if.then130_crit_edge1019
    i32 11, label %if.end124.if.then130_crit_edge1020
    i32 22, label %if.end124.if.then130_crit_edge1021
  ]

if.end124.if.then130_crit_edge1021:               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

if.end124.if.then130_crit_edge1020:               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

if.end124.if.then130_crit_edge1019:               ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

if.end124.if.then130_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then130

if.end124.for.inc_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then130:                                       ; preds = %if.end124.if.then130_crit_edge, %if.end124.if.then130_crit_edge1019, %if.end124.if.then130_crit_edge1020, %if.end124.if.then130_crit_edge1021
  %49 = ptrtoint ptr %flags384 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags384, align 8
  %or132 = or i32 %50, 4
  store i32 %or132, ptr %flags384, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then130, %if.end124.for.inc_crit_edge
  %indvars.iv.next999 = add nuw nsw i32 %indvars.iv998, 1
  %51 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %rates_len, align 2
  %53 = zext i8 %52 to i32
  %cmp94 = icmp ult i32 %indvars.iv.next999, %53
  br i1 %cmp94, label %for.inc.for.body_crit_edge, label %for.inc.do.body135_crit_edge

for.inc.do.body135_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body135

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body135:                                       ; preds = %for.inc.do.body135_crit_edge, %sw.bb76.do.body135_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then147)) #12
          to label %sw.epilog [label %if.then147], !srcloc !342

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev655, align 4
  %56 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rates_len, align 2
  %conv151 = zext i8 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug528, ptr noundef %55, ptr noundef nonnull @.str.12, ptr noundef nonnull %rates_str, i32 noundef %conv151) #12
  br label %sw.epilog

sw.bb157:                                         ; preds = %if.end17
  %58 = call i8 @llvm.umin.i8(i8 %6, i8 16)
  %59 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %rates_ex_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp176979.not = icmp eq i8 %58, 0
  br i1 %cmp176979.not, label %sw.bb157.do.body218_crit_edge, label %sw.bb157.for.body178_crit_edge

sw.bb157.for.body178_crit_edge:                   ; preds = %sw.bb157
  br label %for.body178

sw.bb157.do.body218_crit_edge:                    ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body218

for.body178:                                      ; preds = %for.inc214.for.body178_crit_edge, %sw.bb157.for.body178_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc214.for.body178_crit_edge ], [ 0, %sw.bb157.for.body178_crit_edge ]
  %p.1980 = phi ptr [ %add.ptr194, %for.inc214.for.body178_crit_edge ], [ %rates_str, %sw.bb157.for.body178_crit_edge ]
  %arrayidx181 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2, i32 %indvars.iv
  %60 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx181, align 1
  %arrayidx183 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 20, i32 %indvars.iv
  %62 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx183, align 1
  %sub.ptr.lhs.cast185 = ptrtoint ptr %p.1980 to i32
  %sub188 = sub i32 %sub.ptr.sub187.neg, %sub.ptr.lhs.cast185
  %conv192 = zext i8 %61 to i32
  %call193 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.1980, i32 noundef %sub188, ptr noundef nonnull @.str.11, i32 noundef %conv192) #12
  %add.ptr194 = getelementptr i8, ptr %p.1980, i32 %call193
  %63 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx181, align 1
  %65 = and i8 %64, 127
  %and.i938 = zext i8 %65 to i32
  %66 = zext i32 %and.i938 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %and.i938, label %for.body178.for.inc214_crit_edge [
    i32 12, label %for.body178.if.then200_crit_edge
    i32 18, label %for.body178.if.then200_crit_edge1022
    i32 24, label %for.body178.if.then200_crit_edge1023
    i32 36, label %for.body178.if.then200_crit_edge1024
    i32 48, label %for.body178.if.then200_crit_edge1025
    i32 72, label %for.body178.if.then200_crit_edge1026
    i32 96, label %for.body178.if.then200_crit_edge1027
    i32 108, label %for.body178.if.then200_crit_edge1028
  ]

for.body178.if.then200_crit_edge1028:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1027:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1026:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1025:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1024:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1023:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge1022:             ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.if.then200_crit_edge:                 ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

for.body178.for.inc214_crit_edge:                 ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc214

if.then200:                                       ; preds = %for.body178.if.then200_crit_edge, %for.body178.if.then200_crit_edge1022, %for.body178.if.then200_crit_edge1023, %for.body178.if.then200_crit_edge1024, %for.body178.if.then200_crit_edge1025, %for.body178.if.then200_crit_edge1026, %for.body178.if.then200_crit_edge1027, %for.body178.if.then200_crit_edge1028
  %67 = ptrtoint ptr %flags384 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags384, align 8
  %or202 = or i32 %68, 2
  store i32 %or202, ptr %flags384, align 8
  %69 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx181, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %tobool208.not = icmp sgt i8 %70, -1
  br i1 %tobool208.not, label %if.then200.for.inc214_crit_edge, label %if.then209

if.then200.for.inc214_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc214

if.then209:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #14
  %and211 = and i32 %or202, -5
  %71 = ptrtoint ptr %flags384 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and211, ptr %flags384, align 8
  br label %for.inc214

for.inc214:                                       ; preds = %if.then209, %if.then200.for.inc214_crit_edge, %for.body178.for.inc214_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %72 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rates_ex_len, align 1
  %74 = zext i8 %73 to i32
  %cmp176 = icmp ult i32 %indvars.iv.next, %74
  br i1 %cmp176, label %for.inc214.for.body178_crit_edge, label %for.inc214.do.body218_crit_edge

for.inc214.do.body218_crit_edge:                  ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body218

for.inc214.for.body178_crit_edge:                 ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body178

do.body218:                                       ; preds = %for.inc214.do.body218_crit_edge, %sw.bb157.do.body218_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then230)) #12
          to label %sw.epilog [label %if.then230], !srcloc !342

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev655, align 4
  %77 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rates_ex_len, align 1
  %conv234 = zext i8 %78 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug531, ptr noundef %76, ptr noundef nonnull @.str.13, ptr noundef nonnull %rates_str, i32 noundef %conv234) #12
  br label %sw.epilog

do.body242:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then254)) #12
          to label %do.end263 [label %if.then254], !srcloc !342

if.then254:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev655, align 4
  %data256 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %81 = ptrtoint ptr %data256 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data256, align 1
  %conv258 = zext i8 %82 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug532, ptr noundef %80, ptr noundef nonnull @.str.14, i32 noundef %conv258) #12
  br label %do.end263

do.end263:                                        ; preds = %if.then254, %do.body242
  %data264 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %83 = ptrtoint ptr %data264 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %data264, align 1
  %85 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %channel, align 2
  br label %sw.epilog

do.body268:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then280)) #12
          to label %sw.epilog [label %if.then280], !srcloc !342

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev655, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug533, ptr noundef %87, ptr noundef nonnull @.str.15) #12
  br label %sw.epilog

do.body289:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then301)) #12
          to label %sw.epilog [label %if.then301], !srcloc !342

if.then301:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev655, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug534, ptr noundef %89, ptr noundef nonnull @.str.16) #12
  br label %sw.epilog

sw.bb308:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp311 = icmp ult i8 %6, 4
  br i1 %cmp311, label %sw.bb308.sw.epilog_crit_edge, label %if.end314

sw.bb308.sw.epilog_crit_edge:                     ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end314:                                        ; preds = %sw.bb308
  %data315 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %90 = ptrtoint ptr %data315 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %data315, align 1
  %92 = ptrtoint ptr %tim to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %tim, align 8
  %arrayidx318 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx318, align 1
  %95 = ptrtoint ptr %tim_period to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %tim_period, align 1
  %96 = load i8, ptr %arrayidx318, align 1
  %97 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %dtim_period, align 2
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %99)
  %cmp322.not = icmp eq i32 %99, 5
  br i1 %cmp322.not, label %if.end325, label %if.end314.sw.epilog_crit_edge

if.end314.sw.epilog_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end325:                                        ; preds = %if.end314
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %conv326 = zext i32 %100 to i64
  %101 = ptrtoint ptr %last_dtim_sta_time to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv326, ptr %last_dtim_sta_time, align 8
  %102 = ptrtoint ptr %dtim_data to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %dtim_data, align 1
  %arrayidx328 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 2
  %103 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx328, align 1
  %105 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool331.not = icmp eq i8 %105, 0
  %spec.store.select = select i1 %tobool331.not, i8 1, i8 5
  %106 = ptrtoint ptr %dtim_data to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.store.select, ptr %dtim_data, align 1
  %107 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx328, align 1
  %109 = and i8 %108, -2
  %110 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %assoc_id, align 8
  %conv342 = zext i16 %111 to i32
  %112 = zext i8 %109 to i32
  %mul344 = shl nuw nsw i32 %112, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul344, i32 %conv342)
  %cmp345 = icmp ugt i32 %mul344, %conv342
  br i1 %cmp345, label %if.end325.sw.epilog_crit_edge, label %lor.lhs.false

if.end325.sw.epilog_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end325
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %len, align 1
  %conv351 = zext i8 %114 to i32
  %add352 = add nuw nsw i32 %conv351, %112
  %sub353 = shl nuw nsw i32 %add352, 3
  %mul354 = add nsw i32 %sub353, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %mul354, i32 %conv342)
  %cmp355 = icmp slt i32 %mul354, %conv342
  br i1 %cmp355, label %lor.lhs.false.sw.epilog_crit_edge, label %if.end358

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end358:                                        ; preds = %lor.lhs.false
  %div882 = lshr i32 %conv342, 3
  %sub362 = sub nsw i32 3, %112
  %add366 = add nsw i32 %sub362, %div882
  %arrayidx367 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2, i32 %add366
  %115 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx367, align 1
  %conv368 = zext i8 %116 to i32
  %rem = and i32 %conv342, 7
  %shl = shl nuw nsw i32 1, %rem
  %and371 = and i32 %shl, %conv368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool372.not = icmp eq i32 %and371, 0
  br i1 %tobool372.not, label %if.end358.if.end378_crit_edge, label %if.then373

if.end358.if.end378_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end378

if.then373:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #14
  %117 = or i8 %spec.store.select, 2
  %118 = ptrtoint ptr %dtim_data to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %dtim_data, align 1
  br label %if.end378

if.end378:                                        ; preds = %if.then373, %if.end358.if.end378_crit_edge
  %conv380 = zext i8 %96 to i16
  %119 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv380, ptr %listen_interval, align 2
  br label %sw.epilog

sw.bb381:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %data382 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %120 = ptrtoint ptr %data382 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %data382, align 1
  %122 = ptrtoint ptr %erp_value to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %erp_value, align 2
  %123 = ptrtoint ptr %flags384 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags384, align 8
  %or385 = or i32 %124, 1024
  store i32 %or385, ptr %flags384, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then399)) #12
          to label %sw.epilog [label %if.then399], !srcloc !342

if.then399:                                       ; preds = %sw.bb381
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev655, align 4
  %127 = ptrtoint ptr %erp_value to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %erp_value, align 2
  %conv402 = zext i8 %128 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug535, ptr noundef %126, ptr noundef nonnull @.str.17, i32 noundef %conv402) #12
  br label %sw.epilog

sw.bb408:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %data409 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %129 = ptrtoint ptr %data409 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %data409, align 1
  %conv411 = zext i8 %130 to i16
  %131 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv411, ptr %atim_window, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then425)) #12
          to label %sw.epilog [label %if.then425], !srcloc !342

if.then425:                                       ; preds = %sw.bb408
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev655, align 4
  %134 = ptrtoint ptr %atim_window to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %atim_window, align 8
  %conv428 = zext i16 %135 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug536, ptr noundef %133, ptr noundef nonnull @.str.18, i32 noundef %conv428) #12
  br label %sw.epilog

do.body436:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then448)) #12
          to label %sw.epilog [label %if.then448], !srcloc !342

if.then448:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev655, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug537, ptr noundef %137, ptr noundef nonnull @.str.19) #12
  br label %sw.epilog

do.body457:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then469)) #12
          to label %do.end477 [label %if.then469], !srcloc !342

if.then469:                                       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev655, align 4
  %140 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %len, align 1
  %conv472 = zext i8 %141 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug538, ptr noundef %139, ptr noundef nonnull @.str.20, i32 noundef %conv472) #12
  br label %do.end477

do.end477:                                        ; preds = %if.then469, %do.body457
  call fastcc void @rtllib_parse_mife_generic(ptr noundef %ieee, ptr noundef %info_element.addr.0988, ptr noundef %network, ptr noundef nonnull %tmp_htcap_len, ptr noundef nonnull %tmp_htinfo_len)
  br label %sw.epilog

do.body480:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then492)) #12
          to label %do.end500 [label %if.then492], !srcloc !342

if.then492:                                       ; preds = %do.body480
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev655, align 4
  %144 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %len, align 1
  %conv495 = zext i8 %145 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug539, ptr noundef %143, ptr noundef nonnull @.str.21, i32 noundef %conv495) #12
  br label %do.end500

do.end500:                                        ; preds = %if.then492, %do.body480
  %146 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %147)
  %cmp505 = icmp ult i8 %147, 62
  %conv502 = zext i8 %147 to i32
  %add503 = add nuw nsw i32 %conv502, 2
  %cond510 = select i1 %cmp505, i32 %add503, i32 64
  %148 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %cond510, ptr %rsn_ie_len, align 8
  %149 = call ptr @memcpy(ptr %rsn_ie, ptr %info_element.addr.0988, i32 %cond510)
  br label %sw.epilog

do.body515:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then527)) #12
          to label %do.end535 [label %if.then527], !srcloc !342

if.then527:                                       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev655, align 4
  %152 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %len, align 1
  %conv530 = zext i8 %153 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug542, ptr noundef %151, ptr noundef nonnull @.str.22, i32 noundef %conv530) #12
  br label %do.end535

do.end535:                                        ; preds = %if.then527, %do.body515
  %154 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %len, align 1
  %phi.cast.i = zext i8 %155 to i16
  %156 = ptrtoint ptr %tmp_htcap_len to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %phi.cast.i, ptr %tmp_htcap_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %cmp7.not.i = icmp eq i8 %155, 0
  br i1 %cmp7.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end535
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %bd_ht_spec_ver, align 4
  %158 = call i16 @llvm.umin.i16(i16 %phi.cast.i, i16 32) #12
  %159 = ptrtoint ptr %bd_ht_cap_len.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %bd_ht_cap_len.i, align 2
  %data.i = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %conv23.i = zext i16 %158 to i32
  %160 = call ptr @memcpy(ptr %bd_ht_cap_buf.i, ptr %data.i, i32 %conv23.i)
  %161 = ptrtoint ptr %bssht.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %bssht.i, align 4
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp27.i = icmp eq i8 %163, 0
  %conv29.i = zext i1 %cmp27.i to i8
  %164 = ptrtoint ptr %bd_ht_cap_buf.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 3)
  %bf.load.i = load i24, ptr %bd_ht_cap_buf.i, align 1
  %bf.lshr.i = lshr i24 %bf.load.i, 22
  %165 = and i24 %bf.lshr.i, 1
  %bf.cast.i = zext i24 %165 to i32
  br label %rtllib_parse_mfie_ht_cap.exit

if.else.i:                                        ; preds = %do.end535
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %bssht.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %bssht.i, align 4
  br label %rtllib_parse_mfie_ht_cap.exit

rtllib_parse_mfie_ht_cap.exit:                    ; preds = %if.else.i, %if.then.i
  %conv29.sink.i = phi i8 [ 0, %if.else.i ], [ %conv29.i, %if.then.i ]
  %bf.cast.sink.i = phi i32 [ 0, %if.else.i ], [ %bf.cast.i, %if.then.i ]
  %167 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv29.sink.i, ptr %3, align 1
  %168 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %bf.cast.sink.i, ptr %4, align 4
  br label %sw.epilog

do.body538:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then550)) #12
          to label %do.end558 [label %if.then550], !srcloc !342

if.then550:                                       ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev655, align 4
  %171 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %len, align 1
  %conv553 = zext i8 %172 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug543, ptr noundef %170, ptr noundef nonnull @.str.23, i32 noundef %conv553) #12
  br label %do.end558

do.end558:                                        ; preds = %if.then550, %do.body538
  %173 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %len, align 1
  %conv561 = zext i8 %174 to i16
  %175 = ptrtoint ptr %tmp_htinfo_len to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv561, ptr %tmp_htinfo_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool572.not = icmp eq i8 %174, 0
  br i1 %tobool572.not, label %do.end558.sw.epilog_crit_edge, label %if.then573

do.end558.sw.epilog_crit_edge:                    ; preds = %do.end558
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then573:                                       ; preds = %do.end558
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %bd_ht_spec_ver, align 8
  %177 = call i16 @llvm.umin.i16(i16 %conv561, i16 32)
  %178 = ptrtoint ptr %bd_ht_info_len to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %bd_ht_info_len, align 4
  %data586 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %conv590 = zext i16 %177 to i32
  %179 = call ptr @memcpy(ptr %bd_ht_info_buf, ptr %data586, i32 %conv590)
  br label %sw.epilog

do.body594:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then606)) #12
          to label %do.end614 [label %if.then606], !srcloc !342

if.then606:                                       ; preds = %do.body594
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev655, align 4
  %182 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %len, align 1
  %conv609 = zext i8 %183 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug546, ptr noundef %181, ptr noundef nonnull @.str.24, i32 noundef %conv609) #12
  br label %do.end614

do.end614:                                        ; preds = %if.then606, %do.body594
  %184 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %185)
  %cmp617 = icmp ugt i8 %185, 8
  br i1 %cmp617, label %if.then619, label %if.else634

if.then619:                                       ; preds = %do.end614
  %186 = ptrtoint ptr %bWithAironetIE635 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %bWithAironetIE635, align 4
  %arrayidx621 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 5
  %187 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx621, align 1
  %189 = and i8 %188, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %if.else, label %if.then631

if.then631:                                       ; preds = %if.then619
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %bCkipSupported636 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 1, ptr %bCkipSupported636, align 1
  br label %sw.epilog

if.else:                                          ; preds = %if.then619
  call void @__sanitizer_cov_trace_pc() #14
  %192 = ptrtoint ptr %bCkipSupported636 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %bCkipSupported636, align 1
  br label %sw.epilog

if.else634:                                       ; preds = %do.end614
  call void @__sanitizer_cov_trace_pc() #14
  %193 = ptrtoint ptr %bWithAironetIE635 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %bWithAironetIE635, align 4
  %194 = ptrtoint ptr %bCkipSupported636 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %bCkipSupported636, align 1
  br label %sw.epilog

sw.bb638:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev655, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %196, ptr noundef nonnull @.str.25) #16
  br label %sw.epilog

do.body642:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then654)) #12
          to label %do.end662 [label %if.then654], !srcloc !342

if.then654:                                       ; preds = %do.body642
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev655, align 4
  %199 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %len, align 1
  %conv657 = zext i8 %200 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug547, ptr noundef %198, ptr noundef nonnull @.str.26, i32 noundef %conv657) #12
  br label %do.end662

do.end662:                                        ; preds = %if.then654, %do.body642
  %201 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dot11d_info.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i943 = icmp eq i8 %204, 0
  br i1 %tobool.not.i943, label %do.end662.sw.epilog_crit_edge, label %if.then.i945

do.end662.sw.epilog_crit_edge:                    ; preds = %do.end662
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i945:                                     ; preds = %do.end662
  %205 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp.not.i = icmp eq i8 %206, 0
  br i1 %cmp.not.i, label %if.then.i945.if.end23.i_crit_edge, label %if.then2.i

if.then.i945.if.end23.i_crit_edge:                ; preds = %if.then.i945
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then2.i:                                       ; preds = %if.then.i945
  %conv.i = zext i8 %206 to i32
  %data.i946 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2
  %207 = call ptr @memcpy(ptr %CountryIeBuf.i, ptr %data.i946, i32 %conv.i)
  %208 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %209 to i16
  %210 = ptrtoint ptr %CountryIeLen.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv7.i, ptr %CountryIeLen.i, align 4
  %211 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dot11d_info.i, align 4
  %country_len.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %country_len.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %country_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %cmp10.not.i = icmp eq i16 %214, 0
  br i1 %cmp10.not.i, label %if.then12.i, label %if.then2.i.if.end23.i_crit_edge

if.then2.i.if.end23.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then12.i:                                      ; preds = %if.then2.i
  %call.i = call zeroext i1 @rtllib_act_scanning(ptr noundef %ieee, i1 noundef zeroext false) #12
  br i1 %call.i, label %land.lhs.true.i947, label %if.then12.i.if.end.i948_crit_edge

if.then12.i.if.end.i948_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i948

land.lhs.true.i947:                               ; preds = %if.then12.i
  %215 = ptrtoint ptr %FirstIe_InScan.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %FirstIe_InScan.i, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool14.not.i = icmp eq i8 %216, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i947.if.end.i948_crit_edge, label %if.then16.i

land.lhs.true.i947.if.end.i948_crit_edge:         ; preds = %land.lhs.true.i947
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i948

if.then16.i:                                      ; preds = %land.lhs.true.i947
  call void @__sanitizer_cov_trace_pc() #14
  %217 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev655, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %218, ptr noundef nonnull @.str.102, ptr noundef %ssid.i) #16
  br label %if.end.i948

if.end.i948:                                      ; preds = %if.then16.i, %land.lhs.true.i947.if.end.i948_crit_edge, %if.then12.i.if.end.i948_crit_edge
  %219 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %len, align 1
  %conv19.i = zext i8 %220 to i16
  call void @dot11d_update_country(ptr noundef %ieee, ptr noundef %network, i16 noundef zeroext %conv19.i, ptr noundef %data.i946) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end.i948, %if.then2.i.if.end23.i_crit_edge, %if.then.i945.if.end23.i_crit_edge
  %221 = ptrtoint ptr %dot11d_info.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dot11d_info.i, align 4
  %country_src_addr.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %222, i32 0, i32 3
  %223 = ptrtoint ptr %country_src_addr.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %country_src_addr.i, align 4
  %225 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %network, align 4
  %xor.i.i.i = xor i32 %226, %224
  %add.ptr.i.i.i = getelementptr %struct.rt_dot11d_info, ptr %222, i32 0, i32 3, i32 4
  %227 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %add.ptr.i.i.i, align 2
  %229 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %230, %228
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then27.i, label %if.end23.i.sw.epilog_crit_edge

if.end23.i.sw.epilog_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %country_watchdog.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %222, i32 0, i32 4
  %231 = ptrtoint ptr %country_watchdog.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %country_watchdog.i, align 1
  %inc.i = add i8 %232, 1
  store i8 %inc.i, ptr %country_watchdog.i, align 1
  br label %sw.epilog

do.body665:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_info_param, %if.then677)) #12
          to label %sw.epilog [label %if.then677], !srcloc !342

if.then677:                                       ; preds = %do.body665
  %233 = ptrtoint ptr %dev655 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev655, align 4
  %235 = ptrtoint ptr %info_element.addr.0988 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %info_element.addr.0988, align 1
  %237 = zext i8 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %236, label %sw.default.i [
    i8 0, label %if.then677.get_info_element_string.exit_crit_edge
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb3.i
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
    i8 50, label %sw.bb23.i
    i8 -35, label %sw.bb24.i
    i8 -34, label %sw.bb25.i
  ]

if.then677.get_info_element_string.exit_crit_edge: ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb1.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb2.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb3.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb4.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb5.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb6.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb7.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb8.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb9.i:                                         ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb10.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb11.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb12.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb13.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb14.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb15.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb16.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb17.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb18.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb19.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb20.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb21.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb22.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb23.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb24.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.bb25.i:                                        ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

sw.default.i:                                     ; preds = %if.then677
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_info_element_string.exit

get_info_element_string.exit:                     ; preds = %sw.default.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then677.get_info_element_string.exit_crit_edge
  %retval.0.i949 = phi ptr [ @.str.129, %sw.default.i ], [ @.str.128, %sw.bb25.i ], [ @.str.127, %sw.bb24.i ], [ @.str.126, %sw.bb23.i ], [ @.str.125, %sw.bb22.i ], [ @.str.124, %sw.bb21.i ], [ @.str.123, %sw.bb20.i ], [ @.str.122, %sw.bb19.i ], [ @.str.121, %sw.bb18.i ], [ @.str.120, %sw.bb17.i ], [ @.str.119, %sw.bb16.i ], [ @.str.118, %sw.bb15.i ], [ @.str.117, %sw.bb14.i ], [ @.str.116, %sw.bb13.i ], [ @.str.115, %sw.bb12.i ], [ @.str.114, %sw.bb11.i ], [ @.str.113, %sw.bb10.i ], [ @.str.112, %sw.bb9.i ], [ @.str.111, %sw.bb8.i ], [ @.str.110, %sw.bb7.i ], [ @.str.109, %sw.bb6.i ], [ @.str.108, %sw.bb5.i ], [ @.str.107, %sw.bb4.i ], [ @.str.106, %sw.bb3.i ], [ @.str.105, %sw.bb2.i ], [ @.str.104, %sw.bb1.i ], [ @.str.103, %if.then677.get_info_element_string.exit_crit_edge ]
  %conv683 = zext i8 %236 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_info_param.__UNIQUE_ID_ddebug548, ptr noundef %234, ptr noundef nonnull @.str.27, ptr noundef nonnull %retval.0.i949, i32 noundef %conv683) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %get_info_element_string.exit, %do.body665, %if.then27.i, %if.end23.i.sw.epilog_crit_edge, %do.end662.sw.epilog_crit_edge, %sw.bb638, %if.else634, %if.else, %if.then631, %if.then573, %do.end558.sw.epilog_crit_edge, %rtllib_parse_mfie_ht_cap.exit, %do.end500, %do.end477, %if.then448, %do.body436, %if.then425, %sw.bb408, %if.then399, %sw.bb381, %if.end378, %lor.lhs.false.sw.epilog_crit_edge, %if.end325.sw.epilog_crit_edge, %if.end314.sw.epilog_crit_edge, %sw.bb308.sw.epilog_crit_edge, %if.then301, %do.body289, %if.then280, %do.body268, %do.end263, %if.then230, %do.body218, %if.then147, %do.body135, %if.then65, %do.body53, %if.then24
  %238 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %len, align 1
  %conv690 = zext i8 %239 to i32
  %240 = zext i8 %239 to i16
  %.neg976 = add i16 %length.addr.0987, -2
  %conv694 = sub i16 %.neg976, %240
  %arrayidx698 = getelementptr %struct.rtllib_info_element, ptr %info_element.addr.0988, i32 0, i32 2, i32 %conv690
  %cmp = icmp ugt i16 %conv694, 1
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.while.end_crit_edge

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.then9, %do.body6, %entry.while.end_crit_edge
  %atheros_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 50
  %241 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %atheros_cap_exist, align 8, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool699.not = icmp eq i8 %242, 0
  br i1 %tobool699.not, label %land.lhs.true, label %while.end.if.else709_crit_edge

while.end.if.else709_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else709

land.lhs.true:                                    ; preds = %while.end
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 46
  %243 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %broadcom_cap_exist, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool700.not = icmp eq i8 %244, 0
  br i1 %tobool700.not, label %land.lhs.true701, label %land.lhs.true.if.else709_crit_edge

land.lhs.true.if.else709_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else709

land.lhs.true701:                                 ; preds = %land.lhs.true
  %cisco_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 51
  %245 = ptrtoint ptr %cisco_cap_exist to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %cisco_cap_exist, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool702.not = icmp eq i8 %246, 0
  br i1 %tobool702.not, label %land.lhs.true703, label %land.lhs.true701.if.else709_crit_edge

land.lhs.true701.if.else709_crit_edge:            ; preds = %land.lhs.true701
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else709

land.lhs.true703:                                 ; preds = %land.lhs.true701
  %ralink_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 49
  %247 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %ralink_cap_exist, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool704.not = icmp eq i8 %248, 0
  br i1 %tobool704.not, label %land.lhs.true705, label %land.lhs.true703.if.else709_crit_edge

land.lhs.true703.if.else709_crit_edge:            ; preds = %land.lhs.true703
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else709

land.lhs.true705:                                 ; preds = %land.lhs.true703
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 7
  %249 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %bd_rt2rt_aggregation, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool707.not = icmp eq i8 %250, 0
  br i1 %tobool707.not, label %land.lhs.true705.if.end711_crit_edge, label %land.lhs.true705.if.else709_crit_edge

land.lhs.true705.if.else709_crit_edge:            ; preds = %land.lhs.true705
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else709

land.lhs.true705.if.end711_crit_edge:             ; preds = %land.lhs.true705
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end711

if.else709:                                       ; preds = %land.lhs.true705.if.else709_crit_edge, %land.lhs.true703.if.else709_crit_edge, %land.lhs.true701.if.else709_crit_edge, %land.lhs.true.if.else709_crit_edge, %while.end.if.else709_crit_edge
  br label %if.end711

if.end711:                                        ; preds = %if.else709, %land.lhs.true705.if.end711_crit_edge
  %.sink = phi i8 [ 0, %if.else709 ], [ 1, %land.lhs.true705.if.end711_crit_edge ]
  %unknown_cap_exist710 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 53
  %251 = ptrtoint ptr %unknown_cap_exist710 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %.sink, ptr %unknown_cap_exist710, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rates_str) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_htinfo_len) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp_htcap_len) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_parse_mife_generic(ptr nocapture noundef readonly %ieee, ptr noundef %info_element, ptr noundef %network, ptr nocapture noundef %tmp_htcap_len, ptr nocapture noundef %tmp_htinfo_len) unnamed_addr #0 align 64 {
entry:
  %ht_realtek_agg_buf = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %ht_realtek_agg_buf)
  %0 = call ptr @memset(ptr %ht_realtek_agg_buf, i32 255, i32 255)
  %call = tail call fastcc i32 @rtllib_parse_qos_info_param_IE(ptr noundef %ieee, ptr noundef %info_element, ptr noundef %network)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ugt i8 %2, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3 = icmp eq i8 %4, 0
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %6)
  %cmp9 = icmp eq i8 %6, 80
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true5.if.end29_crit_edge

land.lhs.true5.if.end29_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true11:                                  ; preds = %land.lhs.true5
  %arrayidx13 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %8)
  %cmp15 = icmp eq i8 %8, -14
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true11.if.end29_crit_edge

land.lhs.true11.if.end29_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %arrayidx19 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp21 = icmp eq i8 %10, 1
  br i1 %cmp21, label %if.then23, label %land.lhs.true17.if.end29_crit_edge

land.lhs.true17.if.end29_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %2)
  %cmp26 = icmp ult i8 %2, 62
  %add = add nuw nsw i32 %conv, 2
  %cond = select i1 %cmp26, i32 %add, i32 64
  %wpa_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 31
  %11 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %wpa_ie_len, align 4
  %wpa_ie = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 30
  %12 = call ptr @memcpy(ptr %wpa_ie, ptr %info_element, i32 %cond)
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true17.if.end29_crit_edge, %land.lhs.true11.if.end29_crit_edge, %land.lhs.true5.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %cmp32 = icmp eq i8 %2, 7
  br i1 %cmp32, label %land.lhs.true34, label %if.end29.if.end65_crit_edge

if.end29.if.end65_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true34:                                  ; preds = %if.end29
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp38 = icmp eq i8 %14, 0
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true34.if.end65_crit_edge

land.lhs.true34.if.end65_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %arrayidx42 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %16)
  %cmp44 = icmp eq i8 %16, -32
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true40.if.end65_crit_edge

land.lhs.true40.if.end65_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %arrayidx48 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %17 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %18)
  %cmp50 = icmp eq i8 %18, 76
  br i1 %cmp50, label %land.lhs.true52, label %land.lhs.true46.if.end65_crit_edge

land.lhs.true46.if.end65_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %arrayidx54 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp56 = icmp eq i8 %20, 1
  br i1 %cmp56, label %land.lhs.true58, label %land.lhs.true52.if.end65_crit_edge

land.lhs.true52.if.end65_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %arrayidx60 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 3
  %21 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp62 = icmp eq i8 %22, 2
  br i1 %cmp62, label %if.then64, label %land.lhs.true58.if.end65_crit_edge

land.lhs.true58.if.end65_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then64:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  %Turbo_Enable = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 42
  %23 = ptrtoint ptr %Turbo_Enable to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %Turbo_Enable, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true58.if.end65_crit_edge, %land.lhs.true52.if.end65_crit_edge, %land.lhs.true46.if.end65_crit_edge, %land.lhs.true40.if.end65_crit_edge, %land.lhs.true34.if.end65_crit_edge, %if.end29.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %24 = ptrtoint ptr %tmp_htcap_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tmp_htcap_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp67 = icmp eq i16 %25, 0
  br i1 %cmp67, label %if.then69, label %if.end65.if.end157_crit_edge

if.end65.if.end157_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then69:                                        ; preds = %if.end65
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %len, align 1
  %conv71 = zext i8 %27 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp72 = icmp ugt i8 %27, 3
  br i1 %cmp72, label %land.lhs.true74, label %if.then69.if.end137_crit_edge

if.then69.if.end137_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true74:                                  ; preds = %if.then69
  %data75 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %28 = ptrtoint ptr %data75 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp78 = icmp eq i8 %29, 0
  br i1 %cmp78, label %land.lhs.true80, label %land.lhs.true74.if.end137_crit_edge

land.lhs.true74.if.end137_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true80:                                  ; preds = %land.lhs.true74
  %arrayidx82 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %31)
  %cmp84 = icmp eq i8 %31, -112
  br i1 %cmp84, label %land.lhs.true86, label %land.lhs.true80.if.end137_crit_edge

land.lhs.true80.if.end137_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true86:                                  ; preds = %land.lhs.true80
  %arrayidx88 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %32 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %33)
  %cmp90 = icmp eq i8 %33, 76
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true86.if.end137_crit_edge

land.lhs.true86.if.end137_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

land.lhs.true92:                                  ; preds = %land.lhs.true86
  %arrayidx94 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %35)
  %cmp96 = icmp eq i8 %35, 51
  br i1 %cmp96, label %if.then98, label %land.lhs.true92.if.end137_crit_edge

land.lhs.true92.if.end137_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137

if.then98:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %tmp_htcap_len to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv71, ptr %tmp_htcap_len, align 2
  %bd_ht_spec_ver = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 5
  %37 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %bd_ht_spec_ver, align 8
  %38 = load i16, ptr %tmp_htcap_len, align 2
  %39 = tail call i16 @llvm.umin.i16(i16 %38, i16 32)
  %bd_ht_cap_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 2
  %40 = ptrtoint ptr %bd_ht_cap_len to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %bd_ht_cap_len, align 2
  %bd_ht_cap_buf = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 1
  %conv135 = zext i16 %39 to i32
  %41 = call ptr @memcpy(ptr %bd_ht_cap_buf, ptr %data75, i32 %conv135)
  br label %if.end137

if.end137:                                        ; preds = %if.then98, %land.lhs.true92.if.end137_crit_edge, %land.lhs.true86.if.end137_crit_edge, %land.lhs.true80.if.end137_crit_edge, %land.lhs.true74.if.end137_crit_edge, %if.then69.if.end137_crit_edge
  %42 = ptrtoint ptr %tmp_htcap_len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tmp_htcap_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp139.not = icmp eq i16 %43, 0
  %bssht152 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45
  br i1 %cmp139.not, label %if.else, label %if.then141

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bssht152 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %bssht152, align 8
  %arrayidx146 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx146, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp148 = icmp eq i8 %46, 0
  %conv150 = zext i1 %cmp148 to i8
  br label %if.end157.sink.split

if.else:                                          ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %bssht152 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %bssht152, align 8
  br label %if.end157.sink.split

if.end157.sink.split:                             ; preds = %if.else, %if.then141
  %conv150.sink = phi i8 [ %conv150, %if.then141 ], [ 0, %if.else ]
  %bd_ht_1r = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 10
  %48 = ptrtoint ptr %bd_ht_1r to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv150.sink, ptr %bd_ht_1r, align 1
  br label %if.end157

if.end157:                                        ; preds = %if.end157.sink.split, %if.end65.if.end157_crit_edge
  %49 = ptrtoint ptr %tmp_htinfo_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tmp_htinfo_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp159 = icmp eq i16 %50, 0
  br i1 %cmp159, label %if.then161, label %if.end157.if.end232_crit_edge

if.end157.if.end232_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then161:                                       ; preds = %if.end157
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %len, align 1
  %conv163 = zext i8 %52 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp164 = icmp ugt i8 %52, 3
  br i1 %cmp164, label %land.lhs.true166, label %if.then161.if.end232_crit_edge

if.then161.if.end232_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

land.lhs.true166:                                 ; preds = %if.then161
  %data167 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %53 = ptrtoint ptr %data167 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp170 = icmp eq i8 %54, 0
  br i1 %cmp170, label %land.lhs.true172, label %land.lhs.true166.if.end232_crit_edge

land.lhs.true166.if.end232_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

land.lhs.true172:                                 ; preds = %land.lhs.true166
  %arrayidx174 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %56)
  %cmp176 = icmp eq i8 %56, -112
  br i1 %cmp176, label %land.lhs.true178, label %land.lhs.true172.if.end232_crit_edge

land.lhs.true172.if.end232_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

land.lhs.true178:                                 ; preds = %land.lhs.true172
  %arrayidx180 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %57 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %58)
  %cmp182 = icmp eq i8 %58, 76
  br i1 %cmp182, label %land.lhs.true184, label %land.lhs.true178.if.end232_crit_edge

land.lhs.true178.if.end232_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

land.lhs.true184:                                 ; preds = %land.lhs.true178
  %arrayidx186 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %59 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %60)
  %cmp188 = icmp eq i8 %60, 52
  br i1 %cmp188, label %if.then190, label %land.lhs.true184.if.end232_crit_edge

land.lhs.true184.if.end232_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then190:                                       ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %tmp_htinfo_len to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv163, ptr %tmp_htinfo_len, align 2
  %bd_ht_spec_ver209 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 5
  %62 = ptrtoint ptr %bd_ht_spec_ver209 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %bd_ht_spec_ver209, align 8
  %63 = load i16, ptr %tmp_htinfo_len, align 2
  %64 = tail call i16 @llvm.umin.i16(i16 %63, i16 32)
  %bd_ht_info_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 4
  %65 = ptrtoint ptr %bd_ht_info_len to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %bd_ht_info_len, align 4
  %bd_ht_info_buf = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 3
  %conv229 = zext i16 %64 to i32
  %66 = call ptr @memcpy(ptr %bd_ht_info_buf, ptr %data167, i32 %conv229)
  br label %if.end232

if.end232:                                        ; preds = %if.then190, %land.lhs.true184.if.end232_crit_edge, %land.lhs.true178.if.end232_crit_edge, %land.lhs.true172.if.end232_crit_edge, %land.lhs.true166.if.end232_crit_edge, %if.then161.if.end232_crit_edge, %if.end157.if.end232_crit_edge
  %bssht233 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45
  %67 = ptrtoint ptr %bssht233 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bssht233, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool235.not = icmp eq i8 %68, 0
  br i1 %tobool235.not, label %if.end232.if.end332thread-pre-split_crit_edge, label %if.then236

if.end232.if.end332thread-pre-split_crit_edge:    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

if.then236:                                       ; preds = %if.end232
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp239 = icmp ugt i8 %70, 3
  br i1 %cmp239, label %land.lhs.true241, label %if.then236.if.end332_crit_edge

if.then236.if.end332_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332

land.lhs.true241:                                 ; preds = %if.then236
  %data242 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %71 = ptrtoint ptr %data242 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp245 = icmp eq i8 %72, 0
  br i1 %cmp245, label %land.lhs.true247, label %land.lhs.true241.if.end332thread-pre-split_crit_edge

land.lhs.true241.if.end332thread-pre-split_crit_edge: ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

land.lhs.true247:                                 ; preds = %land.lhs.true241
  %arrayidx249 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx249, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %74)
  %cmp251 = icmp eq i8 %74, -32
  br i1 %cmp251, label %land.lhs.true253, label %land.lhs.true247.if.end332thread-pre-split_crit_edge

land.lhs.true247.if.end332thread-pre-split_crit_edge: ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

land.lhs.true253:                                 ; preds = %land.lhs.true247
  %arrayidx255 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %75 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %76)
  %cmp257 = icmp eq i8 %76, 76
  br i1 %cmp257, label %land.lhs.true259, label %land.lhs.true253.if.end332thread-pre-split_crit_edge

land.lhs.true253.if.end332thread-pre-split_crit_edge: ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

land.lhs.true259:                                 ; preds = %land.lhs.true253
  %arrayidx261 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %77 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx261, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp263 = icmp eq i8 %78, 2
  br i1 %cmp263, label %if.end284, label %land.lhs.true259.if.end332thread-pre-split_crit_edge

land.lhs.true259.if.end332thread-pre-split_crit_edge: ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

if.end284:                                        ; preds = %land.lhs.true259
  %conv283 = zext i8 %70 to i32
  %79 = call ptr @memcpy(ptr %ht_realtek_agg_buf, ptr %data242, i32 %conv283)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp286 = icmp ugt i8 %70, 4
  br i1 %cmp286, label %if.then288, label %if.end284.if.end332thread-pre-split_crit_edge

if.end284.if.end332thread-pre-split_crit_edge:    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

if.then288:                                       ; preds = %if.end284
  %realtek_cap_exit = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 47
  %80 = ptrtoint ptr %realtek_cap_exit to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %realtek_cap_exit, align 1
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 7
  %81 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bd_rt2rt_aggregation, align 8
  %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx290.sroa_idx = getelementptr inbounds i8, ptr %ht_realtek_agg_buf, i32 4
  %82 = ptrtoint ptr %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx290.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %82)
  %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4. = load i8, ptr %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.arrayidx290.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.)
  %cmp292 = icmp eq i8 %ht_realtek_agg_buf.4.ht_realtek_agg_buf.4.ht_realtek_agg_buf.4., 1
  br i1 %cmp292, label %land.lhs.true294, label %if.then288.if.then320_crit_edge

if.then288.if.then320_crit_edge:                  ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then320

land.lhs.true294:                                 ; preds = %if.then288
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx295.sroa_idx = getelementptr inbounds i8, ptr %ht_realtek_agg_buf, i32 5
  %83 = ptrtoint ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx295.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %83)
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5. = load i8, ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx295.sroa_idx, align 1
  %84 = and i8 %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5., 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool297.not = icmp eq i8 %84, 0
  br i1 %tobool297.not, label %land.lhs.true294.land.lhs.true305_crit_edge, label %if.then298

land.lhs.true294.land.lhs.true305_crit_edge:      ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true305

if.then298:                                       ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  %bd_rt2rt_long_slot_time = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 8
  %85 = ptrtoint ptr %bd_rt2rt_long_slot_time to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %bd_rt2rt_long_slot_time, align 1
  br label %land.lhs.true305

land.lhs.true305:                                 ; preds = %if.then298, %land.lhs.true294.land.lhs.true305_crit_edge
  %86 = ptrtoint ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx295.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %86)
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.732 = load i8, ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx295.sroa_idx, align 1
  %87 = and i8 %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.732, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool309.not = icmp eq i8 %87, 0
  br i1 %tobool309.not, label %land.lhs.true305.if.then320_crit_edge, label %if.then310

land.lhs.true305.if.then320_crit_edge:            ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then320

if.then310:                                       ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #14
  %rt2rt_ht_mode = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 9
  %88 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rt2rt_ht_mode, align 2
  %90 = or i8 %89, 32
  store i8 %90, ptr %rt2rt_ht_mode, align 2
  br label %if.then320

if.then320:                                       ; preds = %if.then310, %land.lhs.true305.if.then320_crit_edge, %if.then288.if.then320_crit_edge
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx321.sroa_idx = getelementptr inbounds i8, ptr %ht_realtek_agg_buf, i32 5
  %91 = ptrtoint ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx321.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %91)
  %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.733 = load i8, ptr %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.arrayidx321.sroa_idx, align 1
  %92 = and i8 %ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.ht_realtek_agg_buf.5.733, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool324.not = icmp eq i8 %92, 0
  br i1 %tobool324.not, label %if.then320.if.end332thread-pre-split_crit_edge, label %if.then325

if.then320.if.end332thread-pre-split_crit_edge:   ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332thread-pre-split

if.then325:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #14
  %rt2rt_ht_mode327 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45, i32 9
  %93 = ptrtoint ptr %rt2rt_ht_mode327 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rt2rt_ht_mode327, align 2
  %95 = or i8 %94, 16
  store i8 %95, ptr %rt2rt_ht_mode327, align 2
  br label %if.end332thread-pre-split

if.end332thread-pre-split:                        ; preds = %if.then325, %if.then320.if.end332thread-pre-split_crit_edge, %if.end284.if.end332thread-pre-split_crit_edge, %land.lhs.true259.if.end332thread-pre-split_crit_edge, %land.lhs.true253.if.end332thread-pre-split_crit_edge, %land.lhs.true247.if.end332thread-pre-split_crit_edge, %land.lhs.true241.if.end332thread-pre-split_crit_edge, %if.end232.if.end332thread-pre-split_crit_edge
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %96)
  %.pr915 = load i8, ptr %len, align 1
  br label %if.end332

if.end332:                                        ; preds = %if.end332thread-pre-split, %if.then236.if.end332_crit_edge
  %97 = phi i8 [ %.pr915, %if.end332thread-pre-split ], [ %70, %if.then236.if.end332_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %cmp335 = icmp ugt i8 %97, 2
  br i1 %cmp335, label %land.lhs.true337, label %if.end332.if.end496_crit_edge

if.end332.if.end496_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end496

land.lhs.true337:                                 ; preds = %if.end332
  %data338 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %98 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp341 = icmp eq i8 %99, 0
  br i1 %cmp341, label %land.lhs.true343, label %land.lhs.true337.if.end401_crit_edge

land.lhs.true337.if.end401_crit_edge:             ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

land.lhs.true343:                                 ; preds = %land.lhs.true337
  %arrayidx345 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %100 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx345, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %101)
  %cmp347 = icmp eq i8 %101, 5
  br i1 %cmp347, label %land.lhs.true349, label %land.lhs.true343.land.lhs.true359_crit_edge

land.lhs.true343.land.lhs.true359_crit_edge:      ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true359

land.lhs.true349:                                 ; preds = %land.lhs.true343
  %arrayidx351 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %102 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx351, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -75, i8 %103)
  %cmp353 = icmp eq i8 %103, -75
  br i1 %cmp353, label %land.lhs.true349.if.then400_crit_edge, label %land.lhs.true349.land.lhs.true359_crit_edge

land.lhs.true349.land.lhs.true359_crit_edge:      ; preds = %land.lhs.true349
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true359

land.lhs.true349.if.then400_crit_edge:            ; preds = %land.lhs.true349
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then400

land.lhs.true359:                                 ; preds = %land.lhs.true349.land.lhs.true359_crit_edge, %land.lhs.true343.land.lhs.true359_crit_edge
  %104 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %104)
  %.pr938 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr938)
  %cmp363 = icmp eq i8 %.pr938, 0
  br i1 %cmp363, label %land.lhs.true365, label %land.lhs.true359.if.end401_crit_edge

land.lhs.true359.if.end401_crit_edge:             ; preds = %land.lhs.true359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

land.lhs.true365:                                 ; preds = %land.lhs.true359
  %arrayidx367 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %105 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx367, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %106)
  %cmp369 = icmp eq i8 %106, 10
  br i1 %cmp369, label %land.lhs.true371, label %land.lhs.true365.land.lhs.true382_crit_edge

land.lhs.true365.land.lhs.true382_crit_edge:      ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true382

land.lhs.true371:                                 ; preds = %land.lhs.true365
  %arrayidx373 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %107 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx373, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %108)
  %cmp375 = icmp eq i8 %108, -9
  br i1 %cmp375, label %land.lhs.true371.if.then400_crit_edge, label %land.lhs.true371.land.lhs.true382_crit_edge

land.lhs.true371.land.lhs.true382_crit_edge:      ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true382

land.lhs.true371.if.then400_crit_edge:            ; preds = %land.lhs.true371
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then400

land.lhs.true382:                                 ; preds = %land.lhs.true371.land.lhs.true382_crit_edge, %land.lhs.true365.land.lhs.true382_crit_edge
  %109 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %109)
  %.pr940 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr940)
  %cmp386 = icmp eq i8 %.pr940, 0
  br i1 %cmp386, label %land.lhs.true388, label %land.lhs.true382.if.end401_crit_edge

land.lhs.true382.if.end401_crit_edge:             ; preds = %land.lhs.true382
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

land.lhs.true388:                                 ; preds = %land.lhs.true382
  %arrayidx390 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %110 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx390, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %111)
  %cmp392 = icmp eq i8 %111, 16
  br i1 %cmp392, label %land.lhs.true394, label %land.lhs.true388.if.end401_crit_edge

land.lhs.true388.if.end401_crit_edge:             ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

land.lhs.true394:                                 ; preds = %land.lhs.true388
  %arrayidx396 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %112 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx396, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %113)
  %cmp398 = icmp eq i8 %113, 24
  br i1 %cmp398, label %land.lhs.true394.if.then400_crit_edge, label %land.lhs.true394.if.end401_crit_edge

land.lhs.true394.if.end401_crit_edge:             ; preds = %land.lhs.true394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end401

land.lhs.true394.if.then400_crit_edge:            ; preds = %land.lhs.true394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then400

if.then400:                                       ; preds = %land.lhs.true394.if.then400_crit_edge, %land.lhs.true371.if.then400_crit_edge, %land.lhs.true349.if.then400_crit_edge
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 46
  %114 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %broadcom_cap_exist, align 4
  br label %if.end401

if.end401:                                        ; preds = %if.then400, %land.lhs.true394.if.end401_crit_edge, %land.lhs.true388.if.end401_crit_edge, %land.lhs.true382.if.end401_crit_edge, %land.lhs.true359.if.end401_crit_edge, %land.lhs.true337.if.end401_crit_edge
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %115)
  %.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp404 = icmp ugt i8 %.pr, 2
  br i1 %cmp404, label %land.lhs.true406, label %if.end401.cleanup_crit_edge

if.end401.cleanup_crit_edge:                      ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true406:                                 ; preds = %if.end401
  %116 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp410 = icmp eq i8 %117, 0
  br i1 %cmp410, label %land.lhs.true412, label %land.lhs.true406.land.lhs.true501_crit_edge

land.lhs.true406.land.lhs.true501_crit_edge:      ; preds = %land.lhs.true406
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true501

land.lhs.true412:                                 ; preds = %land.lhs.true406
  %arrayidx414 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %118 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx414, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %119)
  %cmp416 = icmp eq i8 %119, 12
  br i1 %cmp416, label %land.lhs.true418, label %land.lhs.true412.if.end425_crit_edge

land.lhs.true412.if.end425_crit_edge:             ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end425

land.lhs.true418:                                 ; preds = %land.lhs.true412
  %arrayidx420 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %120 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx420, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %121)
  %cmp422 = icmp eq i8 %121, 67
  br i1 %cmp422, label %if.then424, label %land.lhs.true418.if.end425_crit_edge

land.lhs.true418.if.end425_crit_edge:             ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end425

if.then424:                                       ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #14
  %ralink_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 49
  %122 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %ralink_cap_exist, align 1
  br label %if.end425

if.end425:                                        ; preds = %if.then424, %land.lhs.true418.if.end425_crit_edge, %land.lhs.true412.if.end425_crit_edge
  %123 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %123)
  %.pr896.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr896.pr)
  %cmp428 = icmp ugt i8 %.pr896.pr, 2
  br i1 %cmp428, label %land.lhs.true430, label %if.end425.cleanup_crit_edge

if.end425.cleanup_crit_edge:                      ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true430:                                 ; preds = %if.end425
  %124 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %124)
  %.pr944 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr944)
  %cmp434 = icmp eq i8 %.pr944, 0
  br i1 %cmp434, label %land.lhs.true436, label %land.lhs.true430.land.lhs.true501_crit_edge

land.lhs.true430.land.lhs.true501_crit_edge:      ; preds = %land.lhs.true430
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true501

land.lhs.true436:                                 ; preds = %land.lhs.true430
  %arrayidx438 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %125 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx438, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp440 = icmp eq i8 %126, 3
  br i1 %cmp440, label %land.lhs.true442, label %land.lhs.true436.land.lhs.true453_crit_edge

land.lhs.true436.land.lhs.true453_crit_edge:      ; preds = %land.lhs.true436
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true453

land.lhs.true442:                                 ; preds = %land.lhs.true436
  %arrayidx444 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %127 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx444, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %128)
  %cmp446 = icmp eq i8 %128, 127
  br i1 %cmp446, label %land.lhs.true442.if.then471_crit_edge, label %land.lhs.true442.land.lhs.true453_crit_edge

land.lhs.true442.land.lhs.true453_crit_edge:      ; preds = %land.lhs.true442
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true453

land.lhs.true442.if.then471_crit_edge:            ; preds = %land.lhs.true442
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then471

land.lhs.true453:                                 ; preds = %land.lhs.true442.land.lhs.true453_crit_edge, %land.lhs.true436.land.lhs.true453_crit_edge
  %129 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %129)
  %.pr946 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr946)
  %cmp457 = icmp eq i8 %.pr946, 0
  br i1 %cmp457, label %land.lhs.true459, label %land.lhs.true453.if.end472_crit_edge

land.lhs.true453.if.end472_crit_edge:             ; preds = %land.lhs.true453
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

land.lhs.true459:                                 ; preds = %land.lhs.true453
  %arrayidx461 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %130 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx461, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %131)
  %cmp463 = icmp eq i8 %131, 19
  br i1 %cmp463, label %land.lhs.true465, label %land.lhs.true459.if.end472_crit_edge

land.lhs.true459.if.end472_crit_edge:             ; preds = %land.lhs.true459
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

land.lhs.true465:                                 ; preds = %land.lhs.true459
  %arrayidx467 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %132 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx467, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %133)
  %cmp469 = icmp eq i8 %133, 116
  br i1 %cmp469, label %land.lhs.true465.if.then471_crit_edge, label %land.lhs.true465.if.end472_crit_edge

land.lhs.true465.if.end472_crit_edge:             ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end472

land.lhs.true465.if.then471_crit_edge:            ; preds = %land.lhs.true465
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then471

if.then471:                                       ; preds = %land.lhs.true465.if.then471_crit_edge, %land.lhs.true442.if.then471_crit_edge
  %atheros_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 50
  %134 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %atheros_cap_exist, align 8
  br label %if.end472

if.end472:                                        ; preds = %if.then471, %land.lhs.true465.if.end472_crit_edge, %land.lhs.true459.if.end472_crit_edge, %land.lhs.true453.if.end472_crit_edge
  %135 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %135)
  %.pr902.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr902.pr)
  %cmp475 = icmp ugt i8 %.pr902.pr, 2
  br i1 %cmp475, label %land.lhs.true477, label %if.end472.cleanup_crit_edge

if.end472.cleanup_crit_edge:                      ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true477:                                 ; preds = %if.end472
  %136 = ptrtoint ptr %data338 to i32
  call void @__asan_load1_noabort(i32 %136)
  %.pr956 = load i8, ptr %data338, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr956)
  %cmp481 = icmp eq i8 %.pr956, 0
  br i1 %cmp481, label %land.lhs.true483, label %land.lhs.true477.land.lhs.true501_crit_edge

land.lhs.true477.land.lhs.true501_crit_edge:      ; preds = %land.lhs.true477
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true501

land.lhs.true483:                                 ; preds = %land.lhs.true477
  %arrayidx485 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %137 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx485, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %138)
  %cmp487 = icmp eq i8 %138, 80
  br i1 %cmp487, label %land.lhs.true489, label %land.lhs.true483.if.end496_crit_edge

land.lhs.true483.if.end496_crit_edge:             ; preds = %land.lhs.true483
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end496

land.lhs.true489:                                 ; preds = %land.lhs.true483
  %arrayidx491 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %139 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx491, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %140)
  %cmp493 = icmp eq i8 %140, 67
  br i1 %cmp493, label %if.then495, label %land.lhs.true489.if.end496_crit_edge

land.lhs.true489.if.end496_crit_edge:             ; preds = %land.lhs.true489
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end496

if.then495:                                       ; preds = %land.lhs.true489
  call void @__sanitizer_cov_trace_pc() #14
  %marvell_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 48
  %141 = ptrtoint ptr %marvell_cap_exist to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %marvell_cap_exist, align 2
  br label %if.end496

if.end496:                                        ; preds = %if.then495, %land.lhs.true489.if.end496_crit_edge, %land.lhs.true483.if.end496_crit_edge, %if.end332.if.end496_crit_edge
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %142)
  %.pr904.pr.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr904.pr.pr)
  %cmp499 = icmp ugt i8 %.pr904.pr.pr, 2
  br i1 %cmp499, label %if.end496.land.lhs.true501_crit_edge, label %if.end496.cleanup_crit_edge

if.end496.cleanup_crit_edge:                      ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end496.land.lhs.true501_crit_edge:             ; preds = %if.end496
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true501

land.lhs.true501:                                 ; preds = %if.end496.land.lhs.true501_crit_edge, %land.lhs.true477.land.lhs.true501_crit_edge, %land.lhs.true430.land.lhs.true501_crit_edge, %land.lhs.true406.land.lhs.true501_crit_edge
  %data502 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 2
  %143 = ptrtoint ptr %data502 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %data502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp505 = icmp eq i8 %144, 0
  br i1 %cmp505, label %land.lhs.true507, label %land.lhs.true501.if.end520_crit_edge

land.lhs.true501.if.end520_crit_edge:             ; preds = %land.lhs.true501
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end520

land.lhs.true507:                                 ; preds = %land.lhs.true501
  %arrayidx509 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %145 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx509, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %146)
  %cmp511 = icmp eq i8 %146, 64
  br i1 %cmp511, label %land.lhs.true513, label %land.lhs.true507.if.end520_crit_edge

land.lhs.true507.if.end520_crit_edge:             ; preds = %land.lhs.true507
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end520

land.lhs.true513:                                 ; preds = %land.lhs.true507
  %arrayidx515 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %147 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx515, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %148)
  %cmp517 = icmp eq i8 %148, -106
  br i1 %cmp517, label %if.then519, label %land.lhs.true513.if.end520_crit_edge

land.lhs.true513.if.end520_crit_edge:             ; preds = %land.lhs.true513
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end520

if.then519:                                       ; preds = %land.lhs.true513
  call void @__sanitizer_cov_trace_pc() #14
  %cisco_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 51
  %149 = ptrtoint ptr %cisco_cap_exist to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %cisco_cap_exist, align 1
  br label %if.end520

if.end520:                                        ; preds = %if.then519, %land.lhs.true513.if.end520_crit_edge, %land.lhs.true507.if.end520_crit_edge, %land.lhs.true501.if.end520_crit_edge
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %150)
  %.pr906 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr906)
  %cmp523 = icmp ugt i8 %.pr906, 2
  br i1 %cmp523, label %land.lhs.true525, label %if.end520.cleanup_crit_edge

if.end520.cleanup_crit_edge:                      ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true525:                                 ; preds = %if.end520
  %151 = ptrtoint ptr %data502 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %data502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp529 = icmp eq i8 %152, 0
  br i1 %cmp529, label %land.lhs.true531, label %land.lhs.true525.if.end544_crit_edge

land.lhs.true525.if.end544_crit_edge:             ; preds = %land.lhs.true525
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end544

land.lhs.true531:                                 ; preds = %land.lhs.true525
  %arrayidx533 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %153 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx533, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %154)
  %cmp535 = icmp eq i8 %154, 10
  br i1 %cmp535, label %land.lhs.true537, label %land.lhs.true531.if.end544thread-pre-split_crit_edge

land.lhs.true531.if.end544thread-pre-split_crit_edge: ; preds = %land.lhs.true531
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end544thread-pre-split

land.lhs.true537:                                 ; preds = %land.lhs.true531
  %arrayidx539 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %155 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx539, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %156)
  %cmp541 = icmp eq i8 %156, -11
  br i1 %cmp541, label %if.then543, label %land.lhs.true537.if.end544thread-pre-split_crit_edge

land.lhs.true537.if.end544thread-pre-split_crit_edge: ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end544thread-pre-split

if.then543:                                       ; preds = %land.lhs.true537
  call void @__sanitizer_cov_trace_pc() #14
  %airgo_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 52
  %157 = ptrtoint ptr %airgo_cap_exist to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %airgo_cap_exist, align 2
  br label %if.end544thread-pre-split

if.end544thread-pre-split:                        ; preds = %if.then543, %land.lhs.true537.if.end544thread-pre-split_crit_edge, %land.lhs.true531.if.end544thread-pre-split_crit_edge
  %158 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %158)
  %.pr908.pr.pr.pr = load i8, ptr %len, align 1
  br label %if.end544

if.end544:                                        ; preds = %if.end544thread-pre-split, %land.lhs.true525.if.end544_crit_edge
  %.pr908.pr.pr = phi i8 [ %.pr908.pr.pr.pr, %if.end544thread-pre-split ], [ %.pr906, %land.lhs.true525.if.end544_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr908.pr.pr)
  %cmp547 = icmp ugt i8 %.pr908.pr.pr, 4
  br i1 %cmp547, label %land.lhs.true549, label %if.end544.cleanup_crit_edge

if.end544.cleanup_crit_edge:                      ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true549:                                 ; preds = %if.end544
  %159 = ptrtoint ptr %data502 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %data502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp553 = icmp eq i8 %160, 0
  br i1 %cmp553, label %land.lhs.true555, label %land.lhs.true549.if.end620_crit_edge

land.lhs.true549.if.end620_crit_edge:             ; preds = %land.lhs.true549
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end620

land.lhs.true555:                                 ; preds = %land.lhs.true549
  %arrayidx557 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %161 = ptrtoint ptr %arrayidx557 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx557, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %162)
  %cmp559 = icmp eq i8 %162, 64
  br i1 %cmp559, label %land.lhs.true561, label %land.lhs.true555.if.end620_crit_edge

land.lhs.true555.if.end620_crit_edge:             ; preds = %land.lhs.true555
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end620

land.lhs.true561:                                 ; preds = %land.lhs.true555
  %arrayidx563 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %163 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx563, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %164)
  %cmp565 = icmp eq i8 %164, -106
  br i1 %cmp565, label %land.lhs.true567, label %land.lhs.true561.if.end620_crit_edge

land.lhs.true561.if.end620_crit_edge:             ; preds = %land.lhs.true561
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end620

land.lhs.true567:                                 ; preds = %land.lhs.true561
  %arrayidx569 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %165 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx569, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %166)
  %cmp571 = icmp eq i8 %166, 1
  br i1 %cmp571, label %if.then573, label %land.lhs.true567.if.end620_crit_edge

land.lhs.true567.if.end620_crit_edge:             ; preds = %land.lhs.true567
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end620

if.then573:                                       ; preds = %land.lhs.true567
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %.pr908.pr.pr)
  %cmp576 = icmp eq i8 %.pr908.pr.pr, 6
  br i1 %cmp576, label %if.then578, label %if.else617

if.then578:                                       ; preds = %if.then573
  %CcxRmState = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 10
  %arrayidx581 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 3
  %167 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %arrayidx581, align 1
  %169 = ptrtoint ptr %CcxRmState to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 %168, ptr %CcxRmState, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %168)
  %cmp585.not = icmp ugt i16 %168, 255
  %spec.select = zext i1 %cmp585.not to i8
  %170 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 9
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %spec.select, ptr %170, align 2
  %arrayidx592 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 10, i32 1
  %172 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx592, align 1
  %174 = and i8 %173, 7
  %MBssidMask = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 12
  %175 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %MBssidMask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %cmp598.not = icmp eq i8 %174, 0
  %bMBssidValid615 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 11
  br i1 %cmp598.not, label %if.else614, label %if.then600

if.then600:                                       ; preds = %if.then578
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %bMBssidValid615 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %bMBssidValid615, align 1
  %shl = shl nsw i8 -1, %174
  %177 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %shl, ptr %MBssidMask, align 2
  %MBssid = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 13
  %178 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %network, align 4
  %180 = ptrtoint ptr %MBssid to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %MBssid, align 4
  %add.ptr.i = getelementptr i8, ptr %network, i32 4
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 13, i32 4
  %183 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %add.ptr1.i, align 2
  %arrayidx610 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 13, i32 5
  %184 = trunc i16 %182 to i8
  %and612888 = and i8 %shl, %184
  %185 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %and612888, ptr %arrayidx610, align 1
  br label %if.end620

if.else614:                                       ; preds = %if.then578
  call void @__sanitizer_cov_trace_pc() #14
  %186 = ptrtoint ptr %bMBssidValid615 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %bMBssidValid615, align 1
  br label %if.end620

if.else617:                                       ; preds = %if.then573
  call void @__sanitizer_cov_trace_pc() #14
  %bCcxRmEnable618 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 9
  %187 = ptrtoint ptr %bCcxRmEnable618 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %bCcxRmEnable618, align 2
  br label %if.end620

if.end620:                                        ; preds = %if.else617, %if.else614, %if.then600, %land.lhs.true567.if.end620_crit_edge, %land.lhs.true561.if.end620_crit_edge, %land.lhs.true555.if.end620_crit_edge, %land.lhs.true549.if.end620_crit_edge
  %188 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %188)
  %.pr910 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr910)
  %cmp623 = icmp ugt i8 %.pr910, 4
  br i1 %cmp623, label %land.lhs.true625, label %if.end620.cleanup_crit_edge

if.end620.cleanup_crit_edge:                      ; preds = %if.end620
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true625:                                 ; preds = %if.end620
  %189 = ptrtoint ptr %data502 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %data502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp629 = icmp eq i8 %190, 0
  br i1 %cmp629, label %land.lhs.true631, label %land.lhs.true625.cleanup_crit_edge

land.lhs.true625.cleanup_crit_edge:               ; preds = %land.lhs.true625
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true631:                                 ; preds = %land.lhs.true625
  %arrayidx633 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %191 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx633, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %192)
  %cmp635 = icmp eq i8 %192, 64
  br i1 %cmp635, label %land.lhs.true637, label %land.lhs.true631.if.end661_crit_edge

land.lhs.true631.if.end661_crit_edge:             ; preds = %land.lhs.true631
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end661

land.lhs.true637:                                 ; preds = %land.lhs.true631
  %arrayidx639 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %193 = ptrtoint ptr %arrayidx639 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx639, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %194)
  %cmp641 = icmp eq i8 %194, -106
  br i1 %cmp641, label %land.lhs.true643, label %land.lhs.true637.if.end661_crit_edge

land.lhs.true637.if.end661_crit_edge:             ; preds = %land.lhs.true637
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end661

land.lhs.true643:                                 ; preds = %land.lhs.true637
  %arrayidx645 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %195 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx645, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %196)
  %cmp647 = icmp eq i8 %196, 3
  br i1 %cmp647, label %if.then649, label %land.lhs.true643.if.end661_crit_edge

land.lhs.true643.if.end661_crit_edge:             ; preds = %land.lhs.true643
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end661

if.then649:                                       ; preds = %land.lhs.true643
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr910)
  %cmp652 = icmp eq i8 %.pr910, 5
  %bWithCcxVerNum = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 14
  br i1 %cmp652, label %if.then654, label %if.else657

if.then654:                                       ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %bWithCcxVerNum to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %bWithCcxVerNum, align 1
  %arrayidx656 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 3
  %198 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx656, align 1
  br label %if.end661.sink.split

if.else657:                                       ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %bWithCcxVerNum to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %bWithCcxVerNum, align 1
  br label %if.end661.sink.split

if.end661.sink.split:                             ; preds = %if.else657, %if.then654
  %.sink = phi i8 [ %199, %if.then654 ], [ 0, %if.else657 ]
  %BssCcxVerNumber = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 15
  %201 = ptrtoint ptr %BssCcxVerNumber to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %.sink, ptr %BssCcxVerNumber, align 2
  br label %if.end661

if.end661:                                        ; preds = %if.end661.sink.split, %land.lhs.true643.if.end661_crit_edge, %land.lhs.true637.if.end661_crit_edge, %land.lhs.true631.if.end661_crit_edge
  %202 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %202)
  %.pr912.pr.pr.pr = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr912.pr.pr.pr)
  %cmp664 = icmp ugt i8 %.pr912.pr.pr.pr, 4
  br i1 %cmp664, label %land.lhs.true666, label %if.end661.cleanup_crit_edge

if.end661.cleanup_crit_edge:                      ; preds = %if.end661
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true666:                                 ; preds = %if.end661
  %203 = ptrtoint ptr %data502 to i32
  call void @__asan_load1_noabort(i32 %203)
  %.pr952 = load i8, ptr %data502, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr952)
  %cmp670 = icmp eq i8 %.pr952, 0
  br i1 %cmp670, label %land.lhs.true672, label %land.lhs.true666.cleanup_crit_edge

land.lhs.true666.cleanup_crit_edge:               ; preds = %land.lhs.true666
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true672:                                 ; preds = %land.lhs.true666
  %arrayidx674 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 1, i32 1
  %204 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx674, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %205)
  %cmp676 = icmp eq i8 %205, 80
  br i1 %cmp676, label %land.lhs.true678, label %land.lhs.true672.cleanup_crit_edge

land.lhs.true672.cleanup_crit_edge:               ; preds = %land.lhs.true672
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true678:                                 ; preds = %land.lhs.true672
  %arrayidx680 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2
  %206 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx680, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %207)
  %cmp682 = icmp eq i8 %207, -14
  br i1 %cmp682, label %land.lhs.true684, label %land.lhs.true678.cleanup_crit_edge

land.lhs.true678.cleanup_crit_edge:               ; preds = %land.lhs.true678
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true684:                                 ; preds = %land.lhs.true678
  %arrayidx686 = getelementptr %struct.rtllib_info_element, ptr %info_element, i32 2, i32 1
  %208 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx686, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %209)
  %cmp688 = icmp eq i8 %209, 4
  br i1 %cmp688, label %do.body691, label %land.lhs.true684.cleanup_crit_edge

land.lhs.true684.cleanup_crit_edge:               ; preds = %land.lhs.true684
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body691:                                       ; preds = %land.lhs.true684
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_mife_generic.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_mife_generic, %if.then697)) #12
          to label %do.end702 [label %if.then697], !srcloc !342

if.then697:                                       ; preds = %do.body691
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %212 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %len, align 1
  %conv699 = zext i8 %213 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_mife_generic.__UNIQUE_ID_ddebug515, ptr noundef %211, ptr noundef nonnull @.str.99, i32 noundef %conv699) #12
  br label %do.end702

do.end702:                                        ; preds = %if.then697, %do.body691
  %214 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %215)
  %cmp707 = icmp ult i8 %215, -2
  %conv704 = zext i8 %215 to i32
  %add705 = add nuw nsw i32 %conv704, 2
  %cond712 = select i1 %cmp707, i32 %add705, i32 256
  %wzc_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 35
  %216 = ptrtoint ptr %wzc_ie_len to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %cond712, ptr %wzc_ie_len, align 4
  %wzc_ie = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 34
  %217 = call ptr @memcpy(ptr %wzc_ie, ptr %info_element, i32 %cond712)
  br label %cleanup

cleanup:                                          ; preds = %do.end702, %land.lhs.true684.cleanup_crit_edge, %land.lhs.true678.cleanup_crit_edge, %land.lhs.true672.cleanup_crit_edge, %land.lhs.true666.cleanup_crit_edge, %if.end661.cleanup_crit_edge, %land.lhs.true625.cleanup_crit_edge, %if.end620.cleanup_crit_edge, %if.end544.cleanup_crit_edge, %if.end520.cleanup_crit_edge, %if.end496.cleanup_crit_edge, %if.end472.cleanup_crit_edge, %if.end425.cleanup_crit_edge, %if.end401.cleanup_crit_edge, %if.then23, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %ht_realtek_agg_buf)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_legal_channel(ptr nocapture noundef readonly %rtllib, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %channel)
  %cmp = icmp ugt i8 %channel, -95
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %rtllib, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rtllib_legal_channel) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %channel to i32
  %arrayidx = getelementptr %struct.rtllib_device, ptr %rtllib, i32 0, i32 98, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3.not = icmp ne i8 %3, 0
  %. = zext i1 %cmp3.not to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_rx_data_filter(ptr nocapture noundef readonly %ieee, i16 noundef zeroext %fc, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %bssid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %fc, 12
  %conv1 = zext i16 %0 to i32
  %1 = and i16 %fc, 240
  %conv4 = zext i16 %1 to i32
  %2 = and i16 %fc, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %2)
  %cmp.not = icmp eq i16 %2, 768
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %3 = ptrtoint ptr %current_network to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %current_network, align 4
  %5 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bssid, align 4
  %xor.i = xor i32 %6, %4
  %add.ptr.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 0, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %10, %8
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %conv.i = zext i16 %8 to i32
  %or.i9 = or i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i9)
  %cmp.i10 = icmp eq i32 %or.i9, 0
  %or.cond27 = select i1 %cmp.i, i1 true, i1 %cmp.i10
  br i1 %or.cond27, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %IntelPromiscuousModeInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 58
  %11 = ptrtoint ptr %IntelPromiscuousModeInfo to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %IntelPromiscuousModeInfo, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %switch.early.test, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end
  %bFilterSourceStationFrame = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 58, i32 1
  %13 = ptrtoint ptr %bFilterSourceStationFrame to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bFilterSourceStationFrame, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %2)
  %15 = icmp eq i16 %2, 256
  %16 = and i1 %15, %tobool17.not
  br i1 %16, label %land.lhs.true27, label %land.lhs.true15.if.end82_crit_edge

land.lhs.true15.if.end82_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true27:                                  ; preds = %land.lhs.true15
  %current_network28 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst, align 4
  %19 = ptrtoint ptr %current_network28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_network28, align 4
  %xor.i11 = xor i32 %20, %18
  %add.ptr.i12 = getelementptr i8, ptr %dst, i32 4
  %21 = ptrtoint ptr %add.ptr.i12 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i12, align 2
  %add.ptr1.i13 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 0, i32 4
  %23 = ptrtoint ptr %add.ptr1.i13 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i13, align 2
  %xor37.i14 = xor i16 %24, %22
  %xor3.i15 = zext i16 %xor37.i14 to i32
  %or.i16 = or i32 %xor.i11, %xor3.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i16)
  %cmp.i17 = icmp eq i32 %or.i16, 0
  br i1 %cmp.i17, label %land.lhs.true27.if.end82_crit_edge, label %land.lhs.true32

land.lhs.true27.if.end82_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %25 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bssid, align 4
  %xor.i18 = xor i32 %26, %20
  %add.ptr.i19 = getelementptr i8, ptr %bssid, i32 4
  %27 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i19, align 2
  %xor37.i21 = xor i16 %28, %24
  %xor3.i22 = zext i16 %xor37.i21 to i32
  %or.i23 = or i32 %xor.i18, %xor3.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i23)
  %cmp.i24 = icmp eq i32 %or.i23, 0
  br i1 %cmp.i24, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.if.end82_crit_edge

land.lhs.true32.if.end82_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.early.test:                                ; preds = %if.end
  %29 = lshr exact i16 %1, 4
  %trunc = trunc i16 %29 to i4
  %30 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.143)
  switch i4 %trunc, label %do.body69 [
    i4 -8, label %switch.early.test.if.end82_crit_edge
    i4 3, label %switch.early.test.if.end82_crit_edge28
    i4 2, label %switch.early.test.if.end82_crit_edge29
    i4 1, label %switch.early.test.if.end82_crit_edge30
    i4 0, label %switch.early.test.if.end82_crit_edge31
    i4 4, label %switch.early.test.cleanup_crit_edge
  ]

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.early.test.if.end82_crit_edge31:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

switch.early.test.if.end82_crit_edge30:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

switch.early.test.if.end82_crit_edge29:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

switch.early.test.if.end82_crit_edge28:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

switch.early.test.if.end82_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

do.body69:                                        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_data_filter.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_data_filter, %if.then74)) #12
          to label %cleanup [label %if.then74], !srcloc !342

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_data_filter.__UNIQUE_ID_ddebug492, ptr noundef %32, ptr noundef nonnull @.str.53, i32 noundef %conv1, i32 noundef %conv4) #12
  br label %cleanup

if.end82:                                         ; preds = %switch.early.test.if.end82_crit_edge, %switch.early.test.if.end82_crit_edge28, %switch.early.test.if.end82_crit_edge29, %switch.early.test.if.end82_crit_edge30, %switch.early.test.if.end82_crit_edge31, %land.lhs.true32.if.end82_crit_edge, %land.lhs.true27.if.end82_crit_edge, %land.lhs.true15.if.end82_crit_edge
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %33 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp83.not = icmp eq i32 %34, 7
  br i1 %cmp83.not, label %if.end82.if.end101_crit_edge, label %if.then85

if.end82.if.end101_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then85:                                        ; preds = %if.end82
  %dev86 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %35 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev86, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 86
  %37 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src, ptr noundef dereferenceable(6) %38, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool88.not = icmp eq i32 %bcmp, 0
  br i1 %tobool88.not, label %if.then85.cleanup_crit_edge, label %if.end90

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90:                                         ; preds = %if.then85
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst, align 4
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  br i1 %tobool.i.not, label %if.end90.if.end101_crit_edge, label %if.then92

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then92:                                        ; preds = %if.end90
  %current_network93 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bssid, ptr noundef dereferenceable(6) %current_network93, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %tobool97.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool97.not, label %if.then92.if.end101_crit_edge, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then92.if.end101_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.end101:                                        ; preds = %if.then92.if.end101_crit_edge, %if.end90.if.end101_crit_edge, %if.end82.if.end101_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then92.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.then74, %do.body69, %switch.early.test.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end101 ], [ -1, %land.lhs.true32.cleanup_crit_edge ], [ -1, %if.then74 ], [ -1, %if.then85.cleanup_crit_edge ], [ -1, %if.then92.cleanup_crit_edge ], [ -1, %switch.early.test.cleanup_crit_edge ], [ -1, %do.body69 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_sta_ps_send_pspoll_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_rx_decrypt(ptr noundef %ieee, ptr noundef %skb, ptr nocapture noundef readonly %rx_stats, ptr noundef %crypt, i32 noundef %hdrlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %seq_ctl = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %seq_ctl, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = and i16 %7, 15
  %conv1 = zext i16 %8 to i32
  %Decrypted = getelementptr inbounds %struct.rtllib_rx_stats, ptr %rx_stats, i32 0, i32 18
  %9 = ptrtoint ptr %Decrypted to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %Decrypted, align 2
  %10 = lshr i8 %bf.load, 2
  %.lobit358 = and i8 %10, 1
  %11 = xor i8 %.lobit358, 1
  %12 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 162
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %12, align 8
  %call = tail call fastcc i32 @rtllib_rx_frame_decrypt(ptr noundef %ieee, ptr noundef %skb, ptr noundef %crypt)
  %host_decrypt = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 67
  %14 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  %16 = and i16 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool6.not
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %or.cond310 = select i1 %or.cond.not, i1 %cmp, i1 false
  br i1 %or.cond310, label %if.then9, label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.rtllib_rx_decrypt) #16
  br label %cleanup234

if.end10:                                         ; preds = %entry
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp13.not = icmp eq i16 %8, 0
  %21 = and i16 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool17.not = icmp eq i16 %21, 0
  %or.cond311 = select i1 %cmp13.not, i1 %tobool17.not, i1 false
  br i1 %or.cond311, label %if.end10.if.end91_crit_edge, label %if.then18

if.end10.if.end91_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then18:                                        ; preds = %if.end10
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %20, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  %seq_ctl.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %seq_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %seq_ctl.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  %conv.i = zext i16 %27 to i32
  %and.i = and i32 %conv.i, 15
  %28 = lshr i32 %conv.i, 4
  %conv4.i = zext i16 %24 to i32
  %and8.i = and i32 %conv4.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and8.i)
  %cmp9.i = icmp eq i32 %and8.i, 136
  %29 = and i32 %conv4.i, 956
  call void @__sanitizer_cov_trace_const_cmp4(i32 904, i32 %29)
  %30 = icmp eq i32 %29, 904
  br i1 %30, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then18
  %qos_ctl.i = getelementptr inbounds %struct.rtllib_hdr_4addrqos, ptr %20, i32 0, i32 7
  %31 = ptrtoint ptr %qos_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %qos_ctl.i, align 1
  %33 = lshr i16 %32, 8
  %34 = and i16 %33, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp15.i = icmp eq i16 %34, 0
  br i1 %cmp15.i, label %if.then.i.if.end73.i_crit_edge, label %cond.false.i

if.then.i.if.end73.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %34)
  %cmp18.i = icmp ult i16 %34, 3
  br i1 %cmp18.i, label %cond.false.i.if.end73.i_crit_edge, label %cond.false21.i

cond.false.i.if.end73.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false21.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %34)
  %cmp23.i = icmp eq i16 %34, 3
  br i1 %cmp23.i, label %cond.false21.i.if.end73.i_crit_edge, label %cond.false26.i

cond.false21.i.if.end73.i_crit_edge:              ; preds = %cond.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false26.i:                                   ; preds = %cond.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %34)
  %cmp28.i = icmp ult i16 %34, 6
  %phi.bo186.i = select i1 %cmp28.i, i8 3, i8 4
  br label %if.end73.i

if.else.i:                                        ; preds = %if.then18
  br i1 %cmp9.i, label %if.then40.i, label %if.else.i.if.end73.i_crit_edge

if.else.i.if.end73.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.then40.i:                                      ; preds = %if.else.i
  %qos_ctl41.i = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %20, i32 0, i32 6
  %35 = ptrtoint ptr %qos_ctl41.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %qos_ctl41.i, align 1
  %37 = lshr i16 %36, 8
  %38 = and i16 %37, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp46.i = icmp eq i16 %38, 0
  br i1 %cmp46.i, label %if.then40.i.if.end73.i_crit_edge, label %cond.false49.i

if.then40.i.if.end73.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false49.i:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp51.i = icmp ult i16 %38, 3
  br i1 %cmp51.i, label %cond.false49.i.if.end73.i_crit_edge, label %cond.false54.i

cond.false49.i.if.end73.i_crit_edge:              ; preds = %cond.false49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false54.i:                                   ; preds = %cond.false49.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp56.i = icmp eq i16 %38, 3
  br i1 %cmp56.i, label %cond.false54.i.if.end73.i_crit_edge, label %cond.false59.i

cond.false54.i.if.end73.i_crit_edge:              ; preds = %cond.false54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

cond.false59.i:                                   ; preds = %cond.false54.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %38)
  %cmp61.i = icmp ult i16 %38, 6
  %phi.bo.i = select i1 %cmp61.i, i8 3, i8 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %cond.false59.i, %cond.false54.i.if.end73.i_crit_edge, %cond.false49.i.if.end73.i_crit_edge, %if.then40.i.if.end73.i_crit_edge, %if.else.i.if.end73.i_crit_edge, %cond.false26.i, %cond.false21.i.if.end73.i_crit_edge, %cond.false.i.if.end73.i_crit_edge, %if.then.i.if.end73.i_crit_edge
  %tid.0.i = phi i8 [ 2, %if.then.i.if.end73.i_crit_edge ], [ 1, %cond.false.i.if.end73.i_crit_edge ], [ %phi.bo186.i, %cond.false26.i ], [ 2, %cond.false21.i.if.end73.i_crit_edge ], [ 2, %if.then40.i.if.end73.i_crit_edge ], [ 1, %cond.false49.i.if.end73.i_crit_edge ], [ %phi.bo.i, %cond.false59.i ], [ 2, %cond.false54.i.if.end73.i_crit_edge ], [ 0, %if.else.i.if.end73.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp74.i = icmp eq i32 %and.i, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.else117.i

if.then76.i:                                      ; preds = %if.end73.i
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mtu.i, align 4
  %add80.i = select i1 %cmp9.i, i32 56, i32 54
  %add86.i = add i32 %42, %add80.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add86.i, i32 noundef 2592) #12
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then76.i.rtllib_frag_cache_get.exit_crit_edge, label %if.end88.i

if.then76.i.rtllib_frag_cache_get.exit_crit_edge: ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_frag_cache_get.exit

if.end88.i:                                       ; preds = %if.then76.i
  %idxprom.i = zext i8 %tid.0.i to i32
  %arrayidx90.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 85, i32 %idxprom.i
  %43 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx90.i, align 4
  %arrayidx91.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44
  %inc95.i = add i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc95.i)
  %cmp99.i = icmp ugt i32 %inc95.i, 3
  %spec.select.i = select i1 %cmp99.i, i32 0, i32 %inc95.i
  %45 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select.i, ptr %arrayidx90.i, align 4
  %skb106.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44, i32 3
  %46 = ptrtoint ptr %skb106.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb106.i, align 4
  %cmp107.not.i = icmp eq ptr %47, null
  br i1 %cmp107.not.i, label %if.end88.i.if.end111.i_crit_edge, label %if.then109.i

if.end88.i.if.end111.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111.i

if.then109.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %47, i32 noundef 1) #12
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then109.i, %if.end88.i.if.end111.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %49 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx91.i, align 4
  %seq112.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44, i32 1
  %50 = ptrtoint ptr %seq112.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %28, ptr %seq112.i, align 4
  %last_frag.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44, i32 2
  %51 = ptrtoint ptr %last_frag.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %last_frag.i, align 4
  %52 = ptrtoint ptr %skb106.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i.i, ptr %skb106.i, align 4
  %src_addr.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44, i32 4
  %addr2.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 3
  %53 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr2.i, align 4
  %55 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %src_addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %src_addr.i, i32 4
  %58 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i.i, align 2
  %dst_addr.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom.i, i32 %44, i32 5
  %addr1.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 2
  %59 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr1.i, align 4
  %61 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dst_addr.i, align 4
  %add.ptr.i187.i = getelementptr %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %add.ptr.i187.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i187.i, align 2
  %add.ptr1.i188.i = getelementptr i8, ptr %dst_addr.i, i32 4
  %64 = ptrtoint ptr %add.ptr1.i188.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %add.ptr1.i188.i, align 2
  br label %rtllib_frag_cache_get.exit

if.else117.i:                                     ; preds = %if.end73.i
  %addr2118.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 3
  %addr1120.i = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %20, i32 0, i32 2
  %call122.i = tail call fastcc ptr @rtllib_frag_cache_find(ptr noundef %ieee, i32 noundef %28, i32 noundef %and.i, i8 noundef zeroext %tid.0.i, ptr noundef %addr2118.i, ptr noundef %addr1120.i) #12
  %cmp123.not.i = icmp eq ptr %call122.i, null
  br i1 %cmp123.not.i, label %if.else117.i.rtllib_frag_cache_get.exit_crit_edge, label %if.then125.i

if.else117.i.rtllib_frag_cache_get.exit_crit_edge: ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_frag_cache_get.exit

if.then125.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #14
  %last_frag126.i = getelementptr inbounds %struct.rtllib_frag_entry, ptr %call122.i, i32 0, i32 2
  %65 = ptrtoint ptr %last_frag126.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i, ptr %last_frag126.i, align 4
  %skb127.i = getelementptr inbounds %struct.rtllib_frag_entry, ptr %call122.i, i32 0, i32 3
  %66 = ptrtoint ptr %skb127.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skb127.i, align 4
  br label %rtllib_frag_cache_get.exit

rtllib_frag_cache_get.exit:                       ; preds = %if.then125.i, %if.else117.i.rtllib_frag_cache_get.exit_crit_edge, %if.end111.i, %if.then76.i.rtllib_frag_cache_get.exit_crit_edge
  %retval.0.i333 = phi ptr [ null, %if.then76.i.rtllib_frag_cache_get.exit_crit_edge ], [ %call.i.i.i, %if.end111.i ], [ %67, %if.then125.i ], [ null, %if.else117.i.rtllib_frag_cache_get.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then25)) #12
          to label %do.end30 [label %if.then25], !srcloc !342

if.then25:                                        ; preds = %rtllib_frag_cache_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %68 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug494, ptr noundef %69, ptr noundef nonnull @.str.57, i32 noundef %conv1) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %rtllib_frag_cache_get.exit
  %tobool31.not = icmp eq ptr %retval.0.i333, null
  br i1 %tobool31.not, label %do.body34, label %if.end60

do.body34:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then46)) #12
          to label %cleanup234 [label %if.then46], !srcloc !342

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %dev47 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %70 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev47, align 4
  %72 = lshr i16 %4, 10
  %.lobit = and i16 %72, 1
  %73 = zext i16 %.lobit to i32
  %74 = lshr i16 %7, 4
  %75 = zext i16 %74 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug495, ptr noundef %71, ptr noundef nonnull @.str.58, i32 noundef %73, i32 noundef %75, i32 noundef %conv1) #12
  br label %cleanup234

if.end60:                                         ; preds = %do.end30
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %sub = select i1 %cmp13.not, i32 0, i32 %hdrlen
  %spec.select = sub i32 %77, %sub
  %tail = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i333, i32 0, i32 16
  %78 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %79, i32 %spec.select
  %end = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i333, i32 0, i32 17
  %80 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end, align 4
  %cmp66 = icmp ugt ptr %add.ptr, %81
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %dev69 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %82 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev69, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %83, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.rtllib_rx_decrypt) #16
  tail call fastcc void @rtllib_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %20)
  br label %cleanup234

if.end71:                                         ; preds = %if.end60
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data, align 4
  %add.ptr80.sink.idx = select i1 %cmp13.not, i32 0, i32 %hdrlen
  %add.ptr80.sink = getelementptr i8, ptr %85, i32 %add.ptr80.sink.idx
  %call.i334 = tail call ptr @skb_put(ptr noundef nonnull %retval.0.i333, i32 noundef %spec.select) #12
  %86 = call ptr @memcpy(ptr %call.i334, ptr %add.ptr80.sink, i32 %spec.select)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br i1 %tobool17.not, label %cleanup.thread346, label %if.end71.cleanup234_crit_edge

if.end71.cleanup234_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup234

cleanup.thread346:                                ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %data88 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i333, i32 0, i32 19
  %87 = ptrtoint ptr %data88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data88, align 4
  tail call fastcc void @rtllib_frag_cache_invalidate(ptr noundef %ieee, ptr noundef %88)
  br label %if.end91

if.end91:                                         ; preds = %cleanup.thread346, %if.end10.if.end91_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %if.end10.if.end91_crit_edge ], [ %retval.0.i333, %cleanup.thread346 ]
  %89 = ptrtoint ptr %host_decrypt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %host_decrypt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool93.not = icmp eq i32 %90, 0
  %or.cond312 = select i1 %tobool93.not, i1 true, i1 %tobool6.not
  br i1 %or.cond312, label %if.end91.if.end103_crit_edge, label %land.lhs.true98

if.end91.if.end103_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

land.lhs.true98:                                  ; preds = %if.end91
  %call99 = tail call fastcc i32 @rtllib_rx_frame_decrypt_msdu(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %call, ptr noundef %crypt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true98.if.end103_crit_edge, label %if.then101

land.lhs.true98.if.end103_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then101:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  %dev102 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %91 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev102, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %92, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.rtllib_rx_decrypt) #16
  br label %cleanup234

if.end103:                                        ; preds = %land.lhs.true98.if.end103_crit_edge, %if.end91.if.end103_crit_edge
  %data104 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %93 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data104, align 4
  %tobool105.not = icmp ne ptr %crypt, null
  %or.cond313 = select i1 %tobool105.not, i1 %tobool6.not, i1 false
  br i1 %or.cond313, label %land.lhs.true110, label %if.end103.cleanup234_crit_edge

if.end103.cleanup234_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup234

land.lhs.true110:                                 ; preds = %if.end103
  %open_wep = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 63
  %95 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %open_wep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool111.not = icmp eq i32 %96, 0
  br i1 %tobool111.not, label %if.then112, label %land.lhs.true110.land.lhs.true168_crit_edge

land.lhs.true110.land.lhs.true168_crit_edge:      ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true168

if.then112:                                       ; preds = %land.lhs.true110
  %call113 = tail call fastcc i32 @rtllib_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body142, label %if.then115

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then131)) #12
          to label %land.lhs.true168 [label %if.then131], !srcloc !342

if.then131:                                       ; preds = %if.then115
  %dev132 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %97 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev132, align 4
  %type = getelementptr i8, ptr %94, i32 33
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %100)
  %cmp.i = icmp ugt i8 %100, 4
  br i1 %cmp.i, label %if.then131.eap_get_type.exit_crit_edge, label %cond.false.i335

if.then131.eap_get_type.exit_crit_edge:           ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %eap_get_type.exit

cond.false.i335:                                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  %conv133 = zext i8 %100 to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv133
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 4
  br label %eap_get_type.exit

eap_get_type.exit:                                ; preds = %cond.false.i335, %if.then131.eap_get_type.exit_crit_edge
  %cond.i = phi ptr [ %102, %cond.false.i335 ], [ @.str.73, %if.then131.eap_get_type.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug496, ptr noundef %98, ptr noundef nonnull @.str.61, ptr noundef %cond.i) #12
  br label %land.lhs.true168

do.body142:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then154)) #12
          to label %cleanup234 [label %if.then154], !srcloc !342

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #14
  %dev155 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %103 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev155, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %94, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug497, ptr noundef %104, ptr noundef nonnull @.str.62, ptr noundef %addr2) #12
  br label %cleanup234

land.lhs.true168:                                 ; preds = %eap_get_type.exit, %if.then115, %land.lhs.true110.land.lhs.true168_crit_edge
  %call169 = tail call fastcc i32 @rtllib_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %land.lhs.true168.land.lhs.true204_crit_edge, label %if.then171

land.lhs.true168.land.lhs.true204_crit_edge:      ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true204

if.then171:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %data104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data104, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then188)) #12
          to label %land.lhs.true204 [label %if.then188], !srcloc !342

if.then188:                                       ; preds = %if.then171
  %dev189 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %107 = ptrtoint ptr %dev189 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev189, align 4
  %type190 = getelementptr i8, ptr %106, i32 33
  %109 = ptrtoint ptr %type190 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %type190, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %110)
  %cmp.i336 = icmp ugt i8 %110, 4
  br i1 %cmp.i336, label %if.then188.eap_get_type.exit340_crit_edge, label %cond.false.i338

if.then188.eap_get_type.exit340_crit_edge:        ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #14
  br label %eap_get_type.exit340

cond.false.i338:                                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #14
  %conv191 = zext i8 %110 to i32
  %arrayidx.i337 = getelementptr [5 x ptr], ptr @eap_types, i32 0, i32 %conv191
  %111 = ptrtoint ptr %arrayidx.i337 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i337, align 4
  br label %eap_get_type.exit340

eap_get_type.exit340:                             ; preds = %cond.false.i338, %if.then188.eap_get_type.exit340_crit_edge
  %cond.i339 = phi ptr [ %112, %cond.false.i338 ], [ @.str.73, %if.then188.eap_get_type.exit340_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug498, ptr noundef %108, ptr noundef nonnull @.str.61, ptr noundef %cond.i339) #12
  br label %land.lhs.true204

land.lhs.true204:                                 ; preds = %eap_get_type.exit340, %if.then171, %land.lhs.true168.land.lhs.true204_crit_edge
  %113 = ptrtoint ptr %open_wep to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %open_wep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool206.not = icmp eq i32 %114, 0
  br i1 %tobool206.not, label %land.lhs.true207, label %land.lhs.true204.cleanup234_crit_edge

land.lhs.true204.cleanup234_crit_edge:            ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup234

land.lhs.true207:                                 ; preds = %land.lhs.true204
  %call208 = tail call fastcc i32 @rtllib_is_eapol_frame(ptr noundef %ieee, ptr noundef %skb.addr.1, i32 noundef %hdrlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %do.body212, label %land.lhs.true207.cleanup234_crit_edge

land.lhs.true207.cleanup234_crit_edge:            ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup234

do.body212:                                       ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_decrypt, %if.then224)) #12
          to label %cleanup234 [label %if.then224], !srcloc !342

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #14
  %dev225 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %115 = ptrtoint ptr %dev225 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev225, align 4
  %addr2226 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %94, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_decrypt.__UNIQUE_ID_ddebug499, ptr noundef %116, ptr noundef nonnull @.str.63, ptr noundef %addr2226) #12
  br label %cleanup234

cleanup234:                                       ; preds = %if.then224, %do.body212, %land.lhs.true207.cleanup234_crit_edge, %land.lhs.true204.cleanup234_crit_edge, %if.then154, %do.body142, %if.end103.cleanup234_crit_edge, %if.then101, %if.end71.cleanup234_crit_edge, %if.then68, %if.then46, %do.body34, %if.then9
  %retval.1 = phi i32 [ -1, %if.then9 ], [ -1, %if.then101 ], [ -1, %if.then154 ], [ -1, %if.then224 ], [ 0, %land.lhs.true207.cleanup234_crit_edge ], [ 0, %land.lhs.true204.cleanup234_crit_edge ], [ -1, %do.body34 ], [ -1, %do.body142 ], [ -1, %do.body212 ], [ -2, %if.end71.cleanup234_crit_edge ], [ -1, %if.then46 ], [ -1, %if.then68 ], [ 0, %if.end103.cleanup234_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @parse_subframe(ptr nocapture noundef %ieee, ptr noundef %skb, ptr nocapture noundef readonly %rx_stats, ptr nocapture noundef %rxb, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %seq_ctl = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %add.ptr, align 2
  %11 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp ne i16 %11, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %spec.select203 = phi i16 [ 26, %land.lhs.true ], [ 24, %entry.if.end_crit_edge ]
  %bIsAggregateFrame.0.off0 = phi i1 [ %tobool.not, %land.lhs.true ], [ false, %entry.if.end_crit_edge ]
  %bContainHTC = getelementptr inbounds %struct.rtllib_rx_stats, ptr %rx_stats, i32 0, i32 28
  %12 = ptrtoint ptr %bContainHTC to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bContainHTC, align 2, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %14 = or i16 %spec.select203, 4
  %LLCOffset.1 = select i1 %tobool15.not, i16 %spec.select203, i16 %14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %conv21 = zext i16 %LLCOffset.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv21)
  %cmp22.not = icmp ugt i32 %16, %conv21
  br i1 %cmp22.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv21) #12
  %bIsAggregateFrame28 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 157
  %frombool = zext i1 %bIsAggregateFrame.0.off0 to i8
  %17 = ptrtoint ptr %bIsAggregateFrame28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %bIsAggregateFrame28, align 8
  br i1 %bIsAggregateFrame.0.off0, label %if.end44, label %if.then30

if.then30:                                        ; preds = %if.end25
  %18 = ptrtoint ptr %rxb to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %rxb, align 1
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2500, i32 noundef 2592) #12
  %tobool32.not = icmp eq ptr %call.i.i, null
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %if.end34

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %22, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %26) #12
  %27 = call ptr @memcpy(ptr %call.i, ptr %24, i32 %26)
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = getelementptr inbounds %struct.anon.51, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 8
  %subframes = getelementptr inbounds %struct.rtllib_rxb, ptr %rxb, i32 0, i32 1
  %32 = ptrtoint ptr %subframes to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store ptr %call.i.i, ptr %subframes, align 1
  %src38 = getelementptr inbounds %struct.rtllib_rxb, ptr %rxb, i32 0, i32 3
  %33 = call ptr @memcpy(ptr %src38, ptr %src, i32 6)
  %dst39 = getelementptr inbounds %struct.rtllib_rxb, ptr %rxb, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %dst39, ptr %dst, i32 6)
  %35 = load ptr, ptr %dev, align 4
  store ptr %35, ptr %30, align 8
  br label %cleanup

if.end44:                                         ; preds = %if.end25
  %36 = ptrtoint ptr %rxb to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %rxb, align 1
  %src46 = getelementptr inbounds %struct.rtllib_rxb, ptr %rxb, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %src46, ptr %src, i32 6)
  %dst48 = getelementptr inbounds %struct.rtllib_rxb, ptr %rxb, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %dst48, ptr %dst, i32 6)
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %40)
  %cmp51213 = icmp ugt i32 %40, 14
  br i1 %cmp51213, label %while.body.lr.ph, label %if.end44.while.end_crit_edge

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end44
  %dev87 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end130.while.body_crit_edge, %while.body.lr.ph
  %41 = phi i32 [ %40, %while.body.lr.ph ], [ %.pr, %if.end130.while.body_crit_edge ]
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %add.ptr54 = getelementptr i8, ptr %43, i32 12
  %44 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr54, align 2
  %add58 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv61 = zext i16 %add58 to i32
  %add62 = add nuw nsw i32 %conv61, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add62)
  %cmp63 = icmp ult i32 %41, %add62
  br i1 %cmp63, label %if.then65, label %if.end76

if.then65:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev87, align 4
  %48 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rxb, align 1
  %conv68 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %47, ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.parse_subframe, i32 noundef %conv68) #16
  %50 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev87, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %51, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.parse_subframe, i32 noundef %conv61) #16
  %52 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev87, align 4
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %53, ptr noundef nonnull @.str.81, i32 noundef %55, i32 noundef %conv61) #16
  %56 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev87, align 4
  %conv75 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %57, ptr noundef nonnull @.str.82, i32 noundef %conv75) #16
  br label %cleanup

if.end76:                                         ; preds = %while.body
  %call77 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #12
  %add79 = add nuw nsw i32 %conv61, 12
  %call.i.i204 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add79, i32 noundef 2592) #12
  %tobool81.not = icmp eq ptr %call.i.i204, null
  br i1 %tobool81.not, label %if.end76.cleanup_crit_edge, label %if.end83

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %data.i205 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i204, i32 0, i32 19
  %58 = ptrtoint ptr %data.i205 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i205, align 4
  %add.ptr.i206 = getelementptr i8, ptr %59, i32 12
  store ptr %add.ptr.i206, ptr %data.i205, align 4
  %tail.i207 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i204, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i207 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i207, align 8
  %add.ptr1.i208 = getelementptr i8, ptr %61, i32 12
  store ptr %add.ptr1.i208, ptr %tail.i207, align 8
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %call.i209 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i204, i32 noundef %conv61) #12
  %64 = call ptr @memcpy(ptr %call.i209, ptr %63, i32 %conv61)
  %65 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev87, align 4
  %67 = getelementptr inbounds %struct.anon.51, ptr %call.i.i204, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %67, align 8
  %69 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rxb, align 1
  %inc = add i8 %70, 1
  store i8 %inc, ptr %rxb, align 1
  %idxprom = zext i8 %70 to i32
  %arrayidx90 = getelementptr %struct.rtllib_rxb, ptr %rxb, i32 0, i32 1, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store ptr %call.i.i204, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc)
  %cmp93 = icmp ugt i8 %inc, 63
  br i1 %cmp93, label %do.body96, label %if.end107

do.body96:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_subframe.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_subframe, %if.then102)) #12
          to label %while.end [label %if.then102], !srcloc !342

if.then102:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @parse_subframe.__UNIQUE_ID_ddebug491, ptr noundef %73, ptr noundef nonnull @.str.83) #12
  br label %while.end

if.end107:                                        ; preds = %if.end83
  %call109 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv61) #12
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp111.not = icmp eq i32 %75, 0
  br i1 %cmp111.not, label %if.end107.while.end_crit_edge, label %if.then113

if.end107.while.end_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then113:                                       ; preds = %if.end107
  %76 = trunc i32 %add62 to i8
  %77 = and i8 %76, 3
  %conv116 = sub nuw nsw i8 4, %77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp118 = icmp eq i8 %77, 0
  %spec.store.select = select i1 %cmp118, i8 0, i8 %conv116
  %conv123 = zext i8 %spec.store.select to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %conv123)
  %cmp124 = icmp ult i32 %75, %conv123
  br i1 %cmp124, label %if.then113.cleanup_crit_edge, label %if.end130

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end130:                                        ; preds = %if.then113
  %call129 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv123) #12
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr = load i32, ptr %len, align 4
  %cmp51 = icmp ugt i32 %.pr, 14
  br i1 %cmp51, label %if.end130.while.body_crit_edge, label %if.end130.while.end_crit_edge

if.end130.while.end_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end130.while.body_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end130.while.end_crit_edge, %if.end107.while.end_crit_edge, %if.then102, %do.body96, %if.end44.while.end_crit_edge
  %79 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rxb, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then113.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then65, %if.end34, %if.then30.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.then65 ], [ %80, %while.end ], [ 1, %if.end34 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ], [ 0, %if.then113.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_rx_check_leave_lps(ptr nocapture noundef %ieee, i8 noundef zeroext %unicast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unicast)
  %tobool.not = icmp eq i8 %unicast, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then1, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then1:                                         ; preds = %if.then
  %NumRxUnicastOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156, i32 8
  %2 = ptrtoint ptr %NumRxUnicastOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %NumRxUnicastOkInPeriod, align 4
  %NumTxOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156, i32 6
  %4 = ptrtoint ptr %NumTxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %NumTxOkInPeriod, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp3 = icmp ugt i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp ugt i32 %3, 2
  %or.cond = or i1 %cmp6, %cmp3
  br i1 %or.cond, label %if.then7, label %if.then1.if.end13_crit_edge

if.then1.if.end13_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %if.then1
  %LeisurePSLeave = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 207
  %6 = ptrtoint ptr %LeisurePSLeave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %LeisurePSLeave, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then7.if.end13_crit_edge, label %if.then9

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void %7(ptr noundef %9) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then7.if.end13_crit_edge, %if.then1.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_rx_ps_time = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 134
  %11 = ptrtoint ptr %last_rx_ps_time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_rx_ps_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_rx_indicate_pkt_legacy(ptr nocapture noundef %ieee, ptr noundef %rxb, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %cmp = icmp eq ptr %rxb, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp211.not = icmp eq i8 %3, 0
  br i1 %cmp211.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr.i5 = getelementptr i8, ptr %src, i32 4
  %add.ptr.i7 = getelementptr i8, ptr %dst, i32 4
  %stats = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49
  %rx_bytes = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 2
  %multicast = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 49, i32 8
  %stats47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.rtllib_rx_indicate_pkt_legacy) #16
  br label %cleanup

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc56, %if.end55.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_rxb, ptr %rxb, i32 0, i32 1, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %arrayidx, align 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end55_crit_edge, label %if.then4

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then4:                                         ; preds = %for.body
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
  br i1 %cmp11, label %land.lhs.true, label %if.then4.if.else_crit_edge

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @rfc1042_header, i32 6) #15
  %bcmp.fr = freeze i32 %bcmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.fr)
  %cmp14.not = icmp eq i32 %bcmp.fr, 0
  br i1 %cmp14.not, label %switch.early.test, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %14 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.144)
  switch i16 %or, label %switch.early.test.if.then28_crit_edge [
    i16 -32457, label %switch.early.test.lor.lhs.false_crit_edge
    i16 -32525, label %switch.early.test.lor.lhs.false_crit_edge15
  ]

switch.early.test.lor.lhs.false_crit_edge15:      ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test.lor.lhs.false_crit_edge:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

switch.early.test.if.then28_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false:                                    ; preds = %switch.early.test.lor.lhs.false_crit_edge, %switch.early.test.lor.lhs.false_crit_edge15, %land.lhs.true.lor.lhs.false_crit_edge
  %bcmp1 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @bridge_tunnel_header, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %cmp26 = icmp eq i32 %bcmp1, 0
  br i1 %cmp26, label %lor.lhs.false.if.then28_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %switch.early.test.if.then28_crit_edge
  %call29 = tail call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef 6) #12
  br label %if.end38

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.then4.if.else_crit_edge
  %conv34 = trunc i32 %13 to i16
  %call35 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 2) #12
  %15 = ptrtoint ptr %call35 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv34, ptr %call35, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then28
  %call36 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 6) #12
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src, align 4
  %18 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call36, align 4
  %19 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i5, align 2
  %add.ptr1.i6 = getelementptr i8, ptr %call36, i32 4
  %21 = ptrtoint ptr %add.ptr1.i6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i6, align 2
  %call37 = tail call ptr @skb_push(ptr noundef nonnull %5, i32 noundef 6) #12
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst, align 4
  %24 = ptrtoint ptr %call37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call37, align 4
  %25 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i7, align 2
  %add.ptr1.i8 = getelementptr i8, ptr %call37, i32 4
  %27 = ptrtoint ptr %add.ptr1.i8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr1.i8, align 2
  %28 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %stats, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %33, %31
  store i32 %add, ptr %rx_bytes, align 4
  %34 = load i32, ptr %dst, align 4
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not = icmp eq i32 %35, 0
  br i1 %tobool.i.not, label %if.end38.if.end45_crit_edge, label %if.then42

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %multicast, align 4
  %inc44 = add i32 %37, 1
  store i32 %inc44, ptr %multicast, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end38.if.end45_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3
  %38 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call46 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %5, ptr noundef %1) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %call46, ptr %protocol, align 8
  %40 = getelementptr inbounds %struct.anon.51, ptr %5, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %1, ptr %40, align 8
  %42 = ptrtoint ptr %stats47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats47, align 8
  %inc49 = add i32 %43, 1
  store i32 %inc49, ptr %stats47, align 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %46 = load ptr, ptr %40, align 8
  %rx_bytes52 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 2
  %47 = ptrtoint ptr %rx_bytes52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_bytes52, align 8
  %add53 = add i32 %48, %45
  store i32 %add53, ptr %rx_bytes52, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call54 = tail call i32 @netif_rx(ptr noundef nonnull %5) #12
  br label %if.end55

if.end55:                                         ; preds = %if.end45, %for.body.if.end55_crit_edge
  %inc56 = add nuw nsw i32 %i.012, 1
  %50 = ptrtoint ptr %rxb to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rxb, align 1
  %conv = zext i8 %51 to i32
  %cmp2 = icmp ult i32 %inc56, %conv
  br i1 %cmp2, label %if.end55.for.body_crit_edge, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end55.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %rxb) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @RxReorderIndicatePacket(ptr noundef %ieee, ptr noundef %prxb, ptr noundef %pTS, i16 noundef zeroext %SeqNum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %RxReorderWinSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %RxReorderWinSize to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %RxReorderWinSize, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then)) #12
          to label %do.body10 [label %if.then], !srcloc !342

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv = zext i16 %SeqNum to i32
  %rx_indicate_seq = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 1
  %6 = ptrtoint ptr %rx_indicate_seq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_indicate_seq, align 4
  %conv5 = zext i16 %7 to i32
  %conv6 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug482, ptr noundef %5, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6) #12
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %reorder_spinlock = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 28
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reorder_spinlock) #12
  %rx_indicate_seq19 = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 1
  %8 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_indicate_seq19, align 4
  %conv20 = zext i16 %9 to i32
  %conv21 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp25 = icmp eq i16 %9, -1
  br i1 %cmp25, label %if.then27, label %do.body10.if.end29_crit_edge

do.body10.if.end29_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %SeqNum, ptr %rx_indicate_seq19, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body10.if.end29_crit_edge
  %conv30 = zext i16 %SeqNum to i32
  %11 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_indicate_seq19, align 4
  %conv32 = zext i16 %12 to i32
  %sub33 = sub nsw i32 %conv30, %conv32
  %and = and i32 %sub33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp34.not = icmp eq i32 %and, 0
  br i1 %cmp34.not, label %if.end65, label %do.body38

do.body38:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then50)) #12
          to label %do.end59 [label %if.then50], !srcloc !342

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %dev51 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %13 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev51, align 4
  %15 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_indicate_seq19, align 4
  %conv53 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug483, ptr noundef %14, ptr noundef nonnull @.str.87, i32 noundef %conv53, i32 noundef %conv30) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then50, %do.body38
  %RxReorderDropCounter = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 48
  %17 = ptrtoint ptr %RxReorderDropCounter to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %RxReorderDropCounter, align 1
  %inc = add i16 %18, 1
  store i16 %inc, ptr %RxReorderDropCounter, align 1
  %19 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp61574.not = icmp eq i8 %20, 0
  br i1 %cmp61574.not, label %do.end59.for.end_crit_edge, label %do.end59.for.body_crit_edge

do.end59.for.body_crit_edge:                      ; preds = %do.end59
  br label %for.body

do.end59.for.end_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end59.for.body_crit_edge
  %i.0575 = phi i32 [ %inc63, %for.body.for.body_crit_edge ], [ 0, %do.end59.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_rxb, ptr %prxb, i32 0, i32 1, i32 %i.0575
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load ptr, ptr %arrayidx, align 1
  tail call void @consume_skb(ptr noundef %22) #12
  %inc63 = add nuw nsw i32 %i.0575, 1
  %23 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prxb, align 1
  %conv60 = zext i8 %24 to i32
  %cmp61 = icmp ult i32 %inc63, %conv60
  br i1 %cmp61, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end59.for.end_crit_edge
  tail call void @kfree(ptr noundef %prxb) #12
  br label %cleanup

if.end65:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %SeqNum)
  %cmp69 = icmp eq i16 %12, %SeqNum
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end65
  %add74 = add i16 %SeqNum, 1
  %rem75 = and i16 %add74, 4095
  %25 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %rem75, ptr %rx_indicate_seq19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then147)) #12
          to label %do.end156 [label %if.then147], !srcloc !342

if.else:                                          ; preds = %if.end65
  %add = sub nsw i32 4095, %conv30
  %sub = add nsw i32 %add, %conv21
  %sub80 = add nsw i32 %sub, %conv20
  %and81 = and i32 %sub80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82.not = icmp eq i32 %and81, 0
  br i1 %cmp82.not, label %if.else.if.else158_crit_edge, label %if.then84

if.else.if.else158_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

if.then84:                                        ; preds = %if.else
  %sub87 = add nsw i32 %conv21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 %conv30)
  %cmp88.not = icmp sgt i32 %sub87, %conv30
  br i1 %cmp88.not, label %if.else97, label %if.then90

if.then90:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %add92 = add nuw nsw i32 %conv30, 1
  %sub94 = sub nsw i32 %add92, %conv21
  %conv95 = trunc i32 %sub94 to i16
  br label %do.body108

if.else97:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %add100.neg = xor i32 %conv30, -1
  %sub101 = add nsw i32 %conv21, %add100.neg
  %26 = trunc i32 %sub101 to i16
  %conv104 = sub i16 4096, %26
  br label %do.body108

do.body108:                                       ; preds = %if.else97, %if.then90
  %storemerge = phi i16 [ %conv104, %if.else97 ], [ %conv95, %if.then90 ]
  %27 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %storemerge, ptr %rx_indicate_seq19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then120)) #12
          to label %if.else158 [label %if.then120], !srcloc !342

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #14
  %dev121 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %28 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev121, align 4
  %30 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_indicate_seq19, align 4
  %conv123 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug484, ptr noundef %29, ptr noundef nonnull @.str.88, i32 noundef %conv123, i32 noundef %conv30) #12
  br label %if.else158

if.then147:                                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %dev148 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %32 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev148, align 4
  %34 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_indicate_seq19, align 4
  %conv150 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug485, ptr noundef %33, ptr noundef nonnull @.str.89, i32 noundef %conv150, i32 noundef %conv30) #12
  br label %do.end156

do.end156:                                        ; preds = %if.then147, %if.then71
  %36 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 173
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %prxb, ptr %36, align 4
  br label %if.end245

if.else158:                                       ; preds = %if.then120, %do.body108, %if.else.if.else158_crit_edge
  %RxReorder_Unused_List = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48
  %38 = ptrtoint ptr %RxReorder_Unused_List to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %RxReorder_Unused_List, align 4
  %cmp.i.not = icmp eq ptr %39, %RxReorder_Unused_List
  br i1 %cmp.i.not, label %if.else230, label %if.then161

if.then161:                                       ; preds = %if.else158
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then161.list_del_init.exit_crit_edge

if.then161.list_del_init.exit_crit_edge:          ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then161.list_del_init.exit_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %39, ptr %39, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %39, ptr %prev.i3.i, align 4
  %SeqNum164 = getelementptr inbounds %struct.rx_reorder_entry, ptr %39, i32 0, i32 1
  %48 = ptrtoint ptr %SeqNum164 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %SeqNum, ptr %SeqNum164, align 4
  %prxb165 = getelementptr inbounds %struct.rx_reorder_entry, ptr %39, i32 0, i32 2
  %49 = ptrtoint ptr %prxb165 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %prxb, ptr %prxb165, align 4
  %rx_pending_pkt_list.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %list_del_init.exit
  %pList.0.i = phi ptr [ %rx_pending_pkt_list.i, %list_del_init.exit ], [ %51, %while.body.i.while.cond.i_crit_edge ]
  %50 = ptrtoint ptr %pList.0.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pList.0.i, align 4
  %cmp.not.i = icmp eq ptr %51, %rx_pending_pkt_list.i
  br i1 %cmp.not.i, label %while.cond.i.do.body207_crit_edge, label %while.body.i

while.cond.i.do.body207_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body207

while.body.i:                                     ; preds = %while.cond.i
  %SeqNum3.i = getelementptr inbounds %struct.rx_reorder_entry, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %SeqNum3.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %SeqNum3.i, align 4
  %conv4.i = zext i16 %53 to i32
  %sub.i = sub nsw i32 %conv30, %conv4.i
  %and.i = and i32 %sub.i, 2048
  %cmp5.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp5.not.i, label %if.else.i534, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.else.i534:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %SeqNum)
  %cmp16.i = icmp eq i16 %53, %SeqNum
  br i1 %cmp16.i, label %if.then167, label %if.else.i534.do.body207_crit_edge

if.else.i534.do.body207_crit_edge:                ; preds = %if.else.i534
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body207

if.then167:                                       ; preds = %if.else.i534
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then182)) #12
          to label %do.end191 [label %if.then182], !srcloc !342

if.then182:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  %dev183 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %54 = ptrtoint ptr %dev183 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev183, align 4
  %56 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %rx_indicate_seq19, align 4
  %conv185 = zext i16 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug486, ptr noundef %55, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.85, i32 noundef %conv185, i32 noundef %conv30) #12
  br label %do.end191

do.end191:                                        ; preds = %if.then182, %if.then167
  %prev.i536 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48, i32 1
  %58 = ptrtoint ptr %prev.i536 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i536, align 4
  %call.i.i537 = tail call zeroext i1 @__list_add_valid(ptr noundef %39, ptr noundef %59, ptr noundef %RxReorder_Unused_List) #12
  br i1 %call.i.i537, label %if.end.i.i538, label %do.end191.list_add_tail.exit_crit_edge

do.end191.list_add_tail.exit_crit_edge:           ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i538:                                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %prev.i536 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %39, ptr %prev.i536, align 4
  %61 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %RxReorder_Unused_List, ptr %39, align 4
  %62 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev.i3.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %39, ptr %59, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i538, %do.end191.list_add_tail.exit_crit_edge
  %64 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp197577.not = icmp eq i8 %65, 0
  br i1 %cmp197577.not, label %list_add_tail.exit.for.end204_crit_edge, label %list_add_tail.exit.for.body199_crit_edge

list_add_tail.exit.for.body199_crit_edge:         ; preds = %list_add_tail.exit
  br label %for.body199

list_add_tail.exit.for.end204_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end204

for.body199:                                      ; preds = %for.body199.for.body199_crit_edge, %list_add_tail.exit.for.body199_crit_edge
  %i168.0578 = phi i32 [ %inc203, %for.body199.for.body199_crit_edge ], [ 0, %list_add_tail.exit.for.body199_crit_edge ]
  %arrayidx201 = getelementptr %struct.rtllib_rxb, ptr %prxb, i32 0, i32 1, i32 %i168.0578
  %66 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load ptr, ptr %arrayidx201, align 1
  tail call void @consume_skb(ptr noundef %67) #12
  %inc203 = add nuw nsw i32 %i168.0578, 1
  %68 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %prxb, align 1
  %conv196 = zext i8 %69 to i32
  %cmp197 = icmp ult i32 %inc203, %conv196
  br i1 %cmp197, label %for.body199.for.body199_crit_edge, label %for.body199.for.end204_crit_edge

for.body199.for.end204_crit_edge:                 ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end204

for.body199.for.body199_crit_edge:                ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body199

for.end204:                                       ; preds = %for.body199.for.end204_crit_edge, %list_add_tail.exit.for.end204_crit_edge
  tail call void @kfree(ptr noundef %prxb) #12
  br label %if.end245

do.body207:                                       ; preds = %if.else.i534.do.body207_crit_edge, %while.cond.i.do.body207_crit_edge
  %70 = phi ptr [ %51, %if.else.i534.do.body207_crit_edge ], [ %rx_pending_pkt_list.i, %while.cond.i.do.body207_crit_edge ]
  %71 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %39, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %39, ptr %prev.i, align 4
  %73 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %pList.0.i, ptr %prev.i3.i, align 4
  %74 = ptrtoint ptr %pList.0.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %39, ptr %pList.0.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then219)) #12
          to label %if.end245 [label %if.then219], !srcloc !342

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #14
  %dev220 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %75 = ptrtoint ptr %dev220 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev220, align 4
  %77 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rx_indicate_seq19, align 4
  %conv222 = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug487, ptr noundef %76, ptr noundef nonnull @.str.91, i32 noundef %conv222, i32 noundef %conv30) #12
  br label %if.end245

if.else230:                                       ; preds = %if.else158
  %dev231 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %79 = ptrtoint ptr %dev231 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev231, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.85) #16
  %81 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %prxb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp236580.not = icmp eq i8 %82, 0
  br i1 %cmp236580.not, label %if.else230.for.end243_crit_edge, label %if.else230.for.body238_crit_edge

if.else230.for.body238_crit_edge:                 ; preds = %if.else230
  br label %for.body238

if.else230.for.end243_crit_edge:                  ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end243

for.body238:                                      ; preds = %for.body238.for.body238_crit_edge, %if.else230.for.body238_crit_edge
  %i232.0581 = phi i32 [ %inc242, %for.body238.for.body238_crit_edge ], [ 0, %if.else230.for.body238_crit_edge ]
  %arrayidx240 = getelementptr %struct.rtllib_rxb, ptr %prxb, i32 0, i32 1, i32 %i232.0581
  %83 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load ptr, ptr %arrayidx240, align 1
  tail call void @consume_skb(ptr noundef %84) #12
  %inc242 = add nuw nsw i32 %i232.0581, 1
  %85 = ptrtoint ptr %prxb to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %prxb, align 1
  %conv235 = zext i8 %86 to i32
  %cmp236 = icmp ult i32 %inc242, %conv235
  br i1 %cmp236, label %for.body238.for.body238_crit_edge, label %for.body238.for.end243_crit_edge

for.body238.for.end243_crit_edge:                 ; preds = %for.body238
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end243

for.body238.for.body238_crit_edge:                ; preds = %for.body238
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body238

for.end243:                                       ; preds = %for.body238.for.end243_crit_edge, %if.else230.for.end243_crit_edge
  tail call void @kfree(ptr noundef %prxb) #12
  br label %if.end245

if.end245:                                        ; preds = %for.end243, %if.then219, %do.body207, %for.end204, %do.end156
  %index.0 = phi i8 [ 1, %do.end156 ], [ 0, %for.end243 ], [ 0, %if.then219 ], [ 0, %for.end204 ], [ 0, %do.body207 ]
  %rx_pending_pkt_list = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3
  %87 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i539.not582 = icmp eq ptr %88, %rx_pending_pkt_list
  br i1 %cmp.i539.not582, label %if.end245.while.end.thread562_crit_edge, label %do.body251.lr.ph

if.end245.while.end.thread562_crit_edge:          ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.thread562

do.body251.lr.ph:                                 ; preds = %if.end245
  %dev264 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %prev = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 3, i32 1
  %89 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 173
  %RxReorder_Unused_List336 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48
  %prev.i547 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 48, i32 1
  %90 = zext i8 %index.0 to i32
  br label %do.body251

do.body251:                                       ; preds = %list_add_tail.exit551.do.body251_crit_edge, %do.body251.lr.ph
  %indvars.iv = phi i32 [ %90, %do.body251.lr.ph ], [ %indvars.iv.next, %list_add_tail.exit551.do.body251_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then263)) #12
          to label %do.end269 [label %if.then263], !srcloc !342

if.then263:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %dev264 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev264, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug488, ptr noundef %92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85) #12
  br label %do.end269

do.end269:                                        ; preds = %if.then263, %do.body251
  %93 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev, align 4
  %SeqNum274 = getelementptr inbounds %struct.rx_reorder_entry, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %SeqNum274 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %SeqNum274, align 4
  %conv275 = zext i16 %96 to i32
  %97 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %rx_indicate_seq19, align 4
  %conv277 = zext i16 %98 to i32
  %sub278 = sub nsw i32 %conv275, %conv277
  %and279 = and i32 %sub278, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %cmp280.not = icmp ne i32 %and279, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp286 = icmp eq i16 %96, %98
  %or.cond = select i1 %cmp280.not, i1 true, i1 %cmp286
  br i1 %or.cond, label %if.then288, label %while.end

if.then288:                                       ; preds = %do.end269
  %99 = and i32 %indvars.iv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp290.not = icmp eq i32 %99, 0
  br i1 %cmp290.not, label %if.end294, label %while.end.thread

while.end.thread:                                 ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #14
  %100 = trunc i32 %indvars.iv to i8
  %101 = ptrtoint ptr %dev264 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev264, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %102, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.85) #16
  br label %if.then342

if.end294:                                        ; preds = %if.then288
  %call.i.i541 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %94) #12
  br i1 %call.i.i541, label %if.end.i.i544, label %if.end294.list_del_init.exit546_crit_edge

if.end294.list_del_init.exit546_crit_edge:        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit546

if.end.i.i544:                                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i542 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i.i542 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i542, align 4
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %94, align 4
  %prev1.i.i.i543 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i543 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i543, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del_init.exit546

list_del_init.exit546:                            ; preds = %if.end.i.i544, %if.end294.list_del_init.exit546_crit_edge
  %109 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %94, ptr %94, align 4
  %prev.i3.i545 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i3.i545 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %94, ptr %prev.i3.i545, align 4
  %111 = ptrtoint ptr %SeqNum274 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %SeqNum274, align 4
  %113 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %rx_indicate_seq19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %114)
  %cmp300 = icmp eq i16 %112, %114
  br i1 %cmp300, label %if.then302, label %list_del_init.exit546.if.end309_crit_edge

list_del_init.exit546.if.end309_crit_edge:        ; preds = %list_del_init.exit546
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

if.then302:                                       ; preds = %list_del_init.exit546
  call void @__sanitizer_cov_trace_pc() #14
  %115 = add i16 %112, 1
  %116 = and i16 %115, 4095
  %117 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %rx_indicate_seq19, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then302, %list_del_init.exit546.if.end309_crit_edge
  %prxb310 = getelementptr inbounds %struct.rx_reorder_entry, ptr %94, i32 0, i32 2
  %118 = ptrtoint ptr %prxb310 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prxb310, align 4
  %arrayidx311 = getelementptr [128 x ptr], ptr %89, i32 0, i32 %indvars.iv
  %120 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %arrayidx311, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then325)) #12
          to label %do.end333 [label %if.then325], !srcloc !342

if.then325:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %dev264 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev264, align 4
  %123 = ptrtoint ptr %SeqNum274 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %SeqNum274, align 4
  %conv328 = zext i16 %124 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug489, ptr noundef %122, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.85, i32 noundef %conv328) #12
  br label %do.end333

do.end333:                                        ; preds = %if.then325, %if.end309
  %indvars.iv.next = add i32 %indvars.iv, 1
  %125 = ptrtoint ptr %prev.i547 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i547, align 4
  %call.i.i548 = tail call zeroext i1 @__list_add_valid(ptr noundef %94, ptr noundef %126, ptr noundef %RxReorder_Unused_List336) #12
  br i1 %call.i.i548, label %if.end.i.i550, label %do.end333.list_add_tail.exit551_crit_edge

do.end333.list_add_tail.exit551_crit_edge:        ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit551

if.end.i.i550:                                    ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %prev.i547 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %94, ptr %prev.i547, align 4
  %128 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %RxReorder_Unused_List336, ptr %94, align 4
  %129 = ptrtoint ptr %prev.i3.i545 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev.i3.i545, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %94, ptr %126, align 4
  br label %list_add_tail.exit551

list_add_tail.exit551:                            ; preds = %if.end.i.i550, %do.end333.list_add_tail.exit551_crit_edge
  %131 = ptrtoint ptr %rx_pending_pkt_list to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %rx_pending_pkt_list, align 4
  %cmp.i539.not = icmp eq ptr %132, %rx_pending_pkt_list
  br i1 %cmp.i539.not, label %while.end.thread562.loopexit, label %list_add_tail.exit551.do.body251_crit_edge

list_add_tail.exit551.do.body251_crit_edge:       ; preds = %list_add_tail.exit551
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body251

while.end:                                        ; preds = %do.end269
  %133 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp340.not = icmp eq i8 %133, 0
  br i1 %cmp340.not, label %land.lhs.true.critedge, label %while.end.if.then342_crit_edge

while.end.if.then342_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then342

while.end.thread562.loopexit:                     ; preds = %list_add_tail.exit551
  call void @__sanitizer_cov_trace_pc() #14
  %134 = trunc i32 %indvars.iv.next to i8
  br label %while.end.thread562

while.end.thread562:                              ; preds = %while.end.thread562.loopexit, %if.end245.while.end.thread562_crit_edge
  %index.1.lcssa = phi i8 [ %index.0, %if.end245.while.end.thread562_crit_edge ], [ %134, %while.end.thread562.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index.1.lcssa)
  %cmp340.not563 = icmp eq i8 %index.1.lcssa, 0
  br i1 %cmp340.not563, label %while.end.thread562.cleanup_crit_edge, label %while.end.thread562.if.then342_crit_edge

while.end.thread562.if.then342_crit_edge:         ; preds = %while.end.thread562
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then342

while.end.thread562.cleanup_crit_edge:            ; preds = %while.end.thread562
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then342:                                       ; preds = %while.end.thread562.if.then342_crit_edge, %while.end.if.then342_crit_edge, %while.end.thread
  %index.1568 = phi i8 [ %index.1.lcssa, %while.end.thread562.if.then342_crit_edge ], [ %100, %while.end.thread ], [ %133, %while.end.if.then342_crit_edge ]
  %pprev.i.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4, i32 0, i32 1
  %135 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %136, null
  br i1 %tobool.not.i.i.not, label %if.then342.if.end348_crit_edge, label %if.then345

if.then342.if.end348_crit_edge:                   ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end348

if.then345:                                       ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #14
  %rx_pkt_pending_timer = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4
  %call347 = tail call i32 @del_timer_sync(ptr noundef %rx_pkt_pending_timer) #12
  br label %if.end348

if.end348:                                        ; preds = %if.then345, %if.then342.if.end348_crit_edge
  %rx_timeout_indicate_seq = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 2
  %137 = ptrtoint ptr %rx_timeout_indicate_seq to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %rx_timeout_indicate_seq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %index.1568)
  %cmp350 = icmp ugt i8 %index.1568, -128
  br i1 %cmp350, label %if.then352, label %if.end355

if.then352:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #14
  %dev353 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %138 = ptrtoint ptr %dev353 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev353, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %139, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.85) #16
  br label %cleanup

if.end355:                                        ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #14
  %140 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 173
  tail call void @rtllib_indicate_packets(ptr noundef %ieee, ptr noundef %140, i8 noundef zeroext %index.1568)
  br label %cleanup

land.lhs.true.critedge:                           ; preds = %while.end
  %rx_timeout_indicate_seq359 = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 2
  %141 = ptrtoint ptr %rx_timeout_indicate_seq359 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %rx_timeout_indicate_seq359, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %142)
  %cmp361 = icmp eq i16 %142, -1
  br i1 %cmp361, label %do.body365, label %land.lhs.true.critedge.cleanup_crit_edge

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body365:                                       ; preds = %land.lhs.true.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxReorderIndicatePacket, %if.then377)) #12
          to label %do.end383 [label %if.then377], !srcloc !342

if.then377:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %dev264 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev264, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @RxReorderIndicatePacket.__UNIQUE_ID_ddebug490, ptr noundef %144, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.85) #12
  br label %do.end383

do.end383:                                        ; preds = %if.then377, %do.body365
  %145 = ptrtoint ptr %rx_indicate_seq19 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %rx_indicate_seq19, align 4
  %147 = ptrtoint ptr %rx_timeout_indicate_seq359 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %rx_timeout_indicate_seq359, align 2
  %rx_pkt_pending_timer386 = getelementptr inbounds %struct.rx_ts_record, ptr %pTS, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %RxReorderPendingTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 47
  %149 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %RxReorderPendingTime, align 1
  %conv387 = zext i8 %150 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv387) #12
  %add389 = add i32 %call2.i, %148
  %call390 = tail call i32 @mod_timer(ptr noundef %rx_pkt_pending_timer386, i32 noundef %add389) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end383, %land.lhs.true.critedge.cleanup_crit_edge, %if.end355, %if.then352, %while.end.thread562.cleanup_crit_edge, %for.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reorder_spinlock, i32 noundef %call14) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @HTCCheck(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_rx_mgt(ptr noundef %ieee, ptr noundef %skb, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %trunc131 = and i8 %5, -16
  %6 = zext i8 %trunc131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %trunc131, label %if.then [
    i8 80, label %entry.if.end_crit_edge
    i8 -128, label %entry.if.end_crit_edge132
  ]

entry.if.end_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_rx_ps_time = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 134
  %8 = ptrtoint ptr %last_rx_ps_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_rx_ps_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge132
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %1, align 1
  %11 = lshr i16 %10, 8
  %12 = trunc i16 %11 to i8
  %trunc = and i8 %12, -16
  %13 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %trunc, label %if.end.sw.epilog_crit_edge [
    i8 -128, label %do.body10
    i8 80, label %do.body35
    i8 64, label %do.body59
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_mgt, %if.then13)) #12
          to label %do.end19 [label %if.then13], !srcloc !342

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %1, align 1
  %18 = lshr i16 %17, 8
  %19 = and i16 %18, 240
  %and16 = zext i16 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_mgt.__UNIQUE_ID_ddebug557, ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef %and16) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %do.body10
  tail call fastcc void @rtllib_process_probe_response(ptr noundef %ieee, ptr noundef %1, ptr noundef %stats)
  %sta_sleep = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 110
  %20 = ptrtoint ptr %sta_sleep to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sta_sleep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool21.not = icmp eq i16 %21, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %do.end19.if.then31_crit_edge

do.end19.if.then31_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

lor.lhs.false:                                    ; preds = %do.end19
  %ps = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 109
  %22 = ptrtoint ptr %ps to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ps, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp23.not = icmp eq i16 %23, 0
  br i1 %cmp23.not, label %lor.lhs.false.sw.epilog_crit_edge, label %land.lhs.true25

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %24 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp26 = icmp eq i32 %25, 2
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true25.sw.epilog_crit_edge

land.lhs.true25.sw.epilog_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %state = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp29 = icmp eq i32 %27, 5
  br i1 %cmp29, label %land.lhs.true28.if.then31_crit_edge, label %land.lhs.true28.sw.epilog_crit_edge

land.lhs.true28.sw.epilog_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true28.if.then31_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true28.if.then31_crit_edge, %do.end19.if.then31_crit_edge
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 113, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then31.sw.epilog_crit_edge

if.then31.sw.epilog_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %ps_task = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 113
  tail call void @__tasklet_schedule(ptr noundef %ps_task) #12
  br label %sw.epilog

do.body35:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_mgt, %if.then47)) #12
          to label %do.end56 [label %if.then47], !srcloc !342

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %28 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev48, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %1, align 1
  %32 = lshr i16 %31, 8
  %33 = and i16 %32, 240
  %and51 = zext i16 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_mgt.__UNIQUE_ID_ddebug558, ptr noundef %29, ptr noundef nonnull @.str.34, i32 noundef %and51) #12
  br label %do.end56

do.end56:                                         ; preds = %if.then47, %do.body35
  tail call fastcc void @rtllib_process_probe_response(ptr noundef %ieee, ptr noundef %1, ptr noundef %stats)
  br label %sw.epilog

do.body59:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_mgt, %if.then71)) #12
          to label %do.end80 [label %if.then71], !srcloc !342

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  %dev72 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %34 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev72, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %1, align 1
  %38 = lshr i16 %37, 8
  %39 = and i16 %38, 240
  %and75 = zext i16 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_mgt.__UNIQUE_ID_ddebug559, ptr noundef %35, ptr noundef nonnull @.str.35, i32 noundef %and75) #12
  br label %do.end80

do.end80:                                         ; preds = %if.then71, %do.body59
  %softmac_features = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 104
  %40 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %softmac_features, align 2
  %42 = and i16 %41, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool83.not = icmp eq i16 %42, 0
  br i1 %tobool83.not, label %do.end80.sw.epilog_crit_edge, label %land.lhs.true84

do.end80.sw.epilog_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true84:                                  ; preds = %do.end80
  %iw_mode85 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %43 = ptrtoint ptr %iw_mode85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iw_mode85, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %44, label %land.lhs.true84.sw.epilog_crit_edge [
    i32 1, label %land.lhs.true84.land.lhs.true92_crit_edge
    i32 3, label %land.lhs.true84.land.lhs.true92_crit_edge133
  ]

land.lhs.true84.land.lhs.true92_crit_edge133:     ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true92

land.lhs.true84.land.lhs.true92_crit_edge:        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true92

land.lhs.true84.sw.epilog_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %land.lhs.true84.land.lhs.true92_crit_edge, %land.lhs.true84.land.lhs.true92_crit_edge133
  %state93 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %46 = ptrtoint ptr %state93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp94 = icmp eq i32 %47, 5
  br i1 %cmp94, label %if.then96, label %land.lhs.true92.sw.epilog_crit_edge

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then96:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtllib_rx_probe_rq(ptr noundef %ieee, ptr noundef %skb) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then96, %land.lhs.true92.sw.epilog_crit_edge, %land.lhs.true84.sw.epilog_crit_edge, %do.end80.sw.epilog_crit_edge, %do.end56, %if.then.i, %if.then31.sw.epilog_crit_edge, %land.lhs.true28.sw.epilog_crit_edge, %land.lhs.true25.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_rx_frame_softmac(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_process_probe_response(ptr noundef %ieee, ptr noundef %beacon, ptr nocapture noundef %stats) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %info_element1 = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 1096) #18
  %1 = ptrtoint ptr %beacon to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %beacon, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_process_probe_response, %if.then8)) #12
          to label %do.end90 [label %if.then8], !srcloc !342

if.then8:                                         ; preds = %do.body3
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %len = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element1, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then8.while.cond.i.i.preheader_crit_edge

if.then8.while.cond.i.i.preheader_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %cmp1.i.i = icmp eq i8 %9, 32
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge

land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.cond.i.i.preheader:                         ; preds = %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge, %if.then8.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %essid_len.addr.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %conv.i, %while.cond.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %essid_len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.then.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.then.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %essid_len.addr.0.i.i, -1
  %arrayidx3.i.i = getelementptr i8, ptr %data, i32 %dec.i.i
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i.i, align 1
  %cmp5.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp5.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %if.end.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then.i:                                        ; preds = %while.cond.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %12 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit

if.end.i:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i, ptr noundef %data) #12
  br label %escape_essid.exit

escape_essid.exit:                                ; preds = %if.end.i, %if.then.i
  %addr3 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %beacon, i32 0, i32 4
  %capability = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 3
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %capability, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool12.not, i32 48, i32 49
  %and15 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, i32 48, i32 49
  %and20 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, i32 48, i32 49
  %and25 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, i32 48, i32 49
  %and30 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, i32 48, i32 49
  %and35 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, i32 48, i32 49
  %and40 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond42 = select i1 %tobool41.not, i32 48, i32 49
  %and45 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, i32 48, i32 49
  %and50 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond52 = select i1 %tobool51.not, i32 48, i32 49
  %and55 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %cond57 = select i1 %tobool56.not, i32 48, i32 49
  %and60 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond62 = select i1 %tobool61.not, i32 48, i32 49
  %and65 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %cond67 = select i1 %tobool66.not, i32 48, i32 49
  %and70 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %cond72 = select i1 %tobool71.not, i32 48, i32 49
  %and75 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %cond77 = select i1 %tobool76.not, i32 48, i32 49
  %and80 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %cond82 = select i1 %tobool81.not, i32 48, i32 49
  %and85 = and i32 %conv, 1
  %16 = or i32 %and85, 48
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_process_probe_response.__UNIQUE_ID_ddebug552, ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef nonnull @escape_essid.escaped, ptr noundef %addr3, i32 noundef %cond, i32 noundef %cond17, i32 noundef %cond22, i32 noundef %cond27, i32 noundef %cond32, i32 noundef %cond37, i32 noundef %cond42, i32 noundef %cond47, i32 noundef %cond52, i32 noundef %cond57, i32 noundef %cond62, i32 noundef %cond67, i32 noundef %cond72, i32 noundef %cond77, i32 noundef %cond82, i32 noundef %16) #12
  br label %do.end90

do.end90:                                         ; preds = %escape_essid.exit, %do.body3
  %call91 = tail call fastcc i32 @rtllib_network_init(ptr noundef %ieee, ptr noundef %beacon, ptr noundef nonnull %call7.i.i, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end124, label %do.body95

do.body95:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_process_probe_response, %if.then107)) #12
          to label %free_network [label %if.then107], !srcloc !342

if.then107:                                       ; preds = %do.body95
  %dev108 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %17 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev108, align 4
  %data109 = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 1, i32 0, i32 1
  %len111 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element1, i32 0, i32 1
  %19 = ptrtoint ptr %len111 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len111, align 1
  %conv.i540 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.i541 = icmp eq i8 %20, 1
  br i1 %cmp.i.i541, label %land.lhs.true.i.i543, label %if.then107.while.cond.i.i547.preheader_crit_edge

if.then107.while.cond.i.i547.preheader_crit_edge: ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i547.preheader

land.lhs.true.i.i543:                             ; preds = %if.then107
  %21 = ptrtoint ptr %data109 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data109, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp1.i.i542 = icmp eq i8 %22, 32
  br i1 %cmp1.i.i542, label %land.lhs.true.i.i543.if.then.i552_crit_edge, label %land.lhs.true.i.i543.while.cond.i.i547.preheader_crit_edge

land.lhs.true.i.i543.while.cond.i.i547.preheader_crit_edge: ; preds = %land.lhs.true.i.i543
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i547.preheader

land.lhs.true.i.i543.if.then.i552_crit_edge:      ; preds = %land.lhs.true.i.i543
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i552

while.cond.i.i547.preheader:                      ; preds = %land.lhs.true.i.i543.while.cond.i.i547.preheader_crit_edge, %if.then107.while.cond.i.i547.preheader_crit_edge
  br label %while.cond.i.i547

while.cond.i.i547:                                ; preds = %while.body.i.i551.while.cond.i.i547_crit_edge, %while.cond.i.i547.preheader
  %essid_len.addr.0.i.i545 = phi i32 [ %dec.i.i548, %while.body.i.i551.while.cond.i.i547_crit_edge ], [ %conv.i540, %while.cond.i.i547.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i545)
  %tobool.not.i.i546 = icmp eq i32 %essid_len.addr.0.i.i545, 0
  br i1 %tobool.not.i.i546, label %while.cond.i.i547.if.then.i552_crit_edge, label %while.body.i.i551

while.cond.i.i547.if.then.i552_crit_edge:         ; preds = %while.cond.i.i547
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i552

while.body.i.i551:                                ; preds = %while.cond.i.i547
  %dec.i.i548 = add nsw i32 %essid_len.addr.0.i.i545, -1
  %arrayidx3.i.i549 = getelementptr i8, ptr %data109, i32 %dec.i.i548
  %23 = ptrtoint ptr %arrayidx3.i.i549 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i.i549, align 1
  %cmp5.not.i.i550 = icmp eq i8 %24, 0
  br i1 %cmp5.not.i.i550, label %while.body.i.i551.while.cond.i.i547_crit_edge, label %if.end.i554

while.body.i.i551.while.cond.i.i547_crit_edge:    ; preds = %while.body.i.i551
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i547

if.then.i552:                                     ; preds = %while.cond.i.i547.if.then.i552_crit_edge, %land.lhs.true.i.i543.if.then.i552_crit_edge
  %25 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit555

if.end.i554:                                      ; preds = %while.body.i.i551
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i553 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i540, ptr noundef %data109) #12
  br label %escape_essid.exit555

escape_essid.exit555:                             ; preds = %if.end.i554, %if.then.i552
  %addr3114 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %beacon, i32 0, i32 4
  %26 = and i16 %3, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %26)
  %cmp.i.not = icmp eq i16 %26, 128
  %cond118 = select i1 %cmp.i.not, ptr @.str.39, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_process_probe_response.__UNIQUE_ID_ddebug553, ptr noundef %18, ptr noundef nonnull @.str.38, ptr noundef nonnull @escape_essid.escaped, ptr noundef %addr3114, ptr noundef nonnull %cond118) #12
  br label %free_network

if.end124:                                        ; preds = %do.end90
  %channel = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %28)
  %cmp.i556 = icmp ugt i8 %28, -95
  br i1 %cmp.i556, label %rtllib_legal_channel.exit.thread, label %rtllib_legal_channel.exit

rtllib_legal_channel.exit.thread:                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %30, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.rtllib_legal_channel) #16
  br label %free_network

rtllib_legal_channel.exit:                        ; preds = %if.end124
  %conv.i558 = zext i8 %28 to i32
  %arrayidx.i = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 98, i32 %conv.i558
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp3.not.i.not = icmp eq i8 %32, 0
  br i1 %cmp3.not.i.not, label %rtllib_legal_channel.exit.free_network_crit_edge, label %if.end128

rtllib_legal_channel.exit.free_network_crit_edge: ; preds = %rtllib_legal_channel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

if.end128:                                        ; preds = %rtllib_legal_channel.exit
  %33 = and i16 %3, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %33)
  %cmp = icmp eq i16 %33, 80
  br i1 %cmp, label %if.then132, label %if.end128.do.body143_crit_edge

if.end128.do.body143_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body143

if.then132:                                       ; preds = %if.end128
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %35)
  %cmp.i561 = icmp ugt i8 %35, -95
  br i1 %cmp.i561, label %IsPassiveChannel.exit.thread, label %IsPassiveChannel.exit

IsPassiveChannel.exit.thread:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i562 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i562 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i562, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.IsPassiveChannel) #16
  br label %do.body143

IsPassiveChannel.exit:                            ; preds = %if.then132
  %conv.i564 = zext i8 %35 to i32
  %arrayidx.i565 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 98, i32 %conv.i564
  %38 = ptrtoint ptr %arrayidx.i565 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i565, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp3.i.not = icmp eq i8 %39, 2
  br i1 %cmp3.i.not, label %if.then136, label %IsPassiveChannel.exit.do.body143_crit_edge

IsPassiveChannel.exit.do.body143_crit_edge:       ; preds = %IsPassiveChannel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body143

if.then136:                                       ; preds = %IsPassiveChannel.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev137 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %40 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev137, align 4
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %channel, align 2
  %conv139 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %conv139) #16
  br label %free_network

do.body143:                                       ; preds = %IsPassiveChannel.exit.do.body143_crit_edge, %IsPassiveChannel.exit.thread, %if.end128.do.body143_crit_edge
  %lock = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 59
  %call148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %ssid_len = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool154.not.not = icmp eq i8 %45, 0
  %ssid_len.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 3
  %46 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %45)
  %cmp.i569 = icmp eq i8 %47, %45
  %or.cond.i = or i1 %tobool154.not.not, %cmp.i569
  br i1 %or.cond.i, label %land.lhs.true.i, label %do.body143.if.end192_crit_edge

do.body143.if.end192_crit_edge:                   ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true.i:                                  ; preds = %do.body143
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %48 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %channel.i, align 2
  %50 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp7.i = icmp eq i8 %49, %51
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end192_crit_edge

land.lhs.true.i.if.end192_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %current_network, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %land.lhs.true9.i.if.end192_crit_edge

land.lhs.true9.i.if.end192_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %ssid.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 2
  %ssid15.i = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 2
  %conv18.i = zext i8 %47 to i32
  %bcmp52.i = tail call i32 @bcmp(ptr %ssid.i, ptr %ssid15.i, i32 %conv18.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52.i)
  %tobool20.not.i = icmp eq i32 %bcmp52.i, 0
  %or.cond53.i = or i1 %tobool154.not.not, %tobool20.not.i
  br i1 %or.cond53.i, label %land.lhs.true23.i, label %land.lhs.true13.i.if.end192_crit_edge

land.lhs.true13.i.if.end192_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true23.i:                                ; preds = %land.lhs.true13.i
  %capability.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 17
  %52 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %capability.i, align 8
  %capability25.i = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 17
  %54 = ptrtoint ptr %capability25.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %capability25.i, align 8
  %56 = xor i16 %55, %53
  %57 = and i16 %56, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %if.then159, label %land.lhs.true23.i.if.end192_crit_edge

land.lhs.true23.i.if.end192_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then159:                                       ; preds = %land.lhs.true23.i
  tail call fastcc void @update_network(ptr noundef %ieee, ptr noundef %current_network, ptr noundef nonnull %call7.i.i)
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 23
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %60, label %if.then159.if.end183_crit_edge [
    i8 16, label %if.then159.land.lhs.true_crit_edge
    i8 4, label %if.then159.land.lhs.true_crit_edge738
  ]

if.then159.land.lhs.true_crit_edge738:            ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then159.land.lhs.true_crit_edge:               ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then159.if.end183_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

land.lhs.true:                                    ; preds = %if.then159.land.lhs.true_crit_edge, %if.then159.land.lhs.true_crit_edge738
  %berp_info_valid = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 54
  %62 = ptrtoint ptr %berp_info_valid to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %berp_info_valid, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool171.not = icmp eq i8 %63, 0
  br i1 %tobool171.not, label %land.lhs.true.if.end183_crit_edge, label %if.then173

land.lhs.true.if.end183_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then173:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %erp_value = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 29
  %64 = ptrtoint ptr %erp_value to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %erp_value, align 2
  %buseprotection181 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 55
  %66 = lshr i8 %65, 1
  %.lobit = and i8 %66, 1
  %67 = ptrtoint ptr %buseprotection181 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.lobit, ptr %buseprotection181, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.then173, %land.lhs.true.if.end183_crit_edge, %if.then159.if.end183_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %33)
  %cmp.i570.not = icmp eq i16 %33, 128
  br i1 %cmp.i570.not, label %if.then186, label %if.end183.if.end192_crit_edge

if.end183.if.end192_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then186:                                       ; preds = %if.end183
  %state = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp187 = icmp ugt i32 %69, 4
  br i1 %cmp187, label %if.then189, label %if.then186.if.end192_crit_edge

if.then186.if.end192_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then189:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #14
  %LinkDetectInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 156
  %70 = ptrtoint ptr %LinkDetectInfo to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %LinkDetectInfo, align 4
  %inc = add i32 %71, 1
  store i32 %inc, ptr %LinkDetectInfo, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.then186.if.end192_crit_edge, %if.end183.if.end192_crit_edge, %land.lhs.true23.i.if.end192_crit_edge, %land.lhs.true13.i.if.end192_crit_edge, %land.lhs.true9.i.if.end192_crit_edge, %land.lhs.true.i.if.end192_crit_edge, %do.body143.if.end192_crit_edge
  %network_list = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 52
  %72 = ptrtoint ptr %network_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn713 = load ptr, ptr %network_list, align 4
  %cmp195715 = icmp eq ptr %.pn713, %network_list
  br i1 %cmp195715, label %if.end192.if.then225.critedge_crit_edge, label %for.body.lr.ph

if.end192.if.then225.critedge_crit_edge:          ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then225.critedge

for.body.lr.ph:                                   ; preds = %if.end192
  %73 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ssid_len, align 8
  %ssid15.i585 = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 2
  %capability25.i592 = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn717 = phi ptr [ %.pn713, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %oldest.0716 = phi ptr [ null, %for.body.lr.ph ], [ %oldest.1, %for.inc.for.body_crit_edge ]
  %target.0718 = getelementptr i8, ptr %.pn717, i32 -1088
  %ssid_len199 = getelementptr i8, ptr %.pn717, i32 -1048
  %75 = ptrtoint ptr %ssid_len199 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ssid_len199, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool201.not.not = icmp eq i8 %76, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %74)
  %cmp.i574 = icmp eq i8 %76, %74
  %or.cond.i576 = or i1 %tobool201.not.not, %cmp.i574
  br i1 %or.cond.i576, label %land.lhs.true.i580, label %for.body.if.end207_crit_edge

for.body.if.end207_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true.i580:                               ; preds = %for.body
  %channel.i577 = getelementptr i8, ptr %.pn717, i32 -1082
  %77 = ptrtoint ptr %channel.i577 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %channel.i577, align 2
  %79 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %80)
  %cmp7.i579 = icmp eq i8 %78, %80
  br i1 %cmp7.i579, label %land.lhs.true9.i583, label %land.lhs.true.i580.if.end207_crit_edge

land.lhs.true.i580.if.end207_crit_edge:           ; preds = %land.lhs.true.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true9.i583:                              ; preds = %land.lhs.true.i580
  %bcmp.i581 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %target.0718, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i581)
  %tobool12.not.i582 = icmp eq i32 %bcmp.i581, 0
  br i1 %tobool12.not.i582, label %land.lhs.true13.i590, label %land.lhs.true9.i583.if.end207_crit_edge

land.lhs.true9.i583.if.end207_crit_edge:          ; preds = %land.lhs.true9.i583
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true13.i590:                             ; preds = %land.lhs.true9.i583
  %ssid.i584 = getelementptr i8, ptr %.pn717, i32 -1081
  %conv18.i586 = zext i8 %76 to i32
  %bcmp52.i587 = tail call i32 @bcmp(ptr %ssid.i584, ptr %ssid15.i585, i32 %conv18.i586) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52.i587)
  %tobool20.not.i588 = icmp eq i32 %bcmp52.i587, 0
  %or.cond53.i589 = or i1 %tobool201.not.not, %tobool20.not.i588
  br i1 %or.cond53.i589, label %land.lhs.true23.i594, label %land.lhs.true13.i590.if.end207_crit_edge

land.lhs.true13.i590.if.end207_crit_edge:         ; preds = %land.lhs.true13.i590
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true23.i594:                             ; preds = %land.lhs.true13.i590
  %capability.i591 = getelementptr i8, ptr %.pn717, i32 -848
  %81 = ptrtoint ptr %capability.i591 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %capability.i591, align 8
  %83 = ptrtoint ptr %capability25.i592 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %capability25.i592, align 8
  %85 = xor i16 %84, %82
  %86 = and i16 %85, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %do.body301, label %land.lhs.true23.i594.if.end207_crit_edge

land.lhs.true23.i594.if.end207_crit_edge:         ; preds = %land.lhs.true23.i594
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.end207:                                        ; preds = %land.lhs.true23.i594.if.end207_crit_edge, %land.lhs.true13.i590.if.end207_crit_edge, %land.lhs.true9.i583.if.end207_crit_edge, %land.lhs.true.i580.if.end207_crit_edge, %for.body.if.end207_crit_edge
  %cmp208 = icmp eq ptr %oldest.0716, null
  br i1 %cmp208, label %if.end207.if.then214_crit_edge, label %lor.lhs.false210

if.end207.if.then214_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then214

lor.lhs.false210:                                 ; preds = %if.end207
  %last_scanned = getelementptr i8, ptr %.pn717, i32 -816
  %88 = ptrtoint ptr %last_scanned to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %last_scanned, align 8
  %last_scanned211 = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0716, i32 0, i32 22
  %90 = ptrtoint ptr %last_scanned211 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last_scanned211, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp212 = icmp ult i32 %89, %91
  br i1 %cmp212, label %lor.lhs.false210.if.then214_crit_edge, label %lor.lhs.false210.for.inc_crit_edge

lor.lhs.false210.for.inc_crit_edge:               ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false210.if.then214_crit_edge:            ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then214

if.then214:                                       ; preds = %lor.lhs.false210.if.then214_crit_edge, %if.end207.if.then214_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then214, %lor.lhs.false210.for.inc_crit_edge
  %oldest.1 = phi ptr [ %target.0718, %if.then214 ], [ %oldest.0716, %lor.lhs.false210.for.inc_crit_edge ]
  %92 = ptrtoint ptr %.pn717 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn = load ptr, ptr %.pn717, align 4
  %cmp195 = icmp eq ptr %.pn, %network_list
  br i1 %cmp195, label %for.inc.if.then225.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then225.critedge_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then225.critedge

if.then225.critedge:                              ; preds = %for.inc.if.then225.critedge_crit_edge, %if.end192.if.then225.critedge_crit_edge
  %oldest.0.lcssa = phi ptr [ null, %if.end192.if.then225.critedge_crit_edge ], [ %oldest.1, %for.inc.if.then225.critedge_crit_edge ]
  %network_free_list = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 51
  %93 = ptrtoint ptr %network_free_list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %network_free_list, align 4
  %cmp.i598.not = icmp eq ptr %94, %network_free_list
  br i1 %cmp.i598.not, label %if.then228, label %if.else254

if.then228:                                       ; preds = %if.then225.critedge
  %list229 = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0.lcssa, i32 0, i32 58
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list229) #12
  br i1 %call.i.i, label %if.end.i.i600, label %if.then228.list_del.exit_crit_edge

if.then228.list_del.exit_crit_edge:               ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i600:                                    ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0.lcssa, i32 0, i32 58, i32 1
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i, align 4
  %97 = ptrtoint ptr %list229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %list229, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i600, %if.then228.list_del.exit_crit_edge
  %101 = ptrtoint ptr %list229 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 256 to ptr), ptr %list229, align 4
  %prev.i = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0.lcssa, i32 0, i32 58, i32 1
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_process_probe_response, %if.then243)) #12
          to label %do.body264 [label %if.then243], !srcloc !342

if.then243:                                       ; preds = %list_del.exit
  %dev244 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %103 = ptrtoint ptr %dev244 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev244, align 4
  %ssid = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0.lcssa, i32 0, i32 2
  %ssid_len246 = getelementptr inbounds %struct.rtllib_network, ptr %oldest.0.lcssa, i32 0, i32 3
  %105 = ptrtoint ptr %ssid_len246 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ssid_len246, align 8
  %conv.i601 = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp.i.i602 = icmp eq i8 %106, 1
  br i1 %cmp.i.i602, label %land.lhs.true.i.i604, label %if.then243.while.cond.i.i608.preheader_crit_edge

if.then243.while.cond.i.i608.preheader_crit_edge: ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i608.preheader

land.lhs.true.i.i604:                             ; preds = %if.then243
  %107 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ssid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %108)
  %cmp1.i.i603 = icmp eq i8 %108, 32
  br i1 %cmp1.i.i603, label %land.lhs.true.i.i604.if.then.i613_crit_edge, label %land.lhs.true.i.i604.while.cond.i.i608.preheader_crit_edge

land.lhs.true.i.i604.while.cond.i.i608.preheader_crit_edge: ; preds = %land.lhs.true.i.i604
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i608.preheader

land.lhs.true.i.i604.if.then.i613_crit_edge:      ; preds = %land.lhs.true.i.i604
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i613

while.cond.i.i608.preheader:                      ; preds = %land.lhs.true.i.i604.while.cond.i.i608.preheader_crit_edge, %if.then243.while.cond.i.i608.preheader_crit_edge
  br label %while.cond.i.i608

while.cond.i.i608:                                ; preds = %while.body.i.i612.while.cond.i.i608_crit_edge, %while.cond.i.i608.preheader
  %essid_len.addr.0.i.i606 = phi i32 [ %dec.i.i609, %while.body.i.i612.while.cond.i.i608_crit_edge ], [ %conv.i601, %while.cond.i.i608.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i606)
  %tobool.not.i.i607 = icmp eq i32 %essid_len.addr.0.i.i606, 0
  br i1 %tobool.not.i.i607, label %while.cond.i.i608.if.then.i613_crit_edge, label %while.body.i.i612

while.cond.i.i608.if.then.i613_crit_edge:         ; preds = %while.cond.i.i608
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i613

while.body.i.i612:                                ; preds = %while.cond.i.i608
  %dec.i.i609 = add nsw i32 %essid_len.addr.0.i.i606, -1
  %arrayidx3.i.i610 = getelementptr i8, ptr %ssid, i32 %dec.i.i609
  %109 = ptrtoint ptr %arrayidx3.i.i610 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx3.i.i610, align 1
  %cmp5.not.i.i611 = icmp eq i8 %110, 0
  br i1 %cmp5.not.i.i611, label %while.body.i.i612.while.cond.i.i608_crit_edge, label %if.end.i615

while.body.i.i612.while.cond.i.i608_crit_edge:    ; preds = %while.body.i.i612
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i608

if.then.i613:                                     ; preds = %while.cond.i.i608.if.then.i613_crit_edge, %land.lhs.true.i.i604.if.then.i613_crit_edge
  %111 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit616

if.end.i615:                                      ; preds = %while.body.i.i612
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i614 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i601, ptr noundef %ssid) #12
  br label %escape_essid.exit616

escape_essid.exit616:                             ; preds = %if.end.i615, %if.then.i613
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_process_probe_response.__UNIQUE_ID_ddebug554, ptr noundef %104, ptr noundef nonnull @.str.42, ptr noundef nonnull @escape_essid.escaped, ptr noundef %oldest.0.lcssa) #12
  br label %do.body264

if.else254:                                       ; preds = %if.then225.critedge
  %add.ptr259 = getelementptr i8, ptr %94, i32 -1088
  %call.i.i617 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %94) #12
  br i1 %call.i.i617, label %if.end.i.i620, label %if.else254.list_del.exit622_crit_edge

if.else254.list_del.exit622_crit_edge:            ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit622

if.end.i.i620:                                    ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i618 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i618 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i618, align 4
  %114 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %94, align 4
  %prev1.i.i.i619 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i619 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i619, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit622

list_del.exit622:                                 ; preds = %if.end.i.i620, %if.else254.list_del.exit622_crit_edge
  %118 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %94, align 4
  %prev.i621 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i621 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i621, align 4
  br label %do.body264

do.body264:                                       ; preds = %list_del.exit622, %escape_essid.exit616, %list_del.exit
  %target.1 = phi ptr [ %oldest.0.lcssa, %escape_essid.exit616 ], [ %add.ptr259, %list_del.exit622 ], [ %oldest.0.lcssa, %list_del.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_process_probe_response, %if.then276)) #12
          to label %do.end291 [label %if.then276], !srcloc !342

if.then276:                                       ; preds = %do.body264
  %dev277 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %120 = ptrtoint ptr %dev277 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev277, align 4
  %ssid278 = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ssid_len, align 8
  %conv.i623 = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp.i.i624 = icmp eq i8 %123, 1
  br i1 %cmp.i.i624, label %land.lhs.true.i.i626, label %if.then276.while.cond.i.i630.preheader_crit_edge

if.then276.while.cond.i.i630.preheader_crit_edge: ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i630.preheader

land.lhs.true.i.i626:                             ; preds = %if.then276
  %124 = ptrtoint ptr %ssid278 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ssid278, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %125)
  %cmp1.i.i625 = icmp eq i8 %125, 32
  br i1 %cmp1.i.i625, label %land.lhs.true.i.i626.if.then.i635_crit_edge, label %land.lhs.true.i.i626.while.cond.i.i630.preheader_crit_edge

land.lhs.true.i.i626.while.cond.i.i630.preheader_crit_edge: ; preds = %land.lhs.true.i.i626
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i630.preheader

land.lhs.true.i.i626.if.then.i635_crit_edge:      ; preds = %land.lhs.true.i.i626
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i635

while.cond.i.i630.preheader:                      ; preds = %land.lhs.true.i.i626.while.cond.i.i630.preheader_crit_edge, %if.then276.while.cond.i.i630.preheader_crit_edge
  br label %while.cond.i.i630

while.cond.i.i630:                                ; preds = %while.body.i.i634.while.cond.i.i630_crit_edge, %while.cond.i.i630.preheader
  %essid_len.addr.0.i.i628 = phi i32 [ %dec.i.i631, %while.body.i.i634.while.cond.i.i630_crit_edge ], [ %conv.i623, %while.cond.i.i630.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i628)
  %tobool.not.i.i629 = icmp eq i32 %essid_len.addr.0.i.i628, 0
  br i1 %tobool.not.i.i629, label %while.cond.i.i630.if.then.i635_crit_edge, label %while.body.i.i634

while.cond.i.i630.if.then.i635_crit_edge:         ; preds = %while.cond.i.i630
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i635

while.body.i.i634:                                ; preds = %while.cond.i.i630
  %dec.i.i631 = add nsw i32 %essid_len.addr.0.i.i628, -1
  %arrayidx3.i.i632 = getelementptr i8, ptr %ssid278, i32 %dec.i.i631
  %126 = ptrtoint ptr %arrayidx3.i.i632 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx3.i.i632, align 1
  %cmp5.not.i.i633 = icmp eq i8 %127, 0
  br i1 %cmp5.not.i.i633, label %while.body.i.i634.while.cond.i.i630_crit_edge, label %if.end.i637

while.body.i.i634.while.cond.i.i630_crit_edge:    ; preds = %while.body.i.i634
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i630

if.then.i635:                                     ; preds = %while.cond.i.i630.if.then.i635_crit_edge, %land.lhs.true.i.i626.if.then.i635_crit_edge
  %128 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit638

if.end.i637:                                      ; preds = %while.body.i.i634
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i636 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i623, ptr noundef %ssid278) #12
  br label %escape_essid.exit638

escape_essid.exit638:                             ; preds = %if.end.i637, %if.then.i635
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %33)
  %cmp.i639.not = icmp eq i16 %33, 128
  %cond286 = select i1 %cmp.i639.not, ptr @.str.39, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_process_probe_response.__UNIQUE_ID_ddebug555, ptr noundef %121, ptr noundef nonnull @.str.43, ptr noundef nonnull @escape_essid.escaped, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %cond286) #12
  br label %do.end291

do.end291:                                        ; preds = %escape_essid.exit638, %do.body264
  %129 = call ptr @memcpy(ptr %target.1, ptr %call7.i.i, i32 1096)
  %list292 = getelementptr inbounds %struct.rtllib_network, ptr %target.1, i32 0, i32 58
  %prev.i641 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 52, i32 1
  %130 = ptrtoint ptr %prev.i641 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i641, align 4
  %call.i.i642 = tail call zeroext i1 @__list_add_valid(ptr noundef %list292, ptr noundef %131, ptr noundef %network_list) #12
  br i1 %call.i.i642, label %if.end.i.i643, label %do.end291.list_add_tail.exit_crit_edge

do.end291.list_add_tail.exit_crit_edge:           ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i643:                                    ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %prev.i641 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %list292, ptr %prev.i641, align 4
  %133 = ptrtoint ptr %list292 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %network_list, ptr %list292, align 4
  %prev3.i.i = getelementptr inbounds %struct.rtllib_network, ptr %target.1, i32 0, i32 58, i32 1
  %134 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %list292, ptr %131, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i643, %do.end291.list_add_tail.exit_crit_edge
  %softmac_features = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 104
  %136 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %softmac_features, align 2
  %138 = and i16 %137, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool296.not = icmp eq i16 %138, 0
  br i1 %tobool296.not, label %list_add_tail.exit.if.end380_crit_edge, label %list_add_tail.exit.if.end380.sink.split_crit_edge

list_add_tail.exit.if.end380.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380.sink.split

list_add_tail.exit.if.end380_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380

do.body301:                                       ; preds = %land.lhs.true23.i594
  %ssid_len199.le = getelementptr i8, ptr %.pn717, i32 -1048
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_process_probe_response, %if.then313)) #12
          to label %do.end328 [label %if.then313], !srcloc !342

if.then313:                                       ; preds = %do.body301
  %dev314 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %139 = ptrtoint ptr %dev314 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev314, align 4
  %141 = ptrtoint ptr %ssid_len199.le to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ssid_len199.le, align 8
  %conv.i644 = zext i8 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %142)
  %cmp.i.i645 = icmp eq i8 %142, 1
  br i1 %cmp.i.i645, label %land.lhs.true.i.i647, label %if.then313.while.cond.i.i651.preheader_crit_edge

if.then313.while.cond.i.i651.preheader_crit_edge: ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i651.preheader

land.lhs.true.i.i647:                             ; preds = %if.then313
  %143 = ptrtoint ptr %ssid.i584 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ssid.i584, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %144)
  %cmp1.i.i646 = icmp eq i8 %144, 32
  br i1 %cmp1.i.i646, label %land.lhs.true.i.i647.if.then.i656_crit_edge, label %land.lhs.true.i.i647.while.cond.i.i651.preheader_crit_edge

land.lhs.true.i.i647.while.cond.i.i651.preheader_crit_edge: ; preds = %land.lhs.true.i.i647
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i651.preheader

land.lhs.true.i.i647.if.then.i656_crit_edge:      ; preds = %land.lhs.true.i.i647
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i656

while.cond.i.i651.preheader:                      ; preds = %land.lhs.true.i.i647.while.cond.i.i651.preheader_crit_edge, %if.then313.while.cond.i.i651.preheader_crit_edge
  br label %while.cond.i.i651

while.cond.i.i651:                                ; preds = %while.body.i.i655.while.cond.i.i651_crit_edge, %while.cond.i.i651.preheader
  %essid_len.addr.0.i.i649 = phi i32 [ %dec.i.i652, %while.body.i.i655.while.cond.i.i651_crit_edge ], [ %conv.i644, %while.cond.i.i651.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i649)
  %tobool.not.i.i650 = icmp eq i32 %essid_len.addr.0.i.i649, 0
  br i1 %tobool.not.i.i650, label %while.cond.i.i651.if.then.i656_crit_edge, label %while.body.i.i655

while.cond.i.i651.if.then.i656_crit_edge:         ; preds = %while.cond.i.i651
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i656

while.body.i.i655:                                ; preds = %while.cond.i.i651
  %dec.i.i652 = add nsw i32 %essid_len.addr.0.i.i649, -1
  %arrayidx3.i.i653 = getelementptr i8, ptr %ssid.i584, i32 %dec.i.i652
  %145 = ptrtoint ptr %arrayidx3.i.i653 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx3.i.i653, align 1
  %cmp5.not.i.i654 = icmp eq i8 %146, 0
  br i1 %cmp5.not.i.i654, label %while.body.i.i655.while.cond.i.i651_crit_edge, label %if.end.i658

while.body.i.i655.while.cond.i.i651_crit_edge:    ; preds = %while.body.i.i655
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i651

if.then.i656:                                     ; preds = %while.cond.i.i651.if.then.i656_crit_edge, %land.lhs.true.i.i647.if.then.i656_crit_edge
  %147 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit659

if.end.i658:                                      ; preds = %while.body.i.i655
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i657 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i644, ptr noundef %ssid.i584) #12
  br label %escape_essid.exit659

escape_essid.exit659:                             ; preds = %if.end.i658, %if.then.i656
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %33)
  %cmp.i660.not = icmp eq i16 %33, 128
  %cond323 = select i1 %cmp.i660.not, ptr @.str.39, ptr @.str.40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_process_probe_response.__UNIQUE_ID_ddebug556, ptr noundef %140, ptr noundef nonnull @.str.44, ptr noundef nonnull @escape_essid.escaped, ptr noundef %target.0718, ptr noundef nonnull %cond323) #12
  br label %do.end328

do.end328:                                        ; preds = %escape_essid.exit659, %do.body301
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %last_scanned329 = getelementptr i8, ptr %.pn717, i32 -816
  %149 = ptrtoint ptr %last_scanned329 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %last_scanned329, align 8
  %scan_age = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 55
  %151 = ptrtoint ptr %scan_age to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %scan_age, align 4
  %153 = add i32 %150, %152
  %sub = sub i32 %148, %153
  %154 = ptrtoint ptr %ssid_len199.le to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ssid_len199.le, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool336.not = icmp eq i8 %155, 0
  br i1 %tobool336.not, label %land.lhs.true337, label %do.end328.if.end370_crit_edge

do.end328.if.end370_crit_edge:                    ; preds = %do.end328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

land.lhs.true337:                                 ; preds = %do.end328
  %156 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %cmp340.not = icmp eq i8 %157, 0
  br i1 %cmp340.not, label %land.lhs.true337.lor.lhs.false346_crit_edge, label %land.lhs.true342

land.lhs.true337.lor.lhs.false346_crit_edge:      ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false346

land.lhs.true342:                                 ; preds = %land.lhs.true337
  %hidden_ssid_len = getelementptr i8, ptr %.pn717, i32 -1014
  %158 = ptrtoint ptr %hidden_ssid_len to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %hidden_ssid_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp344 = icmp eq i8 %159, 0
  br i1 %cmp344, label %land.lhs.true342.if.end370.thread_crit_edge, label %land.lhs.true342.lor.lhs.false346_crit_edge

land.lhs.true342.lor.lhs.false346_crit_edge:      ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false346

land.lhs.true342.if.end370.thread_crit_edge:      ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370.thread

lor.lhs.false346:                                 ; preds = %land.lhs.true342.lor.lhs.false346_crit_edge, %land.lhs.true337.lor.lhs.false346_crit_edge
  %160 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %161, i8 %157)
  %cmp352 = icmp eq i8 %161, %157
  br i1 %cmp352, label %land.lhs.true354, label %lor.lhs.false346.if.end370_crit_edge

lor.lhs.false346.if.end370_crit_edge:             ; preds = %lor.lhs.false346
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

land.lhs.true354:                                 ; preds = %lor.lhs.false346
  %conv351 = zext i8 %157 to i32
  %ssid356 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 2
  %call362 = tail call i32 @strncmp(ptr noundef %ssid356, ptr noundef %ssid15.i585, i32 noundef %conv351)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %cmp363 = icmp eq i32 %call362, 0
  br i1 %cmp363, label %land.lhs.true365, label %land.lhs.true354.if.end370_crit_edge

land.lhs.true354.if.end370_crit_edge:             ; preds = %land.lhs.true354
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

land.lhs.true365:                                 ; preds = %land.lhs.true354
  %state366 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %162 = ptrtoint ptr %state366 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %state366, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp367 = icmp eq i32 %163, 0
  br i1 %cmp367, label %land.lhs.true365.if.end370.thread_crit_edge, label %land.lhs.true365.if.end370_crit_edge

land.lhs.true365.if.end370_crit_edge:             ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

land.lhs.true365.if.end370.thread_crit_edge:      ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370.thread

if.end370.thread:                                 ; preds = %land.lhs.true365.if.end370.thread_crit_edge, %land.lhs.true342.if.end370.thread_crit_edge
  tail call fastcc void @update_network(ptr noundef %ieee, ptr noundef %target.0718, ptr noundef nonnull %call7.i.i)
  br label %land.lhs.true373

if.end370:                                        ; preds = %land.lhs.true365.if.end370_crit_edge, %land.lhs.true354.if.end370_crit_edge, %lor.lhs.false346.if.end370_crit_edge, %do.end328.if.end370_crit_edge
  tail call fastcc void @update_network(ptr noundef %ieee, ptr noundef %target.0718, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool372.not = icmp slt i32 %sub, 0
  br i1 %tobool372.not, label %if.end370.if.end380_crit_edge, label %if.end370.land.lhs.true373_crit_edge

if.end370.land.lhs.true373_crit_edge:             ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true373

if.end370.if.end380_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380

land.lhs.true373:                                 ; preds = %if.end370.land.lhs.true373_crit_edge, %if.end370.thread
  %softmac_features374 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 104
  %164 = ptrtoint ptr %softmac_features374 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %softmac_features374, align 2
  %166 = and i16 %165, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool377.not = icmp eq i16 %166, 0
  br i1 %tobool377.not, label %land.lhs.true373.if.end380_crit_edge, label %land.lhs.true373.if.end380.sink.split_crit_edge

land.lhs.true373.if.end380.sink.split_crit_edge:  ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380.sink.split

land.lhs.true373.if.end380_crit_edge:             ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end380

if.end380.sink.split:                             ; preds = %land.lhs.true373.if.end380.sink.split_crit_edge, %list_add_tail.exit.if.end380.sink.split_crit_edge
  tail call void @rtllib_softmac_new_net(ptr noundef %ieee, ptr noundef nonnull %call7.i.i) #12
  br label %if.end380

if.end380:                                        ; preds = %if.end380.sink.split, %land.lhs.true373.if.end380_crit_edge, %if.end370.if.end380_crit_edge, %list_add_tail.exit.if.end380_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call148) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %33)
  %cmp.i662.not = icmp eq i16 %33, 128
  br i1 %cmp.i662.not, label %land.lhs.true384, label %if.end380.free_network_crit_edge

if.end380.free_network_crit_edge:                 ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true384:                                 ; preds = %if.end380
  %167 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool388.not.not = icmp eq i8 %168, 0
  %169 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ssid_len.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %170, i8 %168)
  %cmp.i666 = icmp eq i8 %170, %168
  %or.cond.i668 = or i1 %tobool388.not.not, %cmp.i666
  br i1 %or.cond.i668, label %land.lhs.true.i672, label %land.lhs.true384.free_network_crit_edge

land.lhs.true384.free_network_crit_edge:          ; preds = %land.lhs.true384
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true.i672:                               ; preds = %land.lhs.true384
  %channel.i669 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %171 = ptrtoint ptr %channel.i669 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %channel.i669, align 2
  %173 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %172, i8 %174)
  %cmp7.i671 = icmp eq i8 %172, %174
  br i1 %cmp7.i671, label %land.lhs.true9.i675, label %land.lhs.true.i672.free_network_crit_edge

land.lhs.true.i672.free_network_crit_edge:        ; preds = %land.lhs.true.i672
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true9.i675:                              ; preds = %land.lhs.true.i672
  %bcmp.i673 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %current_network, ptr noundef dereferenceable(6) %call7.i.i, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i673)
  %tobool12.not.i674 = icmp eq i32 %bcmp.i673, 0
  br i1 %tobool12.not.i674, label %land.lhs.true13.i682, label %land.lhs.true9.i675.free_network_crit_edge

land.lhs.true9.i675.free_network_crit_edge:       ; preds = %land.lhs.true9.i675
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true13.i682:                             ; preds = %land.lhs.true9.i675
  %ssid.i676 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 2
  %ssid15.i677 = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 2
  %conv18.i678 = zext i8 %170 to i32
  %bcmp52.i679 = tail call i32 @bcmp(ptr %ssid.i676, ptr %ssid15.i677, i32 %conv18.i678) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52.i679)
  %tobool20.not.i680 = icmp eq i32 %bcmp52.i679, 0
  %or.cond53.i681 = or i1 %tobool388.not.not, %tobool20.not.i680
  br i1 %or.cond53.i681, label %land.lhs.true23.i686, label %land.lhs.true13.i682.free_network_crit_edge

land.lhs.true13.i682.free_network_crit_edge:      ; preds = %land.lhs.true13.i682
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true23.i686:                             ; preds = %land.lhs.true13.i682
  %capability.i683 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 17
  %175 = ptrtoint ptr %capability.i683 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %capability.i683, align 8
  %capability25.i684 = getelementptr inbounds %struct.rtllib_network, ptr %call7.i.i, i32 0, i32 17
  %177 = ptrtoint ptr %capability25.i684 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %capability25.i684, align 8
  %179 = xor i16 %178, %176
  %180 = and i16 %179, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %land.lhs.true393, label %land.lhs.true23.i686.free_network_crit_edge

land.lhs.true23.i686.free_network_crit_edge:      ; preds = %land.lhs.true23.i686
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

land.lhs.true393:                                 ; preds = %land.lhs.true23.i686
  %state394 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 90
  %182 = ptrtoint ptr %state394 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %state394, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %183)
  %cmp395 = icmp eq i32 %183, 5
  br i1 %cmp395, label %if.then397, label %land.lhs.true393.free_network_crit_edge

land.lhs.true393.free_network_crit_edge:          ; preds = %land.lhs.true393
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

if.then397:                                       ; preds = %land.lhs.true393
  %handle_beacon = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 190
  %184 = ptrtoint ptr %handle_beacon to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %handle_beacon, align 4
  %cmp398.not = icmp eq ptr %185, null
  br i1 %cmp398.not, label %if.then397.free_network_crit_edge, label %if.then400

if.then397.free_network_crit_edge:                ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_network

if.then400:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #14
  %dev402 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %186 = ptrtoint ptr %dev402 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev402, align 4
  %call404 = tail call i32 %185(ptr noundef %187, ptr noundef %beacon, ptr noundef %current_network) #12
  br label %free_network

free_network:                                     ; preds = %if.then400, %if.then397.free_network_crit_edge, %land.lhs.true393.free_network_crit_edge, %land.lhs.true23.i686.free_network_crit_edge, %land.lhs.true13.i682.free_network_crit_edge, %land.lhs.true9.i675.free_network_crit_edge, %land.lhs.true.i672.free_network_crit_edge, %land.lhs.true384.free_network_crit_edge, %if.end380.free_network_crit_edge, %if.then136, %rtllib_legal_channel.exit.free_network_crit_edge, %rtllib_legal_channel.exit.thread, %escape_essid.exit555, %do.body95
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_network, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_rx_probe_rq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_network_init(ptr noundef %ieee, ptr noundef %beacon, ptr noundef %network, ptr nocapture noundef %stats) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %qos_data = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6
  %0 = call ptr @memset(ptr %qos_data, i32 0, i32 48)
  %addr3 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %beacon, i32 0, i32 4
  %1 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr3, align 4
  %3 = ptrtoint ptr %network to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %network, align 4
  %add.ptr.i = getelementptr %struct.rtllib_hdr_3addr, ptr %beacon, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %network, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 2
  %capability = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 3
  %7 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %capability, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %capability2 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 17
  %10 = ptrtoint ptr %capability2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %capability2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 22
  %12 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_scanned, align 8
  %time_stamp = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 1
  %13 = ptrtoint ptr %time_stamp to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %time_stamp, align 1
  %time_stamp3 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 25
  %15 = ptrtoint ptr %time_stamp3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %time_stamp3, align 4
  %arrayidx6 = getelementptr %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.rtllib_network, ptr %network, i32 0, i32 25, i32 1
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx8, align 4
  %beacon_interval = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 2
  %19 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %beacon_interval, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %beacon_interval9 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 26
  %22 = ptrtoint ptr %beacon_interval9 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %beacon_interval9, align 4
  %listen_interval = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 27
  %23 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10, ptr %listen_interval, align 2
  %rates_ex_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 21
  %24 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %rates_ex_len, align 1
  %rates_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 19
  %25 = ptrtoint ptr %rates_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %rates_len, align 2
  %ssid_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags, align 8
  %atim_window = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 28
  %27 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %atim_window, align 8
  %28 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not = icmp eq i16 %28, 0
  %conv12 = select i1 %tobool.not, i8 0, i8 3
  %erp_value = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 29
  %29 = call ptr @memset(ptr %ssid_len, i32 0, i32 35)
  %30 = ptrtoint ptr %erp_value to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv12, ptr %erp_value, align 2
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 46
  %Turbo_Enable = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 42
  %31 = ptrtoint ptr %Turbo_Enable to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %Turbo_Enable, align 2
  %SignalStrength = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 17
  %32 = call ptr @memset(ptr %broadcom_cap_exist, i32 0, i32 9)
  %33 = ptrtoint ptr %SignalStrength to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %SignalStrength, align 1
  %SignalStrength13 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 56
  %35 = ptrtoint ptr %SignalStrength13 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %SignalStrength13, align 2
  %36 = load i8, ptr %SignalStrength, align 1
  %RSSI = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 57
  %37 = ptrtoint ptr %RSSI to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %RSSI, align 1
  %CountryIeLen = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 43
  %bssht = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 45
  %38 = call ptr @memset(ptr %CountryIeLen, i32 0, i32 257)
  tail call void @HTInitializeBssDesc(ptr noundef %bssht) #12
  %freq = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 8
  %39 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %freq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp = icmp eq i8 %40, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %received_channel = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 5
  %41 = ptrtoint ptr %received_channel to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %received_channel, align 2
  %channel = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 1
  %43 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %channel, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %or = or i32 %45, 4
  store i32 %or, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %wpa_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 31
  %46 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %wpa_ie_len, align 4
  %rsn_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 33
  %47 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rsn_ie_len, align 8
  %wzc_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 35
  %48 = ptrtoint ptr %wzc_ie_len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %wzc_ie_len, align 4
  %info_element = getelementptr inbounds %struct.rtllib_probe_response, ptr %beacon, i32 0, i32 4
  %len = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 9
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len, align 2
  %sub = add i16 %50, -36
  %call = tail call i32 @rtllib_parse_info_param(ptr noundef %ieee, ptr noundef %info_element, i16 noundef zeroext %sub, ptr noundef %network, ptr undef)
  %mode = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 23
  %51 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %mode, align 4
  %52 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %freq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp27 = icmp eq i8 %53, 2
  br i1 %cmp27, label %if.end69.thread, label %if.else31

if.else31:                                        ; preds = %if.end
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 8
  %and33 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else31.if.end40_crit_edge, label %if.then35

if.else31.if.end40_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %mode, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.else31.if.end40_crit_edge
  %and42 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %57 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr = load i8, ptr %mode, align 4
  br i1 %tobool43.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %58 = or i8 %.pr, 2
  %59 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %mode, align 4
  br label %if.end69

if.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp53 = icmp eq i8 %.pr, 0
  br i1 %cmp53, label %do.body56, label %if.end50.if.end69_crit_edge

if.end50.if.end69_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

do.body56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_network_init.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_network_init, %if.then61)) #12
          to label %return [label %if.then61], !srcloc !342

if.then61:                                        ; preds = %do.body56
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %ssid = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 2
  %62 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ssid_len, align 8
  %conv.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp.i.i = icmp eq i8 %63, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then61.while.cond.i.i.preheader_crit_edge

if.then61.while.cond.i.i.preheader_crit_edge:     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.then61
  %64 = ptrtoint ptr %ssid to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ssid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %65)
  %cmp1.i.i = icmp eq i8 %65, 32
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge

land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.preheader

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.cond.i.i.preheader:                         ; preds = %land.lhs.true.i.i.while.cond.i.i.preheader_crit_edge, %if.then61.while.cond.i.i.preheader_crit_edge
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.preheader
  %essid_len.addr.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %conv.i, %while.cond.i.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i.i)
  %tobool.not.i.i = icmp eq i32 %essid_len.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.if.then.i_crit_edge, label %while.body.i.i

while.cond.i.i.if.then.i_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %essid_len.addr.0.i.i, -1
  %arrayidx3.i.i = getelementptr i8, ptr %ssid, i32 %dec.i.i
  %66 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.i.i, align 1
  %cmp5.not.i.i = icmp eq i8 %67, 0
  br i1 %cmp5.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %if.end.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then.i:                                        ; preds = %while.cond.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %68 = call ptr @memcpy(ptr @escape_essid.escaped, ptr @.str.45, i32 9)
  br label %escape_essid.exit

if.end.i:                                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @escape_essid.escaped, i32 noundef 65, ptr noundef nonnull @.str.46, i32 noundef %conv.i, ptr noundef %ssid) #12
  br label %escape_essid.exit

escape_essid.exit:                                ; preds = %if.end.i, %if.then.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_network_init.__UNIQUE_ID_ddebug549, ptr noundef %61, ptr noundef nonnull @.str.48, ptr noundef nonnull @escape_essid.escaped, ptr noundef %network) #12
  br label %return

if.end69:                                         ; preds = %if.end50.if.end69_crit_edge, %if.then44
  %69 = phi i8 [ %.pr, %if.end50.if.end69_crit_edge ], [ %58, %if.then44 ]
  %70 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bssht, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool71.not = icmp eq i8 %71, 0
  br i1 %tobool71.not, label %if.end69.if.end88_crit_edge, label %if.then72

if.end69.if.end88_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end69.thread:                                  ; preds = %if.end
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %mode, align 4
  %73 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bssht, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool71.not190 = icmp eq i8 %74, 0
  br i1 %tobool71.not190, label %if.end69.thread.if.end88_crit_edge, label %if.end69.thread.if.end88.sink.split_crit_edge

if.end69.thread.if.end88.sink.split_crit_edge:    ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.sink.split

if.end69.thread.if.end88_crit_edge:               ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp75 = icmp eq i8 %69, 1
  br i1 %cmp75, label %if.then72.if.end88.sink.split_crit_edge, label %if.else79

if.then72.if.end88.sink.split_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.sink.split

if.else79:                                        ; preds = %if.then72
  %75 = and i8 %69, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool83.not = icmp eq i8 %75, 0
  br i1 %tobool83.not, label %if.else79.if.end88_crit_edge, label %if.else79.if.end88.sink.split_crit_edge

if.else79.if.end88.sink.split_crit_edge:          ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88.sink.split

if.else79.if.end88_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end88.sink.split:                              ; preds = %if.else79.if.end88.sink.split_crit_edge, %if.then72.if.end88.sink.split_crit_edge, %if.end69.thread.if.end88.sink.split_crit_edge
  %.sink = phi i8 [ 32, %if.end69.thread.if.end88.sink.split_crit_edge ], [ 32, %if.then72.if.end88.sink.split_crit_edge ], [ 16, %if.else79.if.end88.sink.split_crit_edge ]
  %76 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %.sink, ptr %mode, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %if.else79.if.end88_crit_edge, %if.end69.thread.if.end88_crit_edge, %if.end69.if.end88_crit_edge
  %ssid89 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 2
  %77 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ssid_len, align 8
  %conv92 = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp.i = icmp eq i8 %78, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end88.while.cond.i.preheader_crit_edge

if.end88.while.cond.i.preheader_crit_edge:        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.end88
  %79 = ptrtoint ptr %ssid89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ssid89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %80)
  %cmp1.i = icmp eq i8 %80, 32
  br i1 %cmp1.i, label %land.lhs.true.i.if.then95_crit_edge, label %land.lhs.true.i.while.cond.i.preheader_crit_edge

land.lhs.true.i.while.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.preheader

land.lhs.true.i.if.then95_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then95

while.cond.i.preheader:                           ; preds = %land.lhs.true.i.while.cond.i.preheader_crit_edge, %if.end88.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %essid_len.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %conv92, %while.cond.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %essid_len.addr.0.i)
  %tobool.not.i = icmp eq i32 %essid_len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.then95_crit_edge, label %while.body.i

while.cond.i.if.then95_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then95

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %essid_len.addr.0.i, -1
  %arrayidx3.i = getelementptr i8, ptr %ssid89, i32 %dec.i
  %81 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx3.i, align 1
  %cmp5.not.i = icmp eq i8 %82, 0
  br i1 %cmp5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.if.end98_crit_edge

while.body.i.if.end98_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then95:                                        ; preds = %while.cond.i.if.then95_crit_edge, %land.lhs.true.i.if.then95_crit_edge
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 8
  %or97 = or i32 %84, 1
  store i32 %or97, ptr %flags, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %while.body.i.if.end98_crit_edge
  %85 = ptrtoint ptr %SignalStrength to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %SignalStrength, align 1
  %conv100 = zext i8 %86 to i16
  %mul = mul nuw nsw i16 %conv100, 70
  %div = udiv i16 %mul, 100
  %87 = trunc i16 %div to i8
  %conv101 = add nuw i8 %87, 30
  %signal = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 2
  %88 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv101, ptr %signal, align 1
  %sub104 = sub i8 70, %87
  %conv.i185 = zext i8 %sub104 to i16
  %add.i = add nuw nsw i16 %conv.i185, 1
  %89 = lshr i16 %add.i, 1
  %90 = trunc i16 %89 to i8
  %conv108 = add i8 %90, -120
  %noise = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 3
  %91 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv108, ptr %noise, align 2
  %stats109 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 16
  %92 = call ptr @memcpy(ptr %stats109, ptr %stats, i32 96)
  br label %return

return:                                           ; preds = %if.end98, %escape_essid.exit, %do.body56
  %retval.0 = phi i32 [ 0, %if.end98 ], [ 1, %escape_essid.exit ], [ 1, %do.body56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_network(ptr nocapture noundef readonly %ieee, ptr noundef %dst, ptr noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %stats = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 16
  %stats1 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 16
  %0 = call ptr @memcpy(ptr %stats, ptr %stats1, i32 96)
  %capability = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 17
  %1 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %capability, align 8
  %capability2 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 17
  %3 = ptrtoint ptr %capability2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %capability2, align 8
  %rates = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 18
  %rates3 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 18
  %rates_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 19
  %4 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rates_len, align 2
  %conv = zext i8 %5 to i32
  %6 = call ptr @memcpy(ptr %rates, ptr %rates3, i32 %conv)
  %7 = load i8, ptr %rates_len, align 2
  %rates_len6 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 19
  %8 = ptrtoint ptr %rates_len6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %rates_len6, align 2
  %rates_ex = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 20
  %rates_ex8 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 20
  %rates_ex_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 21
  %9 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rates_ex_len, align 1
  %conv10 = zext i8 %10 to i32
  %11 = call ptr @memcpy(ptr %rates_ex, ptr %rates_ex8, i32 %conv10)
  %12 = load i8, ptr %rates_ex_len, align 1
  %rates_ex_len12 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 21
  %13 = ptrtoint ptr %rates_ex_len12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %rates_ex_len12, align 1
  %ssid_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 3
  %14 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not = icmp eq i8 %15, 0
  br i1 %cmp.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then:                                          ; preds = %entry
  %ssid_len15 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 3
  %16 = ptrtoint ptr %ssid_len15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssid_len15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp17 = icmp eq i8 %17, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %hidden_ssid = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 4
  %18 = call ptr @memset(ptr %hidden_ssid, i32 0, i32 33)
  %19 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len, align 8
  %hidden_ssid_len = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 5
  %21 = ptrtoint ptr %hidden_ssid_len to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %hidden_ssid_len, align 2
  br label %if.end39.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = zext i8 %17 to i32
  %ssid27 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 2
  %22 = call ptr @memset(ptr %ssid27, i32 0, i32 %conv16)
  %23 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ssid_len, align 8
  %25 = ptrtoint ptr %ssid_len15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ssid_len15, align 8
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else, %if.then19
  %hidden_ssid.sink = phi ptr [ %hidden_ssid, %if.then19 ], [ %ssid27, %if.else ]
  %ssid = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 2
  %26 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssid_len, align 8
  %conv26 = zext i8 %27 to i32
  %28 = call ptr @memcpy(ptr %hidden_ssid.sink, ptr %ssid, i32 %conv26)
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %entry.if.end39_crit_edge
  %mode = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 23
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mode, align 4
  %mode40 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 23
  %31 = ptrtoint ptr %mode40 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %mode40, align 4
  %flags = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 24
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %flags41 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 24
  %34 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %flags41, align 8
  %time_stamp = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 25
  %35 = ptrtoint ptr %time_stamp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %time_stamp, align 4
  %time_stamp42 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 25
  %37 = ptrtoint ptr %time_stamp42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %time_stamp42, align 4
  %arrayidx45 = getelementptr %struct.rtllib_network, ptr %src, i32 0, i32 25, i32 1
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx45, align 4
  %arrayidx47 = getelementptr %struct.rtllib_network, ptr %dst, i32 0, i32 25, i32 1
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx47, align 4
  %41 = load i32, ptr %flags, align 8
  %and = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end39.if.end52_crit_edge, label %if.then49

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %erp_value = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 29
  %42 = ptrtoint ptr %erp_value to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %erp_value, align 2
  %erp_value50 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 29
  %44 = ptrtoint ptr %erp_value50 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %erp_value50, align 2
  %berp_info_valid = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 54
  %45 = ptrtoint ptr %berp_info_valid to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %berp_info_valid, align 4
  %berp_info_valid51 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 54
  %46 = ptrtoint ptr %berp_info_valid51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %berp_info_valid51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end39.if.end52_crit_edge
  %beacon_interval = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 26
  %47 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %beacon_interval, align 4
  %beacon_interval53 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 26
  %49 = ptrtoint ptr %beacon_interval53 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %beacon_interval53, align 4
  %listen_interval = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 27
  %50 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %listen_interval, align 2
  %listen_interval54 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 27
  %52 = ptrtoint ptr %listen_interval54 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %listen_interval54, align 2
  %atim_window = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 28
  %53 = ptrtoint ptr %atim_window to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %atim_window, align 8
  %atim_window55 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 28
  %55 = ptrtoint ptr %atim_window55 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %atim_window55, align 8
  %dtim_period = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 37
  %56 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dtim_period, align 2
  %dtim_period56 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 37
  %58 = ptrtoint ptr %dtim_period56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %dtim_period56, align 2
  %dtim_data = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 38
  %59 = ptrtoint ptr %dtim_data to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dtim_data, align 1
  %dtim_data57 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 38
  %61 = ptrtoint ptr %dtim_data57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %dtim_data57, align 1
  %last_dtim_sta_time = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 39
  %62 = ptrtoint ptr %last_dtim_sta_time to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %last_dtim_sta_time, align 8
  %last_dtim_sta_time58 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 39
  %64 = ptrtoint ptr %last_dtim_sta_time58 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %last_dtim_sta_time58, align 8
  %tim = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 36
  %tim59 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 36
  %65 = ptrtoint ptr %tim59 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %tim59, align 8
  %67 = ptrtoint ptr %tim to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %tim, align 8
  %bssht = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45
  %68 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bssht, align 8
  %bssht60 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45
  %70 = ptrtoint ptr %bssht60 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %bssht60, align 8
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 7
  %71 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bd_rt2rt_aggregation, align 8
  %bd_rt2rt_aggregation64 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 7
  %73 = ptrtoint ptr %bd_rt2rt_aggregation64 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %bd_rt2rt_aggregation64, align 8
  %bd_ht_cap_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 2
  %74 = ptrtoint ptr %bd_ht_cap_len to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bd_ht_cap_len, align 2
  %bd_ht_cap_len67 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 2
  %76 = ptrtoint ptr %bd_ht_cap_len67 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %bd_ht_cap_len67, align 2
  %bd_ht_cap_buf = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 1
  %bd_ht_cap_buf71 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 1
  %77 = load i16, ptr %bd_ht_cap_len, align 2
  %conv75 = zext i16 %77 to i32
  %78 = call ptr @memcpy(ptr %bd_ht_cap_buf, ptr %bd_ht_cap_buf71, i32 %conv75)
  %bd_ht_info_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 4
  %79 = ptrtoint ptr %bd_ht_info_len to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bd_ht_info_len, align 4
  %bd_ht_info_len78 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 4
  %81 = ptrtoint ptr %bd_ht_info_len78 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %bd_ht_info_len78, align 4
  %bd_ht_info_buf = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 3
  %bd_ht_info_buf82 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 3
  %82 = load i16, ptr %bd_ht_info_len, align 4
  %conv86 = zext i16 %82 to i32
  %83 = call ptr @memcpy(ptr %bd_ht_info_buf, ptr %bd_ht_info_buf82, i32 %conv86)
  %bd_ht_spec_ver = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 5
  %84 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bd_ht_spec_ver, align 8
  %bd_ht_spec_ver89 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 5
  %86 = ptrtoint ptr %bd_ht_spec_ver89 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %bd_ht_spec_ver89, align 8
  %bd_rt2rt_long_slot_time = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 45, i32 8
  %87 = ptrtoint ptr %bd_rt2rt_long_slot_time to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bd_rt2rt_long_slot_time, align 1
  %bd_rt2rt_long_slot_time92 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 45, i32 8
  %89 = ptrtoint ptr %bd_rt2rt_long_slot_time92 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %bd_rt2rt_long_slot_time92, align 1
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 46
  %90 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %broadcom_cap_exist, align 4, !range !343
  %broadcom_cap_exist94 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 46
  %92 = ptrtoint ptr %broadcom_cap_exist94 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %broadcom_cap_exist94, align 4
  %ralink_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 49
  %93 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ralink_cap_exist, align 1, !range !343
  %ralink_cap_exist96 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 49
  %95 = ptrtoint ptr %ralink_cap_exist96 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %ralink_cap_exist96, align 1
  %atheros_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 50
  %96 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %atheros_cap_exist, align 8, !range !343
  %atheros_cap_exist99 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 50
  %98 = ptrtoint ptr %atheros_cap_exist99 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %atheros_cap_exist99, align 8
  %realtek_cap_exit = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 47
  %99 = ptrtoint ptr %realtek_cap_exit to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %realtek_cap_exit, align 1, !range !343
  %realtek_cap_exit102 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 47
  %101 = ptrtoint ptr %realtek_cap_exit102 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %realtek_cap_exit102, align 1
  %marvell_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 48
  %102 = ptrtoint ptr %marvell_cap_exist to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %marvell_cap_exist, align 2, !range !343
  %marvell_cap_exist105 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 48
  %104 = ptrtoint ptr %marvell_cap_exist105 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %marvell_cap_exist105, align 2
  %cisco_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 51
  %105 = ptrtoint ptr %cisco_cap_exist to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %cisco_cap_exist, align 1, !range !343
  %cisco_cap_exist108 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 51
  %107 = ptrtoint ptr %cisco_cap_exist108 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %cisco_cap_exist108, align 1
  %airgo_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 52
  %108 = ptrtoint ptr %airgo_cap_exist to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %airgo_cap_exist, align 2, !range !343
  %airgo_cap_exist111 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 52
  %110 = ptrtoint ptr %airgo_cap_exist111 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %airgo_cap_exist111, align 2
  %unknown_cap_exist = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 53
  %111 = ptrtoint ptr %unknown_cap_exist to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %unknown_cap_exist, align 1, !range !343
  %unknown_cap_exist114 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 53
  %113 = ptrtoint ptr %unknown_cap_exist114 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %unknown_cap_exist114, align 1
  %wpa_ie = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 30
  %wpa_ie117 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 30
  %wpa_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 31
  %114 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wpa_ie_len, align 4
  %116 = call ptr @memcpy(ptr %wpa_ie, ptr %wpa_ie117, i32 %115)
  %117 = load i32, ptr %wpa_ie_len, align 4
  %wpa_ie_len120 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 31
  %118 = ptrtoint ptr %wpa_ie_len120 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %wpa_ie_len120, align 4
  %rsn_ie = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 32
  %rsn_ie122 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 32
  %rsn_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 33
  %119 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rsn_ie_len, align 8
  %121 = call ptr @memcpy(ptr %rsn_ie, ptr %rsn_ie122, i32 %120)
  %122 = load i32, ptr %rsn_ie_len, align 8
  %rsn_ie_len125 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 33
  %123 = ptrtoint ptr %rsn_ie_len125 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %rsn_ie_len125, align 8
  %wzc_ie = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 34
  %wzc_ie127 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 34
  %wzc_ie_len = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 35
  %124 = ptrtoint ptr %wzc_ie_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %wzc_ie_len, align 4
  %126 = call ptr @memcpy(ptr %wzc_ie, ptr %wzc_ie127, i32 %125)
  %127 = load i32, ptr %wzc_ie_len, align 4
  %wzc_ie_len130 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 35
  %128 = ptrtoint ptr %wzc_ie_len130 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %wzc_ie_len130, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %last_scanned = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 22
  %130 = ptrtoint ptr %last_scanned to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %last_scanned, align 8
  %active = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 6, i32 2
  %131 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %active, align 4
  %param_count = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 6, i32 4
  %133 = ptrtoint ptr %param_count to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %param_count, align 4
  %supported = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 6, i32 3
  %135 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %supported, align 4
  %supported134 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 6, i32 3
  %137 = ptrtoint ptr %supported134 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %supported134, align 4
  %138 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags41, align 8
  %and136 = and i32 %139, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end52.if.end141_crit_edge, label %if.then138

if.end52.if.end141_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then138:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %qos_data = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 6
  %qos_data132 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 6
  %140 = call ptr @memcpy(ptr %qos_data, ptr %qos_data132, i32 48)
  %141 = ptrtoint ptr %supported134 to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr = load i32, ptr %supported134, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end52.if.end141_crit_edge
  %142 = phi i32 [ %.pr, %if.then138 ], [ %136, %if.end52.if.end141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %142)
  %cmp144 = icmp eq i32 %142, 1
  br i1 %cmp144, label %if.then146, label %if.end141.if.end183_crit_edge

if.end141.if.end183_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.then146:                                       ; preds = %if.end141
  %ssid_len147 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 3
  %143 = ptrtoint ptr %ssid_len147 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ssid_len147, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool148.not = icmp eq i8 %144, 0
  br i1 %tobool148.not, label %do.body163, label %do.body150

do.body150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_network.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_network, %if.then155)) #12
          to label %if.end183 [label %if.then155], !srcloc !342

if.then155:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  %ssid156 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_network.__UNIQUE_ID_ddebug550, ptr noundef %146, ptr noundef nonnull @.str.50, ptr noundef %ssid156) #12
  br label %if.end183

do.body163:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_network.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_network, %if.then175)) #12
          to label %if.end183 [label %if.then175], !srcloc !342

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #14
  %dev176 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %147 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev176, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @update_network.__UNIQUE_ID_ddebug551, ptr noundef %148, ptr noundef nonnull @.str.51) #12
  br label %if.end183

if.end183:                                        ; preds = %if.then175, %do.body163, %if.then155, %do.body150, %if.end141.if.end183_crit_edge
  %149 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %132, ptr %active, align 4
  %old_param_count = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 6, i32 5
  %150 = ptrtoint ptr %old_param_count to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %134, ptr %old_param_count, align 1
  %wmm_info = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 40
  %151 = ptrtoint ptr %wmm_info to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %wmm_info, align 8
  %wmm_info187 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 40
  %153 = ptrtoint ptr %wmm_info187 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %wmm_info187, align 8
  %wmm_param = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 41
  %154 = ptrtoint ptr %wmm_param to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %wmm_param, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool190.not = icmp eq i8 %155, 0
  br i1 %tobool190.not, label %lor.lhs.false, label %if.end183.if.then208_crit_edge

if.end183.if.then208_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then208

lor.lhs.false:                                    ; preds = %if.end183
  %arrayidx192 = getelementptr %struct.rtllib_network, ptr %src, i32 0, i32 41, i32 1
  %156 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx192, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool195.not = icmp eq i8 %157, 0
  br i1 %tobool195.not, label %lor.lhs.false196, label %lor.lhs.false.if.then208_crit_edge

lor.lhs.false.if.then208_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then208

lor.lhs.false196:                                 ; preds = %lor.lhs.false
  %arrayidx198 = getelementptr %struct.rtllib_network, ptr %src, i32 0, i32 41, i32 2
  %158 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx198, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool201.not = icmp eq i8 %159, 0
  br i1 %tobool201.not, label %lor.lhs.false202, label %lor.lhs.false196.if.then208_crit_edge

lor.lhs.false196.if.then208_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then208

lor.lhs.false202:                                 ; preds = %lor.lhs.false196
  %arrayidx204 = getelementptr %struct.rtllib_network, ptr %src, i32 0, i32 41, i32 3
  %160 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool207.not = icmp eq i8 %161, 0
  br i1 %tobool207.not, label %lor.lhs.false202.if.end213_crit_edge, label %lor.lhs.false202.if.then208_crit_edge

lor.lhs.false202.if.then208_crit_edge:            ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then208

lor.lhs.false202.if.end213_crit_edge:             ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then208:                                       ; preds = %lor.lhs.false202.if.then208_crit_edge, %lor.lhs.false196.if.then208_crit_edge, %lor.lhs.false.if.then208_crit_edge, %if.end183.if.then208_crit_edge
  %wmm_param209 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 41
  %162 = call ptr @memcpy(ptr %wmm_param209, ptr %wmm_param, i32 16)
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %lor.lhs.false202.if.end213_crit_edge
  %SignalStrength = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 56
  %163 = ptrtoint ptr %SignalStrength to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %SignalStrength, align 2
  %SignalStrength214 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 56
  %165 = ptrtoint ptr %SignalStrength214 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %SignalStrength214, align 2
  %RSSI = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 57
  %166 = ptrtoint ptr %RSSI to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %RSSI, align 1
  %RSSI215 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 57
  %168 = ptrtoint ptr %RSSI215 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %RSSI215, align 1
  %Turbo_Enable = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 42
  %169 = ptrtoint ptr %Turbo_Enable to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %Turbo_Enable, align 2
  %Turbo_Enable216 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 42
  %171 = ptrtoint ptr %Turbo_Enable216 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %Turbo_Enable216, align 2
  %CountryIeLen = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 43
  %172 = ptrtoint ptr %CountryIeLen to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %CountryIeLen, align 4
  %CountryIeLen217 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 43
  %174 = ptrtoint ptr %CountryIeLen217 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %CountryIeLen217, align 4
  %CountryIeBuf = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 44
  %CountryIeBuf219 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 44
  %175 = load i16, ptr %CountryIeLen, align 4
  %conv222 = zext i16 %175 to i32
  %176 = call ptr @memcpy(ptr %CountryIeBuf, ptr %CountryIeBuf219, i32 %conv222)
  %bWithAironetIE = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 7
  %177 = ptrtoint ptr %bWithAironetIE to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bWithAironetIE, align 4, !range !343
  %bWithAironetIE224 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 7
  %179 = ptrtoint ptr %bWithAironetIE224 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %bWithAironetIE224, align 4
  %bCkipSupported = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 8
  %180 = ptrtoint ptr %bCkipSupported to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bCkipSupported, align 1, !range !343
  %bCkipSupported227 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 8
  %182 = ptrtoint ptr %bCkipSupported227 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %bCkipSupported227, align 1
  %CcxRmState = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 10
  %CcxRmState230 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 10
  %183 = ptrtoint ptr %CcxRmState230 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %CcxRmState230, align 1
  %185 = ptrtoint ptr %CcxRmState to i32
  call void @__asan_storeN_noabort(i32 %185, i32 2)
  store i16 %184, ptr %CcxRmState, align 1
  %bCcxRmEnable = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 9
  %186 = ptrtoint ptr %bCcxRmEnable to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %bCcxRmEnable, align 2, !range !343
  %bCcxRmEnable233 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 9
  %188 = ptrtoint ptr %bCcxRmEnable233 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %bCcxRmEnable233, align 2
  %MBssidMask = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 12
  %189 = ptrtoint ptr %MBssidMask to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %MBssidMask, align 2
  %MBssidMask235 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 12
  %191 = ptrtoint ptr %MBssidMask235 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %MBssidMask235, align 2
  %bMBssidValid = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 11
  %192 = ptrtoint ptr %bMBssidValid to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bMBssidValid, align 1, !range !343
  %bMBssidValid237 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 11
  %194 = ptrtoint ptr %bMBssidValid237 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %bMBssidValid237, align 1
  %MBssid = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 13
  %MBssid240 = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 13
  %195 = call ptr @memcpy(ptr %MBssid, ptr %MBssid240, i32 6)
  %bWithCcxVerNum = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 14
  %196 = ptrtoint ptr %bWithCcxVerNum to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bWithCcxVerNum, align 1, !range !343
  %bWithCcxVerNum243 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 14
  %198 = ptrtoint ptr %bWithCcxVerNum243 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %bWithCcxVerNum243, align 1
  %BssCcxVerNumber = getelementptr inbounds %struct.rtllib_network, ptr %src, i32 0, i32 15
  %199 = ptrtoint ptr %BssCcxVerNumber to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %BssCcxVerNumber, align 2
  %BssCcxVerNumber245 = getelementptr inbounds %struct.rtllib_network, ptr %dst, i32 0, i32 15
  %201 = ptrtoint ptr %BssCcxVerNumber245 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %BssCcxVerNumber245, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_softmac_new_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @HTInitializeBssDesc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_rx_frame_decrypt(ptr nocapture noundef readonly %ieee, ptr noundef %skb, ptr noundef %crypt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cmp = icmp eq ptr %crypt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_mpdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %decrypt_mpdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_mpdu, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwsec_active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 13
  %4 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %add.ptr, align 2
  %need_sw_enc = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 162
  %7 = ptrtoint ptr %need_sw_enc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_sw_enc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.then2.if.end9_crit_edge, label %if.then4

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i8 %bf.load, -2
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear, ptr %add.ptr, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %11, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv.i = zext i16 %14 to i32
  %and.i = and i32 %conv.i, 12
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %and.i, label %if.end9.rtllib_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb11.i
  ]

if.end9.rtllib_get_hdrlen.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %16 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %16)
  %.not.i = icmp eq i32 %16, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and7.i = and i32 %conv.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 136
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %hdrlen.0.i
  br label %rtllib_get_hdrlen.exit

sw.bb11.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = and i16 %14, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %17)
  %switch.selectcmp.i = icmp eq i16 %17, 192
  %18 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %rtllib_get_hdrlen.exit

rtllib_get_hdrlen.exit:                           ; preds = %sw.bb11.i, %sw.bb.i, %if.end9.rtllib_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end9.rtllib_get_hdrlen.exit_crit_edge ], [ %18, %sw.bb11.i ], [ %spec.select.i, %sw.bb.i ]
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !344
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %decrypt_mpdu11 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %decrypt_mpdu11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %decrypt_mpdu11, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 2
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call12 = tail call i32 %23(ptr noundef %skb, i32 noundef %hdrlen.1.i, ptr noundef %25) #12
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  br i1 %cmp14, label %do.body16, label %rtllib_get_hdrlen.exit.cleanup_crit_edge

rtllib_get_hdrlen.exit.cleanup_crit_edge:         ; preds = %rtllib_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body16:                                        ; preds = %rtllib_get_hdrlen.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_frame_decrypt, %if.then21)) #12
          to label %do.end25 [label %if.then21], !srcloc !342

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug478, ptr noundef %28, ptr noundef nonnull @.str.65, ptr noundef %addr2, i32 noundef %call12) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12)
  %cmp26 = icmp eq i32 %call12, -2
  br i1 %cmp26, label %do.body29, label %do.end25.cleanup_crit_edge

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body29:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_frame_decrypt, %if.then41)) #12
          to label %cleanup [label %if.then41], !srcloc !342

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %dev42 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %29 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev42, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %hdrlen.1.i, 3
  %arrayidx = getelementptr i8, ptr %32, i32 %add
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %35 = lshr i8 %34, 6
  %36 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug479, ptr noundef %30, ptr noundef nonnull @.str.66, i32 noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %do.end25.cleanup_crit_edge, %rtllib_get_hdrlen.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then41 ], [ -1, %do.end25.cleanup_crit_edge ], [ %call12, %rtllib_get_hdrlen.exit.cleanup_crit_edge ], [ -1, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtllib_frag_cache_invalidate(ptr noundef %ieee, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %hdr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %seq_ctl = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %hdr, i32 0, i32 5
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
  %qos_ctl = getelementptr inbounds %struct.rtllib_hdr_4addrqos, ptr %hdr, i32 0, i32 7
  %11 = ptrtoint ptr %qos_ctl to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %qos_ctl, align 1
  %13 = lshr i16 %12, 8
  %14 = and i16 %13, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp13 = icmp eq i16 %14, 0
  br i1 %cmp13, label %if.then.if.end71_crit_edge, label %cond.false

if.then.if.end71_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp16 = icmp ult i16 %14, 3
  br i1 %cmp16, label %cond.false.if.end71_crit_edge, label %cond.false19

cond.false.if.end71_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false19:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp21 = icmp eq i16 %14, 3
  br i1 %cmp21, label %cond.false19.if.end71_crit_edge, label %cond.false24

cond.false19.if.end71_crit_edge:                  ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false24:                                     ; preds = %cond.false19
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then38:                                        ; preds = %if.else
  %qos_ctl39 = getelementptr inbounds %struct.rtllib_hdr_3addrqos, ptr %hdr, i32 0, i32 6
  %15 = ptrtoint ptr %qos_ctl39 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %qos_ctl39, align 1
  %17 = lshr i16 %16, 8
  %18 = and i16 %17, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp44 = icmp eq i16 %18, 0
  br i1 %cmp44, label %if.then38.if.end71_crit_edge, label %cond.false47

if.then38.if.end71_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false47:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp49 = icmp ult i16 %18, 3
  br i1 %cmp49, label %cond.false47.if.end71_crit_edge, label %cond.false52

cond.false47.if.end71_crit_edge:                  ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false52:                                     ; preds = %cond.false47
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp54 = icmp eq i16 %18, 3
  br i1 %cmp54, label %cond.false52.if.end71_crit_edge, label %cond.false57

cond.false52.if.end71_crit_edge:                  ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cond.false57:                                     ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %18)
  %cmp59 = icmp ult i16 %18, 6
  %phi.bo = select i1 %cmp59, i8 3, i8 4
  br label %if.end71

if.end71:                                         ; preds = %cond.false57, %cond.false52.if.end71_crit_edge, %cond.false47.if.end71_crit_edge, %if.then38.if.end71_crit_edge, %if.else.if.end71_crit_edge, %cond.false24, %cond.false19.if.end71_crit_edge, %cond.false.if.end71_crit_edge, %if.then.if.end71_crit_edge
  %tid.0 = phi i8 [ 2, %if.then.if.end71_crit_edge ], [ 1, %cond.false.if.end71_crit_edge ], [ %phi.bo1, %cond.false24 ], [ 2, %cond.false19.if.end71_crit_edge ], [ 2, %if.then38.if.end71_crit_edge ], [ 1, %cond.false47.if.end71_crit_edge ], [ %phi.bo, %cond.false57 ], [ 2, %cond.false52.if.end71_crit_edge ], [ 0, %if.else.if.end71_crit_edge ]
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %hdr, i32 0, i32 3
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %hdr, i32 0, i32 2
  %call = tail call fastcc ptr @rtllib_frag_cache_find(ptr noundef %ieee, i32 noundef %8, i32 noundef -1, i8 noundef zeroext %tid.0, ptr noundef %addr2, ptr noundef %addr1)
  %cmp73 = icmp eq ptr %call, null
  br i1 %cmp73, label %do.body76, label %if.end84

do.body76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_frag_cache_invalidate.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_frag_cache_invalidate, %if.then80)) #12
          to label %cleanup [label %if.then80], !srcloc !342

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_frag_cache_invalidate.__UNIQUE_ID_ddebug477, ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef %8) #12
  br label %cleanup

if.end84:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %skb = getelementptr inbounds %struct.rtllib_frag_entry, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then80, %do.body76
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_rx_frame_decrypt_msdu(ptr nocapture noundef readonly %ieee, ptr noundef %skb, i32 noundef %keyidx, ptr noundef %crypt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %cmp = icmp eq ptr %crypt, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %decrypt_msdu = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %decrypt_msdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %decrypt_msdu, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hwsec_active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 13
  %4 = ptrtoint ptr %hwsec_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hwsec_active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %add.ptr, align 2
  %need_sw_enc = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 162
  %7 = ptrtoint ptr %need_sw_enc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_sw_enc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.then2.if.end9_crit_edge, label %if.then4

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i8 %bf.load, -2
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear, ptr %add.ptr, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then2.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %11, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv.i = zext i16 %14 to i32
  %and.i = and i32 %conv.i, 12
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %and.i, label %if.end9.rtllib_get_hdrlen.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 4, label %sw.bb11.i
  ]

if.end9.rtllib_get_hdrlen.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtllib_get_hdrlen.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %16 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %16)
  %.not.i = icmp eq i32 %16, 768
  %hdrlen.0.i = select i1 %.not.i, i32 30, i32 24
  %and7.i = and i32 %conv.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 136
  %add.i = add nuw nsw i32 %hdrlen.0.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %hdrlen.0.i
  br label %rtllib_get_hdrlen.exit

sw.bb11.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = and i16 %14, 224
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %17)
  %switch.selectcmp.i = icmp eq i16 %17, 192
  %18 = select i1 %switch.selectcmp.i, i32 10, i32 16
  br label %rtllib_get_hdrlen.exit

rtllib_get_hdrlen.exit:                           ; preds = %sw.bb11.i, %sw.bb.i, %if.end9.rtllib_get_hdrlen.exit_crit_edge
  %hdrlen.1.i = phi i32 [ 24, %if.end9.rtllib_get_hdrlen.exit_crit_edge ], [ %18, %sw.bb11.i ], [ %spec.select.i, %sw.bb.i ]
  %refcnt = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !344
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %decrypt_msdu11 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %decrypt_msdu11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %decrypt_msdu11, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %crypt, i32 0, i32 2
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call12 = tail call i32 %23(ptr noundef %skb, i32 noundef %keyidx, i32 noundef %hdrlen.1.i, ptr noundef %25) #12
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14 = icmp slt i32 %call12, 0
  br i1 %cmp14, label %do.body16, label %rtllib_get_hdrlen.exit.cleanup_crit_edge

rtllib_get_hdrlen.exit.cleanup_crit_edge:         ; preds = %rtllib_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body16:                                        ; preds = %rtllib_get_hdrlen.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_frame_decrypt_msdu, %if.then21)) #12
          to label %cleanup [label %if.then21], !srcloc !342

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug480, ptr noundef %28, ptr noundef nonnull @.str.72, ptr noundef %addr2, i32 noundef %keyidx) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body16, %rtllib_get_hdrlen.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then21 ], [ 0, %rtllib_get_hdrlen.exit.cleanup_crit_edge ], [ -1, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rtllib_is_eapol_frame(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %skb, i32 noundef %hdrlen) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp ult i32 %3, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i10 %trunc, label %if.end.cleanup_crit_edge [
    i10 256, label %land.lhs.true
    i10 -512, label %land.lhs.true17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %bcmp57 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr1, ptr noundef dereferenceable(6) %10, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp57)
  %cmp4 = icmp eq i32 %bcmp57, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %addr3 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %5, i32 0, i32 4
  %bcmp58 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr3, ptr noundef dereferenceable(6) %10, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58)
  %cmp10 = icmp ne i32 %bcmp58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp29.old = icmp ult i32 %3, 32
  %or.cond59 = select i1 %cmp10, i1 true, i1 %cmp29.old
  br i1 %or.cond59, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end32_crit_edge

land.lhs.true6.if.end32_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end
  %addr118 = getelementptr inbounds %struct.rtllib_hdr_4addr, ptr %5, i32 0, i32 2
  %dev_addr20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr20, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr118, ptr noundef dereferenceable(6) %12, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp22 = icmp ne i32 %bcmp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp29 = icmp ult i32 %3, 32
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp29
  br i1 %or.cond, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.end32_crit_edge

land.lhs.true17.if.end32_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtllib_frag_cache_find(ptr noundef %ieee, i32 noundef %seq, i32 noundef %frag, i8 noundef zeroext %tid, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag)
  %cmp24 = icmp eq i32 %frag, -1
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053
  %skb = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cmp3.not = icmp eq ptr %1, null
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
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
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %do.body5, label %if.end14

do.body5:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_frag_cache_find.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_frag_cache_find, %if.then8)) #12
          to label %do.end11 [label %if.then8], !srcloc !342

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %seq9 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 1
  %7 = ptrtoint ptr %seq9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq9, align 4
  %last_frag = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 2
  %9 = ptrtoint ptr %last_frag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_frag, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_frag_cache_find.__UNIQUE_ID_ddebug476, ptr noundef %6, ptr noundef nonnull @.str.68, i32 noundef %8, i32 noundef %10) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body5
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #12
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %skb, align 4
  br label %for.inc

if.end14:                                         ; preds = %land.lhs.true
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %skb, align 4
  %cmp16.not = icmp eq ptr %.pr, null
  br i1 %cmp16.not, label %if.end14.for.inc_crit_edge, label %land.lhs.true17

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true17:                                  ; preds = %if.end14
  %seq18 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 1
  %15 = ptrtoint ptr %seq18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %seq)
  %cmp19 = icmp eq i32 %16, %seq
  br i1 %cmp19, label %land.lhs.true20, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %last_frag21 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 2
  %17 = ptrtoint ptr %last_frag21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_frag21, align 4
  %add22 = add i32 %18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %frag)
  %cmp23 = icmp eq i32 %add22, %frag
  %or.cond = or i1 %cmp24, %cmp23
  br i1 %or.cond, label %land.lhs.true25, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %src_addr = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src_addr, ptr noundef dereferenceable(6) %src, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp27 = icmp eq i32 %bcmp, 0
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true25.for.inc_crit_edge

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %dst_addr = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 84, i32 %idxprom, i32 %i.053, i32 5
  %bcmp50 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst_addr, ptr noundef dereferenceable(6) %dst, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %cmp31 = icmp eq i32 %bcmp50, 0
  br i1 %cmp31, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true28.for.inc_crit_edge, %land.lhs.true25.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %do.end11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx2, %land.lhs.true28.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtllib_parse_qos_info_param_IE(ptr nocapture noundef readonly %ieee, ptr noundef readonly %info_element, ptr nocapture noundef %network) unnamed_addr #0 align 64 {
entry:
  %qos_info_element = alloca %struct.rtllib_qos_information_element, align 1
  %param_element = alloca %struct.rtllib_qos_parameter_info, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %qos_info_element) #12
  %0 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %qos_info_element, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %qos_info_element, i32 0, i32 3
  %2 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %qos_info_element, i32 0, i32 4
  %3 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %qos_info_element, i32 0, i32 5
  %4 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %qos_info_element, i32 0, i32 6
  %tobool1.not.i = icmp eq ptr %info_element, null
  br i1 %tobool1.not.i, label %entry.if.else_crit_edge, label %lor.lhs.false2.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false2.i:                                 ; preds = %entry
  %len.i = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 7
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.if.else_crit_edge

lor.lhs.false2.i.if.else_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %7 = call ptr @memcpy(ptr %qos_info_element, ptr %info_element, i32 9)
  %8 = ptrtoint ptr %qos_info_element to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %qos_info_element, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %9)
  %cmp.not.i.i = icmp eq i8 %9, -35
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %if.end.i.i.if.else_crit_edge

if.end.i.i.if.else_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end6.i.i:                                      ; preds = %if.end.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(3) %0, ptr noundef nonnull dereferenceable(3) @qos_oui, i32 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.end6.i.i.if.else_crit_edge

if.end6.i.i.if.else_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end8.i.i:                                      ; preds = %if.end6.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp10.not.i.i = icmp eq i8 %13, 2
  br i1 %cmp10.not.i.i, label %rtllib_read_qos_info_element.exit, label %if.end8.i.i.if.else_crit_edge

if.end8.i.i.if.else_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

rtllib_read_qos_info_element.exit:                ; preds = %if.end8.i.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp15.not.i.i.not = icmp eq i8 %15, 1
  br i1 %cmp15.not.i.i.not, label %if.end17.thread, label %rtllib_read_qos_info_element.exit.if.else_crit_edge

rtllib_read_qos_info_element.exit.if.else_crit_edge: ; preds = %rtllib_read_qos_info_element.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end17.thread:                                  ; preds = %rtllib_read_qos_info_element.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %18 = and i8 %17, 15
  %param_count = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 4
  %19 = ptrtoint ptr %param_count to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %param_count, align 4
  %flags = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or = or i32 %21, 16
  store i32 %or, ptr %flags, align 8
  br label %do.body21

if.else:                                          ; preds = %rtllib_read_qos_info_element.exit.if.else_crit_edge, %if.end8.i.i.if.else_crit_edge, %if.end6.i.i.if.else_crit_edge, %if.end.i.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %lor.lhs.false2.i.if.else_crit_edge, %entry.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %param_element) #12
  %22 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %param_element, i32 0, i32 2
  %23 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %param_element, i32 0, i32 3
  %24 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %param_element, i32 0, i32 4
  %25 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %param_element, i32 0, i32 5
  %26 = getelementptr inbounds %struct.rtllib_qos_information_element, ptr %param_element, i32 0, i32 6
  br i1 %tobool1.not.i, label %if.else.if.end17.thread71_crit_edge, label %lor.lhs.false2.i44

if.else.if.end17.thread71_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

lor.lhs.false2.i44:                               ; preds = %if.else
  %len.i42 = getelementptr inbounds %struct.rtllib_info_element, ptr %info_element, i32 0, i32 1
  %27 = ptrtoint ptr %len.i42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %28)
  %cmp.not.i43 = icmp eq i8 %28, 24
  br i1 %cmp.not.i43, label %if.end.i46, label %lor.lhs.false2.i44.if.end17.thread71_crit_edge

lor.lhs.false2.i44.if.end17.thread71_crit_edge:   ; preds = %lor.lhs.false2.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

if.end.i46:                                       ; preds = %lor.lhs.false2.i44
  %29 = call ptr @memcpy(ptr %param_element, ptr %info_element, i32 26)
  %30 = ptrtoint ptr %param_element to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %param_element, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %31)
  %cmp.not.i.i45 = icmp eq i8 %31, -35
  br i1 %cmp.not.i.i45, label %if.end.i.i49, label %if.end.i46.if.end17.thread71_crit_edge

if.end.i46.if.end17.thread71_crit_edge:           ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

if.end.i.i49:                                     ; preds = %if.end.i46
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp3.not.i.i48 = icmp eq i8 %33, 1
  br i1 %cmp3.not.i.i48, label %if.end6.i.i53, label %if.end.i.i49.if.end17.thread71_crit_edge

if.end.i.i49.if.end17.thread71_crit_edge:         ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

if.end6.i.i53:                                    ; preds = %if.end.i.i49
  %bcmp.i.i51 = call i32 @bcmp(ptr noundef dereferenceable(3) %22, ptr noundef nonnull dereferenceable(3) @qos_oui, i32 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %bcmp.i.i51, 0
  br i1 %tobool.not.i.i52, label %if.end8.i.i56, label %if.end6.i.i53.if.end17.thread71_crit_edge

if.end6.i.i53.if.end17.thread71_crit_edge:        ; preds = %if.end6.i.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

if.end8.i.i56:                                    ; preds = %if.end6.i.i53
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp10.not.i.i55 = icmp eq i8 %35, 2
  br i1 %cmp10.not.i.i55, label %rtllib_read_qos_param_element.exit, label %if.end8.i.i56.if.end17.thread71_crit_edge

if.end8.i.i56.if.end17.thread71_crit_edge:        ; preds = %if.end8.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

rtllib_read_qos_param_element.exit:               ; preds = %if.end8.i.i56
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp15.not.i.i58.not = icmp eq i8 %37, 1
  br i1 %cmp15.not.i.i58.not, label %if.then5, label %rtllib_read_qos_param_element.exit.if.end17.thread71_crit_edge

rtllib_read_qos_param_element.exit.if.end17.thread71_crit_edge: ; preds = %rtllib_read_qos_param_element.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread71

if.then5:                                         ; preds = %rtllib_read_qos_param_element.exit
  %qos_data6 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6
  %wmm_acm.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wmm_acm.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.then5
  %i.01.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtllib_qos_parameter_info, ptr %param_element, i32 0, i32 2, i32 %i.01.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %and.i = lshr i8 %40, 5
  %41 = and i8 %and.i, 3
  %42 = lshr i8 %40, 4
  %43 = and i8 %42, 1
  %conv7.i = zext i8 %41 to i32
  %44 = zext i32 %conv7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %conv7.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb14.i
    i32 3, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool15.not.i = icmp eq i8 %43, 0
  br i1 %tobool15.not.i, label %sw.bb14.i.sw.epilog.i_crit_edge, label %sw.bb14.i.sw.epilog.sink.split.i_crit_edge

sw.bb14.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool21.not.i = icmp eq i8 %43, 0
  br i1 %tobool21.not.i, label %sw.bb20.i.sw.epilog.i_crit_edge, label %sw.bb20.i.sw.epilog.sink.split.i_crit_edge

sw.bb20.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.bb20.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool27.not.i = icmp eq i8 %43, 0
  br i1 %tobool27.not.i, label %sw.default.i.sw.epilog.i_crit_edge, label %sw.default.i.sw.epilog.sink.split.i_crit_edge

sw.default.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i.sw.epilog.sink.split.i_crit_edge, %sw.bb20.i.sw.epilog.sink.split.i_crit_edge, %sw.bb14.i.sw.epilog.sink.split.i_crit_edge, %sw.bb.i.sw.epilog.sink.split.i_crit_edge
  %.sink2.i = phi i32 [ 9, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ 48, %sw.bb14.i.sw.epilog.sink.split.i_crit_edge ], [ 192, %sw.bb20.i.sw.epilog.sink.split.i_crit_edge ], [ 6, %sw.default.i.sw.epilog.sink.split.i_crit_edge ]
  %45 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wmm_acm.i, align 4
  %or30.i = or i32 %46, %.sink2.i
  store i32 %or30.i, ptr %wmm_acm.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.default.i.sw.epilog.i_crit_edge, %sw.bb20.i.sw.epilog.i_crit_edge, %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %47 = and i8 %40, 15
  %arrayidx36.i = getelementptr %struct.rtllib_qos_parameters, ptr %qos_data6, i32 0, i32 2, i32 %conv7.i
  %48 = tail call i8 @llvm.umax.i8(i8 %47, i8 2) #12
  %49 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx36.i, align 1
  %ecw_min_max.i = getelementptr %struct.rtllib_qos_parameter_info, ptr %param_element, i32 0, i32 2, i32 %i.01.i, i32 1
  %50 = ptrtoint ptr %ecw_min_max.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ecw_min_max.i, align 1
  %52 = and i8 %51, 15
  %conv52.i = zext i8 %52 to i16
  %53 = shl nuw nsw i16 %conv52.i, 8
  %arrayidx54.i = getelementptr [4 x i16], ptr %qos_data6, i32 0, i32 %conv7.i
  %54 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %arrayidx54.i, align 1
  %55 = lshr i8 %51, 4
  %conv59.i = zext i8 %55 to i16
  %56 = shl nuw nsw i16 %conv59.i, 8
  %arrayidx61.i = getelementptr %struct.rtllib_qos_parameters, ptr %qos_data6, i32 0, i32 1, i32 %conv7.i
  %57 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %arrayidx61.i, align 1
  %arrayidx69.i = getelementptr %struct.rtllib_qos_parameters, ptr %qos_data6, i32 0, i32 3, i32 %conv7.i
  %58 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %43, ptr %arrayidx69.i, align 1
  %tx_op_limit.i = getelementptr %struct.rtllib_qos_parameter_info, ptr %param_element, i32 0, i32 2, i32 %i.01.i, i32 2
  %59 = ptrtoint ptr %tx_op_limit.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %tx_op_limit.i, align 1
  %arrayidx72.i = getelementptr %struct.rtllib_qos_parameters, ptr %qos_data6, i32 0, i32 4, i32 %conv7.i
  %61 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %arrayidx72.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %if.end17, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end17.thread71:                                ; preds = %rtllib_read_qos_param_element.exit.if.end17.thread71_crit_edge, %if.end8.i.i56.if.end17.thread71_crit_edge, %if.end6.i.i53.if.end17.thread71_crit_edge, %if.end.i.i49.if.end17.thread71_crit_edge, %if.end.i46.if.end17.thread71_crit_edge, %lor.lhs.false2.i44.if.end17.thread71_crit_edge, %if.else.if.end17.thread71_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element) #12
  br label %if.end30

if.end17:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags8 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %62 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags8, align 8
  %or9 = or i32 %63, 8
  store i32 %or9, ptr %flags8, align 8
  %64 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %26, align 1
  %66 = and i8 %65, 15
  %param_count16 = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 4
  %67 = ptrtoint ptr %param_count16 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %param_count16, align 4
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %param_element) #12
  br label %do.body21

do.body21:                                        ; preds = %if.end17, %if.end17.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_parse_qos_info_param_IE.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_parse_qos_info_param_IE, %if.then25)) #12
          to label %do.end28 [label %if.then25], !srcloc !342

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_parse_qos_info_param_IE.__UNIQUE_ID_ddebug502, ptr noundef %69, ptr noundef nonnull @.str.101) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body21
  %supported = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %supported, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end17.thread71
  %rc.069 = phi i32 [ 0, %do.end28 ], [ -1, %if.end17.thread71 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %qos_info_element) #12
  ret i32 %rc.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtllib_act_scanning(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dot11d_update_country(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !122, !124, !125, !127, !128, !130, !132, !134, !136, !137, !138, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !159, !161, !162, !164, !165, !167, !169, !171, !172, !174, !175, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !226, !228, !230, !232, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !253, !254, !256, !258, !260, !262, !263, !265, !267, !269, !270, !271, !273, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339, !340}
!llvm.ident = !{!341}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 543, i32 9}
!2 = !{ptr @__func__.rtllib_FlushRxTsPendingPkts, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 544, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 551, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtllib_FlushRxTsPendingPkts.__UNIQUE_ID_ddebug481, !5, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1515, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtllib_rx._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtllib_rx._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1519, i32 26}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1539, i32 26}
!18 = !{ptr @__ksymtab_rtllib_rx, !19, !"__ksymtab_rtllib_rx", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1550, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2036, i32 4}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug522, !21, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2063, i32 4}
!26 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug525, !25, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2074, i32 29}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2091, i32 4}
!31 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug528, !30, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2114, i32 4}
!34 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug531, !33, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2119, i32 4}
!37 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug532, !36, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2125, i32 4}
!40 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug533, !39, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2129, i32 4}
!43 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug534, !42, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2168, i32 4}
!46 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug535, !45, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2173, i32 4}
!49 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug536, !48, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2178, i32 4}
!52 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug537, !51, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2182, i32 4}
!55 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug538, !54, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2191, i32 4}
!58 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug539, !57, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2200, i32 4}
!61 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug542, !60, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2209, i32 4}
!64 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug543, !63, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2226, i32 4}
!67 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug546, !66, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2245, i32 8}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2249, i32 4}
!72 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug547, !71, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2256, i32 4}
!75 = !{ptr @rtllib_parse_info_param.__UNIQUE_ID_ddebug548, !74, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2528, i32 28}
!78 = !{ptr @__func__.rtllib_legal_channel, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2528, i32 55}
!80 = !{ptr @__ksymtab_rtllib_legal_channel, !81, !"__ksymtab_rtllib_legal_channel", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2536, i32 1}
!82 = !{ptr @rfc1042_header, !83, !"rfc1042_header", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 232, i32 22}
!84 = !{ptr @bridge_tunnel_header, !85, !"bridge_tunnel_header", i1 false, i1 false}
!85 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 236, i32 22}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1330, i32 8}
!88 = !{ptr @__func__.rtllib_rx_InfraAdhoc, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1331, i32 8}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 902, i32 27}
!92 = !{ptr @__func__.rtllib_rx_get_hdrlen, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 903, i32 9}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 947, i32 27}
!96 = !{ptr @__func__.rtllib_rx_check_duplicate, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 948, i32 9}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2715, i32 3}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug557, !99, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2729, i32 3}
!104 = !{ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug558, !103, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2735, i32 3}
!107 = !{ptr @rtllib_rx_mgt.__UNIQUE_ID_ddebug559, !106, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2555, i32 2}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug552, !109, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2577, i32 3}
!114 = !{ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug553, !113, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!115 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2591, i32 9}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2643, i32 4}
!121 = !{ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug554, !120, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2654, i32 3}
!124 = !{ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug555, !123, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2664, i32 3}
!127 = !{ptr @rtllib_process_probe_response.__UNIQUE_ID_ddebug556, !126, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!128 = !{ptr @escape_essid.escaped, !129, !"escaped", i1 false, i1 false}
!129 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 2125, i32 14}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 2128, i32 19}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 2132, i32 37}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2355, i32 3}
!136 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rtllib_network_init.__UNIQUE_ID_ddebug549, !135, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!138 = !{ptr @__func__.IsPassiveChannel, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2515, i32 55}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2472, i32 4}
!142 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @update_network.__UNIQUE_ID_ddebug550, !141, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 2476, i32 4}
!146 = !{ptr @update_network.__UNIQUE_ID_ddebug551, !145, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1021, i32 5}
!149 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @rtllib_rx_data_filter.__UNIQUE_ID_ddebug492, !148, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1068, i32 4}
!153 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rtllib_rx_get_crypt.__UNIQUE_ID_ddebug493, !152, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1099, i32 26}
!157 = !{ptr @__func__.rtllib_rx_decrypt, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1099, i32 55}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1108, i32 3}
!161 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug494, !160, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1111, i32 4}
!164 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug495, !163, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1123, i32 9}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1164, i32 26}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1178, i32 4}
!171 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug496, !170, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1182, i32 4}
!174 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug497, !173, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!175 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug498, !176, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!176 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1193, i32 3}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1199, i32 3}
!179 = !{ptr @rtllib_rx_decrypt.__UNIQUE_ID_ddebug499, !178, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!180 = !{ptr @.str.64, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 309, i32 3}
!182 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug478, !181, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!184 = !{ptr @.str.66, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 312, i32 4}
!186 = !{ptr @rtllib_rx_frame_decrypt.__UNIQUE_ID_ddebug479, !185, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!187 = !{ptr @.str.67, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 68, i32 4}
!189 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @rtllib_frag_cache_find.__UNIQUE_ID_ddebug476, !188, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 189, i32 3}
!193 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @rtllib_frag_cache_invalidate.__UNIQUE_ID_ddebug477, !192, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!195 = !{ptr @.str.71, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 349, i32 3}
!197 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @rtllib_rx_frame_decrypt_msdu.__UNIQUE_ID_ddebug480, !196, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 989, i32 48}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 980, i32 18}
!203 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 981, i32 19}
!205 = !{ptr @.str.76, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 982, i32 20}
!207 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 983, i32 17}
!209 = !{ptr @.str.78, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 984, i32 28}
!211 = !{ptr @eap_types, !212, !"eap_types", i1 false, i1 false}
!212 = !{!"../drivers/staging/rtl8192e/rtllib.h", i32 979, i32 27}
!213 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 833, i32 9}
!215 = !{ptr @__func__.parse_subframe, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 834, i32 9}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 836, i32 9}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 839, i32 9}
!221 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 842, i32 9}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 868, i32 4}
!225 = !{ptr @parse_subframe.__UNIQUE_ID_ddebug491, !224, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1236, i32 20}
!228 = !{ptr @__func__.rtllib_rx_indicate_pkt_legacy, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1236, i32 43}
!230 = !{ptr @.str.85, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 578, i32 2}
!232 = !{ptr @.str.86, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug482, !231, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!234 = !{ptr @.str.87, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 591, i32 3}
!236 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug483, !235, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!237 = !{ptr @.str.88, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 620, i32 3}
!239 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug484, !238, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!240 = !{ptr @.str.89, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 637, i32 3}
!242 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug485, !241, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!243 = !{ptr @.str.90, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 659, i32 5}
!245 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug486, !244, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!246 = !{ptr @.str.91, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 671, i32 5}
!248 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug487, !247, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!249 = !{ptr @.str.92, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 682, i32 8}
!251 = !{ptr @.str.93, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 697, i32 3}
!253 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug488, !252, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!254 = !{ptr @.str.94, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 709, i32 9}
!256 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug489, !257, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!257 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 722, i32 4}
!258 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 744, i32 8}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 755, i32 3}
!262 = !{ptr @RxReorderIndicatePacket.__UNIQUE_ID_ddebug490, !261, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!263 = !{ptr @__func__.rtllib_rx_Monitor, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1481, i32 8}
!265 = !{ptr @.str.97, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1487, i32 27}
!267 = !{ptr @.str.98, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1987, i32 3}
!269 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @rtllib_parse_mife_generic.__UNIQUE_ID_ddebug515, !268, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!271 = !{ptr @.str.100, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1697, i32 3}
!273 = !{ptr @.str.101, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @rtllib_parse_qos_info_param_IE.__UNIQUE_ID_ddebug502, !272, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!275 = !{ptr @qos_oui, !276, !"qos_oui", i1 false, i1 false}
!276 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1552, i32 11}
!277 = !{ptr @.str.102, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1779, i32 11}
!279 = !{ptr @.str.103, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1707, i32 10}
!281 = !{ptr @.str.104, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1709, i32 10}
!283 = !{ptr @.str.105, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1711, i32 10}
!285 = !{ptr @.str.106, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1713, i32 10}
!287 = !{ptr @.str.107, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1715, i32 10}
!289 = !{ptr @.str.108, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1717, i32 10}
!291 = !{ptr @.str.109, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1719, i32 10}
!293 = !{ptr @.str.110, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1721, i32 10}
!295 = !{ptr @.str.111, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1723, i32 10}
!297 = !{ptr @.str.112, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1725, i32 10}
!299 = !{ptr @.str.113, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1727, i32 10}
!301 = !{ptr @.str.114, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1729, i32 10}
!303 = !{ptr @.str.115, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1731, i32 10}
!305 = !{ptr @.str.116, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1733, i32 10}
!307 = !{ptr @.str.117, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1735, i32 10}
!309 = !{ptr @.str.118, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1737, i32 10}
!311 = !{ptr @.str.119, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1739, i32 10}
!313 = !{ptr @.str.120, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1741, i32 10}
!315 = !{ptr @.str.121, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1743, i32 10}
!317 = !{ptr @.str.122, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1745, i32 10}
!319 = !{ptr @.str.123, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1747, i32 10}
!321 = !{ptr @.str.124, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1749, i32 10}
!323 = !{ptr @.str.125, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1751, i32 10}
!325 = !{ptr @.str.126, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1753, i32 10}
!327 = !{ptr @.str.127, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1755, i32 10}
!329 = !{ptr @.str.128, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1757, i32 10}
!331 = !{ptr @.str.129, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/staging/rtl8192e/rtllib_rx.c", i32 1759, i32 10}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"min_enum_size", i32 4}
!335 = !{i32 8, !"branch-target-enforcement", i32 0}
!336 = !{i32 8, !"sign-return-address", i32 0}
!337 = !{i32 8, !"sign-return-address-all", i32 0}
!338 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!339 = !{i32 7, !"uwtable", i32 1}
!340 = !{i32 7, !"frame-pointer", i32 2}
!341 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!342 = !{i64 2148910799, i64 2148910804, i64 2148910817, i64 2148910861, i64 2148910895, i64 2148910916}
!343 = !{i8 0, i8 2}
!344 = !{i64 2148429368, i64 2148429394, i64 2148429423, i64 2148429457, i64 2148429488, i64 2148429511}
!345 = !{i64 2148431833, i64 2148431859, i64 2148431888, i64 2148431922, i64 2148431953, i64 2148431976}
