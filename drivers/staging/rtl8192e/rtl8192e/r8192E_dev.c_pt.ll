; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.119 }
%struct.anon.119 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8 }
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
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.r8192_priv = type { ptr, ptr, i8, i8, i8, i8, i8, i32, i16, i16, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.channel_access_setting, ptr, ptr, %struct.work_struct, %struct.log_int_8190, i32, i32, i32, [4 x %struct.bb_reg_definition], %struct.rate_adaptive, i32, ptr, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rt_stats, %struct.iw_statistics, ptr, ptr, [1 x ptr], [1 x [64 x ptr]], [1 x i32], [1 x i32], i32, i16, i64, i32, i8, i8, i16, [9 x %struct.rtl8192_tx_ring], i32, [16 x %struct.atomic_t], i16, i16, i8, i8, i8, i32, %struct.work_struct, i16, i16, i16, i16, i8, i8, [2 x i32], i8, i32, i8, i8, i8, [33 x i8], i8, i32, [10 x i32], i16, i8, i8, i8, i16, i8, i16, i16, i16, i8, i16, [14 x i8], [14 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i16, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, [4 x i32], i8, [4 x i8], i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8, i32, [6 x i32], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], [14 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, %struct.init_gain, [4 x i8], i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i8, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.channel_access_setting = type { i16, i16, i16, i16, i16, i16 }
%struct.log_int_8190 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bb_reg_definition = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8 }
%struct.rt_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], [100 x i32], i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.rtl819x_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.cb_desc = type { i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.118, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.118 = type { ptr }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.tx_desc = type { i16, i8, i8, i8, [3 x i8], i16, i8, i8, i32, i32, i32, i32, i32 }
%struct.tx_desc_cmd = type { i16, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.rx_desc = type { i16, i8, i8, i32, i32, i32 }
%struct.rx_fwinfo = type { i32, i32 }
%struct.rtllib_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [0 x i8] }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_set_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:%s():HW_VAR_AC_PARAM eACI:%x:%x\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl92e_set_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c\00", [49 x i8] zeroinitializer }, align 32
@rtl92e_set_reg._entry_ptr = internal global ptr @rtl92e_set_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SetHwReg8185(): invalid ACI: %d !\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl92e_set_reg._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:===========>%s():HW_VAR_ACM_CTRL:%x\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl92e_set_reg._entry_ptr.6 = internal global ptr @rtl92e_set_reg._entry.4, section ".printk_index", align 4
@rtl92e_set_reg._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017rtl819xE:SetHwReg8185(): [HW_VAR_ACM_CTRL] acm set failed: eACI is %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92e_set_reg._entry_ptr.9 = internal global ptr @rtl92e_set_reg._entry.7, section ".printk_index", align 4
@rtl92e_set_reg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017rtl819xE:SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl92e_set_reg._entry_ptr.12 = internal global ptr @rtl92e_set_reg._entry.10, section ".printk_index", align 4
@rtl92e_get_eeprom_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:===========>%s()\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl92e_get_eeprom_size\00", [41 x i8] zeroinitializer }, align 32
@rtl92e_get_eeprom_size._entry_ptr = internal global ptr @rtl92e_get_eeprom_size._entry, section ".printk_index", align 4
@rtl92e_get_eeprom_size._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:read from Reg Cmd9346CR(%x):%x\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92e_get_eeprom_size._entry_ptr.17 = internal global ptr @rtl92e_get_eeprom_size._entry.15, section ".printk_index", align 4
@rtl92e_get_eeprom_size._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:<===========%s(), epromtype:%d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92e_get_eeprom_size._entry_ptr.20 = internal global ptr @rtl92e_get_eeprom_size._entry.18, section ".printk_index", align 4
@rtl92e_start_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017rtl819xE:====>%s()\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl92e_start_adapter\00", [43 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr = internal global ptr @rtl92e_start_adapter._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): undefined firmware state: %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:BB Config Start!\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.26 = internal global ptr @rtl92e_start_adapter._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): Failed to configure BB\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:BB Config Finished!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.30 = internal global ptr @rtl92e_start_adapter._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Invalid loopback mode setting.\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:priv->IC_Cut= 0x%x\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.34 = internal global ptr @rtl92e_start_adapter._entry.32, section ".printk_index", align 4
@rtl92e_start_adapter._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017rtl819xE:D-cut\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.37 = internal global ptr @rtl92e_start_adapter._entry.35, section ".printk_index", align 4
@rtl92e_start_adapter._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017rtl819xE:E-cut\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.40 = internal global ptr @rtl92e_start_adapter._entry.38, section ".printk_index", align 4
@rtl92e_start_adapter._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.22, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017rtl819xE:Before C-cut\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.43 = internal global ptr @rtl92e_start_adapter._entry.41, section ".printk_index", align 4
@rtl92e_start_adapter._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.22, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017rtl819xE:Load Firmware!\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.46 = internal global ptr @rtl92e_start_adapter._entry.44, section ".printk_index", align 4
@rtl92e_start_adapter._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.22, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtl819xE:Load Firmware finished!\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.49 = internal global ptr @rtl92e_start_adapter._entry.47, section ".printk_index", align 4
@rtl92e_start_adapter._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.22, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:RF Config Started!\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.52 = internal global ptr @rtl92e_start_adapter._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RF Config failed\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.22, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:RF Config Finished!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.56 = internal global ptr @rtl92e_start_adapter._entry.54, section ".printk_index", align 4
@rtl92e_start_adapter._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.22, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017rtl819xE:%s(): Turn off RF for RegRfOff ----------\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.59 = internal global ptr @rtl92e_start_adapter._entry.57, section ".printk_index", align 4
@rtl92e_start_adapter._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.22, ptr @.str.2, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017rtl819xE:%s(): Turn off RF for RfOffReason(%d) ----------\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.62 = internal global ptr @rtl92e_start_adapter._entry.60, section ".printk_index", align 4
@rtl92e_start_adapter._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.22, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.64 = internal global ptr @rtl92e_start_adapter._entry.63, section ".printk_index", align 4
@rtl92e_start_adapter._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.22, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017rtl819xE:%s(): RF-ON\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.67 = internal global ptr @rtl92e_start_adapter._entry.65, section ".printk_index", align 4
@dm_tx_bb_gain = external dso_local local_unnamed_addr constant [37 x i32], align 4
@dm_cck_tx_bb_gain = external dso_local local_unnamed_addr constant [23 x [8 x i8]], align 1
@rtl92e_start_adapter._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.22, ptr @.str.2, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017rtl819xE:priv->rfa_txpowertrackingindex_initial = %d\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.70 = internal global ptr @rtl92e_start_adapter._entry.68, section ".printk_index", align 4
@rtl92e_start_adapter._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.22, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017rtl819xE:priv->rfa_txpowertrackingindex_real__initial = %d\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.73 = internal global ptr @rtl92e_start_adapter._entry.71, section ".printk_index", align 4
@rtl92e_start_adapter._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.22, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017rtl819xE:priv->CCKPresentAttentuation_difference_initial = %d\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.76 = internal global ptr @rtl92e_start_adapter._entry.74, section ".printk_index", align 4
@rtl92e_start_adapter._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.22, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017rtl819xE:priv->CCKPresentAttentuation_initial = %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl92e_start_adapter._entry_ptr.79 = internal global ptr @rtl92e_start_adapter._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): DMA Mapping error\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.rtl92e_fill_tx_desc = private unnamed_addr constant [20 x i8] c"rtl92e_fill_tx_desc\00", align 1
@rtl92e_fill_tx_desc.tmp = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rtl92e_fill_tx_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.rtl92e_fill_tx_desc, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017rtl819xE:==>================hw sec\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl92e_fill_tx_desc._entry_ptr = internal global ptr @rtl92e_fill_tx_desc._entry, section ".printk_index", align 4
@__func__.rtl92e_fill_tx_cmd_desc = private unnamed_addr constant [24 x i8] c"rtl92e_fill_tx_cmd_desc\00", align 1
@rtl92e_get_rx_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017rtl819xE:pDrvInfo->FirstAGGR = %d, pDrvInfo->PartAggr = %d\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92e_get_rx_stats\00", [44 x i8] zeroinitializer }, align 32
@rtl92e_get_rx_stats._entry_ptr = internal global ptr @rtl92e_get_rx_stats._entry, section ".printk_index", align 4
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtl8192E\00", [23 x i8] zeroinitializer }, align 32
@rtl92e_is_rx_stuck.rx_chk_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@rtl92e_is_rx_stuck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 2269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017rtl819xE:%s(): RegRxCounter is %d, RxCounter is %d\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92e_is_rx_stuck\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_is_rx_stuck._entry_ptr = internal global ptr @rtl92e_is_rx_stuck._entry, section ".printk_index", align 4
@rtl92e_is_tx_stuck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017rtl819xE:%s():RegTxCounter is %d,TxCounter is %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92e_is_tx_stuck\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_is_tx_stuck._entry_ptr = internal global ptr @rtl92e_is_tx_stuck._entry, section ".printk_index", align 4
@__const._rtl92e_read_eeprom_info.bMac_Tmp_Addr = private unnamed_addr constant [6 x i8] c"\00\E0L\00\00\01", align 1
@_rtl92e_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017rtl819xE:====> %s\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_rtl92e_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr = internal global ptr @_rtl92e_read_eeprom_info._entry, section ".printk_index", align 4
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): Invalid EEPROM ID: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.90, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:\0AICVer8192 = 0x%x\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.94 = internal global ptr @_rtl92e_read_eeprom_info._entry.92, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.90, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:\0AICVer8256 = 0x%x\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.97 = internal global ptr @_rtl92e_read_eeprom_info._entry.95, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.90, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:\0AIC Version = 0x%x\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.100 = internal global ptr @_rtl92e_read_eeprom_info._entry.98, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.90, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.102 = internal global ptr @_rtl92e_read_eeprom_info._entry.101, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:EEPROM VID = 0x%4x\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.105 = internal global ptr @_rtl92e_read_eeprom_info._entry.103, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.90, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:EEPROM DID = 0x%4x\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.108 = internal global ptr @_rtl92e_read_eeprom_info._entry.106, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.90, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017rtl819xE:EEPROM Customer ID: 0x%2x\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.111 = internal global ptr @_rtl92e_read_eeprom_info._entry.109, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.90, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtl819xE:Permanent Address = %pM\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.114 = internal global ptr @_rtl92e_read_eeprom_info._entry.112, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.90, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017rtl819xE:EEPROMLegacyHTTxPowerDiff = %d\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.117 = internal global ptr @_rtl92e_read_eeprom_info._entry.115, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.90, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:ThermalMeter = %d\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.120 = internal global ptr @_rtl92e_read_eeprom_info._entry.118, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.90, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rtl819xE:EEPROMAntPwDiff = %d\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.123 = internal global ptr @_rtl92e_read_eeprom_info._entry.121, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.90, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017rtl819xE:EEPROMCrystalCap = %d\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.126 = internal global ptr @_rtl92e_read_eeprom_info._entry.124, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.90, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:CCK Tx Power Level, Index %d = 0x%02x\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.129 = internal global ptr @_rtl92e_read_eeprom_info._entry.127, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.90, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.131 = internal global ptr @_rtl92e_read_eeprom_info._entry.130, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.90, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017rtl819xE:OFDM 2.4G Tx Power Level, Index %d = 0x%02x\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.134 = internal global ptr @_rtl92e_read_eeprom_info._entry.132, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.90, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.136 = internal global ptr @_rtl92e_read_eeprom_info._entry.135, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.90, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:priv->TxPowerLevelCCK_A[%d] = 0x%x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.139 = internal global ptr @_rtl92e_read_eeprom_info._entry.137, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.90, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017rtl819xE:priv->TxPowerLevelOFDM24G_A[%d] = 0x%x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.142 = internal global ptr @_rtl92e_read_eeprom_info._entry.140, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.90, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:priv->TxPowerLevelCCK_C[%d] = 0x%x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.145 = internal global ptr @_rtl92e_read_eeprom_info._entry.143, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.90, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017rtl819xE:priv->TxPowerLevelOFDM24G_C[%d] = 0x%x\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.148 = internal global ptr @_rtl92e_read_eeprom_info._entry.146, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.90, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017rtl819xE:\0A1T2R config\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.151 = internal global ptr @_rtl92e_read_eeprom_info._entry.149, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.90, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017rtl819xE:\0A2T4R config\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.154 = internal global ptr @_rtl92e_read_eeprom_info._entry.152, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.90, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:Toshiba ChannelPlan = 0x%x\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.157 = internal global ptr @_rtl92e_read_eeprom_info._entry.155, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.90, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:RegChannelPlan(%d)\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.160 = internal global ptr @_rtl92e_read_eeprom_info._entry.158, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.90, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:ChannelPlan = %d\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.163 = internal global ptr @_rtl92e_read_eeprom_info._entry.161, section ".printk_index", align 4
@_rtl92e_read_eeprom_info._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.90, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017rtl819xE:<==== ReadAdapterInfo\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtl92e_read_eeprom_info._entry_ptr.166 = internal global ptr @_rtl92e_read_eeprom_info._entry.164, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.169 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Impossible Queue Selection: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__._rtl92e_hw_queue_to_fw_queue = private unnamed_addr constant [29 x i8] c"_rtl92e_hw_queue_to_fw_queue\00", align 1
@_rtl92e_rate_hw_to_mgn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017rtl819xE:%s: Non supportedRate [%x], bIsHT = %d!!!\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_rate_hw_to_mgn\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_rate_hw_to_mgn._entry_ptr = internal global ptr @_rtl92e_rate_hw_to_mgn._entry, section ".printk_index", align 4
@_rtl92e_rate_hw_to_mgn._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017rtl819xE:%s: Non supported Rate [%x], bIsHT = %d!!!\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_rate_hw_to_mgn._entry_ptr.174 = internal global ptr @_rtl92e_rate_hw_to_mgn._entry.172, section ".printk_index", align 4
@_rtl92e_translate_rx_signal_stats.previous_stats = internal global { %struct.rtllib_rx_stats, [32 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_rssi_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_rssi_statistics = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_evm_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_evm_statistics = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_rtl92e_process_phyinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017rtl819xE:Jacken -> pPreviousstats->RxMIMOSignalStrength[rfpath]  = %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_rtl92e_process_phyinfo\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_process_phyinfo._entry_ptr = internal global ptr @_rtl92e_process_phyinfo._entry, section ".printk_index", align 4
@_rtl92e_process_phyinfo._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017rtl819xE:Jacken -> priv->RxStats.RxRSSIPercentage[rfPath]  = %d\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_process_phyinfo._entry_ptr.179 = internal global ptr @_rtl92e_process_phyinfo._entry.177, section ".printk_index", align 4
@_rtl92e_process_phyinfo._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.2, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:Smooth %s PWDB = %d\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_process_phyinfo._entry_ptr.182 = internal global ptr @_rtl92e_process_phyinfo._entry.180, section ".printk_index", align 4
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CCK\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OFDM\00", [27 x i8] zeroinitializer }, align 32
@_rtl92e_query_rxphystatus.check_reg824 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@_rtl92e_query_rxphystatus.reg824_bit9 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@switch.table.rtl92e_fill_tx_desc = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\00\04\06\00\13\12\11\10", [23 x i8] zeroinitializer }, align 32
@switch.table.rtl92e_get_rx_stats = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 2, i16 4, i16 11, i16 22, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 3, i64 4, i64 14, i64 17, i64 18, i64 31, i64 32, i64 46, i64 47, i64 84]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 16]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.192 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.195 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 5]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.200 = internal global [29 x i64] [i64 27, i64 8, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 160]
@__sancov_gen_cov_switch_values.201 = internal global [19 x i64] [i64 17, i64 7, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 32]
@__sancov_gen_cov_switch_values.202 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.203 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.204 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 6, i64 16, i64 32]
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 189, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 209, i32 21 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 229, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 248, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 272, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 616, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 618, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 622, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 700, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 721, i32 19 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 735, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 738, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 741, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 752, i32 20 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 821, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 825, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 827, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 830, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 833, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 844, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 846, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 849, i32 21 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 852, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 861, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 866, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 871, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 876, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 919, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 922, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 925, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 928, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1222, i32 19 }
@___asan_gen_.388 = private unnamed_addr constant [24 x i8] c"rtl92e_fill_tx_desc.tmp\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1241, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2061, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2173, i32 22 }
@___asan_gen_.407 = private unnamed_addr constant [11 x i8] c"rx_chk_cnt\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2263, i32 14 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2268, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2328, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 307, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 311, i32 19 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 332, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 333, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 346, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 354, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 357, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 358, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 359, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 375, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 398, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 407, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 424, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 426, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 437, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 440, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 452, i32 5 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 455, i32 5 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 512, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 516, i32 5 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 520, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 524, i32 5 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 541, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 543, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 577, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 606, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 607, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 608, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.591, i32 326, i32 6 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1150, i32 20 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1357, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1418, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant [15 x i8] c"previous_stats\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1857, i32 33 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"slide_rssi_index\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1682, i32 13 }
@___asan_gen_.617 = private unnamed_addr constant [22 x i8] c"slide_rssi_statistics\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1682, i32 31 }
@___asan_gen_.620 = private unnamed_addr constant [16 x i8] c"slide_evm_index\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1683, i32 13 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"slide_evm_statistics\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1683, i32 30 }
@___asan_gen_.626 = private unnamed_addr constant [28 x i8] c"slide_beacon_adc_pwdb_index\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1685, i32 13 }
@___asan_gen_.629 = private unnamed_addr constant [33 x i8] c"slide_beacon_adc_pwdb_statistics\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1686, i32 13 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1728, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1752, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1780, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [39 x i8] c"_rtl92e_query_rxphystatus.check_reg824\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [12 x i8] c"reg824_bit9\00", align 1
@___asan_gen_.661 = private constant [50 x i8] c"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1488, i32 13 }
@___asan_gen_.663 = private unnamed_addr constant [33 x i8] c"switch.table.rtl92e_fill_tx_desc\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [33 x i8] c"switch.table.rtl92e_get_rx_stats\00", align 1
@llvm.compiler.used = appending global [218 x ptr] [ptr @_rtl92e_process_phyinfo._entry, ptr @_rtl92e_process_phyinfo._entry.177, ptr @_rtl92e_process_phyinfo._entry.180, ptr @_rtl92e_process_phyinfo._entry_ptr, ptr @_rtl92e_process_phyinfo._entry_ptr.179, ptr @_rtl92e_process_phyinfo._entry_ptr.182, ptr @_rtl92e_rate_hw_to_mgn._entry, ptr @_rtl92e_rate_hw_to_mgn._entry.172, ptr @_rtl92e_rate_hw_to_mgn._entry_ptr, ptr @_rtl92e_rate_hw_to_mgn._entry_ptr.174, ptr @_rtl92e_read_eeprom_info._entry, ptr @_rtl92e_read_eeprom_info._entry.101, ptr @_rtl92e_read_eeprom_info._entry.103, ptr @_rtl92e_read_eeprom_info._entry.106, ptr @_rtl92e_read_eeprom_info._entry.109, ptr @_rtl92e_read_eeprom_info._entry.112, ptr @_rtl92e_read_eeprom_info._entry.115, ptr @_rtl92e_read_eeprom_info._entry.118, ptr @_rtl92e_read_eeprom_info._entry.121, ptr @_rtl92e_read_eeprom_info._entry.124, ptr @_rtl92e_read_eeprom_info._entry.127, ptr @_rtl92e_read_eeprom_info._entry.130, ptr @_rtl92e_read_eeprom_info._entry.132, ptr @_rtl92e_read_eeprom_info._entry.135, ptr @_rtl92e_read_eeprom_info._entry.137, ptr @_rtl92e_read_eeprom_info._entry.140, ptr @_rtl92e_read_eeprom_info._entry.143, ptr @_rtl92e_read_eeprom_info._entry.146, ptr @_rtl92e_read_eeprom_info._entry.149, ptr @_rtl92e_read_eeprom_info._entry.152, ptr @_rtl92e_read_eeprom_info._entry.155, ptr @_rtl92e_read_eeprom_info._entry.158, ptr @_rtl92e_read_eeprom_info._entry.161, ptr @_rtl92e_read_eeprom_info._entry.164, ptr @_rtl92e_read_eeprom_info._entry.92, ptr @_rtl92e_read_eeprom_info._entry.95, ptr @_rtl92e_read_eeprom_info._entry.98, ptr @_rtl92e_read_eeprom_info._entry_ptr, ptr @_rtl92e_read_eeprom_info._entry_ptr.100, ptr @_rtl92e_read_eeprom_info._entry_ptr.102, ptr @_rtl92e_read_eeprom_info._entry_ptr.105, ptr @_rtl92e_read_eeprom_info._entry_ptr.108, ptr @_rtl92e_read_eeprom_info._entry_ptr.111, ptr @_rtl92e_read_eeprom_info._entry_ptr.114, ptr @_rtl92e_read_eeprom_info._entry_ptr.117, ptr @_rtl92e_read_eeprom_info._entry_ptr.120, ptr @_rtl92e_read_eeprom_info._entry_ptr.123, ptr @_rtl92e_read_eeprom_info._entry_ptr.126, ptr @_rtl92e_read_eeprom_info._entry_ptr.129, ptr @_rtl92e_read_eeprom_info._entry_ptr.131, ptr @_rtl92e_read_eeprom_info._entry_ptr.134, ptr @_rtl92e_read_eeprom_info._entry_ptr.136, ptr @_rtl92e_read_eeprom_info._entry_ptr.139, ptr @_rtl92e_read_eeprom_info._entry_ptr.142, ptr @_rtl92e_read_eeprom_info._entry_ptr.145, ptr @_rtl92e_read_eeprom_info._entry_ptr.148, ptr @_rtl92e_read_eeprom_info._entry_ptr.151, ptr @_rtl92e_read_eeprom_info._entry_ptr.154, ptr @_rtl92e_read_eeprom_info._entry_ptr.157, ptr @_rtl92e_read_eeprom_info._entry_ptr.160, ptr @_rtl92e_read_eeprom_info._entry_ptr.163, ptr @_rtl92e_read_eeprom_info._entry_ptr.166, ptr @_rtl92e_read_eeprom_info._entry_ptr.94, ptr @_rtl92e_read_eeprom_info._entry_ptr.97, ptr @rtl92e_fill_tx_desc._entry, ptr @rtl92e_fill_tx_desc._entry_ptr, ptr @rtl92e_get_eeprom_size._entry, ptr @rtl92e_get_eeprom_size._entry.15, ptr @rtl92e_get_eeprom_size._entry.18, ptr @rtl92e_get_eeprom_size._entry_ptr, ptr @rtl92e_get_eeprom_size._entry_ptr.17, ptr @rtl92e_get_eeprom_size._entry_ptr.20, ptr @rtl92e_get_rx_stats._entry, ptr @rtl92e_get_rx_stats._entry_ptr, ptr @rtl92e_is_rx_stuck._entry, ptr @rtl92e_is_rx_stuck._entry_ptr, ptr @rtl92e_is_tx_stuck._entry, ptr @rtl92e_is_tx_stuck._entry_ptr, ptr @rtl92e_set_reg._entry, ptr @rtl92e_set_reg._entry.10, ptr @rtl92e_set_reg._entry.4, ptr @rtl92e_set_reg._entry.7, ptr @rtl92e_set_reg._entry_ptr, ptr @rtl92e_set_reg._entry_ptr.12, ptr @rtl92e_set_reg._entry_ptr.6, ptr @rtl92e_set_reg._entry_ptr.9, ptr @rtl92e_start_adapter._entry, ptr @rtl92e_start_adapter._entry.24, ptr @rtl92e_start_adapter._entry.28, ptr @rtl92e_start_adapter._entry.32, ptr @rtl92e_start_adapter._entry.35, ptr @rtl92e_start_adapter._entry.38, ptr @rtl92e_start_adapter._entry.41, ptr @rtl92e_start_adapter._entry.44, ptr @rtl92e_start_adapter._entry.47, ptr @rtl92e_start_adapter._entry.50, ptr @rtl92e_start_adapter._entry.54, ptr @rtl92e_start_adapter._entry.57, ptr @rtl92e_start_adapter._entry.60, ptr @rtl92e_start_adapter._entry.63, ptr @rtl92e_start_adapter._entry.65, ptr @rtl92e_start_adapter._entry.68, ptr @rtl92e_start_adapter._entry.71, ptr @rtl92e_start_adapter._entry.74, ptr @rtl92e_start_adapter._entry.77, ptr @rtl92e_start_adapter._entry_ptr, ptr @rtl92e_start_adapter._entry_ptr.26, ptr @rtl92e_start_adapter._entry_ptr.30, ptr @rtl92e_start_adapter._entry_ptr.34, ptr @rtl92e_start_adapter._entry_ptr.37, ptr @rtl92e_start_adapter._entry_ptr.40, ptr @rtl92e_start_adapter._entry_ptr.43, ptr @rtl92e_start_adapter._entry_ptr.46, ptr @rtl92e_start_adapter._entry_ptr.49, ptr @rtl92e_start_adapter._entry_ptr.52, ptr @rtl92e_start_adapter._entry_ptr.56, ptr @rtl92e_start_adapter._entry_ptr.59, ptr @rtl92e_start_adapter._entry_ptr.62, ptr @rtl92e_start_adapter._entry_ptr.64, ptr @rtl92e_start_adapter._entry_ptr.67, ptr @rtl92e_start_adapter._entry_ptr.70, ptr @rtl92e_start_adapter._entry_ptr.73, ptr @rtl92e_start_adapter._entry_ptr.76, ptr @rtl92e_start_adapter._entry_ptr.79, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @rtl92e_fill_tx_desc.tmp, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @rtl92e_is_rx_stuck.rx_chk_cnt, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.133, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, ptr @_rtl92e_process_phyinfo.slide_rssi_index, ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, ptr @_rtl92e_process_phyinfo.slide_evm_index, ptr @_rtl92e_process_phyinfo.slide_evm_statistics, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @_rtl92e_query_rxphystatus.check_reg824, ptr @_rtl92e_query_rxphystatus.reg824_bit9, ptr @switch.table.rtl92e_fill_tx_desc, ptr @switch.table.rtl92e_get_rx_stats], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_reg._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_reg._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_reg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_eeprom_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_eeprom_size._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_eeprom_size._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_start_adapter._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_fill_tx_desc.tmp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_fill_tx_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_get_rx_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_is_rx_stuck.rx_chk_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_is_rx_stuck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_is_tx_stuck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_read_eeprom_info._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_rate_hw_to_mgn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_rate_hw_to_mgn._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_translate_rx_signal_stats.previous_stats to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_rssi_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_rssi_statistics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_evm_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_evm_statistics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_process_phyinfo._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_query_rxphystatus.check_reg824 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_query_rxphystatus.reg824_bit9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92e_fill_tx_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92e_get_rx_stats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_start_beacon(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  tail call void @rtl92e_irq_disable(ptr noundef %dev) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 114, i16 noundef zeroext 2) #7
  %beacon_interval = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 26
  %2 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_interval, align 4
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 112, i16 noundef zeroext %3) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 116, i16 noundef zeroext 10) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 118, i16 noundef zeroext 256) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 120, i8 noundef zeroext 100) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 98, i16 noundef zeroext 1551) #7
  tail call void @rtl92e_irq_enable(ptr noundef %dev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_irq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writew(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_irq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_reg(ptr noundef %dev, i8 noundef zeroext %variable, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  %pAcParam = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %variable, label %entry.sw.epilog190_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb1
    i8 47, label %sw.bb19
    i8 17, label %sw.bb25
    i8 18, label %sw.bb28
    i8 46, label %sw.bb37
    i8 31, label %sw.bb39
    i8 32, label %sw.bb99
    i8 14, label %sw.bb185
    i8 84, label %sw.bb188
  ]

entry.sw.epilog190_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog190

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 46, i16 noundef zeroext %2) #7
  %add.ptr = getelementptr i8, ptr %val, i32 2
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 48, i32 noundef %4) #7
  br label %sw.epilog190

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call2 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 771) #7
  %7 = and i8 %call2, -4
  %8 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %6, label %sw.bb1.sw.epilog_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb8
    i32 0, label %sw.bb12
  ]

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i8 %7, 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i8 %7, 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i8 %call2, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb1.sw.epilog_crit_edge
  %btMsr.0 = phi i8 [ %11, %sw.bb12 ], [ %10, %sw.bb8 ], [ %9, %sw.bb5 ], [ %7, %sw.bb1.sw.epilog_crit_edge ]
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 771, i8 noundef zeroext %btMsr.0) #7
  br label %sw.epilog190

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %call21 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 68) #7
  %ReceiveConfig = getelementptr i8, ptr %dev, i32 35012
  %14 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call21, ptr %ReceiveConfig, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %and23 = and i32 %call21, -8388609
  %masksel = select i1 %tobool.not, i32 0, i32 8388608
  %RegRCR.0 = or i32 %and23, %masksel
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 68, i32 noundef %RegRCR.0) #7
  %15 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %RegRCR.0, ptr %ReceiveConfig, align 8
  br label %sw.epilog190

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %slot_time = getelementptr i8, ptr %dev, i32 35908
  %18 = ptrtoint ptr %slot_time to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %slot_time, align 8
  %19 = load i8, ptr %val, align 1
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 73, i8 noundef zeroext %19) #7
  br label %sw.epilog190

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29 = icmp ne i8 %21, 0
  %conv30 = zext i1 %tobool29 to i8
  %short_preamble = getelementptr i8, ptr %dev, i32 35906
  %22 = ptrtoint ptr %short_preamble to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %short_preamble, align 2
  %basic_rate = getelementptr i8, ptr %dev, i32 35904
  %23 = ptrtoint ptr %basic_rate to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %basic_rate, align 4
  %conv31 = zext i16 %24 to i32
  %or35 = or i32 %conv31, 8388608
  %spec.select = select i1 %tobool29, i32 %or35, i32 %conv31
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 784, i32 noundef %spec.select) #7
  br label %sw.epilog190

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %26) #7
  br label %sw.epilog190

sw.bb39:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pAcParam) #7
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %29 = ptrtoint ptr %pAcParam to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pAcParam, align 1
  %conv40 = zext i8 %28 to i32
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %30 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtllib, align 8
  %mode41 = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 92
  %32 = ptrtoint ptr %mode41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode41, align 8
  %qos_data = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 89, i32 6
  %arrayidx44 = getelementptr %struct.rtllib_device, ptr %31, i32 0, i32 89, i32 6, i32 0, i32 2, i32 %conv40
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx44, align 1
  %and47 = and i32 %33, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %cond = select i1 %tobool48.not, i8 20, i8 9
  %mul = mul i8 %cond, %35
  %mode51 = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 89, i32 23
  %36 = ptrtoint ptr %mode51 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mode51, align 4
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.186)
  switch i8 %37, label %lor.rhs [
    i8 1, label %sw.bb39.lor.end_crit_edge
    i8 16, label %sw.bb39.lor.end_crit_edge267
  ]

sw.bb39.lor.end_crit_edge267:                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

sw.bb39.lor.end_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp64 = icmp eq i8 %37, 32
  %phi.sel = select i1 %cmp64, i8 16, i8 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb39.lor.end_crit_edge, %sw.bb39.lor.end_crit_edge267
  %39 = phi i8 [ 16, %sw.bb39.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ 16, %sw.bb39.lor.end_crit_edge267 ]
  %add = add i8 %39, %mul
  tail call void @rtl92e_dm_init_edca_turbo(ptr noundef %dev) #7
  %40 = ptrtoint ptr %pAcParam to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pAcParam, align 1
  %idxprom68 = zext i8 %41 to i32
  %arrayidx69 = getelementptr %struct.rtllib_device, ptr %31, i32 0, i32 89, i32 6, i32 0, i32 4, i32 %idxprom68
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %arrayidx69, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv70 = zext i16 %44 to i32
  %shl = shl nuw i32 %conv70, 16
  %arrayidx72 = getelementptr %struct.rtllib_device, ptr %31, i32 0, i32 89, i32 6, i32 0, i32 1, i32 %idxprom68
  %45 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx72, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv73 = zext i16 %47 to i32
  %shl74 = shl nuw nsw i32 %conv73, 12
  %arrayidx77 = getelementptr [4 x i16], ptr %qos_data, i32 0, i32 %idxprom68
  %48 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx77, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv78 = zext i16 %50 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %conv81 = zext i8 %add to i32
  %or75 = or i32 %shl, %conv81
  %or80 = or i32 %or75, %shl74
  %or83 = or i32 %or80, %shl79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %51 = load i32, ptr @rt_global_debug_component, align 4
  %and84 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %lor.end.do.end91_crit_edge, label %do.end

lor.end.do.end91_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv40, i32 noundef %or83) #10
  br label %do.end91

do.end91:                                         ; preds = %do.end, %lor.end.do.end91_crit_edge
  %52 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %28, label %sw.default96 [
    i8 1, label %sw.bb92
    i8 0, label %sw.bb93
    i8 2, label %sw.bb94
    i8 3, label %sw.bb95
  ]

sw.bb92:                                          ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 84, i32 noundef %or83) #7
  br label %sw.epilog97

sw.bb93:                                          ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 80, i32 noundef %or83) #7
  br label %sw.epilog97

sw.bb94:                                          ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 92, i32 noundef %or83) #7
  br label %sw.epilog97

sw.bb95:                                          ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 88, i32 noundef %or83) #7
  br label %sw.epilog97

sw.default96:                                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv40) #10
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %sw.default96, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb92
  %53 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rtllib, align 8
  %SetHwRegHandler = getelementptr inbounds %struct.rtllib_device, ptr %54, i32 0, i32 203
  %55 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %SetHwRegHandler, align 8
  call void %56(ptr noundef %dev, i8 noundef zeroext 32, ptr noundef nonnull %pAcParam) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pAcParam) #7
  br label %sw.epilog190

sw.bb99:                                          ; preds = %entry
  %rtllib100 = getelementptr i8, ptr %dev, i32 31316
  %57 = ptrtoint ptr %rtllib100 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rtllib100, align 8
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val, align 1
  %conv106 = zext i8 %60 to i32
  %aifs107 = getelementptr inbounds %struct.rtllib_device, ptr %58, i32 0, i32 89, i32 6, i32 0, i32 2
  %61 = ptrtoint ptr %aifs107 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %aifs107, align 1
  %call109 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 369) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %62 = load i32, ptr @rt_global_debug_component, align 4
  %and111 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %sw.bb99.do.end121_crit_edge, label %do.end116

sw.bb99.do.end121_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end121

do.end116:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %conv106) #10
  br label %do.end121

do.end121:                                        ; preds = %do.end116, %sw.bb99.do.end121_crit_edge
  %AcmMethod = getelementptr i8, ptr %dev, i32 31780
  %63 = ptrtoint ptr %AcmMethod to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %AcmMethod, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp123 = icmp ne i32 %64, 2
  %cond125 = zext i1 %cmp123 to i8
  %or126 = or i8 %call109, %cond125
  %65 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool128.not = icmp eq i8 %65, 0
  br i1 %tobool128.not, label %if.else156, label %if.then129

if.then129:                                       ; preds = %do.end121
  %66 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %60, label %do.body143 [
    i8 0, label %sw.bb130
    i8 2, label %sw.bb134
    i8 3, label %sw.bb138
  ]

sw.bb130:                                         ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %67 = or i8 %or126, 2
  br label %do.body172

sw.bb134:                                         ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %68 = or i8 %or126, 4
  br label %do.body172

sw.bb138:                                         ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %69 = or i8 %or126, 8
  br label %do.body172

do.body143:                                       ; preds = %if.then129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %70 = load i32, ptr @rt_global_debug_component, align 4
  %and144 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.do.body172_crit_edge, label %do.end149

do.body143.do.body172_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body172

do.end149:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv106) #10
  br label %do.body172

if.else156:                                       ; preds = %do.end121
  %71 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %60, label %if.else156.do.body172_crit_edge [
    i8 0, label %sw.bb157
    i8 2, label %sw.bb161
    i8 3, label %sw.bb165
  ]

if.else156.do.body172_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body172

sw.bb157:                                         ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  %72 = and i8 %or126, -3
  br label %do.body172

sw.bb161:                                         ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  %73 = and i8 %or126, -5
  br label %do.body172

sw.bb165:                                         ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  %74 = and i8 %or126, -3
  br label %do.body172

do.body172:                                       ; preds = %sw.bb165, %sw.bb161, %sw.bb157, %if.else156.do.body172_crit_edge, %do.end149, %do.body143.do.body172_crit_edge, %sw.bb138, %sw.bb134, %sw.bb130
  %AcmCtrl.0 = phi i8 [ %or126, %do.end149 ], [ %or126, %do.body143.do.body172_crit_edge ], [ %69, %sw.bb138 ], [ %68, %sw.bb134 ], [ %67, %sw.bb130 ], [ %or126, %if.else156.do.body172_crit_edge ], [ %74, %sw.bb165 ], [ %73, %sw.bb161 ], [ %72, %sw.bb157 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %75 = load i32, ptr @rt_global_debug_component, align 4
  %and173 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %do.body172.do.end184_crit_edge, label %do.end178

do.body172.do.end184_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end184

do.end178:                                        ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #9
  %conv180 = zext i8 %AcmCtrl.0 to i32
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv180) #10
  br label %do.end184

do.end184:                                        ; preds = %do.end178, %do.body172.do.end184_crit_edge
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 369, i8 noundef zeroext %AcmCtrl.0) #7
  br label %sw.epilog190

sw.bb185:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %val, align 1
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 62, i8 noundef zeroext %77) #7
  %78 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %val, align 1
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 63, i8 noundef zeroext %79) #7
  br label %sw.epilog190

sw.bb188:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %val, align 1
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 2064, i8 noundef zeroext %81) #7
  br label %sw.epilog190

sw.epilog190:                                     ; preds = %sw.bb188, %sw.bb185, %do.end184, %sw.epilog97, %sw.bb37, %sw.bb28, %sw.bb25, %sw.bb19, %sw.epilog, %sw.bb, %entry.sw.epilog190_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_readb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_get_eeprom_size(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %bMac_Tmp_Addr.i = alloca [6 x i8], align 1
  %addr.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i16 @rtl92e_readw(ptr noundef %dev, i32 noundef 14) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %1 = load i32, ptr @rt_global_debug_component, align 4
  %and7 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.end4.do.end17_crit_edge, label %do.end12

do.end4.do.end17_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end12:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %call5 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 14, i32 noundef %conv) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.end4.do.end17_crit_edge
  %2 = lshr i16 %call5, 4
  %.lobit = and i16 %2, 1
  %epromtype = getelementptr i8, ptr %dev, i32 35914
  %3 = ptrtoint ptr %epromtype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.lobit, ptr %epromtype, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  %and23 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end17.do.end35_crit_edge, label %do.end28

do.end17.do.end35_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end28:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %5 = zext i16 %.lobit to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef %5) #10
  br label %do.end35

do.end35:                                         ; preds = %do.end28, %do.end17.do.end35_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bMac_Tmp_Addr.i) #7
  %6 = call ptr @memcpy(ptr %bMac_Tmp_Addr.i, ptr @__const._rtl92e_read_eeprom_info.bMac_Tmp_Addr, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end35.do.end4.i_crit_edge, label %do.end.i

do.end35.do.end4.i_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end35.do.end4.i_crit_edge
  %call5.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 0) #7
  %conv6.i = and i32 %call5.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 33065, i32 %conv6.i)
  %cmp.not.i = icmp eq i32 %conv6.i, 33065
  br i1 %cmp.not.i, label %if.then14.i, label %if.else93.i

if.then14.i:                                      ; preds = %do.end4.i
  %8 = getelementptr i8, ptr %dev, i32 35912
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %8, align 4
  %call15.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 1) #7
  %conv16.i = trunc i32 %call15.i to i16
  %eeprom_vid.i = getelementptr i8, ptr %dev, i32 35916
  %10 = ptrtoint ptr %eeprom_vid.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv16.i, ptr %eeprom_vid.i, align 8
  %call17.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 2) #7
  %conv18.i = trunc i32 %call17.i to i16
  %eeprom_did.i = getelementptr i8, ptr %dev, i32 35918
  %11 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv18.i, ptr %eeprom_did.i, align 2
  %call19.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 61) #7
  %shr.i = lshr i32 %call19.i, 8
  %conv23.i = trunc i32 %shr.i to i8
  %eeprom_CustomerID.i = getelementptr i8, ptr %dev, i32 35920
  %12 = ptrtoint ptr %eeprom_CustomerID.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23.i, ptr %eeprom_CustomerID.i, align 4
  %call24.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 62) #7
  %13 = trunc i32 %call24.i to i16
  %conv28.i = and i16 %13, 255
  %eeprom_ChannelPlan.i = getelementptr i8, ptr %dev, i32 35922
  %14 = ptrtoint ptr %eeprom_ChannelPlan.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv28.i, ptr %eeprom_ChannelPlan.i, align 2
  %15 = lshr i32 %call24.i, 8
  %16 = trunc i32 %15 to i8
  %conv35.i = and i8 %16, 15
  %and37.i = lshr i32 %call24.i, 12
  %17 = trunc i32 %and37.i to i8
  %conv39.i = and i8 %17, 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and41.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then14.i.do.body53.i_crit_edge, label %do.end46.i

if.then14.i.do.body53.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body53.i

do.end46.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv48.i = zext i8 %conv35.i to i32
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv48.i) #10
  br label %do.body53.i

do.body53.i:                                      ; preds = %do.end46.i, %if.then14.i.do.body53.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and54.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %do.body53.i.do.end65.i_crit_edge, label %do.end59.i

do.body53.i.do.end65.i_crit_edge:                 ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i

do.end59.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv61.i = zext i8 %conv39.i to i32
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv61.i) #10
  br label %do.end65.i

do.end65.i:                                       ; preds = %do.end59.i, %do.body53.i.do.end65.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv35.i)
  %cmp67.i = icmp eq i8 %conv35.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv39.i)
  %cmp71.i = icmp eq i8 %conv39.i, 5
  %or.cond.i = select i1 %cmp67.i, i1 %cmp71.i, i1 false
  br i1 %or.cond.i, label %if.then73.i, label %do.end65.i.if.end75.i_crit_edge

do.end65.i.if.end75.i_crit_edge:                  ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then73.i:                                      ; preds = %do.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %card_8192_version.i = getelementptr i8, ptr %dev, i32 35820
  %20 = ptrtoint ptr %card_8192_version.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %card_8192_version.i, align 8
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %do.end65.i.if.end75.i_crit_edge
  %card_8192_version76.i = getelementptr i8, ptr %dev, i32 35820
  %21 = ptrtoint ptr %card_8192_version76.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %card_8192_version76.i, align 8
  %.off.i = add i8 %22, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end75.i.do.body79.i_crit_edge, label %sw.default.i

if.end75.i.do.body79.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79.i

sw.default.i:                                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %card_8192_version76.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %card_8192_version76.i, align 8
  br label %do.body79.i

do.body79.i:                                      ; preds = %sw.default.i, %if.end75.i.do.body79.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %24 = load i32, ptr @rt_global_debug_component, align 4
  %and80.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %do.body79.i.do.body112.i_crit_edge, label %do.end85.i

do.body79.i.do.body112.i_crit_edge:               ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112.i

do.end85.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %card_8192_version76.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %card_8192_version76.i, align 8
  %conv88.i = zext i8 %26 to i32
  br label %do.body112.sink.split.i

if.else93.i:                                      ; preds = %do.end4.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %conv6.i) #10
  %27 = getelementptr i8, ptr %dev, i32 35912
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %27, align 4
  %card_8192_version94.i = getelementptr i8, ptr %dev, i32 35820
  %29 = ptrtoint ptr %card_8192_version94.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %card_8192_version94.i, align 8
  %eeprom_vid95.i = getelementptr i8, ptr %dev, i32 35916
  %eeprom_ChannelPlan98.i = getelementptr i8, ptr %dev, i32 35922
  %30 = ptrtoint ptr %eeprom_ChannelPlan98.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %eeprom_ChannelPlan98.i, align 2
  %31 = call ptr @memset(ptr %eeprom_vid95.i, i32 0, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %32 = load i32, ptr @rt_global_debug_component, align 4
  %and100.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.else93.i.do.body112.i_crit_edge, label %if.else93.i.do.body112.sink.split.i_crit_edge

if.else93.i.do.body112.sink.split.i_crit_edge:    ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112.sink.split.i

if.else93.i.do.body112.i_crit_edge:               ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112.i

do.body112.sink.split.i:                          ; preds = %if.else93.i.do.body112.sink.split.i_crit_edge, %do.end85.i
  %conv88.sink.i = phi i32 [ %conv88.i, %do.end85.i ], [ 255, %if.else93.i.do.body112.sink.split.i_crit_edge ]
  %.ph.i = phi ptr [ %8, %do.end85.i ], [ %27, %if.else93.i.do.body112.sink.split.i_crit_edge ]
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %conv88.sink.i) #10
  br label %do.body112.i

do.body112.i:                                     ; preds = %do.body112.sink.split.i, %if.else93.i.do.body112.i_crit_edge, %do.body79.i.do.body112.i_crit_edge
  %33 = phi ptr [ %8, %do.body79.i.do.body112.i_crit_edge ], [ %27, %if.else93.i.do.body112.i_crit_edge ], [ %.ph.i, %do.body112.sink.split.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and113.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  br i1 %tobool114.not.i, label %do.body112.i.do.body126.i_crit_edge, label %do.end118.i

do.body112.i.do.body126.i_crit_edge:              ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body126.i

do.end118.i:                                      ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_vid120.i = getelementptr i8, ptr %dev, i32 35916
  %35 = ptrtoint ptr %eeprom_vid120.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %eeprom_vid120.i, align 8
  %conv121.i = zext i16 %36 to i32
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv121.i) #10
  br label %do.body126.i

do.body126.i:                                     ; preds = %do.end118.i, %do.body112.i.do.body126.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %37 = load i32, ptr @rt_global_debug_component, align 4
  %and127.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %do.body126.i.do.body140.i_crit_edge, label %do.end132.i

do.body126.i.do.body140.i_crit_edge:              ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body140.i

do.end132.i:                                      ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_did134.i = getelementptr i8, ptr %dev, i32 35918
  %38 = ptrtoint ptr %eeprom_did134.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %eeprom_did134.i, align 2
  %conv135.i = zext i16 %39 to i32
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv135.i) #10
  br label %do.body140.i

do.body140.i:                                     ; preds = %do.end132.i, %do.body126.i.do.body140.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %40 = load i32, ptr @rt_global_debug_component, align 4
  %and141.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %do.body140.i.do.end153.i_crit_edge, label %do.end146.i

do.body140.i.do.end153.i_crit_edge:               ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end153.i

do.end146.i:                                      ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_CustomerID148.i = getelementptr i8, ptr %dev, i32 35920
  %41 = ptrtoint ptr %eeprom_CustomerID148.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %eeprom_CustomerID148.i, align 4
  %conv149.i = zext i8 %42 to i32
  %call150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %conv149.i) #10
  br label %do.end153.i

do.end153.i:                                      ; preds = %do.end146.i, %do.body140.i.do.end153.i_crit_edge
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool155.not.i = icmp eq i8 %44, 0
  br i1 %tobool155.not.i, label %if.then156.i, label %if.else167.i

if.then156.i:                                     ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #7
  %45 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %call162.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 6) #7
  %conv163.i = trunc i32 %call162.i to i16
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv163.i, ptr %addr.i, align 2
  %call162.1.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 7) #7
  %conv163.1.i = trunc i32 %call162.1.i to i16
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv163.1.i, ptr %45, align 2
  %call162.2.i = tail call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 8) #7
  %conv163.2.i = trunc i32 %call162.2.i to i16
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv163.2.i, ptr %46, align 2
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #7
  br label %do.body170.i

if.else167.i:                                     ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %bMac_Tmp_Addr.i, i32 noundef 6) #7
  br label %do.body170.i

do.body170.i:                                     ; preds = %if.else167.i, %if.then156.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %50 = load i32, ptr @rt_global_debug_component, align 4
  %and171.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %do.body170.i.do.end181.i_crit_edge, label %do.end176.i

do.body170.i.do.end181.i_crit_edge:               ; preds = %do.body170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end181.i

do.end176.i:                                      ; preds = %do.body170.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr.i, align 64
  %call178.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %52) #10
  br label %do.end181.i

do.end181.i:                                      ; preds = %do.end176.i, %do.body170.i.do.end181.i_crit_edge
  %card_8192_version182.i = getelementptr i8, ptr %dev, i32 35820
  %53 = ptrtoint ptr %card_8192_version182.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %card_8192_version182.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %54)
  %cmp184.i = icmp ugt i8 %54, 3
  %bTXPowerDataReadFromEEPORM.i = getelementptr i8, ptr %dev, i32 36001
  br i1 %cmp184.i, label %if.then194.i, label %if.end683.thread.i

if.end683.thread.i:                               ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %bTXPowerDataReadFromEEPORM.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %bTXPowerDataReadFromEEPORM.i, align 1
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %56 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %rf_type.i, align 1
  br label %do.body689.i

if.then194.i:                                     ; preds = %do.end181.i
  %57 = ptrtoint ptr %bTXPowerDataReadFromEEPORM.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %bTXPowerDataReadFromEEPORM.i, align 1
  %rf_type1082.i = getelementptr i8, ptr %dev, i32 35821
  %58 = ptrtoint ptr %rf_type1082.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %rf_type1082.i, align 1
  %59 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool196.not.i = icmp eq i8 %60, 0
  br i1 %tobool196.not.i, label %if.then197.i, label %if.else212.i

if.then197.i:                                     ; preds = %if.then194.i
  %call198.i = call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 20) #7
  %61 = trunc i32 %call198.i to i8
  %conv203.i = and i8 %61, 15
  %EEPROMLegacyHTTxPowerDiff.i = getelementptr i8, ptr %dev, i32 35968
  %62 = ptrtoint ptr %EEPROMLegacyHTTxPowerDiff.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv203.i, ptr %EEPROMLegacyHTTxPowerDiff.i, align 4
  %and205.i = and i32 %call198.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %tobool206.not.i = icmp eq i32 %and205.i, 0
  br i1 %tobool206.not.i, label %if.else209.i, label %if.then207.i

if.then207.i:                                     ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %rf_type1082.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %rf_type1082.i, align 1
  br label %do.body215.i

if.else209.i:                                     ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %rf_type1082.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %rf_type1082.i, align 1
  br label %do.body215.i

if.else212.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #9
  %EEPROMLegacyHTTxPowerDiff213.i = getelementptr i8, ptr %dev, i32 35968
  %65 = ptrtoint ptr %EEPROMLegacyHTTxPowerDiff213.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %EEPROMLegacyHTTxPowerDiff213.i, align 4
  br label %do.body215.i

do.body215.i:                                     ; preds = %if.else212.i, %if.else209.i, %if.then207.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %66 = load i32, ptr @rt_global_debug_component, align 4
  %and216.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216.i)
  %tobool217.not.i = icmp eq i32 %and216.i, 0
  br i1 %tobool217.not.i, label %do.body215.i.do.end228.i_crit_edge, label %do.end221.i

do.body215.i.do.end228.i_crit_edge:               ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end228.i

do.end221.i:                                      ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #9
  %EEPROMLegacyHTTxPowerDiff223.i = getelementptr i8, ptr %dev, i32 35968
  %67 = ptrtoint ptr %EEPROMLegacyHTTxPowerDiff223.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %EEPROMLegacyHTTxPowerDiff223.i, align 4
  %conv224.i = zext i8 %68 to i32
  %call225.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv224.i) #10
  br label %do.end228.i

do.end228.i:                                      ; preds = %do.end221.i, %do.body215.i.do.end228.i_crit_edge
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool230.not.i = icmp eq i8 %70, 0
  br i1 %tobool230.not.i, label %if.then231.i, label %do.end228.i.do.body239.i_crit_edge

do.end228.i.do.body239.i_crit_edge:               ; preds = %do.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

if.then231.i:                                     ; preds = %do.end228.i
  call void @__sanitizer_cov_trace_pc() #9
  %call232.i = call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 20) #7
  %and233.i = lshr i32 %call232.i, 8
  %conv235.i = trunc i32 %and233.i to i8
  br label %do.body239.i

do.body239.i:                                     ; preds = %if.then231.i, %do.end228.i.do.body239.i_crit_edge
  %.sink1117.i = phi i8 [ %conv235.i, %if.then231.i ], [ 119, %do.end228.i.do.body239.i_crit_edge ]
  %71 = getelementptr i8, ptr %dev, i32 35966
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink1117.i, ptr %71, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %73 = load i32, ptr @rt_global_debug_component, align 4
  %and240.i = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i)
  %tobool241.not.i = icmp eq i32 %and240.i, 0
  br i1 %tobool241.not.i, label %do.body239.i.do.end252.i_crit_edge, label %do.end245.i

do.body239.i.do.end252.i_crit_edge:               ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end252.i

do.end245.i:                                      ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv248.i = zext i8 %.sink1117.i to i32
  %call249.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv248.i) #10
  br label %do.end252.i

do.end252.i:                                      ; preds = %do.end245.i, %do.body239.i.do.end252.i_crit_edge
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %71, align 2
  %conv254.i = zext i8 %75 to i16
  %mul.i = mul nuw nsw i16 %conv254.i, 100
  %TSSI_13dBm.i = getelementptr i8, ptr %dev, i32 36016
  %76 = ptrtoint ptr %TSSI_13dBm.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %mul.i, ptr %TSSI_13dBm.i, align 4
  %77 = ptrtoint ptr %epromtype to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %epromtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp257.i = icmp eq i16 %78, 0
  br i1 %cmp257.i, label %if.then259.i, label %do.end252.i.if.end420.i_crit_edge

do.end252.i.if.end420.i_crit_edge:                ; preds = %do.end252.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end420.i

if.then259.i:                                     ; preds = %do.end252.i
  %79 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool261.not.i = icmp eq i8 %80, 0
  br i1 %tobool261.not.i, label %if.then262.i, label %if.then259.i.do.body276.i_crit_edge

if.then259.i.do.body276.i_crit_edge:              ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i

if.then262.i:                                     ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #9
  %call263.i = call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef 21) #7
  %81 = trunc i32 %call263.i to i16
  %conv267.i = and i16 %81, 4095
  %and269.i = lshr i32 %call263.i, 12
  %82 = trunc i32 %and269.i to i8
  %conv271.i = and i8 %82, 15
  br label %do.body276.i

do.body276.i:                                     ; preds = %if.then262.i, %if.then259.i.do.body276.i_crit_edge
  %.sink1119.i = phi i16 [ %conv267.i, %if.then262.i ], [ 0, %if.then259.i.do.body276.i_crit_edge ]
  %.sink1118.i = phi i8 [ %conv271.i, %if.then262.i ], [ 5, %if.then259.i.do.body276.i_crit_edge ]
  %83 = getelementptr i8, ptr %dev, i32 35964
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %.sink1119.i, ptr %83, align 8
  %85 = getelementptr i8, ptr %dev, i32 35967
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink1118.i, ptr %85, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %87 = load i32, ptr @rt_global_debug_component, align 4
  %and277.i = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277.i)
  %tobool278.not.i = icmp eq i32 %and277.i, 0
  br i1 %tobool278.not.i, label %do.body276.i.do.body290.i_crit_edge, label %do.end282.i

do.body276.i.do.body290.i_crit_edge:              ; preds = %do.body276.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body290.i

do.end282.i:                                      ; preds = %do.body276.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv285.i = zext i16 %.sink1119.i to i32
  %call286.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %conv285.i) #10
  br label %do.body290.i

do.body290.i:                                     ; preds = %do.end282.i, %do.body276.i.do.body290.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %88 = load i32, ptr @rt_global_debug_component, align 4
  %and291.i = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i)
  %tobool292.not.i = icmp eq i32 %and291.i, 0
  br i1 %tobool292.not.i, label %do.body290.i.for.body308.i.preheader_crit_edge, label %do.end296.i

do.body290.i.for.body308.i.preheader_crit_edge:   ; preds = %do.body290.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body308.i.preheader

do.end296.i:                                      ; preds = %do.body290.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %85, align 1
  %conv299.i = zext i8 %90 to i32
  %call300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv299.i) #10
  br label %for.body308.i.preheader

for.body308.i.preheader:                          ; preds = %do.end296.i, %do.body290.i.for.body308.i.preheader_crit_edge
  br label %for.body308.i

for.body308.i:                                    ; preds = %for.inc357.i.for.body308.i_crit_edge, %for.body308.i.preheader
  %conv3051090.i = phi i32 [ %conv305.i, %for.inc357.i.for.body308.i_crit_edge ], [ 0, %for.body308.i.preheader ]
  %91 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool310.not.i = icmp eq i8 %92, 0
  br i1 %tobool310.not.i, label %if.then311.i, label %for.body308.i.if.end318.i_crit_edge

for.body308.i.if.end318.i_crit_edge:              ; preds = %for.body308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end318.i

if.then311.i:                                     ; preds = %for.body308.i
  call void @__sanitizer_cov_trace_pc() #9
  %add313.i = add nuw nsw i32 %conv3051090.i, 44
  %93 = lshr i32 %add313.i, 1
  %call315.i = call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef %93) #7
  %conv316.i = trunc i32 %call315.i to i16
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.then311.i, %for.body308.i.if.end318.i_crit_edge
  %usValue.0.i = phi i16 [ %conv316.i, %if.then311.i ], [ 4112, %for.body308.i.if.end318.i_crit_edge ]
  %arrayidx320.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 95, i32 %conv3051090.i
  %94 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %usValue.0.i, ptr %arrayidx320.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %95 = load i32, ptr @rt_global_debug_component, align 4
  %and322.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322.i)
  %tobool323.not.i = icmp eq i32 %and322.i, 0
  br i1 %tobool323.not.i, label %if.end318.i.do.body338.i_crit_edge, label %do.end327.i

if.end318.i.do.body338.i_crit_edge:               ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body338.i

do.end327.i:                                      ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx320.i, align 1
  %conv333.i = zext i8 %97 to i32
  %call334.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %conv3051090.i, i32 noundef %conv333.i) #10
  br label %do.body338.i

do.body338.i:                                     ; preds = %do.end327.i, %if.end318.i.do.body338.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %98 = load i32, ptr @rt_global_debug_component, align 4
  %and339.i = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339.i)
  %tobool340.not.i = icmp eq i32 %and339.i, 0
  br i1 %tobool340.not.i, label %do.body338.i.for.inc357.i_crit_edge, label %do.end344.i

do.body338.i.for.inc357.i_crit_edge:              ; preds = %do.body338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc357.i

do.end344.i:                                      ; preds = %do.body338.i
  call void @__sanitizer_cov_trace_pc() #9
  %add347.i = add nuw nsw i32 %conv3051090.i, 1
  %arrayidx351.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 95, i32 %add347.i
  %99 = ptrtoint ptr %arrayidx351.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx351.i, align 1
  %conv352.i = zext i8 %100 to i32
  %call353.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %add347.i, i32 noundef %conv352.i) #10
  br label %for.inc357.i

for.inc357.i:                                     ; preds = %do.end344.i, %do.body338.i.for.inc357.i_crit_edge
  %add359.i = add nuw nsw i32 %conv3051090.i, 2
  %conv305.i = and i32 %add359.i, 65535
  %cmp306.i = icmp ult i32 %conv305.i, 14
  br i1 %cmp306.i, label %for.inc357.i.for.body308.i_crit_edge, label %for.inc357.i.for.body366.i_crit_edge

for.inc357.i.for.body366.i_crit_edge:             ; preds = %for.inc357.i
  br label %for.body366.i

for.inc357.i.for.body308.i_crit_edge:             ; preds = %for.inc357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body308.i

for.body366.i:                                    ; preds = %for.inc415.i.for.body366.i_crit_edge, %for.inc357.i.for.body366.i_crit_edge
  %conv3631091.i = phi i32 [ %conv363.i, %for.inc415.i.for.body366.i_crit_edge ], [ 0, %for.inc357.i.for.body366.i_crit_edge ]
  %101 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %33, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool368.not.i = icmp eq i8 %102, 0
  br i1 %tobool368.not.i, label %if.then369.i, label %for.body366.i.if.end376.i_crit_edge

for.body366.i.if.end376.i_crit_edge:              ; preds = %for.body366.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end376.i

if.then369.i:                                     ; preds = %for.body366.i
  call void @__sanitizer_cov_trace_pc() #9
  %add371.i = add nuw nsw i32 %conv3631091.i, 58
  %103 = lshr i32 %add371.i, 1
  %call373.i = call i32 @rtl92e_eeprom_read(ptr noundef %dev, i32 noundef %103) #7
  %conv374.i = trunc i32 %call373.i to i16
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.then369.i, %for.body366.i.if.end376.i_crit_edge
  %usValue.1.i = phi i16 [ %conv374.i, %if.then369.i ], [ 4112, %for.body366.i.if.end376.i_crit_edge ]
  %arrayidx378.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 96, i32 %conv3631091.i
  %104 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %usValue.1.i, ptr %arrayidx378.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %105 = load i32, ptr @rt_global_debug_component, align 4
  %and380.i = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i)
  %tobool381.not.i = icmp eq i32 %and380.i, 0
  br i1 %tobool381.not.i, label %if.end376.i.do.body396.i_crit_edge, label %do.end385.i

if.end376.i.do.body396.i_crit_edge:               ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body396.i

do.end385.i:                                      ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx378.i, align 1
  %conv391.i = zext i8 %107 to i32
  %call392.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv3631091.i, i32 noundef %conv391.i) #10
  br label %do.body396.i

do.body396.i:                                     ; preds = %do.end385.i, %if.end376.i.do.body396.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %108 = load i32, ptr @rt_global_debug_component, align 4
  %and397.i = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397.i)
  %tobool398.not.i = icmp eq i32 %and397.i, 0
  br i1 %tobool398.not.i, label %do.body396.i.for.inc415.i_crit_edge, label %do.end402.i

do.body396.i.for.inc415.i_crit_edge:              ; preds = %do.body396.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc415.i

do.end402.i:                                      ; preds = %do.body396.i
  call void @__sanitizer_cov_trace_pc() #9
  %add405.i = add nuw nsw i32 %conv3631091.i, 1
  %arrayidx409.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 96, i32 %add405.i
  %109 = ptrtoint ptr %arrayidx409.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx409.i, align 1
  %conv410.i = zext i8 %110 to i32
  %call411.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %add405.i, i32 noundef %conv410.i) #10
  br label %for.inc415.i

for.inc415.i:                                     ; preds = %do.end402.i, %do.body396.i.for.inc415.i_crit_edge
  %add417.i = add nuw nsw i32 %conv3631091.i, 2
  %conv363.i = and i32 %add417.i, 65535
  %cmp364.i = icmp ult i32 %conv363.i, 14
  br i1 %cmp364.i, label %for.inc415.i.for.body366.i_crit_edge, label %if.end420thread-pre-split.i

for.inc415.i.for.body366.i_crit_edge:             ; preds = %for.inc415.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body366.i

if.end420thread-pre-split.i:                      ; preds = %for.inc415.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %epromtype to i32
  call void @__asan_load2_noabort(i32 %111)
  %.pr.i = load i16, ptr %epromtype, align 2
  br label %if.end420.i

if.end420.i:                                      ; preds = %if.end420thread-pre-split.i, %do.end252.i.if.end420.i_crit_edge
  %112 = phi i16 [ %.pr.i, %if.end420thread-pre-split.i ], [ %78, %do.end252.i.if.end420.i_crit_edge ]
  %113 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.190)
  switch i16 %112, label %if.end420.i.if.end683.i_crit_edge [
    i16 0, label %for.body430.preheader.i
    i16 1, label %for.cond482.preheader.i
  ]

if.end420.i.if.end683.i_crit_edge:                ; preds = %if.end420.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end683.i

for.body430.preheader.i:                          ; preds = %if.end420.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx433.i = getelementptr i8, ptr %dev, i32 35924
  %114 = ptrtoint ptr %arrayidx433.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx433.i, align 1
  %arrayidx435.i = getelementptr i8, ptr %dev, i32 36056
  %116 = ptrtoint ptr %arrayidx435.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx435.i, align 1
  %arrayidx438.i = getelementptr i8, ptr %dev, i32 35938
  %117 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx438.i, align 1
  %arrayidx440.i = getelementptr i8, ptr %dev, i32 36098
  %119 = ptrtoint ptr %arrayidx440.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx440.i, align 1
  %arrayidx433.1.i = getelementptr i8, ptr %dev, i32 35925
  %120 = ptrtoint ptr %arrayidx433.1.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx433.1.i, align 1
  %arrayidx435.1.i = getelementptr i8, ptr %dev, i32 36057
  %122 = ptrtoint ptr %arrayidx435.1.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx435.1.i, align 1
  %arrayidx438.1.i = getelementptr i8, ptr %dev, i32 35939
  %123 = ptrtoint ptr %arrayidx438.1.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx438.1.i, align 1
  %arrayidx440.1.i = getelementptr i8, ptr %dev, i32 36099
  %125 = ptrtoint ptr %arrayidx440.1.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx440.1.i, align 1
  %arrayidx433.2.i = getelementptr i8, ptr %dev, i32 35926
  %126 = ptrtoint ptr %arrayidx433.2.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx433.2.i, align 1
  %arrayidx435.2.i = getelementptr i8, ptr %dev, i32 36058
  %128 = ptrtoint ptr %arrayidx435.2.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx435.2.i, align 1
  %arrayidx438.2.i = getelementptr i8, ptr %dev, i32 35940
  %129 = ptrtoint ptr %arrayidx438.2.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx438.2.i, align 1
  %arrayidx440.2.i = getelementptr i8, ptr %dev, i32 36100
  %131 = ptrtoint ptr %arrayidx440.2.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx440.2.i, align 1
  %arrayidx433.3.i = getelementptr i8, ptr %dev, i32 35927
  %132 = ptrtoint ptr %arrayidx433.3.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx433.3.i, align 1
  %arrayidx435.3.i = getelementptr i8, ptr %dev, i32 36059
  %134 = ptrtoint ptr %arrayidx435.3.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx435.3.i, align 1
  %arrayidx438.3.i = getelementptr i8, ptr %dev, i32 35941
  %135 = ptrtoint ptr %arrayidx438.3.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx438.3.i, align 1
  %arrayidx440.3.i = getelementptr i8, ptr %dev, i32 36101
  %137 = ptrtoint ptr %arrayidx440.3.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx440.3.i, align 1
  %arrayidx433.4.i = getelementptr i8, ptr %dev, i32 35928
  %138 = ptrtoint ptr %arrayidx433.4.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx433.4.i, align 1
  %arrayidx435.4.i = getelementptr i8, ptr %dev, i32 36060
  %140 = ptrtoint ptr %arrayidx435.4.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx435.4.i, align 1
  %arrayidx438.4.i = getelementptr i8, ptr %dev, i32 35942
  %141 = ptrtoint ptr %arrayidx438.4.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx438.4.i, align 1
  %arrayidx440.4.i = getelementptr i8, ptr %dev, i32 36102
  %143 = ptrtoint ptr %arrayidx440.4.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx440.4.i, align 1
  %arrayidx433.5.i = getelementptr i8, ptr %dev, i32 35929
  %144 = ptrtoint ptr %arrayidx433.5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx433.5.i, align 1
  %arrayidx435.5.i = getelementptr i8, ptr %dev, i32 36061
  %146 = ptrtoint ptr %arrayidx435.5.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx435.5.i, align 1
  %arrayidx438.5.i = getelementptr i8, ptr %dev, i32 35943
  %147 = ptrtoint ptr %arrayidx438.5.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx438.5.i, align 1
  %arrayidx440.5.i = getelementptr i8, ptr %dev, i32 36103
  %149 = ptrtoint ptr %arrayidx440.5.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx440.5.i, align 1
  %arrayidx433.6.i = getelementptr i8, ptr %dev, i32 35930
  %150 = ptrtoint ptr %arrayidx433.6.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx433.6.i, align 1
  %arrayidx435.6.i = getelementptr i8, ptr %dev, i32 36062
  %152 = ptrtoint ptr %arrayidx435.6.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx435.6.i, align 1
  %arrayidx438.6.i = getelementptr i8, ptr %dev, i32 35944
  %153 = ptrtoint ptr %arrayidx438.6.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx438.6.i, align 1
  %arrayidx440.6.i = getelementptr i8, ptr %dev, i32 36104
  %155 = ptrtoint ptr %arrayidx440.6.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx440.6.i, align 1
  %arrayidx433.7.i = getelementptr i8, ptr %dev, i32 35931
  %156 = ptrtoint ptr %arrayidx433.7.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx433.7.i, align 1
  %arrayidx435.7.i = getelementptr i8, ptr %dev, i32 36063
  %158 = ptrtoint ptr %arrayidx435.7.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx435.7.i, align 1
  %arrayidx438.7.i = getelementptr i8, ptr %dev, i32 35945
  %159 = ptrtoint ptr %arrayidx438.7.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx438.7.i, align 1
  %arrayidx440.7.i = getelementptr i8, ptr %dev, i32 36105
  %161 = ptrtoint ptr %arrayidx440.7.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx440.7.i, align 1
  %arrayidx433.8.i = getelementptr i8, ptr %dev, i32 35932
  %162 = ptrtoint ptr %arrayidx433.8.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx433.8.i, align 1
  %arrayidx435.8.i = getelementptr i8, ptr %dev, i32 36064
  %164 = ptrtoint ptr %arrayidx435.8.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx435.8.i, align 1
  %arrayidx438.8.i = getelementptr i8, ptr %dev, i32 35946
  %165 = ptrtoint ptr %arrayidx438.8.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx438.8.i, align 1
  %arrayidx440.8.i = getelementptr i8, ptr %dev, i32 36106
  %167 = ptrtoint ptr %arrayidx440.8.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx440.8.i, align 1
  %arrayidx433.9.i = getelementptr i8, ptr %dev, i32 35933
  %168 = ptrtoint ptr %arrayidx433.9.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx433.9.i, align 1
  %arrayidx435.9.i = getelementptr i8, ptr %dev, i32 36065
  %170 = ptrtoint ptr %arrayidx435.9.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %arrayidx435.9.i, align 1
  %arrayidx438.9.i = getelementptr i8, ptr %dev, i32 35947
  %171 = ptrtoint ptr %arrayidx438.9.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx438.9.i, align 1
  %arrayidx440.9.i = getelementptr i8, ptr %dev, i32 36107
  %173 = ptrtoint ptr %arrayidx440.9.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %arrayidx440.9.i, align 1
  %arrayidx433.10.i = getelementptr i8, ptr %dev, i32 35934
  %174 = ptrtoint ptr %arrayidx433.10.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx433.10.i, align 1
  %arrayidx435.10.i = getelementptr i8, ptr %dev, i32 36066
  %176 = ptrtoint ptr %arrayidx435.10.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx435.10.i, align 1
  %arrayidx438.10.i = getelementptr i8, ptr %dev, i32 35948
  %177 = ptrtoint ptr %arrayidx438.10.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx438.10.i, align 1
  %arrayidx440.10.i = getelementptr i8, ptr %dev, i32 36108
  %179 = ptrtoint ptr %arrayidx440.10.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %arrayidx440.10.i, align 1
  %arrayidx433.11.i = getelementptr i8, ptr %dev, i32 35935
  %180 = ptrtoint ptr %arrayidx433.11.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx433.11.i, align 1
  %arrayidx435.11.i = getelementptr i8, ptr %dev, i32 36067
  %182 = ptrtoint ptr %arrayidx435.11.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx435.11.i, align 1
  %arrayidx438.11.i = getelementptr i8, ptr %dev, i32 35949
  %183 = ptrtoint ptr %arrayidx438.11.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx438.11.i, align 1
  %arrayidx440.11.i = getelementptr i8, ptr %dev, i32 36109
  %185 = ptrtoint ptr %arrayidx440.11.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %arrayidx440.11.i, align 1
  %arrayidx433.12.i = getelementptr i8, ptr %dev, i32 35936
  %186 = ptrtoint ptr %arrayidx433.12.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx433.12.i, align 1
  %arrayidx435.12.i = getelementptr i8, ptr %dev, i32 36068
  %188 = ptrtoint ptr %arrayidx435.12.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx435.12.i, align 1
  %arrayidx438.12.i = getelementptr i8, ptr %dev, i32 35950
  %189 = ptrtoint ptr %arrayidx438.12.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx438.12.i, align 1
  %arrayidx440.12.i = getelementptr i8, ptr %dev, i32 36110
  %191 = ptrtoint ptr %arrayidx440.12.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx440.12.i, align 1
  %arrayidx433.13.i = getelementptr i8, ptr %dev, i32 35937
  %192 = ptrtoint ptr %arrayidx433.13.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx433.13.i, align 1
  %arrayidx435.13.i = getelementptr i8, ptr %dev, i32 36069
  %194 = ptrtoint ptr %arrayidx435.13.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx435.13.i, align 1
  %arrayidx438.13.i = getelementptr i8, ptr %dev, i32 35951
  %195 = ptrtoint ptr %arrayidx438.13.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx438.13.i, align 1
  %arrayidx440.13.i = getelementptr i8, ptr %dev, i32 36111
  %197 = ptrtoint ptr %arrayidx440.13.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %196, ptr %arrayidx440.13.i, align 1
  %EEPROMLegacyHTTxPowerDiff443.i = getelementptr i8, ptr %dev, i32 35968
  %198 = ptrtoint ptr %EEPROMLegacyHTTxPowerDiff443.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %EEPROMLegacyHTTxPowerDiff443.i, align 4
  %LegacyHTTxPowerDiff.i = getelementptr i8, ptr %dev, i32 36140
  %200 = ptrtoint ptr %LegacyHTTxPowerDiff.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %LegacyHTTxPowerDiff.i, align 8
  %EEPROMAntPwDiff444.i = getelementptr i8, ptr %dev, i32 35964
  %201 = ptrtoint ptr %EEPROMAntPwDiff444.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %EEPROMAntPwDiff444.i, align 8
  %203 = trunc i16 %202 to i8
  %conv447.i = and i8 %203, 15
  %AntennaTxPwDiff.i = getelementptr i8, ptr %dev, i32 36142
  %204 = ptrtoint ptr %AntennaTxPwDiff.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv447.i, ptr %AntennaTxPwDiff.i, align 2
  %205 = lshr i8 %203, 4
  %arrayidx455.i = getelementptr i8, ptr %dev, i32 36143
  %206 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx455.i, align 1
  %207 = lshr i16 %202, 8
  %208 = trunc i16 %207 to i8
  %conv460.i = and i8 %208, 15
  br label %if.end683.sink.split.i

for.cond482.preheader.i:                          ; preds = %if.end420.i
  %EEPROMRfACCKChnl1TxPwLevel.i = getelementptr i8, ptr %dev, i32 35952
  %209 = ptrtoint ptr %EEPROMRfACCKChnl1TxPwLevel.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %EEPROMRfACCKChnl1TxPwLevel.i, align 4
  %EEPROMRfAOfdmChnlTxPwLevel.i = getelementptr i8, ptr %dev, i32 35955
  %211 = ptrtoint ptr %EEPROMRfAOfdmChnlTxPwLevel.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %EEPROMRfAOfdmChnlTxPwLevel.i, align 1
  %EEPROMRfCCCKChnl1TxPwLevel.i = getelementptr i8, ptr %dev, i32 35958
  %213 = ptrtoint ptr %EEPROMRfCCCKChnl1TxPwLevel.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %EEPROMRfCCCKChnl1TxPwLevel.i, align 2
  %EEPROMRfCOfdmChnlTxPwLevel.i = getelementptr i8, ptr %dev, i32 35961
  %215 = ptrtoint ptr %EEPROMRfCOfdmChnlTxPwLevel.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %EEPROMRfCOfdmChnlTxPwLevel.i, align 1
  %uglygep.i = getelementptr i8, ptr %dev, i32 36070
  %217 = zext i8 %210 to i32
  %218 = call ptr @memset(ptr %uglygep.i, i32 %217, i32 3)
  %uglygep1105.i = getelementptr i8, ptr %dev, i32 36084
  %219 = zext i8 %214 to i32
  %220 = call ptr @memset(ptr %uglygep1105.i, i32 %219, i32 3)
  %arrayidx492.i = getelementptr i8, ptr %dev, i32 36112
  %221 = ptrtoint ptr %arrayidx492.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %212, ptr %arrayidx492.i, align 1
  %arrayidx498.i = getelementptr i8, ptr %dev, i32 36126
  %222 = ptrtoint ptr %arrayidx498.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %216, ptr %arrayidx498.i, align 1
  %arrayidx492.1.i = getelementptr i8, ptr %dev, i32 36113
  %223 = ptrtoint ptr %arrayidx492.1.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %212, ptr %arrayidx492.1.i, align 1
  %arrayidx498.1.i = getelementptr i8, ptr %dev, i32 36127
  %224 = ptrtoint ptr %arrayidx498.1.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %216, ptr %arrayidx498.1.i, align 1
  %arrayidx492.2.i = getelementptr i8, ptr %dev, i32 36114
  %225 = ptrtoint ptr %arrayidx492.2.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %212, ptr %arrayidx492.2.i, align 1
  %arrayidx498.2.i = getelementptr i8, ptr %dev, i32 36128
  %226 = ptrtoint ptr %arrayidx498.2.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %216, ptr %arrayidx498.2.i, align 1
  %arrayidx508.i = getelementptr i8, ptr %dev, i32 35953
  %227 = ptrtoint ptr %arrayidx508.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx508.i, align 1
  %arrayidx513.i = getelementptr i8, ptr %dev, i32 35956
  %229 = ptrtoint ptr %arrayidx513.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx513.i, align 1
  %arrayidx518.i = getelementptr i8, ptr %dev, i32 35959
  %231 = ptrtoint ptr %arrayidx518.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx518.i, align 1
  %arrayidx523.i = getelementptr i8, ptr %dev, i32 35962
  %233 = ptrtoint ptr %arrayidx523.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx523.i, align 1
  %uglygep1107.i = getelementptr i8, ptr %dev, i32 36073
  %235 = zext i8 %228 to i32
  %236 = call ptr @memset(ptr %uglygep1107.i, i32 %235, i32 6)
  %uglygep1109.i = getelementptr i8, ptr %dev, i32 36087
  %237 = zext i8 %232 to i32
  %238 = call ptr @memset(ptr %uglygep1109.i, i32 %237, i32 6)
  %arrayidx516.i = getelementptr i8, ptr %dev, i32 36115
  %239 = ptrtoint ptr %arrayidx516.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %230, ptr %arrayidx516.i, align 1
  %arrayidx526.i = getelementptr i8, ptr %dev, i32 36129
  %240 = ptrtoint ptr %arrayidx526.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %234, ptr %arrayidx526.i, align 1
  %arrayidx516.1.i = getelementptr i8, ptr %dev, i32 36116
  %241 = ptrtoint ptr %arrayidx516.1.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %230, ptr %arrayidx516.1.i, align 1
  %arrayidx526.1.i = getelementptr i8, ptr %dev, i32 36130
  %242 = ptrtoint ptr %arrayidx526.1.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %234, ptr %arrayidx526.1.i, align 1
  %arrayidx516.2.i = getelementptr i8, ptr %dev, i32 36117
  %243 = ptrtoint ptr %arrayidx516.2.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %230, ptr %arrayidx516.2.i, align 1
  %arrayidx526.2.i = getelementptr i8, ptr %dev, i32 36131
  %244 = ptrtoint ptr %arrayidx526.2.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %234, ptr %arrayidx526.2.i, align 1
  %arrayidx516.3.i = getelementptr i8, ptr %dev, i32 36118
  %245 = ptrtoint ptr %arrayidx516.3.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %230, ptr %arrayidx516.3.i, align 1
  %arrayidx526.3.i = getelementptr i8, ptr %dev, i32 36132
  %246 = ptrtoint ptr %arrayidx526.3.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %234, ptr %arrayidx526.3.i, align 1
  %arrayidx516.4.i = getelementptr i8, ptr %dev, i32 36119
  %247 = ptrtoint ptr %arrayidx516.4.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %230, ptr %arrayidx516.4.i, align 1
  %arrayidx526.4.i = getelementptr i8, ptr %dev, i32 36133
  %248 = ptrtoint ptr %arrayidx526.4.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %234, ptr %arrayidx526.4.i, align 1
  %arrayidx516.5.i = getelementptr i8, ptr %dev, i32 36120
  %249 = ptrtoint ptr %arrayidx516.5.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %230, ptr %arrayidx516.5.i, align 1
  %arrayidx526.5.i = getelementptr i8, ptr %dev, i32 36134
  %250 = ptrtoint ptr %arrayidx526.5.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %234, ptr %arrayidx526.5.i, align 1
  %arrayidx536.i = getelementptr i8, ptr %dev, i32 35954
  %251 = ptrtoint ptr %arrayidx536.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx536.i, align 2
  %arrayidx541.i = getelementptr i8, ptr %dev, i32 35957
  %253 = ptrtoint ptr %arrayidx541.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx541.i, align 1
  %arrayidx546.i = getelementptr i8, ptr %dev, i32 35960
  %255 = ptrtoint ptr %arrayidx546.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx546.i, align 2
  %arrayidx551.i = getelementptr i8, ptr %dev, i32 35963
  %257 = ptrtoint ptr %arrayidx551.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx551.i, align 1
  %uglygep1111.i = getelementptr i8, ptr %dev, i32 36079
  %259 = zext i8 %252 to i32
  %260 = call ptr @memset(ptr %uglygep1111.i, i32 %259, i32 5)
  %uglygep1113.i = getelementptr i8, ptr %dev, i32 36093
  %261 = zext i8 %256 to i32
  %262 = call ptr @memset(ptr %uglygep1113.i, i32 %261, i32 5)
  %arrayidx544.i = getelementptr i8, ptr %dev, i32 36121
  %263 = ptrtoint ptr %arrayidx544.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %254, ptr %arrayidx544.i, align 1
  %arrayidx554.i = getelementptr i8, ptr %dev, i32 36135
  %264 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %258, ptr %arrayidx554.i, align 1
  %arrayidx544.1.i = getelementptr i8, ptr %dev, i32 36122
  %265 = ptrtoint ptr %arrayidx544.1.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %254, ptr %arrayidx544.1.i, align 1
  %arrayidx554.1.i = getelementptr i8, ptr %dev, i32 36136
  %266 = ptrtoint ptr %arrayidx554.1.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %258, ptr %arrayidx554.1.i, align 1
  %arrayidx544.2.i = getelementptr i8, ptr %dev, i32 36123
  %267 = ptrtoint ptr %arrayidx544.2.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %254, ptr %arrayidx544.2.i, align 1
  %arrayidx554.2.i = getelementptr i8, ptr %dev, i32 36137
  %268 = ptrtoint ptr %arrayidx554.2.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %258, ptr %arrayidx554.2.i, align 1
  %arrayidx544.3.i = getelementptr i8, ptr %dev, i32 36124
  %269 = ptrtoint ptr %arrayidx544.3.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %254, ptr %arrayidx544.3.i, align 1
  %arrayidx554.3.i = getelementptr i8, ptr %dev, i32 36138
  %270 = ptrtoint ptr %arrayidx554.3.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %258, ptr %arrayidx554.3.i, align 1
  %arrayidx544.4.i = getelementptr i8, ptr %dev, i32 36125
  %271 = ptrtoint ptr %arrayidx544.4.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %254, ptr %arrayidx544.4.i, align 1
  %arrayidx554.4.i = getelementptr i8, ptr %dev, i32 36139
  %272 = ptrtoint ptr %arrayidx554.4.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %258, ptr %arrayidx554.4.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %273 = load i32, ptr @rt_global_debug_component, align 4
  %and564.i = and i32 %273, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.i)
  %tobool565.not.i = icmp eq i32 %and564.i, 0
  br i1 %tobool565.not.i, label %for.cond482.preheader.i.for.inc580.i_crit_edge, label %do.end569.i

for.cond482.preheader.i.for.inc580.i_crit_edge:   ; preds = %for.cond482.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.i

do.end569.i:                                      ; preds = %for.cond482.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %uglygep.i, align 1
  %conv575.i = zext i8 %275 to i32
  %call576.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 0, i32 noundef %conv575.i) #10
  br label %for.inc580.i

for.inc580.i:                                     ; preds = %do.end569.i, %for.cond482.preheader.i.for.inc580.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %276 = load i32, ptr @rt_global_debug_component, align 4
  %and564.1.i = and i32 %276, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.1.i)
  %tobool565.not.1.i = icmp eq i32 %and564.1.i, 0
  br i1 %tobool565.not.1.i, label %for.inc580.i.for.inc580.1.i_crit_edge, label %do.end569.1.i

for.inc580.i.for.inc580.1.i_crit_edge:            ; preds = %for.inc580.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.1.i

do.end569.1.i:                                    ; preds = %for.inc580.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.1.i = getelementptr i8, ptr %dev, i32 36071
  %277 = ptrtoint ptr %arrayidx574.1.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx574.1.i, align 1
  %conv575.1.i = zext i8 %278 to i32
  %call576.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 1, i32 noundef %conv575.1.i) #10
  br label %for.inc580.1.i

for.inc580.1.i:                                   ; preds = %do.end569.1.i, %for.inc580.i.for.inc580.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %279 = load i32, ptr @rt_global_debug_component, align 4
  %and564.2.i = and i32 %279, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.2.i)
  %tobool565.not.2.i = icmp eq i32 %and564.2.i, 0
  br i1 %tobool565.not.2.i, label %for.inc580.1.i.for.inc580.2.i_crit_edge, label %do.end569.2.i

for.inc580.1.i.for.inc580.2.i_crit_edge:          ; preds = %for.inc580.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.2.i

do.end569.2.i:                                    ; preds = %for.inc580.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.2.i = getelementptr i8, ptr %dev, i32 36072
  %280 = ptrtoint ptr %arrayidx574.2.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx574.2.i, align 1
  %conv575.2.i = zext i8 %281 to i32
  %call576.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 2, i32 noundef %conv575.2.i) #10
  br label %for.inc580.2.i

for.inc580.2.i:                                   ; preds = %do.end569.2.i, %for.inc580.1.i.for.inc580.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %282 = load i32, ptr @rt_global_debug_component, align 4
  %and564.3.i = and i32 %282, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.3.i)
  %tobool565.not.3.i = icmp eq i32 %and564.3.i, 0
  br i1 %tobool565.not.3.i, label %for.inc580.2.i.for.inc580.3.i_crit_edge, label %do.end569.3.i

for.inc580.2.i.for.inc580.3.i_crit_edge:          ; preds = %for.inc580.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.3.i

do.end569.3.i:                                    ; preds = %for.inc580.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %283 = ptrtoint ptr %uglygep1107.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %uglygep1107.i, align 1
  %conv575.3.i = zext i8 %284 to i32
  %call576.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 3, i32 noundef %conv575.3.i) #10
  br label %for.inc580.3.i

for.inc580.3.i:                                   ; preds = %do.end569.3.i, %for.inc580.2.i.for.inc580.3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %285 = load i32, ptr @rt_global_debug_component, align 4
  %and564.4.i = and i32 %285, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.4.i)
  %tobool565.not.4.i = icmp eq i32 %and564.4.i, 0
  br i1 %tobool565.not.4.i, label %for.inc580.3.i.for.inc580.4.i_crit_edge, label %do.end569.4.i

for.inc580.3.i.for.inc580.4.i_crit_edge:          ; preds = %for.inc580.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.4.i

do.end569.4.i:                                    ; preds = %for.inc580.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.4.i = getelementptr i8, ptr %dev, i32 36074
  %286 = ptrtoint ptr %arrayidx574.4.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx574.4.i, align 1
  %conv575.4.i = zext i8 %287 to i32
  %call576.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 4, i32 noundef %conv575.4.i) #10
  br label %for.inc580.4.i

for.inc580.4.i:                                   ; preds = %do.end569.4.i, %for.inc580.3.i.for.inc580.4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %288 = load i32, ptr @rt_global_debug_component, align 4
  %and564.5.i = and i32 %288, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.5.i)
  %tobool565.not.5.i = icmp eq i32 %and564.5.i, 0
  br i1 %tobool565.not.5.i, label %for.inc580.4.i.for.inc580.5.i_crit_edge, label %do.end569.5.i

for.inc580.4.i.for.inc580.5.i_crit_edge:          ; preds = %for.inc580.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.5.i

do.end569.5.i:                                    ; preds = %for.inc580.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.5.i = getelementptr i8, ptr %dev, i32 36075
  %289 = ptrtoint ptr %arrayidx574.5.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx574.5.i, align 1
  %conv575.5.i = zext i8 %290 to i32
  %call576.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 5, i32 noundef %conv575.5.i) #10
  br label %for.inc580.5.i

for.inc580.5.i:                                   ; preds = %do.end569.5.i, %for.inc580.4.i.for.inc580.5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %291 = load i32, ptr @rt_global_debug_component, align 4
  %and564.6.i = and i32 %291, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.6.i)
  %tobool565.not.6.i = icmp eq i32 %and564.6.i, 0
  br i1 %tobool565.not.6.i, label %for.inc580.5.i.for.inc580.6.i_crit_edge, label %do.end569.6.i

for.inc580.5.i.for.inc580.6.i_crit_edge:          ; preds = %for.inc580.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.6.i

do.end569.6.i:                                    ; preds = %for.inc580.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.6.i = getelementptr i8, ptr %dev, i32 36076
  %292 = ptrtoint ptr %arrayidx574.6.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx574.6.i, align 1
  %conv575.6.i = zext i8 %293 to i32
  %call576.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 6, i32 noundef %conv575.6.i) #10
  br label %for.inc580.6.i

for.inc580.6.i:                                   ; preds = %do.end569.6.i, %for.inc580.5.i.for.inc580.6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %294 = load i32, ptr @rt_global_debug_component, align 4
  %and564.7.i = and i32 %294, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.7.i)
  %tobool565.not.7.i = icmp eq i32 %and564.7.i, 0
  br i1 %tobool565.not.7.i, label %for.inc580.6.i.for.inc580.7.i_crit_edge, label %do.end569.7.i

for.inc580.6.i.for.inc580.7.i_crit_edge:          ; preds = %for.inc580.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.7.i

do.end569.7.i:                                    ; preds = %for.inc580.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.7.i = getelementptr i8, ptr %dev, i32 36077
  %295 = ptrtoint ptr %arrayidx574.7.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx574.7.i, align 1
  %conv575.7.i = zext i8 %296 to i32
  %call576.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 7, i32 noundef %conv575.7.i) #10
  br label %for.inc580.7.i

for.inc580.7.i:                                   ; preds = %do.end569.7.i, %for.inc580.6.i.for.inc580.7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %297 = load i32, ptr @rt_global_debug_component, align 4
  %and564.8.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.8.i)
  %tobool565.not.8.i = icmp eq i32 %and564.8.i, 0
  br i1 %tobool565.not.8.i, label %for.inc580.7.i.for.inc580.8.i_crit_edge, label %do.end569.8.i

for.inc580.7.i.for.inc580.8.i_crit_edge:          ; preds = %for.inc580.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.8.i

do.end569.8.i:                                    ; preds = %for.inc580.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.8.i = getelementptr i8, ptr %dev, i32 36078
  %298 = ptrtoint ptr %arrayidx574.8.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx574.8.i, align 1
  %conv575.8.i = zext i8 %299 to i32
  %call576.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 8, i32 noundef %conv575.8.i) #10
  br label %for.inc580.8.i

for.inc580.8.i:                                   ; preds = %do.end569.8.i, %for.inc580.7.i.for.inc580.8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %300 = load i32, ptr @rt_global_debug_component, align 4
  %and564.9.i = and i32 %300, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.9.i)
  %tobool565.not.9.i = icmp eq i32 %and564.9.i, 0
  br i1 %tobool565.not.9.i, label %for.inc580.8.i.for.inc580.9.i_crit_edge, label %do.end569.9.i

for.inc580.8.i.for.inc580.9.i_crit_edge:          ; preds = %for.inc580.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.9.i

do.end569.9.i:                                    ; preds = %for.inc580.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %301 = ptrtoint ptr %uglygep1111.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %uglygep1111.i, align 1
  %conv575.9.i = zext i8 %302 to i32
  %call576.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 9, i32 noundef %conv575.9.i) #10
  br label %for.inc580.9.i

for.inc580.9.i:                                   ; preds = %do.end569.9.i, %for.inc580.8.i.for.inc580.9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %303 = load i32, ptr @rt_global_debug_component, align 4
  %and564.10.i = and i32 %303, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.10.i)
  %tobool565.not.10.i = icmp eq i32 %and564.10.i, 0
  br i1 %tobool565.not.10.i, label %for.inc580.9.i.for.inc580.10.i_crit_edge, label %do.end569.10.i

for.inc580.9.i.for.inc580.10.i_crit_edge:         ; preds = %for.inc580.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.10.i

do.end569.10.i:                                   ; preds = %for.inc580.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.10.i = getelementptr i8, ptr %dev, i32 36080
  %304 = ptrtoint ptr %arrayidx574.10.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx574.10.i, align 1
  %conv575.10.i = zext i8 %305 to i32
  %call576.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 10, i32 noundef %conv575.10.i) #10
  br label %for.inc580.10.i

for.inc580.10.i:                                  ; preds = %do.end569.10.i, %for.inc580.9.i.for.inc580.10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %306 = load i32, ptr @rt_global_debug_component, align 4
  %and564.11.i = and i32 %306, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.11.i)
  %tobool565.not.11.i = icmp eq i32 %and564.11.i, 0
  br i1 %tobool565.not.11.i, label %for.inc580.10.i.for.inc580.11.i_crit_edge, label %do.end569.11.i

for.inc580.10.i.for.inc580.11.i_crit_edge:        ; preds = %for.inc580.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.11.i

do.end569.11.i:                                   ; preds = %for.inc580.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.11.i = getelementptr i8, ptr %dev, i32 36081
  %307 = ptrtoint ptr %arrayidx574.11.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx574.11.i, align 1
  %conv575.11.i = zext i8 %308 to i32
  %call576.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 11, i32 noundef %conv575.11.i) #10
  br label %for.inc580.11.i

for.inc580.11.i:                                  ; preds = %do.end569.11.i, %for.inc580.10.i.for.inc580.11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %309 = load i32, ptr @rt_global_debug_component, align 4
  %and564.12.i = and i32 %309, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.12.i)
  %tobool565.not.12.i = icmp eq i32 %and564.12.i, 0
  br i1 %tobool565.not.12.i, label %for.inc580.11.i.for.inc580.12.i_crit_edge, label %do.end569.12.i

for.inc580.11.i.for.inc580.12.i_crit_edge:        ; preds = %for.inc580.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.12.i

do.end569.12.i:                                   ; preds = %for.inc580.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.12.i = getelementptr i8, ptr %dev, i32 36082
  %310 = ptrtoint ptr %arrayidx574.12.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx574.12.i, align 1
  %conv575.12.i = zext i8 %311 to i32
  %call576.12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 12, i32 noundef %conv575.12.i) #10
  br label %for.inc580.12.i

for.inc580.12.i:                                  ; preds = %do.end569.12.i, %for.inc580.11.i.for.inc580.12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %312 = load i32, ptr @rt_global_debug_component, align 4
  %and564.13.i = and i32 %312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564.13.i)
  %tobool565.not.13.i = icmp eq i32 %and564.13.i, 0
  br i1 %tobool565.not.13.i, label %for.inc580.12.i.for.inc580.13.i_crit_edge, label %do.end569.13.i

for.inc580.12.i.for.inc580.13.i_crit_edge:        ; preds = %for.inc580.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc580.13.i

do.end569.13.i:                                   ; preds = %for.inc580.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx574.13.i = getelementptr i8, ptr %dev, i32 36083
  %313 = ptrtoint ptr %arrayidx574.13.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx574.13.i, align 1
  %conv575.13.i = zext i8 %314 to i32
  %call576.13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef 13, i32 noundef %conv575.13.i) #10
  br label %for.inc580.13.i

for.inc580.13.i:                                  ; preds = %do.end569.13.i, %for.inc580.12.i.for.inc580.13.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %315 = load i32, ptr @rt_global_debug_component, align 4
  %and589.i = and i32 %315, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.i)
  %tobool590.not.i = icmp eq i32 %and589.i, 0
  br i1 %tobool590.not.i, label %for.inc580.13.i.for.inc605.i_crit_edge, label %do.end594.i

for.inc580.13.i.for.inc605.i_crit_edge:           ; preds = %for.inc580.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.i

do.end594.i:                                      ; preds = %for.inc580.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %316 = ptrtoint ptr %arrayidx492.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx492.i, align 1
  %conv600.i = zext i8 %317 to i32
  %call601.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef %conv600.i) #10
  br label %for.inc605.i

for.inc605.i:                                     ; preds = %do.end594.i, %for.inc580.13.i.for.inc605.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %318 = load i32, ptr @rt_global_debug_component, align 4
  %and589.1.i = and i32 %318, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.1.i)
  %tobool590.not.1.i = icmp eq i32 %and589.1.i, 0
  br i1 %tobool590.not.1.i, label %for.inc605.i.for.inc605.1.i_crit_edge, label %do.end594.1.i

for.inc605.i.for.inc605.1.i_crit_edge:            ; preds = %for.inc605.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.1.i

do.end594.1.i:                                    ; preds = %for.inc605.i
  call void @__sanitizer_cov_trace_pc() #9
  %319 = ptrtoint ptr %arrayidx492.1.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx492.1.i, align 1
  %conv600.1.i = zext i8 %320 to i32
  %call601.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 1, i32 noundef %conv600.1.i) #10
  br label %for.inc605.1.i

for.inc605.1.i:                                   ; preds = %do.end594.1.i, %for.inc605.i.for.inc605.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %321 = load i32, ptr @rt_global_debug_component, align 4
  %and589.2.i = and i32 %321, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.2.i)
  %tobool590.not.2.i = icmp eq i32 %and589.2.i, 0
  br i1 %tobool590.not.2.i, label %for.inc605.1.i.for.inc605.2.i_crit_edge, label %do.end594.2.i

for.inc605.1.i.for.inc605.2.i_crit_edge:          ; preds = %for.inc605.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.2.i

do.end594.2.i:                                    ; preds = %for.inc605.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %322 = ptrtoint ptr %arrayidx492.2.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx492.2.i, align 1
  %conv600.2.i = zext i8 %323 to i32
  %call601.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 2, i32 noundef %conv600.2.i) #10
  br label %for.inc605.2.i

for.inc605.2.i:                                   ; preds = %do.end594.2.i, %for.inc605.1.i.for.inc605.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %324 = load i32, ptr @rt_global_debug_component, align 4
  %and589.3.i = and i32 %324, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.3.i)
  %tobool590.not.3.i = icmp eq i32 %and589.3.i, 0
  br i1 %tobool590.not.3.i, label %for.inc605.2.i.for.inc605.3.i_crit_edge, label %do.end594.3.i

for.inc605.2.i.for.inc605.3.i_crit_edge:          ; preds = %for.inc605.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.3.i

do.end594.3.i:                                    ; preds = %for.inc605.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %325 = ptrtoint ptr %arrayidx516.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx516.i, align 1
  %conv600.3.i = zext i8 %326 to i32
  %call601.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 3, i32 noundef %conv600.3.i) #10
  br label %for.inc605.3.i

for.inc605.3.i:                                   ; preds = %do.end594.3.i, %for.inc605.2.i.for.inc605.3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %327 = load i32, ptr @rt_global_debug_component, align 4
  %and589.4.i = and i32 %327, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.4.i)
  %tobool590.not.4.i = icmp eq i32 %and589.4.i, 0
  br i1 %tobool590.not.4.i, label %for.inc605.3.i.for.inc605.4.i_crit_edge, label %do.end594.4.i

for.inc605.3.i.for.inc605.4.i_crit_edge:          ; preds = %for.inc605.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.4.i

do.end594.4.i:                                    ; preds = %for.inc605.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %arrayidx516.1.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx516.1.i, align 1
  %conv600.4.i = zext i8 %329 to i32
  %call601.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 4, i32 noundef %conv600.4.i) #10
  br label %for.inc605.4.i

for.inc605.4.i:                                   ; preds = %do.end594.4.i, %for.inc605.3.i.for.inc605.4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %330 = load i32, ptr @rt_global_debug_component, align 4
  %and589.5.i = and i32 %330, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.5.i)
  %tobool590.not.5.i = icmp eq i32 %and589.5.i, 0
  br i1 %tobool590.not.5.i, label %for.inc605.4.i.for.inc605.5.i_crit_edge, label %do.end594.5.i

for.inc605.4.i.for.inc605.5.i_crit_edge:          ; preds = %for.inc605.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.5.i

do.end594.5.i:                                    ; preds = %for.inc605.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %331 = ptrtoint ptr %arrayidx516.2.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx516.2.i, align 1
  %conv600.5.i = zext i8 %332 to i32
  %call601.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 5, i32 noundef %conv600.5.i) #10
  br label %for.inc605.5.i

for.inc605.5.i:                                   ; preds = %do.end594.5.i, %for.inc605.4.i.for.inc605.5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %333 = load i32, ptr @rt_global_debug_component, align 4
  %and589.6.i = and i32 %333, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.6.i)
  %tobool590.not.6.i = icmp eq i32 %and589.6.i, 0
  br i1 %tobool590.not.6.i, label %for.inc605.5.i.for.inc605.6.i_crit_edge, label %do.end594.6.i

for.inc605.5.i.for.inc605.6.i_crit_edge:          ; preds = %for.inc605.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.6.i

do.end594.6.i:                                    ; preds = %for.inc605.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %334 = ptrtoint ptr %arrayidx516.3.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx516.3.i, align 1
  %conv600.6.i = zext i8 %335 to i32
  %call601.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 6, i32 noundef %conv600.6.i) #10
  br label %for.inc605.6.i

for.inc605.6.i:                                   ; preds = %do.end594.6.i, %for.inc605.5.i.for.inc605.6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %336 = load i32, ptr @rt_global_debug_component, align 4
  %and589.7.i = and i32 %336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.7.i)
  %tobool590.not.7.i = icmp eq i32 %and589.7.i, 0
  br i1 %tobool590.not.7.i, label %for.inc605.6.i.for.inc605.7.i_crit_edge, label %do.end594.7.i

for.inc605.6.i.for.inc605.7.i_crit_edge:          ; preds = %for.inc605.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.7.i

do.end594.7.i:                                    ; preds = %for.inc605.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %337 = ptrtoint ptr %arrayidx516.4.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx516.4.i, align 1
  %conv600.7.i = zext i8 %338 to i32
  %call601.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 7, i32 noundef %conv600.7.i) #10
  br label %for.inc605.7.i

for.inc605.7.i:                                   ; preds = %do.end594.7.i, %for.inc605.6.i.for.inc605.7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %339 = load i32, ptr @rt_global_debug_component, align 4
  %and589.8.i = and i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.8.i)
  %tobool590.not.8.i = icmp eq i32 %and589.8.i, 0
  br i1 %tobool590.not.8.i, label %for.inc605.7.i.for.inc605.8.i_crit_edge, label %do.end594.8.i

for.inc605.7.i.for.inc605.8.i_crit_edge:          ; preds = %for.inc605.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.8.i

do.end594.8.i:                                    ; preds = %for.inc605.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %340 = ptrtoint ptr %arrayidx516.5.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx516.5.i, align 1
  %conv600.8.i = zext i8 %341 to i32
  %call601.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 8, i32 noundef %conv600.8.i) #10
  br label %for.inc605.8.i

for.inc605.8.i:                                   ; preds = %do.end594.8.i, %for.inc605.7.i.for.inc605.8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %342 = load i32, ptr @rt_global_debug_component, align 4
  %and589.9.i = and i32 %342, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.9.i)
  %tobool590.not.9.i = icmp eq i32 %and589.9.i, 0
  br i1 %tobool590.not.9.i, label %for.inc605.8.i.for.inc605.9.i_crit_edge, label %do.end594.9.i

for.inc605.8.i.for.inc605.9.i_crit_edge:          ; preds = %for.inc605.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.9.i

do.end594.9.i:                                    ; preds = %for.inc605.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %343 = ptrtoint ptr %arrayidx544.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx544.i, align 1
  %conv600.9.i = zext i8 %344 to i32
  %call601.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 9, i32 noundef %conv600.9.i) #10
  br label %for.inc605.9.i

for.inc605.9.i:                                   ; preds = %do.end594.9.i, %for.inc605.8.i.for.inc605.9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %345 = load i32, ptr @rt_global_debug_component, align 4
  %and589.10.i = and i32 %345, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.10.i)
  %tobool590.not.10.i = icmp eq i32 %and589.10.i, 0
  br i1 %tobool590.not.10.i, label %for.inc605.9.i.for.inc605.10.i_crit_edge, label %do.end594.10.i

for.inc605.9.i.for.inc605.10.i_crit_edge:         ; preds = %for.inc605.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.10.i

do.end594.10.i:                                   ; preds = %for.inc605.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %346 = ptrtoint ptr %arrayidx544.1.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx544.1.i, align 1
  %conv600.10.i = zext i8 %347 to i32
  %call601.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 10, i32 noundef %conv600.10.i) #10
  br label %for.inc605.10.i

for.inc605.10.i:                                  ; preds = %do.end594.10.i, %for.inc605.9.i.for.inc605.10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %348 = load i32, ptr @rt_global_debug_component, align 4
  %and589.11.i = and i32 %348, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.11.i)
  %tobool590.not.11.i = icmp eq i32 %and589.11.i, 0
  br i1 %tobool590.not.11.i, label %for.inc605.10.i.for.inc605.11.i_crit_edge, label %do.end594.11.i

for.inc605.10.i.for.inc605.11.i_crit_edge:        ; preds = %for.inc605.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.11.i

do.end594.11.i:                                   ; preds = %for.inc605.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %349 = ptrtoint ptr %arrayidx544.2.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx544.2.i, align 1
  %conv600.11.i = zext i8 %350 to i32
  %call601.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 11, i32 noundef %conv600.11.i) #10
  br label %for.inc605.11.i

for.inc605.11.i:                                  ; preds = %do.end594.11.i, %for.inc605.10.i.for.inc605.11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %351 = load i32, ptr @rt_global_debug_component, align 4
  %and589.12.i = and i32 %351, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.12.i)
  %tobool590.not.12.i = icmp eq i32 %and589.12.i, 0
  br i1 %tobool590.not.12.i, label %for.inc605.11.i.for.inc605.12.i_crit_edge, label %do.end594.12.i

for.inc605.11.i.for.inc605.12.i_crit_edge:        ; preds = %for.inc605.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.12.i

do.end594.12.i:                                   ; preds = %for.inc605.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %352 = ptrtoint ptr %arrayidx544.3.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx544.3.i, align 1
  %conv600.12.i = zext i8 %353 to i32
  %call601.12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 12, i32 noundef %conv600.12.i) #10
  br label %for.inc605.12.i

for.inc605.12.i:                                  ; preds = %do.end594.12.i, %for.inc605.11.i.for.inc605.12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %354 = load i32, ptr @rt_global_debug_component, align 4
  %and589.13.i = and i32 %354, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589.13.i)
  %tobool590.not.13.i = icmp eq i32 %and589.13.i, 0
  br i1 %tobool590.not.13.i, label %for.inc605.12.i.for.inc605.13.i_crit_edge, label %do.end594.13.i

for.inc605.12.i.for.inc605.13.i_crit_edge:        ; preds = %for.inc605.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc605.13.i

do.end594.13.i:                                   ; preds = %for.inc605.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %355 = ptrtoint ptr %arrayidx544.4.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx544.4.i, align 1
  %conv600.13.i = zext i8 %356 to i32
  %call601.13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef 13, i32 noundef %conv600.13.i) #10
  br label %for.inc605.13.i

for.inc605.13.i:                                  ; preds = %do.end594.13.i, %for.inc605.12.i.for.inc605.13.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %357 = load i32, ptr @rt_global_debug_component, align 4
  %and614.i = and i32 %357, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.i)
  %tobool615.not.i = icmp eq i32 %and614.i, 0
  br i1 %tobool615.not.i, label %for.inc605.13.i.for.inc630.i_crit_edge, label %do.end619.i

for.inc605.13.i.for.inc630.i_crit_edge:           ; preds = %for.inc605.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.i

do.end619.i:                                      ; preds = %for.inc605.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %358 = ptrtoint ptr %uglygep1105.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %uglygep1105.i, align 1
  %conv625.i = zext i8 %359 to i32
  %call626.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 0, i32 noundef %conv625.i) #10
  br label %for.inc630.i

for.inc630.i:                                     ; preds = %do.end619.i, %for.inc605.13.i.for.inc630.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %360 = load i32, ptr @rt_global_debug_component, align 4
  %and614.1.i = and i32 %360, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.1.i)
  %tobool615.not.1.i = icmp eq i32 %and614.1.i, 0
  br i1 %tobool615.not.1.i, label %for.inc630.i.for.inc630.1.i_crit_edge, label %do.end619.1.i

for.inc630.i.for.inc630.1.i_crit_edge:            ; preds = %for.inc630.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.1.i

do.end619.1.i:                                    ; preds = %for.inc630.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.1.i = getelementptr i8, ptr %dev, i32 36085
  %361 = ptrtoint ptr %arrayidx624.1.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx624.1.i, align 1
  %conv625.1.i = zext i8 %362 to i32
  %call626.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 1, i32 noundef %conv625.1.i) #10
  br label %for.inc630.1.i

for.inc630.1.i:                                   ; preds = %do.end619.1.i, %for.inc630.i.for.inc630.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %363 = load i32, ptr @rt_global_debug_component, align 4
  %and614.2.i = and i32 %363, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.2.i)
  %tobool615.not.2.i = icmp eq i32 %and614.2.i, 0
  br i1 %tobool615.not.2.i, label %for.inc630.1.i.for.inc630.2.i_crit_edge, label %do.end619.2.i

for.inc630.1.i.for.inc630.2.i_crit_edge:          ; preds = %for.inc630.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.2.i

do.end619.2.i:                                    ; preds = %for.inc630.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.2.i = getelementptr i8, ptr %dev, i32 36086
  %364 = ptrtoint ptr %arrayidx624.2.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx624.2.i, align 1
  %conv625.2.i = zext i8 %365 to i32
  %call626.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 2, i32 noundef %conv625.2.i) #10
  br label %for.inc630.2.i

for.inc630.2.i:                                   ; preds = %do.end619.2.i, %for.inc630.1.i.for.inc630.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %366 = load i32, ptr @rt_global_debug_component, align 4
  %and614.3.i = and i32 %366, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.3.i)
  %tobool615.not.3.i = icmp eq i32 %and614.3.i, 0
  br i1 %tobool615.not.3.i, label %for.inc630.2.i.for.inc630.3.i_crit_edge, label %do.end619.3.i

for.inc630.2.i.for.inc630.3.i_crit_edge:          ; preds = %for.inc630.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.3.i

do.end619.3.i:                                    ; preds = %for.inc630.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %367 = ptrtoint ptr %uglygep1109.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %uglygep1109.i, align 1
  %conv625.3.i = zext i8 %368 to i32
  %call626.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 3, i32 noundef %conv625.3.i) #10
  br label %for.inc630.3.i

for.inc630.3.i:                                   ; preds = %do.end619.3.i, %for.inc630.2.i.for.inc630.3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %369 = load i32, ptr @rt_global_debug_component, align 4
  %and614.4.i = and i32 %369, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.4.i)
  %tobool615.not.4.i = icmp eq i32 %and614.4.i, 0
  br i1 %tobool615.not.4.i, label %for.inc630.3.i.for.inc630.4.i_crit_edge, label %do.end619.4.i

for.inc630.3.i.for.inc630.4.i_crit_edge:          ; preds = %for.inc630.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.4.i

do.end619.4.i:                                    ; preds = %for.inc630.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.4.i = getelementptr i8, ptr %dev, i32 36088
  %370 = ptrtoint ptr %arrayidx624.4.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx624.4.i, align 1
  %conv625.4.i = zext i8 %371 to i32
  %call626.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 4, i32 noundef %conv625.4.i) #10
  br label %for.inc630.4.i

for.inc630.4.i:                                   ; preds = %do.end619.4.i, %for.inc630.3.i.for.inc630.4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %372 = load i32, ptr @rt_global_debug_component, align 4
  %and614.5.i = and i32 %372, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.5.i)
  %tobool615.not.5.i = icmp eq i32 %and614.5.i, 0
  br i1 %tobool615.not.5.i, label %for.inc630.4.i.for.inc630.5.i_crit_edge, label %do.end619.5.i

for.inc630.4.i.for.inc630.5.i_crit_edge:          ; preds = %for.inc630.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.5.i

do.end619.5.i:                                    ; preds = %for.inc630.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.5.i = getelementptr i8, ptr %dev, i32 36089
  %373 = ptrtoint ptr %arrayidx624.5.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx624.5.i, align 1
  %conv625.5.i = zext i8 %374 to i32
  %call626.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 5, i32 noundef %conv625.5.i) #10
  br label %for.inc630.5.i

for.inc630.5.i:                                   ; preds = %do.end619.5.i, %for.inc630.4.i.for.inc630.5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %375 = load i32, ptr @rt_global_debug_component, align 4
  %and614.6.i = and i32 %375, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.6.i)
  %tobool615.not.6.i = icmp eq i32 %and614.6.i, 0
  br i1 %tobool615.not.6.i, label %for.inc630.5.i.for.inc630.6.i_crit_edge, label %do.end619.6.i

for.inc630.5.i.for.inc630.6.i_crit_edge:          ; preds = %for.inc630.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.6.i

do.end619.6.i:                                    ; preds = %for.inc630.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.6.i = getelementptr i8, ptr %dev, i32 36090
  %376 = ptrtoint ptr %arrayidx624.6.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx624.6.i, align 1
  %conv625.6.i = zext i8 %377 to i32
  %call626.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 6, i32 noundef %conv625.6.i) #10
  br label %for.inc630.6.i

for.inc630.6.i:                                   ; preds = %do.end619.6.i, %for.inc630.5.i.for.inc630.6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %378 = load i32, ptr @rt_global_debug_component, align 4
  %and614.7.i = and i32 %378, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.7.i)
  %tobool615.not.7.i = icmp eq i32 %and614.7.i, 0
  br i1 %tobool615.not.7.i, label %for.inc630.6.i.for.inc630.7.i_crit_edge, label %do.end619.7.i

for.inc630.6.i.for.inc630.7.i_crit_edge:          ; preds = %for.inc630.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.7.i

do.end619.7.i:                                    ; preds = %for.inc630.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.7.i = getelementptr i8, ptr %dev, i32 36091
  %379 = ptrtoint ptr %arrayidx624.7.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx624.7.i, align 1
  %conv625.7.i = zext i8 %380 to i32
  %call626.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 7, i32 noundef %conv625.7.i) #10
  br label %for.inc630.7.i

for.inc630.7.i:                                   ; preds = %do.end619.7.i, %for.inc630.6.i.for.inc630.7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %381 = load i32, ptr @rt_global_debug_component, align 4
  %and614.8.i = and i32 %381, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.8.i)
  %tobool615.not.8.i = icmp eq i32 %and614.8.i, 0
  br i1 %tobool615.not.8.i, label %for.inc630.7.i.for.inc630.8.i_crit_edge, label %do.end619.8.i

for.inc630.7.i.for.inc630.8.i_crit_edge:          ; preds = %for.inc630.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.8.i

do.end619.8.i:                                    ; preds = %for.inc630.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.8.i = getelementptr i8, ptr %dev, i32 36092
  %382 = ptrtoint ptr %arrayidx624.8.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx624.8.i, align 1
  %conv625.8.i = zext i8 %383 to i32
  %call626.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 8, i32 noundef %conv625.8.i) #10
  br label %for.inc630.8.i

for.inc630.8.i:                                   ; preds = %do.end619.8.i, %for.inc630.7.i.for.inc630.8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %384 = load i32, ptr @rt_global_debug_component, align 4
  %and614.9.i = and i32 %384, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.9.i)
  %tobool615.not.9.i = icmp eq i32 %and614.9.i, 0
  br i1 %tobool615.not.9.i, label %for.inc630.8.i.for.inc630.9.i_crit_edge, label %do.end619.9.i

for.inc630.8.i.for.inc630.9.i_crit_edge:          ; preds = %for.inc630.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.9.i

do.end619.9.i:                                    ; preds = %for.inc630.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %385 = ptrtoint ptr %uglygep1113.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %uglygep1113.i, align 1
  %conv625.9.i = zext i8 %386 to i32
  %call626.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 9, i32 noundef %conv625.9.i) #10
  br label %for.inc630.9.i

for.inc630.9.i:                                   ; preds = %do.end619.9.i, %for.inc630.8.i.for.inc630.9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %387 = load i32, ptr @rt_global_debug_component, align 4
  %and614.10.i = and i32 %387, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.10.i)
  %tobool615.not.10.i = icmp eq i32 %and614.10.i, 0
  br i1 %tobool615.not.10.i, label %for.inc630.9.i.for.inc630.10.i_crit_edge, label %do.end619.10.i

for.inc630.9.i.for.inc630.10.i_crit_edge:         ; preds = %for.inc630.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.10.i

do.end619.10.i:                                   ; preds = %for.inc630.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.10.i = getelementptr i8, ptr %dev, i32 36094
  %388 = ptrtoint ptr %arrayidx624.10.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx624.10.i, align 1
  %conv625.10.i = zext i8 %389 to i32
  %call626.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 10, i32 noundef %conv625.10.i) #10
  br label %for.inc630.10.i

for.inc630.10.i:                                  ; preds = %do.end619.10.i, %for.inc630.9.i.for.inc630.10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %390 = load i32, ptr @rt_global_debug_component, align 4
  %and614.11.i = and i32 %390, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.11.i)
  %tobool615.not.11.i = icmp eq i32 %and614.11.i, 0
  br i1 %tobool615.not.11.i, label %for.inc630.10.i.for.inc630.11.i_crit_edge, label %do.end619.11.i

for.inc630.10.i.for.inc630.11.i_crit_edge:        ; preds = %for.inc630.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.11.i

do.end619.11.i:                                   ; preds = %for.inc630.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.11.i = getelementptr i8, ptr %dev, i32 36095
  %391 = ptrtoint ptr %arrayidx624.11.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx624.11.i, align 1
  %conv625.11.i = zext i8 %392 to i32
  %call626.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 11, i32 noundef %conv625.11.i) #10
  br label %for.inc630.11.i

for.inc630.11.i:                                  ; preds = %do.end619.11.i, %for.inc630.10.i.for.inc630.11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %393 = load i32, ptr @rt_global_debug_component, align 4
  %and614.12.i = and i32 %393, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.12.i)
  %tobool615.not.12.i = icmp eq i32 %and614.12.i, 0
  br i1 %tobool615.not.12.i, label %for.inc630.11.i.for.inc630.12.i_crit_edge, label %do.end619.12.i

for.inc630.11.i.for.inc630.12.i_crit_edge:        ; preds = %for.inc630.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.12.i

do.end619.12.i:                                   ; preds = %for.inc630.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.12.i = getelementptr i8, ptr %dev, i32 36096
  %394 = ptrtoint ptr %arrayidx624.12.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx624.12.i, align 1
  %conv625.12.i = zext i8 %395 to i32
  %call626.12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 12, i32 noundef %conv625.12.i) #10
  br label %for.inc630.12.i

for.inc630.12.i:                                  ; preds = %do.end619.12.i, %for.inc630.11.i.for.inc630.12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %396 = load i32, ptr @rt_global_debug_component, align 4
  %and614.13.i = and i32 %396, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and614.13.i)
  %tobool615.not.13.i = icmp eq i32 %and614.13.i, 0
  br i1 %tobool615.not.13.i, label %for.inc630.12.i.for.inc630.13.i_crit_edge, label %do.end619.13.i

for.inc630.12.i.for.inc630.13.i_crit_edge:        ; preds = %for.inc630.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc630.13.i

do.end619.13.i:                                   ; preds = %for.inc630.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx624.13.i = getelementptr i8, ptr %dev, i32 36097
  %397 = ptrtoint ptr %arrayidx624.13.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx624.13.i, align 1
  %conv625.13.i = zext i8 %398 to i32
  %call626.13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef 13, i32 noundef %conv625.13.i) #10
  br label %for.inc630.13.i

for.inc630.13.i:                                  ; preds = %do.end619.13.i, %for.inc630.12.i.for.inc630.13.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %399 = load i32, ptr @rt_global_debug_component, align 4
  %and639.i = and i32 %399, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.i)
  %tobool640.not.i = icmp eq i32 %and639.i, 0
  br i1 %tobool640.not.i, label %for.inc630.13.i.for.inc655.i_crit_edge, label %do.end644.i

for.inc630.13.i.for.inc655.i_crit_edge:           ; preds = %for.inc630.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.i

do.end644.i:                                      ; preds = %for.inc630.13.i
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %arrayidx498.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx498.i, align 1
  %conv650.i = zext i8 %401 to i32
  %call651.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 0, i32 noundef %conv650.i) #10
  br label %for.inc655.i

for.inc655.i:                                     ; preds = %do.end644.i, %for.inc630.13.i.for.inc655.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %402 = load i32, ptr @rt_global_debug_component, align 4
  %and639.1.i = and i32 %402, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.1.i)
  %tobool640.not.1.i = icmp eq i32 %and639.1.i, 0
  br i1 %tobool640.not.1.i, label %for.inc655.i.for.inc655.1.i_crit_edge, label %do.end644.1.i

for.inc655.i.for.inc655.1.i_crit_edge:            ; preds = %for.inc655.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.1.i

do.end644.1.i:                                    ; preds = %for.inc655.i
  call void @__sanitizer_cov_trace_pc() #9
  %403 = ptrtoint ptr %arrayidx498.1.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx498.1.i, align 1
  %conv650.1.i = zext i8 %404 to i32
  %call651.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 1, i32 noundef %conv650.1.i) #10
  br label %for.inc655.1.i

for.inc655.1.i:                                   ; preds = %do.end644.1.i, %for.inc655.i.for.inc655.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %405 = load i32, ptr @rt_global_debug_component, align 4
  %and639.2.i = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.2.i)
  %tobool640.not.2.i = icmp eq i32 %and639.2.i, 0
  br i1 %tobool640.not.2.i, label %for.inc655.1.i.for.inc655.2.i_crit_edge, label %do.end644.2.i

for.inc655.1.i.for.inc655.2.i_crit_edge:          ; preds = %for.inc655.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.2.i

do.end644.2.i:                                    ; preds = %for.inc655.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %406 = ptrtoint ptr %arrayidx498.2.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx498.2.i, align 1
  %conv650.2.i = zext i8 %407 to i32
  %call651.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 2, i32 noundef %conv650.2.i) #10
  br label %for.inc655.2.i

for.inc655.2.i:                                   ; preds = %do.end644.2.i, %for.inc655.1.i.for.inc655.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %408 = load i32, ptr @rt_global_debug_component, align 4
  %and639.3.i = and i32 %408, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.3.i)
  %tobool640.not.3.i = icmp eq i32 %and639.3.i, 0
  br i1 %tobool640.not.3.i, label %for.inc655.2.i.for.inc655.3.i_crit_edge, label %do.end644.3.i

for.inc655.2.i.for.inc655.3.i_crit_edge:          ; preds = %for.inc655.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.3.i

do.end644.3.i:                                    ; preds = %for.inc655.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %409 = ptrtoint ptr %arrayidx526.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx526.i, align 1
  %conv650.3.i = zext i8 %410 to i32
  %call651.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 3, i32 noundef %conv650.3.i) #10
  br label %for.inc655.3.i

for.inc655.3.i:                                   ; preds = %do.end644.3.i, %for.inc655.2.i.for.inc655.3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %411 = load i32, ptr @rt_global_debug_component, align 4
  %and639.4.i = and i32 %411, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.4.i)
  %tobool640.not.4.i = icmp eq i32 %and639.4.i, 0
  br i1 %tobool640.not.4.i, label %for.inc655.3.i.for.inc655.4.i_crit_edge, label %do.end644.4.i

for.inc655.3.i.for.inc655.4.i_crit_edge:          ; preds = %for.inc655.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.4.i

do.end644.4.i:                                    ; preds = %for.inc655.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %412 = ptrtoint ptr %arrayidx526.1.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx526.1.i, align 1
  %conv650.4.i = zext i8 %413 to i32
  %call651.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 4, i32 noundef %conv650.4.i) #10
  br label %for.inc655.4.i

for.inc655.4.i:                                   ; preds = %do.end644.4.i, %for.inc655.3.i.for.inc655.4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %414 = load i32, ptr @rt_global_debug_component, align 4
  %and639.5.i = and i32 %414, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.5.i)
  %tobool640.not.5.i = icmp eq i32 %and639.5.i, 0
  br i1 %tobool640.not.5.i, label %for.inc655.4.i.for.inc655.5.i_crit_edge, label %do.end644.5.i

for.inc655.4.i.for.inc655.5.i_crit_edge:          ; preds = %for.inc655.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.5.i

do.end644.5.i:                                    ; preds = %for.inc655.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %415 = ptrtoint ptr %arrayidx526.2.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %arrayidx526.2.i, align 1
  %conv650.5.i = zext i8 %416 to i32
  %call651.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 5, i32 noundef %conv650.5.i) #10
  br label %for.inc655.5.i

for.inc655.5.i:                                   ; preds = %do.end644.5.i, %for.inc655.4.i.for.inc655.5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %417 = load i32, ptr @rt_global_debug_component, align 4
  %and639.6.i = and i32 %417, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.6.i)
  %tobool640.not.6.i = icmp eq i32 %and639.6.i, 0
  br i1 %tobool640.not.6.i, label %for.inc655.5.i.for.inc655.6.i_crit_edge, label %do.end644.6.i

for.inc655.5.i.for.inc655.6.i_crit_edge:          ; preds = %for.inc655.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.6.i

do.end644.6.i:                                    ; preds = %for.inc655.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %418 = ptrtoint ptr %arrayidx526.3.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx526.3.i, align 1
  %conv650.6.i = zext i8 %419 to i32
  %call651.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 6, i32 noundef %conv650.6.i) #10
  br label %for.inc655.6.i

for.inc655.6.i:                                   ; preds = %do.end644.6.i, %for.inc655.5.i.for.inc655.6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %420 = load i32, ptr @rt_global_debug_component, align 4
  %and639.7.i = and i32 %420, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.7.i)
  %tobool640.not.7.i = icmp eq i32 %and639.7.i, 0
  br i1 %tobool640.not.7.i, label %for.inc655.6.i.for.inc655.7.i_crit_edge, label %do.end644.7.i

for.inc655.6.i.for.inc655.7.i_crit_edge:          ; preds = %for.inc655.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.7.i

do.end644.7.i:                                    ; preds = %for.inc655.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %421 = ptrtoint ptr %arrayidx526.4.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx526.4.i, align 1
  %conv650.7.i = zext i8 %422 to i32
  %call651.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 7, i32 noundef %conv650.7.i) #10
  br label %for.inc655.7.i

for.inc655.7.i:                                   ; preds = %do.end644.7.i, %for.inc655.6.i.for.inc655.7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %423 = load i32, ptr @rt_global_debug_component, align 4
  %and639.8.i = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.8.i)
  %tobool640.not.8.i = icmp eq i32 %and639.8.i, 0
  br i1 %tobool640.not.8.i, label %for.inc655.7.i.for.inc655.8.i_crit_edge, label %do.end644.8.i

for.inc655.7.i.for.inc655.8.i_crit_edge:          ; preds = %for.inc655.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.8.i

do.end644.8.i:                                    ; preds = %for.inc655.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %424 = ptrtoint ptr %arrayidx526.5.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx526.5.i, align 1
  %conv650.8.i = zext i8 %425 to i32
  %call651.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 8, i32 noundef %conv650.8.i) #10
  br label %for.inc655.8.i

for.inc655.8.i:                                   ; preds = %do.end644.8.i, %for.inc655.7.i.for.inc655.8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %426 = load i32, ptr @rt_global_debug_component, align 4
  %and639.9.i = and i32 %426, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.9.i)
  %tobool640.not.9.i = icmp eq i32 %and639.9.i, 0
  br i1 %tobool640.not.9.i, label %for.inc655.8.i.for.inc655.9.i_crit_edge, label %do.end644.9.i

for.inc655.8.i.for.inc655.9.i_crit_edge:          ; preds = %for.inc655.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.9.i

do.end644.9.i:                                    ; preds = %for.inc655.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %427 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx554.i, align 1
  %conv650.9.i = zext i8 %428 to i32
  %call651.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 9, i32 noundef %conv650.9.i) #10
  br label %for.inc655.9.i

for.inc655.9.i:                                   ; preds = %do.end644.9.i, %for.inc655.8.i.for.inc655.9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %429 = load i32, ptr @rt_global_debug_component, align 4
  %and639.10.i = and i32 %429, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.10.i)
  %tobool640.not.10.i = icmp eq i32 %and639.10.i, 0
  br i1 %tobool640.not.10.i, label %for.inc655.9.i.for.inc655.10.i_crit_edge, label %do.end644.10.i

for.inc655.9.i.for.inc655.10.i_crit_edge:         ; preds = %for.inc655.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.10.i

do.end644.10.i:                                   ; preds = %for.inc655.9.i
  call void @__sanitizer_cov_trace_pc() #9
  %430 = ptrtoint ptr %arrayidx554.1.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx554.1.i, align 1
  %conv650.10.i = zext i8 %431 to i32
  %call651.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 10, i32 noundef %conv650.10.i) #10
  br label %for.inc655.10.i

for.inc655.10.i:                                  ; preds = %do.end644.10.i, %for.inc655.9.i.for.inc655.10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %432 = load i32, ptr @rt_global_debug_component, align 4
  %and639.11.i = and i32 %432, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.11.i)
  %tobool640.not.11.i = icmp eq i32 %and639.11.i, 0
  br i1 %tobool640.not.11.i, label %for.inc655.10.i.for.inc655.11.i_crit_edge, label %do.end644.11.i

for.inc655.10.i.for.inc655.11.i_crit_edge:        ; preds = %for.inc655.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.11.i

do.end644.11.i:                                   ; preds = %for.inc655.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %433 = ptrtoint ptr %arrayidx554.2.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx554.2.i, align 1
  %conv650.11.i = zext i8 %434 to i32
  %call651.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 11, i32 noundef %conv650.11.i) #10
  br label %for.inc655.11.i

for.inc655.11.i:                                  ; preds = %do.end644.11.i, %for.inc655.10.i.for.inc655.11.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %435 = load i32, ptr @rt_global_debug_component, align 4
  %and639.12.i = and i32 %435, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.12.i)
  %tobool640.not.12.i = icmp eq i32 %and639.12.i, 0
  br i1 %tobool640.not.12.i, label %for.inc655.11.i.for.inc655.12.i_crit_edge, label %do.end644.12.i

for.inc655.11.i.for.inc655.12.i_crit_edge:        ; preds = %for.inc655.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.12.i

do.end644.12.i:                                   ; preds = %for.inc655.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %436 = ptrtoint ptr %arrayidx554.3.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %arrayidx554.3.i, align 1
  %conv650.12.i = zext i8 %437 to i32
  %call651.12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 12, i32 noundef %conv650.12.i) #10
  br label %for.inc655.12.i

for.inc655.12.i:                                  ; preds = %do.end644.12.i, %for.inc655.11.i.for.inc655.12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %438 = load i32, ptr @rt_global_debug_component, align 4
  %and639.13.i = and i32 %438, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639.13.i)
  %tobool640.not.13.i = icmp eq i32 %and639.13.i, 0
  br i1 %tobool640.not.13.i, label %for.inc655.12.i.for.inc655.13.i_crit_edge, label %do.end644.13.i

for.inc655.12.i.for.inc655.13.i_crit_edge:        ; preds = %for.inc655.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc655.13.i

do.end644.13.i:                                   ; preds = %for.inc655.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %439 = ptrtoint ptr %arrayidx554.4.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %arrayidx554.4.i, align 1
  %conv650.13.i = zext i8 %440 to i32
  %call651.13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef 13, i32 noundef %conv650.13.i) #10
  br label %for.inc655.13.i

for.inc655.13.i:                                  ; preds = %do.end644.13.i, %for.inc655.12.i.for.inc655.13.i_crit_edge
  %EEPROMLegacyHTTxPowerDiff658.i = getelementptr i8, ptr %dev, i32 35968
  %441 = ptrtoint ptr %EEPROMLegacyHTTxPowerDiff658.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %EEPROMLegacyHTTxPowerDiff658.i, align 4
  %LegacyHTTxPowerDiff659.i = getelementptr i8, ptr %dev, i32 36140
  %443 = ptrtoint ptr %LegacyHTTxPowerDiff659.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %442, ptr %LegacyHTTxPowerDiff659.i, align 8
  %AntennaTxPwDiff660.i = getelementptr i8, ptr %dev, i32 36142
  %444 = ptrtoint ptr %AntennaTxPwDiff660.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 0, ptr %AntennaTxPwDiff660.i, align 2
  %arrayidx663.i = getelementptr i8, ptr %dev, i32 36143
  %445 = ptrtoint ptr %arrayidx663.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %arrayidx663.i, align 1
  br label %if.end683.sink.split.i

if.end683.sink.split.i:                           ; preds = %for.inc655.13.i, %for.body430.preheader.i
  %.sink1127.i = phi i8 [ 0, %for.inc655.13.i ], [ %conv460.i, %for.body430.preheader.i ]
  %arrayidx665.i = getelementptr i8, ptr %dev, i32 36144
  %446 = ptrtoint ptr %arrayidx665.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %.sink1127.i, ptr %arrayidx665.i, align 2
  %EEPROMCrystalCap666.i = getelementptr i8, ptr %dev, i32 35967
  %447 = ptrtoint ptr %EEPROMCrystalCap666.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %EEPROMCrystalCap666.i, align 1
  %CrystalCap667.i = getelementptr i8, ptr %dev, i32 35969
  %449 = ptrtoint ptr %CrystalCap667.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %448, ptr %CrystalCap667.i, align 1
  %450 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %71, align 2
  %452 = and i8 %451, 15
  %ThermalMeter.i = getelementptr i8, ptr %dev, i32 35970
  %453 = ptrtoint ptr %ThermalMeter.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %ThermalMeter.i, align 2
  %454 = lshr i8 %451, 4
  %arrayidx475.i = getelementptr i8, ptr %dev, i32 35971
  %455 = ptrtoint ptr %arrayidx475.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %454, ptr %arrayidx475.i, align 1
  br label %if.end683.i

if.end683.i:                                      ; preds = %if.end683.sink.split.i, %if.end420.i.if.end683.i_crit_edge
  %456 = ptrtoint ptr %rf_type1082.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %.pr1087.i = load i8, ptr %rf_type1082.i, align 1
  %457 = zext i8 %.pr1087.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %457, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %.pr1087.i, label %if.end683.i.if.end720.i_crit_edge [
    i8 0, label %if.end683.i.do.body689.i_crit_edge
    i8 1, label %do.body707.i
  ]

if.end683.i.do.body689.i_crit_edge:               ; preds = %if.end683.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body689.i

if.end683.i.if.end720.i_crit_edge:                ; preds = %if.end683.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end720.i

do.body689.i:                                     ; preds = %if.end683.i.do.body689.i_crit_edge, %if.end683.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %458 = load i32, ptr @rt_global_debug_component, align 4
  %and690.i = and i32 %458, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and690.i)
  %tobool691.not.i = icmp eq i32 %and690.i, 0
  br i1 %tobool691.not.i, label %do.body689.i.if.end720.i_crit_edge, label %do.body689.i.if.end720.sink.split.i_crit_edge

do.body689.i.if.end720.sink.split.i_crit_edge:    ; preds = %do.body689.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end720.sink.split.i

do.body689.i.if.end720.i_crit_edge:               ; preds = %do.body689.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end720.i

do.body707.i:                                     ; preds = %if.end683.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %459 = load i32, ptr @rt_global_debug_component, align 4
  %and708.i = and i32 %459, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and708.i)
  %tobool709.not.i = icmp eq i32 %and708.i, 0
  br i1 %tobool709.not.i, label %do.body707.i.if.end720.i_crit_edge, label %do.body707.i.if.end720.sink.split.i_crit_edge

do.body707.i.if.end720.sink.split.i_crit_edge:    ; preds = %do.body707.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end720.sink.split.i

do.body707.i.if.end720.i_crit_edge:               ; preds = %do.body707.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end720.i

if.end720.sink.split.i:                           ; preds = %do.body707.i.if.end720.sink.split.i_crit_edge, %do.body689.i.if.end720.sink.split.i_crit_edge
  %.str.153.sink.i = phi ptr [ @.str.150, %do.body689.i.if.end720.sink.split.i_crit_edge ], [ @.str.153, %do.body707.i.if.end720.sink.split.i_crit_edge ]
  %call715.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.153.sink.i) #10
  br label %if.end720.i

if.end720.i:                                      ; preds = %if.end720.sink.split.i, %do.body707.i.if.end720.i_crit_edge, %do.body689.i.if.end720.i_crit_edge, %if.end683.i.if.end720.i_crit_edge
  call void @rtl92e_init_adaptive_rate(ptr noundef %dev) #7
  %rf_chip.i = getelementptr i8, ptr %dev, i32 31416
  %460 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 2, ptr %rf_chip.i, align 4
  %RegChannelPlan.i = getelementptr i8, ptr %dev, i32 36002
  %461 = getelementptr i8, ptr %dev, i32 36004
  %eeprom_vid730.i = getelementptr i8, ptr %dev, i32 35916
  %462 = ptrtoint ptr %eeprom_vid730.i to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %eeprom_vid730.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4486, i16 %463)
  %cmp732.i = icmp eq i16 %463, 4486
  br i1 %cmp732.i, label %land.lhs.true.i, label %if.end720.i.if.end739.i_crit_edge

if.end720.i.if.end739.i_crit_edge:                ; preds = %if.end720.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end739.i

land.lhs.true.i:                                  ; preds = %if.end720.i
  %eeprom_did734.i = getelementptr i8, ptr %dev, i32 35918
  %464 = ptrtoint ptr %eeprom_did734.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %eeprom_did734.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13060, i16 %465)
  %cmp736.i = icmp eq i16 %465, 13060
  br i1 %cmp736.i, label %if.then738.i, label %land.lhs.true.i.if.end739.i_crit_edge

land.lhs.true.i.if.end739.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end739.i

if.then738.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID.i = getelementptr i8, ptr %dev, i32 31412
  %466 = ptrtoint ptr %CustomerID.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 12, ptr %CustomerID.i, align 8
  br label %if.end739.i

if.end739.i:                                      ; preds = %if.then738.i, %land.lhs.true.i.if.end739.i_crit_edge, %if.end720.i.if.end739.i_crit_edge
  %eeprom_CustomerID740.i = getelementptr i8, ptr %dev, i32 35920
  %467 = ptrtoint ptr %eeprom_CustomerID740.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %eeprom_CustomerID740.i, align 4
  %469 = zext i8 %468 to i64
  call void @__sanitizer_cov_trace_switch(i64 %469, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %468, label %if.end739.i.sw.epilog786.i_crit_edge [
    i8 0, label %sw.bb742.i
    i8 1, label %sw.bb744.i
    i8 2, label %sw.bb746.i
    i8 5, label %sw.bb748.i
    i8 4, label %sw.bb750.i
    i8 6, label %sw.bb779.i
    i8 7, label %sw.bb781.i
    i8 8, label %sw.bb783.i
  ]

if.end739.i.sw.epilog786.i_crit_edge:             ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog786.i

sw.bb742.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID743.i = getelementptr i8, ptr %dev, i32 31412
  %470 = ptrtoint ptr %CustomerID743.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 0, ptr %CustomerID743.i, align 8
  br label %sw.epilog786.i

sw.bb744.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID745.i = getelementptr i8, ptr %dev, i32 31412
  %471 = ptrtoint ptr %CustomerID745.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 6, ptr %CustomerID745.i, align 8
  br label %sw.epilog786.i

sw.bb746.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID747.i = getelementptr i8, ptr %dev, i32 31412
  %472 = ptrtoint ptr %CustomerID747.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 7, ptr %CustomerID747.i, align 8
  br label %sw.epilog786.i

sw.bb748.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID749.i = getelementptr i8, ptr %dev, i32 31412
  %473 = ptrtoint ptr %CustomerID749.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 10, ptr %CustomerID749.i, align 8
  br label %sw.epilog786.i

sw.bb750.i:                                       ; preds = %if.end739.i
  %CustomerID751.i = getelementptr i8, ptr %dev, i32 31412
  %474 = ptrtoint ptr %CustomerID751.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 9, ptr %CustomerID751.i, align 8
  %eeprom_ChannelPlan752.i = getelementptr i8, ptr %dev, i32 35922
  %475 = ptrtoint ptr %eeprom_ChannelPlan752.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %eeprom_ChannelPlan752.i, align 2
  %477 = and i16 %476, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %477)
  %tobool755.not.i = icmp eq i16 %477, 0
  %and759.i = and i16 %476, 127
  %spec.select.i = select i1 %tobool755.not.i, i16 0, i16 %and759.i
  %478 = ptrtoint ptr %461 to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 %spec.select.i, ptr %461, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %479 = load i32, ptr @rt_global_debug_component, align 4
  %and766.i = and i32 %479, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and766.i)
  %tobool767.not.i = icmp eq i32 %and766.i, 0
  br i1 %tobool767.not.i, label %sw.bb750.i.sw.epilog786.i_crit_edge, label %do.end771.i

sw.bb750.i.sw.epilog786.i_crit_edge:              ; preds = %sw.bb750.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog786.i

do.end771.i:                                      ; preds = %sw.bb750.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv774.i = zext i16 %spec.select.i to i32
  %call775.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %conv774.i) #10
  br label %sw.epilog786.i

sw.bb779.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %ScanDelay.i = getelementptr i8, ptr %dev, i32 35800
  %480 = ptrtoint ptr %ScanDelay.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 100, ptr %ScanDelay.i, align 4
  %CustomerID780.i = getelementptr i8, ptr %dev, i32 31412
  %481 = ptrtoint ptr %CustomerID780.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 11, ptr %CustomerID780.i, align 8
  br label %sw.epilog786.i

sw.bb781.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID782.i = getelementptr i8, ptr %dev, i32 31412
  %482 = ptrtoint ptr %CustomerID782.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 13, ptr %CustomerID782.i, align 8
  br label %sw.epilog786.i

sw.bb783.i:                                       ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #9
  %CustomerID784.i = getelementptr i8, ptr %dev, i32 31412
  %483 = ptrtoint ptr %CustomerID784.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 12, ptr %CustomerID784.i, align 8
  br label %sw.epilog786.i

sw.epilog786.i:                                   ; preds = %sw.bb783.i, %sw.bb781.i, %sw.bb779.i, %do.end771.i, %sw.bb750.i.sw.epilog786.i_crit_edge, %sw.bb748.i, %sw.bb746.i, %sw.bb744.i, %sw.bb742.i, %if.end739.i.sw.epilog786.i_crit_edge
  %484 = ptrtoint ptr %461 to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 11, ptr %461, align 8
  %485 = ptrtoint ptr %eeprom_vid730.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %eeprom_vid730.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4486, i16 %486)
  %cmp797.i = icmp eq i16 %486, 4486
  br i1 %cmp797.i, label %land.lhs.true799.i, label %sw.epilog786.i.if.else805.i_crit_edge

sw.epilog786.i.if.else805.i_crit_edge:            ; preds = %sw.epilog786.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else805.i

land.lhs.true799.i:                               ; preds = %sw.epilog786.i
  %eeprom_did800.i = getelementptr i8, ptr %dev, i32 35918
  %487 = ptrtoint ptr %eeprom_did800.i to i32
  call void @__asan_load2_noabort(i32 %487)
  %488 = load i16, ptr %eeprom_did800.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13060, i16 %488)
  %cmp802.i = icmp eq i16 %488, 13060
  br i1 %cmp802.i, label %land.lhs.true799.i.do.body809.i_crit_edge, label %land.lhs.true799.i.if.else805.i_crit_edge

land.lhs.true799.i.if.else805.i_crit_edge:        ; preds = %land.lhs.true799.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else805.i

land.lhs.true799.i.do.body809.i_crit_edge:        ; preds = %land.lhs.true799.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body809.i

if.else805.i:                                     ; preds = %land.lhs.true799.i.if.else805.i_crit_edge, %sw.epilog786.i.if.else805.i_crit_edge
  br label %do.body809.i

do.body809.i:                                     ; preds = %if.else805.i, %land.lhs.true799.i.do.body809.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else805.i ], [ 1, %land.lhs.true799.i.do.body809.i_crit_edge ]
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %489 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %rtllib.i, align 8
  %bSupportRemoteWakeUp.i = getelementptr inbounds %struct.rtllib_device, ptr %490, i32 0, i32 18
  %491 = ptrtoint ptr %bSupportRemoteWakeUp.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %.sink.i, ptr %bSupportRemoteWakeUp.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %492 = load i32, ptr @rt_global_debug_component, align 4
  %and810.i = and i32 %492, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and810.i)
  %tobool811.not.i = icmp eq i32 %and810.i, 0
  br i1 %tobool811.not.i, label %do.body809.i.do.body823.i_crit_edge, label %do.end815.i

do.body809.i.do.body823.i_crit_edge:              ; preds = %do.body809.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body823.i

do.end815.i:                                      ; preds = %do.body809.i
  call void @__sanitizer_cov_trace_pc() #9
  %493 = ptrtoint ptr %RegChannelPlan.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %RegChannelPlan.i, align 2
  %conv818.i = zext i16 %494 to i32
  %call819.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv818.i) #10
  br label %do.body823.i

do.body823.i:                                     ; preds = %do.end815.i, %do.body809.i.do.body823.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %495 = load i32, ptr @rt_global_debug_component, align 4
  %and824.i = and i32 %495, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and824.i)
  %tobool825.not.i = icmp eq i32 %and824.i, 0
  br i1 %tobool825.not.i, label %do.body823.i.do.body837.i_crit_edge, label %do.end829.i

do.body823.i.do.body837.i_crit_edge:              ; preds = %do.body823.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body837.i

do.end829.i:                                      ; preds = %do.body823.i
  call void @__sanitizer_cov_trace_pc() #9
  %496 = ptrtoint ptr %461 to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %461, align 8
  %conv832.i = zext i16 %497 to i32
  %call833.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %conv832.i) #10
  br label %do.body837.i

do.body837.i:                                     ; preds = %do.end829.i, %do.body823.i.do.body837.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %498 = load i32, ptr @rt_global_debug_component, align 4
  %and838.i = and i32 %498, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and838.i)
  %tobool839.not.i = icmp eq i32 %and838.i, 0
  br i1 %tobool839.not.i, label %do.body837.i._rtl92e_read_eeprom_info.exit_crit_edge, label %do.end843.i

do.body837.i._rtl92e_read_eeprom_info.exit_crit_edge: ; preds = %do.body837.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_read_eeprom_info.exit

do.end843.i:                                      ; preds = %do.body837.i
  call void @__sanitizer_cov_trace_pc() #9
  %call845.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165) #10
  br label %_rtl92e_read_eeprom_info.exit

_rtl92e_read_eeprom_info.exit:                    ; preds = %do.end843.i, %do.body837.i._rtl92e_read_eeprom_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bMac_Tmp_Addr.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl92e_readw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_start_adapter(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %being_init_adapter = getelementptr i8, ptr %dev, i32 30783
  %1 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %being_init_adapter, align 1
  %Rf_Mode = getelementptr i8, ptr %dev, i32 35812
  %ResetProgress = getelementptr i8, ptr %dev, i32 36204
  %pFirmware = getelementptr i8, ptr %dev, i32 31784
  %RegRfOff = getelementptr i8, ptr %dev, i32 36006
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %LoopbackMode = getelementptr i8, ptr %dev, i32 31788
  %rf_type.i = getelementptr i8, ptr %dev, i32 35821
  %ShortRetryLimit.i = getelementptr i8, ptr %dev, i32 35736
  %LongRetryLimit.i = getelementptr i8, ptr %dev, i32 35738
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %ReceiveConfig = getelementptr i8, ptr %dev, i32 35012
  %card_8192_version = getelementptr i8, ptr %dev, i32 35820
  %chan = getelementptr i8, ptr %dev, i32 35794
  %IC_Cut = getelementptr i8, ptr %dev, i32 35822
  br label %start

start:                                            ; preds = %if.then204.start_crit_edge, %do.end4
  %retry_times.0 = phi i32 [ 0, %do.end4 ], [ %inc208, %if.then204.start_crit_edge ]
  tail call void @rtl92e_reset_desc_ring(ptr noundef %dev) #7
  %2 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %Rf_Mode, align 8
  %3 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ResetProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %start.if.end7_crit_edge

start.if.end7_crit_edge:                          ; preds = %start
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %start
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 23, i8 noundef zeroext 55) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then5
  %__ms.0605 = phi i32 [ 500, %if.then5 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0605, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %while.body.if.end7_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %while.body.if.end7_crit_edge, %start.if.end7_crit_edge
  %6 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pFirmware, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = ptrtoint ptr %RegRfOff to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %RegRfOff, align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %eRFPowerState, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %call11 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #7
  %14 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pFirmware, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %17, label %if.else21 [
    i32 0, label %if.then15
    i32 5, label %if.then19
  ]

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call11, 1
  br label %if.end25

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %or20 = or i32 %call11, 8
  br label %if.end25

if.else21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %17) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then19, %if.then15
  %ulRegRead.0 = phi i32 [ %or, %if.then15 ], [ %or20, %if.then19 ], [ %call11, %if.else21 ]
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %ulRegRead.0) #7
  %call26 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 769) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call26)
  %cmp27 = icmp ugt i8 %call26, 3
  br i1 %cmp27, label %if.then29, label %if.end25.do.body37_crit_edge

if.end25.do.body37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

if.then29:                                        ; preds = %if.end25
  %call30 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 189) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %call30)
  %cmp32.not = icmp eq i8 %call30, -72
  br i1 %cmp32.not, label %if.then29.do.body37_crit_edge, label %if.then34

if.then29.do.body37_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 189, i8 noundef zeroext -88) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 189, i8 noundef zeroext -72) #7
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %if.then29.do.body37_crit_edge, %if.end25.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %20 = load i32, ptr @rt_global_debug_component, align 4
  %and38 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.end48_crit_edge, label %do.end43

do.body37.do.end48_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end43, %do.body37.do.end48_crit_edge
  %call49 = tail call zeroext i1 @rtl92e_config_bb(ptr noundef %dev) #7
  br i1 %call49, label %do.body54, label %if.then51

if.then51:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22) #10
  br label %cleanup

do.body54:                                        ; preds = %do.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %21 = load i32, ptr @rt_global_debug_component, align 4
  %and55 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end65_crit_edge, label %do.end60

do.body54.do.end65_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %do.end65

do.end65:                                         ; preds = %do.end60, %do.body54.do.end65_crit_edge
  %22 = ptrtoint ptr %LoopbackMode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %LoopbackMode, align 8
  %23 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ResetProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp67 = icmp eq i32 %24, 0
  br i1 %cmp67, label %if.then69, label %do.end65.if.end86_crit_edge

do.end65.if.end86_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then69:                                        ; preds = %do.end65
  %call70 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #7
  %25 = ptrtoint ptr %LoopbackMode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %LoopbackMode, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %26, label %if.else83 [
    i32 0, label %if.then74
    i32 1, label %if.then81
  ]

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %and75 = and i32 %call70, -983041
  %or76 = or i32 %and75, 524288
  br label %if.end85

if.then81:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %or82 = or i32 %call70, 196608
  br label %if.end85

if.else83:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.22) #10
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then81, %if.then74
  %ulRegRead.1 = phi i32 [ %or76, %if.then74 ], [ %or82, %if.then81 ], [ %call70, %if.else83 ]
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %ulRegRead.1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 107374000) #7
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %do.end65.if.end86_crit_edge
  %29 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtllib, align 8
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 92
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %32, label %sw.default.i [
    i32 2, label %if.end86._rtl92e_hwconfig.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 8, label %if.end86.sw.bb3.i_crit_edge
    i32 16, label %if.end86.sw.bb3.i_crit_edge627
    i32 32, label %sw.bb4.i
  ]

if.end86.sw.bb3.i_crit_edge627:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end86.sw.bb3.i_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end86._rtl92e_hwconfig.exit_crit_edge:         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_hwconfig.exit

sw.bb1.i:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_hwconfig.exit

sw.bb2.i:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_hwconfig.exit

sw.bb3.i:                                         ; preds = %if.end86.sw.bb3.i_crit_edge, %if.end86.sw.bb3.i_crit_edge627
  br label %_rtl92e_hwconfig.exit

sw.bb4.i:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_hwconfig.exit

sw.default.i:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_hwconfig.exit

_rtl92e_hwconfig.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end86._rtl92e_hwconfig.exit_crit_edge
  %regRATR.0.i = phi i32 [ 4095, %sw.default.i ], [ 268435440, %sw.bb4.i ], [ 268435455, %sw.bb3.i ], [ 4095, %sw.bb2.i ], [ 4080, %sw.bb1.i ], [ 15, %if.end86._rtl92e_hwconfig.exit_crit_edge ]
  %regRRSR.0.i = phi i32 [ 4095, %sw.default.i ], [ 4080, %sw.bb4.i ], [ 4095, %sw.bb3.i ], [ 4095, %sw.bb2.i ], [ 4080, %sw.bb1.i ], [ 15, %if.end86._rtl92e_hwconfig.exit_crit_edge ]
  %regBwOpMode.0.i = phi i8 [ 4, %sw.default.i ], [ 2, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 6, %sw.bb1.i ], [ 4, %if.end86._rtl92e_hwconfig.exit_crit_edge ]
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 768, i8 noundef zeroext %regBwOpMode.0.i) #7
  %34 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i = icmp eq i8 %35, 0
  %and.i = and i32 %regRATR.0.i, 1048575
  %spec.select.i = select i1 %cmp.i, i32 %and.i, i32 %regRATR.0.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 800, i32 noundef %spec.select.i) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 792, i8 noundef zeroext 1) #7
  %call6.i = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 787) #7
  %conv7.i = zext i8 %call6.i to i32
  %shl.i = shl nuw i32 %conv7.i, 24
  %or.i = or i32 %shl.i, %regRRSR.0.i
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 784, i32 noundef %or.i) #7
  %36 = ptrtoint ptr %ShortRetryLimit.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ShortRetryLimit.i, align 4
  %shl10.i = shl i16 %37, 8
  %38 = ptrtoint ptr %LongRetryLimit.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %LongRetryLimit.i, align 2
  %or13.i = or i16 %shl10.i, %39
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 772, i16 noundef zeroext %or13.i) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 55, i8 noundef zeroext 12) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 9, i8 noundef zeroext 119) #7
  %40 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr, align 64
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 0, i32 noundef %43) #7
  %44 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr, align 64
  %add.ptr = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr, align 2
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 4, i16 noundef zeroext %47) #7
  %48 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ReceiveConfig, align 8
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 68, i32 noundef %49) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 384, i32 noundef 119843335) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 388, i32 noundef 1048576) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 392, i32 noundef -2147480316) #7
  tail call void @rtl92e_tx_enable(ptr noundef %dev) #7
  tail call void @rtl92e_rx_enable(ptr noundef %dev) #7
  %call89 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 784) #7
  %and90 = and i32 %call89, -1048576
  %or92 = or i32 %and90, 4095
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 784, i32 noundef %or92) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 828, i32 noundef 4095) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 76, i8 noundef zeroext 48) #7
  %50 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ResetProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp94 = icmp eq i32 %51, 0
  br i1 %cmp94, label %if.then96, label %_rtl92e_hwconfig.exit.if.end99_crit_edge

_rtl92e_hwconfig.exit.if.end99_crit_edge:         ; preds = %_rtl92e_hwconfig.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then96:                                        ; preds = %_rtl92e_hwconfig.exit
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rtllib, align 8
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %53, i32 0, i32 92
  %54 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode, align 8
  %conv98 = trunc i32 %55 to i8
  tail call void @rtl92e_set_wireless_mode(ptr noundef %dev, i8 noundef zeroext %conv98) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %_rtl92e_hwconfig.exit.if.end99_crit_edge
  tail call void @rtl92e_cam_reset(ptr noundef %dev) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 176, i8 noundef zeroext 44) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 114, i16 noundef zeroext 2) #7
  tail call void @rtl92e_writew(ptr noundef %dev, i32 noundef 112, i16 noundef zeroext 100) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 80, i32 noundef 6177586) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 84, i32 noundef 6177586) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 92, i32 noundef 6177586) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 88, i32 noundef 6177586) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 190, i8 noundef zeroext -64) #7
  tail call void @rtl92e_config_mac(ptr noundef %dev) #7
  %56 = ptrtoint ptr %card_8192_version to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %card_8192_version, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %cmp113 = icmp ugt i8 %57, 3
  br i1 %cmp113, label %if.then115, label %if.end99.if.end117_crit_edge

if.end99.if.end117_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then115:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_get_tx_power(ptr noundef %dev) #7
  %58 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %chan, align 2
  %conv116 = trunc i16 %59 to i8
  tail call void @rtl92e_set_tx_power(ptr noundef %dev, i8 noundef zeroext %conv116) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end99.if.end117_crit_edge
  %call118 = tail call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 769) #7
  %60 = ptrtoint ptr %IC_Cut to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %call118, ptr %IC_Cut, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %61 = load i32, ptr @rt_global_debug_component, align 4
  %and120 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end117.do.end132_crit_edge, label %do.end125

if.end117.do.end132_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end132

do.end125:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %conv128 = zext i8 %call118 to i32
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv128) #10
  %62 = ptrtoint ptr %IC_Cut to i32
  call void @__asan_load1_noabort(i32 %62)
  %.pr = load i8, ptr %IC_Cut, align 2
  br label %do.end132

do.end132:                                        ; preds = %do.end125, %if.end117.do.end132_crit_edge
  %63 = phi i8 [ %.pr, %do.end125 ], [ %call118, %if.end117.do.end132_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp135 = icmp ugt i8 %63, 2
  br i1 %cmp135, label %if.then137, label %do.body176

if.then137:                                       ; preds = %do.end132
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %63, label %if.then137.do.body189_crit_edge [
    i8 3, label %do.body143
    i8 4, label %do.body161
  ]

if.then137.do.body189_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189

do.body143:                                       ; preds = %if.then137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %65 = load i32, ptr @rt_global_debug_component, align 4
  %and144 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.do.body189_crit_edge, label %do.body143.do.body189.sink.split_crit_edge

do.body143.do.body189.sink.split_crit_edge:       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189.sink.split

do.body143.do.body189_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189

do.body161:                                       ; preds = %if.then137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %66 = load i32, ptr @rt_global_debug_component, align 4
  %and162 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %do.body161.do.body189_crit_edge, label %do.body161.do.body189.sink.split_crit_edge

do.body161.do.body189.sink.split_crit_edge:       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189.sink.split

do.body161.do.body189_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189

do.body176:                                       ; preds = %do.end132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %67 = load i32, ptr @rt_global_debug_component, align 4
  %and177 = and i32 %67, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body176.do.body189_crit_edge, label %do.body176.do.body189.sink.split_crit_edge

do.body176.do.body189.sink.split_crit_edge:       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189.sink.split

do.body176.do.body189_crit_edge:                  ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189

do.body189.sink.split:                            ; preds = %do.body176.do.body189.sink.split_crit_edge, %do.body161.do.body189.sink.split_crit_edge, %do.body143.do.body189.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.36, %do.body143.do.body189.sink.split_crit_edge ], [ @.str.39, %do.body161.do.body189.sink.split_crit_edge ], [ @.str.42, %do.body176.do.body189.sink.split_crit_edge ]
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink) #10
  br label %do.body189

do.body189:                                       ; preds = %do.body189.sink.split, %do.body176.do.body189_crit_edge, %do.body161.do.body189_crit_edge, %do.body143.do.body189_crit_edge, %if.then137.do.body189_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %68 = load i32, ptr @rt_global_debug_component, align 4
  %and190 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %do.body189.do.end200_crit_edge, label %do.end195

do.body189.do.end200_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end200

do.end195:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %call197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %do.end200

do.end200:                                        ; preds = %do.end195, %do.body189.do.end200_crit_edge
  %call201 = tail call zeroext i1 @rtl92e_init_fw(ptr noundef %dev) #7
  br i1 %call201, label %do.body211, label %if.then204

if.then204:                                       ; preds = %do.end200
  %inc208 = add nuw nsw i32 %retry_times.0, 1
  %exitcond.not = icmp eq i32 %inc208, 11
  br i1 %exitcond.not, label %if.then204.end_crit_edge, label %if.then204.start_crit_edge

if.then204.start_crit_edge:                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %start

if.then204.end_crit_edge:                         ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

do.body211:                                       ; preds = %do.end200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %69 = load i32, ptr @rt_global_debug_component, align 4
  %and212 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %do.body211.do.end222_crit_edge, label %do.end217

do.body211.do.end222_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end222

do.end217:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #9
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #10
  br label %do.end222

do.end222:                                        ; preds = %do.end217, %do.body211.do.end222_crit_edge
  %70 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ResetProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp224 = icmp eq i32 %71, 0
  br i1 %cmp224, label %do.body227, label %do.end222.if.end257_crit_edge

do.end222.if.end257_crit_edge:                    ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

do.body227:                                       ; preds = %do.end222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %72 = load i32, ptr @rt_global_debug_component, align 4
  %and228 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %do.body227.do.end238_crit_edge, label %do.end233

do.body227.do.end238_crit_edge:                   ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end238

do.end233:                                        ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #9
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #10
  br label %do.end238

do.end238:                                        ; preds = %do.end233, %do.body227.do.end238_crit_edge
  %call239 = tail call zeroext i1 @rtl92e_config_phy(ptr noundef %dev) #7
  br i1 %call239, label %do.body245, label %if.then242

if.then242:                                       ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.53) #10
  br label %cleanup

do.body245:                                       ; preds = %do.end238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %73 = load i32, ptr @rt_global_debug_component, align 4
  %and246 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %do.body245.if.end257_crit_edge, label %do.end251

do.body245.if.end257_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

do.end251:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #9
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %if.end257

if.end257:                                        ; preds = %do.end251, %do.body245.if.end257_crit_edge, %do.end222.if.end257_crit_edge
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #7
  tail call void @rtl92e_set_bb_reg(ptr noundef %dev, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #7
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 135, i8 noundef zeroext 0) #7
  %74 = ptrtoint ptr %RegRfOff to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %RegRfOff, align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool259.not = icmp eq i8 %75, 0
  br i1 %tobool259.not, label %if.else274, label %do.body261

do.body261:                                       ; preds = %if.end257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %76 = load i32, ptr @rt_global_debug_component, align 4
  %and262 = and i32 %76, 1048644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %do.body261.do.end272_crit_edge, label %do.end267

do.body261.do.end272_crit_edge:                   ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end272

do.end267:                                        ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #9
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.22) #10
  br label %do.end272

do.end272:                                        ; preds = %do.end267, %do.body261.do.end272_crit_edge
  %call273 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef 2, i32 noundef -2147483648) #7
  br label %if.end338

if.else274:                                       ; preds = %if.end257
  %77 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rtllib, align 8
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %78, i32 0, i32 24
  %79 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %80)
  %cmp276 = icmp ugt i32 %80, 536870912
  br i1 %cmp276, label %do.body279, label %if.else296

do.body279:                                       ; preds = %if.else274
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %81 = load i32, ptr @rt_global_debug_component, align 4
  %and280 = and i32 %81, 1048644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %do.body279.do.end292_crit_edge, label %do.end285

do.body279.do.end292_crit_edge:                   ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end292

do.end285:                                        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #9
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.22, i32 noundef %80) #10
  br label %do.end292

do.end292:                                        ; preds = %do.end285, %do.body279.do.end292_crit_edge
  %82 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rtllib, align 8
  %RfOffReason294 = getelementptr inbounds %struct.rtllib_device, ptr %83, i32 0, i32 24
  %84 = ptrtoint ptr %RfOffReason294 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %RfOffReason294, align 8
  %call295 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef 2, i32 noundef %85) #7
  br label %if.end338

if.else296:                                       ; preds = %if.else274
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %80)
  %cmp299 = icmp ugt i32 %80, 268435455
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %86 = load i32, ptr @rt_global_debug_component, align 4
  %and303 = and i32 %86, 1048644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %cmp299, label %do.body302, label %do.body320

do.body302:                                       ; preds = %if.else296
  br i1 %tobool304.not, label %do.body302.do.end315_crit_edge, label %do.end308

do.body302.do.end315_crit_edge:                   ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end315

do.end308:                                        ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #9
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.22, i32 noundef %80) #10
  br label %do.end315

do.end315:                                        ; preds = %do.end308, %do.body302.do.end315_crit_edge
  %87 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rtllib, align 8
  %RfOffReason317 = getelementptr inbounds %struct.rtllib_device, ptr %88, i32 0, i32 24
  %89 = ptrtoint ptr %RfOffReason317 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %RfOffReason317, align 8
  %call318 = tail call zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef 2, i32 noundef %90) #7
  br label %if.end338

do.body320:                                       ; preds = %if.else296
  br i1 %tobool304.not, label %do.body320.do.end331_crit_edge, label %do.end326

do.body320.do.end331_crit_edge:                   ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end331

do.end326:                                        ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #9
  %call328 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.22) #10
  br label %do.end331

do.end331:                                        ; preds = %do.end326, %do.body320.do.end331_crit_edge
  %91 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rtllib, align 8
  %eRFPowerState333 = getelementptr inbounds %struct.rtllib_device, ptr %92, i32 0, i32 23
  %93 = ptrtoint ptr %eRFPowerState333 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %eRFPowerState333, align 4
  %94 = load ptr, ptr %rtllib, align 8
  %RfOffReason335 = getelementptr inbounds %struct.rtllib_device, ptr %94, i32 0, i32 24
  %95 = ptrtoint ptr %RfOffReason335 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %RfOffReason335, align 8
  br label %if.end338

if.end338:                                        ; preds = %do.end331, %do.end315, %do.end292, %do.end272
  %96 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rtllib, align 8
  %FwRWRF = getelementptr inbounds %struct.rtllib_device, ptr %97, i32 0, i32 155
  %98 = ptrtoint ptr %FwRWRF to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %FwRWRF, align 8, !range !325
  %100 = ptrtoint ptr %Rf_Mode to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %Rf_Mode, align 8
  %101 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ResetProgress, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp347 = icmp eq i32 %102, 0
  br i1 %cmp347, label %if.then349, label %if.end338.if.end446_crit_edge

if.end338.if.end446_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end446

if.then349:                                       ; preds = %if.end338
  tail call void @rtl92e_dm_init_txpower_tracking(ptr noundef %dev) #7
  %103 = ptrtoint ptr %IC_Cut to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %IC_Cut, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp352 = icmp ugt i8 %104, 2
  br i1 %cmp352, label %if.then354, label %if.then349.if.end446_crit_edge

if.then349.if.end446_crit_edge:                   ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end446

if.then354:                                       ; preds = %if.then349
  %call355 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3200, i32 noundef -1) #7
  %call356 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 3216, i32 noundef -1) #7
  br label %for.body360

for.body360:                                      ; preds = %for.inc369.for.body360_crit_edge, %if.then354
  %i.1607 = phi i32 [ 0, %if.then354 ], [ %inc370, %for.inc369.for.body360_crit_edge ]
  %arrayidx361 = getelementptr [37 x i32], ptr @dm_tx_bb_gain, i32 0, i32 %i.1607
  %105 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx361, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call355, i32 %106)
  %cmp362 = icmp eq i32 %call355, %106
  br i1 %cmp362, label %if.then364, label %for.inc369

if.then364:                                       ; preds = %for.body360
  call void @__sanitizer_cov_trace_pc() #9
  %conv365 = trunc i32 %i.1607 to i8
  %rfa_txpowertrackingindex = getelementptr i8, ptr %dev, i32 36149
  %107 = ptrtoint ptr %rfa_txpowertrackingindex to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv365, ptr %rfa_txpowertrackingindex, align 1
  %rfa_txpowertrackingindex_real = getelementptr i8, ptr %dev, i32 36150
  %108 = ptrtoint ptr %rfa_txpowertrackingindex_real to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv365, ptr %rfa_txpowertrackingindex_real, align 2
  %rfa_txpowertracking_default = getelementptr i8, ptr %dev, i32 36151
  %109 = ptrtoint ptr %rfa_txpowertracking_default to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv365, ptr %rfa_txpowertracking_default, align 1
  br label %for.end371

for.inc369:                                       ; preds = %for.body360
  %inc370 = add nuw nsw i32 %i.1607, 1
  %exitcond613.not = icmp eq i32 %inc370, 37
  br i1 %exitcond613.not, label %for.inc369.for.end371_crit_edge, label %for.inc369.for.body360_crit_edge

for.inc369.for.body360_crit_edge:                 ; preds = %for.inc369
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body360

for.inc369.for.end371_crit_edge:                  ; preds = %for.inc369
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end371

for.end371:                                       ; preds = %for.inc369.for.end371_crit_edge, %if.then364
  %call372 = tail call i32 @rtl92e_get_bb_reg(ptr noundef %dev, i32 noundef 2592, i32 noundef 16711680) #7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dm_cck_tx_bb_gain to i32))
  %110 = load i8, ptr @dm_cck_tx_bb_gain, align 1
  %conv379 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379)
  %cmp380 = icmp eq i32 %call372, %conv379
  br i1 %cmp380, label %for.end371.if.then382_crit_edge, label %for.inc385

for.end371.if.then382_crit_edge:                  ; preds = %for.end371
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

if.then382:                                       ; preds = %for.inc385.21.if.then382_crit_edge, %for.inc385.20.if.then382_crit_edge, %for.inc385.19.if.then382_crit_edge, %for.inc385.18.if.then382_crit_edge, %for.inc385.17.if.then382_crit_edge, %for.inc385.16.if.then382_crit_edge, %for.inc385.15.if.then382_crit_edge, %for.inc385.14.if.then382_crit_edge, %for.inc385.13.if.then382_crit_edge, %for.inc385.12.if.then382_crit_edge, %for.inc385.11.if.then382_crit_edge, %for.inc385.10.if.then382_crit_edge, %for.inc385.9.if.then382_crit_edge, %for.inc385.8.if.then382_crit_edge, %for.inc385.7.if.then382_crit_edge, %for.inc385.6.if.then382_crit_edge, %for.inc385.5.if.then382_crit_edge, %for.inc385.4.if.then382_crit_edge, %for.inc385.3.if.then382_crit_edge, %for.inc385.2.if.then382_crit_edge, %for.inc385.1.if.then382_crit_edge, %for.inc385.if.then382_crit_edge, %for.end371.if.then382_crit_edge
  %i.2608.lcssa = phi i8 [ 0, %for.end371.if.then382_crit_edge ], [ 1, %for.inc385.if.then382_crit_edge ], [ 2, %for.inc385.1.if.then382_crit_edge ], [ 3, %for.inc385.2.if.then382_crit_edge ], [ 4, %for.inc385.3.if.then382_crit_edge ], [ 5, %for.inc385.4.if.then382_crit_edge ], [ 6, %for.inc385.5.if.then382_crit_edge ], [ 7, %for.inc385.6.if.then382_crit_edge ], [ 8, %for.inc385.7.if.then382_crit_edge ], [ 9, %for.inc385.8.if.then382_crit_edge ], [ 10, %for.inc385.9.if.then382_crit_edge ], [ 11, %for.inc385.10.if.then382_crit_edge ], [ 12, %for.inc385.11.if.then382_crit_edge ], [ 13, %for.inc385.12.if.then382_crit_edge ], [ 14, %for.inc385.13.if.then382_crit_edge ], [ 15, %for.inc385.14.if.then382_crit_edge ], [ 16, %for.inc385.15.if.then382_crit_edge ], [ 17, %for.inc385.16.if.then382_crit_edge ], [ 18, %for.inc385.17.if.then382_crit_edge ], [ 19, %for.inc385.18.if.then382_crit_edge ], [ 20, %for.inc385.19.if.then382_crit_edge ], [ 21, %for.inc385.20.if.then382_crit_edge ], [ 22, %for.inc385.21.if.then382_crit_edge ]
  %CCKPresentAttentuation_20Mdefault = getelementptr i8, ptr %dev, i32 36024
  %111 = ptrtoint ptr %CCKPresentAttentuation_20Mdefault to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %i.2608.lcssa, ptr %CCKPresentAttentuation_20Mdefault, align 4
  br label %for.end387

for.inc385:                                       ; preds = %for.end371
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 1) to i32))
  %112 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 1), align 1
  %conv379.1 = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.1)
  %cmp380.1 = icmp eq i32 %call372, %conv379.1
  br i1 %cmp380.1, label %for.inc385.if.then382_crit_edge, label %for.inc385.1

for.inc385.if.then382_crit_edge:                  ; preds = %for.inc385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.1:                                     ; preds = %for.inc385
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 2) to i32))
  %113 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 2), align 1
  %conv379.2 = zext i8 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.2)
  %cmp380.2 = icmp eq i32 %call372, %conv379.2
  br i1 %cmp380.2, label %for.inc385.1.if.then382_crit_edge, label %for.inc385.2

for.inc385.1.if.then382_crit_edge:                ; preds = %for.inc385.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.2:                                     ; preds = %for.inc385.1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 3) to i32))
  %114 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 3), align 1
  %conv379.3 = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.3)
  %cmp380.3 = icmp eq i32 %call372, %conv379.3
  br i1 %cmp380.3, label %for.inc385.2.if.then382_crit_edge, label %for.inc385.3

for.inc385.2.if.then382_crit_edge:                ; preds = %for.inc385.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.3:                                     ; preds = %for.inc385.2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 4) to i32))
  %115 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 4), align 1
  %conv379.4 = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.4)
  %cmp380.4 = icmp eq i32 %call372, %conv379.4
  br i1 %cmp380.4, label %for.inc385.3.if.then382_crit_edge, label %for.inc385.4

for.inc385.3.if.then382_crit_edge:                ; preds = %for.inc385.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.4:                                     ; preds = %for.inc385.3
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 5) to i32))
  %116 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 5), align 1
  %conv379.5 = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.5)
  %cmp380.5 = icmp eq i32 %call372, %conv379.5
  br i1 %cmp380.5, label %for.inc385.4.if.then382_crit_edge, label %for.inc385.5

for.inc385.4.if.then382_crit_edge:                ; preds = %for.inc385.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.5:                                     ; preds = %for.inc385.4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 6) to i32))
  %117 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 6), align 1
  %conv379.6 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.6)
  %cmp380.6 = icmp eq i32 %call372, %conv379.6
  br i1 %cmp380.6, label %for.inc385.5.if.then382_crit_edge, label %for.inc385.6

for.inc385.5.if.then382_crit_edge:                ; preds = %for.inc385.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.6:                                     ; preds = %for.inc385.5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 7) to i32))
  %118 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 7), align 1
  %conv379.7 = zext i8 %118 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.7)
  %cmp380.7 = icmp eq i32 %call372, %conv379.7
  br i1 %cmp380.7, label %for.inc385.6.if.then382_crit_edge, label %for.inc385.7

for.inc385.6.if.then382_crit_edge:                ; preds = %for.inc385.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.7:                                     ; preds = %for.inc385.6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 8) to i32))
  %119 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 8), align 1
  %conv379.8 = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.8)
  %cmp380.8 = icmp eq i32 %call372, %conv379.8
  br i1 %cmp380.8, label %for.inc385.7.if.then382_crit_edge, label %for.inc385.8

for.inc385.7.if.then382_crit_edge:                ; preds = %for.inc385.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.8:                                     ; preds = %for.inc385.7
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 9) to i32))
  %120 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 9), align 1
  %conv379.9 = zext i8 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.9)
  %cmp380.9 = icmp eq i32 %call372, %conv379.9
  br i1 %cmp380.9, label %for.inc385.8.if.then382_crit_edge, label %for.inc385.9

for.inc385.8.if.then382_crit_edge:                ; preds = %for.inc385.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.9:                                     ; preds = %for.inc385.8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 10) to i32))
  %121 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 10), align 1
  %conv379.10 = zext i8 %121 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.10)
  %cmp380.10 = icmp eq i32 %call372, %conv379.10
  br i1 %cmp380.10, label %for.inc385.9.if.then382_crit_edge, label %for.inc385.10

for.inc385.9.if.then382_crit_edge:                ; preds = %for.inc385.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.10:                                    ; preds = %for.inc385.9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 11) to i32))
  %122 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 11), align 1
  %conv379.11 = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.11)
  %cmp380.11 = icmp eq i32 %call372, %conv379.11
  br i1 %cmp380.11, label %for.inc385.10.if.then382_crit_edge, label %for.inc385.11

for.inc385.10.if.then382_crit_edge:               ; preds = %for.inc385.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.11:                                    ; preds = %for.inc385.10
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 12) to i32))
  %123 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 12), align 1
  %conv379.12 = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.12)
  %cmp380.12 = icmp eq i32 %call372, %conv379.12
  br i1 %cmp380.12, label %for.inc385.11.if.then382_crit_edge, label %for.inc385.12

for.inc385.11.if.then382_crit_edge:               ; preds = %for.inc385.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.12:                                    ; preds = %for.inc385.11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 13) to i32))
  %124 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 13), align 1
  %conv379.13 = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.13)
  %cmp380.13 = icmp eq i32 %call372, %conv379.13
  br i1 %cmp380.13, label %for.inc385.12.if.then382_crit_edge, label %for.inc385.13

for.inc385.12.if.then382_crit_edge:               ; preds = %for.inc385.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.13:                                    ; preds = %for.inc385.12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 14) to i32))
  %125 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 14), align 1
  %conv379.14 = zext i8 %125 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.14)
  %cmp380.14 = icmp eq i32 %call372, %conv379.14
  br i1 %cmp380.14, label %for.inc385.13.if.then382_crit_edge, label %for.inc385.14

for.inc385.13.if.then382_crit_edge:               ; preds = %for.inc385.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.14:                                    ; preds = %for.inc385.13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 15) to i32))
  %126 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 15), align 1
  %conv379.15 = zext i8 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.15)
  %cmp380.15 = icmp eq i32 %call372, %conv379.15
  br i1 %cmp380.15, label %for.inc385.14.if.then382_crit_edge, label %for.inc385.15

for.inc385.14.if.then382_crit_edge:               ; preds = %for.inc385.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.15:                                    ; preds = %for.inc385.14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 16) to i32))
  %127 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 16), align 1
  %conv379.16 = zext i8 %127 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.16)
  %cmp380.16 = icmp eq i32 %call372, %conv379.16
  br i1 %cmp380.16, label %for.inc385.15.if.then382_crit_edge, label %for.inc385.16

for.inc385.15.if.then382_crit_edge:               ; preds = %for.inc385.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.16:                                    ; preds = %for.inc385.15
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 17) to i32))
  %128 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 17), align 1
  %conv379.17 = zext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.17)
  %cmp380.17 = icmp eq i32 %call372, %conv379.17
  br i1 %cmp380.17, label %for.inc385.16.if.then382_crit_edge, label %for.inc385.17

for.inc385.16.if.then382_crit_edge:               ; preds = %for.inc385.16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.17:                                    ; preds = %for.inc385.16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 18) to i32))
  %129 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 18), align 1
  %conv379.18 = zext i8 %129 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.18)
  %cmp380.18 = icmp eq i32 %call372, %conv379.18
  br i1 %cmp380.18, label %for.inc385.17.if.then382_crit_edge, label %for.inc385.18

for.inc385.17.if.then382_crit_edge:               ; preds = %for.inc385.17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.18:                                    ; preds = %for.inc385.17
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 19) to i32))
  %130 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 19), align 1
  %conv379.19 = zext i8 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.19)
  %cmp380.19 = icmp eq i32 %call372, %conv379.19
  br i1 %cmp380.19, label %for.inc385.18.if.then382_crit_edge, label %for.inc385.19

for.inc385.18.if.then382_crit_edge:               ; preds = %for.inc385.18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.19:                                    ; preds = %for.inc385.18
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 20) to i32))
  %131 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 20), align 1
  %conv379.20 = zext i8 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.20)
  %cmp380.20 = icmp eq i32 %call372, %conv379.20
  br i1 %cmp380.20, label %for.inc385.19.if.then382_crit_edge, label %for.inc385.20

for.inc385.19.if.then382_crit_edge:               ; preds = %for.inc385.19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.20:                                    ; preds = %for.inc385.19
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 21) to i32))
  %132 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 21), align 1
  %conv379.21 = zext i8 %132 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.21)
  %cmp380.21 = icmp eq i32 %call372, %conv379.21
  br i1 %cmp380.21, label %for.inc385.20.if.then382_crit_edge, label %for.inc385.21

for.inc385.20.if.then382_crit_edge:               ; preds = %for.inc385.20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.inc385.21:                                    ; preds = %for.inc385.20
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 22) to i32))
  %133 = load i8, ptr getelementptr inbounds ([23 x [8 x i8]], ptr @dm_cck_tx_bb_gain, i32 0, i32 22), align 1
  %conv379.22 = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call372, i32 %conv379.22)
  %cmp380.22 = icmp eq i32 %call372, %conv379.22
  br i1 %cmp380.22, label %for.inc385.21.if.then382_crit_edge, label %for.inc385.21.for.end387_crit_edge

for.inc385.21.for.end387_crit_edge:               ; preds = %for.inc385.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end387

for.inc385.21.if.then382_crit_edge:               ; preds = %for.inc385.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then382

for.end387:                                       ; preds = %for.inc385.21.for.end387_crit_edge, %if.then382
  %CCKPresentAttentuation_40Mdefault = getelementptr i8, ptr %dev, i32 36025
  %134 = ptrtoint ptr %CCKPresentAttentuation_40Mdefault to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %CCKPresentAttentuation_40Mdefault, align 1
  %CCKPresentAttentuation_difference = getelementptr i8, ptr %dev, i32 36026
  %135 = ptrtoint ptr %CCKPresentAttentuation_difference to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %CCKPresentAttentuation_difference, align 2
  %CCKPresentAttentuation_20Mdefault388 = getelementptr i8, ptr %dev, i32 36024
  %136 = ptrtoint ptr %CCKPresentAttentuation_20Mdefault388 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %CCKPresentAttentuation_20Mdefault388, align 4
  %CCKPresentAttentuation = getelementptr i8, ptr %dev, i32 36027
  %138 = ptrtoint ptr %CCKPresentAttentuation to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %CCKPresentAttentuation, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %139 = load i32, ptr @rt_global_debug_component, align 4
  %and390 = and i32 %139, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %for.end387.do.body403_crit_edge, label %do.end395

for.end387.do.body403_crit_edge:                  ; preds = %for.end387
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body403

do.end395:                                        ; preds = %for.end387
  call void @__sanitizer_cov_trace_pc() #9
  %rfa_txpowertrackingindex397 = getelementptr i8, ptr %dev, i32 36149
  %140 = ptrtoint ptr %rfa_txpowertrackingindex397 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %rfa_txpowertrackingindex397, align 1
  %conv398 = zext i8 %141 to i32
  %call399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv398) #10
  br label %do.body403

do.body403:                                       ; preds = %do.end395, %for.end387.do.body403_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %142 = load i32, ptr @rt_global_debug_component, align 4
  %and404 = and i32 %142, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %do.body403.do.body417_crit_edge, label %do.end409

do.body403.do.body417_crit_edge:                  ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body417

do.end409:                                        ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #9
  %rfa_txpowertrackingindex_real411 = getelementptr i8, ptr %dev, i32 36150
  %143 = ptrtoint ptr %rfa_txpowertrackingindex_real411 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %rfa_txpowertrackingindex_real411, align 2
  %conv412 = zext i8 %144 to i32
  %call413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %conv412) #10
  br label %do.body417

do.body417:                                       ; preds = %do.end409, %do.body403.do.body417_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %145 = load i32, ptr @rt_global_debug_component, align 4
  %and418 = and i32 %145, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418)
  %tobool419.not = icmp eq i32 %and418, 0
  br i1 %tobool419.not, label %do.body417.do.body431_crit_edge, label %do.end423

do.body417.do.body431_crit_edge:                  ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body431

do.end423:                                        ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %CCKPresentAttentuation_difference to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %CCKPresentAttentuation_difference, align 2
  %conv426 = sext i8 %147 to i32
  %call427 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv426) #10
  br label %do.body431

do.body431:                                       ; preds = %do.end423, %do.body417.do.body431_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %148 = load i32, ptr @rt_global_debug_component, align 4
  %and432 = and i32 %148, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and432)
  %tobool433.not = icmp eq i32 %and432, 0
  br i1 %tobool433.not, label %do.body431.do.end444_crit_edge, label %do.end437

do.body431.do.end444_crit_edge:                   ; preds = %do.body431
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end444

do.end437:                                        ; preds = %do.body431
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %CCKPresentAttentuation to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %CCKPresentAttentuation, align 1
  %conv440 = sext i8 %150 to i32
  %call441 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv440) #10
  br label %do.end444

do.end444:                                        ; preds = %do.end437, %do.body431.do.end444_crit_edge
  %btxpower_tracking = getelementptr i8, ptr %dev, i32 36154
  %151 = ptrtoint ptr %btxpower_tracking to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %btxpower_tracking, align 2
  br label %if.end446

if.end446:                                        ; preds = %do.end444, %if.then349.if.end446_crit_edge, %if.end338.if.end446_crit_edge
  tail call void @rtl92e_irq_enable(ptr noundef %dev) #7
  br label %end

end:                                              ; preds = %if.end446, %if.then204.end_crit_edge
  %152 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %being_init_adapter, align 1
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then242, %if.then51
  %retval.0 = phi i1 [ %call201, %end ], [ false, %if.then242 ], [ false, %if.then51 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_reset_desc_ring(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_config_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_tx_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_rx_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_wireless_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_cam_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_config_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_get_tx_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_init_fw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_config_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_set_rf_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_init_txpower_tracking(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_get_bb_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_link_change(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %rate_config.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %up = getelementptr i8, ptr %dev, i32 30794
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rate_config.i) #7
  %6 = ptrtoint ptr %rate_config.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %rate_config.i, align 2
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rtllib, align 8
  %current_network.i = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 89
  call void @rtl92e_config_rate(ptr noundef %dev, ptr noundef nonnull %rate_config.i) #7
  %dot11CurrentPreambleMode.i = getelementptr i8, ptr %dev, i32 35907
  %9 = ptrtoint ptr %dot11CurrentPreambleMode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %dot11CurrentPreambleMode.i, align 1
  %10 = ptrtoint ptr %rate_config.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rate_config.i, align 2
  %12 = and i16 %11, 351
  store i16 %12, ptr %rate_config.i, align 2
  %basic_rate.i = getelementptr i8, ptr %dev, i32 35904
  %13 = ptrtoint ptr %basic_rate.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %basic_rate.i, align 4
  %14 = ptrtoint ptr %current_network.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %current_network.i, align 8
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 46, i16 noundef zeroext %15) #7
  %add.ptr.i = getelementptr %struct.rtllib_device, ptr %8, i32 0, i32 89, i32 0, i32 2
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 48, i32 noundef %17) #7
  %18 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtllib, align 8
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %19, i32 0, i32 56
  %20 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  br i1 %cmp.i, label %if.then.i, label %if.then1._rtl92e_net_update.exit_crit_edge

if.then1._rtl92e_net_update.exit_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_net_update.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 114, i16 noundef zeroext 2) #7
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 118, i16 noundef zeroext 256) #7
  %beacon_interval.i = getelementptr inbounds %struct.rtllib_device, ptr %8, i32 0, i32 89, i32 26
  %22 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beacon_interval.i, align 4
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 112, i16 noundef zeroext %23) #7
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 116, i16 noundef zeroext 10) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 120, i8 noundef zeroext 100) #7
  call void @rtl92e_writew(ptr noundef %dev, i32 noundef 98, i16 noundef zeroext 1551) #7
  br label %_rtl92e_net_update.exit

_rtl92e_net_update.exit:                          ; preds = %if.then.i, %if.then1._rtl92e_net_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rate_config.i) #7
  %ops = getelementptr i8, ptr %dev, i32 31312
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %update_ratr_table = getelementptr inbounds %struct.rtl819x_ops, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %update_ratr_table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_ratr_table, align 4
  call void %27(ptr noundef %dev) #7
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %28 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pairwise_key_type, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.197)
  switch i16 %29, label %_rtl92e_net_update.exit.if.end10_crit_edge [
    i16 1, label %_rtl92e_net_update.exit.if.then8_crit_edge
    i16 5, label %_rtl92e_net_update.exit.if.then8_crit_edge55
  ]

_rtl92e_net_update.exit.if.then8_crit_edge55:     ; preds = %_rtl92e_net_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

_rtl92e_net_update.exit.if.then8_crit_edge:       ; preds = %_rtl92e_net_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

_rtl92e_net_update.exit.if.end10_crit_edge:       ; preds = %_rtl92e_net_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %_rtl92e_net_update.exit.if.then8_crit_edge, %_rtl92e_net_update.exit.if.then8_crit_edge55
  call void @rtl92e_enable_hw_security_config(ptr noundef %dev) #7
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 371, i8 noundef zeroext 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8, %_rtl92e_net_update.exit.if.end10_crit_edge
  %call1.i = call zeroext i8 @rtl92e_readb(ptr noundef %dev, i32 noundef 771) #7
  %31 = and i8 %call1.i, -4
  %32 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtllib, align 8
  %iw_mode.i53 = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 56
  %34 = ptrtoint ptr %iw_mode.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode.i53, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %35, label %if.end10.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb10.i
    i32 3, label %sw.bb24.i
  ]

if.end10.sw.epilog.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 90
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp.i54 = icmp eq i32 %38, 5
  %39 = or i8 %31, 2
  %msr.0.i = select i1 %cmp.i54, i8 %39, i8 %31
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %state12.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 90
  %40 = ptrtoint ptr %state12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp13.i = icmp eq i32 %41, 5
  %42 = zext i1 %cmp13.i to i8
  %spec.select.i = or i8 %31, %42
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %state26.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 90
  %43 = ptrtoint ptr %state26.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp27.i = icmp eq i32 %44, 5
  %masksel.i = select i1 %cmp27.i, i8 3, i8 0
  %spec.select58.i = or i8 %masksel.i, %31
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb24.i, %sw.bb10.i, %sw.bb.i, %if.end10.sw.epilog.i_crit_edge
  %msr.1.i = phi i8 [ %31, %if.end10.sw.epilog.i_crit_edge ], [ %msr.0.i, %sw.bb.i ], [ %spec.select.i, %sw.bb10.i ], [ %spec.select58.i, %sw.bb24.i ]
  %LedAction.0.i = phi i32 [ 3, %if.end10.sw.epilog.i_crit_edge ], [ 2, %sw.bb.i ], [ 3, %sw.bb10.i ], [ 3, %sw.bb24.i ]
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 771, i8 noundef zeroext %msr.1.i) #7
  %45 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtllib, align 8
  %LedControlHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %46, i32 0, i32 202
  %47 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %LedControlHandler.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %sw.epilog.i._rtl92e_update_msr.exit_crit_edge, label %if.then39.i

sw.epilog.i._rtl92e_update_msr.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_msr.exit

if.then39.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %48(ptr noundef %dev, i32 noundef %LedAction.0.i) #7
  br label %_rtl92e_update_msr.exit

_rtl92e_update_msr.exit:                          ; preds = %if.then39.i, %sw.epilog.i._rtl92e_update_msr.exit_crit_edge
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %49 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iw_mode, align 8
  %.off = add i32 %50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then17, label %_rtl92e_update_msr.exit.cleanup_crit_edge

_rtl92e_update_msr.exit.cleanup_crit_edge:        ; preds = %_rtl92e_update_msr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %_rtl92e_update_msr.exit
  %call18 = call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 68) #7
  %51 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rtllib, align 8
  %state20 = getelementptr inbounds %struct.rtllib_device, ptr %52, i32 0, i32 90
  %53 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %cmp21 = icmp eq i32 %54, 5
  br i1 %cmp21, label %if.then23, label %if.else28

if.then23:                                        ; preds = %if.then17
  %IntelPromiscuousModeInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 58
  %55 = ptrtoint ptr %IntelPromiscuousModeInfo to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %IntelPromiscuousModeInfo, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool24.not = icmp eq i8 %56, 0
  br i1 %tobool24.not, label %if.else26, label %if.then23.if.end30_crit_edge

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %call18, 8388608
  br label %if.end30.sink.split

if.else28:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call18, -8388609
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else28, %if.else26
  %or.sink = phi i32 [ %or, %if.else26 ], [ %and, %if.else28 ]
  %ReceiveConfig = getelementptr i8, ptr %dev, i32 35012
  %57 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.sink, ptr %ReceiveConfig, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.then23.if.end30_crit_edge
  %reg.0 = phi i32 [ %call18, %if.then23.if.end30_crit_edge ], [ %or.sink, %if.end30.sink.split ]
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 68, i32 noundef %reg.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %_rtl92e_update_msr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_hw_security_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_monitor_mode(ptr noundef %dev, i1 noundef zeroext %bAllowAllDA, i1 noundef zeroext %WriteIntoReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ReceiveConfig = getelementptr i8, ptr %dev, i32 35012
  %0 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ReceiveConfig, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %bAllowAllDA to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %ReceiveConfig, align 8
  br i1 %WriteIntoReg, label %if.then4, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ReceiveConfig5 = getelementptr i8, ptr %dev, i32 35012
  %2 = ptrtoint ptr %ReceiveConfig5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ReceiveConfig5, align 8
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 68, i32 noundef %3) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_fill_tx_desc(ptr noundef %dev, ptr nocapture noundef %pdesc, ptr nocapture noundef readonly %cb_desc, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %data_rate = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 10
  %3 = ptrtoint ptr %data_rate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data_rate, align 2
  %.lobit = lshr i8 %4, 7
  %5 = zext i8 %.lobit to i64
  %bf.shl = shl nuw nsw i64 %5, 47
  store i64 %bf.shl, ptr %1, align 4
  %6 = load i8, ptr %data_rate, align 2
  %call3 = tail call fastcc zeroext i8 @_rtl92e_rate_mgn_to_hw(i8 noundef zeroext %6)
  %bf.value5 = zext i8 %call3 to i64
  %bf.shl6 = shl i64 %bf.value5, 57
  %bf.set8 = or i64 %bf.shl6, %bf.shl
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %bf.set8, ptr %1, align 4
  %bTxEnableFwCalcDur = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 2
  %8 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load10 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.lshr = lshr i16 %bf.load10, 11
  %9 = trunc i16 %bf.lshr to i8
  %10 = and i8 %9, 1
  %bf.value13 = zext i8 %10 to i64
  %bf.shl14 = shl nuw nsw i64 %bf.value13, 32
  %bf.set16 = or i64 %bf.shl14, %bf.set8
  store i64 %bf.set16, ptr %1, align 4
  %bf.lshr23 = and i8 %call3, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lobit)
  %cmp.i = icmp eq i8 %.lobit, 1
  %11 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %bTxEnableFwCalcDur, align 2
  %..i = select i1 %cmp.i, i16 13, i16 12
  %12 = lshr i16 %bf.load.i, %..i
  %13 = trunc i16 %12 to i8
  %cond10.i = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %bf.lshr23)
  %cmp16.not.i = icmp ne i8 %bf.lshr23, 15
  %14 = and i1 %cmp.i, %cmp16.not.i
  %15 = zext i8 %cond10.i to i64
  %.op = shl nuw nsw i64 %15, 46
  %bf.shl28 = select i1 %14, i64 0, i64 %.op
  %bf.set30 = or i64 %bf.shl28, %bf.set16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %bf.set30, ptr %1, align 4
  %17 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load32 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %18 = and i16 %bf.load32, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool36.not = icmp eq i16 %18, 0
  br i1 %tobool36.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set39 = or i64 %bf.set30, 1099511627776
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %bf.set39, ptr %1, align 4
  %ampdu_factor = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 12
  %20 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ampdu_factor, align 2
  %22 = and i8 %21, 3
  %bf.value42 = zext i8 %22 to i64
  %bf.shl43 = shl nuw nsw i64 %bf.value42, 30
  %bf.set45 = or i64 %bf.shl43, %bf.set39
  store i64 %bf.set45, ptr %1, align 4
  %ampdu_density = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 13
  %23 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ampdu_density, align 1
  %25 = and i8 %24, 7
  %bf.value49 = zext i8 %25 to i64
  %bf.shl50 = shl nuw nsw i64 %bf.value49, 27
  %bf.clear51 = and i64 %bf.set45, -939524097
  %bf.set52 = or i64 %bf.clear51, %bf.shl50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i64 [ %bf.set52, %if.then ], [ %bf.set30, %entry.if.end_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %storemerge, ptr %1, align 4
  %27 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load63 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %28 = lshr i16 %bf.load63, 14
  %29 = trunc i16 %28 to i8
  %30 = and i8 %29, 1
  %bf.value72 = zext i8 %30 to i64
  %bf.shl73 = shl nuw nsw i64 %bf.value72, 48
  %bf.clear74 = and i64 %storemerge, -281474976710657
  %bf.set75 = or i64 %bf.shl73, %bf.clear74
  store i64 %bf.set75, ptr %1, align 4
  %bf.load77 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.load77.lobit = lshr i16 %bf.load77, 15
  %31 = zext i16 %bf.load77.lobit to i64
  %bf.shl86 = shl nuw nsw i64 %31, 56
  %bf.clear87 = and i64 %bf.set75, -72057594037927937
  %bf.set88 = or i64 %bf.clear87, %bf.shl86
  store i64 %bf.set88, ptr %1, align 4
  %bf.load90 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %32 = lshr i16 %bf.load90, 9
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 1
  %bf.value99 = zext i8 %34 to i64
  %bf.shl100 = shl nuw nsw i64 %bf.value99, 33
  %bf.clear101 = and i64 %bf.set88, -25769803777
  %bf.set102 = or i64 %bf.clear101, %bf.shl100
  store i64 %bf.set102, ptr %1, align 4
  %rts_rate = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 11
  %35 = ptrtoint ptr %rts_rate to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rts_rate, align 1
  %.lobit409 = lshr i8 %36, 7
  %37 = zext i8 %.lobit409 to i64
  %bf.shl111 = shl nuw nsw i64 %37, 39
  %bf.clear112 = and i64 %bf.set102, -566935683073
  %bf.set113 = or i64 %bf.clear112, %bf.shl111
  store i64 %bf.set113, ptr %1, align 4
  %38 = load i8, ptr %rts_rate, align 1
  %call116 = tail call fastcc zeroext i8 @_rtl92e_rate_mgn_to_hw(i8 noundef zeroext %38)
  %39 = and i8 %call116, 127
  %bf.value118 = zext i8 %39 to i64
  %bf.shl119 = shl nuw nsw i64 %bf.value118, 49
  %bf.clear120 = and i64 %bf.set113, -71494798703329281
  %bf.set121 = or i64 %bf.clear120, %bf.shl119
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %bf.set121, ptr %1, align 4
  %41 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load126 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.lshr127 = lshr i16 %bf.load126, 8
  %42 = trunc i16 %bf.lshr127 to i8
  %43 = and i8 %42, 1
  %bf.value131 = zext i8 %43 to i64
  %bf.shl132 = shl nuw nsw i64 %bf.value131, 35
  %bf.clear133 = and i64 %bf.set121, -257698037761
  %bf.set134 = or i64 %bf.shl132, %bf.clear133
  store i64 %bf.set134, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp = icmp sgt i8 %36, -1
  %44 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load142 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %45 = trunc i16 %bf.load142 to i8
  %. = select i1 %cmp, i8 5, i8 4
  %46 = lshr i8 %45, %.
  %cond156 = and i8 %46, 1
  %bf.value159 = zext i8 %cond156 to i64
  %bf.shl160 = shl nuw nsw i64 %bf.value159, 38
  %bf.clear161 = and i64 %bf.set134, -498216206337
  %bf.set162 = or i64 %bf.shl160, %bf.clear161
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %bf.set162, ptr %1, align 4
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 31420
  %48 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %CurrentChannelBW, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp164 = icmp eq i32 %49, 1
  br i1 %cmp164, label %if.then166, label %if.else190

if.then166:                                       ; preds = %if.end
  %50 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load167 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %51 = and i16 %bf.load167, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool171.not = icmp eq i16 %51, 0
  br i1 %tobool171.not, label %if.else179, label %if.then172

if.then172:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set175 = and i64 %bf.set162, -61795989454849
  %bf.clear177 = or i64 %bf.set175, 35184372088832
  br label %if.end197

if.else179:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear181 = and i64 %bf.set162, -35407710388225
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %bf.clear181, ptr %1, align 4
  %nCur40MhzPrimeSC = getelementptr i8, ptr %dev, i32 35976
  %53 = ptrtoint ptr %nCur40MhzPrimeSC to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nCur40MhzPrimeSC, align 4
  %55 = and i8 %54, 3
  %bf.value184 = zext i8 %55 to i64
  %bf.shl185 = shl nuw nsw i64 %bf.value184, 43
  %bf.clear186 = and i64 %bf.set162, -61795989454849
  %bf.set187 = or i64 %bf.shl185, %bf.clear186
  br label %if.end197

if.else190:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear195 = and i64 %bf.set162, -61795989454849
  br label %if.end197

if.end197:                                        ; preds = %if.else190, %if.else179, %if.then172
  %bf.clear177.sink = phi i64 [ %bf.clear177, %if.then172 ], [ %bf.set187, %if.else179 ], [ %bf.clear195, %if.else190 ]
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %bf.clear177.sink, ptr %1, align 4
  %57 = call ptr @memset(ptr %pdesc, i32 0, i32 12)
  %58 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv.i, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %61) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end197
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !326

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev198) #7
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev198 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev198, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %67, %if.end.i.i ], [ %65, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.167, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.168, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev198, ptr noundef %61, i32 noundef %63) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %69 = ptrtoint ptr %61 to i32
  %sub.i = add i32 %69, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %68, i32 %shr.i
  %and.i = and i32 %69, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev198, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %63, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 8
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev202, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i412 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i412, label %if.then205, label %if.end206

if.then205:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.rtl92e_fill_tx_desc) #10
  br label %cleanup

if.end206:                                        ; preds = %dma_map_single_attrs.exit
  %LINIP = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 2
  %72 = ptrtoint ptr %LINIP to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load207 = load i8, ptr %LINIP, align 1
  %bf.clear211 = and i8 %bf.load207, -19
  %bf.set212 = or i8 %bf.clear211, 16
  store i8 %bf.set212, ptr %LINIP, align 1
  %Offset = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 1
  %73 = ptrtoint ptr %Offset to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 16, ptr %Offset, align 2
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  %76 = trunc i32 %75 to i16
  %conv216 = add i16 %76, -8
  %77 = ptrtoint ptr %pdesc to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv216, ptr %pdesc, align 4
  %SecCAMID = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 4
  %78 = ptrtoint ptr %SecCAMID to i32
  call void @__asan_loadN_noabort(i32 %78, i32 3)
  %bf.load217 = load i24, ptr %SecCAMID, align 1
  %bf.clear218 = and i24 %bf.load217, -249
  store i24 %bf.clear218, ptr %SecCAMID, align 1
  %RATRIndex = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 6
  %79 = ptrtoint ptr %RATRIndex to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %RATRIndex, align 2
  %bf.value221 = zext i8 %80 to i24
  %bf.shl222 = shl i24 %bf.value221, 21
  %bf.clear223 = and i24 %bf.load217, 1965828
  %bf.set224 = or i24 %bf.shl222, %bf.clear223
  %bf.set228 = or i24 %bf.set224, 131072
  store i24 %bf.set228, ptr %SecCAMID, align 1
  %81 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load232 = load i8, ptr %cb_desc, align 2
  %bf.clear233 = and i8 %bf.load232, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear233)
  %tobool234.not = icmp eq i8 %bf.clear233, 0
  br i1 %tobool234.not, label %if.end206.if.end283_crit_edge, label %if.then235

if.end206.if.end283_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283

if.then235:                                       ; preds = %if.end206
  %.b = load i1, ptr @rtl92e_fill_tx_desc.tmp, align 1
  br i1 %.b, label %if.then235.if.end246_crit_edge, label %do.body

if.then235.if.end246_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

do.body:                                          ; preds = %if.then235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %82 = load i32, ptr @rt_global_debug_component, align 4
  %and238 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %do.body.do.end245_crit_edge, label %do.end

do.body.do.end245_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end245

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #10
  br label %do.end245

do.end245:                                        ; preds = %do.end, %do.body.do.end245_crit_edge
  store i1 true, ptr @rtl92e_fill_tx_desc.tmp, align 1
  br label %if.end246

if.end246:                                        ; preds = %do.end245, %if.then235.if.end246_crit_edge
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %83 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rtllib, align 8
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %84, i32 0, i32 79
  %85 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %pairwise_key_type, align 2
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.199)
  switch i16 %86, label %if.end246.if.end283_crit_edge [
    i16 1, label %if.end246.if.end283.sink.split_crit_edge
    i16 5, label %if.end246.if.end283.sink.split_crit_edge416
    i16 2, label %sw.bb256
    i16 4, label %sw.bb265
    i16 0, label %sw.bb274
  ]

if.end246.if.end283.sink.split_crit_edge416:      ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283.sink.split

if.end246.if.end283.sink.split_crit_edge:         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283.sink.split

if.end246.if.end283_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283

sw.bb256:                                         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283.sink.split

sw.bb265:                                         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283.sink.split

sw.bb274:                                         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end283.sink.split

if.end283.sink.split:                             ; preds = %sw.bb274, %sw.bb265, %sw.bb256, %if.end246.if.end283.sink.split_crit_edge, %if.end246.if.end283.sink.split_crit_edge416
  %.sink415 = phi i24 [ 2, %sw.bb256 ], [ 3, %sw.bb265 ], [ 131072, %sw.bb274 ], [ 1, %if.end246.if.end283.sink.split_crit_edge ], [ 1, %if.end246.if.end283.sink.split_crit_edge416 ]
  %88 = ptrtoint ptr %SecCAMID to i32
  call void @__asan_loadN_noabort(i32 %88, i32 3)
  %bf.load249 = load i24, ptr %SecCAMID, align 1
  %bf.clear250 = and i24 %bf.load249, -131076
  %bf.set251 = or i24 %bf.clear250, %.sink415
  store i24 %bf.set251, ptr %SecCAMID, align 1
  br label %if.end283

if.end283:                                        ; preds = %if.end283.sink.split, %if.end246.if.end283_crit_edge, %if.end206.if.end283_crit_edge
  %PktId = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 6
  %89 = ptrtoint ptr %PktId to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load284 = load i8, ptr %PktId, align 2
  %bf.clear285 = and i8 %bf.load284, 1
  store i8 %bf.clear285, ptr %PktId, align 2
  %queue_index = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 4
  %90 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %queue_index, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %91)
  %92 = icmp ult i8 %91, 9
  br i1 %92, label %switch.hole_check, label %if.end283.sw.default.i_crit_edge

if.end283.sw.default.i_crit_edge:                 ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.end283.sw.default.i_crit_edge
  %conv.i = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__._rtl92e_hw_queue_to_fw_queue, i32 noundef %conv.i) #10
  br label %_rtl92e_hw_queue_to_fw_queue.exit

switch.hole_check:                                ; preds = %if.end283
  %switch.maskindex = zext i8 %91 to i16
  %switch.shifted = lshr i16 495, %switch.maskindex
  %93 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %switch.lobit.not = icmp eq i16 %93, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %94 = sext i8 %91 to i32
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.rtl92e_fill_tx_desc, i32 0, i32 %94
  %95 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %95)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_rtl92e_hw_queue_to_fw_queue.exit

_rtl92e_hw_queue_to_fw_queue.exit:                ; preds = %switch.lookup, %sw.default.i
  %QueueSelect.0.i = phi i8 [ 0, %sw.default.i ], [ %switch.load, %switch.lookup ]
  %96 = ptrtoint ptr %SecCAMID to i32
  call void @__asan_loadN_noabort(i32 %96, i32 3)
  %bf.load288 = load i24, ptr %SecCAMID, align 1
  %bf.value289 = zext i8 %QueueSelect.0.i to i24
  %bf.shl290 = shl nuw nsw i24 %bf.value289, 11
  %bf.clear291 = and i24 %bf.load288, -63489
  %bf.set292 = or i24 %bf.clear291, %bf.shl290
  store i24 %bf.set292, ptr %SecCAMID, align 1
  %TxFWInfoSize = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 3
  %97 = ptrtoint ptr %TxFWInfoSize to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 8, ptr %TxFWInfoSize, align 4
  %98 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load294 = load i8, ptr %cb_desc, align 2
  %bf.lshr295 = lshr i8 %bf.load294, 2
  %99 = and i8 %bf.lshr295, 1
  %bf.value298 = zext i8 %99 to i24
  %bf.shl299 = shl nuw nsw i24 %bf.value298, 20
  %bf.clear300 = and i24 %bf.set292, -1064961
  %bf.set301 = or i24 %bf.shl299, %bf.clear300
  store i24 %bf.set301, ptr %SecCAMID, align 1
  %bf.load303 = load i8, ptr %cb_desc, align 2
  %bf.lshr304 = lshr i8 %bf.load303, 1
  %100 = and i8 %bf.lshr304, 1
  %bf.value307 = zext i8 %100 to i24
  %bf.shl308 = shl nuw nsw i24 %bf.value307, 19
  %bf.clear309 = and i24 %bf.set301, -540673
  %bf.set310 = or i24 %bf.clear309, %bf.shl308
  store i24 %bf.set310, ptr %SecCAMID, align 1
  %101 = ptrtoint ptr %LINIP to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load312 = load i8, ptr %LINIP, align 1
  %bf.set317 = or i8 %bf.load312, 12
  store i8 %bf.set317, ptr %LINIP, align 1
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %conv319 = trunc i32 %103 to i16
  %TxBufferSize = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 5
  %104 = ptrtoint ptr %TxBufferSize to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv319, ptr %TxBufferSize, align 4
  %TxBuffAddr = getelementptr inbounds %struct.tx_desc, ptr %pdesc, i32 0, i32 8
  %105 = ptrtoint ptr %TxBuffAddr to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i, ptr %TxBuffAddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %_rtl92e_hw_queue_to_fw_queue.exit, %if.then205
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @_rtl92e_rate_mgn_to_hw(i8 noundef zeroext %rate) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.200)
  switch i8 %rate, label %entry.sw.epilog_crit_edge [
    i8 -96, label %sw.bb28
    i8 4, label %sw.bb1
    i8 11, label %sw.bb2
    i8 22, label %sw.bb3
    i8 12, label %sw.bb4
    i8 18, label %sw.bb5
    i8 24, label %sw.bb6
    i8 36, label %sw.bb7
    i8 48, label %sw.bb8
    i8 72, label %sw.bb9
    i8 96, label %sw.bb10
    i8 108, label %sw.bb11
    i8 -113, label %sw.bb27
    i8 -127, label %sw.bb13
    i8 -126, label %sw.bb14
    i8 -125, label %sw.bb15
    i8 -124, label %sw.bb16
    i8 -123, label %sw.bb17
    i8 -122, label %sw.bb18
    i8 -121, label %sw.bb19
    i8 -120, label %sw.bb20
    i8 -119, label %sw.bb21
    i8 -118, label %sw.bb22
    i8 -117, label %sw.bb23
    i8 -116, label %sw.bb24
    i8 -115, label %sw.bb25
    i8 -114, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ret.0 = phi i8 [ 32, %sw.bb28 ], [ 15, %sw.bb27 ], [ 14, %sw.bb26 ], [ 13, %sw.bb25 ], [ 12, %sw.bb24 ], [ 11, %sw.bb23 ], [ 10, %sw.bb22 ], [ 9, %sw.bb21 ], [ 8, %sw.bb20 ], [ 7, %sw.bb19 ], [ 6, %sw.bb18 ], [ 5, %sw.bb17 ], [ 4, %sw.bb16 ], [ 3, %sw.bb15 ], [ 2, %sw.bb14 ], [ 1, %sw.bb13 ], [ 11, %sw.bb11 ], [ 10, %sw.bb10 ], [ 9, %sw.bb9 ], [ 8, %sw.bb8 ], [ 7, %sw.bb7 ], [ 6, %sw.bb6 ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i8 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_fill_tx_cmd_desc(ptr noundef %dev, ptr nocapture noundef %entry1, ptr nocapture noundef readonly %cb_desc, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !326

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev2) #7
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.167, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.168, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef %3, i32 noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %3 to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %5, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev5, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %dma_map_single_attrs.exit.if.end_crit_edge

dma_map_single_attrs.exit.if.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.rtl92e_fill_tx_cmd_desc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %dma_map_single_attrs.exit.if.end_crit_edge
  %14 = call ptr @memset(ptr %entry1, i32 0, i32 12)
  %15 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %cb_desc, align 2
  %LINIP = getelementptr inbounds %struct.tx_desc_cmd, ptr %entry1, i32 0, i32 2
  %16 = lshr i8 %bf.load, 6
  %bf.shl = and i8 %16, 2
  %bf.set13 = or i8 %bf.shl, 12
  %17 = ptrtoint ptr %LINIP to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set13, ptr %LINIP, align 1
  %bf.load14 = load i8, ptr %cb_desc, align 2
  %18 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %if.end.if.end36_crit_edge, label %if.else

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %LINIP to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load23 = load i8, ptr %LINIP, align 1
  %bf.set25 = or i8 %bf.load23, 16
  store i8 %bf.set25, ptr %LINIP, align 1
  %Offset = getelementptr inbounds %struct.tx_desc, ptr %entry1, i32 0, i32 1
  %20 = ptrtoint ptr %Offset to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %Offset, align 2
  %pkt_size = getelementptr inbounds %struct.cb_desc, ptr %cb_desc, i32 0, i32 16
  %21 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pkt_size, align 2
  %add = add i16 %22, 16
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add, ptr %entry1, align 4
  %QueueSelect = getelementptr inbounds %struct.tx_desc, ptr %entry1, i32 0, i32 4
  %24 = ptrtoint ptr %QueueSelect to i32
  call void @__asan_loadN_noabort(i32 %24, i32 3)
  %bf.load30 = load i24, ptr %QueueSelect, align 1
  %TxFWInfoSize = getelementptr inbounds %struct.tx_desc, ptr %entry1, i32 0, i32 3
  %25 = ptrtoint ptr %TxFWInfoSize to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %TxFWInfoSize, align 4
  %bf.set32 = and i24 %bf.load30, 2033663
  %bf.clear34 = or i24 %bf.set32, 38912
  store i24 %bf.clear34, ptr %QueueSelect, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end.if.end36_crit_edge
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %conv38 = trunc i32 %27 to i16
  %TxBufferSize = getelementptr inbounds %struct.tx_desc_cmd, ptr %entry1, i32 0, i32 5
  %28 = ptrtoint ptr %TxBufferSize to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv38, ptr %TxBufferSize, align 4
  %TxBuffAddr = getelementptr inbounds %struct.tx_desc_cmd, ptr %entry1, i32 0, i32 7
  %29 = ptrtoint ptr %TxBuffAddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %TxBuffAddr, align 4
  %30 = ptrtoint ptr %LINIP to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load39 = load i8, ptr %LINIP, align 1
  %bf.set41 = or i8 %bf.load39, 1
  store i8 %bf.set41, ptr %LINIP, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_get_rx_stats(ptr noundef %dev, ptr noundef %stats, ptr nocapture noundef readonly %pdesc, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %0 = ptrtoint ptr %pdesc to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pdesc, align 4
  %bICV = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 18
  %1 = trunc i16 %bf.load to i8
  %2 = ptrtoint ptr %bICV to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load1 = load i8, ptr %bICV, align 2
  %3 = shl i8 %1, 5
  %bf.shl = and i8 %3, 32
  %bf.clear2 = and i8 %bf.load1, -33
  %bf.set = or i8 %bf.shl, %bf.clear2
  store i8 %bf.set, ptr %bICV, align 2
  %bf.load3 = load i16, ptr %pdesc, align 4
  %4 = trunc i16 %bf.load3 to i8
  %5 = shl i8 %4, 5
  %bf.shl7 = and i8 %5, 64
  %bf.clear8 = and i8 %bf.set, -65
  %bf.set9 = or i8 %bf.shl7, %bf.clear8
  store i8 %bf.set9, ptr %bICV, align 2
  %bf.load11 = load i16, ptr %pdesc, align 4
  %bf.lshr12 = lshr i16 %bf.load11, 1
  %bf.clear13254 = or i16 %bf.lshr12, %bf.load11
  %6 = trunc i16 %bf.clear13254 to i8
  %bf.shl20 = shl i8 %6, 7
  %bf.clear21 = and i8 %bf.set9, 127
  %bf.set22 = or i8 %bf.shl20, %bf.clear21
  store i8 %bf.set22, ptr %bICV, align 2
  %bf.load24 = load i16, ptr %pdesc, align 4
  %bf.lshr25 = lshr i16 %bf.load24, 2
  %Length = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 13
  %7 = ptrtoint ptr %Length to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.lshr25, ptr %Length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 96, i16 %bf.load24)
  %cmp = icmp ult i16 %bf.load24, 96
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set39 = or i8 %bf.set9, -128
  %8 = ptrtoint ptr %bICV to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set39, ptr %bICV, align 2
  br label %if.then45

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %bICV to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load42.pr = load i8, ptr %bICV, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42.pr)
  %tobool.not = icmp sgt i8 %bf.load42.pr, -1
  br i1 %tobool.not, label %if.end72, label %if.end.if.then45_crit_edge

if.end.if.then45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %if.end.if.then45_crit_edge, %if.end.thread
  %bShift = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 22
  %10 = ptrtoint ptr %bShift to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bShift, align 4
  %11 = ptrtoint ptr %pdesc to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load46 = load i16, ptr %pdesc, align 4
  %12 = and i16 %bf.load46, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool49.not = icmp eq i16 %12, 0
  br i1 %tobool49.not, label %if.then45.cleanup_crit_edge, label %if.then50

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp2(i16 2000, i16 %bf.load46)
  %cmp54 = icmp ult i16 %bf.load46, 2000
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %rxcrcerrmin = getelementptr i8, ptr %dev, i32 32532
  %13 = ptrtoint ptr %rxcrcerrmin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxcrcerrmin, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rxcrcerrmin, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_const_cmp2(i16 4003, i16 %bf.load46)
  %cmp61 = icmp ugt i16 %bf.load46, 4003
  br i1 %cmp61, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rxcrcerrmax = getelementptr i8, ptr %dev, i32 32540
  %15 = ptrtoint ptr %rxcrcerrmax to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxcrcerrmax, align 8
  %inc65 = add i32 %16, 1
  store i32 %inc65, ptr %rxcrcerrmax, align 8
  br label %cleanup

if.else66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rxcrcerrmid = getelementptr i8, ptr %dev, i32 32536
  %17 = ptrtoint ptr %rxcrcerrmid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxcrcerrmid, align 4
  %inc68 = add i32 %18, 1
  store i32 %inc68, ptr %rxcrcerrmid, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.end
  %RxDrvInfoSize = getelementptr inbounds %struct.rx_desc, ptr %pdesc, i32 0, i32 1
  %19 = ptrtoint ptr %RxDrvInfoSize to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %RxDrvInfoSize, align 2
  %RxDrvInfoSize73 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 24
  %21 = ptrtoint ptr %RxDrvInfoSize73 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %RxDrvInfoSize73, align 2
  %Shift = getelementptr inbounds %struct.rx_desc, ptr %pdesc, i32 0, i32 2
  %22 = ptrtoint ptr %Shift to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load74 = load i8, ptr %Shift, align 1
  %bf.lshr75 = lshr i8 %bf.load74, 6
  %RxBufShift = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 25
  %23 = ptrtoint ptr %RxBufShift to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.lshr75, ptr %RxBufShift, align 1
  %bf.load78 = load i8, ptr %Shift, align 1
  %24 = lshr i8 %bf.load78, 2
  %25 = and i8 %24, 4
  %bf.clear86 = and i8 %bf.load42.pr, -5
  %26 = or i8 %25, %bf.clear86
  %bf.set87 = xor i8 %26, 4
  %27 = ptrtoint ptr %bICV to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set87, ptr %bICV, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %conv90 = zext i8 %bf.lshr75 to i32
  %add.ptr = getelementptr i8, ptr %29, i32 %conv90
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load91 = load i32, ptr %add.ptr, align 4
  %31 = and i32 %bf.load91, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool95.not = icmp eq i32 %31, 0
  %bf.lshr97 = lshr i32 %bf.load91, 9
  %bf.cast99 = and i32 %bf.lshr97, 127
  %trunc = trunc i32 %bf.lshr97 to i7
  br i1 %tobool95.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end72
  %32 = sext i7 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %32)
  %33 = icmp ult i7 %trunc, 12
  br i1 %33, label %switch.lookup566, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge, label %do.end.i

do.body.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, i32 noundef %bf.cast99, i32 noundef 0) #10
  br label %_rtl92e_update_received_rate_histogram_stats.exit

if.else.i:                                        ; preds = %if.end72
  %35 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.201)
  switch i7 %trunc, label %do.body39.i [
    i7 0, label %if.else.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge
    i7 1, label %sw.bb28.i262
    i7 2, label %sw.bb29.i263
    i7 3, label %sw.bb30.i264
    i7 4, label %sw.bb31.i265
    i7 5, label %sw.bb32.i266
    i7 6, label %sw.bb33.i267
    i7 7, label %sw.bb34.i268
    i7 8, label %sw.bb35.i269
    i7 9, label %sw.bb36.i270
    i7 10, label %sw.bb37.i271
    i7 11, label %sw.bb38.i
    i7 12, label %sw.bb39.i
    i7 13, label %sw.bb40.i
    i7 14, label %sw.bb41.i
    i7 15, label %sw.bb42.i
    i7 32, label %sw.default.i
  ]

if.else.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

do.body39.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %36 = load i32, ptr @rt_global_debug_component, align 4
  %and40.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %do.body39.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge, label %do.end45.i

do.body39.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge: ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171, i32 noundef %bf.cast99, i32 noundef 1) #10
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb28.i262:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb29.i263:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb30.i264:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb31.i265:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb32.i266:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb33.i267:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb34.i268:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb35.i269:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb36.i270:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb37.i271:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb38.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb39.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb41.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.bb42.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_update_received_rate_histogram_stats.exit

switch.lookup566:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl i32 %bf.lshr97, 25
  %37 = ashr exact i32 %sext, 25
  %switch.gep = getelementptr inbounds [12 x i16], ptr @switch.table.rtl92e_get_rx_stats, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %38)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.idx.cast567 = and i32 %bf.lshr97, 127
  br label %_rtl92e_update_received_rate_histogram_stats.exit

_rtl92e_update_received_rate_histogram_stats.exit: ; preds = %switch.lookup566, %sw.default.i, %sw.bb42.i, %sw.bb41.i, %sw.bb40.i, %sw.bb39.i, %sw.bb38.i, %sw.bb37.i271, %sw.bb36.i270, %sw.bb35.i269, %sw.bb34.i268, %sw.bb33.i267, %sw.bb32.i266, %sw.bb31.i265, %sw.bb30.i264, %sw.bb29.i263, %sw.bb28.i262, %do.end45.i, %do.body39.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge, %if.else.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge, %do.end.i, %do.body.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge
  %.sink = phi i16 [ 129, %sw.bb28.i262 ], [ 130, %sw.bb29.i263 ], [ 131, %sw.bb30.i264 ], [ 132, %sw.bb31.i265 ], [ 133, %sw.bb32.i266 ], [ 134, %sw.bb33.i267 ], [ 135, %sw.bb34.i268 ], [ 136, %sw.bb35.i269 ], [ 137, %sw.bb36.i270 ], [ 138, %sw.bb37.i271 ], [ 139, %sw.bb38.i ], [ 140, %sw.bb39.i ], [ 141, %sw.bb40.i ], [ 142, %sw.bb41.i ], [ 143, %sw.bb42.i ], [ 160, %sw.default.i ], [ %switch.load, %switch.lookup566 ], [ 2, %do.end45.i ], [ 2, %do.body39.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ], [ 2, %do.end.i ], [ 2, %do.body.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ], [ 128, %if.else.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ]
  %rateIndex.0.i = phi i32 [ 13, %sw.bb28.i262 ], [ 14, %sw.bb29.i263 ], [ 15, %sw.bb30.i264 ], [ 16, %sw.bb31.i265 ], [ 17, %sw.bb32.i266 ], [ 18, %sw.bb33.i267 ], [ 19, %sw.bb34.i268 ], [ 20, %sw.bb35.i269 ], [ 21, %sw.bb36.i270 ], [ 22, %sw.bb37.i271 ], [ 23, %sw.bb38.i ], [ 24, %sw.bb39.i ], [ 25, %sw.bb40.i ], [ 26, %sw.bb41.i ], [ 27, %sw.bb42.i ], [ 28, %sw.default.i ], [ %switch.idx.cast567, %switch.lookup566 ], [ 0, %do.end45.i ], [ 0, %do.body39.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %do.body.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ], [ 12, %if.else.i._rtl92e_update_received_rate_histogram_stats.exit_crit_edge ]
  %rate283 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 4
  %39 = ptrtoint ptr %rate283 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %.sink, ptr %rate283, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load102284 = load i32, ptr %add.ptr, align 4
  %41 = trunc i32 %bf.load102284 to i8
  %42 = ptrtoint ptr %bICV to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load107285 = load i8, ptr %bICV, align 2
  %43 = lshr i8 %41, 2
  %bf.shl109286 = and i8 %43, 16
  %bf.clear110287 = and i8 %bf.load107285, -17
  %bf.set111288 = or i8 %bf.shl109286, %bf.clear110287
  store i8 %bf.set111288, ptr %bICV, align 2
  %44 = lshr exact i8 %bf.shl109286, 4
  %45 = zext i8 %44 to i32
  %46 = and i8 %bf.load107285, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  %47 = and i8 %bf.load107285, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool5.not.i = icmp eq i8 %47, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 1, i32 3
  %rcvType.0.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 2
  %arrayidx43.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 8, i32 %45, i32 %rateIndex.0.i
  %48 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx43.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %arrayidx43.i, align 4
  %received_rate_histogram.i = getelementptr i8, ptr %dev, i32 32544
  %arrayidx46.i = getelementptr [32 x i32], ptr %received_rate_histogram.i, i32 0, i32 %rateIndex.0.i
  %50 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx46.i, align 4
  %inc47.i = add i32 %51, 1
  store i32 %inc47.i, ptr %arrayidx46.i, align 4
  %arrayidx51.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 7, i32 %rcvType.0.i, i32 %rateIndex.0.i
  %52 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx51.i, align 4
  %inc52.i = add i32 %53, 1
  store i32 %inc52.i, ptr %arrayidx51.i, align 4
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load113 = load i32, ptr %add.ptr, align 4
  %bIsAMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 26
  %55 = lshr i32 %bf.load113, 19
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = ptrtoint ptr %bIsAMPDU to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %bIsAMPDU, align 8
  %bf.load120 = load i32, ptr %add.ptr, align 4
  %59 = and i32 %bf.load120, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %59)
  %60 = icmp eq i32 %59, 786432
  %bFirstMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 27
  %frombool134 = zext i1 %60 to i8
  %61 = ptrtoint ptr %bFirstMPDU to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool134, ptr %bFirstMPDU, align 1
  %TSFL = getelementptr inbounds %struct.rx_fwinfo, ptr %add.ptr, i32 0, i32 1
  %62 = ptrtoint ptr %TSFL to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %TSFL, align 4
  %TimeStampLow = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 20
  %64 = ptrtoint ptr %TimeStampLow to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %TimeStampLow, align 4
  %call135 = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 780) #7
  %TimeStampHigh = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 21
  %65 = ptrtoint ptr %TimeStampHigh to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call135, ptr %TimeStampHigh, align 8
  tail call void @rtl92e_update_rx_pkt_timestamp(ptr noundef %dev, ptr noundef %stats) #7
  %66 = ptrtoint ptr %RxBufShift to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %RxBufShift, align 1
  %conv137 = zext i8 %67 to i32
  %68 = ptrtoint ptr %RxDrvInfoSize73 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %RxDrvInfoSize73, align 2
  %conv139 = zext i8 %69 to i32
  %add = sub nsw i32 0, %conv139
  call void @__sanitizer_cov_trace_cmp4(i32 %conv137, i32 %add)
  %cmp140.not = icmp eq i32 %conv137, %add
  br i1 %cmp140.not, label %_rtl92e_update_received_rate_histogram_stats.exit.if.end144_crit_edge, label %if.then142

_rtl92e_update_received_rate_histogram_stats.exit.if.end144_crit_edge: ; preds = %_rtl92e_update_received_rate_histogram_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then142:                                       ; preds = %_rtl92e_update_received_rate_histogram_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bShift143 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 22
  %70 = ptrtoint ptr %bShift143 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %bShift143, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %_rtl92e_update_received_rate_histogram_stats.exit.if.end144_crit_edge
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load145 = load i32, ptr %add.ptr, align 4
  %RxIs40MHzPacket = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 29
  %72 = trunc i32 %bf.load145 to i8
  %73 = lshr i8 %72, 7
  %74 = ptrtoint ptr %RxIs40MHzPacket to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %RxIs40MHzPacket, align 1
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 %conv139
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv137
  %77 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %add.ptr2.i, align 1
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #7
  %conv3.i = zext i16 %79 to i32
  %and.i273 = and i16 %79, 12
  %addr1.i = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %add.ptr2.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %and.i273)
  %cmp.not.i = icmp eq i16 %and.i273, 4
  br i1 %cmp.not.i, label %if.end144.if.end55.i_crit_edge, label %land.lhs.true.i

if.end144.if.end55.i_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.end144
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %80 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rtllib.i, align 8
  %current_network.i = getelementptr inbounds %struct.rtllib_device, ptr %81, i32 0, i32 89
  %and9.i = and i32 %conv3.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i274 = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i274, label %cond.false.i, label %land.lhs.true.i.cond.end19.i_crit_edge

land.lhs.true.i.cond.end19.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end19.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  %and13.i = and i32 %conv3.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %cond.false17.i, label %cond.true15.i

cond.true15.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr2.i = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %add.ptr2.i, i32 0, i32 3
  br label %cond.end19.i

cond.false17.i:                                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr3.i = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %add.ptr2.i, i32 0, i32 4
  br label %cond.end19.i

cond.end19.i:                                     ; preds = %cond.false17.i, %cond.true15.i, %land.lhs.true.i.cond.end19.i_crit_edge
  %cond20.i = phi ptr [ %addr2.i, %cond.true15.i ], [ %addr3.i, %cond.false17.i ], [ %addr1.i, %land.lhs.true.i.cond.end19.i_crit_edge ]
  %82 = ptrtoint ptr %current_network.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %current_network.i, align 4
  %84 = ptrtoint ptr %cond20.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cond20.i, align 4
  %xor.i.i = xor i32 %85, %83
  %add.ptr.i.i = getelementptr %struct.rtllib_device, ptr %81, i32 0, i32 89, i32 0, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %cond20.i, i32 4
  %88 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %89, %87
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true23.i, label %cond.end19.i.if.end55.i_crit_edge

cond.end19.i.if.end55.i_crit_edge:                ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

land.lhs.true23.i:                                ; preds = %cond.end19.i
  %90 = ptrtoint ptr %bICV to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i275 = load i8, ptr %bICV, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i275)
  %91 = icmp ult i8 %bf.load.i275, 32
  br i1 %91, label %if.end50.i, label %land.lhs.true23.i.if.end55.i_crit_edge

land.lhs.true23.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.end50.i:                                       ; preds = %land.lhs.true23.i
  %dev39.i = getelementptr inbounds %struct.rtllib_device, ptr %81, i32 0, i32 1
  %92 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev39.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 86
  %94 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_addr.i, align 64
  %96 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr1.i, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %95, align 4
  %xor.i1.i = xor i32 %99, %97
  %add.ptr.i2.i = getelementptr i8, ptr %addr1.i, i32 4
  %100 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr.i2.i, align 2
  %add.ptr1.i3.i = getelementptr i8, ptr %95, i32 4
  %102 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr1.i3.i, align 2
  %xor37.i4.i = xor i16 %103, %101
  %xor3.i5.i = zext i16 %xor37.i4.i to i32
  %or.i6.i = or i32 %xor.i1.i, %xor3.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i6.i)
  %cmp.i7.i = icmp eq i32 %or.i6.i, 0
  %numpacket_matchbssid.i = getelementptr i8, ptr %dev, i32 33312
  %104 = ptrtoint ptr %numpacket_matchbssid.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %numpacket_matchbssid.i, align 4
  %inc.i276 = add i32 %105, 1
  store i32 %inc.i276, ptr %numpacket_matchbssid.i, align 4
  br i1 %cmp.i7.i, label %if.then52.i, label %if.end50.i.if.end55.i_crit_edge

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %numpacket_toself.i = getelementptr i8, ptr %dev, i32 33316
  %106 = ptrtoint ptr %numpacket_toself.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %numpacket_toself.i, align 8
  %inc54.i = add i32 %107, 1
  store i32 %inc54.i, ptr %numpacket_toself.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end50.i.if.end55.i_crit_edge, %land.lhs.true23.i.if.end55.i_crit_edge, %cond.end19.i.if.end55.i_crit_edge, %if.end144.if.end55.i_crit_edge
  %108 = phi i1 [ true, %if.then52.i ], [ true, %if.end50.i.if.end55.i_crit_edge ], [ false, %if.end144.if.end55.i_crit_edge ], [ false, %cond.end19.i.if.end55.i_crit_edge ], [ false, %land.lhs.true23.i.if.end55.i_crit_edge ]
  %109 = phi i1 [ true, %if.then52.i ], [ false, %if.end50.i.if.end55.i_crit_edge ], [ false, %if.end144.if.end55.i_crit_edge ], [ false, %cond.end19.i.if.end55.i_crit_edge ], [ false, %land.lhs.true23.i.if.end55.i_crit_edge ]
  %cmp462426.in.i = and i32 %conv3.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cmp462426.in.i)
  %cmp462426.i = icmp eq i32 %cmp462426.in.i, 128
  %seq_ctl.i.i = getelementptr inbounds %struct.rtllib_hdr_3addr, ptr %add.ptr2.i, i32 0, i32 5
  %110 = ptrtoint ptr %seq_ctl.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %seq_ctl.i.i, align 1
  %112 = and i16 %111, -3841
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #7
  %114 = lshr exact i16 %113, 4
  %Seq_Num.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 42
  %115 = ptrtoint ptr %Seq_Num.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %Seq_Num.i.i, align 4
  %116 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 26), align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i = icmp eq i8 %116, 0
  %117 = load i32, ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, align 4
  %inc.i.i = add i32 %117, 1
  store i32 %inc.i.i, ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %117)
  %cmp.i8.i = icmp ugt i32 %117, 99
  br i1 %cmp.i8.i, label %if.then3.i.i, label %if.end55.i.if.end5.i.i_crit_edge

if.end55.i.if.end5.i.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 100, ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, align 4
  %118 = load i32, ptr @_rtl92e_process_phyinfo.slide_rssi_index, align 4
  %arrayidx.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 35, i32 %118
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i, align 4
  %slide_rssi_total.i.i = getelementptr i8, ptr %dev, i32 34232
  %121 = ptrtoint ptr %slide_rssi_total.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %slide_rssi_total.i.i, align 4
  %sub.i.i = sub i32 %122, %120
  store i32 %sub.i.i, ptr %slide_rssi_total.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end55.i.if.end5.i.i_crit_edge
  %123 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 17), align 1
  %conv6.i.i = zext i8 %123 to i32
  %slide_rssi_total8.i.i = getelementptr i8, ptr %dev, i32 34232
  %124 = ptrtoint ptr %slide_rssi_total8.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %slide_rssi_total8.i.i, align 4
  %add.i.i = add i32 %125, %conv6.i.i
  store i32 %add.i.i, ptr %slide_rssi_total8.i.i, align 4
  %126 = load i32, ptr @_rtl92e_process_phyinfo.slide_rssi_index, align 4
  %inc13.i.i = add i32 %126, 1
  store i32 %inc13.i.i, ptr @_rtl92e_process_phyinfo.slide_rssi_index, align 4
  %arrayidx14.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 35, i32 %126
  %127 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv6.i.i, ptr %arrayidx14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc13.i.i)
  %cmp15.i.i = icmp ugt i32 %inc13.i.i, 99
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.end5.i.i.if.end18.i.i_crit_edge

if.end5.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @_rtl92e_process_phyinfo.slide_rssi_index, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %if.end5.i.i.if.end18.i.i_crit_edge
  %128 = ptrtoint ptr %slide_rssi_total8.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %slide_rssi_total8.i.i, align 4
  %130 = load i32, ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, align 4
  %div.i.i = udiv i32 %129, %130
  %conv21.i.i = trunc i32 %div.i.i to i8
  %call.i.i = tail call i32 @rtl92e_translate_to_dbm(ptr noundef %priv.i, i8 noundef zeroext %conv21.i.i) #7
  %signal_strength.i.i = getelementptr i8, ptr %dev, i32 34240
  %131 = ptrtoint ptr %signal_strength.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call.i.i, ptr %signal_strength.i.i, align 4
  %conv25.i.i = trunc i32 %call.i.i to i8
  %rssi.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 1
  %132 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv25.i.i, ptr %rssi.i.i, align 8
  %133 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 33), align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool26.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end31.i.i

if.then27.i.i:                                    ; preds = %if.end18.i.i
  %134 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 41), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool28.not.i.i = icmp eq i8 %134, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i, true
  %brmerge.i.i = select i1 %tobool28.not.i.i, i1 true, i1 %tobool.not.not.i.i
  br i1 %brmerge.i.i, label %if.then27.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, label %if.then27.i.i.if.end34.i.i_crit_edge

if.then27.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.then27.i.i._rtl92e_process_phyinfo.exit.i_crit_edge: ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_process_phyinfo.exit.i

if.end31.i.i:                                     ; preds = %if.end18.i.i
  br i1 %tobool.not.i.i, label %if.end31.i.i.if.end34.i.i_crit_edge, label %if.end31.i.i._rtl92e_process_phyinfo.exit.i_crit_edge

if.end31.i.i._rtl92e_process_phyinfo.exit.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_process_phyinfo.exit.i

if.end31.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.end31.i.i.if.end34.i.i_crit_edge, %if.then27.i.i.if.end34.i.i_crit_edge
  %num_process_phyinfo.i.i = getelementptr i8, ptr %dev, i32 33320
  %135 = ptrtoint ptr %num_process_phyinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_process_phyinfo.i.i, align 4
  %inc36.i.i = add i32 %136, 1
  store i32 %inc36.i.i, ptr %num_process_phyinfo.i.i, align 4
  %137 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 34), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool37.not.i.i = icmp eq i8 %137, 0
  br i1 %tobool37.not.i.i, label %land.lhs.true.i.i, label %if.end34.i.i.if.end149.i.i_crit_edge

if.end34.i.i.if.end149.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i.i

land.lhs.true.i.i:                                ; preds = %if.end34.i.i
  %138 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 35), align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool38.not.i.i = icmp eq i8 %138, 0
  br i1 %tobool38.not.i.i, label %land.lhs.true.i.i.if.end149.i.i_crit_edge, label %for.cond.preheader.i.i

land.lhs.true.i.i.if.end149.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i.i

for.cond.preheader.i.i:                           ; preds = %land.lhs.true.i.i
  %rtllib.i.i = getelementptr i8, ptr %dev, i32 31316
  %139 = ptrtoint ptr %rtllib.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rtllib.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.rtllib_device, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i, align 4
  %call45.i.i = tail call zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef %142, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call45.i.i)
  %tobool46.not.i.i = icmp eq i8 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %for.cond.preheader.i.i.for.inc.i.i_crit_edge, label %do.body.i.i

for.cond.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %for.cond.preheader.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %143 = load i32, ptr @rt_global_debug_component, align 4
  %and49.i.i = and i32 %143, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %do.body.i.i.do.end58.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end58.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %144 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 0), align 8
  %conv54.i.i = zext i8 %144 to i32
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %conv54.i.i) #10
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end58.i.i_crit_edge
  %arrayidx61.i.i = getelementptr i8, ptr %dev, i32 34256
  %145 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx61.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp63.i.i = icmp eq i8 %146, 0
  br i1 %cmp63.i.i, label %if.then65.i.i, label %do.end58.i.i.if.end73.i.i_crit_edge

do.end58.i.i.if.end73.i.i_crit_edge:              ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i.i

if.then65.i.i:                                    ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 0), align 8
  %148 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx61.i.i, align 1
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.then65.i.i, %do.end58.i.i.if.end73.i.i_crit_edge
  %149 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 0), align 8
  %conv77.i.i = zext i8 %149 to i16
  %150 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx61.i.i, align 1
  %conv82.i.i = zext i8 %151 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %149, i8 %151)
  %cmp83.i.i = icmp ugt i8 %149, %151
  %mul.i.i = mul nuw nsw i16 %conv82.i.i, 19
  %add95.i.i = add nuw nsw i16 %mul.i.i, %conv77.i.i
  %div963.i.i = udiv i16 %add95.i.i, 20
  %div96.zext.i.i = trunc i16 %div963.i.i to i8
  %add107.i.i = zext i1 %cmp83.i.i to i8
  %storemerge1.in.i.i = add i8 %div96.zext.i.i, %add107.i.i
  %152 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %storemerge1.in.i.i, ptr %arrayidx61.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %153 = load i32, ptr @rt_global_debug_component, align 4
  %and132.i.i = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i.i)
  %tobool133.not.i.i = icmp eq i32 %and132.i.i, 0
  br i1 %tobool133.not.i.i, label %if.end73.i.i.for.inc.i.i_crit_edge, label %do.end137.i.i

if.end73.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end137.i.i:                                    ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv143.i.i = zext i8 %storemerge1.in.i.i to i32
  %call144.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %conv143.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end137.i.i, %if.end73.i.i.for.inc.i.i_crit_edge, %for.cond.preheader.i.i.for.inc.i.i_crit_edge
  %154 = ptrtoint ptr %rtllib.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rtllib.i.i, align 8
  %dev.1.i.i = getelementptr inbounds %struct.rtllib_device, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %dev.1.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.1.i.i, align 4
  %call45.1.i.i = tail call zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef %157, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call45.1.i.i)
  %tobool46.not.1.i.i = icmp eq i8 %call45.1.i.i, 0
  br i1 %tobool46.not.1.i.i, label %for.inc.i.i.if.end149.i.i_crit_edge, label %do.body.1.i.i

for.inc.i.i.if.end149.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i.i

do.body.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %158 = load i32, ptr @rt_global_debug_component, align 4
  %and49.1.i.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.1.i.i)
  %tobool50.not.1.i.i = icmp eq i32 %and49.1.i.i, 0
  br i1 %tobool50.not.1.i.i, label %do.body.1.i.i.do.end58.1.i.i_crit_edge, label %do.end.1.i.i

do.body.1.i.i.do.end58.1.i.i_crit_edge:           ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58.1.i.i

do.end.1.i.i:                                     ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 1), align 1
  %conv54.1.i.i = zext i8 %159 to i32
  %call55.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %conv54.1.i.i) #10
  br label %do.end58.1.i.i

do.end58.1.i.i:                                   ; preds = %do.end.1.i.i, %do.body.1.i.i.do.end58.1.i.i_crit_edge
  %arrayidx61.1.i.i = getelementptr i8, ptr %dev, i32 34257
  %160 = ptrtoint ptr %arrayidx61.1.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx61.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp63.1.i.i = icmp eq i8 %161, 0
  br i1 %cmp63.1.i.i, label %if.then65.1.i.i, label %do.end58.1.i.i.if.end73.1.i.i_crit_edge

do.end58.1.i.i.if.end73.1.i.i_crit_edge:          ; preds = %do.end58.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.1.i.i

if.then65.1.i.i:                                  ; preds = %do.end58.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %162 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 1), align 1
  %163 = ptrtoint ptr %arrayidx61.1.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx61.1.i.i, align 1
  br label %if.end73.1.i.i

if.end73.1.i.i:                                   ; preds = %if.then65.1.i.i, %do.end58.1.i.i.if.end73.1.i.i_crit_edge
  %164 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 1), align 1
  %conv77.1.i.i = zext i8 %164 to i16
  %165 = ptrtoint ptr %arrayidx61.1.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx61.1.i.i, align 1
  %conv82.1.i.i = zext i8 %166 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %166)
  %cmp83.1.i.i = icmp ugt i8 %164, %166
  %mul.1.i.i = mul nuw nsw i16 %conv82.1.i.i, 19
  %add95.1.i.i = add nuw nsw i16 %mul.1.i.i, %conv77.1.i.i
  %div963.1.i.i = udiv i16 %add95.1.i.i, 20
  %div96.zext.1.i.i = trunc i16 %div963.1.i.i to i8
  %add107.1.i.i = zext i1 %cmp83.1.i.i to i8
  %storemerge1.in.1.i.i = add i8 %div96.zext.1.i.i, %add107.1.i.i
  %167 = ptrtoint ptr %arrayidx61.1.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %storemerge1.in.1.i.i, ptr %arrayidx61.1.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %168 = load i32, ptr @rt_global_debug_component, align 4
  %and132.1.i.i = and i32 %168, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.1.i.i)
  %tobool133.not.1.i.i = icmp eq i32 %and132.1.i.i, 0
  br i1 %tobool133.not.1.i.i, label %if.end73.1.i.i.if.end149.i.i_crit_edge, label %do.end137.1.i.i

if.end73.1.i.i.if.end149.i.i_crit_edge:           ; preds = %if.end73.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i.i

do.end137.1.i.i:                                  ; preds = %if.end73.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv143.1.i.i = zext i8 %storemerge1.in.1.i.i to i32
  %call144.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %conv143.1.i.i) #10
  br label %if.end149.i.i

if.end149.i.i:                                    ; preds = %do.end137.1.i.i, %if.end73.1.i.i.if.end149.i.i_crit_edge, %for.inc.i.i.if.end149.i.i_crit_edge, %land.lhs.true.i.i.if.end149.i.i_crit_edge, %if.end34.i.i.if.end149.i.i_crit_edge
  %169 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 40), align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool150.not.i.i = icmp eq i8 %169, 0
  br i1 %tobool150.not.i.i, label %if.end149.i.i.do.body185.i.i_crit_edge, label %if.then151.i.i

if.end149.i.i.do.body185.i.i_crit_edge:           ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body185.i.i

if.then151.i.i:                                   ; preds = %if.end149.i.i
  %170 = load i32, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 4
  %inc152.i.i = add i32 %170, 1
  store i32 %inc152.i.i, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %170)
  %cmp153.i.i = icmp ugt i32 %170, 9
  br i1 %cmp153.i.i, label %if.then155.i.i, label %if.then151.i.i.if.end160.i.i_crit_edge

if.then151.i.i.if.end160.i.i_crit_edge:           ; preds = %if.then151.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160.i.i

if.then155.i.i:                                   ; preds = %if.then151.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 10, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 4
  %171 = load i32, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 4
  %arrayidx157.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 46, i32 %171
  %172 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx157.i.i, align 4
  %Slide_Beacon_Total.i.i = getelementptr i8, ptr %dev, i32 34680
  %174 = ptrtoint ptr %Slide_Beacon_Total.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %Slide_Beacon_Total.i.i, align 4
  %sub159.i.i = sub i32 %175, %173
  store i32 %sub159.i.i, ptr %Slide_Beacon_Total.i.i, align 4
  br label %if.end160.i.i

if.end160.i.i:                                    ; preds = %if.then155.i.i, %if.then151.i.i.if.end160.i.i_crit_edge
  %176 = load i32, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %Slide_Beacon_Total162.i.i = getelementptr i8, ptr %dev, i32 34680
  %177 = ptrtoint ptr %Slide_Beacon_Total162.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %Slide_Beacon_Total162.i.i, align 4
  %add163.i.i = add i32 %178, %176
  store i32 %add163.i.i, ptr %Slide_Beacon_Total162.i.i, align 4
  %179 = load i32, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 4
  %arrayidx167.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 46, i32 %179
  %180 = ptrtoint ptr %arrayidx167.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %176, ptr %arrayidx167.i.i, align 4
  %inc168.i.i = add i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc168.i.i)
  %cmp169.i.i = icmp ugt i32 %inc168.i.i, 9
  %spec.store.select.i.i = select i1 %cmp169.i.i, i32 0, i32 %inc168.i.i
  store i32 %spec.store.select.i.i, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 4
  %181 = ptrtoint ptr %Slide_Beacon_Total162.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %Slide_Beacon_Total162.i.i, align 4
  %183 = load i32, ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 4
  %div175.i.i = udiv i32 %182, %183
  store i32 %div175.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div175.i.i)
  %cmp178.i.i = icmp ugt i32 %div175.i.i, 2
  br i1 %cmp178.i.i, label %if.then180.i.i, label %if.end160.i.i.do.body185.i.i_crit_edge

if.end160.i.i.do.body185.i.i_crit_edge:           ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body185.i.i

if.then180.i.i:                                   ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub182.i.i = add i32 %div175.i.i, -3
  store i32 %sub182.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  br label %do.body185.i.i

do.body185.i.i:                                   ; preds = %if.then180.i.i, %if.end160.i.i.do.body185.i.i_crit_edge, %if.end149.i.i.do.body185.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %184 = load i32, ptr @rt_global_debug_component, align 4
  %and186.i.i = and i32 %184, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i.i)
  %tobool187.not.i.i = icmp eq i32 %and186.i.i, 0
  br i1 %tobool187.not.i.i, label %do.body185.i.i.do.end200.i.i_crit_edge, label %do.end191.i.i

do.body185.i.i.do.end200.i.i_crit_edge:           ; preds = %do.body185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end200.i.i

do.end191.i.i:                                    ; preds = %do.body185.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %185 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 34), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool194.not.i.i = icmp eq i8 %185, 0
  %cond.i.i = select i1 %tobool194.not.i.i, ptr @.str.184, ptr @.str.183
  %186 = load i32, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %call197.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull %cond.i.i, i32 noundef %186) #10
  br label %do.end200.i.i

do.end200.i.i:                                    ; preds = %do.end191.i.i, %do.body185.i.i.do.end200.i.i_crit_edge
  %187 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 35), align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool202.not.i.i = icmp eq i8 %187, 0
  br i1 %tobool202.not.i.i, label %lor.lhs.false.i.i, label %do.end200.i.i.if.then211.i.i_crit_edge

do.end200.i.i.if.then211.i.i_crit_edge:           ; preds = %do.end200.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211.i.i

lor.lhs.false.i.i:                                ; preds = %do.end200.i.i
  %188 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 40), align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool205.not.i.i = icmp eq i8 %188, 0
  br i1 %tobool205.not.i.i, label %lor.lhs.false207.i.i, label %lor.lhs.false.i.i.if.then211.i.i_crit_edge

lor.lhs.false.i.i.if.then211.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211.i.i

lor.lhs.false207.i.i:                             ; preds = %lor.lhs.false.i.i
  %189 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 41), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool209.not.i.i = icmp eq i8 %189, 0
  br i1 %tobool209.not.i.i, label %lor.lhs.false207.i.i.if.end240.i.i_crit_edge, label %lor.lhs.false207.i.i.if.then211.i.i_crit_edge

lor.lhs.false207.i.i.if.then211.i.i_crit_edge:    ; preds = %lor.lhs.false207.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211.i.i

lor.lhs.false207.i.i.if.end240.i.i_crit_edge:     ; preds = %lor.lhs.false207.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240.i.i

if.then211.i.i:                                   ; preds = %lor.lhs.false207.i.i.if.then211.i.i_crit_edge, %lor.lhs.false.i.i.if.then211.i.i_crit_edge, %do.end200.i.i.if.then211.i.i_crit_edge
  %undecorated_smoothed_pwdb.i.i = getelementptr i8, ptr %dev, i32 36028
  %190 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %undecorated_smoothed_pwdb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp212.i.i = icmp slt i32 %191, 0
  br i1 %cmp212.i.i, label %if.then214.i.i, label %if.then211.i.i.if.end217.i.i_crit_edge

if.then211.i.i.if.end217.i.i_crit_edge:           ; preds = %if.then211.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217.i.i

if.then214.i.i:                                   ; preds = %if.then211.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %192 = load i32, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %193 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %undecorated_smoothed_pwdb.i.i, align 8
  br label %if.end217.i.i

if.end217.i.i:                                    ; preds = %if.then214.i.i, %if.then211.i.i.if.end217.i.i_crit_edge
  %194 = load i32, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %195 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %undecorated_smoothed_pwdb.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %196)
  %cmp220.i.i = icmp ugt i32 %194, %196
  %mul224.i.i = mul i32 %196, 19
  %add226.i.i = add i32 %mul224.i.i, %194
  %div227.i.i = udiv i32 %add226.i.i, 20
  %add230.i.i = zext i1 %cmp220.i.i to i32
  %storemerge.i.i = add nuw nsw i32 %div227.i.i, %add230.i.i
  %197 = ptrtoint ptr %undecorated_smoothed_pwdb.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %storemerge.i.i, ptr %undecorated_smoothed_pwdb.i.i, align 8
  tail call void @rtl92e_update_rx_statistics(ptr noundef %priv.i, ptr noundef nonnull @_rtl92e_translate_rx_signal_stats.previous_stats) #7
  br label %if.end240.i.i

if.end240.i.i:                                    ; preds = %if.end217.i.i, %lor.lhs.false207.i.i.if.end240.i.i_crit_edge
  %198 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 14), align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp242.not.i.i = icmp eq i8 %198, 0
  br i1 %cmp242.not.i.i, label %if.end240.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, label %if.then244.i.i

if.end240.i.i._rtl92e_process_phyinfo.exit.i_crit_edge: ; preds = %if.end240.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_process_phyinfo.exit.i

if.then244.i.i:                                   ; preds = %if.end240.i.i
  %199 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 35), align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool246.not.i.i = icmp eq i8 %199, 0
  br i1 %tobool246.not.i.i, label %lor.lhs.false248.i.i, label %if.then244.i.i.if.then256.i.i_crit_edge

if.then244.i.i.if.then256.i.i_crit_edge:          ; preds = %if.then244.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then256.i.i

lor.lhs.false248.i.i:                             ; preds = %if.then244.i.i
  %200 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 40), align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool250.not.i.i = icmp eq i8 %200, 0
  br i1 %tobool250.not.i.i, label %lor.lhs.false252.i.i, label %lor.lhs.false248.i.i.if.then256.i.i_crit_edge

lor.lhs.false248.i.i.if.then256.i.i_crit_edge:    ; preds = %lor.lhs.false248.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then256.i.i

lor.lhs.false252.i.i:                             ; preds = %lor.lhs.false248.i.i
  %201 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 41), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool254.not.i.i = icmp eq i8 %201, 0
  br i1 %tobool254.not.i.i, label %lor.lhs.false252.i.i.if.end286.i.i_crit_edge, label %lor.lhs.false252.i.i.if.then256.i.i_crit_edge

lor.lhs.false252.i.i.if.then256.i.i_crit_edge:    ; preds = %lor.lhs.false252.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then256.i.i

lor.lhs.false252.i.i.if.end286.i.i_crit_edge:     ; preds = %lor.lhs.false252.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end286.i.i

if.then256.i.i:                                   ; preds = %lor.lhs.false252.i.i.if.then256.i.i_crit_edge, %lor.lhs.false248.i.i.if.then256.i.i_crit_edge, %if.then244.i.i.if.then256.i.i_crit_edge
  %202 = load i32, ptr @_rtl92e_process_phyinfo.slide_evm_statistics, align 4
  %inc257.i.i = add i32 %202, 1
  store i32 %inc257.i.i, ptr @_rtl92e_process_phyinfo.slide_evm_statistics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %202)
  %cmp258.i.i = icmp ugt i32 %202, 99
  br i1 %cmp258.i.i, label %if.then260.i.i, label %if.then256.i.i.if.end265.i.i_crit_edge

if.then256.i.i.if.end265.i.i_crit_edge:           ; preds = %if.then256.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end265.i.i

if.then260.i.i:                                   ; preds = %if.then256.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 100, ptr @_rtl92e_process_phyinfo.slide_evm_statistics, align 4
  %203 = load i32, ptr @_rtl92e_process_phyinfo.slide_evm_index, align 4
  %arrayidx262.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 36, i32 %203
  %204 = ptrtoint ptr %arrayidx262.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx262.i.i, align 4
  %slide_evm_total.i.i = getelementptr i8, ptr %dev, i32 34236
  %206 = ptrtoint ptr %slide_evm_total.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %slide_evm_total.i.i, align 8
  %sub264.i.i = sub i32 %207, %205
  store i32 %sub264.i.i, ptr %slide_evm_total.i.i, align 8
  br label %if.end265.i.i

if.end265.i.i:                                    ; preds = %if.then260.i.i, %if.then256.i.i.if.end265.i.i_crit_edge
  %conv267.i.i = zext i8 %198 to i32
  %slide_evm_total269.i.i = getelementptr i8, ptr %dev, i32 34236
  %208 = ptrtoint ptr %slide_evm_total269.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %slide_evm_total269.i.i, align 8
  %add270.i.i = add i32 %209, %conv267.i.i
  store i32 %add270.i.i, ptr %slide_evm_total269.i.i, align 8
  %210 = load i32, ptr @_rtl92e_process_phyinfo.slide_evm_index, align 4
  %inc275.i.i = add i32 %210, 1
  store i32 %inc275.i.i, ptr @_rtl92e_process_phyinfo.slide_evm_index, align 4
  %arrayidx276.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 36, i32 %210
  %211 = ptrtoint ptr %arrayidx276.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv267.i.i, ptr %arrayidx276.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %inc275.i.i)
  %cmp277.i.i = icmp ugt i32 %inc275.i.i, 99
  br i1 %cmp277.i.i, label %if.then279.i.i, label %if.end265.i.i.if.end280.i.i_crit_edge

if.end265.i.i.if.end280.i.i_crit_edge:            ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end280.i.i

if.then279.i.i:                                   ; preds = %if.end265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @_rtl92e_process_phyinfo.slide_evm_index, align 4
  br label %if.end280.i.i

if.end280.i.i:                                    ; preds = %if.then279.i.i, %if.end265.i.i.if.end280.i.i_crit_edge
  %212 = ptrtoint ptr %slide_evm_total269.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %slide_evm_total269.i.i, align 8
  %214 = load i32, ptr @_rtl92e_process_phyinfo.slide_evm_statistics, align 4
  %div283.i.i = udiv i32 %213, %214
  %signal_quality.i.i = getelementptr i8, ptr %dev, i32 34244
  %215 = ptrtoint ptr %signal_quality.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %div283.i.i, ptr %signal_quality.i.i, align 8
  %last_signal_strength_inpercent.i.i = getelementptr i8, ptr %dev, i32 34248
  %216 = ptrtoint ptr %last_signal_strength_inpercent.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %div283.i.i, ptr %last_signal_strength_inpercent.i.i, align 4
  br label %if.end286.i.i

if.end286.i.i:                                    ; preds = %if.end280.i.i, %lor.lhs.false252.i.i.if.end286.i.i_crit_edge
  %217 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 35), align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool288.not.i.i = icmp eq i8 %217, 0
  br i1 %tobool288.not.i.i, label %lor.lhs.false290.i.i, label %if.end286.i.i.if.then298.i.i_crit_edge

if.end286.i.i.if.then298.i.i_crit_edge:           ; preds = %if.end286.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then298.i.i

lor.lhs.false290.i.i:                             ; preds = %if.end286.i.i
  %218 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 40), align 2, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool292.not.i.i = icmp eq i8 %218, 0
  br i1 %tobool292.not.i.i, label %lor.lhs.false294.i.i, label %lor.lhs.false290.i.i.if.then298.i.i_crit_edge

lor.lhs.false290.i.i.if.then298.i.i_crit_edge:    ; preds = %lor.lhs.false290.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then298.i.i

lor.lhs.false294.i.i:                             ; preds = %lor.lhs.false290.i.i
  %219 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 41), align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool296.not.i.i = icmp eq i8 %219, 0
  br i1 %tobool296.not.i.i, label %lor.lhs.false294.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, label %lor.lhs.false294.i.i.if.then298.i.i_crit_edge

lor.lhs.false294.i.i.if.then298.i.i_crit_edge:    ; preds = %lor.lhs.false294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then298.i.i

lor.lhs.false294.i.i._rtl92e_process_phyinfo.exit.i_crit_edge: ; preds = %lor.lhs.false294.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_process_phyinfo.exit.i

if.then298.i.i:                                   ; preds = %lor.lhs.false294.i.i.if.then298.i.i_crit_edge, %lor.lhs.false290.i.i.if.then298.i.i_crit_edge, %if.end286.i.i.if.then298.i.i_crit_edge
  %220 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 0), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %220)
  %cmp305.not.i.i = icmp eq i8 %220, -1
  br i1 %cmp305.not.i.i, label %if.then298.i.i.for.inc335.i.i_crit_edge, label %if.then307.i.i

if.then298.i.i.for.inc335.i.i_crit_edge:          ; preds = %if.then298.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc335.i.i

if.then307.i.i:                                   ; preds = %if.then298.i.i
  %arrayidx309.i.i = getelementptr i8, ptr %dev, i32 34260
  %221 = ptrtoint ptr %arrayidx309.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx309.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %cmp311.i.i = icmp eq i8 %222, 0
  br i1 %cmp311.i.i, label %if.then313.i.i, label %if.then307.i.i.if.end319.i.i_crit_edge

if.then307.i.i.if.end319.i.i_crit_edge:           ; preds = %if.then307.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319.i.i

if.then313.i.i:                                   ; preds = %if.then307.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %arrayidx309.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %220, ptr %arrayidx309.i.i, align 1
  br label %if.end319.i.i

if.end319.i.i:                                    ; preds = %if.then313.i.i, %if.then307.i.i.if.end319.i.i_crit_edge
  %224 = ptrtoint ptr %arrayidx309.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx309.i.i, align 1
  %conv323.i.i = zext i8 %225 to i16
  %mul324.i.i = mul nuw nsw i16 %conv323.i.i, 19
  %226 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 0), align 4
  %conv327.i.i = sext i8 %226 to i16
  %add328.i.i = add nsw i16 %mul324.i.i, %conv327.i.i
  %div3292.i.i = sdiv i16 %add328.i.i, 20
  %conv330.i.i = trunc i16 %div3292.i.i to i8
  store i8 %conv330.i.i, ptr %arrayidx309.i.i, align 1
  br label %for.inc335.i.i

for.inc335.i.i:                                   ; preds = %if.end319.i.i, %if.then298.i.i.for.inc335.i.i_crit_edge
  %227 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %227)
  %cmp305.not.1.i.i = icmp eq i8 %227, -1
  br i1 %cmp305.not.1.i.i, label %for.inc335.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, label %if.then307.1.i.i

for.inc335.i.i._rtl92e_process_phyinfo.exit.i_crit_edge: ; preds = %for.inc335.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_process_phyinfo.exit.i

if.then307.1.i.i:                                 ; preds = %for.inc335.i.i
  %arrayidx309.1.i.i = getelementptr i8, ptr %dev, i32 34261
  %228 = ptrtoint ptr %arrayidx309.1.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx309.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %cmp311.1.i.i = icmp eq i8 %229, 0
  br i1 %cmp311.1.i.i, label %if.then313.1.i.i, label %if.then307.1.i.i.if.end319.1.i.i_crit_edge

if.then307.1.i.i.if.end319.1.i.i_crit_edge:       ; preds = %if.then307.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end319.1.i.i

if.then313.1.i.i:                                 ; preds = %if.then307.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %arrayidx309.1.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %227, ptr %arrayidx309.1.i.i, align 1
  br label %if.end319.1.i.i

if.end319.1.i.i:                                  ; preds = %if.then313.1.i.i, %if.then307.1.i.i.if.end319.1.i.i_crit_edge
  %231 = ptrtoint ptr %arrayidx309.1.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx309.1.i.i, align 1
  %conv323.1.i.i = zext i8 %232 to i16
  %mul324.1.i.i = mul nuw nsw i16 %conv323.1.i.i, 19
  %233 = load i8, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 1), align 1
  %conv327.1.i.i = sext i8 %233 to i16
  %add328.1.i.i = add nsw i16 %mul324.1.i.i, %conv327.1.i.i
  %div3292.1.i.i = sdiv i16 %add328.1.i.i, 20
  %conv330.1.i.i = trunc i16 %div3292.1.i.i to i8
  store i8 %conv330.1.i.i, ptr %arrayidx309.1.i.i, align 1
  br label %_rtl92e_process_phyinfo.exit.i

_rtl92e_process_phyinfo.exit.i:                   ; preds = %if.end319.1.i.i, %for.inc335.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, %lor.lhs.false294.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, %if.end240.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, %if.end31.i.i._rtl92e_process_phyinfo.exit.i_crit_edge, %if.then27.i.i._rtl92e_process_phyinfo.exit.i_crit_edge
  %frombool.i.i = zext i1 %108 to i8
  %frombool1.i.i = zext i1 %109 to i8
  %frombool2.i.i = zext i1 %cmp462426.i to i8
  %numqry_phystatus.i.i = getelementptr i8, ptr %dev, i32 33324
  %234 = ptrtoint ptr %numqry_phystatus.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %numqry_phystatus.i.i, align 8
  %inc.i9.i = add i32 %235, 1
  store i32 %inc.i9.i, ptr %numqry_phystatus.i.i, align 8
  %236 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %236)
  %bf.load.i.i = load i32, ptr %add.ptr, align 4
  %237 = and i32 %bf.load.i.i, 63744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %238 = icmp eq i32 %237, 0
  %239 = call ptr @memset(ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 96)
  store i8 %frombool.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 33), align 2
  %bPacketMatchBSSID35.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 33
  %240 = ptrtoint ptr %bPacketMatchBSSID35.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %frombool.i.i, ptr %bPacketMatchBSSID35.i.i, align 2
  store i8 %frombool1.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 35), align 8
  %bPacketToSelf39.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 35
  %241 = ptrtoint ptr %bPacketToSelf39.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %frombool1.i.i, ptr %bPacketToSelf39.i.i, align 8
  %frombool42.i.i = zext i1 %238 to i8
  store i8 %frombool42.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 34), align 1
  %bIsCCK43.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 34
  %242 = ptrtoint ptr %bIsCCK43.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %frombool42.i.i, ptr %bIsCCK43.i.i, align 1
  store i8 %frombool2.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 40), align 2
  %bPacketBeacon48.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 40
  %243 = ptrtoint ptr %bPacketBeacon48.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %frombool2.i.i, ptr %bPacketBeacon48.i.i, align 2
  store i8 0, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 41), align 1
  %bToSelfBA53.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 41
  %244 = ptrtoint ptr %bToSelfBA53.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %bToSelfBA53.i.i, align 1
  %.b.i.i = load i1, ptr @_rtl92e_query_rxphystatus.check_reg824, align 1
  br i1 %.b.i.i, label %_rtl92e_process_phyinfo.exit.i.if.end.i.i_crit_edge, label %if.then.i.i

_rtl92e_process_phyinfo.exit.i.if.end.i.i_crit_edge: ; preds = %_rtl92e_process_phyinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %_rtl92e_process_phyinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rtllib.i10.i = getelementptr i8, ptr %dev, i32 31316
  %245 = ptrtoint ptr %rtllib.i10.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rtllib.i10.i, align 8
  %dev.i11.i = getelementptr inbounds %struct.rtllib_device, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i11.i, align 4
  %call.i12.i = tail call i32 @rtl92e_get_bb_reg(ptr noundef %248, i32 noundef 2084, i32 noundef 512) #7
  store i32 %call.i12.i, ptr @_rtl92e_query_rxphystatus.reg824_bit9, align 4
  store i1 true, ptr @_rtl92e_query_rxphystatus.check_reg824, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %_rtl92e_process_phyinfo.exit.i.if.end.i.i_crit_edge
  %RxMIMOSignalQuality.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 32
  %249 = ptrtoint ptr %RxMIMOSignalQuality.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 -1, ptr %RxMIMOSignalQuality.i.i, align 4
  %arrayidx59.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 32, i32 1
  %250 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 -1, ptr %arrayidx59.i.i, align 1
  store i8 -1, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32), align 4
  store i8 -1, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 1), align 1
  br i1 %238, label %if.then65.i13.i, label %if.else173.i.i

if.then65.i13.i:                                  ; preds = %if.end.i.i
  %numqry_phystatusCCK.i.i = getelementptr i8, ptr %dev, i32 33328
  %251 = ptrtoint ptr %numqry_phystatusCCK.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %numqry_phystatusCCK.i.i, align 4
  %inc67.i.i = add i32 %252, 1
  store i32 %inc67.i.i, ptr %numqry_phystatusCCK.i.i, align 4
  %253 = load i32, ptr @_rtl92e_query_rxphystatus.reg824_bit9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool68.not.i.i = icmp eq i32 %253, 0
  %cck_agc_rpt.i.i = getelementptr i8, ptr %add.ptr, i32 13
  %254 = ptrtoint ptr %cck_agc_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %cck_agc_rpt.i.i, align 1
  br i1 %tobool68.not.i.i, label %if.then69.i.i, label %if.else.i.i

if.then69.i.i:                                    ; preds = %if.then65.i13.i
  %256 = lshr i8 %255, 6
  %conv74.i.i = zext i8 %256 to i32
  %257 = zext i32 %conv74.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %conv74.i.i, label %if.then69.unreachabledefault.i.i [
    i32 3, label %if.then69.i.i.if.end133.i.i_crit_edge
    i32 2, label %sw.bb79.i.i
    i32 1, label %sw.bb85.i.i
    i32 0, label %sw.bb91.i.i
  ]

if.then69.i.i.if.end133.i.i_crit_edge:            ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i.i

sw.bb79.i.i:                                      ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i.i

sw.bb85.i.i:                                      ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i.i

sw.bb91.i.i:                                      ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i.i

if.else.i.i:                                      ; preds = %if.then65.i13.i
  %and99.i.i = lshr i8 %255, 5
  %258 = and i8 %and99.i.i, 3
  %conv104.i.i = zext i8 %258 to i32
  %259 = zext i32 %conv104.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %conv104.i.i, label %if.else.unreachabledefault.i.i [
    i32 3, label %sw.bb105.i.i
    i32 2, label %sw.bb111.i.i
    i32 1, label %sw.bb118.i.i
    i32 0, label %sw.bb125.i.i
  ]

sw.bb105.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %260 = shl i8 %255, 1
  br label %if.end133.i.i

sw.bb111.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and114.i.i = shl i8 %255, 1
  br label %if.end133.i.i

sw.bb118.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and121.i.i = shl i8 %255, 1
  br label %if.end133.i.i

sw.bb125.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and128.i.i = shl i8 %255, 1
  br label %if.end133.i.i

if.then69.unreachabledefault.i.i:                 ; preds = %if.then69.i.i
  unreachable

if.else.unreachabledefault.i.i:                   ; preds = %if.else.i.i
  unreachable

if.end133.i.i:                                    ; preds = %sw.bb125.i.i, %sw.bb118.i.i, %sw.bb111.i.i, %sw.bb105.i.i, %sw.bb91.i.i, %sw.bb85.i.i, %sw.bb79.i.i, %if.then69.i.i.if.end133.i.i_crit_edge
  %.sink48.i.i = phi i8 [ %260, %sw.bb105.i.i ], [ %and114.i.i, %sw.bb111.i.i ], [ %and121.i.i, %sw.bb118.i.i ], [ %and128.i.i, %sw.bb125.i.i ], [ %255, %sw.bb79.i.i ], [ %255, %sw.bb85.i.i ], [ %255, %sw.bb91.i.i ], [ %255, %if.then69.i.i.if.end133.i.i_crit_edge ]
  %.sink.i.i = phi i8 [ -35, %sw.bb105.i.i ], [ -23, %sw.bb111.i.i ], [ -11, %sw.bb118.i.i ], [ -8, %sw.bb125.i.i ], [ -23, %sw.bb79.i.i ], [ -11, %sw.bb85.i.i ], [ 8, %sw.bb91.i.i ], [ -35, %if.then69.i.i.if.end133.i.i_crit_edge ]
  %261 = and i8 %.sink48.i.i, 62
  %sub109.i.i = sub nsw i8 %.sink.i.i, %261
  %call134.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub109.i.i) #7
  %conv135.i.i = zext i8 %call134.i.i to i32
  store i32 %conv135.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %RxPWDBAll136.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 30
  %262 = ptrtoint ptr %RxPWDBAll136.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %conv135.i.i, ptr %RxPWDBAll136.i.i, align 4
  %conv137.i.i = sext i8 %sub109.i.i to i32
  %RecvSignalPower.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 15
  %263 = ptrtoint ptr %RecvSignalPower.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %conv137.i.i, ptr %RecvSignalPower.i.i, align 4
  br i1 %108, label %if.then139.i.i, label %if.end133.i.i.if.then326.i.i_crit_edge

if.end133.i.i.if.then326.i.i_crit_edge:           ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then326.i.i

if.then139.i.i:                                   ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %call134.i.i)
  %cmp141.i.i = icmp ugt i8 %call134.i.i, 40
  br i1 %cmp141.i.i, label %if.then139.i.i.if.end162.i.i_crit_edge, label %if.else144.i.i

if.then139.i.i.if.end162.i.i_crit_edge:           ; preds = %if.then139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162.i.i

if.else144.i.i:                                   ; preds = %if.then139.i.i
  %sq_rpt.i.i = getelementptr i8, ptr %add.ptr, i32 12
  %264 = ptrtoint ptr %sq_rpt.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %sq_rpt.i.i, align 1
  %conv146.i.i = zext i8 %265 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %265)
  %cmp147.i.i = icmp ugt i8 %265, 64
  br i1 %cmp147.i.i, label %if.else144.i.i.if.end162.i.i_crit_edge, label %if.else150.i.i

if.else144.i.i.if.end162.i.i_crit_edge:           ; preds = %if.else144.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162.i.i

if.else150.i.i:                                   ; preds = %if.else144.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %265)
  %cmp153.i14.i = icmp ult i8 %265, 20
  br i1 %cmp153.i14.i, label %if.else150.i.i.if.end162.i.i_crit_edge, label %if.else156.i.i

if.else150.i.i.if.end162.i.i_crit_edge:           ; preds = %if.else150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162.i.i

if.else156.i.i:                                   ; preds = %if.else150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub158.i.i = sub nsw i16 64, %conv146.i.i
  %mul.i15.i = mul nsw i16 %sub158.i.i, 100
  %div36.i.i = sdiv i16 %mul.i15.i, 44
  %conv159.i.i = trunc i16 %div36.i.i to i8
  br label %if.end162.i.i

if.end162.i.i:                                    ; preds = %if.else156.i.i, %if.else150.i.i.if.end162.i.i_crit_edge, %if.else144.i.i.if.end162.i.i_crit_edge, %if.then139.i.i.if.end162.i.i_crit_edge
  %sq.0.i.i = phi i8 [ %conv159.i.i, %if.else156.i.i ], [ 100, %if.then139.i.i.if.end162.i.i_crit_edge ], [ 0, %if.else144.i.i.if.end162.i.i_crit_edge ], [ 100, %if.else150.i.i.if.end162.i.i_crit_edge ]
  %SignalQuality.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 14
  %266 = ptrtoint ptr %SignalQuality.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %sq.0.i.i, ptr %SignalQuality.i.i, align 8
  store i8 %sq.0.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 14), align 8
  %267 = ptrtoint ptr %RxMIMOSignalQuality.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %sq.0.i.i, ptr %RxMIMOSignalQuality.i.i, align 4
  store i8 %sq.0.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32), align 4
  %268 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 -1, ptr %arrayidx59.i.i, align 1
  store i8 -1, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 1), align 1
  br label %if.then326.i.i

if.else173.i.i:                                   ; preds = %if.end.i.i
  %add.ptr.i16.i = getelementptr i8, ptr %add.ptr, i32 8
  %numqry_phystatusHT.i.i = getelementptr i8, ptr %dev, i32 33332
  %269 = ptrtoint ptr %numqry_phystatusHT.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %numqry_phystatusHT.i.i, align 8
  %inc175.i.i = add i32 %270, 1
  store i32 %inc175.i.i, ptr %numqry_phystatusHT.i.i, align 8
  %rxsnr_X.i.i = getelementptr i8, ptr %add.ptr, i32 23
  %arrayidx179.i.i = getelementptr i8, ptr %dev, i32 35997
  %271 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx179.i.i, align 1, !range !325
  %273 = ptrtoint ptr %add.ptr.i16.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %add.ptr.i16.i, align 1
  %275 = shl i8 %274, 1
  %276 = and i8 %275, 126
  %sub189.i.i = add nsw i8 %276, -110
  %277 = ptrtoint ptr %rxsnr_X.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %rxsnr_X.i.i, align 1
  %279 = sdiv i8 %278, 2
  %conv198.i.i = sext i8 %279 to i32
  %arrayidx201.i.i = getelementptr i8, ptr %dev, i32 34264
  %280 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %conv198.i.i, ptr %arrayidx201.i.i, align 4
  %call204.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub189.i.i) #7
  %281 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx179.i.i, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool209.not.i17.i = icmp eq i8 %282, 0
  %narrow37.i.i = select i1 %tobool209.not.i17.i, i8 0, i8 %call204.i.i
  %add.i18.i = zext i8 %narrow37.i.i to i32
  br i1 %108, label %if.then213.i.i, label %if.else173.i.i.for.inc.i19.i_crit_edge

if.else173.i.i.for.inc.i19.i_crit_edge:           ; preds = %if.else173.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i19.i

if.then213.i.i:                                   ; preds = %if.else173.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx216.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 31, i32 0
  %283 = ptrtoint ptr %arrayidx216.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %call204.i.i, ptr %arrayidx216.i.i, align 1
  store i8 %call204.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 0), align 8
  br label %for.inc.i19.i

for.inc.i19.i:                                    ; preds = %if.then213.i.i, %if.else173.i.i.for.inc.i19.i_crit_edge
  %arrayidx179.1.i.i = getelementptr i8, ptr %dev, i32 35998
  %284 = ptrtoint ptr %arrayidx179.1.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx179.1.i.i, align 1, !range !325
  %spec.select.1.i.i = add nuw nsw i8 %285, %272
  %arrayidx185.1.i.i = getelementptr i8, ptr %add.ptr, i32 9
  %286 = ptrtoint ptr %arrayidx185.1.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx185.1.i.i, align 1
  %288 = shl i8 %287, 1
  %289 = and i8 %288, 126
  %sub189.1.i.i = add nsw i8 %289, -110
  %arrayidx194.1.i.i = getelementptr i8, ptr %add.ptr, i32 24
  %290 = ptrtoint ptr %arrayidx194.1.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx194.1.i.i, align 1
  %292 = sdiv i8 %291, 2
  %conv198.1.i.i = sext i8 %292 to i32
  %arrayidx201.1.i.i = getelementptr i8, ptr %dev, i32 34268
  %293 = ptrtoint ptr %arrayidx201.1.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %conv198.1.i.i, ptr %arrayidx201.1.i.i, align 4
  %call204.1.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub189.1.i.i) #7
  %294 = ptrtoint ptr %arrayidx179.1.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx179.1.i.i, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool209.not.1.i.i = icmp eq i8 %295, 0
  %narrow37.1.i.i = select i1 %tobool209.not.1.i.i, i8 0, i8 %call204.1.i.i
  %add.1.i.i = zext i8 %narrow37.1.i.i to i32
  %total_rssi.1.1.i.i = add nuw nsw i32 %add.1.i.i, %add.i18.i
  br i1 %108, label %if.then213.1.i.i, label %for.inc.i19.i.for.inc.1.i.i_crit_edge

for.inc.i19.i.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then213.1.i.i:                                 ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx216.1.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 31, i32 1
  %296 = ptrtoint ptr %arrayidx216.1.i.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %call204.1.i.i, ptr %arrayidx216.1.i.i, align 1
  store i8 %call204.1.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 1), align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then213.1.i.i, %for.inc.i19.i.for.inc.1.i.i_crit_edge
  %arrayidx179.2.i.i = getelementptr i8, ptr %dev, i32 35999
  %297 = ptrtoint ptr %arrayidx179.2.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx179.2.i.i, align 1, !range !325
  %spec.select.2.i.i = add nuw nsw i8 %spec.select.1.i.i, %298
  %arrayidx185.2.i.i = getelementptr i8, ptr %add.ptr, i32 10
  %299 = ptrtoint ptr %arrayidx185.2.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx185.2.i.i, align 1
  %301 = shl i8 %300, 1
  %302 = and i8 %301, 126
  %sub189.2.i.i = add nsw i8 %302, -110
  %arrayidx194.2.i.i = getelementptr i8, ptr %add.ptr, i32 25
  %303 = ptrtoint ptr %arrayidx194.2.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx194.2.i.i, align 1
  %305 = sdiv i8 %304, 2
  %conv198.2.i.i = sext i8 %305 to i32
  %arrayidx201.2.i.i = getelementptr i8, ptr %dev, i32 34272
  %306 = ptrtoint ptr %arrayidx201.2.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %conv198.2.i.i, ptr %arrayidx201.2.i.i, align 4
  %call204.2.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub189.2.i.i) #7
  %307 = ptrtoint ptr %arrayidx179.2.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx179.2.i.i, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool209.not.2.i.i = icmp eq i8 %308, 0
  %narrow37.2.i.i = select i1 %tobool209.not.2.i.i, i8 0, i8 %call204.2.i.i
  %add.2.i.i = zext i8 %narrow37.2.i.i to i32
  %total_rssi.1.2.i.i = add nuw nsw i32 %total_rssi.1.1.i.i, %add.2.i.i
  br i1 %108, label %if.then213.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then213.2.i.i:                                 ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx216.2.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 31, i32 2
  %309 = ptrtoint ptr %arrayidx216.2.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %call204.2.i.i, ptr %arrayidx216.2.i.i, align 1
  store i8 %call204.2.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 2), align 2
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then213.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx179.3.i.i = getelementptr i8, ptr %dev, i32 36000
  %310 = ptrtoint ptr %arrayidx179.3.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx179.3.i.i, align 1, !range !325
  %spec.select.3.i.i = add nuw nsw i8 %spec.select.2.i.i, %311
  %arrayidx185.3.i.i = getelementptr i8, ptr %add.ptr, i32 11
  %312 = ptrtoint ptr %arrayidx185.3.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx185.3.i.i, align 1
  %314 = shl i8 %313, 1
  %315 = and i8 %314, 126
  %sub189.3.i.i = add nsw i8 %315, -110
  %arrayidx194.3.i.i = getelementptr i8, ptr %add.ptr, i32 26
  %316 = ptrtoint ptr %arrayidx194.3.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx194.3.i.i, align 1
  %318 = sdiv i8 %317, 2
  %conv198.3.i.i = sext i8 %318 to i32
  %arrayidx201.3.i.i = getelementptr i8, ptr %dev, i32 34276
  %319 = ptrtoint ptr %arrayidx201.3.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %conv198.3.i.i, ptr %arrayidx201.3.i.i, align 4
  %call204.3.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub189.3.i.i) #7
  %320 = ptrtoint ptr %arrayidx179.3.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx179.3.i.i, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool209.not.3.i.i = icmp eq i8 %321, 0
  %narrow37.3.i.i = select i1 %tobool209.not.3.i.i, i8 0, i8 %call204.3.i.i
  %add.3.i.i = zext i8 %narrow37.3.i.i to i32
  %total_rssi.1.3.i.i = add nuw nsw i32 %total_rssi.1.2.i.i, %add.3.i.i
  br i1 %108, label %if.then213.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i.i

if.then213.3.i.i:                                 ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx216.3.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 31, i32 3
  %322 = ptrtoint ptr %arrayidx216.3.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %call204.3.i.i, ptr %arrayidx216.3.i.i, align 1
  store i8 %call204.3.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 31, i32 3), align 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then213.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %pwdb_all223.i.i = getelementptr i8, ptr %add.ptr, i32 12
  %323 = ptrtoint ptr %pwdb_all223.i.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %pwdb_all223.i.i, align 1
  %325 = lshr i8 %324, 1
  %sub227.i.i = add nsw i8 %325, -106
  %call229.i.i = tail call zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %sub227.i.i) #7
  %conv230.i.i = zext i8 %call229.i.i to i32
  store i32 %conv230.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 30), align 4
  %RxPWDBAll232.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 30
  %326 = ptrtoint ptr %RxPWDBAll232.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %conv230.i.i, ptr %RxPWDBAll232.i.i, align 4
  store i8 %sub227.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 16), align 8
  %RxPower233.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 16
  %327 = ptrtoint ptr %RxPower233.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %sub227.i.i, ptr %RxPower233.i.i, align 8
  %conv234.i.i = sext i8 %sub227.i.i to i32
  %RecvSignalPower235.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 15
  %328 = ptrtoint ptr %RecvSignalPower235.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %conv234.i.i, ptr %RecvSignalPower235.i.i, align 4
  %329 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %329)
  %bf.load236.i.i = load i32, ptr %add.ptr, align 4
  %330 = and i32 %bf.load236.i.i, 61696
  call void @__sanitizer_cov_trace_const_cmp4(i32 4352, i32 %330)
  %331 = icmp eq i32 %330, 4352
  %max_spatial_stream.0.i.i = select i1 %331, i32 2, i32 1
  %rxevm_X.i.i = getelementptr i8, ptr %add.ptr, i32 21
  %332 = ptrtoint ptr %rxevm_X.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %rxevm_X.i.i, align 1
  %334 = sdiv i8 %333, 2
  %call271.peel.i.i = tail call zeroext i8 @rtl92e_evm_db_to_percent(i8 noundef signext %334) #7
  br i1 %108, label %if.end286.peel.i.i, label %for.inc.3.i.i.for.inc300.peel.i.i_crit_edge

for.inc.3.i.i.for.inc300.peel.i.i_crit_edge:      ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc300.peel.i.i

if.end286.peel.i.i:                               ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %SignalQuality281.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 14
  %335 = ptrtoint ptr %SignalQuality281.i.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %call271.peel.i.i, ptr %SignalQuality281.i.i, align 8
  store i8 %call271.peel.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 14), align 8
  %336 = ptrtoint ptr %RxMIMOSignalQuality.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %call271.peel.i.i, ptr %RxMIMOSignalQuality.i.i, align 1
  store i8 %call271.peel.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 0), align 4
  br label %for.inc300.peel.i.i

for.inc300.peel.i.i:                              ; preds = %if.end286.peel.i.i, %for.inc.3.i.i.for.inc300.peel.i.i_crit_edge
  br i1 %331, label %for.inc300.peel.i.i.for.body265.i.i_crit_edge, label %for.inc300.peel.i.i.for.end302.i.i_crit_edge

for.inc300.peel.i.i.for.end302.i.i_crit_edge:     ; preds = %for.inc300.peel.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end302.i.i

for.inc300.peel.i.i.for.body265.i.i_crit_edge:    ; preds = %for.inc300.peel.i.i
  br label %for.body265.i.i

for.body265.i.i:                                  ; preds = %for.inc300.i.i.for.body265.i.i_crit_edge, %for.inc300.peel.i.i.for.body265.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc300.i.i.for.body265.i.i_crit_edge ], [ 1, %for.inc300.peel.i.i.for.body265.i.i_crit_edge ]
  %arrayidx267.i.i = getelementptr [2 x i8], ptr %rxevm_X.i.i, i32 0, i32 %indvars.iv.i.i
  %337 = ptrtoint ptr %arrayidx267.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx267.i.i, align 1
  %339 = sdiv i8 %338, 2
  %call271.i.i = tail call zeroext i8 @rtl92e_evm_db_to_percent(i8 noundef signext %339) #7
  br i1 %108, label %if.end286.i20.i, label %for.body265.i.i.for.inc300.i.i_crit_edge

for.body265.i.i.for.inc300.i.i_crit_edge:         ; preds = %for.body265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc300.i.i

if.end286.i20.i:                                  ; preds = %for.body265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx292.i.i = getelementptr %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 32, i32 %indvars.iv.i.i
  %340 = ptrtoint ptr %arrayidx292.i.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %call271.i.i, ptr %arrayidx292.i.i, align 1
  %arrayidx298.i.i = getelementptr %struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 32, i32 %indvars.iv.i.i
  %341 = ptrtoint ptr %arrayidx298.i.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %call271.i.i, ptr %arrayidx298.i.i, align 1
  br label %for.inc300.i.i

for.inc300.i.i:                                   ; preds = %if.end286.i20.i, %for.body265.i.i.for.inc300.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %max_spatial_stream.0.i.i
  br i1 %exitcond.not.i.i, label %for.inc300.i.i.for.end302.i.i_crit_edge, label %for.inc300.i.i.for.body265.i.i_crit_edge, !llvm.loop !327

for.inc300.i.i.for.body265.i.i_crit_edge:         ; preds = %for.inc300.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body265.i.i

for.inc300.i.i.for.end302.i.i_crit_edge:          ; preds = %for.inc300.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end302.i.i

for.end302.i.i:                                   ; preds = %for.inc300.i.i.for.end302.i.i_crit_edge, %for.inc300.peel.i.i.for.end302.i.i_crit_edge
  %342 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %342)
  %bf.load304.i.i = load i32, ptr %add.ptr, align 4
  %343 = and i32 %bf.load304.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool308.not.i.i = icmp eq i32 %343, 0
  br i1 %tobool308.not.i.i, label %if.else318.i.i, label %if.then309.i.i

if.then309.i.i:                                   ; preds = %for.end302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rxsc_sgien_exflg303.i.i = getelementptr i8, ptr %add.ptr, i32 36
  %344 = ptrtoint ptr %rxsc_sgien_exflg303.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %rxsc_sgien_exflg303.i.i, align 1
  %bf.lshr312.i.i = lshr i8 %345, 2
  %bf.clear313.i.i = and i8 %bf.lshr312.i.i, 3
  %narrow.i.i = add nuw nsw i8 %bf.clear313.i.i, 1
  %add315.i.i = zext i8 %narrow.i.i to i32
  %arrayidx316.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 43, i32 15, i32 %add315.i.i
  br label %if.else331.i.i

if.else318.i.i:                                   ; preds = %for.end302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %received_bwtype320.i.i = getelementptr i8, ptr %dev, i32 33336
  br label %if.else331.i.i

if.then326.i.i:                                   ; preds = %if.end162.i.i, %if.end133.i.i.if.then326.i.i_crit_edge
  %346 = add nsw i32 %conv135.i.i, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %346)
  %347 = icmp ult i32 %346, 40
  br i1 %347, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then326.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div5.lhs.trunc.i.i.i = add nuw nsw i32 %conv135.i.i, 196
  %div5612.i.i.i = lshr i32 %div5.lhs.trunc.i.i.i, 2
  %div5.zext.i.i.i = and i32 %div5612.i.i.i, 63
  %add.i.i.i = add nuw nsw i32 %div5.zext.i.i.i, 90
  br label %if.end343.sink.split.i.i

if.else.i.i.i:                                    ; preds = %if.then326.i.i
  %348 = add nsw i32 %conv135.i.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %348)
  %349 = icmp ult i32 %348, 20
  br i1 %349, label %if.then5.i.i.i, label %if.else9.i.i.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div77.lhs.trunc.i.i.i = add nuw nsw i32 %conv135.i.i, 216
  %div77811.i.i.i = lshr i32 %div77.lhs.trunc.i.i.i, 1
  %div77.zext.i.i.i = and i32 %div77811.i.i.i, 127
  %add8.i.i.i = add nuw nsw i32 %div77.zext.i.i.i, 78
  br label %if.end343.sink.split.i.i

if.else9.i.i.i:                                   ; preds = %if.else.i.i.i
  %350 = add nsw i32 %conv135.i.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %350)
  %351 = icmp ult i32 %350, 10
  br i1 %351, label %if.then13.i.i.i, label %if.else16.i.i.i

if.then13.i.i.i:                                  ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add15.i.i.i = add nuw nsw i32 %conv135.i.i, 36
  br label %if.end343.sink.split.i.i

if.else16.i.i.i:                                  ; preds = %if.else9.i.i.i
  %352 = add nsw i32 %conv135.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %352)
  %353 = icmp ult i32 %352, 10
  br i1 %353, label %if.then20.i.i.i, label %if.else23.i.i.i

if.then20.i.i.i:                                  ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add22.i.i.i = add nuw nsw i32 %conv135.i.i, 34
  br label %if.end343.sink.split.i.i

if.else23.i.i.i:                                  ; preds = %if.else16.i.i.i
  %354 = add nsw i32 %conv135.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %354)
  %355 = icmp ult i32 %354, 16
  br i1 %355, label %if.then27.i.i.i, label %if.else31.i.i.i

if.then27.i.i.i:                                  ; preds = %if.else23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %356 = shl nuw nsw i8 %call134.i.i, 1
  %div299.lhs.trunc.i.i.i = add nsw i8 %356, -10
  %div29910.i.i.i = udiv i8 %div299.lhs.trunc.i.i.i, 3
  %narrow.i.i.i = add nuw nsw i8 %div29910.i.i.i, 42
  %add30.i.i.i = zext i8 %narrow.i.i.i to i32
  br label %if.end343.sink.split.i.i

if.else31.i.i.i:                                  ; preds = %if.else23.i.i.i
  %switch.tableidx = add i8 %call134.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %357 = icmp ult i8 %switch.tableidx, 4
  br i1 %357, label %switch.lookup, label %if.else31.i.i.i.if.end343.sink.split.i.i_crit_edge

if.else31.i.i.i.if.end343.sink.split.i.i_crit_edge: ; preds = %if.else31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end343.sink.split.i.i

if.else331.i.i:                                   ; preds = %if.else318.i.i, %if.then309.i.i
  %received_bwtype320.sink50.i.i = phi ptr [ %received_bwtype320.i.i, %if.else318.i.i ], [ %arrayidx316.i.i, %if.then309.i.i ]
  %358 = ptrtoint ptr %received_bwtype320.sink50.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %received_bwtype320.sink50.i.i, align 4
  %inc322.i.i = add i32 %359, 1
  store i32 %inc322.i.i, ptr %received_bwtype320.sink50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.3.i.i)
  %cmp333.not.i.i = icmp eq i8 %spec.select.3.i.i, 0
  br i1 %cmp333.not.i.i, label %if.else331.i.i._rtl92e_translate_rx_signal_stats.exit_crit_edge, label %if.then335.i.i

if.else331.i.i._rtl92e_translate_rx_signal_stats.exit_crit_edge: ; preds = %if.else331.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92e_translate_rx_signal_stats.exit

if.then335.i.i:                                   ; preds = %if.else331.i.i
  %conv332.i.i = zext i8 %spec.select.3.i.i to i32
  %div337.i.i = udiv i32 %total_rssi.1.3.i.i, %conv332.i.i
  %360 = add nsw i32 %div337.i.i, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %360)
  %361 = icmp ult i32 %360, 40
  br i1 %361, label %if.then.i6.i.i, label %if.else.i7.i.i

if.then.i6.i.i:                                   ; preds = %if.then335.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div5.lhs.trunc.i2.i.i = add nuw nsw i32 %div337.i.i, 196
  %div5612.i3.i.i = lshr i32 %div5.lhs.trunc.i2.i.i, 2
  %div5.zext.i4.i.i = and i32 %div5612.i3.i.i, 63
  %add.i5.i.i = add nuw nsw i32 %div5.zext.i4.i.i, 90
  br label %if.end343.sink.split.i.i

if.else.i7.i.i:                                   ; preds = %if.then335.i.i
  %362 = add nsw i32 %div337.i.i, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %362)
  %363 = icmp ult i32 %362, 20
  br i1 %363, label %if.then5.i12.i.i, label %if.else9.i13.i.i

if.then5.i12.i.i:                                 ; preds = %if.else.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div77.lhs.trunc.i8.i.i = add nuw nsw i32 %div337.i.i, 216
  %div77811.i9.i.i = lshr i32 %div77.lhs.trunc.i8.i.i, 1
  %div77.zext.i10.i.i = and i32 %div77811.i9.i.i, 127
  %add8.i11.i.i = add nuw nsw i32 %div77.zext.i10.i.i, 78
  br label %if.end343.sink.split.i.i

if.else9.i13.i.i:                                 ; preds = %if.else.i7.i.i
  %364 = add nsw i32 %div337.i.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %364)
  %365 = icmp ult i32 %364, 10
  br i1 %365, label %if.then13.i15.i.i, label %if.else16.i16.i.i

if.then13.i15.i.i:                                ; preds = %if.else9.i13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add15.i14.i.i = add nuw nsw i32 %div337.i.i, 36
  br label %if.end343.sink.split.i.i

if.else16.i16.i.i:                                ; preds = %if.else9.i13.i.i
  %366 = add nsw i32 %div337.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %366)
  %367 = icmp ult i32 %366, 10
  br i1 %367, label %if.then20.i18.i.i, label %if.else23.i19.i.i

if.then20.i18.i.i:                                ; preds = %if.else16.i16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add22.i17.i.i = add nuw nsw i32 %div337.i.i, 34
  br label %if.end343.sink.split.i.i

if.else23.i19.i.i:                                ; preds = %if.else16.i16.i.i
  %368 = add nsw i32 %div337.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %368)
  %369 = icmp ult i32 %368, 16
  br i1 %369, label %if.then27.i24.i.i, label %if.else31.i25.i.i

if.then27.i24.i.i:                                ; preds = %if.else23.i19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %currsig.tr.i.i.i = trunc i32 %div337.i.i to i8
  %370 = shl nuw nsw i8 %currsig.tr.i.i.i, 1
  %div299.lhs.trunc.i20.i.i = add nsw i8 %370, -10
  %div29910.i21.i.i = udiv i8 %div299.lhs.trunc.i20.i.i, 3
  %narrow.i22.i.i = add nuw nsw i8 %div29910.i21.i.i, 42
  %add30.i23.i.i = zext i8 %narrow.i22.i.i to i32
  br label %if.end343.sink.split.i.i

if.else31.i25.i.i:                                ; preds = %if.else23.i19.i.i
  %switch.tableidx563 = add nsw i32 %div337.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx563)
  %371 = icmp ult i32 %switch.tableidx563, 4
  br i1 %371, label %switch.lookup562, label %if.else31.i25.i.i.if.end343.sink.split.i.i_crit_edge

if.else31.i25.i.i.if.end343.sink.split.i.i_crit_edge: ; preds = %if.else31.i25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end343.sink.split.i.i

switch.lookup:                                    ; preds = %if.else31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = mul nuw nsw i32 %switch.idx.cast, 9
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 9
  br label %if.end343.sink.split.i.i

switch.lookup562:                                 ; preds = %if.else31.i25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.mult564 = mul nsw i32 %switch.tableidx563, 9
  %switch.offset565 = add i32 %switch.idx.mult564, 9
  br label %if.end343.sink.split.i.i

if.end343.sink.split.i.i:                         ; preds = %switch.lookup562, %switch.lookup, %if.else31.i25.i.i.if.end343.sink.split.i.i_crit_edge, %if.then27.i24.i.i, %if.then20.i18.i.i, %if.then13.i15.i.i, %if.then5.i12.i.i, %if.then.i6.i.i, %if.else31.i.i.i.if.end343.sink.split.i.i_crit_edge, %if.then27.i.i.i, %if.then20.i.i.i, %if.then13.i.i.i, %if.then5.i.i.i, %if.then.i.i.i
  %retsig.0.i.sink.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %add8.i.i.i, %if.then5.i.i.i ], [ %add15.i.i.i, %if.then13.i.i.i ], [ %add22.i.i.i, %if.then20.i.i.i ], [ %add30.i.i.i, %if.then27.i.i.i ], [ %add.i5.i.i, %if.then.i6.i.i ], [ %add8.i11.i.i, %if.then5.i12.i.i ], [ %add15.i14.i.i, %if.then13.i15.i.i ], [ %add22.i17.i.i, %if.then20.i18.i.i ], [ %add30.i23.i.i, %if.then27.i24.i.i ], [ %switch.offset, %switch.lookup ], [ %conv135.i.i, %if.else31.i.i.i.if.end343.sink.split.i.i_crit_edge ], [ %switch.offset565, %switch.lookup562 ], [ %div337.i.i, %if.else31.i25.i.i.if.end343.sink.split.i.i_crit_edge ]
  %conv329.i.i = trunc i32 %retsig.0.i.sink.i.i to i8
  store i8 %conv329.i.i, ptr getelementptr inbounds (%struct.rtllib_rx_stats, ptr @_rtl92e_translate_rx_signal_stats.previous_stats, i32 0, i32 17), align 1
  %SignalStrength341.i.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 17
  %372 = ptrtoint ptr %SignalStrength341.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv329.i.i, ptr %SignalStrength341.i.i, align 1
  br label %_rtl92e_translate_rx_signal_stats.exit

_rtl92e_translate_rx_signal_stats.exit:           ; preds = %if.end343.sink.split.i.i, %if.else331.i.i._rtl92e_translate_rx_signal_stats.exit_crit_edge
  tail call void @rtl92e_copy_mpdu_stats(ptr noundef %stats, ptr noundef nonnull @_rtl92e_translate_rx_signal_stats.previous_stats) #7
  %373 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %373)
  %bf.load151 = load i32, ptr %add.ptr, align 4
  %374 = and i32 %bf.load151, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %_rtl92e_translate_rx_signal_stats.exit.if.end184_crit_edge, label %do.body

_rtl92e_translate_rx_signal_stats.exit.if.end184_crit_edge: ; preds = %_rtl92e_translate_rx_signal_stats.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

do.body:                                          ; preds = %_rtl92e_translate_rx_signal_stats.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %376 = load i32, ptr @rt_global_debug_component, align 4
  %and166 = and i32 %376, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.body.if.end184_crit_edge, label %do.end

do.body.if.end184_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr171 = lshr i32 %bf.load151, 18
  %bf.cast173 = and i32 %bf.lshr171, 1
  %bf.lshr176 = lshr i32 %bf.load151, 19
  %bf.cast178 = and i32 %bf.lshr176, 1
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %bf.cast173, i32 noundef %bf.cast178) #10
  br label %if.end184

if.end184:                                        ; preds = %do.end, %do.body.if.end184_crit_edge, %_rtl92e_translate_rx_signal_stats.exit.if.end184_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %377 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %len, align 4
  %sub = add i32 %378, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #7
  %379 = ptrtoint ptr %Length to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %Length, align 2
  %sub187 = add i16 %380, -4
  %packetlength = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 36
  %381 = ptrtoint ptr %packetlength to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %sub187, ptr %packetlength, align 2
  %fraglength = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 37
  %382 = ptrtoint ptr %fraglength to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %sub187, ptr %fraglength, align 4
  %fragoffset = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 38
  %383 = ptrtoint ptr %fragoffset to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 0, ptr %fragoffset, align 2
  %ntotalfrag = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 39
  %384 = ptrtoint ptr %ntotalfrag to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 1, ptr %ntotalfrag, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %if.else66, %if.then63, %if.then56, %if.then45.cleanup_crit_edge
  %tobool.not279 = phi i1 [ false, %if.then45.cleanup_crit_edge ], [ false, %if.then63 ], [ false, %if.else66 ], [ false, %if.then56 ], [ true, %if.end184 ]
  ret i1 %tobool.not279
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_update_rx_pkt_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_stop_adapter(ptr noundef %dev, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  %OpMode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %OpMode) #7
  %0 = ptrtoint ptr %OpMode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %OpMode, align 1
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %1 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtllib, align 8
  %SetHwRegHandler = getelementptr inbounds %struct.rtllib_device, ptr %2, i32 0, i32 203
  %3 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %SetHwRegHandler, align 8
  call void %4(ptr noundef %dev, i8 noundef zeroext 4, ptr noundef nonnull %OpMode) #7
  %5 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtllib, align 8
  %bSupportRemoteWakeUp = getelementptr inbounds %struct.rtllib_device, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %bSupportRemoteWakeUp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bSupportRemoteWakeUp, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 55, i8 noundef zeroext 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #7
  br i1 %reset, label %if.end.if.end17_crit_edge, label %if.end.while.body9_crit_edge

if.end.while.body9_crit_edge:                     ; preds = %if.end
  br label %while.body9

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

while.body9:                                      ; preds = %while.body9.while.body9_crit_edge, %if.end.while.body9_crit_edge
  %__ms5.050 = phi i32 [ %dec7, %while.body9.while.body9_crit_edge ], [ 150, %if.end.while.body9_crit_edge ]
  %dec7 = add nsw i32 %__ms5.050, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #7
  %tobool8.not = icmp eq i32 %dec7, 0
  br i1 %tobool8.not, label %while.end10, label %while.body9.while.body9_crit_edge

while.body9.while.body9_crit_edge:                ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body9

while.end10:                                      ; preds = %while.body9
  %bHwRfOffAction = getelementptr i8, ptr %dev, i32 36009
  %30 = ptrtoint ptr %bHwRfOffAction to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %bHwRfOffAction, align 1
  %31 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtllib, align 8
  %bSupportRemoteWakeUp12 = getelementptr inbounds %struct.rtllib_device, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %bSupportRemoteWakeUp12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bSupportRemoteWakeUp12, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool13.not = icmp eq i8 %34, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_set_rf_off(ptr noundef %dev) #7
  %call15 = call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 256) #7
  %or = or i32 %call15, 1
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 256, i32 noundef %or) #7
  br label %if.end17

if.else:                                          ; preds = %while.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 752, i32 noundef -1) #7
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 756, i32 noundef -1) #7
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 760, i32 noundef -1) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 12, i8 noundef zeroext 5) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 1027, i8 noundef zeroext 10) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14, %if.end.if.end17_crit_edge
  %35 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtllib, align 8
  %arrayidx = getelementptr %struct.rtllib_device, ptr %36, i32 0, i32 141, i32 0
  call void @skb_queue_purge(ptr noundef %arrayidx) #7
  %37 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtllib, align 8
  %arrayidx.1 = getelementptr %struct.rtllib_device, ptr %38, i32 0, i32 141, i32 1
  call void @skb_queue_purge(ptr noundef %arrayidx.1) #7
  %39 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib, align 8
  %arrayidx.2 = getelementptr %struct.rtllib_device, ptr %40, i32 0, i32 141, i32 2
  call void @skb_queue_purge(ptr noundef %arrayidx.2) #7
  %41 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtllib, align 8
  %arrayidx.3 = getelementptr %struct.rtllib_device, ptr %42, i32 0, i32 141, i32 3
  call void @skb_queue_purge(ptr noundef %arrayidx.3) #7
  %43 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtllib, align 8
  %arrayidx.4 = getelementptr %struct.rtllib_device, ptr %44, i32 0, i32 141, i32 4
  call void @skb_queue_purge(ptr noundef %arrayidx.4) #7
  %45 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtllib, align 8
  %arrayidx.5 = getelementptr %struct.rtllib_device, ptr %46, i32 0, i32 141, i32 5
  call void @skb_queue_purge(ptr noundef %arrayidx.5) #7
  %47 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtllib, align 8
  %arrayidx.6 = getelementptr %struct.rtllib_device, ptr %48, i32 0, i32 141, i32 6
  call void @skb_queue_purge(ptr noundef %arrayidx.6) #7
  %49 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtllib, align 8
  %arrayidx.7 = getelementptr %struct.rtllib_device, ptr %50, i32 0, i32 141, i32 7
  call void @skb_queue_purge(ptr noundef %arrayidx.7) #7
  %51 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rtllib, align 8
  %arrayidx.8 = getelementptr %struct.rtllib_device, ptr %52, i32 0, i32 141, i32 8
  call void @skb_queue_purge(ptr noundef %arrayidx.8) #7
  %53 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rtllib, align 8
  %arrayidx.9 = getelementptr %struct.rtllib_device, ptr %54, i32 0, i32 141, i32 9
  call void @skb_queue_purge(ptr noundef %arrayidx.9) #7
  %55 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rtllib, align 8
  %arrayidx.10 = getelementptr %struct.rtllib_device, ptr %56, i32 0, i32 141, i32 10
  call void @skb_queue_purge(ptr noundef %arrayidx.10) #7
  %57 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rtllib, align 8
  %arrayidx.11 = getelementptr %struct.rtllib_device, ptr %58, i32 0, i32 141, i32 11
  call void @skb_queue_purge(ptr noundef %arrayidx.11) #7
  %59 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rtllib, align 8
  %arrayidx.12 = getelementptr %struct.rtllib_device, ptr %60, i32 0, i32 141, i32 12
  call void @skb_queue_purge(ptr noundef %arrayidx.12) #7
  %61 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtllib, align 8
  %arrayidx.13 = getelementptr %struct.rtllib_device, ptr %62, i32 0, i32 141, i32 13
  call void @skb_queue_purge(ptr noundef %arrayidx.13) #7
  %63 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rtllib, align 8
  %arrayidx.14 = getelementptr %struct.rtllib_device, ptr %64, i32 0, i32 141, i32 14
  call void @skb_queue_purge(ptr noundef %arrayidx.14) #7
  %65 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rtllib, align 8
  %arrayidx.15 = getelementptr %struct.rtllib_device, ptr %66, i32 0, i32 141, i32 15
  call void @skb_queue_purge(ptr noundef %arrayidx.15) #7
  %67 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rtllib, align 8
  %arrayidx23 = getelementptr %struct.rtllib_device, ptr %68, i32 0, i32 142, i32 0
  call void @skb_queue_purge(ptr noundef %arrayidx23) #7
  %69 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rtllib, align 8
  %arrayidx23.1 = getelementptr %struct.rtllib_device, ptr %70, i32 0, i32 142, i32 1
  call void @skb_queue_purge(ptr noundef %arrayidx23.1) #7
  %71 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rtllib, align 8
  %arrayidx23.2 = getelementptr %struct.rtllib_device, ptr %72, i32 0, i32 142, i32 2
  call void @skb_queue_purge(ptr noundef %arrayidx23.2) #7
  %73 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rtllib, align 8
  %arrayidx23.3 = getelementptr %struct.rtllib_device, ptr %74, i32 0, i32 142, i32 3
  call void @skb_queue_purge(ptr noundef %arrayidx23.3) #7
  %75 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rtllib, align 8
  %arrayidx23.4 = getelementptr %struct.rtllib_device, ptr %76, i32 0, i32 142, i32 4
  call void @skb_queue_purge(ptr noundef %arrayidx23.4) #7
  %77 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rtllib, align 8
  %arrayidx23.5 = getelementptr %struct.rtllib_device, ptr %78, i32 0, i32 142, i32 5
  call void @skb_queue_purge(ptr noundef %arrayidx23.5) #7
  %79 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rtllib, align 8
  %arrayidx23.6 = getelementptr %struct.rtllib_device, ptr %80, i32 0, i32 142, i32 6
  call void @skb_queue_purge(ptr noundef %arrayidx23.6) #7
  %81 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rtllib, align 8
  %arrayidx23.7 = getelementptr %struct.rtllib_device, ptr %82, i32 0, i32 142, i32 7
  call void @skb_queue_purge(ptr noundef %arrayidx23.7) #7
  %83 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rtllib, align 8
  %arrayidx23.8 = getelementptr %struct.rtllib_device, ptr %84, i32 0, i32 142, i32 8
  call void @skb_queue_purge(ptr noundef %arrayidx23.8) #7
  %85 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rtllib, align 8
  %arrayidx23.9 = getelementptr %struct.rtllib_device, ptr %86, i32 0, i32 142, i32 9
  call void @skb_queue_purge(ptr noundef %arrayidx23.9) #7
  %87 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rtllib, align 8
  %arrayidx23.10 = getelementptr %struct.rtllib_device, ptr %88, i32 0, i32 142, i32 10
  call void @skb_queue_purge(ptr noundef %arrayidx23.10) #7
  %89 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rtllib, align 8
  %arrayidx23.11 = getelementptr %struct.rtllib_device, ptr %90, i32 0, i32 142, i32 11
  call void @skb_queue_purge(ptr noundef %arrayidx23.11) #7
  %91 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rtllib, align 8
  %arrayidx23.12 = getelementptr %struct.rtllib_device, ptr %92, i32 0, i32 142, i32 12
  call void @skb_queue_purge(ptr noundef %arrayidx23.12) #7
  %93 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rtllib, align 8
  %arrayidx23.13 = getelementptr %struct.rtllib_device, ptr %94, i32 0, i32 142, i32 13
  call void @skb_queue_purge(ptr noundef %arrayidx23.13) #7
  %95 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rtllib, align 8
  %arrayidx23.14 = getelementptr %struct.rtllib_device, ptr %96, i32 0, i32 142, i32 14
  call void @skb_queue_purge(ptr noundef %arrayidx23.14) #7
  %97 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rtllib, align 8
  %arrayidx23.15 = getelementptr %struct.rtllib_device, ptr %98, i32 0, i32 142, i32 15
  call void @skb_queue_purge(ptr noundef %arrayidx23.15) #7
  %skb_queue = getelementptr i8, ptr %dev, i32 32112
  call void @skb_queue_purge(ptr noundef %skb_queue) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %OpMode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_rf_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_update_ratr_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %rate_config = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dot11HTOperationalRateSet = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rate_config) #7
  %2 = ptrtoint ptr %rate_config to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %rate_config, align 2
  call void @rtl92e_config_rate(ptr noundef %dev, ptr noundef nonnull %rate_config) #7
  %3 = ptrtoint ptr %rate_config to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rate_config, align 2
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %dot11HTOperationalRateSet to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dot11HTOperationalRateSet, align 1
  %conv1 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv1, 12
  %or = or i32 %shl, %conv
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 92
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %entry.sw.bb4_crit_edge
    i32 6, label %entry.sw.bb4_crit_edge59
    i32 16, label %entry.sw.bb6_crit_edge
    i32 32, label %entry.sw.bb6_crit_edge60
  ]

entry.sw.bb6_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb4_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %conv, 4080
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3 = and i32 %conv, 15
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge59
  %and5 = and i32 %conv, 4087
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge60
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pHTInfo, align 8
  %PeerMimoPs = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %PeerMimoPs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %PeerMimoPs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %and9 = and i32 %or, 520199
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  %rf_type = getelementptr i8, ptr %dev, i32 35821
  %14 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp11 = icmp eq i8 %15, 0
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %or, 1044487
  br label %sw.epilog

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and16 = and i32 %or, 126983
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else15, %if.then13, %if.then, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ratr_value.0 = phi i32 [ %or, %entry.sw.epilog_crit_edge ], [ %and9, %if.then ], [ %and14, %if.then13 ], [ %and16, %if.else15 ], [ %and5, %sw.bb4 ], [ %and3, %sw.bb2 ], [ %and, %sw.bb ]
  %and18 = and i32 %ratr_value.0, 268435455
  %pHTInfo19 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %pHTInfo19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pHTInfo19, align 8
  %bCurTxBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %17, i32 0, i32 35
  %18 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bCurTxBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %bCurShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %17, i32 0, i32 5
  %bCurShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %17, i32 0, i32 7
  %bCurShortGI40MHz.sink = select i1 %tobool.not, ptr %bCurShortGI20MHz, ptr %bCurShortGI40MHz
  %20 = ptrtoint ptr %bCurShortGI40MHz.sink to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bCurShortGI40MHz.sink, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  %or25 = or i32 %and18, -2147483648
  %spec.select58 = select i1 %tobool23.not, i32 %and18, i32 %or25
  call void @rtl92e_writel(ptr noundef %dev, i32 noundef 800, i32 noundef %spec.select58) #7
  call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 792, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rate_config) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_config_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_init_variables(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nick = getelementptr i8, ptr %dev, i32 35823
  %call1 = tail call i32 @strscpy(ptr noundef %nick, ptr noundef nonnull @.str.84, i32 noundef 33) #7
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %softmac_features = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %softmac_features to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 188, ptr %softmac_features, align 2
  %3 = load ptr, ptr %rtllib, align 8
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %tx_headroom, align 8
  %ShortRetryLimit = getelementptr i8, ptr %dev, i32 35736
  %5 = ptrtoint ptr %ShortRetryLimit to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 48, ptr %ShortRetryLimit, align 4
  %LongRetryLimit = getelementptr i8, ptr %dev, i32 35738
  %6 = ptrtoint ptr %LongRetryLimit to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 48, ptr %LongRetryLimit, align 2
  %ReceiveConfig = getelementptr i8, ptr %dev, i32 35012
  %7 = ptrtoint ptr %ReceiveConfig to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2144012529, ptr %ReceiveConfig, align 8
  %irq_mask = getelementptr i8, ptr %dev, i32 35804
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 201392127, ptr %irq_mask, align 8
  %PwrDomainProtect = getelementptr i8, ptr %dev, i32 36218
  %9 = ptrtoint ptr %PwrDomainProtect to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %PwrDomainProtect, align 2
  %bfirst_after_down = getelementptr i8, ptr %dev, i32 30781
  %10 = ptrtoint ptr %bfirst_after_down to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bfirst_after_down, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_enable_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr i8, ptr %dev, i32 30792
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %irq_enabled, align 4
  %irq_mask = getelementptr i8, ptr %dev, i32 35804
  %1 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_mask, align 8
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 244, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_disable_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 244, i32 noundef 0) #7
  %irq_enabled = getelementptr i8, ptr %dev, i32 30792
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_clear_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 248) #7
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 248, i32 noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_enable_rx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 34988
  %0 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_dma, align 8
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 552, i32 noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_enable_tx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr i8, ptr %dev, i32 35024
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 544, i32 noundef %1) #7
  %dma.1 = getelementptr i8, ptr %dev, i32 35096
  %2 = ptrtoint ptr %dma.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma.1, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 540, i32 noundef %3) #7
  %dma.2 = getelementptr i8, ptr %dev, i32 35168
  %4 = ptrtoint ptr %dma.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma.2, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 536, i32 noundef %5) #7
  %dma.3 = getelementptr i8, ptr %dev, i32 35240
  %6 = ptrtoint ptr %dma.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma.3, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 532, i32 noundef %7) #7
  %dma.4 = getelementptr i8, ptr %dev, i32 35312
  %8 = ptrtoint ptr %dma.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.4, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 528, i32 noundef %9) #7
  %dma.5 = getelementptr i8, ptr %dev, i32 35384
  %10 = ptrtoint ptr %dma.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.5, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 520, i32 noundef %11) #7
  %dma.6 = getelementptr i8, ptr %dev, i32 35456
  %12 = ptrtoint ptr %dma.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.6, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 524, i32 noundef %13) #7
  %dma.7 = getelementptr i8, ptr %dev, i32 35528
  %14 = ptrtoint ptr %dma.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma.7, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 516, i32 noundef %15) #7
  %dma.8 = getelementptr i8, ptr %dev, i32 35600
  %16 = ptrtoint ptr %dma.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma.8, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 512, i32 noundef %17) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_ack_irq(ptr noundef %dev, ptr nocapture noundef writeonly %p_inta, ptr nocapture noundef readnone %p_intb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl92e_readl(ptr noundef %dev, i32 noundef 248) #7
  %0 = ptrtoint ptr %p_inta to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %p_inta, align 4
  tail call void @rtl92e_writel(ptr noundef %dev, i32 noundef 248, i32 noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_is_rx_stuck(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %call1 = tail call zeroext i16 @rtl92e_readw(ptr noundef %dev, i32 noundef 304) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %call1 to i32
  %RxCounter = getelementptr i8, ptr %dev, i32 36212
  %1 = ptrtoint ptr %RxCounter to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %RxCounter, align 8
  %conv3 = zext i16 %2 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %3 = load i8, ptr @rtl92e_is_rx_stuck.rx_chk_cnt, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr @rtl92e_is_rx_stuck.rx_chk_cnt, align 1
  %undecorated_smoothed_pwdb = getelementptr i8, ptr %dev, i32 36028
  %4 = ptrtoint ptr %undecorated_smoothed_pwdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %undecorated_smoothed_pwdb, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %5)
  %cmp = icmp sgt i32 %5, 54
  br i1 %cmp, label %do.end6.if.end68_crit_edge, label %land.lhs.true

do.end6.if.end68_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

land.lhs.true:                                    ; preds = %do.end6
  %CurrentChannelBW = getelementptr i8, ptr %dev, i32 31420
  %6 = ptrtoint ptr %CurrentChannelBW to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %CurrentChannelBW, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp16 = icmp sgt i32 %5, 9
  %or.cond = select i1 %cmp12.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %land.lhs.true.if.then25_crit_edge, label %lor.lhs.false

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp19 = icmp eq i32 %7, 0
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false.if.else59_crit_edge

lor.lhs.false.if.else59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else59

land.lhs.true21:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %5)
  %cmp23 = icmp sgt i32 %5, 29
  br i1 %cmp23, label %land.lhs.true21.if.then25_crit_edge, label %land.lhs.true48

land.lhs.true21.if.then25_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %land.lhs.true21.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc)
  %cmp27 = icmp ult i8 %inc, 2
  br i1 %cmp27, label %if.then25.cleanup_crit_edge, label %if.then25.if.end68_crit_edge

if.then25.if.end68_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true48:                                  ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp50 = icmp sgt i32 %5, 14
  br i1 %cmp50, label %if.then52, label %land.lhs.true48.if.else59_crit_edge

land.lhs.true48.if.else59_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else59

if.then52:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc)
  %cmp54 = icmp ult i8 %inc, 4
  br i1 %cmp54, label %if.then52.cleanup_crit_edge, label %if.then52.if.end68_crit_edge

if.then52.if.end68_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else59:                                        ; preds = %land.lhs.true48.if.else59_crit_edge, %lor.lhs.false.if.else59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc)
  %cmp61 = icmp ult i8 %inc, 8
  br i1 %cmp61, label %if.else59.cleanup_crit_edge, label %if.else59.if.end68_crit_edge

if.else59.if.end68_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.else59.cleanup_crit_edge:                      ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.else59.if.end68_crit_edge, %if.then52.if.end68_crit_edge, %if.then25.if.end68_crit_edge, %do.end6.if.end68_crit_edge
  store i8 0, ptr @rtl92e_is_rx_stuck.rx_chk_cnt, align 1
  %SilentResetRxSlotIndex = getelementptr i8, ptr %dev, i32 35860
  %8 = ptrtoint ptr %SilentResetRxSlotIndex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SilentResetRxSlotIndex, align 8
  %inc69 = add i32 %9, 1
  store i32 %inc69, ptr %SilentResetRxSlotIndex, align 8
  %rem = and i32 %9, 3
  %RxCounter71 = getelementptr i8, ptr %dev, i32 36212
  %10 = ptrtoint ptr %RxCounter71 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %RxCounter71, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %call1)
  %cmp74 = icmp eq i16 %11, %call1
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 83, i32 %rem
  br i1 %cmp74, label %if.then76, label %if.else102

if.then76:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx, align 4
  %arrayidx82 = getelementptr i8, ptr %dev, i32 35864
  %13 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx82, align 4
  %arrayidx82.1 = getelementptr i8, ptr %dev, i32 35868
  %15 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx82.1, align 4
  %add.1 = add i32 %16, %14
  %arrayidx82.2 = getelementptr i8, ptr %dev, i32 35872
  %17 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx82.2, align 4
  %add.2 = add i32 %18, %add.1
  %arrayidx82.3 = getelementptr i8, ptr %dev, i32 35876
  %19 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx82.3, align 4
  %add.3 = add i32 %20, %add.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.3)
  %cmp85 = icmp eq i32 %add.3, 4
  br label %if.end105

if.else102:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then76
  %bStuck.0.off0 = phi i1 [ false, %if.else102 ], [ %cmp85, %if.then76 ]
  %22 = ptrtoint ptr %RxCounter71 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call1, ptr %RxCounter71, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.else59.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.then25.cleanup_crit_edge
  %retval.0 = phi i1 [ %bStuck.0.off0, %if.end105 ], [ false, %if.then25.cleanup_crit_edge ], [ false, %if.then52.cleanup_crit_edge ], [ false, %if.else59.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_is_tx_stuck(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i16 @rtl92e_readw(ptr noundef %dev, i32 noundef 296) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %call1 to i32
  %TxCounter = getelementptr i8, ptr %dev, i32 36210
  %1 = ptrtoint ptr %TxCounter to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %TxCounter, align 2
  %conv3 = zext i16 %2 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %TxCounter7 = getelementptr i8, ptr %dev, i32 36210
  %3 = ptrtoint ptr %TxCounter7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %TxCounter7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %call1)
  %cmp = icmp eq i16 %4, %call1
  %5 = ptrtoint ptr %TxCounter7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call1, ptr %TxCounter7, align 2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_get_nmode_support_by_sec(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %rtllib_ap_sec_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 197
  %2 = ptrtoint ptr %rtllib_ap_sec_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib_ap_sec_type, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call zeroext i8 %3(ptr noundef %1) #7
  %4 = and i8 %call3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.else ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl92e_is_halfn_supported_by_ap(ptr nocapture noundef readonly %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %bHalfWirelessN24GMode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %bHalfWirelessN24GMode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bHalfWirelessN24GMode, align 8, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_eeprom_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_init_adaptive_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_copy_mpdu_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_translate_to_dbm(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_is_legal_rf_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_update_rx_statistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_evm_db_to_percent(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !123, !125, !126, !127, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !260, !261, !262, !264, !266, !268, !269, !270, !271, !273, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !310, !312, !314}
!llvm.module.flags = !{!316, !317, !318, !319, !320, !321, !322, !323}
!llvm.ident = !{!324}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 189, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92e_set_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92e_set_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 209, i32 21}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 229, i32 3}
!10 = !{ptr @rtl92e_set_reg._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl92e_set_reg._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 248, i32 5}
!14 = !{ptr @rtl92e_set_reg._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl92e_set_reg._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 272, i32 3}
!18 = !{ptr @rtl92e_set_reg._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92e_set_reg._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 616, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtl92e_get_eeprom_size._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtl92e_get_eeprom_size._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 618, i32 2}
!27 = !{ptr @rtl92e_get_eeprom_size._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtl92e_get_eeprom_size._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 622, i32 2}
!31 = !{ptr @rtl92e_get_eeprom_size._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtl92e_get_eeprom_size._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 700, i32 2}
!35 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rtl92e_start_adapter._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rtl92e_start_adapter._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 721, i32 19}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 735, i32 2}
!42 = !{ptr @rtl92e_start_adapter._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rtl92e_start_adapter._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 738, i32 20}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 741, i32 2}
!48 = !{ptr @rtl92e_start_adapter._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtl92e_start_adapter._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 752, i32 20}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 821, i32 2}
!54 = !{ptr @rtl92e_start_adapter._entry.32, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rtl92e_start_adapter._entry_ptr.34, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 825, i32 4}
!58 = !{ptr @rtl92e_start_adapter._entry.35, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtl92e_start_adapter._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 827, i32 4}
!62 = !{ptr @rtl92e_start_adapter._entry.38, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtl92e_start_adapter._entry_ptr.40, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.42, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 830, i32 3}
!66 = !{ptr @rtl92e_start_adapter._entry.41, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtl92e_start_adapter._entry_ptr.43, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 833, i32 2}
!70 = !{ptr @rtl92e_start_adapter._entry.44, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtl92e_start_adapter._entry_ptr.46, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 844, i32 2}
!74 = !{ptr @rtl92e_start_adapter._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rtl92e_start_adapter._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.51, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 846, i32 3}
!78 = !{ptr @rtl92e_start_adapter._entry.50, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtl92e_start_adapter._entry_ptr.52, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.53, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 849, i32 21}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 852, i32 3}
!84 = !{ptr @rtl92e_start_adapter._entry.54, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rtl92e_start_adapter._entry_ptr.56, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 861, i32 3}
!88 = !{ptr @rtl92e_start_adapter._entry.57, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @rtl92e_start_adapter._entry_ptr.59, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.61, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 866, i32 3}
!92 = !{ptr @rtl92e_start_adapter._entry.60, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @rtl92e_start_adapter._entry_ptr.62, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @rtl92e_start_adapter._entry.63, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 871, i32 3}
!96 = !{ptr @rtl92e_start_adapter._entry_ptr.64, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.66, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 876, i32 3}
!99 = !{ptr @rtl92e_start_adapter._entry.65, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtl92e_start_adapter._entry_ptr.67, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.69, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 919, i32 4}
!103 = !{ptr @rtl92e_start_adapter._entry.68, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rtl92e_start_adapter._entry_ptr.70, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 922, i32 4}
!107 = !{ptr @rtl92e_start_adapter._entry.71, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtl92e_start_adapter._entry_ptr.73, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.75, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 925, i32 4}
!111 = !{ptr @rtl92e_start_adapter._entry.74, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtl92e_start_adapter._entry_ptr.76, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.78, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 928, i32 4}
!115 = !{ptr @rtl92e_start_adapter._entry.77, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rtl92e_start_adapter._entry_ptr.79, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.80, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1222, i32 19}
!119 = !{ptr @__func__.rtl92e_fill_tx_desc, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1222, i32 48}
!121 = distinct !{null, !122, !"tmp", i1 false, i1 false}
!122 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1238, i32 13}
!123 = !{ptr @.str.81, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1241, i32 4}
!125 = !{ptr @rtl92e_fill_tx_desc._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rtl92e_fill_tx_desc._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @__func__.rtl92e_fill_tx_cmd_desc, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1290, i32 48}
!129 = !{ptr @.str.82, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2061, i32 3}
!131 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rtl92e_get_rx_stats._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @rtl92e_get_rx_stats._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.84, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2173, i32 22}
!136 = !{ptr @rtl92e_is_rx_stuck.rx_chk_cnt, !137, !"rx_chk_cnt", i1 false, i1 false}
!137 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2263, i32 14}
!138 = !{ptr @.str.85, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2268, i32 2}
!140 = !{ptr @.str.86, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rtl92e_is_rx_stuck._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @rtl92e_is_rx_stuck._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.87, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2328, i32 2}
!145 = !{ptr @.str.88, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rtl92e_is_tx_stuck._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @rtl92e_is_tx_stuck._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.89, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 307, i32 2}
!150 = !{ptr @.str.90, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @_rtl92e_read_eeprom_info._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.91, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 311, i32 19}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 332, i32 3}
!157 = !{ptr @_rtl92e_read_eeprom_info._entry.92, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.94, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.96, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 333, i32 3}
!161 = !{ptr @_rtl92e_read_eeprom_info._entry.95, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.97, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.99, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 346, i32 3}
!165 = !{ptr @_rtl92e_read_eeprom_info._entry.98, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.100, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @_rtl92e_read_eeprom_info._entry.101, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 354, i32 3}
!169 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.102, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.104, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 357, i32 2}
!172 = !{ptr @_rtl92e_read_eeprom_info._entry.103, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.105, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.107, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 358, i32 2}
!176 = !{ptr @_rtl92e_read_eeprom_info._entry.106, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.108, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.110, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 359, i32 2}
!180 = !{ptr @_rtl92e_read_eeprom_info._entry.109, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.111, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.113, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 375, i32 2}
!184 = !{ptr @_rtl92e_read_eeprom_info._entry.112, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.114, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.116, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 398, i32 3}
!188 = !{ptr @_rtl92e_read_eeprom_info._entry.115, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.117, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.119, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 407, i32 3}
!192 = !{ptr @_rtl92e_read_eeprom_info._entry.118, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.120, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.122, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 424, i32 4}
!196 = !{ptr @_rtl92e_read_eeprom_info._entry.121, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.123, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.125, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 426, i32 4}
!200 = !{ptr @_rtl92e_read_eeprom_info._entry.124, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.126, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.128, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 437, i32 5}
!204 = !{ptr @_rtl92e_read_eeprom_info._entry.127, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.129, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @_rtl92e_read_eeprom_info._entry.130, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 440, i32 5}
!208 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.131, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.133, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 452, i32 5}
!211 = !{ptr @_rtl92e_read_eeprom_info._entry.132, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.134, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @_rtl92e_read_eeprom_info._entry.135, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 455, i32 5}
!215 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.136, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.138, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 512, i32 5}
!218 = !{ptr @_rtl92e_read_eeprom_info._entry.137, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.139, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.141, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 516, i32 5}
!222 = !{ptr @_rtl92e_read_eeprom_info._entry.140, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.142, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.144, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 520, i32 5}
!226 = !{ptr @_rtl92e_read_eeprom_info._entry.143, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.145, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.147, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 524, i32 5}
!230 = !{ptr @_rtl92e_read_eeprom_info._entry.146, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.148, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.150, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 541, i32 3}
!234 = !{ptr @_rtl92e_read_eeprom_info._entry.149, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.151, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.153, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 543, i32 3}
!238 = !{ptr @_rtl92e_read_eeprom_info._entry.152, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.154, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.156, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 577, i32 3}
!242 = !{ptr @_rtl92e_read_eeprom_info._entry.155, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.157, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.159, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 606, i32 2}
!246 = !{ptr @_rtl92e_read_eeprom_info._entry.158, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.160, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.162, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 607, i32 2}
!250 = !{ptr @_rtl92e_read_eeprom_info._entry.161, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.163, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.165, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 608, i32 2}
!254 = !{ptr @_rtl92e_read_eeprom_info._entry.164, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @_rtl92e_read_eeprom_info._entry_ptr.166, !253, !"_entry_ptr", i1 false, i1 false}
!256 = distinct !{null, !257, !"WDCAPARA_ADD", i1 false, i1 false}
!257 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 18, i32 12}
!258 = distinct !{null, !259, !"__already_done", i1 false, i1 false}
!259 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!260 = !{ptr @.str.167, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.168, !259, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.169, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1150, i32 20}
!264 = !{ptr @__func__._rtl92e_hw_queue_to_fw_queue, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1151, i32 8}
!266 = !{ptr @.str.170, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1357, i32 4}
!268 = !{ptr @.str.171, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @_rtl92e_rate_hw_to_mgn._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @_rtl92e_rate_hw_to_mgn._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.173, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1418, i32 4}
!273 = !{ptr @_rtl92e_rate_hw_to_mgn._entry.172, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @_rtl92e_rate_hw_to_mgn._entry_ptr.174, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @_rtl92e_translate_rx_signal_stats.previous_stats, !276, !"previous_stats", i1 false, i1 false}
!276 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1857, i32 33}
!277 = !{ptr @_rtl92e_process_phyinfo.slide_rssi_index, !278, !"slide_rssi_index", i1 false, i1 false}
!278 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1682, i32 13}
!279 = !{ptr @_rtl92e_process_phyinfo.slide_rssi_statistics, !280, !"slide_rssi_statistics", i1 false, i1 false}
!280 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1682, i32 31}
!281 = !{ptr @_rtl92e_process_phyinfo.slide_evm_index, !282, !"slide_evm_index", i1 false, i1 false}
!282 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1683, i32 13}
!283 = !{ptr @_rtl92e_process_phyinfo.slide_evm_statistics, !284, !"slide_evm_statistics", i1 false, i1 false}
!284 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1683, i32 30}
!285 = distinct !{null, !286, !"last_rssi", i1 false, i1 false}
!286 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1684, i32 13}
!287 = distinct !{null, !288, !"last_evm", i1 false, i1 false}
!288 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1684, i32 24}
!289 = !{ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, !290, !"slide_beacon_adc_pwdb_index", i1 false, i1 false}
!290 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1685, i32 13}
!291 = !{ptr @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, !292, !"slide_beacon_adc_pwdb_statistics", i1 false, i1 false}
!292 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1686, i32 13}
!293 = distinct !{null, !294, !"last_beacon_adc_pwdb", i1 false, i1 false}
!294 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1687, i32 13}
!295 = !{ptr @.str.175, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1728, i32 4}
!297 = !{ptr @.str.176, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @_rtl92e_process_phyinfo._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @_rtl92e_process_phyinfo._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.178, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1752, i32 4}
!302 = !{ptr @_rtl92e_process_phyinfo._entry.177, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @_rtl92e_process_phyinfo._entry_ptr.179, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.181, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1780, i32 2}
!306 = !{ptr @_rtl92e_process_phyinfo._entry.180, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @_rtl92e_process_phyinfo._entry_ptr.182, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.183, !305, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.184, !305, !"<string literal>", i1 false, i1 false}
!310 = distinct !{null, !311, !"check_reg824", i1 false, i1 false}
!311 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1487, i32 12}
!312 = !{ptr @_rtl92e_query_rxphystatus.reg824_bit9, !313, !"reg824_bit9", i1 false, i1 false}
!313 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 1488, i32 13}
!314 = distinct !{null, !315, !"TX_DESC_BASE", i1 false, i1 false}
!315 = !{!"../drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c", i32 2238, i32 18}
!316 = !{i32 1, !"wchar_size", i32 2}
!317 = !{i32 1, !"min_enum_size", i32 4}
!318 = !{i32 8, !"branch-target-enforcement", i32 0}
!319 = !{i32 8, !"sign-return-address", i32 0}
!320 = !{i32 8, !"sign-return-address-all", i32 0}
!321 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!322 = !{i32 7, !"uwtable", i32 1}
!323 = !{i32 7, !"frame-pointer", i32 2}
!324 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!325 = !{i8 0, i8 2}
!326 = !{!"branch_weights", i32 2000, i32 1}
!327 = distinct !{!327, !328}
!328 = !{!"llvm.loop.peeled.count", i32 1}
