; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl819x_BAProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl819x_BAProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.116 }
%struct.anon.116 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.117 }
%struct.anon.117 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
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
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rtllib_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
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

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid skb len in BAREQ(%d / %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtllib_rx_ADDBAReq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017rtllib_92e:====>rx ADDBAREQ from : %pM\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtllib_rx_ADDBAReq\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/rtl8192e/rtl819x_BAProc.c\00", [54 x i8] zeroinitializer }, align 32
@rtllib_rx_ADDBAReq._entry_ptr = internal global ptr @rtllib_rx_ADDBAReq._entry, section ".printk_index", align 4
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Failed to reply on ADDBA_REQ as some capability is not ready(%d, %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): can't get TS\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(): BA Policy is not correct\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid skb len in BARSP(%d / %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rtllib_rx_ADDBARsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017rtllib_92e:====>rx ADDBARSP from : %pM\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtllib_rx_ADDBARsp\00", [45 x i8] zeroinitializer }, align 32
@rtllib_rx_ADDBARsp._entry_ptr = internal global ptr @rtllib_rx_ADDBARsp._entry, section ".printk_index", align 4
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"reject to ADDBA_RSP as some capability is not ready(%d, %d, %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(): ADDBA response already admitted\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): ADDBA Rsp. BA invalid, DELBA!\0A\00", [59 x i8] zeroinitializer }, align 32
@rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): Recv ADDBA Rsp. BA is admitted! Status code:%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid skb len in DELBA(%d / %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"received DELBA while QOS or HT is not supported(%d, %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): can't get TS for RXTS. dst:%pM TID:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.rtllib_rx_DELBA = private unnamed_addr constant [16 x i8] c"rtllib_rx_DELBA\00", align 1
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): can't get TS for TXTS\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtllib_send_ADDBARsp\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to generate ADDBARsp packet.\0A\00", [59 x i8] zeroinitializer }, align 32
@rtllib_ADDBA.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtllib_ADDBA\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): frame(%d) sentd to: %pM, ieee->dev:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pBA is NULL\0A\00", [19 x i8] zeroinitializer }, align 32
@rtllib_ADDBA._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtllib_92e:====>to send ADDBARSP\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@rtllib_ADDBA._entry_ptr = internal global ptr @rtllib_ADDBA._entry, section ".printk_index", align 4
@rtllib_send_DELBA.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtllib_send_DELBA\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to generate DELBA packet.\0A\00", [62 x i8] zeroinitializer }, align 32
@rtllib_DELBA.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtllib_DELBA\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(): ReasonCode(%d) sentd to: %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@rtllib_send_ADDBAReq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017rtllib_92e:====>to send ADDBAREQ!!!!!\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtllib_send_ADDBAReq\00", [43 x i8] zeroinitializer }, align 32
@rtllib_send_ADDBAReq._entry_ptr = internal global ptr @rtllib_send_ADDBAReq._entry, section ".printk_index", align 4
@rtllib_send_ADDBAReq.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to generate ADDBAReq packet.\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 230, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 250, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 256, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 264, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 271, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 319, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 333, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 338, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 360, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 366, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 371, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 419, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 428, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 448, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 460, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 202, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 74, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 78, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 103, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 138, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 186, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [45 x i8] c"../drivers/staging/rtl8192e/rtl819x_BAProc.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 189, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @rtllib_ADDBA._entry, ptr @rtllib_ADDBA._entry_ptr, ptr @rtllib_rx_ADDBAReq._entry, ptr @rtllib_rx_ADDBAReq._entry_ptr, ptr @rtllib_rx_ADDBARsp._entry, ptr @rtllib_rx_ADDBARsp._entry_ptr, ptr @rtllib_send_ADDBAReq._entry, ptr @rtllib_send_ADDBAReq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtllib_rx_ADDBAReq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtllib_rx_ADDBARsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtllib_ADDBA._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtllib_send_ADDBAReq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ResetBaEntry(ptr nocapture noundef writeonly %pBA) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_valid = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 1
  %0 = ptrtoint ptr %b_valid to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %b_valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_rx_ADDBAReq(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef 33) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %6, i32 0, i32 3
  %add.ptr2 = getelementptr i8, ptr %6, i32 26
  %add.ptr3 = getelementptr i8, ptr %6, i32 27
  %add.ptr4 = getelementptr i8, ptr %6, i32 29
  %add.ptr5 = getelementptr %struct.rtllib_hdr_3addr, ptr %6, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end10_crit_edge, label %do.end

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %addr2) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.end.do.end10_crit_edge
  %active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %do.end10.if.then17_crit_edge, label %lor.lhs.false

do.end10.if.then17_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end10
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %10 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 51
  %14 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %IOTAction, align 1
  %and15 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end24, label %lor.lhs.false13.if.then17_crit_edge

lor.lhs.false13.if.then17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false13.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %do.end10.if.then17_crit_edge
  %dev18 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  %pHTInfo22 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %18 = ptrtoint ptr %pHTInfo22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pHTInfo22, align 8
  %bCurrentHTSupport23 = getelementptr inbounds %struct.rt_hi_throughput, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bCurrentHTSupport23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bCurrentHTSupport23, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %conv) #9
  br label %OnADDBAReq_Fail

if.end24:                                         ; preds = %lor.lhs.false13
  %22 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %add.ptr3, align 2
  %bf.lshr = lshr i16 %bf.load, 10
  %23 = trunc i16 %bf.lshr to i8
  %conv25 = and i8 %23, 15
  %call26 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2, i8 noundef zeroext %conv25, i32 noundef 1, i1 noundef zeroext true) #6
  br i1 %call26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #9
  br label %OnADDBAReq_Fail

if.end29:                                         ; preds = %if.end24
  %26 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pTS, align 4
  %rx_admitted_ba_record = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load30 = load i16, ptr %add.ptr3, align 2
  %29 = and i16 %bf.load30, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp34 = icmp eq i16 %29, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %30 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev37, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #9
  br label %OnADDBAReq_Fail

if.end38:                                         ; preds = %if.end29
  call void @rtllib_FlushRxTsPendingPkts(ptr noundef %ieee, ptr noundef %27) #6
  %b_valid.i = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %b_valid.i, align 4
  %call.i = call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record) #6
  %33 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr2, align 1
  %dialog_token = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %dialog_token to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %dialog_token, align 1
  %ba_param_set = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr3, align 2
  %38 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %ba_param_set, align 2
  %39 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr4, align 2
  %ba_timeout_value = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5, i32 4
  %41 = ptrtoint ptr %ba_timeout_value to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %ba_timeout_value, align 4
  %ba_start_seq_ctrl = getelementptr inbounds %struct.rx_ts_record, ptr %27, i32 0, i32 5, i32 5
  %42 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr5, align 2
  %44 = ptrtoint ptr %ba_start_seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %ba_start_seq_ctrl, align 2
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 196
  %45 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 4
  %dev39 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %47 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev39, align 4
  %call40 = call zeroext i1 %46(ptr noundef %48) #6
  br i1 %call40, label %if.end38.if.end55_crit_edge, label %lor.lhs.false42

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

lor.lhs.false42:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pHTInfo, align 8
  %IOTAction44 = getelementptr inbounds %struct.rt_hi_throughput, ptr %50, i32 0, i32 51
  %51 = ptrtoint ptr %IOTAction44 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %IOTAction44, align 1
  %and45 = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %spec.select = select i1 %tobool46.not, i16 32, i16 1
  br label %if.end55

if.end55:                                         ; preds = %lor.lhs.false42, %if.end38.if.end55_crit_edge
  %.sink = phi i16 [ 1, %if.end38.if.end55_crit_edge ], [ %spec.select, %lor.lhs.false42 ]
  %53 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load52 = load i16, ptr %ba_param_set, align 2
  %bf.clear53 = and i16 %bf.load52, -1024
  %bf.set54 = or i16 %bf.clear53, %.sink
  store i16 %bf.set54, ptr %ba_param_set, align 2
  %54 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %b_valid.i, align 4
  %call.i112 = call fastcc ptr @rtllib_ADDBA(ptr noundef %ieee, ptr noundef %addr2, ptr noundef %rx_admitted_ba_record, i16 noundef zeroext 0, i8 noundef zeroext 1) #6
  %tobool.not.i = icmp eq ptr %call.i112, null
  br i1 %tobool.not.i, label %do.body1.i, label %if.then.i

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i112, ptr noundef %ieee) #6
  br label %cleanup

do.body1.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_ADDBAReq, %if.then6.i)) #6
          to label %cleanup [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342, ptr noundef %56, ptr noundef nonnull @.str.20) #6
  br label %cleanup

OnADDBAReq_Fail:                                  ; preds = %if.then36, %if.then27, %if.then17
  %rc.0 = phi i16 [ 37, %if.then17 ], [ 38, %if.then36 ], [ 37, %if.then27 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %BA) #6
  %57 = call ptr @memset(ptr %BA, i32 255, i32 56)
  %ba_param_set56 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 3
  %58 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr3, align 2
  %60 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr4, align 2
  %ba_timeout_value57 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 4
  %62 = ptrtoint ptr %ba_timeout_value57 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %ba_timeout_value57, align 4
  %63 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr2, align 1
  %dialog_token58 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 2
  %65 = ptrtoint ptr %dialog_token58 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %dialog_token58, align 1
  %bf.set62 = or i16 %59, 16384
  %66 = ptrtoint ptr %ba_param_set56 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %bf.set62, ptr %ba_param_set56, align 2
  %call.i113 = call fastcc ptr @rtllib_ADDBA(ptr noundef %ieee, ptr noundef %addr2, ptr noundef nonnull %BA, i16 noundef zeroext %rc.0, i8 noundef zeroext 1) #6
  %tobool.not.i114 = icmp eq ptr %call.i113, null
  br i1 %tobool.not.i114, label %do.body1.i116, label %if.then.i115

if.then.i115:                                     ; preds = %OnADDBAReq_Fail
  call void @__sanitizer_cov_trace_pc() #8
  call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i113, ptr noundef %ieee) #6
  br label %rtllib_send_ADDBARsp.exit119

do.body1.i116:                                    ; preds = %OnADDBAReq_Fail
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_ADDBAReq, %if.then6.i118)) #6
          to label %rtllib_send_ADDBARsp.exit119 [label %if.then6.i118], !srcloc !81

if.then6.i118:                                    ; preds = %do.body1.i116
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i117 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %67 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i117, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342, ptr noundef %68, ptr noundef nonnull @.str.20) #6
  br label %rtllib_send_ADDBARsp.exit119

rtllib_send_ADDBARsp.exit119:                     ; preds = %if.then6.i118, %do.body1.i116, %if.then.i115
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %BA) #6
  br label %cleanup

cleanup:                                          ; preds = %rtllib_send_ADDBARsp.exit119, %if.then6.i, %do.body1.i, %if.then.i, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %rtllib_send_ADDBARsp.exit119 ], [ 0, %if.then.i ], [ 0, %do.body1.i ], [ 0, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @GetTs(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_FlushRxTsPendingPkts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_rx_ADDBARsp(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 33) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %6, i32 0, i32 3
  %add.ptr2 = getelementptr i8, ptr %6, i32 26
  %add.ptr3 = getelementptr i8, ptr %6, i32 27
  %add.ptr4 = getelementptr i8, ptr %6, i32 29
  %add.ptr5 = getelementptr i8, ptr %6, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end10_crit_edge, label %do.end

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %addr2) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end, %if.end.do.end10_crit_edge
  %active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %do.end10.if.then16_crit_edge, label %lor.lhs.false

do.end10.if.then16_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false:                                    ; preds = %do.end10
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %10 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %bCurrentAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bCurrentAMPDUEnable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %lor.lhs.false13.if.then16_crit_edge, label %if.end26

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %lor.lhs.false.if.then16_crit_edge, %do.end10.if.then16_crit_edge
  %dev17 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  %pHTInfo21 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %18 = ptrtoint ptr %pHTInfo21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pHTInfo21, align 8
  %bCurrentHTSupport22 = getelementptr inbounds %struct.rt_hi_throughput, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bCurrentHTSupport22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bCurrentHTSupport22, align 1
  %conv = zext i8 %21 to i32
  %bCurrentAMPDUEnable24 = getelementptr inbounds %struct.rt_hi_throughput, ptr %19, i32 0, i32 20
  %22 = ptrtoint ptr %bCurrentAMPDUEnable24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bCurrentAMPDUEnable24, align 1
  %conv25 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %conv, i32 noundef %conv25) #9
  br label %OnADDBARsp_Reject

if.end26:                                         ; preds = %lor.lhs.false13
  %24 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %add.ptr4, align 2
  %bf.lshr = lshr i16 %bf.load, 10
  %25 = trunc i16 %bf.lshr to i8
  %conv27 = and i8 %25, 15
  %call28 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTS, ptr noundef %addr2, i8 noundef zeroext %conv27, i32 noundef 0, i1 noundef zeroext false) #6
  br i1 %call28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev30 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %26 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9) #9
  br label %OnADDBARsp_Reject

if.end31:                                         ; preds = %if.end26
  %28 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pTS, align 4
  %bAddBaReqInProgress = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %bAddBaReqInProgress to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bAddBaReqInProgress, align 4
  %TxPendingBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 2
  %TxAdmittedBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3
  %b_valid = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %b_valid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %b_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not = icmp eq i8 %32, 0
  br i1 %tobool32.not, label %if.else, label %do.body35

do.body35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_ADDBARsp, %if.then41)) #6
          to label %cleanup [label %if.then41], !srcloc !81

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %dev42 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %33 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev42, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug344, ptr noundef %34, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %b_valid48 = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %b_valid48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %b_valid48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool49.not = icmp eq i8 %36, 0
  br i1 %tobool49.not, label %if.else.if.then55_crit_edge, label %lor.lhs.false50

if.else.if.then55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

lor.lhs.false50:                                  ; preds = %if.else
  %37 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr2, align 1
  %dialog_token = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dialog_token, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp53.not = icmp eq i8 %38, %40
  br i1 %cmp53.not, label %do.body59, label %lor.lhs.false50.if.then55_crit_edge

lor.lhs.false50.if.then55_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false50.if.then55_crit_edge, %if.else.if.then55_crit_edge
  %dev56 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %41 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9) #9
  br label %OnADDBARsp_Reject

do.body59:                                        ; preds = %lor.lhs.false50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_ADDBARsp, %if.then71)) #6
          to label %do.end78 [label %if.then71], !srcloc !81

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %dev72 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %43 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev72, align 4
  %45 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr3, align 2
  %conv73 = zext i16 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug345, ptr noundef %44, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %conv73) #6
  br label %do.end78

do.end78:                                         ; preds = %if.then71, %do.body59
  %47 = ptrtoint ptr %b_valid48 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %b_valid48, align 4
  %call.i = call i32 @del_timer_sync(ptr noundef %TxPendingBARecord) #6
  %48 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp82 = icmp eq i16 %49, 0
  br i1 %cmp82, label %if.then84, label %if.else95

if.then84:                                        ; preds = %do.end78
  %50 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load85 = load i16, ptr %add.ptr4, align 2
  %51 = and i16 %bf.load85, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp89 = icmp eq i16 %51, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pTS, align 4
  %bAddBaReqDelayed = getelementptr inbounds %struct.tx_ts_record, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %bAddBaReqDelayed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %bAddBaReqDelayed, align 1
  %55 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %b_valid, align 4
  %call.i154 = call i32 @del_timer_sync(ptr noundef %TxAdmittedBARecord) #6
  br label %OnADDBARsp_Reject

if.end92:                                         ; preds = %if.then84
  %56 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr2, align 1
  %dialog_token93 = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %dialog_token93 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %dialog_token93, align 1
  %59 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr5, align 2
  %ba_timeout_value = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %ba_timeout_value to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %ba_timeout_value, align 4
  %ba_start_seq_ctrl = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3, i32 5
  %ba_start_seq_ctrl94 = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 2, i32 5
  %62 = ptrtoint ptr %ba_start_seq_ctrl94 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ba_start_seq_ctrl94, align 2
  %64 = ptrtoint ptr %ba_start_seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %ba_start_seq_ctrl, align 2
  %ba_param_set = getelementptr inbounds %struct.tx_ts_record, ptr %29, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr4, align 2
  %67 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %ba_param_set, align 2
  %68 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %b_valid, align 4
  %call.i156 = call i32 @del_timer_sync(ptr noundef %TxAdmittedBARecord) #6
  %69 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr5, align 2
  %71 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %b_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp.not.i = icmp eq i16 %70, 0
  br i1 %cmp.not.i, label %if.end92.cleanup_crit_edge, label %if.then.i

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %conv.i = zext i16 %70 to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #6
  %add.i = add i32 %call2.i.i, %72
  %call3.i = call i32 @mod_timer(ptr noundef %TxAdmittedBARecord, i32 noundef %add.i) #6
  br label %cleanup

if.else95:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %pTS to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pTS, align 4
  %bAddBaReqDelayed96 = getelementptr inbounds %struct.tx_ts_record, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %bAddBaReqDelayed96 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %bAddBaReqDelayed96, align 1
  %bDisable_AddBa = getelementptr inbounds %struct.tx_ts_record, ptr %74, i32 0, i32 7
  %76 = ptrtoint ptr %bDisable_AddBa to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %bDisable_AddBa, align 1
  br label %OnADDBARsp_Reject

OnADDBARsp_Reject:                                ; preds = %if.else95, %if.then91, %if.then55, %if.then29, %if.then16
  %ReasonCode.0 = phi i16 [ 38, %if.then55 ], [ 37, %if.then91 ], [ 37, %if.else95 ], [ 38, %if.then29 ], [ 38, %if.then16 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %BA) #6
  %77 = call ptr @memset(ptr %BA, i32 255, i32 56)
  %ba_param_set98 = getelementptr inbounds %struct.ba_record, ptr %BA, i32 0, i32 3
  %78 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr4, align 2
  %80 = ptrtoint ptr %ba_param_set98 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %ba_param_set98, align 2
  %call.i158 = call fastcc ptr @rtllib_DELBA(ptr noundef %ieee, ptr noundef %addr2, ptr noundef nonnull %BA, i32 noundef 0, i16 noundef zeroext %ReasonCode.0) #6
  %tobool.not.i = icmp eq ptr %call.i158, null
  br i1 %tobool.not.i, label %do.body1.i, label %if.then.i159

if.then.i159:                                     ; preds = %OnADDBARsp_Reject
  call void @__sanitizer_cov_trace_pc() #8
  call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i158, ptr noundef %ieee) #6
  br label %rtllib_send_DELBA.exit

do.body1.i:                                       ; preds = %OnADDBARsp_Reject
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_rx_ADDBARsp, %if.then6.i)) #6
          to label %rtllib_send_DELBA.exit [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, ptr noundef %82, ptr noundef nonnull @.str.26) #6
  br label %rtllib_send_DELBA.exit

rtllib_send_DELBA.exit:                           ; preds = %if.then6.i, %do.body1.i, %if.then.i159
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %BA) #6
  br label %cleanup

cleanup:                                          ; preds = %rtllib_send_DELBA.exit, %if.then.i, %if.end92.cleanup_crit_edge, %if.then41, %do.body35, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %rtllib_send_DELBA.exit ], [ -1, %if.then41 ], [ -1, %do.body35 ], [ 0, %if.end92.cleanup_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTS) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtllib_rx_DELBA(ptr noundef %ieee, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef 30) #9
  br label %cleanup40

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %6 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end10

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %dev4 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %pHTInfo8 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %12 = ptrtoint ptr %pHTInfo8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pHTInfo8, align 8
  %bCurrentHTSupport9 = getelementptr inbounds %struct.rt_hi_throughput, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bCurrentHTSupport9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bCurrentHTSupport9, align 1
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %conv) #9
  br label %cleanup40

if.end10:                                         ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %17, i32 0, i32 3
  %arrayidx11 = getelementptr %struct.rtllib_hdr_3addr, ptr %17, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %arrayidx11, align 2
  %19 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp13.not = icmp eq i16 %19, 0
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pRxTs) #6
  %20 = ptrtoint ptr %pRxTs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %pRxTs, align 4, !annotation !82
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load16 = load i16, ptr %arrayidx11, align 2
  %22 = trunc i16 %bf.load16 to i8
  %conv18 = and i8 %22, 15
  %call = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pRxTs, ptr noundef %addr2, i8 noundef zeroext %conv18, i32 noundef 1, i1 noundef zeroext false) #6
  br i1 %call, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load21 = load i16, ptr %arrayidx11, align 2
  %26 = and i16 %bf.load21, 15
  %conv23 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rtllib_rx_DELBA, ptr noundef %addr2, i32 noundef %conv23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTs) #6
  br label %cleanup40

if.end25:                                         ; preds = %if.then15
  %27 = ptrtoint ptr %pRxTs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pRxTs, align 4
  %b_valid.i = getelementptr inbounds %struct.rx_ts_record, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end25.RxTsDeleteBA.exit_crit_edge, label %if.then.i

if.end25.RxTsDeleteBA.exit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %RxTsDeleteBA.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %b_valid.i, align 4
  %call.i.i = call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record.i) #6
  br label %RxTsDeleteBA.exit

RxTsDeleteBA.exit:                                ; preds = %if.then.i, %if.end25.RxTsDeleteBA.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pRxTs) #6
  br label %cleanup40

if.else:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pTxTs) #6
  %32 = ptrtoint ptr %pTxTs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %pTxTs, align 4, !annotation !82
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load27 = load i16, ptr %arrayidx11, align 2
  %34 = trunc i16 %bf.load27 to i8
  %conv29 = and i8 %34, 15
  %call30 = call zeroext i1 @GetTs(ptr noundef %ieee, ptr noundef nonnull %pTxTs, ptr noundef %addr2, i8 noundef zeroext %conv29, i32 noundef 0, i1 noundef zeroext false) #6
  br i1 %call30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev32 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %35 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev32, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %36, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rtllib_rx_DELBA) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs) #6
  br label %cleanup40

if.end33:                                         ; preds = %if.else
  %37 = ptrtoint ptr %pTxTs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pTxTs, align 4
  %bUsingBa = getelementptr inbounds %struct.tx_ts_record, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %bUsingBa to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %bUsingBa, align 2
  %bAddBaReqInProgress = getelementptr inbounds %struct.tx_ts_record, ptr %38, i32 0, i32 4
  %40 = ptrtoint ptr %bAddBaReqInProgress to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bAddBaReqInProgress, align 4
  %bAddBaReqDelayed = getelementptr inbounds %struct.tx_ts_record, ptr %38, i32 0, i32 5
  %41 = ptrtoint ptr %bAddBaReqDelayed to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %bAddBaReqDelayed, align 1
  %TsAddBaTimer = getelementptr inbounds %struct.tx_ts_record, ptr %38, i32 0, i32 8
  %call34 = call i32 @del_timer_sync(ptr noundef %TsAddBaTimer) #6
  %42 = ptrtoint ptr %pTxTs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pTxTs, align 4
  %TxAdmittedBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %43, i32 0, i32 3
  %b_valid.i66 = getelementptr inbounds %struct.tx_ts_record, ptr %43, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %b_valid.i66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b_valid.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i67 = icmp eq i8 %45, 0
  br i1 %tobool.not.i67, label %if.end33.if.end.i_crit_edge, label %if.then.i69

if.end33.if.end.i_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i69:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %TxPendingBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %b_valid.i66 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %b_valid.i66, align 4
  %call.i.i68 = call i32 @del_timer_sync(ptr noundef %TxPendingBARecord.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i69, %if.end33.if.end.i_crit_edge
  %b_valid1.i = getelementptr inbounds %struct.tx_ts_record, ptr %43, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %b_valid1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b_valid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool2.not.i = icmp eq i8 %48, 0
  br i1 %tobool2.not.i, label %if.end.i.TxTsDeleteBA.exit_crit_edge, label %if.then3.i

if.end.i.TxTsDeleteBA.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %b_valid1.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %b_valid1.i, align 4
  %call.i2.i = call i32 @del_timer_sync(ptr noundef %TxAdmittedBARecord.i) #6
  br label %TxTsDeleteBA.exit

TxTsDeleteBA.exit:                                ; preds = %if.then3.i, %if.end.i.TxTsDeleteBA.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pTxTs) #6
  br label %cleanup40

cleanup40:                                        ; preds = %TxTsDeleteBA.exit, %if.then31, %RxTsDeleteBA.exit, %if.then19, %if.then3, %if.then
  %retval.2 = phi i32 [ -1, %if.then ], [ -1, %if.then3 ], [ -1, %if.then19 ], [ -1, %if.then31 ], [ 0, %TxTsDeleteBA.exit ], [ 0, %RxTsDeleteBA.exit ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TsInitAddBA(ptr noundef %ieee, ptr noundef %pTS, i8 noundef zeroext %Policy, i8 noundef zeroext %bOverwritePending) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_valid = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %b_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_valid, align 4
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
  %TxPendingBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2
  %2 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b_valid, align 4
  %call.i = tail call i32 @del_timer_sync(ptr noundef %TxPendingBARecord) #6
  %dialog_token = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dialog_token, align 1
  %inc = add i8 %4, 1
  store i8 %inc, ptr %dialog_token, align 1
  %ba_param_set = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 3
  %5 = and i8 %Policy, 1
  %bf.value = zext i8 %5 to i16
  %bf.shl = shl nuw nsw i16 %bf.value, 14
  %TSpec = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 4
  %6 = ptrtoint ptr %TSpec to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load7 = load i8, ptr %TSpec, align 4
  %bf.lshr = lshr i8 %bf.load7, 3
  %7 = and i8 %bf.lshr, 15
  %bf.value12 = zext i8 %7 to i16
  %bf.shl13 = shl nuw nsw i16 %bf.value12, 10
  %bf.set15 = or i16 %bf.shl13, %bf.shl
  %bf.set19 = or i16 %bf.set15, 32
  %8 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.set19, ptr %ba_param_set, align 2
  %ba_timeout_value = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %ba_timeout_value to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %ba_timeout_value, align 4
  %TxCurSeq = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 1
  %10 = ptrtoint ptr %TxCurSeq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %TxCurSeq, align 4
  %12 = add i16 %11, 3
  %13 = and i16 %12, 4095
  %ba_start_seq_ctrl = getelementptr inbounds %struct.tx_ts_record, ptr %pTS, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %ba_start_seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load22 = load i16, ptr %ba_start_seq_ctrl, align 2
  %bf.clear24 = and i16 %bf.load22, -4096
  %bf.set25 = or i16 %bf.clear24, %13
  store i16 %bf.set25, ptr %ba_start_seq_ctrl, align 2
  %15 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %b_valid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %16, 20
  %call3.i = tail call i32 @mod_timer(ptr noundef %TxPendingBARecord, i32 noundef %add.i) #6
  %Addr = getelementptr inbounds %struct.ts_common_info, ptr %pTS, i32 0, i32 3
  %call.i42 = tail call fastcc ptr @rtllib_ADDBA(ptr noundef %ieee, ptr noundef %Addr, ptr noundef %TxPendingBARecord, i16 noundef zeroext 0, i8 noundef zeroext 0) #6
  %tobool.not.i = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.body.i.do.end6.i_crit_edge
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i42, ptr noundef %ieee) #6
  br label %cleanup

do.body8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_ADDBAReq.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsInitAddBA, %if.then14.i)) #6
          to label %cleanup [label %if.then14.i], !srcloc !81

if.then14.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_ADDBAReq.__UNIQUE_ID_ddebug341, ptr noundef %19, ptr noundef nonnull @.str.31) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %do.body8.i, %do.end6.i, %entry.cleanup_crit_edge
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
  %TxAdmittedBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3
  %b_valid.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.then
  %b_valid1.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %b_valid1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_valid1.i, align 4
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
  %TxPendingBARecord.i = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2
  %5 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b_valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %TxPendingBARecord.i) #6
  %b_valid1.i47 = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %b_valid1.i47 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %b_valid1.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i48 = icmp eq i8 %7, 0
  br i1 %tobool2.not.i48, label %if.end.i.thread.if.then1_crit_edge, label %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge

if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit.thread

if.end.i.thread.if.then1_crit_edge:               ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

TxTsDeleteBA.exit.thread:                         ; preds = %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge, %if.end.i.TxTsDeleteBA.exit.thread_crit_edge
  %b_valid1.i49 = phi ptr [ %b_valid1.i47, %if.end.i.thread.TxTsDeleteBA.exit.thread_crit_edge ], [ %b_valid1.i, %if.end.i.TxTsDeleteBA.exit.thread_crit_edge ]
  %8 = ptrtoint ptr %b_valid1.i49 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b_valid1.i49, align 4
  %call.i2.i = tail call i32 @del_timer_sync(ptr noundef %TxAdmittedBARecord.i) #6
  br label %if.then1

if.then1:                                         ; preds = %TxTsDeleteBA.exit.thread, %if.end.i.thread.if.then1_crit_edge
  %b_valid1.i50 = phi ptr [ %b_valid1.i49, %TxTsDeleteBA.exit.thread ], [ %b_valid1.i47, %if.end.i.thread.if.then1_crit_edge ]
  %Addr = getelementptr inbounds %struct.ts_common_info, ptr %pTsCommonInfo, i32 0, i32 3
  %9 = ptrtoint ptr %b_valid1.i50 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %b_valid1.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %TxPendingBARecord = getelementptr inbounds %struct.tx_ts_record, ptr %pTsCommonInfo, i32 0, i32 2
  %cond = select i1 %tobool2.not, ptr %TxPendingBARecord, ptr %TxAdmittedBARecord.i
  %call.i = tail call fastcc ptr @rtllib_DELBA(ptr noundef %ieee, ptr noundef %Addr, ptr noundef %cond, i32 noundef 0, i16 noundef zeroext 37) #6
  %tobool.not.i28 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i28, label %do.body1.i, label %if.then.i29

if.then.i29:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i, ptr noundef %ieee) #6
  br label %if.end14

do.body1.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsInitDelBA, %if.then6.i)) #6
          to label %if.end14 [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, ptr noundef %12, ptr noundef nonnull @.str.26) #6
  br label %if.end14

if.then6:                                         ; preds = %entry
  %b_valid.i30 = getelementptr inbounds %struct.rx_ts_record, ptr %pTsCommonInfo, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %b_valid.i30 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %b_valid.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i31 = icmp eq i8 %14, 0
  br i1 %tobool.not.i31, label %if.then6.if.end14_crit_edge, label %if.then9

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.then6
  %rx_admitted_ba_record.i = getelementptr inbounds %struct.rx_ts_record, ptr %pTsCommonInfo, i32 0, i32 5
  %15 = ptrtoint ptr %b_valid.i30 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %b_valid.i30, align 4
  %call.i.i32 = tail call i32 @del_timer_sync(ptr noundef %rx_admitted_ba_record.i) #6
  %Addr10 = getelementptr inbounds %struct.ts_common_info, ptr %pTsCommonInfo, i32 0, i32 3
  %call.i36 = tail call fastcc ptr @rtllib_DELBA(ptr noundef %ieee, ptr noundef %Addr10, ptr noundef %rx_admitted_ba_record.i, i32 noundef 1, i16 noundef zeroext 37) #6
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %do.body1.i39, label %if.then.i38

if.then.i38:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i36, ptr noundef %ieee) #6
  br label %if.end14

do.body1.i39:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TsInitDelBA, %if.then6.i41)) #6
          to label %if.end14 [label %if.then6.i41], !srcloc !81

if.then6.i41:                                     ; preds = %do.body1.i39
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i40 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, ptr noundef %17, ptr noundef nonnull @.str.26) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then6.i41, %do.body1.i39, %if.then.i38, %if.then6.if.end14_crit_edge, %if.then6.i, %do.body1.i, %if.then.i29, %if.end.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @BaSetupTimeOut(ptr nocapture noundef writeonly %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bAddBaReqInProgress = getelementptr i8, ptr %t, i32 112
  %0 = ptrtoint ptr %bAddBaReqInProgress to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bAddBaReqInProgress, align 4
  %bAddBaReqDelayed = getelementptr i8, ptr %t, i32 113
  %1 = ptrtoint ptr %bAddBaReqDelayed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %bAddBaReqDelayed, align 1
  %b_valid = getelementptr inbounds %struct.ba_record, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %b_valid to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b_valid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @TxBaInactTimeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -408
  %num = getelementptr i8, ptr %t, i32 108
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -520
  %idx.neg = add nsw i32 %.neg, -348
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %b_valid.i = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %TxPendingBARecord.i = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b_valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %TxPendingBARecord.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %b_valid1.i = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %b_valid1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %b_valid1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %if.end.i.TxTsDeleteBA.exit_crit_edge, label %if.then3.i

if.end.i.TxTsDeleteBA.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %TxTsDeleteBA.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %b_valid1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b_valid1.i, align 4
  %call.i2.i = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %TxTsDeleteBA.exit

TxTsDeleteBA.exit:                                ; preds = %if.then3.i, %if.end.i.TxTsDeleteBA.exit_crit_edge
  %Addr = getelementptr i8, ptr %t, i32 -304
  %call.i = tail call fastcc ptr @rtllib_DELBA(ptr noundef %add.ptr3, ptr noundef %Addr, ptr noundef %t, i32 noundef 0, i16 noundef zeroext 39) #6
  %tobool.not.i9 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i9, label %do.body1.i, label %if.then.i10

if.then.i10:                                      ; preds = %TxTsDeleteBA.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i, ptr noundef %add.ptr3) #6
  br label %rtllib_send_DELBA.exit

do.body1.i:                                       ; preds = %TxTsDeleteBA.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@TxBaInactTimeout, %if.then6.i)) #6
          to label %rtllib_send_DELBA.exit [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, ptr noundef %9, ptr noundef nonnull @.str.26) #6
  br label %rtllib_send_DELBA.exit

rtllib_send_DELBA.exit:                           ; preds = %if.then6.i, %do.body1.i, %if.then.i10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @RxBaInactTimeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -408
  %num = getelementptr i8, ptr %t, i32 59
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 1
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -468
  %idx.neg = add nsw i32 %.neg, -8692
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %b_valid.i = getelementptr i8, ptr %t, i32 48
  %2 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %b_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.RxTsDeleteBA.exit_crit_edge, label %if.then.i

entry.RxTsDeleteBA.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %RxTsDeleteBA.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %b_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b_valid.i, align 4
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %t) #6
  br label %RxTsDeleteBA.exit

RxTsDeleteBA.exit:                                ; preds = %if.then.i, %entry.RxTsDeleteBA.exit_crit_edge
  %Addr = getelementptr i8, ptr %t, i32 -304
  %call.i = tail call fastcc ptr @rtllib_DELBA(ptr noundef %add.ptr3, ptr noundef %Addr, ptr noundef %t, i32 noundef 1, i16 noundef zeroext 39) #6
  %tobool.not.i9 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i9, label %do.body1.i, label %if.then.i10

if.then.i10:                                      ; preds = %RxTsDeleteBA.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @softmac_mgmt_xmit(ptr noundef nonnull %call.i, ptr noundef %add.ptr3) #6
  br label %rtllib_send_DELBA.exit

do.body1.i:                                       ; preds = %RxTsDeleteBA.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@RxBaInactTimeout, %if.then6.i)) #6
          to label %rtllib_send_DELBA.exit [label %if.then6.i], !srcloc !81

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %add.ptr3, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, ptr noundef %6, ptr noundef nonnull @.str.26) #6
  br label %rtllib_send_DELBA.exit

rtllib_send_DELBA.exit:                           ; preds = %if.then6.i, %do.body1.i, %if.then.i10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtllib_ADDBA(ptr nocapture noundef readonly %ieee, ptr noundef %Dst, ptr noundef readonly %pBA, i16 noundef zeroext %StatusCode, i8 noundef zeroext %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 61
  %0 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom, align 8
  %conv = add i32 %1, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_ADDBA.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_ADDBA, %if.then)) #6
          to label %do.end7 [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv4 = zext i8 %type to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_ADDBA.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv4, ptr noundef %Dst, ptr noundef %3) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %tobool8.not = icmp eq ptr %pBA, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %4 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %conv12 = and i32 %conv, 65535
  %add13 = add nuw nsw i32 %conv12, 24
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add13, i32 noundef 2592) #6
  %tobool15.not = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %9 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_headroom, align 8
  %11 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %10
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #6
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 2
  %14 = ptrtoint ptr %Dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Dst, align 4
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr1, align 4
  %add.ptr.i85 = getelementptr i8, ptr %Dst, i32 4
  %17 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i85, align 2
  %add.ptr1.i86 = getelementptr %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %add.ptr1.i86 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr1.i86, align 2
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 3
  %dev21 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev21, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %addr2, align 4
  %add.ptr.i87 = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i87, align 2
  %add.ptr1.i88 = getelementptr %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %add.ptr1.i88 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i88, align 2
  %addr3 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 4
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %30 = ptrtoint ptr %current_network to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %current_network, align 4
  %32 = ptrtoint ptr %addr3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %addr3, align 4
  %add.ptr.i89 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 0, i32 4
  %33 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i89, align 2
  %add.ptr1.i90 = getelementptr %struct.rtllib_hdr_3addr, ptr %call19, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %add.ptr1.i90 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i90, align 2
  %36 = ptrtoint ptr %call19 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 -12288, ptr %call19, align 1
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 9) #6
  %incdec.ptr = getelementptr i8, ptr %call24, i32 1
  %37 = ptrtoint ptr %call24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %call24, align 1
  %incdec.ptr25 = getelementptr i8, ptr %call24, i32 2
  %38 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %type, ptr %incdec.ptr, align 1
  %dialog_token = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 2
  %39 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dialog_token, align 1
  %incdec.ptr26 = getelementptr i8, ptr %call24, i32 3
  %41 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %incdec.ptr25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp = icmp eq i8 %type, 1
  br i1 %cmp, label %do.body30, label %if.end17.if.end41_crit_edge

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body30:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %42 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %do.body30.do.end40_crit_edge, label %do.end35

do.body30.do.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body30.do.end40_crit_edge
  %43 = tail call i16 @llvm.bswap.i16(i16 %StatusCode) #6
  %44 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %incdec.ptr26, align 1
  %add.ptr = getelementptr i8, ptr %call24, i32 5
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end17.if.end41_crit_edge
  %tag.0 = phi ptr [ %add.ptr, %do.end40 ], [ %incdec.ptr26, %if.end17.if.end41_crit_edge ]
  %ba_param_set = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 3
  %45 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ba_param_set, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #6
  %48 = ptrtoint ptr %tag.0 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %tag.0, align 1
  %add.ptr42 = getelementptr i8, ptr %tag.0, i32 2
  %ba_timeout_value = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 4
  %49 = ptrtoint ptr %ba_timeout_value to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ba_timeout_value, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #6
  %52 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %add.ptr42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp45 = icmp eq i8 %type, 0
  br i1 %cmp45, label %if.then47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr43 = getelementptr i8, ptr %tag.0, i32 4
  %ba_start_seq_ctrl = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 5
  %53 = ptrtoint ptr %ba_start_seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ba_start_seq_ctrl, align 2
  %55 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %add.ptr43, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end41.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %if.end11.cleanup_crit_edge ], [ %call.i.i, %if.then47 ], [ %call.i.i, %if.end41.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtllib_DELBA(ptr nocapture noundef readonly %ieee, ptr noundef %dst, ptr nocapture noundef readonly %pBA, i32 noundef %TxRxSelect, i16 noundef zeroext %ReasonCode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 61
  %0 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_headroom, align 8
  %conv = add i32 %1, 6
  %call = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body1

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtllib_DELBA.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtllib_DELBA, %if.then6)) #6
          to label %if.end10 [label %if.then6], !srcloc !81

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv7 = zext i16 %ReasonCode to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtllib_DELBA.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %conv7, ptr noundef %dst) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body1, %entry.if.end10_crit_edge
  %ba_param_set = getelementptr inbounds %struct.ba_record, ptr %pBA, i32 0, i32 3
  %4 = ptrtoint ptr %ba_param_set to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load13 = load i16, ptr %ba_param_set, align 2
  %conv19 = and i32 %conv, 65535
  %add20 = add nuw nsw i32 %conv19, 24
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add20, i32 noundef 2592) #6
  %tobool22.not = icmp eq ptr %call.i.i, null
  br i1 %tobool22.not, label %if.end10.cleanup_crit_edge, label %if.end24

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %TxRxSelect)
  %cmp = icmp eq i32 %TxRxSelect, 0
  %bf.shl = select i1 %cmp, i16 16, i16 0
  %bf.lshr = lshr i16 %bf.load13, 10
  %bf.clear14 = and i16 %bf.lshr, 15
  %bf.set18 = or i16 %bf.clear14, %bf.shl
  %5 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_headroom, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %6
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %10, i32 %6
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call26 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #6
  %addr1 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 2
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst, align 4
  %13 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %addr1, align 4
  %add.ptr.i58 = getelementptr i8, ptr %dst, i32 4
  %14 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i58, align 2
  %add.ptr1.i59 = getelementptr %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr1.i59 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i59, align 2
  %addr2 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 3
  %dev28 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %17 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev28, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr2, align 4
  %add.ptr.i60 = getelementptr i8, ptr %20, i32 4
  %24 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i60, align 2
  %add.ptr1.i61 = getelementptr %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %add.ptr1.i61 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i61, align 2
  %addr3 = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 4
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %27 = ptrtoint ptr %current_network to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_network, align 4
  %29 = ptrtoint ptr %addr3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %addr3, align 4
  %add.ptr.i62 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 0, i32 4
  %30 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i62, align 2
  %add.ptr1.i63 = getelementptr %struct.rtllib_hdr_3addr, ptr %call26, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %add.ptr1.i63 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i63, align 2
  %33 = ptrtoint ptr %call26 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 -12288, ptr %call26, align 1
  %call31 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #6
  %incdec.ptr = getelementptr i8, ptr %call31, i32 1
  %34 = ptrtoint ptr %call31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %call31, align 1
  %incdec.ptr32 = getelementptr i8, ptr %call31, i32 2
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %incdec.ptr, align 1
  %36 = shl nuw nsw i16 %bf.set18, 8
  %37 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %incdec.ptr32, align 1
  %add.ptr = getelementptr i8, ptr %call31, i32 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %ReasonCode) #6
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %add.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end10.cleanup_crit_edge
  ret ptr %call.i.i
}

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 230, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 250, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtllib_rx_ADDBAReq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtllib_rx_ADDBAReq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 256, i32 8}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 264, i32 26}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 271, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 319, i32 26}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 333, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtllib_rx_ADDBARsp._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtllib_rx_ADDBARsp._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 338, i32 8}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 360, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug344, !24, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 366, i32 8}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 371, i32 3}
!31 = !{ptr @rtllib_rx_ADDBARsp.__UNIQUE_ID_ddebug345, !30, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 419, i32 26}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 428, i32 8}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 448, i32 9}
!38 = !{ptr @__func__.rtllib_rx_DELBA, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 449, i32 9}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 460, i32 27}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 202, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rtllib_send_ADDBARsp.__UNIQUE_ID_ddebug342, !43, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 74, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rtllib_ADDBA.__UNIQUE_ID_ddebug339, !47, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 78, i32 26}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 103, i32 3}
!54 = !{ptr @rtllib_ADDBA._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rtllib_ADDBA._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 215, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rtllib_send_DELBA.__UNIQUE_ID_ddebug343, !57, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 138, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtllib_DELBA.__UNIQUE_ID_ddebug340, !61, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 186, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rtllib_send_ADDBAReq._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rtllib_send_ADDBAReq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rtl8192e/rtl819x_BAProc.c", i32 189, i32 3}
!71 = !{ptr @rtllib_send_ADDBAReq.__UNIQUE_ID_ddebug341, !70, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148875091, i64 2148875096, i64 2148875109, i64 2148875153, i64 2148875187, i64 2148875208}
!82 = !{!"auto-init"}
