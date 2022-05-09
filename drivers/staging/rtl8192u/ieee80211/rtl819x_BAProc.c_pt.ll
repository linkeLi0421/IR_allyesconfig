; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.sk_buff = type { %union.anon.2, %union.anon.5, %union.anon.6, [48 x i8], %union.anon.7, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.9, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { i64 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i32, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.11, i32, i32, i32, i16, i16, %union.anon.13, i32, %union.anon.14, %union.anon.15, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.11 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rtl_80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.116, i32 }
%union.anon.116 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._RT_HIGH_THROUGHPUT = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capability_ele, %struct._HT_INFORMATION_ELE, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32 }>
%struct.ht_capability_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct._HT_INFORMATION_ELE = type { i8, [5 x i8], [16 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
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

@ieee80211_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ieee80211_rx_ADDBAReq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ieee80211:  Invalid skb len in BAREQ(%d / %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee80211_rx_ADDBAReq\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr = internal global ptr @ieee80211_rx_ADDBAReq._entry, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017ieee80211: %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.5 = internal global ptr @ieee80211_rx_ADDBAReq._entry.3, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2x \00", [27 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.8 = internal global ptr @ieee80211_rx_ADDBAReq._entry.6, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.11 = internal global ptr @ieee80211_rx_ADDBAReq._entry.9, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.13 = internal global ptr @ieee80211_rx_ADDBAReq._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"====================>rx ADDBAREQ from :%pM\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017ieee80211: Failed to reply on ADDBA_REQ as some capability is not ready(%d, %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.17 = internal global ptr @ieee80211_rx_ADDBAReq._entry.15, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017ieee80211: can't get TS in %s()\0A\00", [61 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.20 = internal global ptr @ieee80211_rx_ADDBAReq._entry.18, section ".printk_index", align 4
@ieee80211_rx_ADDBAReq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: BA Policy is not correct in %s()\0A\00", [49 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBAReq._entry_ptr.23 = internal global ptr @ieee80211_rx_ADDBAReq._entry.21, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ieee80211:  Invalid skb len in BARSP(%d / %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ieee80211_rx_ADDBARsp\00", [42 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr = internal global ptr @ieee80211_rx_ADDBARsp._entry, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017ieee80211: reject to ADDBA_RSP as some capability is not ready(%d, %d, %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr.28 = internal global ptr @ieee80211_rx_ADDBARsp._entry.26, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.25, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr.30 = internal global ptr @ieee80211_rx_ADDBARsp._entry.29, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017ieee80211: OnADDBARsp(): Recv ADDBA Rsp. Drop because already admit it! \0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr.33 = internal global ptr @ieee80211_rx_ADDBARsp._entry.31, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017ieee80211: OnADDBARsp(): Recv ADDBA Rsp. BA invalid, DELBA! \0A\00", [32 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr.36 = internal global ptr @ieee80211_rx_ADDBARsp._entry.34, section ".printk_index", align 4
@ieee80211_rx_ADDBARsp._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017ieee80211: OnADDBARsp(): Recv ADDBA Rsp. BA is admitted! Status code:%X\0A\00", [53 x i8] zeroinitializer }, align 32
@ieee80211_rx_ADDBARsp._entry_ptr.39 = internal global ptr @ieee80211_rx_ADDBARsp._entry.37, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017ieee80211:  Invalid skb len in DELBA(%d / %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ieee80211_rx_DELBA\00", [45 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr = internal global ptr @ieee80211_rx_DELBA._entry, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017ieee80211: received DELBA while QOS or HT is not supported(%d, %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.44 = internal global ptr @ieee80211_rx_DELBA._entry.42, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.41, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.46 = internal global ptr @ieee80211_rx_DELBA._entry.45, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.41, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.48 = internal global ptr @ieee80211_rx_DELBA._entry.47, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.41, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.50 = internal global ptr @ieee80211_rx_DELBA._entry.49, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.41, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.52 = internal global ptr @ieee80211_rx_DELBA._entry.51, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.41, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: can't get TS for RXTS in %s()\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.55 = internal global ptr @ieee80211_rx_DELBA._entry.53, section ".printk_index", align 4
@ieee80211_rx_DELBA._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ieee80211: can't get TS for TXTS in %s()\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_rx_DELBA._entry_ptr.58 = internal global ptr @ieee80211_rx_DELBA._entry.56, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ieee80211_send_ADDBARsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017ieee80211: alloc skb error in function %s()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ieee80211_send_ADDBARsp\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_send_ADDBARsp._entry_ptr = internal global ptr @ieee80211_send_ADDBARsp._entry, section ".printk_index", align 4
@ieee80211_ADDBA._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017ieee80211: ========>%s(), frame(%d) sentd to:%pM, ieee->dev:%p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ieee80211_ADDBA\00", [16 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr = internal global ptr @ieee80211_ADDBA._entry, section ".printk_index", align 4
@ieee80211_ADDBA._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017ieee80211: pBA is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr.65 = internal global ptr @ieee80211_ADDBA._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"=====>to send ADDBARSP\0A\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.62, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr.68 = internal global ptr @ieee80211_ADDBA._entry.67, section ".printk_index", align 4
@ieee80211_ADDBA._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.62, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr.70 = internal global ptr @ieee80211_ADDBA._entry.69, section ".printk_index", align 4
@ieee80211_ADDBA._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.62, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr.72 = internal global ptr @ieee80211_ADDBA._entry.71, section ".printk_index", align 4
@ieee80211_ADDBA._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.62, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_ADDBA._entry_ptr.74 = internal global ptr @ieee80211_ADDBA._entry.73, section ".printk_index", align 4
@ieee80211_send_DELBA._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.75, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ieee80211_send_DELBA\00", [43 x i8] zeroinitializer }, align 32
@ieee80211_send_DELBA._entry_ptr = internal global ptr @ieee80211_send_DELBA._entry, section ".printk_index", align 4
@ieee80211_DELBA._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ieee80211: ========>%s(), ReasonCode(%d) sentd to:%pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ieee80211_DELBA\00", [16 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr = internal global ptr @ieee80211_DELBA._entry, section ".printk_index", align 4
@ieee80211_DELBA._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.77, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr.79 = internal global ptr @ieee80211_DELBA._entry.78, section ".printk_index", align 4
@ieee80211_DELBA._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.77, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr.81 = internal global ptr @ieee80211_DELBA._entry.80, section ".printk_index", align 4
@ieee80211_DELBA._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.77, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr.83 = internal global ptr @ieee80211_DELBA._entry.82, section ".printk_index", align 4
@ieee80211_DELBA._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.77, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr.85 = internal global ptr @ieee80211_DELBA._entry.84, section ".printk_index", align 4
@ieee80211_DELBA._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.77, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017ieee80211: <=====%s()\0A\00", [39 x i8] zeroinitializer }, align 32
@ieee80211_DELBA._entry_ptr.88 = internal global ptr @ieee80211_DELBA._entry.86, section ".printk_index", align 4
@ieee80211_send_ADDBAReq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.89, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ieee80211_send_ADDBAReq\00", [40 x i8] zeroinitializer }, align 32
@ieee80211_send_ADDBAReq._entry_ptr = internal global ptr @ieee80211_send_ADDBAReq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 327, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 334, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 345, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 352, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 365, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 375, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 426, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 446, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 463, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 479, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 482, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 486, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 546, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 555, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 559, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 574, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 589, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 279, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 115, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 117, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 145, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 165, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 305, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 196, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 232, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 234, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [55 x i8] c"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 258, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @ieee80211_ADDBA._entry, ptr @ieee80211_ADDBA._entry.63, ptr @ieee80211_ADDBA._entry.67, ptr @ieee80211_ADDBA._entry.69, ptr @ieee80211_ADDBA._entry.71, ptr @ieee80211_ADDBA._entry.73, ptr @ieee80211_ADDBA._entry_ptr, ptr @ieee80211_ADDBA._entry_ptr.65, ptr @ieee80211_ADDBA._entry_ptr.68, ptr @ieee80211_ADDBA._entry_ptr.70, ptr @ieee80211_ADDBA._entry_ptr.72, ptr @ieee80211_ADDBA._entry_ptr.74, ptr @ieee80211_DELBA._entry, ptr @ieee80211_DELBA._entry.78, ptr @ieee80211_DELBA._entry.80, ptr @ieee80211_DELBA._entry.82, ptr @ieee80211_DELBA._entry.84, ptr @ieee80211_DELBA._entry.86, ptr @ieee80211_DELBA._entry_ptr, ptr @ieee80211_DELBA._entry_ptr.79, ptr @ieee80211_DELBA._entry_ptr.81, ptr @ieee80211_DELBA._entry_ptr.83, ptr @ieee80211_DELBA._entry_ptr.85, ptr @ieee80211_DELBA._entry_ptr.88, ptr @ieee80211_rx_ADDBAReq._entry, ptr @ieee80211_rx_ADDBAReq._entry.12, ptr @ieee80211_rx_ADDBAReq._entry.15, ptr @ieee80211_rx_ADDBAReq._entry.18, ptr @ieee80211_rx_ADDBAReq._entry.21, ptr @ieee80211_rx_ADDBAReq._entry.3, ptr @ieee80211_rx_ADDBAReq._entry.6, ptr @ieee80211_rx_ADDBAReq._entry.9, ptr @ieee80211_rx_ADDBAReq._entry_ptr, ptr @ieee80211_rx_ADDBAReq._entry_ptr.11, ptr @ieee80211_rx_ADDBAReq._entry_ptr.13, ptr @ieee80211_rx_ADDBAReq._entry_ptr.17, ptr @ieee80211_rx_ADDBAReq._entry_ptr.20, ptr @ieee80211_rx_ADDBAReq._entry_ptr.23, ptr @ieee80211_rx_ADDBAReq._entry_ptr.5, ptr @ieee80211_rx_ADDBAReq._entry_ptr.8, ptr @ieee80211_rx_ADDBARsp._entry, ptr @ieee80211_rx_ADDBARsp._entry.26, ptr @ieee80211_rx_ADDBARsp._entry.29, ptr @ieee80211_rx_ADDBARsp._entry.31, ptr @ieee80211_rx_ADDBARsp._entry.34, ptr @ieee80211_rx_ADDBARsp._entry.37, ptr @ieee80211_rx_ADDBARsp._entry_ptr, ptr @ieee80211_rx_ADDBARsp._entry_ptr.28, ptr @ieee80211_rx_ADDBARsp._entry_ptr.30, ptr @ieee80211_rx_ADDBARsp._entry_ptr.33, ptr @ieee80211_rx_ADDBARsp._entry_ptr.36, ptr @ieee80211_rx_ADDBARsp._entry_ptr.39, ptr @ieee80211_rx_DELBA._entry, ptr @ieee80211_rx_DELBA._entry.42, ptr @ieee80211_rx_DELBA._entry.45, ptr @ieee80211_rx_DELBA._entry.47, ptr @ieee80211_rx_DELBA._entry.49, ptr @ieee80211_rx_DELBA._entry.51, ptr @ieee80211_rx_DELBA._entry.53, ptr @ieee80211_rx_DELBA._entry.56, ptr @ieee80211_rx_DELBA._entry_ptr, ptr @ieee80211_rx_DELBA._entry_ptr.44, ptr @ieee80211_rx_DELBA._entry_ptr.46, ptr @ieee80211_rx_DELBA._entry_ptr.48, ptr @ieee80211_rx_DELBA._entry_ptr.50, ptr @ieee80211_rx_DELBA._entry_ptr.52, ptr @ieee80211_rx_DELBA._entry_ptr.55, ptr @ieee80211_rx_DELBA._entry_ptr.58, ptr @ieee80211_send_ADDBAReq._entry, ptr @ieee80211_send_ADDBAReq._entry_ptr, ptr @ieee80211_send_ADDBARsp._entry, ptr @ieee80211_send_ADDBARsp._entry_ptr, ptr @ieee80211_send_DELBA._entry, ptr @ieee80211_send_DELBA._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.87, ptr @.str.89], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBAReq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_ADDBARsp._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_rx_DELBA._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_send_ADDBARsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ADDBA._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_send_DELBA._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_DELBA._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_send_ADDBAReq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ResetBaEntry(ptr nocapture noundef writeonly %pBA) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 1
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_ADDBAReq(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  %pTS = alloca ptr, align 4
  %BA = alloca %struct.ba_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS) #6
  %0 = ptrtoint ptr %pTS to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pTS, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %2)
  %cmp = icmp ult i32 %2, 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %3 = load i32, ptr @ieee80211_debug_level, align 4
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef 33) #9
  br label %cleanup

do.body7:                                         ; preds = %entry
  %and8 = and i32 %3, 1073743872
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073743872, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 1073743872
  br i1 %cmp9, label %if.then10, label %do.body7.do.end39_crit_edge

do.body7.do.end39_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.then10:                                        ; preds = %do.body7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17174 = icmp sgt i32 %7, 0
  br i1 %cmp17174, label %if.then10.do.end20_crit_edge, label %if.then10.do.end34_crit_edge

if.then10.do.end34_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.then10.do.end20_crit_edge:                     ; preds = %if.then10
  br label %do.end20

do.end20:                                         ; preds = %for.inc.do.end20_crit_edge, %if.then10.do.end20_crit_edge
  %i.0175 = phi i32 [ %add, %for.inc.do.end20_crit_edge ], [ 0, %if.then10.do.end20_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %i.0175
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  %add = add nuw nsw i32 %i.0175, 1
  %10 = and i32 %add, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp eq i32 %10, 0
  br i1 %cmp23, label %do.end28, label %do.end20.for.inc_crit_edge

do.end20.for.inc_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end28:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end28, %do.end20.for.inc_crit_edge
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %cmp17 = icmp slt i32 %add, %12
  br i1 %cmp17, label %for.inc.do.end20_crit_edge, label %for.inc.do.end34_crit_edge

for.inc.do.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

for.inc.do.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end34:                                         ; preds = %for.inc.do.end34_crit_edge, %if.then10.do.end34_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body7.do.end39_crit_edge
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data40, align 4
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %14, i32 0, i32 3
  %add.ptr42 = getelementptr i8, ptr %14, i32 26
  %add.ptr43 = getelementptr i8, ptr %14, i32 27
  %add.ptr44 = getelementptr i8, ptr %14, i32 29
  %add.ptr45 = getelementptr %struct.rtl_80211_hdr_3addr, ptr %14, i32 7
  %15 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ieee, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef %addr2) #9
  %active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 1
  %17 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp46 = icmp eq i32 %18, 0
  br i1 %cmp46, label %do.end39.if.then49_crit_edge, label %lor.lhs.false

do.end39.if.then49_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

lor.lhs.false:                                    ; preds = %do.end39
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %19 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool48.not = icmp eq i8 %22, 0
  br i1 %tobool48.not, label %lor.lhs.false.if.then49_crit_edge, label %if.end68

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %do.end39.if.then49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %23 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool52.not = icmp sgt i32 %23, -1
  br i1 %tobool52.not, label %if.then49.OnADDBAReq_Fail_crit_edge, label %do.end56

if.then49.OnADDBAReq_Fail_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBAReq_Fail

do.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %pHTInfo61 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %24 = ptrtoint ptr %pHTInfo61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pHTInfo61, align 8
  %bCurrentHTSupport62 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bCurrentHTSupport62 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bCurrentHTSupport62, align 1
  %conv63 = zext i8 %27 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %conv63) #9
  br label %OnADDBAReq_Fail

if.end68:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %add.ptr43, align 2
  %bf.lshr = lshr i16 %bf.load, 10
  %29 = trunc i16 %bf.lshr to i8
  %conv69 = and i8 %29, 15
  %call70 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2, i8 noundef zeroext %conv69, i32 noundef 1, i1 noundef zeroext true) #6
  br i1 %call70, label %if.end84, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %30 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool74.not = icmp sgt i32 %30, -1
  br i1 %tobool74.not, label %if.then71.OnADDBAReq_Fail_crit_edge, label %do.end78

if.then71.OnADDBAReq_Fail_crit_edge:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBAReq_Fail

do.end78:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #9
  br label %OnADDBAReq_Fail

if.end84:                                         ; preds = %if.end68
  %31 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load85 = load i16, ptr %add.ptr43, align 2
  %32 = and i16 %bf.load85, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp89 = icmp eq i16 %32, 0
  br i1 %cmp89, label %if.then91, label %if.end104

if.then91:                                        ; preds = %if.end84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %33 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool94.not = icmp sgt i32 %33, -1
  br i1 %tobool94.not, label %if.then91.OnADDBAReq_Fail_crit_edge, label %do.end98

if.then91.OnADDBAReq_Fail_crit_edge:              ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBAReq_Fail

do.end98:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1) #9
  br label %OnADDBAReq_Fail

if.end104:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pTS, align 4
  %rx_admitted_ba_record = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5
  %valid.i = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid.i, align 4
  %call.i = call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record) #6
  %37 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr42, align 1
  %dialog_token = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %dialog_token to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %dialog_token, align 1
  %param_set = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr43, align 2
  %42 = ptrtoint ptr %param_set to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %param_set, align 2
  %43 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr44, align 2
  %timeout_value = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5, i32 4
  %45 = ptrtoint ptr %timeout_value to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %timeout_value, align 4
  %start_seq_ctrl = getelementptr inbounds %struct.rx_ts_record, ptr %35, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr45, align 2
  %48 = ptrtoint ptr %start_seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %start_seq_ctrl, align 2
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 196
  %49 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 8
  %51 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ieee, align 8
  %call106 = call zeroext i1 %50(ptr noundef %52) #6
  %53 = ptrtoint ptr %param_set to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load109 = load i16, ptr %param_set, align 2
  %bf.clear110 = and i16 %bf.load109, -1024
  %. = select i1 %call106, i16 1, i16 32
  %bf.set114 = or i16 %bf.clear110, %.
  store i16 %bf.set114, ptr %param_set, align 2
  %54 = ptrtoint ptr %timeout_value to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %timeout_value, align 4
  call fastcc void @ActivateBAEntry(ptr noundef %rx_admitted_ba_record, i16 noundef zeroext %55)
  call fastcc void @ieee80211_send_ADDBARsp(ptr noundef %ieee, ptr noundef %addr2, ptr noundef %rx_admitted_ba_record, i16 noundef zeroext 0)
  br label %cleanup

OnADDBAReq_Fail:                                  ; preds = %do.end98, %if.then91.OnADDBAReq_Fail_crit_edge, %do.end78, %if.then71.OnADDBAReq_Fail_crit_edge, %do.end56, %if.then49.OnADDBAReq_Fail_crit_edge
  %rc.0 = phi i16 [ 37, %do.end56 ], [ 37, %if.then49.OnADDBAReq_Fail_crit_edge ], [ 38, %do.end98 ], [ 38, %if.then91.OnADDBAReq_Fail_crit_edge ], [ 37, %do.end78 ], [ 37, %if.then71.OnADDBAReq_Fail_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %BA) #6
  %56 = call ptr @memset(ptr %BA, i32 255, i32 56)
  %param_set117 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 3
  %57 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr43, align 2
  %59 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr44, align 2
  %timeout_value118 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 4
  %61 = ptrtoint ptr %timeout_value118 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %timeout_value118, align 4
  %62 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr42, align 1
  %dialog_token119 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 2
  %64 = ptrtoint ptr %dialog_token119 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %dialog_token119, align 1
  %bf.set123 = or i16 %58, 16384
  %65 = ptrtoint ptr %param_set117 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %bf.set123, ptr %param_set117, align 2
  %call.i173 = call fastcc ptr @ieee80211_ADDBA(ptr noundef %ieee, ptr noundef %addr2, ptr noundef nonnull %BA, i16 noundef zeroext %rc.0, i8 noundef zeroext 1) #6
  %tobool.not.i = icmp eq ptr %call.i173, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %OnADDBAReq_Fail
  call void @__sanitizer_cov_trace_pc() #8
  call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i173, ptr noundef %ieee) #6
  br label %ieee80211_send_ADDBARsp.exit

do.body.i:                                        ; preds = %OnADDBAReq_Fail
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %66 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %tobool1.not.i = icmp sgt i32 %66, -1
  br i1 %tobool1.not.i, label %do.body.i.ieee80211_send_ADDBARsp.exit_crit_edge, label %do.end.i

do.body.i.ieee80211_send_ADDBARsp.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_send_ADDBARsp.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #9
  br label %ieee80211_send_ADDBARsp.exit

ieee80211_send_ADDBARsp.exit:                     ; preds = %do.end.i, %do.body.i.ieee80211_send_ADDBARsp.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %BA) #6
  br label %cleanup

cleanup:                                          ; preds = %ieee80211_send_ADDBARsp.exit, %if.end104, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ieee80211_send_ADDBARsp.exit ], [ 0, %if.end104 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ActivateBAEntry(ptr noundef %pBA, i16 noundef zeroext %Time) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 1
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %Time)
  %cmp.not = icmp eq i16 %Time, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i16 %Time to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #6
  %add = add i32 %call2.i, %1
  %call3 = tail call i32 @mod_timer(ptr noundef %pBA, i32 noundef %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_send_ADDBARsp(ptr noundef %ieee, ptr noundef %dst, ptr noundef %pBA, i16 noundef zeroext %StatusCode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_ADDBA(ptr noundef %ieee, ptr noundef %dst, ptr noundef %pBA, i16 noundef zeroext %StatusCode, i8 noundef zeroext 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call, ptr noundef %ieee) #6
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %0 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %tobool1.not = icmp sgt i32 %0, -1
  br i1 %tobool1.not, label %do.body.if.end7_crit_edge, label %do.end

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_ADDBARsp(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  %pTS = alloca ptr, align 4
  %BA = alloca %struct.ba_record, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTS) #6
  %0 = ptrtoint ptr %pTS to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pTS, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %2)
  %cmp = icmp ult i32 %2, 33
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %3 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %2, i32 noundef 33) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %5, i32 0, i32 3
  %add.ptr7 = getelementptr i8, ptr %5, i32 26
  %add.ptr8 = getelementptr i8, ptr %5, i32 27
  %add.ptr9 = getelementptr i8, ptr %5, i32 29
  %add.ptr10 = getelementptr i8, ptr %5, i32 31
  %active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 1
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.end6.do.body17_crit_edge, label %lor.lhs.false

if.end6.do.body17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

lor.lhs.false:                                    ; preds = %if.end6
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %8 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false.do.body17_crit_edge, label %lor.lhs.false13

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %bCurrentAMPDUEnable = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %9, i32 0, i32 20
  %12 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bCurrentAMPDUEnable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %lor.lhs.false13.do.body17_crit_edge, label %if.end37

lor.lhs.false13.do.body17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false13.do.body17_crit_edge, %lor.lhs.false.do.body17_crit_edge, %if.end6.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %14 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool19.not = icmp sgt i32 %14, -1
  br i1 %tobool19.not, label %do.body17.OnADDBARsp_Reject_crit_edge, label %do.end23

do.body17.OnADDBARsp_Reject_crit_edge:            ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBARsp_Reject

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %pHTInfo28 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %15 = ptrtoint ptr %pHTInfo28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pHTInfo28, align 8
  %bCurrentHTSupport29 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bCurrentHTSupport29 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bCurrentHTSupport29, align 1
  %conv = zext i8 %18 to i32
  %bCurrentAMPDUEnable31 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %16, i32 0, i32 20
  %19 = ptrtoint ptr %bCurrentAMPDUEnable31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bCurrentAMPDUEnable31, align 1
  %conv32 = zext i8 %20 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %7, i32 noundef %conv, i32 noundef %conv32) #9
  br label %OnADDBARsp_Reject

if.end37:                                         ; preds = %lor.lhs.false13
  %21 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %add.ptr9, align 2
  %bf.lshr = lshr i16 %bf.load, 10
  %22 = trunc i16 %bf.lshr to i8
  %conv38 = and i8 %22, 15
  %call39 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2, i8 noundef zeroext %conv38, i32 noundef 0, i1 noundef zeroext false) #6
  br i1 %call39, label %if.end53, label %do.body41

do.body41:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %23 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool43.not = icmp sgt i32 %23, -1
  br i1 %tobool43.not, label %do.body41.OnADDBARsp_Reject_crit_edge, label %do.end47

do.body41.OnADDBARsp_Reject_crit_edge:            ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBARsp_Reject

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.25) #9
  br label %OnADDBARsp_Reject

if.end53:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pTS, align 4
  %add_ba_req_in_progress = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add_ba_req_in_progress, align 4
  %tx_pending_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 2
  %tx_admitted_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3
  %valid = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool54.not = icmp eq i8 %28, 0
  br i1 %tobool54.not, label %if.else, label %do.body56

do.body56:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %29 = load i32, ptr @ieee80211_debug_level, align 4
  %and57 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %do.end62

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.else:                                          ; preds = %if.end53
  %valid68 = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %valid68 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool69.not = icmp eq i8 %31, 0
  br i1 %tobool69.not, label %if.else.do.body76_crit_edge, label %lor.lhs.false70

if.else.do.body76_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

lor.lhs.false70:                                  ; preds = %if.else
  %32 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr7, align 1
  %dialog_token = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dialog_token, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp73.not = icmp eq i8 %33, %35
  br i1 %cmp73.not, label %do.body89, label %lor.lhs.false70.do.body76_crit_edge

lor.lhs.false70.do.body76_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.body76:                                        ; preds = %lor.lhs.false70.do.body76_crit_edge, %if.else.do.body76_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %36 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %tobool78.not = icmp sgt i32 %36, -1
  br i1 %tobool78.not, label %do.body76.OnADDBARsp_Reject_crit_edge, label %do.end82

do.body76.OnADDBARsp_Reject_crit_edge:            ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %OnADDBARsp_Reject

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %OnADDBARsp_Reject

do.body89:                                        ; preds = %lor.lhs.false70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %37 = load i32, ptr @ieee80211_debug_level, align 4
  %and90 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.do.end101_crit_edge, label %do.end95

do.body89.do.end101_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end101

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr8, align 2
  %conv97 = zext i16 %39 to i32
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv97) #9
  br label %do.end101

do.end101:                                        ; preds = %do.end95, %do.body89.do.end101_crit_edge
  %40 = ptrtoint ptr %valid68 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %valid68, align 4
  %call.i = call i32 @del_timer_sync(ptr noundef %tx_pending_ba_record) #6
  %41 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp105 = icmp eq i16 %42, 0
  br i1 %cmp105, label %if.then107, label %if.else118

if.then107:                                       ; preds = %do.end101
  %43 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load108 = load i16, ptr %add.ptr9, align 2
  %44 = and i16 %bf.load108, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp112 = icmp eq i16 %44, 0
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pTS, align 4
  %add_ba_req_delayed = getelementptr inbounds %struct.tx_ts_record, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %add_ba_req_delayed to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %add_ba_req_delayed, align 1
  %48 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %valid, align 4
  %call.i168 = call i32 @del_timer_sync(ptr noundef %tx_admitted_ba_record) #6
  br label %OnADDBARsp_Reject

if.end115:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr7, align 1
  %dialog_token116 = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %dialog_token116 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %dialog_token116, align 1
  %52 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr10, align 2
  %timeout_value = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3, i32 4
  %54 = ptrtoint ptr %timeout_value to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %timeout_value, align 4
  %start_seq_ctrl = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3, i32 5
  %start_seq_ctrl117 = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 2, i32 5
  %55 = ptrtoint ptr %start_seq_ctrl117 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %start_seq_ctrl117, align 2
  %57 = ptrtoint ptr %start_seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %start_seq_ctrl, align 2
  %param_set = getelementptr inbounds %struct.tx_ts_record, ptr %25, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr9, align 2
  %60 = ptrtoint ptr %param_set to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %param_set, align 2
  %61 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %valid, align 4
  %call.i170 = call i32 @del_timer_sync(ptr noundef %tx_admitted_ba_record) #6
  %62 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr10, align 2
  call fastcc void @ActivateBAEntry(ptr noundef %tx_admitted_ba_record, i16 noundef zeroext %63)
  br label %cleanup

if.else118:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pTS, align 4
  %add_ba_req_delayed119 = getelementptr inbounds %struct.tx_ts_record, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %add_ba_req_delayed119 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %add_ba_req_delayed119, align 1
  br label %cleanup

OnADDBARsp_Reject:                                ; preds = %if.then114, %do.end82, %do.body76.OnADDBARsp_Reject_crit_edge, %do.end47, %do.body41.OnADDBARsp_Reject_crit_edge, %do.end23, %do.body17.OnADDBARsp_Reject_crit_edge
  %ReasonCode.0 = phi i16 [ 37, %if.then114 ], [ 38, %do.end23 ], [ 38, %do.body17.OnADDBARsp_Reject_crit_edge ], [ 38, %do.end47 ], [ 38, %do.body41.OnADDBARsp_Reject_crit_edge ], [ 38, %do.end82 ], [ 38, %do.body76.OnADDBARsp_Reject_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %BA) #6
  %67 = call ptr @memset(ptr %BA, i32 255, i32 56)
  %param_set121 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 3
  %68 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr9, align 2
  %70 = ptrtoint ptr %param_set121 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %param_set121, align 2
  call fastcc void @ieee80211_send_DELBA(ptr noundef %ieee, ptr noundef %addr2, ptr noundef nonnull %BA, i32 noundef 0, i16 noundef zeroext %ReasonCode.0)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %BA) #6
  br label %cleanup

cleanup:                                          ; preds = %OnADDBARsp_Reject, %if.else118, %if.end115, %do.end62, %do.body56.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %OnADDBARsp_Reject ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.end62 ], [ -1, %do.body56.cleanup_crit_edge ], [ 0, %if.else118 ], [ 0, %if.end115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_send_DELBA(ptr noundef %ieee, ptr noundef %dst, ptr nocapture noundef readonly %pBA, i32 noundef %TxRxSelect, i16 noundef zeroext %ReasonCode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 47
  %0 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom.i, align 4
  %conv.i = add i32 %1, 6
  %call.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %do.body.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and.i = and i32 %2, 536872960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.if.end8.i_crit_edge, label %do.end.i

do.body.i.if.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i16 %ReasonCode to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %conv4.i, ptr noundef %dst) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end.i, %do.body.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %param_set.i = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 3
  %3 = ptrtoint ptr %param_set.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load11.i = load i16, ptr %param_set.i, align 2
  %conv17.i = and i32 %conv.i, 65535
  %add18.i = add nuw nsw i32 %conv17.i, 24
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add18.i, i32 noundef 2592) #6
  %tobool20.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool20.not.i, label %do.body, label %if.end22.i

if.end22.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp.i = icmp eq i32 %TxRxSelect, 0
  %bf.shl.i = select i1 %cmp.i, i16 16, i16 0
  %bf.lshr.i = lshr i16 %bf.load11.i, 10
  %bf.clear12.i = and i16 %bf.lshr.i, 15
  %bf.set16.i = or i16 %bf.clear12.i, %bf.shl.i
  %4 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call24.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 24) #6
  %addr1.i = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call24.i, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %addr1.i, ptr %dst, i32 6)
  %addr2.i = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call24.i, i32 0, i32 3
  %11 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ieee, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr.i, align 64
  %15 = call ptr @memcpy(ptr %addr2.i, ptr %14, i32 6)
  %addr3.i = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call24.i, i32 0, i32 4
  %current_network.i = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %16 = call ptr @memcpy(ptr %addr3.i, ptr %current_network.i, i32 6)
  %17 = ptrtoint ptr %call24.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 -12288, ptr %call24.i, align 1
  %call28.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6) #6
  %incdec.ptr.i = getelementptr i8, ptr %call28.i, i32 1
  %18 = ptrtoint ptr %call28.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %call28.i, align 1
  %incdec.ptr29.i = getelementptr i8, ptr %call28.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %incdec.ptr.i, align 1
  %20 = shl nuw nsw i16 %bf.set16.i, 8
  %21 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %incdec.ptr29.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call28.i, i32 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %ReasonCode) #6
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %add.ptr.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %24 = load i32, ptr @ieee80211_debug_level, align 4
  %and32.i = and i32 %24, 1073743872
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073743872, i32 %and32.i)
  %cmp33.i = icmp eq i32 %and32.i, 1073743872
  br i1 %cmp33.i, label %if.then35.i, label %if.end22.i.do.end67.i_crit_edge

if.end22.i.do.end67.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

if.then35.i:                                      ; preds = %if.end22.i
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.77) #9
  %len41.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %len41.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp42112.i = icmp sgt i32 %28, 0
  br i1 %cmp42112.i, label %if.then35.i.do.end46.i_crit_edge, label %if.then35.i.do.end62.i_crit_edge

if.then35.i.do.end62.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i

if.then35.i.do.end46.i_crit_edge:                 ; preds = %if.then35.i
  br label %do.end46.i

do.end46.i:                                       ; preds = %for.inc.i.do.end46.i_crit_edge, %if.then35.i.do.end46.i_crit_edge
  %i.0113.i = phi i32 [ %add50.i, %for.inc.i.do.end46.i_crit_edge ], [ 0, %if.then35.i.do.end46.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %26, i32 %i.0113.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv48.i = zext i8 %30 to i32
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv48.i) #9
  %add50.i = add nuw nsw i32 %i.0113.i, 1
  %31 = and i32 %add50.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp51.i = icmp eq i32 %31, 0
  br i1 %cmp51.i, label %do.end56.i, label %do.end46.i.for.inc.i_crit_edge

do.end46.i.for.inc.i_crit_edge:                   ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end56.i:                                       ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end56.i, %do.end46.i.for.inc.i_crit_edge
  %32 = ptrtoint ptr %len41.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len41.i, align 4
  %cmp42.i = icmp slt i32 %add50.i, %33
  br i1 %cmp42.i, label %for.inc.i.do.end46.i_crit_edge, label %for.inc.i.do.end62.i_crit_edge

for.inc.i.do.end62.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i

for.inc.i.do.end46.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46.i

do.end62.i:                                       ; preds = %for.inc.i.do.end62.i_crit_edge, %if.then35.i.do.end62.i_crit_edge
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end62.i, %if.end22.i.do.end67.i_crit_edge
  %call68.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %do.end67.i.if.then_crit_edge, label %do.body71.i

do.end67.i.if.then_crit_edge:                     ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.body71.i:                                      ; preds = %do.end67.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %34 = load i32, ptr @ieee80211_debug_level, align 4
  %and72.i = and i32 %34, 536872960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %do.body71.i.if.then_crit_edge, label %do.end77.i

do.body71.i.if.then_crit_edge:                    ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

do.end77.i:                                       ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.77) #9
  br label %if.then

if.then:                                          ; preds = %do.end77.i, %do.body71.i.if.then_crit_edge, %do.end67.i.if.then_crit_edge
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i.i.i, ptr noundef %ieee) #6
  br label %if.end7

do.body:                                          ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %35 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool1.not = icmp sgt i32 %35, -1
  br i1 %tobool1.not, label %do.body.if.end7_crit_edge, label %do.end

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.75) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rx_DELBA(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  %pRxTs = alloca ptr, align 4
  %pTxTs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %1)
  %cmp = icmp ult i32 %1, 30
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %do.body.cleanup114_crit_edge, label %do.end

do.body.cleanup114_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup114

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %1, i32 noundef 30) #9
  br label %cleanup114

if.end6:                                          ; preds = %entry
  %active = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82, i32 8, i32 1
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.end6.do.body10_crit_edge, label %lor.lhs.false

if.end6.do.body10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

lor.lhs.false:                                    ; preds = %if.end6
  %pHTInfo = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %5 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.body10_crit_edge, label %do.body28

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %if.end6.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %9 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool12.not = icmp sgt i32 %9, -1
  br i1 %tobool12.not, label %do.body10.cleanup114_crit_edge, label %do.end16

do.body10.cleanup114_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup114

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %pHTInfo21 = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 12
  %10 = ptrtoint ptr %pHTInfo21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pHTInfo21, align 8
  %bCurrentHTSupport22 = getelementptr inbounds %struct._RT_HIGH_THROUGHPUT, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bCurrentHTSupport22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bCurrentHTSupport22, align 1
  %conv = zext i8 %13 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %4, i32 noundef %conv) #9
  br label %cleanup114

do.body28:                                        ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %14 = load i32, ptr @ieee80211_debug_level, align 4
  %and29 = and i32 %14, 1073743872
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073743872, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 1073743872
  br i1 %cmp30, label %if.then32, label %do.body28.do.end63_crit_edge

do.body28.do.end63_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.then32:                                        ; preds = %do.body28
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41) #9
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp39146 = icmp sgt i32 %18, 0
  br i1 %cmp39146, label %if.then32.do.end43_crit_edge, label %if.then32.do.end58_crit_edge

if.then32.do.end58_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

if.then32.do.end43_crit_edge:                     ; preds = %if.then32
  br label %do.end43

do.end43:                                         ; preds = %for.inc.do.end43_crit_edge, %if.then32.do.end43_crit_edge
  %i.0147 = phi i32 [ %add, %for.inc.do.end43_crit_edge ], [ 0, %if.then32.do.end43_crit_edge ]
  %arrayidx = getelementptr i8, ptr %16, i32 %i.0147
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv45 = zext i8 %20 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv45) #9
  %add = add nuw nsw i32 %i.0147, 1
  %21 = and i32 %add, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp47 = icmp eq i32 %21, 0
  br i1 %cmp47, label %do.end52, label %do.end43.for.inc_crit_edge

do.end43.for.inc_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end52:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end52, %do.end43.for.inc_crit_edge
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %cmp39 = icmp slt i32 %add, %23
  br i1 %cmp39, label %for.inc.do.end43_crit_edge, label %for.inc.do.end58_crit_edge

for.inc.do.end58_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

for.inc.do.end43_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end58:                                         ; preds = %for.inc.do.end58_crit_edge, %if.then32.do.end58_crit_edge
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %do.end63

do.end63:                                         ; preds = %do.end58, %do.body28.do.end63_crit_edge
  %data64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data64, align 4
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %25, i32 0, i32 3
  %arrayidx66 = getelementptr %struct.rtl_80211_hdr_3addr, ptr %25, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %arrayidx66, align 2
  %27 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp68.not = icmp eq i16 %27, 0
  br i1 %cmp68.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %do.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pRxTs) #6
  %28 = ptrtoint ptr %pRxTs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %pRxTs, align 4, !annotation !142
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load71 = load i16, ptr %arrayidx66, align 2
  %30 = trunc i16 %bf.load71 to i8
  %conv73 = and i8 %30, 15
  %call74 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pRxTs, ptr noundef %addr2, i8 noundef zeroext %conv73, i32 noundef 1, i1 noundef zeroext false) #6
  br i1 %call74, label %if.end88, label %do.body76

do.body76:                                        ; preds = %if.then70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %31 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %tobool78.not = icmp sgt i32 %31, -1
  br i1 %tobool78.not, label %cleanup114.critedge, label %do.end82

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTs) #6
  br label %cleanup114

if.end88:                                         ; preds = %if.then70
  %32 = ptrtoint ptr %pRxTs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pRxTs, align 4
  %valid.i = getelementptr inbounds %struct.rx_ts_record, ptr %33, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.end88.RxTsDeleteBA.exit_crit_edge, label %if.then.i

if.end88.RxTsDeleteBA.exit_crit_edge:             ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %RxTsDeleteBA.exit

if.then.i:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %valid.i, align 4
  %call.i.i = call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record.i) #6
  br label %RxTsDeleteBA.exit

RxTsDeleteBA.exit:                                ; preds = %if.then.i, %if.end88.RxTsDeleteBA.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTs) #6
  br label %cleanup114

if.else:                                          ; preds = %do.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTxTs) #6
  %37 = ptrtoint ptr %pTxTs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %pTxTs, align 4, !annotation !142
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load90 = load i16, ptr %arrayidx66, align 2
  %39 = trunc i16 %bf.load90 to i8
  %conv92 = and i8 %39, 15
  %call93 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTxTs, ptr noundef %addr2, i8 noundef zeroext %conv92, i32 noundef 0, i1 noundef zeroext false) #6
  br i1 %call93, label %if.end107, label %do.body95

do.body95:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %40 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool97.not = icmp sgt i32 %40, -1
  br i1 %tobool97.not, label %cleanup114.critedge138, label %do.end101

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs) #6
  br label %cleanup114

if.end107:                                        ; preds = %if.else
  %41 = ptrtoint ptr %pTxTs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pTxTs, align 4
  %using_ba = getelementptr inbounds %struct.tx_ts_record, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %using_ba to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %using_ba, align 2
  %add_ba_req_in_progress = getelementptr inbounds %struct.tx_ts_record, ptr %42, i32 0, i32 4
  %44 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %add_ba_req_in_progress, align 4
  %add_ba_req_delayed = getelementptr inbounds %struct.tx_ts_record, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %add_ba_req_delayed to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %add_ba_req_delayed, align 1
  %ts_add_ba_timer = getelementptr inbounds %struct.tx_ts_record, ptr %42, i32 0, i32 7
  %call108 = call i32 @del_timer_sync(ptr noundef %ts_add_ba_timer) #6
  %46 = ptrtoint ptr %pTxTs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pTxTs, align 4
  %tx_admitted_ba_record.i = getelementptr inbounds %struct.tx_ts_record, ptr %47, i32 0, i32 3
  %valid.i141 = getelementptr inbounds %struct.tx_ts_record, ptr %47, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %valid.i141 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i142 = icmp eq i8 %49, 0
  br i1 %tobool.not.i142, label %if.end107.if.end.i_crit_edge, label %if.then.i144

if.end107.if.end.i_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i144:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pending_ba_record.i = getelementptr inbounds %struct.tx_ts_record, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %valid.i141 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %valid.i141, align 4
  %call.i.i143 = call i32 @del_timer_sync(ptr noundef %tx_pending_ba_record.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i144, %if.end107.if.end.i_crit_edge
  %valid1.i = getelementptr inbounds %struct.tx_ts_record, ptr %47, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %valid1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %valid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i = icmp eq i8 %52, 0
  br i1 %tobool2.not.i, label %if.end.i.TxTsDeleteBA.exit_crit_edge, label %if.then3.i

if.end.i.TxTsDeleteBA.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %valid1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %valid1.i, align 4
  %call.i2.i = call i32 @del_timer_sync(ptr noundef %tx_admitted_ba_record.i) #6
  br label %TxTsDeleteBA.exit

TxTsDeleteBA.exit:                                ; preds = %if.then3.i, %if.end.i.TxTsDeleteBA.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs) #6
  br label %cleanup114

cleanup114.critedge:                              ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTs) #6
  br label %cleanup114

cleanup114.critedge138:                           ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs) #6
  br label %cleanup114

cleanup114:                                       ; preds = %cleanup114.critedge138, %cleanup114.critedge, %TxTsDeleteBA.exit, %do.end101, %RxTsDeleteBA.exit, %do.end82, %do.end16, %do.body10.cleanup114_crit_edge, %do.end, %do.body.cleanup114_crit_edge
  %retval.2 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup114_crit_edge ], [ -1, %do.end16 ], [ -1, %do.body10.cleanup114_crit_edge ], [ -1, %cleanup114.critedge ], [ -1, %do.end82 ], [ -1, %cleanup114.critedge138 ], [ -1, %do.end101 ], [ 0, %TxTsDeleteBA.exit ], [ 0, %RxTsDeleteBA.exit ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TsInitAddBA(ptr noundef %ieee, ptr noundef %pTS, i8 noundef zeroext %Policy, i8 noundef zeroext %bOverwritePending) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bOverwritePending)
  %tobool1.not = icmp eq i8 %bOverwritePending, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_pending_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %valid, align 4
  %call.i = tail call i32 @del_timer_sync(ptr noundef %tx_pending_ba_record) #6
  %dialog_token = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dialog_token, align 1
  %inc = add i8 %4, 1
  store i8 %inc, ptr %dialog_token, align 1
  %param_set = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 3
  %5 = and i8 %Policy, 1
  %bf.value = zext i8 %5 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 14
  %t_spec = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 4
  %6 = ptrtoint ptr %t_spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load7 = load i32, ptr %t_spec, align 4
  %sh.diff = lshr i32 %bf.load7, 17
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl12 = and i16 %tr.sh.diff, 15360
  %bf.set14 = or i16 %bf.shl, %bf.shl12
  %bf.set18 = or i16 %bf.set14, 32
  %7 = ptrtoint ptr %param_set to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.set18, ptr %param_set, align 2
  %timeout_value = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %timeout_value to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %timeout_value, align 4
  %tx_cur_seq = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 1
  %9 = ptrtoint ptr %tx_cur_seq to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_cur_seq, align 4
  %11 = add i16 %10, 3
  %12 = and i16 %11, 4095
  %start_seq_ctrl = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %start_seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load21 = load i16, ptr %start_seq_ctrl, align 2
  %bf.clear23 = and i16 %bf.load21, -4096
  %bf.set24 = or i16 %bf.clear23, %12
  store i16 %bf.set24, ptr %start_seq_ctrl, align 2
  %14 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %valid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 20
  %call3.i = tail call i32 @mod_timer(ptr noundef %tx_pending_ba_record, i32 noundef %add.i) #6
  %addr = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 3
  %call.i42 = tail call fastcc ptr @ieee80211_ADDBA(ptr noundef %ieee, ptr noundef %addr, ptr noundef %tx_pending_ba_record, i16 noundef zeroext 0, i8 noundef zeroext 0) #6
  %tobool.not.i = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i42, ptr noundef %ieee) #6
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %16 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool1.not.i = icmp sgt i32 %16, -1
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.89) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TsInitDelBA(ptr noundef %ieee, ptr noundef %pTsCommonInfo, i32 noundef %TxRxSelect) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %TxRxSelect to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %TxRxSelect, label %entry.if.end14_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then6
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %entry
  %tx_admitted_ba_record.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3
  %valid.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.then
  %valid1.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %valid1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.end.i.TxTsDeleteBA.exit.thread_crit_edge

if.end.i.TxTsDeleteBA.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit.thread

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end.i.thread:                                  ; preds = %if.then
  %tx_pending_ba_record.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2
  %5 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %tx_pending_ba_record.i) #6
  %valid1.i38 = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %valid1.i38 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid1.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i39 = icmp eq i8 %7, 0
  br i1 %tobool2.not.i39, label %if.end.i.thread.if.then1_crit_edge, label %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge

if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit.thread

if.end.i.thread.if.then1_crit_edge:               ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

TxTsDeleteBA.exit.thread:                         ; preds = %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge, %if.end.i.TxTsDeleteBA.exit.thread_crit_edge
  %valid1.i40 = phi ptr [ %valid1.i38, %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge ], [ %valid1.i, %if.end.i.TxTsDeleteBA.exit.thread_crit_edge ]
  %8 = ptrtoint ptr %valid1.i40 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %valid1.i40, align 4
  %call.i2.i = tail call i32 @del_timer_sync(ptr noundef %tx_admitted_ba_record.i) #6
  br label %if.then1

if.then1:                                         ; preds = %TxTsDeleteBA.exit.thread, %if.end.i.thread.if.then1_crit_edge
  %valid1.i41 = phi ptr [ %valid1.i40, %TxTsDeleteBA.exit.thread ], [ %valid1.i38, %if.end.i.thread.if.then1_crit_edge ]
  %addr = getelementptr inbounds %struct.ts_common_info, ptr %pTsCommonInfo, i32 0, i32 3
  %9 = ptrtoint ptr %valid1.i41 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid1.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %tx_pending_ba_record = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2
  %cond = select i1 %tobool2.not, ptr %tx_pending_ba_record, ptr %tx_admitted_ba_record.i
  tail call fastcc void @ieee80211_send_DELBA(ptr noundef %ieee, ptr noundef %addr, ptr noundef %cond, i32 noundef 0, i16 noundef zeroext 37)
  br label %if.end14

if.then6:                                         ; preds = %entry
  %valid.i28 = getelementptr inbounds %struct.rx_ts_record, ptr %pTsCommonInfo, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %valid.i28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i29 = icmp eq i8 %12, 0
  br i1 %tobool.not.i29, label %if.then6.if.end14_crit_edge, label %if.then9

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTsCommonInfo, i32 0, i32 5
  %13 = ptrtoint ptr %valid.i28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %valid.i28, align 4
  %call.i.i30 = tail call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record.i) #6
  %addr10 = getelementptr inbounds %struct.ts_common_info, ptr %pTsCommonInfo, i32 0, i32 3
  tail call fastcc void @ieee80211_send_DELBA(ptr noundef %ieee, ptr noundef %addr10, ptr noundef %rx_admitted_ba_record.i, i32 noundef 1, i16 noundef zeroext 37)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then6.if.end14_crit_edge, %if.then1, %if.end.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @BaSetupTimeOut(ptr nocapture noundef writeonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add_ba_req_in_progress = getelementptr i8, ptr %t, i32 112
  %0 = ptrtoint ptr %add_ba_req_in_progress to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %add_ba_req_in_progress, align 4
  %add_ba_req_delayed = getelementptr i8, ptr %t, i32 113
  %1 = ptrtoint ptr %add_ba_req_delayed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %add_ba_req_delayed, align 1
  %valid = getelementptr inbounds %struct.ba_record, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TxBaInactTimeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr i8, ptr %t, i32 108
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  %valid.i = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pending_ba_record.i = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %tx_pending_ba_record.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %valid1.i = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %valid1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %if.end.i.TxTsDeleteBA.exit_crit_edge, label %if.then3.i

if.end.i.TxTsDeleteBA.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %valid1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %valid1.i, align 4
  %call.i2.i = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %TxTsDeleteBA.exit

TxTsDeleteBA.exit:                                ; preds = %if.then3.i, %if.end.i.TxTsDeleteBA.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -408
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -520
  %idx.neg = add nsw i32 %.neg, -344
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %addr = getelementptr i8, ptr %t, i32 -304
  tail call fastcc void @ieee80211_send_DELBA(ptr noundef %add.ptr3, ptr noundef %addr, ptr noundef %t, i32 noundef 0, i16 noundef zeroext 39)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RxBaInactTimeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr i8, ptr %t, i32 59
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 1
  %valid.i = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.RxTsDeleteBA.exit_crit_edge, label %if.then.i

entry.RxTsDeleteBA.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %RxTsDeleteBA.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %RxTsDeleteBA.exit

RxTsDeleteBA.exit:                                ; preds = %if.then.i, %entry.RxTsDeleteBA.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -408
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -468
  %idx.neg = add nsw i32 %.neg, -8688
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %addr = getelementptr i8, ptr %t, i32 -304
  tail call fastcc void @ieee80211_send_DELBA(ptr noundef %add.ptr3, ptr noundef %addr, ptr noundef %t, i32 noundef 1, i16 noundef zeroext 39)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ADDBA(ptr nocapture noundef readonly %ieee, ptr noundef %Dst, ptr noundef readonly %pBA, i16 noundef zeroext %StatusCode, i8 noundef zeroext %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 47
  %0 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom, align 4
  %conv = add i32 %1, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %2 = load i32, ptr @ieee80211_debug_level, align 4
  %and = and i32 %2, 536872960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %type to i32
  %3 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ieee, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %conv2, ptr noundef %Dst, ptr noundef %4) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %cmp = icmp eq ptr %pBA, null
  br i1 %cmp, label %do.body7, label %if.end19

do.body7:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %5 = load i32, ptr @ieee80211_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool9.not = icmp sgt i32 %5, -1
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.body7.cleanup.sink.split_crit_edge

do.body7.cleanup.sink.split_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end4
  %conv20 = and i32 %conv, 65535
  %add21 = add nuw nsw i32 %conv20, 24
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add21, i32 noundef 2592) #6
  %tobool23.not = icmp eq ptr %call.i.i, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %9 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_headroom, align 4
  %11 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %10
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call27 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #6
  %addr1 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call27, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %addr1, ptr %Dst, i32 6)
  %addr2 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call27, i32 0, i32 3
  %15 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ieee, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = call ptr @memcpy(ptr %addr2, ptr %18, i32 6)
  %addr3 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, ptr %call27, i32 0, i32 4
  %current_network = getelementptr inbounds %struct.ieee80211_device, ptr %ieee, i32 0, i32 82
  %20 = call ptr @memcpy(ptr %addr3, ptr %current_network, i32 6)
  %21 = ptrtoint ptr %call27 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 -12288, ptr %call27, align 1
  %call32 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 9) #6
  %incdec.ptr = getelementptr i8, ptr %call32, i32 1
  %22 = ptrtoint ptr %call32 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %call32, align 1
  %incdec.ptr33 = getelementptr i8, ptr %call32, i32 2
  %23 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %type, ptr %incdec.ptr, align 1
  %dialog_token = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 2
  %24 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dialog_token, align 1
  %incdec.ptr34 = getelementptr i8, ptr %call32, i32 3
  %26 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %incdec.ptr33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp36 = icmp eq i8 %type, 1
  br i1 %cmp36, label %if.then38, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ieee to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ieee, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.66) #9
  %29 = tail call i16 @llvm.bswap.i16(i16 %StatusCode) #6
  %30 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %incdec.ptr34, align 1
  %add.ptr = getelementptr i8, ptr %call32, i32 5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end25.if.end40_crit_edge
  %tag.0 = phi ptr [ %add.ptr, %if.then38 ], [ %incdec.ptr34, %if.end25.if.end40_crit_edge ]
  %param_set = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 3
  %31 = ptrtoint ptr %param_set to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %param_set, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  %34 = ptrtoint ptr %tag.0 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %tag.0, align 1
  %add.ptr41 = getelementptr i8, ptr %tag.0, i32 2
  %timeout_value = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 4
  %35 = ptrtoint ptr %timeout_value to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %timeout_value, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #6
  %38 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %add.ptr41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp44 = icmp eq i8 %type, 0
  br i1 %cmp44, label %if.then46, label %if.end40.do.body49_crit_edge

if.end40.do.body49_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body49

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr42 = getelementptr i8, ptr %tag.0, i32 4
  %start_seq_ctrl = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 5
  %39 = ptrtoint ptr %start_seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %start_seq_ctrl, align 2
  %41 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %add.ptr42, align 1
  br label %do.body49

do.body49:                                        ; preds = %if.then46, %if.end40.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ieee80211_debug_level to i32))
  %42 = load i32, ptr @ieee80211_debug_level, align 4
  %and50 = and i32 %42, 1073743872
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073743872, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 1073743872
  br i1 %cmp51, label %if.then53, label %do.body49.cleanup_crit_edge

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %do.body49
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62) #9
  %len60 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp61126 = icmp sgt i32 %46, 0
  br i1 %cmp61126, label %if.then53.do.end65_crit_edge, label %if.then53.cleanup.sink.split_crit_edge

if.then53.cleanup.sink.split_crit_edge:           ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then53.do.end65_crit_edge:                     ; preds = %if.then53
  br label %do.end65

do.end65:                                         ; preds = %for.inc.do.end65_crit_edge, %if.then53.do.end65_crit_edge
  %i.0127 = phi i32 [ %add69, %for.inc.do.end65_crit_edge ], [ 0, %if.then53.do.end65_crit_edge ]
  %arrayidx = getelementptr i8, ptr %44, i32 %i.0127
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %conv67 = zext i8 %48 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv67) #9
  %add69 = add nuw nsw i32 %i.0127, 1
  %49 = and i32 %add69, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp70 = icmp eq i32 %49, 0
  br i1 %cmp70, label %do.end75, label %do.end65.for.inc_crit_edge

do.end65.for.inc_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end75:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end75, %do.end65.for.inc_crit_edge
  %50 = ptrtoint ptr %len60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len60, align 4
  %cmp61 = icmp slt i32 %add69, %51
  br i1 %cmp61, label %for.inc.do.end65_crit_edge, label %for.inc.cleanup.sink.split_crit_edge

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.inc.do.end65_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end65

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then53.cleanup.sink.split_crit_edge, %do.body7.cleanup.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.64, %do.body7.cleanup.sink.split_crit_edge ], [ @.str.10, %if.then53.cleanup.sink.split_crit_edge ], [ @.str.10, %for.inc.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ null, %do.body7.cleanup.sink.split_crit_edge ], [ %call.i.i, %if.then53.cleanup.sink.split_crit_edge ], [ %call.i.i, %for.inc.cleanup.sink.split_crit_edge ]
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body49.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.body7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body7.cleanup_crit_edge ], [ null, %if.end19.cleanup_crit_edge ], [ %call.i.i, %do.body49.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @softmac_mgmt_xmit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !124, !125, !127, !128, !129, !131, !132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 327, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ieee80211_rx_ADDBAReq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 334, i32 2}
!8 = !{ptr @ieee80211_rx_ADDBAReq._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ieee80211_rx_ADDBAReq._entry.6, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.8, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ieee80211_rx_ADDBAReq._entry.9, !7, !"_entry", i1 false, i1 false}
!15 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.11, !7, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ieee80211_rx_ADDBAReq._entry.12, !7, !"_entry", i1 false, i1 false}
!17 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.13, !7, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 345, i32 25}
!20 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 352, i32 3}
!22 = !{ptr @ieee80211_rx_ADDBAReq._entry.15, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.17, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 365, i32 3}
!26 = !{ptr @ieee80211_rx_ADDBAReq._entry.18, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.20, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.22, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 375, i32 3}
!30 = !{ptr @ieee80211_rx_ADDBAReq._entry.21, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ieee80211_rx_ADDBAReq._entry_ptr.23, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 426, i32 3}
!34 = !{ptr @.str.25, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ieee80211_rx_ADDBARsp._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 446, i32 3}
!39 = !{ptr @ieee80211_rx_ADDBARsp._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ieee80211_rx_ADDBARsp._entry.29, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 463, i32 3}
!43 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 479, i32 3}
!46 = !{ptr @ieee80211_rx_ADDBARsp._entry.31, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr.33, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 482, i32 3}
!50 = !{ptr @ieee80211_rx_ADDBARsp._entry.34, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr.36, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 486, i32 3}
!54 = !{ptr @ieee80211_rx_ADDBARsp._entry.37, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ieee80211_rx_ADDBARsp._entry_ptr.39, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 546, i32 3}
!58 = !{ptr @.str.41, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ieee80211_rx_DELBA._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ieee80211_rx_DELBA._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 555, i32 3}
!63 = !{ptr @ieee80211_rx_DELBA._entry.42, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ieee80211_rx_DELBA._entry_ptr.44, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @ieee80211_rx_DELBA._entry.45, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 559, i32 2}
!67 = !{ptr @ieee80211_rx_DELBA._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ieee80211_rx_DELBA._entry.47, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ieee80211_rx_DELBA._entry_ptr.48, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ieee80211_rx_DELBA._entry.49, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @ieee80211_rx_DELBA._entry_ptr.50, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ieee80211_rx_DELBA._entry.51, !66, !"_entry", i1 false, i1 false}
!73 = !{ptr @ieee80211_rx_DELBA._entry_ptr.52, !66, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.54, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 574, i32 4}
!76 = !{ptr @ieee80211_rx_DELBA._entry.53, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ieee80211_rx_DELBA._entry_ptr.55, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.57, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 589, i32 4}
!80 = !{ptr @ieee80211_rx_DELBA._entry.56, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ieee80211_rx_DELBA._entry_ptr.58, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 279, i32 3}
!84 = !{ptr @.str.60, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ieee80211_send_ADDBARsp._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ieee80211_send_ADDBARsp._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 115, i32 2}
!89 = !{ptr @.str.62, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ieee80211_ADDBA._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ieee80211_ADDBA._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.64, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 117, i32 3}
!94 = !{ptr @ieee80211_ADDBA._entry.63, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ieee80211_ADDBA._entry_ptr.65, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.66, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 145, i32 26}
!98 = !{ptr @ieee80211_ADDBA._entry.67, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 165, i32 2}
!100 = !{ptr @ieee80211_ADDBA._entry_ptr.68, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ieee80211_ADDBA._entry.69, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ieee80211_ADDBA._entry_ptr.70, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @ieee80211_ADDBA._entry.71, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @ieee80211_ADDBA._entry_ptr.72, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ieee80211_ADDBA._entry.73, !99, !"_entry", i1 false, i1 false}
!106 = !{ptr @ieee80211_ADDBA._entry_ptr.74, !99, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.75, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 305, i32 3}
!109 = !{ptr @ieee80211_send_DELBA._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ieee80211_send_DELBA._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.76, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 196, i32 3}
!113 = !{ptr @.str.77, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ieee80211_DELBA._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ieee80211_DELBA._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @ieee80211_DELBA._entry.78, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 232, i32 2}
!118 = !{ptr @ieee80211_DELBA._entry_ptr.79, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @ieee80211_DELBA._entry.80, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ieee80211_DELBA._entry_ptr.81, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @ieee80211_DELBA._entry.82, !117, !"_entry", i1 false, i1 false}
!122 = !{ptr @ieee80211_DELBA._entry_ptr.83, !117, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @ieee80211_DELBA._entry.84, !117, !"_entry", i1 false, i1 false}
!124 = !{ptr @ieee80211_DELBA._entry_ptr.85, !117, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.87, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 234, i32 3}
!127 = !{ptr @ieee80211_DELBA._entry.86, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ieee80211_DELBA._entry_ptr.88, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.89, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c", i32 258, i32 3}
!131 = !{ptr @ieee80211_send_ADDBAReq._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ieee80211_send_ADDBAReq._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
