; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_core.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.rtl819x_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.ethtool_ops = type opaque
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
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
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rx_desc = type { i16, i8, i8, i32, i32, i32 }
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
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.118, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.118 = type { ptr }
%struct.tx_desc = type { i16, i8, i8, i8, [3 x i8], i16, i8, i8, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.rtllib_hdr_1addr = type { i16, i16, [6 x i8], [0 x i8] }

@hwwep = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rtl8192_pci_id_tbl = internal global [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33170, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl819xp_ops to i32), i32 0 }, %struct.pci_device_id { i32 1962, i32 68, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl819xp_ops to i32), i32 0 }, %struct.pci_device_id { i32 1962, i32 71, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl819xp_ops to i32), i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@rtl92e_set_rf_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:===>%s: StateToSet(%d)\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92e_set_rf_state\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/staging/rtl8192e/rtl8192e/rtl_core.c\00", [51 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr = internal global ptr @rtl92e_set_rf_state._entry, section ".printk_index", align 4
@rtl92e_set_rf_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017rtl819xE:%s: RF Change in progress! Wait to set..StateToSet(%d).\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.5 = internal global ptr @rtl92e_set_rf_state._entry.3, section ".printk_index", align 4
@rtl92e_set_rf_state._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:%s: Wait 1 ms (%d times)...\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.8 = internal global ptr @rtl92e_set_rf_state._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Timeout waiting for RF change.\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017rtl819xE:%s - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.12 = internal global ptr @rtl92e_set_rf_state._entry.10, section ".printk_index", align 4
@rtl92e_set_rf_state._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017rtl819xE:%s: Action is allowed.... StateToSet(%d), RfOffReason(%#X)\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.15 = internal global ptr @rtl92e_set_rf_state._entry.13, section ".printk_index", align 4
@rtl92e_set_rf_state._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017rtl819xE:%s: Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.18 = internal global ptr @rtl92e_set_rf_state._entry.16, section ".printk_index", align 4
@rtl92e_set_rf_state._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017rtl819xE:<===%s\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92e_set_rf_state._entry_ptr.21 = internal global ptr @rtl92e_set_rf_state._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(): Unsupported mode requested. Fallback to 802.11b\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtl92e_set_wireless_mode = private unnamed_addr constant [25 x i8] c"rtl92e_set_wireless_mode\00", align 1
@rtl92e_set_wireless_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.rtl92e_set_wireless_mode, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:%s(), wireless_mode:%x, bEnableHT = 1\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_set_wireless_mode._entry_ptr = internal global ptr @rtl92e_set_wireless_mode._entry, section ".printk_index", align 4
@rtl92e_set_wireless_mode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.rtl92e_set_wireless_mode, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017rtl819xE:%s(), wireless_mode:%x, bEnableHT = 0\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_set_wireless_mode._entry_ptr.26 = internal global ptr @rtl92e_set_wireless_mode._entry.24, section ".printk_index", align 4
@rtl92e_set_wireless_mode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.rtl92e_set_wireless_mode, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017rtl819xE:Current Wireless Mode is %x\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92e_set_wireless_mode._entry_ptr.29 = internal global ptr @rtl92e_set_wireless_mode._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): Driver is already down!\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rtl92e_enable_nic = private unnamed_addr constant [18 x i8] c"rtl92e_enable_nic\00", align 1
@rtl92e_enable_nic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.rtl92e_enable_nic, ptr @.str.2, i32 2579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:===========>%s()\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_enable_nic._entry_ptr = internal global ptr @rtl92e_enable_nic._entry, section ".printk_index", align 4
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): Initialization failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_enable_nic._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.rtl92e_enable_nic, ptr @.str.2, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:start adapter finished\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl92e_enable_nic._entry_ptr.35 = internal global ptr @rtl92e_enable_nic._entry.33, section ".printk_index", align 4
@rtl92e_enable_nic._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @__func__.rtl92e_enable_nic, ptr @.str.2, i32 2593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:<===========%s()\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl92e_enable_nic._entry_ptr.38 = internal global ptr @rtl92e_enable_nic._entry.36, section ".printk_index", align 4
@rtl92e_disable_nic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 2602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017rtl819xE:=========>%s()\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92e_disable_nic\00", [45 x i8] zeroinitializer }, align 32
@rtl92e_disable_nic._entry_ptr = internal global ptr @rtl92e_disable_nic._entry, section ".printk_index", align 4
@rtl92e_disable_nic._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 2611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017rtl819xE:<=========%s()\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92e_disable_nic._entry_ptr.43 = internal global ptr @rtl92e_disable_nic._entry.41, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__UNIQUE_ID_description347 = internal constant [56 x i8] c"description=Linux driver for Realtek RTL819x WiFi cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [88 x i8] c"author=Copyright(c) 2008 - 2010 Realsil Semiconductor Corporation <wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version349 = internal constant [23 x i8] c"version=0014.0401.2010\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [27 x i8] c"firmware=RTL8192E/boot.img\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [27 x i8] c"firmware=RTL8192E/main.img\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [27 x i8] c"firmware=RTL8192E/data.img\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ifname = internal global { ptr, [28 x i8] } { ptr @.str.245, [28 x i8] zeroinitializer }, align 32
@__param_ifname = internal constant %struct.kernel_param { ptr @___asan_gen_.368, ptr @__this_module, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @ifname } }, section "__param", align 4
@__UNIQUE_ID_ifnametype354 = internal constant [22 x i8] c"parmtype=ifname:charp\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_hwwep = internal constant %struct.kernel_param { ptr @___asan_gen_.254, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @hwwep } }, section "__param", align 4
@__UNIQUE_ID_hwweptype355 = internal constant [19 x i8] c"parmtype=hwwep:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ifname356 = internal constant [48 x i8] c"parm=ifname: Net interface name, wlan%d=default\00", section ".modinfo", align 1
@__UNIQUE_ID_hwwep357 = internal constant [92 x i8] c"parm=hwwep: Try to use hardware WEP support(default use hw. set 0 to use software security)\00", section ".modinfo", align 1
@rtl819xp_ops = internal constant { %struct.rtl819x_ops, [48 x i8] } { %struct.rtl819x_ops { i32 1, ptr @rtl92e_get_eeprom_size, ptr @rtl92e_init_variables, ptr null, ptr @rtl92e_start_adapter, ptr @rtl92e_link_change, ptr @rtl92e_fill_tx_desc, ptr @rtl92e_fill_tx_cmd_desc, ptr @rtl92e_get_rx_stats, ptr null, ptr @rtl92e_stop_adapter, ptr @rtl92e_update_ratr_table, ptr @rtl92e_enable_irq, ptr @rtl92e_disable_irq, ptr @rtl92e_clear_irq, ptr @rtl92e_enable_rx, ptr @rtl92e_enable_tx, ptr @rtl92e_ack_irq, ptr @rtl92e_is_tx_stuck, ptr @rtl92e_is_rx_stuck }, [48 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_rtl92e_sta_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017rtl819xE:Bringing up iface\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_rtl92e_sta_up\00", [17 x i8] zeroinitializer }, align 32
@_rtl92e_sta_up._entry_ptr = internal global ptr @_rtl92e_sta_up._entry, section ".printk_index", align 4
@_rtl92e_sta_up._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.45, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_sta_up._entry_ptr.47 = internal global ptr @_rtl92e_sta_up._entry.46, section ".printk_index", align 4
@rtl8192_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.49, ptr @rtl8192_pci_id_tbl, ptr @_rtl92e_pci_probe, ptr @_rtl92e_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl92e_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192e_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtl819xE\00", [23 x i8] zeroinitializer }, align 32
@rtl92e_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl92e_suspend, ptr @rtl92e_resume, ptr @rtl92e_suspend, ptr @rtl92e_resume, ptr @rtl92e_suspend, ptr @rtl92e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017rtl819xE:Configuring chip resources\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtl92e_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr = internal global ptr @_rtl92e_pci_probe._entry, section ".printk_index", align 4
@_rtl92e_pci_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 2408, ptr @.str.54, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable PCI device\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.56 = internal global ptr @_rtl92e_pci_probe._entry.52, section ".printk_index", align 4
@_rtl92e_pci_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.51, ptr @.str.2, i32 2417, ptr @.str.59, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to obtain 32bit DMA for consistent allocations\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.60 = internal global ptr @_rtl92e_pci_probe._entry.57, section ".printk_index", align 4
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"region #1 not a MMIO resource, aborting\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.51, ptr @.str.2, i32 2449, ptr @.str.59, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Memory mapped space start: 0x%08lx\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.64 = internal global ptr @_rtl92e_pci_probe._entry.62, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request_mem_region failed!\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed!\00", [16 x i8] zeroinitializer }, align 32
@rtl8192_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @_rtl92e_open, ptr @_rtl92e_close, ptr @rtllib_xmit, ptr null, ptr null, ptr null, ptr @_rtl92e_set_multicast, ptr @_rtl92e_set_mac_adr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_rtl92e_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@r8192_wx_handlers_def = external dso_local constant %struct.iw_handler_def, align 4
@rtl819x_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 1
@_rtl92e_pci_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.2, i32 2488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017rtl819xE:Oops: devname already taken! Trying wlan%%d...\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.69 = internal global ptr @_rtl92e_pci_probe._entry.67, section ".printk_index", align 4
@_rtl92e_pci_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.51, ptr @.str.2, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017rtl819xE:Driver probe completed1\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.72 = internal global ptr @_rtl92e_pci_probe._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Initialization failed\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.51, ptr @.str.2, i32 2503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017rtl819xE:dev name: %s\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.76 = internal global ptr @_rtl92e_pci_probe._entry.74, section ".printk_index", align 4
@_rtl92e_pci_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.51, ptr @.str.2, i32 2508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:Driver probe completed\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_pci_probe._entry_ptr.79 = internal global ptr @_rtl92e_pci_probe._entry.77, section ".printk_index", align 4
@_rtl92e_sta_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017rtl819xE:==========>%s()\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl92e_sta_down\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_sta_down._entry_ptr = internal global ptr @_rtl92e_sta_down._entry, section ".printk_index", align 4
@_rtl92e_sta_down._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017rtl819xE:===>%s():RF is in progress, need to wait until rf change is done.\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@_rtl92e_sta_down._entry_ptr.84 = internal global ptr @_rtl92e_sta_down._entry.82, section ".printk_index", align 4
@_rtl92e_sta_down._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017rtl819xE:<==========%s()\0A\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92e_sta_down._entry_ptr.87 = internal global ptr @_rtl92e_sta_down._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TXTIMEOUT\00", [22 x i8] zeroinitializer }, align 32
@_rtl92e_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&priv->watch_dog_timer)\00", [39 x i8] zeroinitializer }, align 32
@_rtl92e_init.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&priv->gpio_polling_timer)\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error allocating IRQ %d\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017rtl819xE:IRQ %d\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_rtl92e_init\00", [19 x i8] zeroinitializer }, align 32
@_rtl92e_init._entry_ptr = internal global ptr @_rtl92e_init._entry, section ".printk_index", align 4
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Endopoints initialization failed\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Nic is disabled! Can't tx packet.\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__._rtl92e_tx = private unnamed_addr constant [11 x i8] c"_rtl92e_tx\00", align 1
@.str.97 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"No more TX desc@%d, ring->idx = %d, idx = %d, skblen = 0x%x queuelen=%d\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_set_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:=====>%s()====ch:%d\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl92e_set_chan\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_set_chan._entry_ptr = internal global ptr @_rtl92e_set_chan._entry, section ".printk_index", align 4
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): queue index == TXCMD_QUEUE\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__._rtl92e_hard_data_xmit = private unnamed_addr constant [23 x i8] c"_rtl92e_hard_data_xmit\00", align 1
@def_qos_parameters = internal constant { %struct.rtllib_qos_parameters, [32 x i8] } { %struct.rtllib_qos_parameters { [4 x i16] [i16 768, i16 768, i16 768, i16 768], [4 x i16] [i16 1792, i16 1792, i16 1792, i16 1792], [4 x i8] c"\02\02\02\02", [4 x i8] zeroinitializer, [4 x i16] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@_rtl92e_qos_assoc_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:%s: network->flags = %d,%d\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_qos_assoc_resp\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_qos_assoc_resp._entry_ptr = internal global ptr @_rtl92e_qos_assoc_resp._entry, section ".printk_index", align 4
@_rtl92e_qos_handle_probe_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017rtl819xE:QoS parameters change call qos_activate\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"_rtl92e_qos_handle_probe_response\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_qos_handle_probe_response._entry_ptr = internal global ptr @_rtl92e_qos_handle_probe_response._entry, section ".printk_index", align 4
@_rtl92e_qos_handle_probe_response._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017rtl819xE:QoS was disabled call qos_activate\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_qos_handle_probe_response._entry_ptr.107 = internal global ptr @_rtl92e_qos_handle_probe_response._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"===>tx queue is not empty:%d, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rtl8192e: Unable to allocate space for firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.112 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->irq_th_lock\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.114 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->rf_ps_lock\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.116 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->ps_lock\00", [17 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.118 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->wx_mutex\00", [16 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.120 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->rf_mutex\00", [16 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_lock.__key.122 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->reset_wq)\00", [61 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.125 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&priv->rtllib->ips_leave_wq)\00", [49 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->watch_dog_wq)->work)\00", [48 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.129 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->watch_dog_wq)->timer\00", [34 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.131 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.132 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&priv->txpower_tracking_wq)->work)\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.133 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&priv->txpower_tracking_wq)->timer\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.135 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&priv->rfpath_check_wq)->work)\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.137 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&priv->rfpath_check_wq)->timer\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.139 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&priv->update_beacon_wq)->work)\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.141 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&priv->update_beacon_wq)->timer\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.143 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->qos_activate)\00", [57 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.145 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&priv->rtllib->hw_wakeup_wq)->work)\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.147 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&priv->rtllib->hw_wakeup_wq)->timer\00", [58 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.149 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&priv->rtllib->hw_sleep_wq)->work)\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_init_priv_task.__key.151 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&priv->rtllib->hw_sleep_wq)->timer\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb.check_reset_cnt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@_rtl92e_watchdog_wq_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017rtl819xE:====================>haha: rtl92e_ips_enter()\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_watchdog_wq_cb\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb._entry_ptr = internal global ptr @_rtl92e_watchdog_wq_cb._entry, section ".printk_index", align 4
@_rtl92e_watchdog_wq_cb._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017rtl819xE:====>no link LPS leave\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb._entry_ptr.157 = internal global ptr @_rtl92e_watchdog_wq_cb._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): RF is off\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"===>%s(): AP is power off, chan:%d, connect another one\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.154, ptr @.str.2, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:%s(): NOMAL RESET\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb._entry_ptr.162 = internal global ptr @_rtl92e_watchdog_wq_cb._entry.160, section ".printk_index", align 4
@_rtl92e_watchdog_wq_cb._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.154, ptr @.str.2, i32 1513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017rtl819xE: <==RtUsbCheckForHangWorkItemCallback()\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@_rtl92e_watchdog_wq_cb._entry_ptr.165 = internal global ptr @_rtl92e_watchdog_wq_cb._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): TxResetType is %d, RxResetType is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__._rtl92e_if_check_reset = private unnamed_addr constant [23 x i8] c"_rtl92e_if_check_reset\00", align 1
@.str.167 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: QueueID=%d tcb_desc->nStuckCount=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__._rtl92e_tx_check_stuck = private unnamed_addr constant [23 x i8] c"_rtl92e_tx_check_stuck\00", align 1
@_rtl92e_tx_check_stuck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @__func__._rtl92e_tx_check_stuck, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017rtl819xE:TxCheckStuck(): Fw indicates no Tx condition!\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_tx_check_stuck._entry_ptr = internal global ptr @_rtl92e_tx_check_stuck._entry, section ".printk_index", align 4
@_rtl92e_rx_check_stuck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:RxStuck Condition\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_rx_check_stuck\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_rx_check_stuck._entry_ptr = internal global ptr @_rtl92e_rx_check_stuck._entry, section ".printk_index", align 4
@_rtl92e_if_silent_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:=========>Reset progress!!\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_rtl92e_if_silent_reset\00", [40 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr = internal global ptr @_rtl92e_if_silent_reset._entry, section ".printk_index", align 4
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s():the driver is not up.\0A\00", [36 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.172, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017rtl819xE:%s():======>start to down the driver\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.176 = internal global ptr @_rtl92e_if_silent_reset._entry.174, section ".printk_index", align 4
@_rtl92e_if_silent_reset._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.172, ptr @.str.2, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017rtl819xE:%s():111111111111111111111111======>start to down the driver\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.179 = internal global ptr @_rtl92e_if_silent_reset._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ieee->state is RTLLIB_LINKED\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ieee->state is NOT LINKED\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.172, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017rtl819xE:%s():<==========down process is finished\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.184 = internal global ptr @_rtl92e_if_silent_reset._entry.182, section ".printk_index", align 4
@_rtl92e_if_silent_reset._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.172, ptr @.str.2, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017rtl819xE:%s():<===========up process start\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.187 = internal global ptr @_rtl92e_if_silent_reset._entry.185, section ".printk_index", align 4
@_rtl92e_if_silent_reset._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.172, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017rtl819xE:%s():<===========up process is finished\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.190 = internal global ptr @_rtl92e_if_silent_reset._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s():\09Reset Failed\0A\00", [44 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.172, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:Reset finished!! ====>[%d]\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_if_silent_reset._entry_ptr.194 = internal global ptr @_rtl92e_if_silent_reset._entry.192, section ".printk_index", align 4
@_rtl92e_update_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017rtl819xE:%s(): WLAN_CAPABILITY_SHORT_PREAMBLE\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl92e_update_cap\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_update_cap._entry_ptr = internal global ptr @_rtl92e_update_cap._entry, section ".printk_index", align 4
@_rtl92e_update_cap._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.196, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017rtl819xE:%s(): WLAN_CAPABILITY_LONG_PREAMBLE\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@_rtl92e_update_cap._entry_ptr.199 = internal global ptr @_rtl92e_update_cap._entry.197, section ".printk_index", align 4
@_rtl92e_qos_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017rtl819xE:qos active process with associate response received\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_rtl92e_qos_activate\00", [43 x i8] zeroinitializer }, align 32
@_rtl92e_qos_activate._entry_ptr = internal global ptr @_rtl92e_qos_activate._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.202 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.204 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: unknown rf chip, can't set channel map\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__._rtl92e_get_channel_map = private unnamed_addr constant [24 x i8] c"_rtl92e_get_channel_map\00", align 1
@.str.205 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rtl819x_init:Error channel plan! Set to default.\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl92e_get_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @__func__._rtl92e_get_channel_map, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017rtl819xE:Channel plan is %d\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_get_channel_map._entry_ptr = internal global ptr @_rtl92e_get_channel_map._entry, section ".printk_index", align 4
@_rtl92e_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rtl819xE:beacon ok interrupt!\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_rtl92e_irq\00", [20 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr = internal global ptr @_rtl92e_irq._entry, section ".printk_index", align 4
@_rtl92e_irq._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.2, i32 2287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.210 = internal global ptr @_rtl92e_irq._entry.209, section ".printk_index", align 4
@_rtl92e_irq._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.208, ptr @.str.2, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:beacon interrupt!\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.213 = internal global ptr @_rtl92e_irq._entry.211, section ".printk_index", align 4
@_rtl92e_irq._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.208, ptr @.str.2, i32 2295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017rtl819xE:Manage ok interrupt!\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.216 = internal global ptr @_rtl92e_irq._entry.214, section ".printk_index", align 4
@_rtl92e_irq._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.208, ptr @.str.2, i32 2323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017rtl819xE:prepare beacon for interrupt!\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.219 = internal global ptr @_rtl92e_irq._entry.217, section ".printk_index", align 4
@_rtl92e_irq._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.208, ptr @.str.2, i32 2328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017rtl819xE:rx descriptor unavailable!\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.222 = internal global ptr @_rtl92e_irq._entry.220, section ".printk_index", align 4
@_rtl92e_irq._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.208, ptr @.str.2, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017rtl819xE:rx overflow !\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.225 = internal global ptr @_rtl92e_irq._entry.223, section ".printk_index", align 4
@_rtl92e_irq._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.208, ptr @.str.2, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:BK Tx OK interrupt!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.228 = internal global ptr @_rtl92e_irq._entry.226, section ".printk_index", align 4
@_rtl92e_irq._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.208, ptr @.str.2, i32 2352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:BE TX OK interrupt!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.231 = internal global ptr @_rtl92e_irq._entry.229, section ".printk_index", align 4
@_rtl92e_irq._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.208, ptr @.str.2, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:VI TX OK interrupt!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.234 = internal global ptr @_rtl92e_irq._entry.232, section ".printk_index", align 4
@_rtl92e_irq._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.208, ptr @.str.2, i32 2367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:Vo TX OK interrupt!\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_irq._entry_ptr.237 = internal global ptr @_rtl92e_irq._entry.235, section ".printk_index", align 4
@.str.238 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot allocate RX ring\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92e_pci_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.241, ptr @.str.2, i32 2548, ptr @.str.59, ptr @.str.55 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Freeing irq %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_pci_disconnect\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_pci_disconnect._entry_ptr = internal global ptr @_rtl92e_pci_disconnect._entry, section ".printk_index", align 4
@_rtl92e_pci_disconnect._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.241, ptr @.str.2, i32 2563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017rtl819xE:wlan driver removed\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92e_pci_disconnect._entry_ptr.244 = internal global ptr @_rtl92e_pci_disconnect._entry.242, section ".printk_index", align 4
@.str.245 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@switch.table.rtl92e_set_wireless_mode = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\16\16!\16\16", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.247 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 4, i64 11, i64 12, i64 18, i64 22, i64 24, i64 36, i64 48, i64 72, i64 96, i64 108]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.250 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 7, i64 5, i64 8]
@___asan_gen_.254 = private constant [6 x i8] c"hwwep\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 25, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 147, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 154, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 160, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 167, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 197, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 234, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 247, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 256, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 704, i32 9 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 719, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 723, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 727, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2574, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2579, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2583, i32 20 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2587, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2593, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2602, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2611, i32 2 }
@___asan_gen_.368 = private constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 26, i32 14 }
@___asan_gen_.371 = private unnamed_addr constant [13 x i8] c"rtl819xp_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 29, i32 33 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 745, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 754, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"rtl8192_pci_driver\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 67, i32 26 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2616, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 68, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"rtl92e_pm_ops\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 65, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2405, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2408, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2416, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2444, i32 19 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2448, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2451, i32 19 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2458, i32 19 }
@___asan_gen_.443 = private unnamed_addr constant [19 x i8] c"rtl8192_netdev_ops\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2384, i32 36 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2487, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2492, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2494, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2503, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2508, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 793, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 816, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 832, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 275, i32 19 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1063, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1065, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1070, i32 19 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1075, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1078, i32 19 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1723, i32 20 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1754, i32 8 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 300, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1609, i32 20 }
@___asan_gen_.542 = private unnamed_addr constant [19 x i8] c"def_qos_parameters\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 359, i32 43 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 499, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 429, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 438, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1098, i32 21 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 970, i32 7 }
@___asan_gen_.579 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1984, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 982, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 983, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 984, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 985, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 986, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 987, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 988, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 995, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 996, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 998, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1000, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1002, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1004, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1006, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1007, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1009, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant [16 x i8] c"check_reset_cnt\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1369, i32 12 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1398, i32 5 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1436, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1462, i32 22 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1465, i32 9 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1503, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1513, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1193, i32 20 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1144, i32 10 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1153, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1167, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1217, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1238, i32 21 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1245, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1248, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1263, i32 21 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1271, i32 21 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1278, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1282, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1286, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1293, i32 22 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1336, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 320, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 330, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 392, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.855, i32 326, i32 6 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1025, i32 19 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1032, i32 8 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1035, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2282, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2287, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2292, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2295, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2323, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2328, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2336, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2345, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2352, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2359, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2367, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1788, i32 21 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 1834, i32 20 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2548, i32 4 }
@___asan_gen_.950 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 2563, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.957 = private constant [48 x i8] c"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.957, i32 26, i32 23 }
@___asan_gen_.959 = private unnamed_addr constant [38 x i8] c"switch.table.rtl92e_set_wireless_mode\00", align 1
@llvm.compiler.used = appending global [312 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description347, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_hwwep357, ptr @__UNIQUE_ID_hwweptype355, ptr @__UNIQUE_ID_ifname356, ptr @__UNIQUE_ID_ifnametype354, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_version349, ptr @__param_hwwep, ptr @__param_ifname, ptr @_rtl92e_get_channel_map._entry, ptr @_rtl92e_get_channel_map._entry_ptr, ptr @_rtl92e_if_silent_reset._entry, ptr @_rtl92e_if_silent_reset._entry.174, ptr @_rtl92e_if_silent_reset._entry.177, ptr @_rtl92e_if_silent_reset._entry.182, ptr @_rtl92e_if_silent_reset._entry.185, ptr @_rtl92e_if_silent_reset._entry.188, ptr @_rtl92e_if_silent_reset._entry.192, ptr @_rtl92e_if_silent_reset._entry_ptr, ptr @_rtl92e_if_silent_reset._entry_ptr.176, ptr @_rtl92e_if_silent_reset._entry_ptr.179, ptr @_rtl92e_if_silent_reset._entry_ptr.184, ptr @_rtl92e_if_silent_reset._entry_ptr.187, ptr @_rtl92e_if_silent_reset._entry_ptr.190, ptr @_rtl92e_if_silent_reset._entry_ptr.194, ptr @_rtl92e_init._entry, ptr @_rtl92e_init._entry_ptr, ptr @_rtl92e_irq._entry, ptr @_rtl92e_irq._entry.209, ptr @_rtl92e_irq._entry.211, ptr @_rtl92e_irq._entry.214, ptr @_rtl92e_irq._entry.217, ptr @_rtl92e_irq._entry.220, ptr @_rtl92e_irq._entry.223, ptr @_rtl92e_irq._entry.226, ptr @_rtl92e_irq._entry.229, ptr @_rtl92e_irq._entry.232, ptr @_rtl92e_irq._entry.235, ptr @_rtl92e_irq._entry_ptr, ptr @_rtl92e_irq._entry_ptr.210, ptr @_rtl92e_irq._entry_ptr.213, ptr @_rtl92e_irq._entry_ptr.216, ptr @_rtl92e_irq._entry_ptr.219, ptr @_rtl92e_irq._entry_ptr.222, ptr @_rtl92e_irq._entry_ptr.225, ptr @_rtl92e_irq._entry_ptr.228, ptr @_rtl92e_irq._entry_ptr.231, ptr @_rtl92e_irq._entry_ptr.234, ptr @_rtl92e_irq._entry_ptr.237, ptr @_rtl92e_pci_disconnect._entry, ptr @_rtl92e_pci_disconnect._entry.242, ptr @_rtl92e_pci_disconnect._entry_ptr, ptr @_rtl92e_pci_disconnect._entry_ptr.244, ptr @_rtl92e_pci_probe._entry, ptr @_rtl92e_pci_probe._entry.52, ptr @_rtl92e_pci_probe._entry.57, ptr @_rtl92e_pci_probe._entry.62, ptr @_rtl92e_pci_probe._entry.67, ptr @_rtl92e_pci_probe._entry.70, ptr @_rtl92e_pci_probe._entry.74, ptr @_rtl92e_pci_probe._entry.77, ptr @_rtl92e_pci_probe._entry_ptr, ptr @_rtl92e_pci_probe._entry_ptr.56, ptr @_rtl92e_pci_probe._entry_ptr.60, ptr @_rtl92e_pci_probe._entry_ptr.64, ptr @_rtl92e_pci_probe._entry_ptr.69, ptr @_rtl92e_pci_probe._entry_ptr.72, ptr @_rtl92e_pci_probe._entry_ptr.76, ptr @_rtl92e_pci_probe._entry_ptr.79, ptr @_rtl92e_qos_activate._entry, ptr @_rtl92e_qos_activate._entry_ptr, ptr @_rtl92e_qos_assoc_resp._entry, ptr @_rtl92e_qos_assoc_resp._entry_ptr, ptr @_rtl92e_qos_handle_probe_response._entry, ptr @_rtl92e_qos_handle_probe_response._entry.105, ptr @_rtl92e_qos_handle_probe_response._entry_ptr, ptr @_rtl92e_qos_handle_probe_response._entry_ptr.107, ptr @_rtl92e_rx_check_stuck._entry, ptr @_rtl92e_rx_check_stuck._entry_ptr, ptr @_rtl92e_set_chan._entry, ptr @_rtl92e_set_chan._entry_ptr, ptr @_rtl92e_sta_down._entry, ptr @_rtl92e_sta_down._entry.82, ptr @_rtl92e_sta_down._entry.85, ptr @_rtl92e_sta_down._entry_ptr, ptr @_rtl92e_sta_down._entry_ptr.84, ptr @_rtl92e_sta_down._entry_ptr.87, ptr @_rtl92e_sta_up._entry, ptr @_rtl92e_sta_up._entry.46, ptr @_rtl92e_sta_up._entry_ptr, ptr @_rtl92e_sta_up._entry_ptr.47, ptr @_rtl92e_tx_check_stuck._entry, ptr @_rtl92e_tx_check_stuck._entry_ptr, ptr @_rtl92e_update_cap._entry, ptr @_rtl92e_update_cap._entry.197, ptr @_rtl92e_update_cap._entry_ptr, ptr @_rtl92e_update_cap._entry_ptr.199, ptr @_rtl92e_watchdog_wq_cb._entry, ptr @_rtl92e_watchdog_wq_cb._entry.155, ptr @_rtl92e_watchdog_wq_cb._entry.160, ptr @_rtl92e_watchdog_wq_cb._entry.163, ptr @_rtl92e_watchdog_wq_cb._entry_ptr, ptr @_rtl92e_watchdog_wq_cb._entry_ptr.157, ptr @_rtl92e_watchdog_wq_cb._entry_ptr.162, ptr @_rtl92e_watchdog_wq_cb._entry_ptr.165, ptr @rtl92e_disable_nic._entry, ptr @rtl92e_disable_nic._entry.41, ptr @rtl92e_disable_nic._entry_ptr, ptr @rtl92e_disable_nic._entry_ptr.43, ptr @rtl92e_enable_nic._entry, ptr @rtl92e_enable_nic._entry.33, ptr @rtl92e_enable_nic._entry.36, ptr @rtl92e_enable_nic._entry_ptr, ptr @rtl92e_enable_nic._entry_ptr.35, ptr @rtl92e_enable_nic._entry_ptr.38, ptr @rtl92e_set_rf_state._entry, ptr @rtl92e_set_rf_state._entry.10, ptr @rtl92e_set_rf_state._entry.13, ptr @rtl92e_set_rf_state._entry.16, ptr @rtl92e_set_rf_state._entry.19, ptr @rtl92e_set_rf_state._entry.3, ptr @rtl92e_set_rf_state._entry.6, ptr @rtl92e_set_rf_state._entry_ptr, ptr @rtl92e_set_rf_state._entry_ptr.12, ptr @rtl92e_set_rf_state._entry_ptr.15, ptr @rtl92e_set_rf_state._entry_ptr.18, ptr @rtl92e_set_rf_state._entry_ptr.21, ptr @rtl92e_set_rf_state._entry_ptr.5, ptr @rtl92e_set_rf_state._entry_ptr.8, ptr @rtl92e_set_wireless_mode._entry, ptr @rtl92e_set_wireless_mode._entry.24, ptr @rtl92e_set_wireless_mode._entry.27, ptr @rtl92e_set_wireless_mode._entry_ptr, ptr @rtl92e_set_wireless_mode._entry_ptr.26, ptr @rtl92e_set_wireless_mode._entry_ptr.29, ptr @hwwep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @ifname, ptr @rtl819xp_ops, ptr @.str.44, ptr @.str.45, ptr @rtl8192_pci_driver, ptr @.str.48, ptr @.str.49, ptr @rtl92e_pm_ops, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @rtl8192_netdev_ops, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @_rtl92e_init.__key, ptr @.str.89, ptr @_rtl92e_init.__key.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @def_qos_parameters, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @skb_queue_head_init.__key, ptr @.str.110, ptr @_rtl92e_init_priv_lock.__key, ptr @.str.111, ptr @_rtl92e_init_priv_lock.__key.112, ptr @.str.113, ptr @_rtl92e_init_priv_lock.__key.114, ptr @.str.115, ptr @_rtl92e_init_priv_lock.__key.116, ptr @.str.117, ptr @_rtl92e_init_priv_lock.__key.118, ptr @.str.119, ptr @_rtl92e_init_priv_lock.__key.120, ptr @.str.121, ptr @_rtl92e_init_priv_lock.__key.122, ptr @.str.123, ptr @_rtl92e_init_priv_task.__key, ptr @.str.124, ptr @_rtl92e_init_priv_task.__key.125, ptr @.str.126, ptr @_rtl92e_init_priv_task.__key.127, ptr @.str.128, ptr @_rtl92e_init_priv_task.__key.129, ptr @.str.130, ptr @_rtl92e_init_priv_task.__key.131, ptr @.str.132, ptr @_rtl92e_init_priv_task.__key.133, ptr @.str.134, ptr @_rtl92e_init_priv_task.__key.135, ptr @.str.136, ptr @_rtl92e_init_priv_task.__key.137, ptr @.str.138, ptr @_rtl92e_init_priv_task.__key.139, ptr @.str.140, ptr @_rtl92e_init_priv_task.__key.141, ptr @.str.142, ptr @_rtl92e_init_priv_task.__key.143, ptr @.str.144, ptr @_rtl92e_init_priv_task.__key.145, ptr @.str.146, ptr @_rtl92e_init_priv_task.__key.147, ptr @.str.148, ptr @_rtl92e_init_priv_task.__key.149, ptr @.str.150, ptr @_rtl92e_init_priv_task.__key.151, ptr @.str.152, ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.243, ptr @.str.245, ptr @switch.table.rtl92e_set_wireless_mode], section "llvm.metadata"
@0 = internal global [236 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwwep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_rf_state._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_wireless_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_wireless_mode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_set_wireless_mode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_enable_nic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_enable_nic._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_enable_nic._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_disable_nic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_disable_nic._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifname to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl819xp_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_sta_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_sta_up._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92e_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_sta_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_sta_down._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_sta_down._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_set_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_qos_parameters to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_qos_assoc_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_qos_handle_probe_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_qos_handle_probe_response._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_lock.__key.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_init_priv_task.__key.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_watchdog_wq_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_watchdog_wq_cb._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_watchdog_wq_cb._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_watchdog_wq_cb._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_tx_check_stuck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_rx_check_stuck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_if_silent_reset._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_update_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_update_cap._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_qos_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_get_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_irq._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_pci_disconnect._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92e_set_wireless_mode to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pci__rtl8192_pci_id_tbl_device_table = dso_local alias [4 x %struct.pci_device_id], ptr @rtl8192_pci_id_tbl

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92e_readb(ptr nocapture noundef readonly %dev, i32 noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %x
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !473
  ret i8 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92e_readl(ptr nocapture noundef readonly %dev, i32 noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %x
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !474
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rtl92e_readw(ptr nocapture noundef readonly %dev, i32 noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %x
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #11, !srcloc !476
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !477
  ret i16 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_writeb(ptr nocapture noundef readonly %dev, i32 noundef %x, i8 noundef zeroext %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !478
  tail call void @arm_heavy_mb() #11
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_start, align 4
  %2 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 %x
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %y) #11, !srcloc !479
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_writel(ptr nocapture noundef readonly %dev, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !480
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %y)
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mem_start, align 4
  %3 = inttoptr i32 %2 to ptr
  %add.ptr = getelementptr i8, ptr %3, i32 %x
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #11, !srcloc !481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_writew(ptr nocapture noundef readonly %dev, i32 noundef %x, i16 noundef zeroext %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !482
  tail call void @arm_heavy_mb() #11
  %0 = tail call i16 @llvm.bswap.i16(i16 %y)
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mem_start, align 4
  %3 = inttoptr i32 %2 to ptr
  %add.ptr = getelementptr i8, ptr %3, i32 %x
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #11, !srcloc !483
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_set_rf_state(ptr noundef %dev, i32 noundef %StateToSet, i32 noundef %ChangeSource) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %StateToSet) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %rf_ps_lock = getelementptr i8, ptr %dev, i32 32024
  %call9281 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #11
  %RFChangeInProgress = getelementptr i8, ptr %dev, i32 36010
  %3 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %RFChangeInProgress, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not282 = icmp eq i8 %4, 0
  br i1 %tobool14.not282, label %do.end4.if.else_crit_edge, label %do.end4.if.then15_crit_edge

do.end4.if.then15_crit_edge:                      ; preds = %do.end4
  br label %if.then15

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

while.cond.loopexit:                              ; preds = %while.cond29
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #11
  %5 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %RFChangeInProgress, align 2, !range !484
  %tobool14.not = icmp eq i8 %6, 0
  br i1 %tobool14.not, label %while.cond.loopexit.if.else_crit_edge, label %while.cond.loopexit.if.then15_crit_edge

while.cond.loopexit.if.then15_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

while.cond.loopexit.if.else_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then15:                                        ; preds = %while.cond.loopexit.if.then15_crit_edge, %do.end4.if.then15_crit_edge
  %call9284 = phi i32 [ %call9, %while.cond.loopexit.if.then15_crit_edge ], [ %call9281, %do.end4.if.then15_crit_edge ]
  %RFWaitCounter.0283 = phi i16 [ %RFWaitCounter.1, %while.cond.loopexit.if.then15_crit_edge ], [ 0, %do.end4.if.then15_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call9284) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and18 = and i32 %7, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then15.while.cond29.preheader_crit_edge, label %do.end23

if.then15.while.cond29.preheader_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond29.preheader

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %StateToSet) #14
  br label %while.cond29.preheader

while.cond29.preheader:                           ; preds = %do.end23, %if.then15.while.cond29.preheader_crit_edge
  br label %while.cond29

while.cond29:                                     ; preds = %do.end45.while.cond29_crit_edge, %while.cond29.preheader
  %RFWaitCounter.1 = phi i16 [ %inc, %do.end45.while.cond29_crit_edge ], [ %RFWaitCounter.0283, %while.cond29.preheader ]
  %8 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %RFChangeInProgress, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool31.not = icmp eq i8 %9, 0
  br i1 %tobool31.not, label %while.cond.loopexit, label %while.body32

while.body32:                                     ; preds = %while.cond29
  %inc = add i16 %RFWaitCounter.1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  %and34 = and i32 %10, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %while.body32.do.end45_crit_edge, label %do.end39

while.body32.do.end45_crit_edge:                  ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end39:                                         ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #13
  %conv41 = zext i16 %inc to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %conv41) #14
  br label %do.end45

do.end45:                                         ; preds = %do.end39, %while.body32.do.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  %cmp47 = icmp ugt i16 %inc, 100
  br i1 %cmp47, label %if.then49, label %do.end45.while.cond29_crit_edge

do.end45.while.cond29_crit_edge:                  ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond29

if.then49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.else:                                          ; preds = %while.cond.loopexit.if.else_crit_edge, %do.end4.if.else_crit_edge
  %call9.lcssa = phi i32 [ %call9281, %do.end4.if.else_crit_edge ], [ %call9, %while.cond.loopexit.if.else_crit_edge ]
  %12 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %RFChangeInProgress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call9.lcssa) #11
  %13 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eRFPowerState, align 4
  %17 = zext i32 %StateToSet to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %StateToSet, label %if.else.do.body167_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb94
    i32 1, label %sw.bb131
  ]

if.else.do.body167_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body167

sw.bb:                                            ; preds = %if.else
  %neg = xor i32 %ChangeSource, -1
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 24
  %18 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %RfOffReason, align 8
  %and57 = and i32 %19, %neg
  store i32 %and57, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %ChangeSource)
  %cmp58 = icmp eq i32 %ChangeSource, 1073741824
  br i1 %cmp58, label %land.lhs.true, label %sw.bb.if.end64_crit_edge

sw.bb.if.end64_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

land.lhs.true:                                    ; preds = %sw.bb
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %20 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bHwRadioOff, align 8, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool60.not = icmp eq i8 %21, 0
  br i1 %tobool60.not, label %land.lhs.true.if.end64_crit_edge, label %if.then62

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bHwRadioOff, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true.if.end64_crit_edge, %sw.bb.if.end64_crit_edge
  %23 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtllib, align 8
  %RfOffReason66 = getelementptr inbounds %struct.rtllib_device, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %RfOffReason66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %RfOffReason66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool67.not = icmp eq i32 %26, 0
  br i1 %tobool67.not, label %if.then68, label %do.body79

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %RfOffReason66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %RfOffReason66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp71 = icmp ne i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %ChangeSource)
  %cmp74 = icmp ult i32 %ChangeSource, 1073741824
  %phi.bo = or i1 %cmp74, %cmp71
  br label %do.body137

do.body79:                                        ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %28 = load i32, ptr @rt_global_debug_component, align 4
  %and80 = and i32 %28, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body79.do.body167_crit_edge, label %do.end85

do.body79.do.body167_crit_edge:                   ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body167

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #13
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef %ChangeSource) #14
  br label %do.body167

sw.bb94:                                          ; preds = %if.else
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 56
  %29 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iw_mode, align 8
  %.off = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then102, label %sw.bb94.if.end120_crit_edge

sw.bb94.if.end120_crit_edge:                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then102:                                       ; preds = %sw.bb94
  %RfOffReason104 = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 24
  %31 = ptrtoint ptr %RfOffReason104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %RfOffReason104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %32)
  %cmp105 = icmp ugt i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %ChangeSource)
  %cmp108 = icmp ugt i32 %ChangeSource, 268435456
  %or.cond270 = or i1 %cmp108, %cmp105
  br i1 %or.cond270, label %if.then110, label %if.then102.if.end128_crit_edge

if.then102.if.end128_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then110:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp111 = icmp eq i32 %34, 5
  %spec.select = zext i1 %cmp111 to i8
  %35 = getelementptr i8, ptr %dev, i32 35741
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select, ptr %35, align 1
  %call118 = tail call zeroext i1 @rtllib_MgntDisconnect(ptr noundef %14, i8 noundef zeroext 8) #11
  br label %if.end120

if.end120:                                        ; preds = %if.then110, %sw.bb94.if.end120_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %ChangeSource)
  %cmp121 = icmp eq i32 %ChangeSource, 1073741824
  br i1 %cmp121, label %land.lhs.true123, label %if.end120.if.end128_crit_edge

if.end120.if.end128_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

land.lhs.true123:                                 ; preds = %if.end120
  %bHwRadioOff124 = getelementptr i8, ptr %dev, i32 35740
  %37 = ptrtoint ptr %bHwRadioOff124 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bHwRadioOff124, align 8, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool125.not = icmp eq i8 %38, 0
  br i1 %tobool125.not, label %if.then126, label %land.lhs.true123.if.end128_crit_edge

land.lhs.true123.if.end128_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then126:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %bHwRadioOff124 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %bHwRadioOff124, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %land.lhs.true123.if.end128_crit_edge, %if.end120.if.end128_crit_edge, %if.then102.if.end128_crit_edge
  %40 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtllib, align 8
  %RfOffReason130 = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 24
  %42 = ptrtoint ptr %RfOffReason130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %RfOffReason130, align 8
  %or = or i32 %43, %ChangeSource
  store i32 %or, ptr %RfOffReason130, align 8
  br label %do.body137

sw.bb131:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %RfOffReason133 = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 24
  %44 = ptrtoint ptr %RfOffReason133 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %RfOffReason133, align 8
  %or134 = or i32 %45, %ChangeSource
  store i32 %or134, ptr %RfOffReason133, align 8
  br label %do.body137

do.body137:                                       ; preds = %sw.bb131, %if.end128, %if.then68
  %bConnectBySSID.0.off0.ph = phi i1 [ %phi.bo, %if.then68 ], [ true, %if.end128 ], [ true, %sw.bb131 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %46 = load i32, ptr @rt_global_debug_component, align 4
  %and138 = and i32 %46, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %do.body137.do.end150_crit_edge, label %do.end143

do.body137.do.end150_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end150

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtllib, align 8
  %RfOffReason146 = getelementptr inbounds %struct.rtllib_device, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %RfOffReason146 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %RfOffReason146, align 8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %StateToSet, i32 noundef %50) #14
  br label %do.end150

do.end150:                                        ; preds = %do.end143, %do.body137.do.end150_crit_edge
  %call151 = tail call zeroext i1 @rtl92e_set_rf_power_state(ptr noundef %dev, i32 noundef %StateToSet) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %StateToSet)
  %cmp152 = icmp ne i32 %StateToSet, 0
  %brmerge = or i1 %cmp152, %bConnectBySSID.0.off0.ph
  br i1 %brmerge, label %do.end150.do.body183_crit_edge, label %land.lhs.true157

do.end150.do.body183_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183

land.lhs.true157:                                 ; preds = %do.end150
  %blinked_ingpio158 = getelementptr i8, ptr %dev, i32 35741
  %51 = ptrtoint ptr %blinked_ingpio158 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %blinked_ingpio158, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool159.not = icmp eq i8 %52, 0
  br i1 %tobool159.not, label %land.lhs.true157.do.body183_crit_edge, label %if.then161

land.lhs.true157.do.body183_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183

if.then161:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  %associate_procedure_wq = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %associate_procedure_wq, i32 noundef 0) #11
  %54 = ptrtoint ptr %blinked_ingpio158 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %blinked_ingpio158, align 1
  br label %do.body183

do.body167:                                       ; preds = %do.end85, %do.body79.do.body167_crit_edge, %if.else.do.body167_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %55 = load i32, ptr @rt_global_debug_component, align 4
  %and168 = and i32 %55, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.body167.do.body183_crit_edge, label %do.end173

do.body167.do.body183_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rtllib, align 8
  %RfOffReason176 = getelementptr inbounds %struct.rtllib_device, ptr %57, i32 0, i32 24
  %58 = ptrtoint ptr %RfOffReason176 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %RfOffReason176, align 8
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef %StateToSet, i32 noundef %ChangeSource, i32 noundef %59) #14
  br label %do.body183

do.body183:                                       ; preds = %do.end173, %do.body167.do.body183_crit_edge, %if.then161, %land.lhs.true157.do.body183_crit_edge, %do.end150.do.body183_crit_edge
  %bActionAllowed.0.off0275 = phi i1 [ true, %do.end150.do.body183_crit_edge ], [ false, %do.body167.do.body183_crit_edge ], [ false, %do.end173 ], [ true, %if.then161 ], [ true, %land.lhs.true157.do.body183_crit_edge ]
  %call191 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #11
  %60 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %RFChangeInProgress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call191) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %61 = load i32, ptr @rt_global_debug_component, align 4
  %and199 = and i32 %61, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body183.cleanup_crit_edge, label %do.end204

do.body183.cleanup_crit_edge:                     ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end204:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #13
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end204, %do.body183.cleanup_crit_edge, %if.then49
  %retval.0 = phi i1 [ false, %if.then49 ], [ %bActionAllowed.0.off0275, %do.end204 ], [ %bActionAllowed.0.off0275, %do.body183.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtllib_MgntDisconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_set_rf_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_irq_enable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr i8, ptr %dev, i32 30792
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %irq_enabled, align 4
  %ops = getelementptr i8, ptr %dev, i32 31312
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %irq_enable = getelementptr inbounds %struct.rtl819x_ops, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %irq_enable, align 4
  tail call void %4(ptr noundef %dev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_irq_disable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 31312
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %irq_disable = getelementptr inbounds %struct.rtl819x_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %irq_disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_disable, align 4
  tail call void %3(ptr noundef %dev) #11
  %irq_enabled = getelementptr i8, ptr %dev, i32 30792
  %4 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_config_rate(ptr nocapture noundef readonly %dev, ptr noundef %rate_config) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %rates_len = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 19
  %2 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rates_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp148.not = icmp eq i8 %3, 0
  br i1 %cmp148.not, label %entry.for.cond52.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond52.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.inc.for.cond52.preheader_crit_edge, %entry.for.cond52.preheader_crit_edge
  %rates_ex_len = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 21
  %4 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rates_ex_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp55150.not = icmp eq i8 %5, 0
  br i1 %cmp55150.not, label %for.cond52.preheader.for.end115_crit_edge, label %for.cond52.preheader.for.body57_crit_edge

for.cond52.preheader.for.body57_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body57

for.cond52.preheader.for.end115_crit_edge:        ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end115

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 18, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 127
  %conv5 = zext i8 %8 to i32
  %9 = zext i32 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %conv5, label %for.body.for.inc_crit_edge [
    i32 2, label %for.body.for.inc.sink.split_crit_edge
    i32 4, label %sw.bb8
    i32 11, label %sw.bb12
    i32 22, label %sw.bb16
    i32 12, label %sw.bb20
    i32 18, label %sw.bb24
    i32 24, label %sw.bb28
    i32 36, label %sw.bb32
    i32 48, label %sw.bb36
    i32 72, label %sw.bb40
    i32 96, label %sw.bb44
    i32 108, label %sw.bb48
  ]

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb20:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb28:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb44:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

sw.bb48:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb36, %sw.bb32, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %for.body.for.inc.sink.split_crit_edge
  %.sink155 = phi i16 [ 2, %sw.bb8 ], [ 4, %sw.bb12 ], [ 8, %sw.bb16 ], [ 16, %sw.bb20 ], [ 32, %sw.bb24 ], [ 64, %sw.bb28 ], [ 128, %sw.bb32 ], [ 256, %sw.bb36 ], [ 512, %sw.bb40 ], [ 1024, %sw.bb44 ], [ 2048, %sw.bb48 ], [ 1, %for.body.for.inc.sink.split_crit_edge ]
  %10 = ptrtoint ptr %rate_config to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rate_config, align 2
  %12 = or i16 %11, %.sink155
  store i16 %12, ptr %rate_config, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %13 = ptrtoint ptr %rates_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rates_len, align 2
  %15 = zext i8 %14 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond52.preheader_crit_edge

for.inc.for.cond52.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond52.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body57:                                       ; preds = %for.inc113.for.body57_crit_edge, %for.cond52.preheader.for.body57_crit_edge
  %indvars.iv152 = phi i32 [ %indvars.iv.next153, %for.inc113.for.body57_crit_edge ], [ 0, %for.cond52.preheader.for.body57_crit_edge ]
  %arrayidx59 = getelementptr %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 20, i32 %indvars.iv152
  %16 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx59, align 1
  %18 = and i8 %17, 127
  %conv63 = zext i8 %18 to i32
  %19 = zext i32 %conv63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %conv63, label %for.body57.for.inc113_crit_edge [
    i32 2, label %for.body57.for.inc113.sink.split_crit_edge
    i32 4, label %sw.bb68
    i32 11, label %sw.bb72
    i32 22, label %sw.bb76
    i32 12, label %sw.bb80
    i32 18, label %sw.bb84
    i32 24, label %sw.bb88
    i32 36, label %sw.bb92
    i32 48, label %sw.bb96
    i32 72, label %sw.bb100
    i32 96, label %sw.bb104
    i32 108, label %sw.bb108
  ]

for.body57.for.inc113.sink.split_crit_edge:       ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

for.body57.for.inc113_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113

sw.bb68:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb72:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb76:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb80:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb84:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb88:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb92:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb96:                                          ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb100:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb104:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

sw.bb108:                                         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc113.sink.split

for.inc113.sink.split:                            ; preds = %sw.bb108, %sw.bb104, %sw.bb100, %sw.bb96, %sw.bb92, %sw.bb88, %sw.bb84, %sw.bb80, %sw.bb76, %sw.bb72, %sw.bb68, %for.body57.for.inc113.sink.split_crit_edge
  %.sink157 = phi i16 [ 2, %sw.bb68 ], [ 4, %sw.bb72 ], [ 8, %sw.bb76 ], [ 16, %sw.bb80 ], [ 32, %sw.bb84 ], [ 64, %sw.bb88 ], [ 128, %sw.bb92 ], [ 256, %sw.bb96 ], [ 512, %sw.bb100 ], [ 1024, %sw.bb104 ], [ 2048, %sw.bb108 ], [ 1, %for.body57.for.inc113.sink.split_crit_edge ]
  %20 = ptrtoint ptr %rate_config to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rate_config, align 2
  %22 = or i16 %21, %.sink157
  store i16 %22, ptr %rate_config, align 2
  br label %for.inc113

for.inc113:                                       ; preds = %for.inc113.sink.split, %for.body57.for.inc113_crit_edge
  %indvars.iv.next153 = add nuw nsw i32 %indvars.iv152, 1
  %23 = ptrtoint ptr %rates_ex_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rates_ex_len, align 1
  %25 = zext i8 %24 to i32
  %cmp55 = icmp ult i32 %indvars.iv.next153, %25
  br i1 %cmp55, label %for.inc113.for.body57_crit_edge, label %for.inc113.for.end115_crit_edge

for.inc113.for.end115_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end115

for.inc113.for.body57_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.end115:                                       ; preds = %for.inc113.for.end115_crit_edge, %for.cond52.preheader.for.end115_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_set_wireless_mode(ptr noundef %dev, i8 noundef zeroext %wireless_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_chip.i = getelementptr i8, ptr %dev, i32 31416
  %0 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rf_chip.i, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry._rtl92e_get_supported_wireless_mode.exit_crit_edge

entry._rtl92e_get_supported_wireless_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_get_supported_wireless_mode.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl92e_set_wireless_mode, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %3)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_rtl92e_get_supported_wireless_mode.exit

_rtl92e_get_supported_wireless_mode.exit:         ; preds = %switch.lookup, %entry._rtl92e_get_supported_wireless_mode.exit_crit_edge
  %ret.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 2, %entry._rtl92e_get_supported_wireless_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %wireless_mode)
  %cmp = icmp eq i8 %wireless_mode, 8
  %and109 = and i8 %ret.0.i, %wireless_mode
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and109)
  %cmp5 = icmp eq i8 %and109, 0
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %_rtl92e_get_supported_wireless_mode.exit.if.end34_crit_edge

_rtl92e_get_supported_wireless_mode.exit.if.end34_crit_edge: ; preds = %_rtl92e_get_supported_wireless_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %_rtl92e_get_supported_wireless_mode.exit
  %conv7 = zext i8 %ret.0.i to i32
  %and8 = and i32 %conv7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else:                                          ; preds = %if.then
  %and11 = and i32 %conv7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else14:                                        ; preds = %if.else
  %and16 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else19, label %if.else14.if.end34_crit_edge

if.else14.if.end34_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else19:                                        ; preds = %if.else14
  %and21 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else24, label %if.else19.if.end34_crit_edge

if.else19.if.end34_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else24:                                        ; preds = %if.else19
  %and26 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else29, label %if.else24.if.end34_crit_edge

if.else24.if.end34_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rtl92e_set_wireless_mode) #14
  br label %if.end34

if.end34:                                         ; preds = %if.else29, %if.else24.if.end34_crit_edge, %if.else19.if.end34_crit_edge, %if.else14.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then.if.end34_crit_edge, %_rtl92e_get_supported_wireless_mode.exit.if.end34_crit_edge
  %wireless_mode.addr.0 = phi i8 [ 2, %if.else29 ], [ %wireless_mode, %_rtl92e_get_supported_wireless_mode.exit.if.end34_crit_edge ], [ 16, %if.then.if.end34_crit_edge ], [ 32, %if.else.if.end34_crit_edge ], [ 1, %if.else14.if.end34_crit_edge ], [ 4, %if.else19.if.end34_crit_edge ], [ 2, %if.else24.if.end34_crit_edge ]
  %4 = and i8 %wireless_mode.addr.0, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp37 = icmp eq i8 %4, 6
  %spec.store.select = select i1 %cmp37, i8 4, i8 %wireless_mode.addr.0
  %conv41 = zext i8 %spec.store.select to i32
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %5 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtllib, align 8
  %mode = getelementptr inbounds %struct.rtllib_device, ptr %6, i32 0, i32 92
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv41, ptr %mode, align 8
  %8 = zext i8 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.248)
  switch i8 %spec.store.select, label %if.else60 [
    i8 16, label %if.end34.if.then49_crit_edge
    i8 32, label %if.end34.if.then49_crit_edge110
  ]

if.end34.if.then49_crit_edge110:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.end34.if.then49_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.then49:                                        ; preds = %if.end34.if.then49_crit_edge, %if.end34.if.then49_crit_edge110
  %9 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtllib, align 8
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pHTInfo, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %12, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %14 = load i32, ptr @rt_global_debug_component, align 4
  %and51 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then49.do.body78_crit_edge, label %if.then49.do.body78.sink.split_crit_edge

if.then49.do.body78.sink.split_crit_edge:         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78.sink.split

if.then49.do.body78_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

if.else60:                                        ; preds = %if.end34
  %15 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtllib, align 8
  %pHTInfo62 = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %pHTInfo62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pHTInfo62, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %20 = load i32, ptr @rt_global_debug_component, align 4
  %and65 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else60.do.body78_crit_edge, label %if.else60.do.body78.sink.split_crit_edge

if.else60.do.body78.sink.split_crit_edge:         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78.sink.split

if.else60.do.body78_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body78

do.body78.sink.split:                             ; preds = %if.else60.do.body78.sink.split_crit_edge, %if.then49.do.body78.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.23, %if.then49.do.body78.sink.split_crit_edge ], [ @.str.25, %if.else60.do.body78.sink.split_crit_edge ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink, ptr noundef nonnull @__func__.rtl92e_set_wireless_mode, i32 noundef %conv41) #14
  br label %do.body78

do.body78:                                        ; preds = %do.body78.sink.split, %if.else60.do.body78_crit_edge, %if.then49.do.body78_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %21 = load i32, ptr @rt_global_debug_component, align 4
  %and79 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.do.end90_crit_edge, label %do.end84

do.body78.do.end90_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end90

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv41) #14
  br label %do.end90

do.end90:                                         ; preds = %do.end84, %do.body78.do.end90_crit_edge
  %22 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtllib, align 8
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 92
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %25, label %if.else.i [
    i32 16, label %do.end90.if.then.i_crit_edge
    i32 32, label %do.end90.if.then.i_crit_edge111
  ]

do.end90.if.then.i_crit_edge111:                  ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end90.if.then.i_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.end90.if.then.i_crit_edge, %do.end90.if.then.i_crit_edge111
  %Regdot11HTOperationalRateSet.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 29
  %RegHTSuppRateSet.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 32
  %27 = call ptr @memcpy(ptr %Regdot11HTOperationalRateSet.i, ptr %RegHTSuppRateSet.i, i32 16)
  %Regdot11TxHTOperationalRateSet.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 30
  %28 = call ptr @memcpy(ptr %Regdot11TxHTOperationalRateSet.i, ptr %RegHTSuppRateSet.i, i32 16)
  br label %_rtl92e_refresh_support_rate.exit

if.else.i:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  %Regdot11HTOperationalRateSet7.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 29
  %29 = call ptr @memset(ptr %Regdot11HTOperationalRateSet7.i, i32 0, i32 16)
  br label %_rtl92e_refresh_support_rate.exit

_rtl92e_refresh_support_rate.exit:                ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_rx_enable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 31312
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %rx_enable = getelementptr inbounds %struct.rtl819x_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_enable, align 4
  tail call void %3(ptr noundef %dev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_tx_enable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 31312
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tx_enable = getelementptr inbounds %struct.rtl819x_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_enable, align 4
  tail call void %3(ptr noundef %dev) #11
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  tail call void @rtllib_reset_queue(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_reset_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_reset_desc_ring(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %rx_ring = getelementptr i8, ptr %dev, i32 34728
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %for.cond2.preheader

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

for.cond2.preheader:                              ; preds = %entry
  %rxringcount = getelementptr i8, ptr %dev, i32 34996
  %2 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxringcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp369 = icmp sgt i32 %3, 0
  br i1 %cmp369, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.070 = phi i32 [ %inc, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %OWN = getelementptr %struct.rx_desc, ptr %5, i32 %i.070, i32 2
  %6 = ptrtoint ptr %OWN to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %OWN, align 1
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, ptr %OWN, align 1
  %inc = add nuw nsw i32 %i.070, 1
  %7 = ptrtoint ptr %rxringcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxringcount, align 8
  %cmp3 = icmp slt i32 %inc, %8
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end_crit_edge

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.end:                                          ; preds = %for.body4.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %rx_idx = getelementptr i8, ptr %dev, i32 34992
  %9 = ptrtoint ptr %rx_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_idx, align 4
  br label %do.body12

do.body12:                                        ; preds = %for.end, %entry.do.body12_crit_edge
  %irq_th_lock = getelementptr i8, ptr %dev, i32 31936
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #11
  br label %for.body21

for.body21:                                       ; preds = %for.inc39.for.body21_crit_edge, %do.body12
  %i.172 = phi i32 [ 0, %do.body12 ], [ %inc40, %for.inc39.for.body21_crit_edge ]
  %arrayidx22 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.172
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx22, align 8
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %for.body21.for.inc39_crit_edge, label %while.cond.preheader

for.body21.for.inc39_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc39

while.cond.preheader:                             ; preds = %for.body21
  %queue = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.172, i32 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not71 = icmp eq i32 %13, 0
  br i1 %tobool28.not71, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %idx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.172, i32 2
  %entries = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.172, i32 3
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %14 = phi i32 [ %13, %while.body.lr.ph ], [ %39, %__skb_dequeue.exit.while.body_crit_edge ]
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx22, align 4
  %17 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx, align 4
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %20, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %20
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %14, -1
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %22 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %spec.store.select.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %TxBuffAddr = getelementptr %struct.tx_desc, ptr %16, i32 %18, i32 8
  %30 = ptrtoint ptr %TxBuffAddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %TxBuffAddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev34, i32 noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 0) #11
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #11
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  %add = add i32 %35, 1
  %36 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %37
  store i32 %rem, ptr %idx, align 4
  %38 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i, align 4
  %tobool28.not = icmp eq i32 %39, 0
  br i1 %tobool28.not, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %idx37 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.172, i32 2
  %40 = ptrtoint ptr %idx37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %idx37, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %while.end, %for.body21.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %i.172, 1
  %exitcond.not = icmp eq i32 %inc40, 9
  br i1 %exitcond.not, label %for.end41, label %for.inc39.for.body21_crit_edge

for.inc39.for.body21_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

for.end41:                                        ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call15) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92e_update_rx_pkt_timestamp(ptr nocapture noundef %dev, ptr nocapture noundef %stats) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bIsAMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 26
  %0 = ptrtoint ptr %bIsAMPDU to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bIsAMPDU, align 8, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bFirstMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats, i32 0, i32 27
  %2 = ptrtoint ptr %bFirstMPDU to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFirstMPDU, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %LastRxDescTSF = getelementptr i8, ptr %dev, i32 35004
  %4 = ptrtoint ptr %LastRxDescTSF to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %LastRxDescTSF, align 8
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %stats, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats, align 8
  %LastRxDescTSF3 = getelementptr i8, ptr %dev, i32 35004
  %9 = ptrtoint ptr %LastRxDescTSF3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %LastRxDescTSF3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtl92e_translate_to_dbm(ptr nocapture noundef readnone %priv, i8 noundef zeroext %signal_strength_index) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %signal_strength_index to i32
  %add = add nuw nsw i32 %conv, 1
  %0 = lshr i32 %add, 1
  %sub = add nsw i32 %0, -95
  ret i32 %sub
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92e_update_rx_statistics(ptr nocapture noundef %priv, ptr nocapture noundef readonly %pprevious_stats) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_signal_power = getelementptr inbounds %struct.r8192_priv, ptr %priv, i32 0, i32 43, i32 42
  %0 = ptrtoint ptr %recv_signal_power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %recv_signal_power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %RecvSignalPower = getelementptr inbounds %struct.rtllib_rx_stats, ptr %pprevious_stats, i32 0, i32 15
  %2 = ptrtoint ptr %RecvSignalPower to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %RecvSignalPower, align 4
  %4 = ptrtoint ptr %recv_signal_power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %recv_signal_power, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %RecvSignalPower3 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %pprevious_stats, i32 0, i32 15
  %5 = ptrtoint ptr %RecvSignalPower3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %RecvSignalPower3, align 4
  %7 = ptrtoint ptr %recv_signal_power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %recv_signal_power, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6 = icmp sgt i32 %6, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp11 = icmp slt i32 %6, %8
  %spec.select = select i1 %cmp11, i32 -5, i32 0
  %weighting.0 = select i1 %cmp6, i32 5, i32 %spec.select
  %mul = mul i32 %8, 5
  %add = add i32 %mul, %6
  %add18 = add i32 %add, %weighting.0
  %div = sdiv i32 %add18, 6
  %9 = ptrtoint ptr %recv_signal_power to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %recv_signal_power, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl92e_rx_db_to_percent(i8 noundef signext %antpower) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %antpower, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %0)
  %1 = icmp ult i8 %0, -119
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %antpower)
  %cmp6 = icmp sgt i8 %antpower, -1
  %add = add i8 %antpower, 100
  %spec.select = select i1 %cmp6, i8 100, i8 %add
  %retval.0 = select i1 %1, i8 0, i8 %spec.select
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl92e_evm_db_to_percent(i8 noundef signext %value) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %cmp = icmp slt i8 %value, 0
  %conv = sext i8 %value to i32
  %sub = sub nsw i32 0, %conv
  %0 = tail call i32 @llvm.smin.i32(i32 %sub, i32 33)
  %1 = trunc i32 %0 to i8
  %.op = mul i8 %1, 3
  %conv9 = select i1 %cmp, i8 %.op, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %conv9)
  %cmp11 = icmp eq i8 %conv9, 99
  %spec.store.select = select i1 %cmp11, i8 100, i8 %conv9
  ret i8 %spec.store.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92e_copy_mpdu_stats(ptr nocapture noundef readonly %psrc_stats, ptr nocapture noundef writeonly %ptarget_stats) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bIsAMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %psrc_stats, i32 0, i32 26
  %0 = ptrtoint ptr %bIsAMPDU to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bIsAMPDU, align 8, !range !484
  %bIsAMPDU1 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %ptarget_stats, i32 0, i32 26
  %2 = ptrtoint ptr %bIsAMPDU1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %bIsAMPDU1, align 8
  %bFirstMPDU = getelementptr inbounds %struct.rtllib_rx_stats, ptr %psrc_stats, i32 0, i32 27
  %3 = ptrtoint ptr %bFirstMPDU to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bFirstMPDU, align 1, !range !484
  %bFirstMPDU3 = getelementptr inbounds %struct.rtllib_rx_stats, ptr %ptarget_stats, i32 0, i32 27
  %5 = ptrtoint ptr %bFirstMPDU3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bFirstMPDU3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_commit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  tail call void @rtllib_softmac_stop_protocol(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.rtl819x_ops, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_disable.i, align 4
  tail call void %7(ptr noundef %dev) #11
  %irq_enabled.i = getelementptr i8, ptr %dev, i32 30792
  %8 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %irq_enabled.i, align 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %stop_adapter = getelementptr inbounds %struct.rtl819x_ops, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop_adapter, align 4
  tail call void %12(ptr noundef %dev, i1 noundef zeroext true) #11
  %call2 = tail call fastcc i32 @_rtl92e_up(ptr noundef %dev, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_softmac_stop_protocol(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92e_up(ptr noundef %dev, i1 noundef zeroext %is_silent_reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib.i, align 8
  %bDriverIsGoingToUnload.i = getelementptr i8, ptr %dev, i32 30784
  %2 = ptrtoint ptr %bDriverIsGoingToUnload.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bDriverIsGoingToUnload.i, align 4
  %bdisable_nic.i = getelementptr i8, ptr %dev, i32 36012
  %3 = ptrtoint ptr %bdisable_nic.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bdisable_nic.i, align 8
  %up.i = getelementptr i8, ptr %dev, i32 30794
  %4 = ptrtoint ptr %up.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %up.i, align 2
  %ieee_up.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %ieee_up.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ieee_up.i, align 1
  %up_first_time.i = getelementptr i8, ptr %dev, i32 30796
  %6 = ptrtoint ptr %up_first_time.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %up_first_time.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %7 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %bfirst_init.i = getelementptr i8, ptr %dev, i32 30780
  %8 = ptrtoint ptr %bfirst_init.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bfirst_init.i, align 8
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %initialize_adapter.i = getelementptr inbounds %struct.rtl819x_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %initialize_adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %initialize_adapter.i, align 4
  %call6.i = tail call zeroext i1 %12(ptr noundef %dev) #11
  br i1 %call6.i, label %do.body12.i, label %34

do.body12.i:                                      ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and13.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.do.end23.i_crit_edge, label %do.end18.i

do.body12.i.do.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i, %do.body12.i.do.end23.i_crit_edge
  %CurPsLevel.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 9
  %14 = ptrtoint ptr %CurPsLevel.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %CurPsLevel.i, align 4
  %and24.i = and i32 %15, -9
  store i32 %and24.i, ptr %CurPsLevel.i, align 4
  %16 = ptrtoint ptr %bfirst_init.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bfirst_init.i, align 8
  %polling_timer_on.i = getelementptr i8, ptr %dev, i32 35742
  %17 = ptrtoint ptr %polling_timer_on.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %polling_timer_on.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  br i1 %cmp.i, label %if.then27.i, label %do.end23.i.if.end28.i_crit_edge

do.end23.i.if.end28.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then27.i:                                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %gpio_polling_timer.i = getelementptr i8, ptr %dev, i32 31888
  %19 = ptrtoint ptr %polling_timer_on.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %polling_timer_on.i, align 2
  %gpio_change_rf_wq.i.i = getelementptr i8, ptr %dev, i32 31200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %gpio_change_rf_wq.i.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %21, 200
  %call2.i.i = tail call i32 @mod_timer(ptr noundef %gpio_polling_timer.i, i32 noundef %add.i.i) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %do.end23.i.if.end28.i_crit_edge
  %22 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rtllib.i, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 90
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp30.not.i = icmp eq i32 %25, 5
  br i1 %cmp30.not.i, label %if.end28.i.if.end34.i_crit_edge, label %if.then32.i

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtllib_softmac_start_protocol(ptr noundef %23, i8 noundef zeroext 0) #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end28.i.if.end34.i_crit_edge
  %26 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtllib.i, align 8
  tail call void @rtllib_reset_queue(ptr noundef %27) #11
  %watch_dog_timer.i = getelementptr i8, ptr %dev, i32 31792
  %watch_dog_wq.i.i = getelementptr i8, ptr %dev, i32 30900
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i1.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %watch_dog_wq.i.i, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i2.i = add i32 %29, 200
  %call2.i3.i = tail call i32 @mod_timer(ptr noundef %watch_dog_timer.i, i32 noundef %add.i2.i) #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  br label %_rtl92e_sta_up.exit.thread

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_tx_wake_queue(ptr noundef %31) #11
  br label %_rtl92e_sta_up.exit.thread

34:                                               ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.45) #14
  %35 = ptrtoint ptr %bfirst_init.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %bfirst_init.i, align 8
  br label %_rtl92e_sta_up.exit.thread

_rtl92e_sta_up.exit.thread:                       ; preds = %34, %if.else.i, %if.then37.i
  %36 = phi i32 [ -1, %34 ], [ 0, %if.else.i ], [ 0, %if.then37.i ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_enable_nic(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.rtl92e_enable_nic) #14
  %bdisable_nic = getelementptr i8, ptr %dev, i32 36012
  %4 = ptrtoint ptr %bdisable_nic to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bdisable_nic, align 8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %5 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rtl92e_enable_nic) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %bfirst_init = getelementptr i8, ptr %dev, i32 30780
  %6 = ptrtoint ptr %bfirst_init to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bfirst_init, align 8
  %ops = getelementptr i8, ptr %dev, i32 31312
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %initialize_adapter = getelementptr inbounds %struct.rtl819x_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %initialize_adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %initialize_adapter, align 4
  %call8 = tail call zeroext i1 %10(ptr noundef %dev) #11
  br i1 %call8, label %do.body13, label %if.then10

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.rtl92e_enable_nic) #14
  %bdisable_nic11 = getelementptr i8, ptr %dev, i32 36012
  %11 = ptrtoint ptr %bdisable_nic11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bdisable_nic11, align 8
  br label %cleanup

do.body13:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %12 = load i32, ptr @rt_global_debug_component, align 4
  %and14 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end24_crit_edge, label %do.end19

do.body13.do.end24_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.body13.do.end24_crit_edge
  %CurPsLevel = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 9
  %13 = ptrtoint ptr %CurPsLevel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %CurPsLevel, align 4
  %and25 = and i32 %14, -9
  store i32 %and25, ptr %CurPsLevel, align 4
  %15 = ptrtoint ptr %bfirst_init to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bfirst_init, align 8
  %irq_enabled.i = getelementptr i8, ptr %dev, i32 30792
  %16 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %irq_enabled.i, align 4
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %irq_enable.i = getelementptr inbounds %struct.rtl819x_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_enable.i, align 4
  tail call void %20(ptr noundef %dev) #11
  %bdisable_nic27 = getelementptr i8, ptr %dev, i32 36012
  %21 = ptrtoint ptr %bdisable_nic27 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bdisable_nic27, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %22 = load i32, ptr @rt_global_debug_component, align 4
  %and29 = and i32 %22, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end24.cleanup_crit_edge, label %do.end34

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end34:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.rtl92e_enable_nic) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end24.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i1 [ false, %if.then10 ], [ false, %if.then ], [ true, %do.end34 ], [ true, %do.end24.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92e_disable_nic(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %bdisable_nic = getelementptr i8, ptr %dev, i32 36012
  %1 = ptrtoint ptr %bdisable_nic to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %bdisable_nic, align 8
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %state = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 90
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  tail call void @rtllib_softmac_stop_protocol(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %conv6 = and i32 %5, 255
  %6 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtllib, align 8
  %state8 = getelementptr inbounds %struct.rtllib_device, ptr %7, i32 0, i32 90
  %8 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %state8, align 8
  %watch_dog_wq.i = getelementptr i8, ptr %dev, i32 30900
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watch_dog_wq.i) #11
  %update_beacon_wq.i = getelementptr i8, ptr %dev, i32 30800
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_beacon_wq.i) #11
  %9 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtllib, align 8
  %hw_sleep_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 170
  %call2.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hw_sleep_wq.i) #11
  %reset_wq.i = getelementptr i8, ptr %dev, i32 31320
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_wq.i) #11
  %qos_activate.i = getelementptr i8, ptr %dev, i32 35748
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %qos_activate.i) #11
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.rtl819x_ops, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_disable.i, align 4
  tail call void %14(ptr noundef %dev) #11
  %irq_enabled.i = getelementptr i8, ptr %dev, i32 30792
  %15 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %irq_enabled.i, align 4
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %stop_adapter = getelementptr inbounds %struct.rtl819x_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %stop_adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stop_adapter, align 4
  tail call void %19(ptr noundef %dev, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %20 = load i32, ptr @rt_global_debug_component, align 4
  %and10 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end4.do.end20_crit_edge, label %do.end15

do.end4.do.end20_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end15:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #14
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.end4.do.end20_crit_edge
  ret i1 true
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl8192_pci_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.48) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl8192_pci_driver) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92e_check_rfctrl_gpio_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %polling_timer_on = getelementptr i8, ptr %t, i32 3854
  %0 = ptrtoint ptr %polling_timer_on to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %polling_timer_on, align 2
  %gpio_change_rf_wq = getelementptr i8, ptr %t, i32 -688
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %gpio_change_rf_wq, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 200
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_get_eeprom_size(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_init_variables(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_start_adapter(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_link_change(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_fill_tx_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_fill_tx_cmd_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_get_rx_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_stop_adapter(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_update_ratr_table(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_disable_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_clear_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_rx(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_tx(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_ack_irq(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_is_tx_stuck(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_is_rx_stuck(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_softmac_start_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_watchdog_timer_cb(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %watch_dog_wq = getelementptr i8, ptr %t, i32 -892
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %watch_dog_wq, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 200
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %revision_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %revision_id) #11
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %revision_id, align 1, !annotation !485
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.53) #14
  br label %cleanup

if.end11:                                         ; preds = %do.end3
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call13 = tail call i32 @dma_set_mask(ptr noundef %dev12, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then15:                                        ; preds = %if.end11
  %call17 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev12, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.if.end25_crit_edge, label %do.end22

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.58) #14
  br label %err_pci_disable

if.end25:                                         ; preds = %if.then15.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %call26 = tail call ptr @alloc_rtllib(i32 noundef 5448) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.err_pci_disable_crit_edge, label %if.end29

if.end25.err_pci_disable_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pci_disable

if.end29:                                         ; preds = %if.end25
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call26, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev12, ptr %parent, align 8
  %priv.i = getelementptr i8, ptr %call26, i32 30772
  %add.ptr.i.i = getelementptr i8, ptr %call26, i32 2304
  %rtllib = getelementptr i8, ptr %call26, i32 31316
  %7 = ptrtoint ptr %rtllib to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %rtllib, align 8
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %priv.i, align 8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %add.ptr.i.i, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %10 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4486, i16 %11)
  %cmp = icmp eq i16 %11, 4486
  br i1 %cmp, label %land.lhs.true, label %if.end29.if.else_crit_edge

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end29
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %12 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13060, i16 %13)
  %cmp39 = icmp eq i16 %13, 13060
  br i1 %cmp39, label %land.lhs.true.if.end45_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end29.if.else_crit_edge
  br label %if.end45

if.end45:                                         ; preds = %if.else, %land.lhs.true.if.end45_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end45_crit_edge ]
  %bSupportRemoteWakeUp44 = getelementptr i8, ptr %call26, i32 2487
  %14 = ptrtoint ptr %bSupportRemoteWakeUp44 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %bSupportRemoteWakeUp44, align 1
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp48 = icmp eq i32 %18, 0
  %sub = sub i32 1, %16
  %add = add i32 %sub, %18
  %cond = select i1 %cmp48, i32 0, i32 %add
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and58 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %do.end64

if.then60:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call26, ptr noundef nonnull @.str.61) #14
  br label %err_rel_rtllib

do.end64:                                         ; preds = %if.end45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.63, i32 noundef %16) #14
  %call66 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %cond, ptr noundef nonnull @.str.49, i32 noundef 0) #11
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call26, ptr noundef nonnull @.str.65) #14
  br label %err_rel_rtllib

if.end69:                                         ; preds = %do.end64
  %call70 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %cond) #11
  %21 = ptrtoint ptr %call70 to i32
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call26, ptr noundef nonnull @.str.66) #14
  br label %err_rel_mem

if.end74:                                         ; preds = %if.end69
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 4
  %22 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mem_start, align 4
  %end77 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %23 = ptrtoint ptr %end77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp78 = icmp eq i32 %24, 0
  br i1 %cmp78, label %if.end74.cond.end90_crit_edge, label %cond.false81

if.end74.cond.end90_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end90

cond.false81:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource, align 8
  %sub88 = add i32 %24, 1
  %add89 = sub i32 %sub88, %26
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false81, %if.end74.cond.end90_crit_edge
  %cond91 = phi i32 [ %add89, %cond.false81 ], [ 0, %if.end74.cond.end90_crit_edge ]
  %add92 = add i32 %cond91, %21
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 3
  %27 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add92, ptr %mem_end, align 8
  %call93 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %revision_id) #11
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32366, i16 %29)
  %cmp95 = icmp eq i16 %29, -32366
  br i1 %cmp95, label %land.lhs.true97, label %cond.end90.if.end102_crit_edge

cond.end90.if.end102_crit_edge:                   ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

land.lhs.true97:                                  ; preds = %cond.end90
  %30 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %31)
  %cmp99 = icmp eq i8 %31, 16
  br i1 %cmp99, label %land.lhs.true97.err_unmap_crit_edge, label %land.lhs.true97.if.end102_crit_edge

land.lhs.true97.if.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

land.lhs.true97.err_unmap_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap

if.end102:                                        ; preds = %land.lhs.true97.if.end102_crit_edge, %cond.end90.if.end102_crit_edge
  %ops103 = getelementptr i8, ptr %call26, i32 31312
  %32 = ptrtoint ptr %ops103 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %2, ptr %ops103, align 4
  %call104 = call zeroext i1 @rtl92e_check_adapter(ptr noundef %pdev, ptr noundef nonnull %call26) #11
  br i1 %call104, label %if.end106, label %if.end102.err_unmap_crit_edge

if.end102.err_unmap_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unmap

if.end106:                                        ; preds = %if.end102
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %irq107 = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 64
  %35 = ptrtoint ptr %irq107 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %irq107, align 4
  %irq108 = getelementptr i8, ptr %call26, i32 30788
  %36 = ptrtoint ptr %irq108 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %irq108, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 16
  %37 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rtl8192_netdev_ops, ptr %netdev_ops, align 8
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 42
  %38 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @r8192_wx_handlers_def, ptr %wireless_handlers, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 44
  %39 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rtl819x_ethtool_ops, ptr %ethtool_ops, align 16
  %type = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 32
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %type, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 115
  %41 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 300, ptr %watchdog_timeo, align 4
  %42 = load ptr, ptr @ifname, align 4
  %call109 = call i32 @dev_alloc_name(ptr noundef nonnull %call26, ptr noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %do.body113, label %if.end106.do.body127_crit_edge

if.end106.do.body127_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body127

do.body113:                                       ; preds = %if.end106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %43 = load i32, ptr @rt_global_debug_component, align 4
  %and114 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body113.do.end124_crit_edge, label %do.end119

do.body113.do.end124_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end124

do.end119:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #13
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #14
  br label %do.end124

do.end124:                                        ; preds = %do.end119, %do.body113.do.end124_crit_edge
  %44 = load ptr, ptr @ifname, align 4
  %call125 = call i32 @dev_alloc_name(ptr noundef nonnull %call26, ptr noundef %44) #11
  br label %do.body127

do.body127:                                       ; preds = %do.end124, %if.end106.do.body127_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %45 = load i32, ptr @rt_global_debug_component, align 4
  %and128 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body127.do.end138_crit_edge, label %do.end133

do.body127.do.end138_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

do.end133:                                        ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #14
  br label %do.end138

do.end138:                                        ; preds = %do.end133, %do.body127.do.end138_crit_edge
  %call139 = call fastcc signext i16 @_rtl92e_init(ptr noundef nonnull %call26)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call139)
  %cmp141.not = icmp eq i16 %call139, 0
  br i1 %cmp141.not, label %if.end144, label %if.then143

if.then143:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call26, ptr noundef nonnull @.str.73) #14
  br label %err_free_irq

if.end144:                                        ; preds = %do.end138
  call void @netif_carrier_off(ptr noundef nonnull %call26) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %call145 = call i32 @register_netdev(ptr noundef nonnull %call26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %do.body149, label %if.end144.err_free_irq_crit_edge

if.end144.err_free_irq_crit_edge:                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_irq

do.body149:                                       ; preds = %if.end144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %48 = load i32, ptr @rt_global_debug_component, align 4
  %and150 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.do.end160_crit_edge, label %do.end155

do.body149.do.end160_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end160

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %call26) #14
  br label %do.end160

do.end160:                                        ; preds = %do.end155, %do.body149.do.end160_crit_edge
  %polling_timer_on = getelementptr i8, ptr %call26, i32 35742
  %49 = ptrtoint ptr %polling_timer_on to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %polling_timer_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp162 = icmp eq i8 %50, 0
  br i1 %cmp162, label %if.then164, label %do.end160.do.body166_crit_edge

do.end160.do.body166_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body166

if.then164:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #13
  %gpio_polling_timer = getelementptr i8, ptr %call26, i32 31888
  call void @rtl92e_check_rfctrl_gpio_timer(ptr noundef %gpio_polling_timer)
  br label %do.body166

do.body166:                                       ; preds = %if.then164, %do.end160.do.body166_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %51 = load i32, ptr @rt_global_debug_component, align 4
  %and167 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body166.cleanup_crit_edge, label %do.end172

do.body166.cleanup_crit_edge:                     ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #13
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #14
  br label %cleanup

err_free_irq:                                     ; preds = %if.end144.err_free_irq_crit_edge, %if.then143
  %52 = ptrtoint ptr %irq107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq107, align 4
  %call179 = call ptr @free_irq(i32 noundef %53, ptr noundef nonnull %call26) #11
  %54 = ptrtoint ptr %irq108 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %irq108, align 8
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_irq, %if.end102.err_unmap_crit_edge, %land.lhs.true97.err_unmap_crit_edge
  call void @iounmap(ptr noundef nonnull %call70) #11
  br label %err_rel_mem

err_rel_mem:                                      ; preds = %err_unmap, %if.then73
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %cond) #11
  br label %err_rel_rtllib

err_rel_rtllib:                                   ; preds = %err_rel_mem, %if.then68, %if.then60
  call void @free_rtllib(ptr noundef nonnull %call26) #11
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_rel_rtllib, %if.end25.err_pci_disable_crit_edge, %do.end22
  %err.0 = phi i32 [ -19, %err_rel_rtllib ], [ -12, %if.end25.err_pci_disable_crit_edge ], [ -12, %do.end22 ]
  call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pci_disable, %do.end172, %do.body166.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ %err.0, %err_pci_disable ], [ 0, %do.end172 ], [ 0, %do.body166.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %revision_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_pci_disconnect(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then:                                          ; preds = %entry
  tail call void @unregister_netdev(ptr noundef nonnull %1) #11
  %priv.i = getelementptr i8, ptr %1, i32 30772
  %gpio_polling_timer = getelementptr i8, ptr %1, i32 31888
  %call2 = tail call i32 @del_timer_sync(ptr noundef %gpio_polling_timer) #11
  %gpio_change_rf_wq = getelementptr i8, ptr %1, i32 31200
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gpio_change_rf_wq) #11
  %polling_timer_on = getelementptr i8, ptr %1, i32 35742
  %2 = ptrtoint ptr %polling_timer_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %polling_timer_on, align 2
  %3 = tail call fastcc i32 @_rtl92e_down(ptr noundef nonnull %1)
  tail call void @rtl92e_dm_deinit(ptr noundef nonnull %1) #11
  %pFirmware = getelementptr i8, ptr %1, i32 31784
  %4 = ptrtoint ptr %pFirmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pFirmware, align 4
  tail call void @vfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %pFirmware to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pFirmware, align 4
  %rxringcount.i = getelementptr i8, ptr %1, i32 34996
  %7 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxringcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp234.i = icmp sgt i32 %8, 0
  br i1 %cmp234.i, label %for.body3.lr.ph.i, label %if.then._rtl92e_free_rx_ring.exit_crit_edge

if.then._rtl92e_free_rx_ring.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_free_rx_ring.exit

for.body3.lr.ph.i:                                ; preds = %if.then
  %rx_buf.i = getelementptr i8, ptr %1, i32 34732
  %rxbuffersize.i = getelementptr i8, ptr %1, i32 35000
  br label %for.body3.i

for.body3.i:                                      ; preds = %cleanup.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %cleanup.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr [64 x ptr], ptr %rx_buf.i, i32 0, i32 %i.035.i
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %for.body3.i.cleanup.i_crit_edge, label %if.end.i

for.body3.i.cleanup.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  %15 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rxbuffersize.i, align 4
  %conv.i = zext i16 %16 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i, i32 noundef %14, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body3.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %17 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxringcount.i, align 8
  %cmp2.i = icmp slt i32 %inc.i, %18
  br i1 %cmp2.i, label %cleanup.i.for.body3.i_crit_edge, label %cleanup.i._rtl92e_free_rx_ring.exit_crit_edge

cleanup.i._rtl92e_free_rx_ring.exit_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_free_rx_ring.exit

cleanup.i.for.body3.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

_rtl92e_free_rx_ring.exit:                        ; preds = %cleanup.i._rtl92e_free_rx_ring.exit_crit_edge, %if.then._rtl92e_free_rx_ring.exit_crit_edge
  %.lcssa.i = phi i32 [ %8, %if.then._rtl92e_free_rx_ring.exit_crit_edge ], [ %18, %cleanup.i._rtl92e_free_rx_ring.exit_crit_edge ]
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %mul.i = shl i32 %.lcssa.i, 4
  %rx_ring.i = getelementptr i8, ptr %1, i32 34728
  %21 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ring.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %1, i32 34988
  %23 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef %mul.i, ptr noundef %22, i32 noundef %24, i32 noundef 0) #11
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_ring.i, align 4
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 2)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 3)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 4)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 5)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 6)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 7)
  tail call fastcc void @_rtl92e_free_tx_ring(ptr noundef nonnull %1, i32 noundef 8)
  %irq = getelementptr i8, ptr %1, i32 30788
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not = icmp eq i32 %27, 0
  br i1 %tobool6.not, label %_rtl92e_free_rx_ring.exit.if.end_crit_edge, label %do.end

_rtl92e_free_rx_ring.exit.if.end_crit_edge:       ; preds = %_rtl92e_free_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %_rtl92e_free_rx_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %irq9 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %28 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq9, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.240, i32 noundef %29) #14
  %30 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq9, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %31, ptr noundef nonnull %1) #11
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %irq, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %_rtl92e_free_rx_ring.exit.if.end_crit_edge
  %mem_start = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp13.not = icmp eq i32 %34, 0
  br i1 %cmp13.not, label %if.end.if.end25_crit_edge, label %if.then14

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %35 = inttoptr i32 %34 to ptr
  tail call void @iounmap(ptr noundef nonnull %35) #11
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %38 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp18 = icmp eq i32 %39, 0
  %sub = sub i32 1, %37
  %add = add i32 %sub, %39
  %cond = select i1 %cmp18, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %37, i32 noundef %cond) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %if.end.if.end25_crit_edge
  tail call void @free_rtllib(ptr noundef nonnull %1) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry.if.end26_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %40 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %40, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end26.do.end36_crit_edge, label %do.end32

if.end26.do.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #14
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %if.end26.do.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_rtllib(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_check_adapter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc signext i16 @_rtl92e_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %dma.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %stats = getelementptr i8, ptr %dev, i32 32516
  %0 = call ptr @memset(ptr %stats, i32 0, i32 2172)
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %1 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtllib.i, align 8
  %softmac_hard_start_xmit.i = getelementptr inbounds %struct.rtllib_device, ptr %2, i32 0, i32 177
  %3 = ptrtoint ptr %softmac_hard_start_xmit.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @_rtl92e_hard_start_xmit, ptr %softmac_hard_start_xmit.i, align 8
  %4 = load ptr, ptr %rtllib.i, align 8
  %set_chan.i = getelementptr inbounds %struct.rtllib_device, ptr %4, i32 0, i32 181
  %5 = ptrtoint ptr %set_chan.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @_rtl92e_set_chan, ptr %set_chan.i, align 8
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %link_change.i = getelementptr inbounds %struct.rtl819x_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %link_change.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_change.i, align 4
  %10 = load ptr, ptr %rtllib.i, align 8
  %link_change3.i = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 184
  %11 = ptrtoint ptr %link_change3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %link_change3.i, align 4
  %12 = load ptr, ptr %rtllib.i, align 8
  %softmac_data_hard_start_xmit.i = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 178
  %13 = ptrtoint ptr %softmac_data_hard_start_xmit.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @_rtl92e_hard_data_xmit, ptr %softmac_data_hard_start_xmit.i, align 4
  %14 = load ptr, ptr %rtllib.i, align 8
  %check_nic_enough_desc.i = getelementptr inbounds %struct.rtllib_device, ptr %14, i32 0, i32 192
  %15 = ptrtoint ptr %check_nic_enough_desc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @_rtl92e_check_nic_enough_desc, ptr %check_nic_enough_desc.i, align 4
  %16 = load ptr, ptr %rtllib.i, align 8
  %handle_assoc_response.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 191
  %17 = ptrtoint ptr %handle_assoc_response.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @_rtl92e_handle_assoc_response, ptr %handle_assoc_response.i, align 8
  %18 = load ptr, ptr %rtllib.i, align 8
  %handle_beacon.i = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 190
  %19 = ptrtoint ptr %handle_beacon.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @_rtl92e_handle_beacon, ptr %handle_beacon.i, align 4
  %20 = load ptr, ptr %rtllib.i, align 8
  %SetWirelessMode.i = getelementptr inbounds %struct.rtllib_device, ptr %20, i32 0, i32 195
  %21 = ptrtoint ptr %SetWirelessMode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rtl92e_set_wireless_mode, ptr %SetWirelessMode.i, align 8
  %22 = load ptr, ptr %rtllib.i, align 8
  %LeisurePSLeave.i = getelementptr inbounds %struct.rtllib_device, ptr %22, i32 0, i32 207
  %23 = ptrtoint ptr %LeisurePSLeave.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rtl92e_leisure_ps_leave, ptr %LeisurePSLeave.i, align 8
  %24 = load ptr, ptr %rtllib.i, align 8
  %SetBWModeHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %24, i32 0, i32 193
  %25 = ptrtoint ptr %SetBWModeHandler.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @rtl92e_set_bw_mode, ptr %SetBWModeHandler.i, align 8
  %rf_set_chan.i = getelementptr i8, ptr %dev, i32 34724
  %26 = ptrtoint ptr %rf_set_chan.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rtl92e_set_channel, ptr %rf_set_chan.i, align 8
  %27 = load ptr, ptr %rtllib.i, align 8
  %start_send_beacons.i = getelementptr inbounds %struct.rtllib_device, ptr %27, i32 0, i32 185
  %28 = ptrtoint ptr %start_send_beacons.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rtl92e_start_beacon, ptr %start_send_beacons.i, align 8
  %29 = load ptr, ptr %rtllib.i, align 8
  %stop_send_beacons.i = getelementptr inbounds %struct.rtllib_device, ptr %29, i32 0, i32 186
  %30 = ptrtoint ptr %stop_send_beacons.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @_rtl92e_stop_beacon, ptr %stop_send_beacons.i, align 4
  %31 = load ptr, ptr %rtllib.i, align 8
  %sta_wake_up.i = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 187
  %32 = ptrtoint ptr %sta_wake_up.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @rtl92e_hw_wakeup, ptr %sta_wake_up.i, align 8
  %33 = load ptr, ptr %rtllib.i, align 8
  %enter_sleep_state.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 188
  %34 = ptrtoint ptr %enter_sleep_state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rtl92e_enter_sleep, ptr %enter_sleep_state.i, align 4
  %35 = load ptr, ptr %rtllib.i, align 8
  %ps_is_queue_empty.i = getelementptr inbounds %struct.rtllib_device, ptr %35, i32 0, i32 189
  %36 = ptrtoint ptr %ps_is_queue_empty.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @_rtl92e_is_tx_queue_empty, ptr %ps_is_queue_empty.i, align 8
  %37 = load ptr, ptr %rtllib.i, align 8
  %GetNmodeSupportBySecCfg.i = getelementptr inbounds %struct.rtllib_device, ptr %37, i32 0, i32 194
  %38 = ptrtoint ptr %GetNmodeSupportBySecCfg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rtl92e_get_nmode_support_by_sec, ptr %GetNmodeSupportBySecCfg.i, align 4
  %39 = load ptr, ptr %rtllib.i, align 8
  %GetHalfNmodeSupportByAPsHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %39, i32 0, i32 196
  %40 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rtl92e_is_halfn_supported_by_ap, ptr %GetHalfNmodeSupportByAPsHandler.i, align 4
  %41 = load ptr, ptr %rtllib.i, align 8
  %SetHwRegHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 203
  %42 = ptrtoint ptr %SetHwRegHandler.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @rtl92e_set_reg, ptr %SetHwRegHandler.i, align 8
  %43 = load ptr, ptr %rtllib.i, align 8
  %AllowAllDestAddrHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %43, i32 0, i32 204
  %44 = ptrtoint ptr %AllowAllDestAddrHandler.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rtl92e_set_monitor_mode, ptr %AllowAllDestAddrHandler.i, align 4
  %45 = load ptr, ptr %rtllib.i, align 8
  %SetFwCmdHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %45, i32 0, i32 199
  %46 = ptrtoint ptr %SetFwCmdHandler.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %SetFwCmdHandler.i, align 8
  %47 = load ptr, ptr %rtllib.i, align 8
  %InitialGainHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %47, i32 0, i32 198
  %48 = ptrtoint ptr %InitialGainHandler.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rtl92e_init_gain, ptr %InitialGainHandler.i, align 4
  %49 = load ptr, ptr %rtllib.i, align 8
  %rtllib_ips_leave_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %49, i32 0, i32 205
  %50 = ptrtoint ptr %rtllib_ips_leave_wq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @rtl92e_rtllib_ips_leave_wq, ptr %rtllib_ips_leave_wq.i, align 8
  %51 = load ptr, ptr %rtllib.i, align 8
  %rtllib_ips_leave.i = getelementptr inbounds %struct.rtllib_device, ptr %51, i32 0, i32 206
  %52 = ptrtoint ptr %rtllib_ips_leave.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @rtl92e_rtllib_ips_leave, ptr %rtllib_ips_leave.i, align 4
  %53 = load ptr, ptr %rtllib.i, align 8
  %LedControlHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %53, i32 0, i32 202
  %54 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %LedControlHandler.i, align 4
  %55 = load ptr, ptr %rtllib.i, align 8
  %UpdateBeaconInterruptHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %55, i32 0, i32 200
  %56 = ptrtoint ptr %UpdateBeaconInterruptHandler.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %UpdateBeaconInterruptHandler.i, align 4
  %57 = load ptr, ptr %rtllib.i, align 8
  %ScanOperationBackupHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %57, i32 0, i32 201
  %58 = ptrtoint ptr %ScanOperationBackupHandler.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rtl92e_scan_op_backup, ptr %ScanOperationBackupHandler.i, align 8
  %59 = load ptr, ptr %rtllib.i, align 8
  %RegMaxLPSAwakeIntvl.i = getelementptr inbounds %struct.rtllib_device, ptr %59, i32 0, i32 158, i32 7
  %60 = ptrtoint ptr %RegMaxLPSAwakeIntvl.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %RegMaxLPSAwakeIntvl.i, align 2
  %AcmMethod.i = getelementptr i8, ptr %dev, i32 31780
  %61 = ptrtoint ptr %AcmMethod.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %AcmMethod.i, align 8
  %dot11CurrentPreambleMode.i = getelementptr i8, ptr %dev, i32 35907
  %62 = ptrtoint ptr %dot11CurrentPreambleMode.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %dot11CurrentPreambleMode.i, align 1
  %63 = load ptr, ptr %rtllib.i, align 8
  %status.i = getelementptr inbounds %struct.rtllib_device, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %status.i, align 4
  %polling_timer_on.i = getelementptr i8, ptr %dev, i32 35742
  %65 = ptrtoint ptr %polling_timer_on.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %polling_timer_on.i, align 2
  %up_first_time.i = getelementptr i8, ptr %dev, i32 30796
  %66 = ptrtoint ptr %up_first_time.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %up_first_time.i, align 8
  %blinked_ingpio.i = getelementptr i8, ptr %dev, i32 35741
  %67 = ptrtoint ptr %blinked_ingpio.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %blinked_ingpio.i, align 1
  %bDriverIsGoingToUnload.i = getelementptr i8, ptr %dev, i32 30784
  %68 = ptrtoint ptr %bDriverIsGoingToUnload.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %bDriverIsGoingToUnload.i, align 4
  %being_init_adapter.i = getelementptr i8, ptr %dev, i32 30783
  %69 = ptrtoint ptr %being_init_adapter.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %being_init_adapter.i, align 1
  %initialized_at_probe.i = getelementptr i8, ptr %dev, i32 30782
  %70 = ptrtoint ptr %initialized_at_probe.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %initialized_at_probe.i, align 2
  %bdisable_nic.i = getelementptr i8, ptr %dev, i32 36012
  %71 = ptrtoint ptr %bdisable_nic.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %bdisable_nic.i, align 8
  %bfirst_init.i = getelementptr i8, ptr %dev, i32 30780
  %72 = ptrtoint ptr %bfirst_init.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %bfirst_init.i, align 8
  %txringcount.i = getelementptr i8, ptr %dev, i32 35668
  %73 = ptrtoint ptr %txringcount.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 64, ptr %txringcount.i, align 8
  %rxbuffersize.i = getelementptr i8, ptr %dev, i32 35000
  %74 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 9100, ptr %rxbuffersize.i, align 4
  %rxringcount.i = getelementptr i8, ptr %dev, i32 34996
  %75 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 64, ptr %rxringcount.i, align 8
  %irq_enabled.i = getelementptr i8, ptr %dev, i32 30792
  %76 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %irq_enabled.i, align 4
  %chan.i = getelementptr i8, ptr %dev, i32 35794
  %77 = ptrtoint ptr %chan.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %chan.i, align 2
  %RegChannelPlan.i = getelementptr i8, ptr %dev, i32 36002
  %78 = ptrtoint ptr %RegChannelPlan.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 15, ptr %RegChannelPlan.i, align 2
  %79 = load ptr, ptr %rtllib.i, align 8
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %79, i32 0, i32 92
  %80 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %mode.i, align 8
  %81 = load ptr, ptr %rtllib.i, align 8
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %81, i32 0, i32 56
  %82 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %iw_mode.i, align 8
  %83 = load ptr, ptr %rtllib.i, align 8
  %bNetPromiscuousMode.i = getelementptr inbounds %struct.rtllib_device, ptr %83, i32 0, i32 57
  %84 = ptrtoint ptr %bNetPromiscuousMode.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %bNetPromiscuousMode.i, align 4
  %85 = load ptr, ptr %rtllib.i, align 8
  %IntelPromiscuousModeInfo.i = getelementptr inbounds %struct.rtllib_device, ptr %85, i32 0, i32 58
  %86 = ptrtoint ptr %IntelPromiscuousModeInfo.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %IntelPromiscuousModeInfo.i, align 1
  %87 = load ptr, ptr %rtllib.i, align 8
  %bFilterSourceStationFrame.i = getelementptr inbounds %struct.rtllib_device, ptr %87, i32 0, i32 58, i32 1
  %88 = ptrtoint ptr %bFilterSourceStationFrame.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %bFilterSourceStationFrame.i, align 1
  %89 = load ptr, ptr %rtllib.i, align 8
  %ieee_up.i = getelementptr inbounds %struct.rtllib_device, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %ieee_up.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %ieee_up.i, align 1
  %retry_rts.i = getelementptr i8, ptr %dev, i32 35017
  %91 = ptrtoint ptr %retry_rts.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 7, ptr %retry_rts.i, align 1
  %retry_data.i = getelementptr i8, ptr %dev, i32 35016
  %92 = ptrtoint ptr %retry_data.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 7, ptr %retry_data.i, align 4
  %93 = load ptr, ptr %rtllib.i, align 8
  %rts.i = getelementptr inbounds %struct.rtllib_device, ptr %93, i32 0, i32 87
  %94 = ptrtoint ptr %rts.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 2346, ptr %rts.i, align 2
  %95 = load ptr, ptr %rtllib.i, align 8
  %rate.i = getelementptr inbounds %struct.rtllib_device, ptr %95, i32 0, i32 101
  %96 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 110, ptr %rate.i, align 8
  %97 = load ptr, ptr %rtllib.i, align 8
  %short_slot.i = getelementptr inbounds %struct.rtllib_device, ptr %97, i32 0, i32 91
  %98 = ptrtoint ptr %short_slot.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %short_slot.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i, align 8
  %101 = trunc i32 %100 to i16
  %102 = lshr i16 %101, 8
  %103 = and i16 %102, 1
  %promisc.i = getelementptr i8, ptr %dev, i32 35792
  %104 = ptrtoint ptr %promisc.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %promisc.i, align 4
  %bcck_in_ch14.i = getelementptr i8, ptr %dev, i32 36155
  %105 = ptrtoint ptr %bcck_in_ch14.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bcck_in_ch14.i, align 1
  %bfsync_processing.i = getelementptr i8, ptr %dev, i32 36175
  %106 = ptrtoint ptr %bfsync_processing.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %bfsync_processing.i, align 1
  %CCKPresentAttentuation.i = getelementptr i8, ptr %dev, i32 36027
  %107 = ptrtoint ptr %CCKPresentAttentuation.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %CCKPresentAttentuation.i, align 1
  %rfa_txpowertrackingindex.i = getelementptr i8, ptr %dev, i32 36149
  %108 = ptrtoint ptr %rfa_txpowertrackingindex.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %rfa_txpowertrackingindex.i, align 1
  %rfc_txpowertrackingindex.i = getelementptr i8, ptr %dev, i32 36152
  %109 = ptrtoint ptr %rfc_txpowertrackingindex.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %rfc_txpowertrackingindex.i, align 4
  %CckPwEnl.i = getelementptr i8, ptr %dev, i32 36014
  %110 = ptrtoint ptr %CckPwEnl.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 6, ptr %CckPwEnl.i, align 2
  %ScanDelay.i = getelementptr i8, ptr %dev, i32 35800
  %111 = ptrtoint ptr %ScanDelay.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 50, ptr %ScanDelay.i, align 4
  %ResetProgress.i = getelementptr i8, ptr %dev, i32 36204
  %112 = ptrtoint ptr %ResetProgress.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %ResetProgress.i, align 8
  %bForcedSilentReset.i = getelementptr i8, ptr %dev, i32 36208
  %113 = ptrtoint ptr %bForcedSilentReset.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %bForcedSilentReset.i, align 4
  %bDisableNormalResetCheck.i = getelementptr i8, ptr %dev, i32 36209
  %114 = ptrtoint ptr %bDisableNormalResetCheck.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %bDisableNormalResetCheck.i, align 1
  %force_reset.i = getelementptr i8, ptr %dev, i32 36215
  %115 = ptrtoint ptr %force_reset.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %force_reset.i, align 1
  %116 = load ptr, ptr %rtllib.i, align 8
  %swcamtable.i = getelementptr inbounds %struct.rtllib_device, ptr %116, i32 0, i32 82
  %117 = call ptr @memset(ptr %swcamtable.i, i32 0, i32 896)
  %InterruptLog.i = getelementptr i8, ptr %dev, i32 31364
  %118 = call ptr @memset(ptr %InterruptLog.i, i32 0, i32 48)
  %RxCounter.i = getelementptr i8, ptr %dev, i32 36212
  %119 = ptrtoint ptr %RxCounter.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %RxCounter.i, align 8
  %120 = load ptr, ptr %rtllib.i, align 8
  %wx_set_enc.i = getelementptr inbounds %struct.rtllib_device, ptr %120, i32 0, i32 26
  %121 = ptrtoint ptr %wx_set_enc.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %wx_set_enc.i, align 1
  %bHwRadioOff.i = getelementptr i8, ptr %dev, i32 35740
  %122 = ptrtoint ptr %bHwRadioOff.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %bHwRadioOff.i, align 8
  %RegRfOff.i = getelementptr i8, ptr %dev, i32 36006
  %123 = ptrtoint ptr %RegRfOff.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %RegRfOff.i, align 2
  %isRFOff.i = getelementptr i8, ptr %dev, i32 36007
  %124 = ptrtoint ptr %isRFOff.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %isRFOff.i, align 1
  %bInPowerSaveMode.i = getelementptr i8, ptr %dev, i32 36008
  %125 = ptrtoint ptr %bInPowerSaveMode.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %bInPowerSaveMode.i, align 4
  %126 = load ptr, ptr %rtllib.i, align 8
  %RfOffReason.i = getelementptr inbounds %struct.rtllib_device, ptr %126, i32 0, i32 24
  %127 = ptrtoint ptr %RfOffReason.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %RfOffReason.i, align 8
  %RFChangeInProgress.i = getelementptr i8, ptr %dev, i32 36010
  %128 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %RFChangeInProgress.i, align 2
  %bHwRfOffAction.i = getelementptr i8, ptr %dev, i32 36009
  %129 = ptrtoint ptr %bHwRfOffAction.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %bHwRfOffAction.i, align 1
  %SetRFPowerStateInProgress.i = getelementptr i8, ptr %dev, i32 36011
  %130 = ptrtoint ptr %SetRFPowerStateInProgress.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %SetRFPowerStateInProgress.i, align 1
  %131 = load ptr, ptr %rtllib.i, align 8
  %PowerSaveControl.i = getelementptr inbounds %struct.rtllib_device, ptr %131, i32 0, i32 158
  %132 = ptrtoint ptr %PowerSaveControl.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %PowerSaveControl.i, align 4
  %133 = load ptr, ptr %rtllib.i, align 8
  %bIPSModeBackup.i = getelementptr inbounds %struct.rtllib_device, ptr %133, i32 0, i32 158, i32 1
  %134 = ptrtoint ptr %bIPSModeBackup.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %bIPSModeBackup.i, align 1
  %135 = load ptr, ptr %rtllib.i, align 8
  %bLeisurePs.i = getelementptr inbounds %struct.rtllib_device, ptr %135, i32 0, i32 158, i32 5
  %136 = ptrtoint ptr %bLeisurePs.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %bLeisurePs.i, align 4
  %137 = load ptr, ptr %rtllib.i, align 8
  %bFwCtrlLPS.i = getelementptr inbounds %struct.rtllib_device, ptr %137, i32 0, i32 158, i32 11
  %138 = ptrtoint ptr %bFwCtrlLPS.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %bFwCtrlLPS.i, align 4
  %139 = load ptr, ptr %rtllib.i, align 8
  %LPSDelayCnt.i = getelementptr inbounds %struct.rtllib_device, ptr %139, i32 0, i32 136
  %140 = ptrtoint ptr %LPSDelayCnt.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %LPSDelayCnt.i, align 1
  %141 = load ptr, ptr %rtllib.i, align 8
  %sta_sleep.i = getelementptr inbounds %struct.rtllib_device, ptr %141, i32 0, i32 110
  %142 = ptrtoint ptr %sta_sleep.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %sta_sleep.i, align 2
  %143 = load ptr, ptr %rtllib.i, align 8
  %eRFPowerState.i = getelementptr inbounds %struct.rtllib_device, ptr %143, i32 0, i32 23
  %144 = ptrtoint ptr %eRFPowerState.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %eRFPowerState.i, align 4
  %145 = load ptr, ptr %rtllib.i, align 8
  %beacon_interval.i = getelementptr inbounds %struct.rtllib_device, ptr %145, i32 0, i32 89, i32 26
  %146 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 100, ptr %beacon_interval.i, align 4
  %147 = load ptr, ptr %rtllib.i, align 8
  %iw_mode26.i = getelementptr inbounds %struct.rtllib_device, ptr %147, i32 0, i32 56
  %148 = ptrtoint ptr %iw_mode26.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2, ptr %iw_mode26.i, align 8
  %149 = load ptr, ptr %rtllib.i, align 8
  %active_scan.i = getelementptr inbounds %struct.rtllib_device, ptr %149, i32 0, i32 103
  %150 = ptrtoint ptr %active_scan.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 1, ptr %active_scan.i, align 8
  %151 = load ptr, ptr %rtllib.i, align 8
  %be_scan_inprogress.i = getelementptr inbounds %struct.rtllib_device, ptr %151, i32 0, i32 21
  %152 = ptrtoint ptr %be_scan_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %be_scan_inprogress.i, align 2
  %153 = load ptr, ptr %rtllib.i, align 8
  %modulation.i = getelementptr inbounds %struct.rtllib_device, ptr %153, i32 0, i32 93
  %154 = ptrtoint ptr %modulation.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 3, ptr %modulation.i, align 4
  %155 = load ptr, ptr %rtllib.i, align 8
  %host_encrypt.i = getelementptr inbounds %struct.rtllib_device, ptr %155, i32 0, i32 66
  %156 = ptrtoint ptr %host_encrypt.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %host_encrypt.i, align 4
  %157 = load ptr, ptr %rtllib.i, align 8
  %host_decrypt.i = getelementptr inbounds %struct.rtllib_device, ptr %157, i32 0, i32 67
  %158 = ptrtoint ptr %host_decrypt.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %host_decrypt.i, align 8
  %159 = load ptr, ptr %rtllib.i, align 8
  %fts.i = getelementptr inbounds %struct.rtllib_device, ptr %159, i32 0, i32 86
  %160 = ptrtoint ptr %fts.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 2342, ptr %fts.i, align 4
  %card_type.i = getelementptr i8, ptr %dev, i32 35744
  %161 = ptrtoint ptr %card_type.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %card_type.i, align 4
  %call33.i = tail call noalias ptr @vzalloc(i32 noundef 192012) #15
  %pFirmware.i = getelementptr i8, ptr %dev, i32 31784
  %162 = ptrtoint ptr %pFirmware.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call33.i, ptr %pFirmware.i, align 4
  %tobool35.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool35.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.109) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %skb_queue.i = getelementptr i8, ptr %dev, i32 32112
  %lock.i.i = getelementptr i8, ptr %dev, i32 32124
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %163 = ptrtoint ptr %skb_queue.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %skb_queue.i, ptr %skb_queue.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %dev, i32 32116
  %164 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %skb_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr i8, ptr %dev, i32 32120
  %165 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %qlen.i.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %166 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.i = getelementptr %struct.rtllib_device, ptr %167, i32 0, i32 141, i32 %indvars.iv.i
  %lock.i129.i = getelementptr %struct.rtllib_device, ptr %167, i32 0, i32 141, i32 %indvars.iv.i, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i129.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i130.i = getelementptr inbounds %struct.anon.69, ptr %arrayidx.i, i32 0, i32 1
  %169 = ptrtoint ptr %prev.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %arrayidx.i, ptr %prev.i.i130.i, align 4
  %qlen.i.i131.i = getelementptr %struct.rtllib_device, ptr %167, i32 0, i32 141, i32 %indvars.iv.i, i32 1
  %170 = ptrtoint ptr %qlen.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %qlen.i.i131.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %for.body.i.for.body43.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body43.i_crit_edge:                ; preds = %for.body.i
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.body43.i.for.body43.i_crit_edge, %for.body.i.for.body43.i_crit_edge
  %indvars.iv137.i = phi i32 [ %indvars.iv.next138.i, %for.body43.i.for.body43.i_crit_edge ], [ 0, %for.body.i.for.body43.i_crit_edge ]
  %171 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rtllib.i, align 8
  %arrayidx46.i = getelementptr %struct.rtllib_device, ptr %172, i32 0, i32 142, i32 %indvars.iv137.i
  %lock.i132.i = getelementptr %struct.rtllib_device, ptr %172, i32 0, i32 142, i32 %indvars.iv137.i, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i132.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %173 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %arrayidx46.i, ptr %arrayidx46.i, align 4
  %prev.i.i133.i = getelementptr inbounds %struct.anon.69, ptr %arrayidx46.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %arrayidx46.i, ptr %prev.i.i133.i, align 4
  %qlen.i.i134.i = getelementptr %struct.rtllib_device, ptr %172, i32 0, i32 142, i32 %indvars.iv137.i, i32 1
  %175 = ptrtoint ptr %qlen.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %qlen.i.i134.i, align 4
  %indvars.iv.next138.i = add nuw nsw i32 %indvars.iv137.i, 1
  %exitcond139.not.i = icmp eq i32 %indvars.iv.next138.i, 16
  br i1 %exitcond139.not.i, label %_rtl92e_init_priv_variable.exit, label %for.body43.i.for.body43.i_crit_edge

for.body43.i.for.body43.i_crit_edge:              ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43.i

_rtl92e_init_priv_variable.exit:                  ; preds = %for.body43.i
  %tx_lock.i = getelementptr i8, ptr %dev, i32 31980
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @_rtl92e_init_priv_lock.__key, i16 noundef signext 3) #11
  %irq_th_lock.i = getelementptr i8, ptr %dev, i32 31936
  tail call void @__raw_spin_lock_init(ptr noundef %irq_th_lock.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.112, i16 noundef signext 3) #11
  %rf_ps_lock.i = getelementptr i8, ptr %dev, i32 32024
  tail call void @__raw_spin_lock_init(ptr noundef %rf_ps_lock.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.114, i16 noundef signext 3) #11
  %ps_lock.i = getelementptr i8, ptr %dev, i32 32068
  tail call void @__raw_spin_lock_init(ptr noundef %ps_lock.i, ptr noundef nonnull @.str.117, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.116, i16 noundef signext 3) #11
  %wx_mutex.i = getelementptr i8, ptr %dev, i32 32240
  tail call void @__mutex_init(ptr noundef %wx_mutex.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.118) #11
  %rf_mutex.i = getelementptr i8, ptr %dev, i32 32332
  tail call void @__mutex_init(ptr noundef %rf_mutex.i, ptr noundef nonnull @.str.121, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.120) #11
  %mutex.i = getelementptr i8, ptr %dev, i32 32424
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @_rtl92e_init_priv_lock.__key.122) #11
  %reset_wq.i = getelementptr i8, ptr %dev, i32 31320
  tail call void @__init_work(ptr noundef %reset_wq.i, i32 noundef 0) #11
  %176 = ptrtoint ptr %reset_wq.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -64, ptr %reset_wq.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %dev, i32 31336
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @_rtl92e_init_priv_task.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr i8, ptr %dev, i32 31324
  %177 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 31328
  %178 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %dev, i32 31332
  %179 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @_rtl92e_restart, ptr %func.i, align 4
  %180 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rtllib.i, align 8
  %ips_leave_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %181, i32 0, i32 164
  tail call void @__init_work(ptr noundef %ips_leave_wq.i, i32 noundef 0) #11
  %182 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rtllib.i, align 8
  %ips_leave_wq8.i = getelementptr inbounds %struct.rtllib_device, ptr %183, i32 0, i32 164
  %184 = ptrtoint ptr %ips_leave_wq8.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -64, ptr %ips_leave_wq8.i, align 8
  %185 = load ptr, ptr %rtllib.i, align 8
  %lockdep_map14.i = getelementptr inbounds %struct.rtllib_device, ptr %185, i32 0, i32 164, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map14.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @_rtl92e_init_priv_task.__key.125, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %186 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rtllib.i, align 8
  %entry17.i = getelementptr inbounds %struct.rtllib_device, ptr %187, i32 0, i32 164, i32 1
  %188 = ptrtoint ptr %entry17.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %entry17.i, ptr %entry17.i, align 4
  %prev.i255.i = getelementptr inbounds %struct.rtllib_device, ptr %187, i32 0, i32 164, i32 1, i32 1
  %189 = ptrtoint ptr %prev.i255.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %entry17.i, ptr %prev.i255.i, align 4
  %190 = load ptr, ptr %rtllib.i, align 8
  %func20.i = getelementptr inbounds %struct.rtllib_device, ptr %190, i32 0, i32 164, i32 2
  %191 = ptrtoint ptr %func20.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @rtl92e_ips_leave_wq, ptr %func20.i, align 4
  %watch_dog_wq.i = getelementptr i8, ptr %dev, i32 30900
  tail call void @__init_work(ptr noundef %watch_dog_wq.i, i32 noundef 0) #11
  %192 = ptrtoint ptr %watch_dog_wq.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -64, ptr %watch_dog_wq.i, align 8
  %lockdep_map32.i = getelementptr i8, ptr %dev, i32 30916
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @_rtl92e_init_priv_task.__key.127, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry35.i = getelementptr i8, ptr %dev, i32 30904
  %193 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %entry35.i, ptr %entry35.i, align 4
  %prev.i256.i = getelementptr i8, ptr %dev, i32 30908
  %194 = ptrtoint ptr %prev.i256.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %entry35.i, ptr %prev.i256.i, align 4
  %func38.i = getelementptr i8, ptr %dev, i32 30912
  %195 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @_rtl92e_watchdog_wq_cb, ptr %func38.i, align 4
  %timer.i = getelementptr i8, ptr %dev, i32 30944
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.130, ptr noundef nonnull @_rtl92e_init_priv_task.__key.129) #11
  %txpower_tracking_wq.i = getelementptr i8, ptr %dev, i32 31000
  tail call void @__init_work(ptr noundef %txpower_tracking_wq.i, i32 noundef 0) #11
  %196 = ptrtoint ptr %txpower_tracking_wq.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -64, ptr %txpower_tracking_wq.i, align 4
  %lockdep_map57.i = getelementptr i8, ptr %dev, i32 31016
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map57.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @_rtl92e_init_priv_task.__key.131, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry60.i = getelementptr i8, ptr %dev, i32 31004
  %197 = ptrtoint ptr %entry60.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %entry60.i, ptr %entry60.i, align 4
  %prev.i257.i = getelementptr i8, ptr %dev, i32 31008
  %198 = ptrtoint ptr %prev.i257.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %entry60.i, ptr %prev.i257.i, align 4
  %func63.i = getelementptr i8, ptr %dev, i32 31012
  %199 = ptrtoint ptr %func63.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @rtl92e_dm_txpower_tracking_wq, ptr %func63.i, align 4
  %timer68.i = getelementptr i8, ptr %dev, i32 31044
  tail call void @init_timer_key(ptr noundef %timer68.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.134, ptr noundef nonnull @_rtl92e_init_priv_task.__key.133) #11
  %rfpath_check_wq.i = getelementptr i8, ptr %dev, i32 31100
  tail call void @__init_work(ptr noundef %rfpath_check_wq.i, i32 noundef 0) #11
  %200 = ptrtoint ptr %rfpath_check_wq.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -64, ptr %rfpath_check_wq.i, align 8
  %lockdep_map83.i = getelementptr i8, ptr %dev, i32 31116
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map83.i, ptr noundef nonnull @.str.136, ptr noundef nonnull @_rtl92e_init_priv_task.__key.135, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry86.i = getelementptr i8, ptr %dev, i32 31104
  %201 = ptrtoint ptr %entry86.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %entry86.i, ptr %entry86.i, align 4
  %prev.i258.i = getelementptr i8, ptr %dev, i32 31108
  %202 = ptrtoint ptr %prev.i258.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %entry86.i, ptr %prev.i258.i, align 4
  %func89.i = getelementptr i8, ptr %dev, i32 31112
  %203 = ptrtoint ptr %func89.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @rtl92e_dm_rf_pathcheck_wq, ptr %func89.i, align 4
  %timer94.i = getelementptr i8, ptr %dev, i32 31144
  tail call void @init_timer_key(ptr noundef %timer94.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.138, ptr noundef nonnull @_rtl92e_init_priv_task.__key.137) #11
  %update_beacon_wq.i = getelementptr i8, ptr %dev, i32 30800
  tail call void @__init_work(ptr noundef %update_beacon_wq.i, i32 noundef 0) #11
  %204 = ptrtoint ptr %update_beacon_wq.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 -64, ptr %update_beacon_wq.i, align 4
  %lockdep_map109.i = getelementptr i8, ptr %dev, i32 30816
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map109.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @_rtl92e_init_priv_task.__key.139, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry112.i = getelementptr i8, ptr %dev, i32 30804
  %205 = ptrtoint ptr %entry112.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %entry112.i, ptr %entry112.i, align 4
  %prev.i259.i = getelementptr i8, ptr %dev, i32 30808
  %206 = ptrtoint ptr %prev.i259.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %entry112.i, ptr %prev.i259.i, align 4
  %func115.i = getelementptr i8, ptr %dev, i32 30812
  %207 = ptrtoint ptr %func115.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @_rtl92e_update_beacon, ptr %func115.i, align 4
  %timer120.i = getelementptr i8, ptr %dev, i32 30844
  tail call void @init_timer_key(ptr noundef %timer120.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.142, ptr noundef nonnull @_rtl92e_init_priv_task.__key.141) #11
  %qos_activate.i = getelementptr i8, ptr %dev, i32 35748
  tail call void @__init_work(ptr noundef %qos_activate.i, i32 noundef 0) #11
  %208 = ptrtoint ptr %qos_activate.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -64, ptr %qos_activate.i, align 8
  %lockdep_map131.i = getelementptr i8, ptr %dev, i32 35764
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map131.i, ptr noundef nonnull @.str.144, ptr noundef nonnull @_rtl92e_init_priv_task.__key.143, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry133.i = getelementptr i8, ptr %dev, i32 35752
  %209 = ptrtoint ptr %entry133.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %entry133.i, ptr %entry133.i, align 4
  %prev.i260.i = getelementptr i8, ptr %dev, i32 35756
  %210 = ptrtoint ptr %prev.i260.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %entry133.i, ptr %prev.i260.i, align 4
  %func135.i = getelementptr i8, ptr %dev, i32 35760
  %211 = ptrtoint ptr %func135.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @_rtl92e_qos_activate, ptr %func135.i, align 4
  %212 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rtllib.i, align 8
  %hw_wakeup_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %213, i32 0, i32 169
  tail call void @__init_work(ptr noundef %hw_wakeup_wq.i, i32 noundef 0) #11
  %214 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rtllib.i, align 8
  %hw_wakeup_wq143.i = getelementptr inbounds %struct.rtllib_device, ptr %215, i32 0, i32 169
  %216 = ptrtoint ptr %hw_wakeup_wq143.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -64, ptr %hw_wakeup_wq143.i, align 4
  %217 = load ptr, ptr %rtllib.i, align 8
  %lockdep_map151.i = getelementptr inbounds %struct.rtllib_device, ptr %217, i32 0, i32 169, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map151.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @_rtl92e_init_priv_task.__key.145, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %218 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rtllib.i, align 8
  %entry155.i = getelementptr inbounds %struct.rtllib_device, ptr %219, i32 0, i32 169, i32 0, i32 1
  %220 = ptrtoint ptr %entry155.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %entry155.i, ptr %entry155.i, align 4
  %prev.i261.i = getelementptr inbounds %struct.rtllib_device, ptr %219, i32 0, i32 169, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %prev.i261.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %entry155.i, ptr %prev.i261.i, align 4
  %222 = load ptr, ptr %rtllib.i, align 8
  %func159.i = getelementptr inbounds %struct.rtllib_device, ptr %222, i32 0, i32 169, i32 0, i32 2
  %223 = ptrtoint ptr %func159.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @rtl92e_hw_wakeup_wq, ptr %func159.i, align 4
  %224 = load ptr, ptr %rtllib.i, align 8
  %timer165.i = getelementptr inbounds %struct.rtllib_device, ptr %224, i32 0, i32 169, i32 1
  tail call void @init_timer_key(ptr noundef %timer165.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.148, ptr noundef nonnull @_rtl92e_init_priv_task.__key.147) #11
  %225 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rtllib.i, align 8
  %hw_sleep_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %226, i32 0, i32 170
  tail call void @__init_work(ptr noundef %hw_sleep_wq.i, i32 noundef 0) #11
  %227 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rtllib.i, align 8
  %hw_sleep_wq175.i = getelementptr inbounds %struct.rtllib_device, ptr %228, i32 0, i32 170
  %229 = ptrtoint ptr %hw_sleep_wq175.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 -64, ptr %hw_sleep_wq175.i, align 8
  %230 = load ptr, ptr %rtllib.i, align 8
  %lockdep_map183.i = getelementptr inbounds %struct.rtllib_device, ptr %230, i32 0, i32 170, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map183.i, ptr noundef nonnull @.str.150, ptr noundef nonnull @_rtl92e_init_priv_task.__key.149, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %231 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rtllib.i, align 8
  %entry187.i = getelementptr inbounds %struct.rtllib_device, ptr %232, i32 0, i32 170, i32 0, i32 1
  %233 = ptrtoint ptr %entry187.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile ptr %entry187.i, ptr %entry187.i, align 4
  %prev.i262.i = getelementptr inbounds %struct.rtllib_device, ptr %232, i32 0, i32 170, i32 0, i32 1, i32 1
  %234 = ptrtoint ptr %prev.i262.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %entry187.i, ptr %prev.i262.i, align 4
  %235 = load ptr, ptr %rtllib.i, align 8
  %func191.i = getelementptr inbounds %struct.rtllib_device, ptr %235, i32 0, i32 170, i32 0, i32 2
  %236 = ptrtoint ptr %func191.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @rtl92e_hw_sleep_wq, ptr %func191.i, align 4
  %237 = load ptr, ptr %rtllib.i, align 8
  %timer197.i = getelementptr inbounds %struct.rtllib_device, ptr %237, i32 0, i32 170, i32 1
  tail call void @init_timer_key(ptr noundef %timer197.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.152, ptr noundef nonnull @_rtl92e_init_priv_task.__key.151) #11
  %irq_rx_tasklet.i = getelementptr i8, ptr %dev, i32 32168
  tail call void @tasklet_setup(ptr noundef %irq_rx_tasklet.i, ptr noundef nonnull @_rtl92e_irq_rx_tasklet) #11
  %irq_tx_tasklet.i = getelementptr i8, ptr %dev, i32 32192
  tail call void @tasklet_setup(ptr noundef %irq_tx_tasklet.i, ptr noundef nonnull @_rtl92e_irq_tx_tasklet) #11
  %irq_prepare_beacon_tasklet.i = getelementptr i8, ptr %dev, i32 32216
  tail call void @tasklet_setup(ptr noundef %irq_prepare_beacon_tasklet.i, ptr noundef nonnull @_rtl92e_prepare_beacon) #11
  %238 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops.i, align 4
  %get_eeprom_size = getelementptr inbounds %struct.rtl819x_ops, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %get_eeprom_size to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %get_eeprom_size, align 4
  tail call void %241(ptr noundef %dev) #11
  %242 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops.i, align 4
  %init_adapter_variable = getelementptr inbounds %struct.rtl819x_ops, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %init_adapter_variable to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %init_adapter_variable, align 4
  tail call void %245(ptr noundef %dev) #11
  %rf_chip.i = getelementptr i8, ptr %dev, i32 31416
  %246 = ptrtoint ptr %rf_chip.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rf_chip.i, align 4
  %248 = zext i32 %247 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %247, label %if.then.i56 [
    i32 1, label %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge
    i32 2, label %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge106
    i32 4, label %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge107
  ]

_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge107: ; preds = %_rtl92e_init_priv_variable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i57

_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge106: ; preds = %_rtl92e_init_priv_variable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i57

_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge: ; preds = %_rtl92e_init_priv_variable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i57

if.then.i56:                                      ; preds = %_rtl92e_init_priv_variable.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.204, ptr noundef nonnull @__func__._rtl92e_get_channel_map) #14
  br label %_rtl92e_get_channel_map.exit

if.end.i57:                                       ; preds = %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge, %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge106, %_rtl92e_init_priv_variable.exit.if.end.i57_crit_edge107
  %ChannelPlan.i = getelementptr i8, ptr %dev, i32 36004
  %249 = ptrtoint ptr %ChannelPlan.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %ChannelPlan.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %250)
  %cmp6.i = icmp ugt i16 %250, 12
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i57.do.body.i_crit_edge

if.end.i57.do.body.i_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then8.i:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.205) #14
  %251 = ptrtoint ptr %ChannelPlan.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %ChannelPlan.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then8.i, %if.end.i57.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %252 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %252, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end18.i_crit_edge, label %do.end.i

do.body.i.do.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %253 = ptrtoint ptr %ChannelPlan.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %ChannelPlan.i, align 8
  %conv14.i = zext i16 %254 to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %conv14.i) #14
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end.i, %do.body.i.do.end18.i_crit_edge
  %255 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rtllib.i, align 8
  tail call void @dot11d_init(ptr noundef %256) #11
  %257 = ptrtoint ptr %ChannelPlan.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %ChannelPlan.i, align 8
  %conv20.i = trunc i16 %258 to i8
  %259 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rtllib.i, align 8
  tail call void @dot11d_channel_map(i8 noundef zeroext %conv20.i, ptr noundef %260) #11
  %261 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.i59 = getelementptr %struct.rtllib_device, ptr %262, i32 0, i32 98, i32 1
  %263 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %arrayidx.i59, align 1
  %264 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.1.i = getelementptr %struct.rtllib_device, ptr %264, i32 0, i32 98, i32 2
  %265 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %arrayidx.1.i, align 1
  %266 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.2.i = getelementptr %struct.rtllib_device, ptr %266, i32 0, i32 98, i32 3
  %267 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 1, ptr %arrayidx.2.i, align 1
  %268 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.3.i = getelementptr %struct.rtllib_device, ptr %268, i32 0, i32 98, i32 4
  %269 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %arrayidx.3.i, align 1
  %270 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.4.i = getelementptr %struct.rtllib_device, ptr %270, i32 0, i32 98, i32 5
  %271 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 1, ptr %arrayidx.4.i, align 1
  %272 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.5.i = getelementptr %struct.rtllib_device, ptr %272, i32 0, i32 98, i32 6
  %273 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 1, ptr %arrayidx.5.i, align 1
  %274 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.6.i = getelementptr %struct.rtllib_device, ptr %274, i32 0, i32 98, i32 7
  %275 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 1, ptr %arrayidx.6.i, align 1
  %276 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.7.i = getelementptr %struct.rtllib_device, ptr %276, i32 0, i32 98, i32 8
  %277 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 1, ptr %arrayidx.7.i, align 1
  %278 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.8.i = getelementptr %struct.rtllib_device, ptr %278, i32 0, i32 98, i32 9
  %279 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 1, ptr %arrayidx.8.i, align 1
  %280 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.9.i = getelementptr %struct.rtllib_device, ptr %280, i32 0, i32 98, i32 10
  %281 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %arrayidx.9.i, align 1
  %282 = load ptr, ptr %rtllib.i, align 8
  %arrayidx.10.i = getelementptr %struct.rtllib_device, ptr %282, i32 0, i32 98, i32 11
  %283 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %arrayidx.10.i, align 1
  %284 = load ptr, ptr %rtllib.i, align 8
  %arrayidx27.i = getelementptr %struct.rtllib_device, ptr %284, i32 0, i32 98, i32 12
  %285 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 2, ptr %arrayidx27.i, align 1
  %286 = load ptr, ptr %rtllib.i, align 8
  %arrayidx30.i = getelementptr %struct.rtllib_device, ptr %286, i32 0, i32 98, i32 13
  %287 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 2, ptr %arrayidx30.i, align 1
  br label %_rtl92e_get_channel_map.exit

_rtl92e_get_channel_map.exit:                     ; preds = %do.end18.i, %if.then.i56
  tail call void @rtl92e_dm_init(ptr noundef %dev) #11
  %watch_dog_timer = getelementptr i8, ptr %dev, i32 31792
  tail call void @init_timer_key(ptr noundef %watch_dog_timer, ptr noundef nonnull @_rtl92e_watchdog_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @_rtl92e_init.__key) #11
  %gpio_polling_timer = getelementptr i8, ptr %dev, i32 31888
  tail call void @init_timer_key(ptr noundef %gpio_polling_timer, ptr noundef nonnull @rtl92e_check_rfctrl_gpio_timer, i32 noundef 0, ptr noundef nonnull @.str.91, ptr noundef nonnull @_rtl92e_init.__key.90) #11
  %288 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.rtl819x_ops, ptr %289, i32 0, i32 13
  %290 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %irq_disable.i, align 4
  tail call void %291(ptr noundef %dev) #11
  %292 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 0, ptr %irq_enabled.i, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %293 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %294, ptr noundef nonnull @_rtl92e_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %295 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %irq, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %_rtl92e_get_channel_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %296) #14
  br label %cleanup

if.end:                                           ; preds = %_rtl92e_get_channel_map.exit
  %irq9 = getelementptr i8, ptr %dev, i32 30788
  %297 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %irq9, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %298 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %298, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end.do.end20_crit_edge, label %do.end15

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %296) #14
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %if.end.do.end20_crit_edge
  %rx_ring_dma.i.i = getelementptr i8, ptr %dev, i32 34988
  %rx_ring.i.i = getelementptr i8, ptr %dev, i32 34728
  %rx_buf.i.i = getelementptr i8, ptr %dev, i32 34732
  %299 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %priv.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %300, i32 0, i32 44
  %301 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %rxringcount.i, align 8
  %mul.i.i = shl i32 %302, 4
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i.i, i32 noundef %mul.i.i, ptr noundef %rx_ring_dma.i.i, i32 noundef 2592, i32 noundef 0) #11
  %303 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i.i.i, ptr %rx_ring.i.i, align 4
  %tobool.not.i.i = icmp ne ptr %call.i.i.i, null
  %304 = ptrtoint ptr %call.i.i.i to i32
  %and.i.i = and i32 %304, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool9.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.238) #14
  br label %if.then23

if.end.i.i:                                       ; preds = %do.end20
  %rx_idx.i.i = getelementptr i8, ptr %dev, i32 34992
  %305 = ptrtoint ptr %rx_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 0, ptr %rx_idx.i.i, align 4
  %306 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %rxringcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %cmp13101.i.i = icmp sgt i32 %307, 0
  br i1 %cmp13101.i.i, label %if.end.i.i.for.body14.i.i_crit_edge, label %if.end.i.i.for.body.i63.preheader_crit_edge

if.end.i.i.for.body.i63.preheader_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i63.preheader

if.end.i.i.for.body14.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body14.i.i

for.body14.i.i:                                   ; preds = %for.inc.i.i.for.body14.i.i_crit_edge, %if.end.i.i.for.body14.i.i_crit_edge
  %i.0102.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body14.i.i_crit_edge ], [ 0, %if.end.i.i.for.body14.i.i_crit_edge ]
  %308 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %rxbuffersize.i, align 4
  %conv.i.i = zext i16 %309 to i32
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv.i.i, i32 noundef 2592) #11
  %310 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rx_ring.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.rx_desc, ptr %311, i32 %i.0102.i.i
  %tobool19.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool19.not.i.i, label %for.body14.i.i.for.body.i63.preheader_crit_edge, label %if.end21.i.i

for.body14.i.i.for.body.i63.preheader_crit_edge:  ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i63.preheader

if.end21.i.i:                                     ; preds = %for.body14.i.i
  %312 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i.i, i32 0, i32 2
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %dev, ptr %312, align 8
  %arrayidx23.i.i = getelementptr [64 x ptr], ptr %rx_buf.i.i, i32 0, i32 %i.0102.i.i
  %314 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call.i.i.i.i, ptr %arrayidx23.i.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %315 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %priv.i, align 8
  %dev25.i.i = getelementptr inbounds %struct.pci_dev, ptr %316, i32 0, i32 44
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %317 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %tail.i.i.i, align 8
  %319 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %rxbuffersize.i, align 4
  %call.i92.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %318) #11
  br i1 %call.i92.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end21.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !486

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev25.i.i) #11
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %316, i32 0, i32 44, i32 3
  %321 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %322, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %323 = ptrtoint ptr %dev25.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev25.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %324, %if.end.i.i.i.i ], [ %322, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.202, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.203, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv28.i.i = zext i16 %320 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev25.i.i, ptr noundef %318, i32 noundef %conv28.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %325 = load ptr, ptr @mem_map, align 4
  %326 = ptrtoint ptr %318 to i32
  %sub.i.i.i = add i32 %326, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %325, i32 %shr.i.i.i
  %and.i.i.i = and i32 %326, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev25.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %conv28.i.i, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %327 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %retval.0.i.i.i, ptr %cb.i.i, align 4
  %328 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %priv.i, align 8
  %dev31.i.i = getelementptr inbounds %struct.pci_dev, ptr %329, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev31.i.i, i32 noundef %retval.0.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then34.i.i, label %for.inc.i.i

if.then34.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1) #11
  br label %if.then23

for.inc.i.i:                                      ; preds = %dma_map_single_attrs.exit.i.i
  %330 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %cb.i.i, align 4
  %BufferAddress.i.i = getelementptr %struct.rx_desc, ptr %311, i32 %i.0102.i.i, i32 5
  %332 = ptrtoint ptr %BufferAddress.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %BufferAddress.i.i, align 4
  %333 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %rxbuffersize.i, align 4
  %335 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %bf.load.i.i = load i16, ptr %arrayidx18.i.i, align 4
  %bf.shl.i.i = shl i16 %334, 2
  %bf.clear.i.i = and i16 %bf.load.i.i, 3
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %arrayidx18.i.i, align 4
  %OWN.i.i = getelementptr %struct.rx_desc, ptr %311, i32 %i.0102.i.i, i32 2
  %336 = ptrtoint ptr %OWN.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %bf.load37.i.i = load i8, ptr %OWN.i.i, align 1
  %bf.set39.i.i = or i8 %bf.load37.i.i, 1
  store i8 %bf.set39.i.i, ptr %OWN.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0102.i.i, 1
  %337 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %rxringcount.i, align 8
  %cmp13.i.i = icmp slt i32 %inc.i.i, %338
  br i1 %cmp13.i.i, label %for.inc.i.i.for.body14.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body14.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool41.not.i.i = icmp eq ptr %arrayidx18.i.i, null
  br i1 %tobool41.not.i.i, label %for.end.i.i.for.body.i63.preheader_crit_edge, label %if.then42.i.i

for.end.i.i.for.body.i63.preheader_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i63.preheader

if.then42.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set45.i.i = or i8 %bf.load37.i.i, 3
  %339 = ptrtoint ptr %OWN.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %bf.set45.i.i, ptr %OWN.i.i, align 1
  br label %for.body.i63.preheader

for.body.i63.preheader:                           ; preds = %if.then42.i.i, %for.end.i.i.for.body.i63.preheader_crit_edge, %for.body14.i.i.for.body.i63.preheader_crit_edge, %if.end.i.i.for.body.i63.preheader_crit_edge
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.inc.i.for.body.i63_crit_edge, %for.body.i63.preheader
  %i.064.i = phi i32 [ %inc.i, %for.inc.i.for.body.i63_crit_edge ], [ 0, %for.body.i63.preheader ]
  %340 = ptrtoint ptr %txringcount.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %txringcount.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i.i) #11
  %342 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -1, ptr %dma.i.i, align 4, !annotation !485
  %343 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %priv.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %344, i32 0, i32 44
  %mul.i34.i = shl i32 %341, 5
  %call.i.i35.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef %mul.i34.i, ptr noundef nonnull %dma.i.i, i32 noundef 2592, i32 noundef 0) #11
  %tobool.not.i36.i = icmp ne ptr %call.i.i35.i, null
  %345 = ptrtoint ptr %call.i.i35.i to i32
  %and.i37.i = and i32 %345, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool3.not.i.i = icmp eq i32 %and.i37.i, 0
  %or.cond.i38.i = select i1 %tobool.not.i36.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i38.i, label %if.end.i40.i, label %err_free_rings.i

if.end.i40.i:                                     ; preds = %for.body.i63
  %arrayidx.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.064.i
  %346 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %call.i.i35.i, ptr %arrayidx.i.i, align 8
  %347 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %dma.i.i, align 4
  %dma6.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.064.i, i32 1
  %349 = ptrtoint ptr %dma6.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %dma6.i.i, align 4
  %idx.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.064.i, i32 2
  %350 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 0, ptr %idx.i.i, align 8
  %entries11.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.064.i, i32 3
  %351 = ptrtoint ptr %entries11.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %341, ptr %entries11.i.i, align 4
  %queue.i.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %i.064.i, i32 4
  %lock.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %352 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %queue.i.i, ptr %queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.anon.69, ptr %queue.i.i, i32 0, i32 1
  %353 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %queue.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i.i, i32 0, i32 1
  %354 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %cmp40.not.i.i = icmp eq i32 %341, 0
  br i1 %cmp40.not.i.i, label %if.end.i40.i.for.inc.i_crit_edge, label %if.end.i40.i.for.body.i.i_crit_edge

if.end.i40.i.for.body.i.i_crit_edge:              ; preds = %if.end.i40.i
  br label %for.body.i.i

if.end.i40.i.for.inc.i_crit_edge:                 ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i40.i.for.body.i.i_crit_edge
  %i.041.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i40.i.for.body.i.i_crit_edge ]
  %355 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %dma.i.i, align 4
  %add.i.i = add nuw i32 %i.041.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %341)
  %357 = icmp eq i32 %add.i.i, %341
  %add.op.i.i = shl i32 %add.i.i, 5
  %mul14.i.i = select i1 %357, i32 0, i32 %add.op.i.i
  %add15.i.i = add i32 %mul14.i.i, %356
  %NextDescAddress.i.i = getelementptr %struct.tx_desc, ptr %call.i.i35.i, i32 %i.041.i.i, i32 9
  %358 = ptrtoint ptr %NextDescAddress.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %add15.i.i, ptr %NextDescAddress.i.i, align 4
  br i1 %357, label %for.body.i.i.for.inc.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.i.for.inc.i_crit_edge, %if.end.i40.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i) #11
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i64, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i63_crit_edge

for.inc.i.for.body.i63_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i63

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_rings.i:                                 ; preds = %for.body.i63
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.239, i32 noundef %i.064.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i.i) #11
  %359 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %rxringcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %cmp234.i.i = icmp sgt i32 %360, 0
  br i1 %cmp234.i.i, label %err_free_rings.i.for.body3.i.i_crit_edge, label %err_free_rings.i._rtl92e_free_rx_ring.exit.i_crit_edge

err_free_rings.i._rtl92e_free_rx_ring.exit.i_crit_edge: ; preds = %err_free_rings.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_free_rx_ring.exit.i

err_free_rings.i.for.body3.i.i_crit_edge:         ; preds = %err_free_rings.i
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %cleanup.i.i.for.body3.i.i_crit_edge, %err_free_rings.i.for.body3.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i49.i, %cleanup.i.i.for.body3.i.i_crit_edge ], [ 0, %err_free_rings.i.for.body3.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr [64 x ptr], ptr %rx_buf.i.i, i32 0, i32 %i.035.i.i
  %361 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i45.i = icmp eq ptr %362, null
  br i1 %tobool.not.i45.i, label %for.body3.i.i.cleanup.i.i_crit_edge, label %if.end.i48.i

for.body3.i.i.cleanup.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

if.end.i48.i:                                     ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %363 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %priv.i, align 8
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %364, i32 0, i32 44
  %cb.i46.i = getelementptr inbounds %struct.sk_buff, ptr %362, i32 0, i32 3
  %365 = ptrtoint ptr %cb.i46.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %cb.i46.i, align 8
  %367 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %rxbuffersize.i, align 4
  %conv.i47.i = zext i16 %368 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i, i32 noundef %366, i32 noundef %conv.i47.i, i32 noundef 2, i32 noundef 0) #11
  call void @kfree_skb_reason(ptr noundef nonnull %362, i32 noundef 0) #11
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i48.i, %for.body3.i.i.cleanup.i.i_crit_edge
  %inc.i49.i = add nuw nsw i32 %i.035.i.i, 1
  %369 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %rxringcount.i, align 8
  %cmp2.i.i = icmp slt i32 %inc.i49.i, %370
  br i1 %cmp2.i.i, label %cleanup.i.i.for.body3.i.i_crit_edge, label %cleanup.i.i._rtl92e_free_rx_ring.exit.i_crit_edge

cleanup.i.i._rtl92e_free_rx_ring.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_free_rx_ring.exit.i

cleanup.i.i.for.body3.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i.i

_rtl92e_free_rx_ring.exit.i:                      ; preds = %cleanup.i.i._rtl92e_free_rx_ring.exit.i_crit_edge, %err_free_rings.i._rtl92e_free_rx_ring.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %360, %err_free_rings.i._rtl92e_free_rx_ring.exit.i_crit_edge ], [ %370, %cleanup.i.i._rtl92e_free_rx_ring.exit.i_crit_edge ]
  %371 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %priv.i, align 8
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %372, i32 0, i32 44
  %mul.i50.i = shl i32 %.lcssa.i.i, 4
  %373 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rx_ring.i.i, align 4
  %375 = ptrtoint ptr %rx_ring_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %rx_ring_dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev7.i.i, i32 noundef %mul.i50.i, ptr noundef %374, i32 noundef %376, i32 noundef 0) #11
  %377 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr null, ptr %rx_ring.i.i, align 4
  %arrayidx.i65 = getelementptr i8, ptr %dev, i32 35020
  %378 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx.i65, align 8
  %tobool12.not.i = icmp eq ptr %379, null
  br i1 %tobool12.not.i, label %_rtl92e_free_rx_ring.exit.i.for.inc15.i_crit_edge, label %if.then13.i

_rtl92e_free_rx_ring.exit.i.for.inc15.i_crit_edge: ; preds = %_rtl92e_free_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.i

if.then13.i:                                      ; preds = %_rtl92e_free_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 0) #11
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %if.then13.i, %_rtl92e_free_rx_ring.exit.i.for.inc15.i_crit_edge
  %arrayidx.1.i66 = getelementptr i8, ptr %dev, i32 35092
  %380 = ptrtoint ptr %arrayidx.1.i66 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.1.i66, align 8
  %tobool12.not.1.i = icmp eq ptr %381, null
  br i1 %tobool12.not.1.i, label %for.inc15.i.for.inc15.1.i_crit_edge, label %if.then13.1.i

for.inc15.i.for.inc15.1.i_crit_edge:              ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.1.i

if.then13.1.i:                                    ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 1) #11
  br label %for.inc15.1.i

for.inc15.1.i:                                    ; preds = %if.then13.1.i, %for.inc15.i.for.inc15.1.i_crit_edge
  %arrayidx.2.i67 = getelementptr i8, ptr %dev, i32 35164
  %382 = ptrtoint ptr %arrayidx.2.i67 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx.2.i67, align 8
  %tobool12.not.2.i = icmp eq ptr %383, null
  br i1 %tobool12.not.2.i, label %for.inc15.1.i.for.inc15.2.i_crit_edge, label %if.then13.2.i

for.inc15.1.i.for.inc15.2.i_crit_edge:            ; preds = %for.inc15.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.2.i

if.then13.2.i:                                    ; preds = %for.inc15.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 2) #11
  br label %for.inc15.2.i

for.inc15.2.i:                                    ; preds = %if.then13.2.i, %for.inc15.1.i.for.inc15.2.i_crit_edge
  %arrayidx.3.i68 = getelementptr i8, ptr %dev, i32 35236
  %384 = ptrtoint ptr %arrayidx.3.i68 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx.3.i68, align 8
  %tobool12.not.3.i = icmp eq ptr %385, null
  br i1 %tobool12.not.3.i, label %for.inc15.2.i.for.inc15.3.i_crit_edge, label %if.then13.3.i

for.inc15.2.i.for.inc15.3.i_crit_edge:            ; preds = %for.inc15.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.3.i

if.then13.3.i:                                    ; preds = %for.inc15.2.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 3) #11
  br label %for.inc15.3.i

for.inc15.3.i:                                    ; preds = %if.then13.3.i, %for.inc15.2.i.for.inc15.3.i_crit_edge
  %arrayidx.4.i69 = getelementptr i8, ptr %dev, i32 35308
  %386 = ptrtoint ptr %arrayidx.4.i69 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.4.i69, align 8
  %tobool12.not.4.i = icmp eq ptr %387, null
  br i1 %tobool12.not.4.i, label %for.inc15.3.i.for.inc15.4.i_crit_edge, label %if.then13.4.i

for.inc15.3.i.for.inc15.4.i_crit_edge:            ; preds = %for.inc15.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.4.i

if.then13.4.i:                                    ; preds = %for.inc15.3.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 4) #11
  br label %for.inc15.4.i

for.inc15.4.i:                                    ; preds = %if.then13.4.i, %for.inc15.3.i.for.inc15.4.i_crit_edge
  %arrayidx.5.i70 = getelementptr i8, ptr %dev, i32 35380
  %388 = ptrtoint ptr %arrayidx.5.i70 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx.5.i70, align 8
  %tobool12.not.5.i = icmp eq ptr %389, null
  br i1 %tobool12.not.5.i, label %for.inc15.4.i.for.inc15.5.i_crit_edge, label %if.then13.5.i

for.inc15.4.i.for.inc15.5.i_crit_edge:            ; preds = %for.inc15.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.5.i

if.then13.5.i:                                    ; preds = %for.inc15.4.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 5) #11
  br label %for.inc15.5.i

for.inc15.5.i:                                    ; preds = %if.then13.5.i, %for.inc15.4.i.for.inc15.5.i_crit_edge
  %arrayidx.6.i71 = getelementptr i8, ptr %dev, i32 35452
  %390 = ptrtoint ptr %arrayidx.6.i71 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx.6.i71, align 8
  %tobool12.not.6.i = icmp eq ptr %391, null
  br i1 %tobool12.not.6.i, label %for.inc15.5.i.for.inc15.6.i_crit_edge, label %if.then13.6.i

for.inc15.5.i.for.inc15.6.i_crit_edge:            ; preds = %for.inc15.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.6.i

if.then13.6.i:                                    ; preds = %for.inc15.5.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 6) #11
  br label %for.inc15.6.i

for.inc15.6.i:                                    ; preds = %if.then13.6.i, %for.inc15.5.i.for.inc15.6.i_crit_edge
  %arrayidx.7.i72 = getelementptr i8, ptr %dev, i32 35524
  %392 = ptrtoint ptr %arrayidx.7.i72 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.7.i72, align 8
  %tobool12.not.7.i = icmp eq ptr %393, null
  br i1 %tobool12.not.7.i, label %for.inc15.6.i.for.inc15.7.i_crit_edge, label %if.then13.7.i

for.inc15.6.i.for.inc15.7.i_crit_edge:            ; preds = %for.inc15.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc15.7.i

if.then13.7.i:                                    ; preds = %for.inc15.6.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 7) #11
  br label %for.inc15.7.i

for.inc15.7.i:                                    ; preds = %if.then13.7.i, %for.inc15.6.i.for.inc15.7.i_crit_edge
  %arrayidx.8.i73 = getelementptr i8, ptr %dev, i32 35596
  %394 = ptrtoint ptr %arrayidx.8.i73 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx.8.i73, align 8
  %tobool12.not.8.i = icmp eq ptr %395, null
  br i1 %tobool12.not.8.i, label %for.inc15.7.i.if.then23_crit_edge, label %if.then13.8.i

for.inc15.7.i.if.then23_crit_edge:                ; preds = %for.inc15.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then13.8.i:                                    ; preds = %for.inc15.7.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef 8) #11
  br label %if.then23

if.then23:                                        ; preds = %if.then13.8.i, %for.inc15.7.i.if.then23_crit_edge, %if.then34.i.i, %if.then.i.i
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.95) #14
  %396 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %irq, align 4
  %call25 = call ptr @free_irq(i32 noundef %397, ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.inc.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i16 [ -1, %if.then ], [ -1, %if.then23 ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rtllib(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #11
  %up.i = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp eq i16 %1, 1
  br i1 %cmp.i, label %entry._rtl92e_try_up.exit_crit_edge, label %if.end.i

entry._rtl92e_try_up.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_try_up.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc i32 @_rtl92e_up(ptr noundef %dev, i1 noundef zeroext false) #11
  br label %_rtl92e_try_up.exit

_rtl92e_try_up.exit:                              ; preds = %if.end.i, %entry._rtl92e_try_up.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -1, %entry._rtl92e_try_up.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call zeroext i1 @rtllib_act_scanning(ptr noundef %1, i1 noundef zeroext false) #11
  br i1 %call1, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %softmac_features = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 104
  %4 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %softmac_features, align 2
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtllib_stop_scan(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #11
  %call4 = tail call fastcc i32 @_rtl92e_down(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_xmit(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @_rtl92e_set_multicast(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = trunc i32 %1 to i16
  %3 = lshr i16 %2, 8
  %4 = and i16 %3, 1
  %promisc1 = getelementptr i8, ptr %dev, i32 35792
  %5 = ptrtoint ptr %promisc1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %promisc1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_set_mac_adr(ptr noundef %dev, ptr noundef %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #11
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %mac, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  %reset_wq = getelementptr i8, ptr %dev, i32 31320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_wq) #11
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_wq = getelementptr i8, ptr %dev, i32 31320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_wq) #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.88) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtllib_act_scanning(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_stop_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92e_down(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %up.i = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i = icmp eq i16 %1, 0
  br i1 %cmp.i, label %entry._rtl92e_sta_down.exit_crit_edge, label %if.end.i

entry._rtl92e_sta_down.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_sta_down.exit

if.end.i:                                         ; preds = %entry
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib.i, align 8
  %rtllib_ips_leave.i = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 206
  %4 = ptrtoint ptr %rtllib_ips_leave.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib_ips_leave.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %dev) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %6 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtllib.i, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %7, i32 0, i32 90
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp7.i = icmp eq i32 %9, 5
  br i1 %cmp7.i, label %if.then9.i, label %if.end5.i.if.end10.i_crit_edge

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtl92e_leisure_ps_leave(ptr noundef %dev) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end10.i_crit_edge
  %bDriverIsGoingToUnload.i = getelementptr i8, ptr %dev, i32 30784
  %10 = ptrtoint ptr %bDriverIsGoingToUnload.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bDriverIsGoingToUnload.i, align 4
  %11 = ptrtoint ptr %up.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %up.i, align 2
  %12 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtllib.i, align 8
  %ieee_up.i = getelementptr inbounds %struct.rtllib_device, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %ieee_up.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ieee_up.i, align 1
  %bfirst_after_down.i = getelementptr i8, ptr %dev, i32 30781
  %15 = ptrtoint ptr %bfirst_after_down.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bfirst_after_down.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.do.end19.i_crit_edge, label %do.end.i

if.end10.i.do.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #14
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end.i, %if.end10.i.do.end19.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then21.i, label %do.end19.i.if.end22.i_crit_edge

do.end19.i.if.end22.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then21.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %do.end19.i.if.end22.i_crit_edge
  %21 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtllib.i, align 8
  %wpa_ie_len.i = getelementptr inbounds %struct.rtllib_device, ptr %22, i32 0, i32 74
  %23 = ptrtoint ptr %wpa_ie_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wpa_ie_len.i, align 4
  %24 = load ptr, ptr %rtllib.i, align 8
  %wpa_ie.i = getelementptr inbounds %struct.rtllib_device, ptr %24, i32 0, i32 75
  %25 = ptrtoint ptr %wpa_ie.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wpa_ie.i, align 8
  tail call void @kfree(ptr noundef %26) #11
  %27 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtllib.i, align 8
  %wpa_ie26.i = getelementptr inbounds %struct.rtllib_device, ptr %28, i32 0, i32 75
  %29 = ptrtoint ptr %wpa_ie26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %wpa_ie26.i, align 8
  tail call void @rtl92e_cam_reset(ptr noundef %dev) #11
  %30 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtllib.i, align 8
  %swcamtable.i = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 82
  %32 = call ptr @memset(ptr %swcamtable.i, i32 0, i32 896)
  %ops.i.i = getelementptr i8, ptr %dev, i32 31312
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %irq_disable.i.i = getelementptr inbounds %struct.rtl819x_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %irq_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_disable.i.i, align 4
  tail call void %36(ptr noundef %dev) #11
  %irq_enabled.i.i = getelementptr i8, ptr %dev, i32 30792
  %37 = ptrtoint ptr %irq_enabled.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %irq_enabled.i.i, align 4
  %watch_dog_timer.i = getelementptr i8, ptr %dev, i32 31792
  %call28.i = tail call i32 @del_timer_sync(ptr noundef %watch_dog_timer.i) #11
  %watch_dog_wq.i.i = getelementptr i8, ptr %dev, i32 30900
  %call.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watch_dog_wq.i.i) #11
  %update_beacon_wq.i.i = getelementptr i8, ptr %dev, i32 30800
  %call1.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_beacon_wq.i.i) #11
  %38 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtllib.i, align 8
  %hw_sleep_wq.i.i = getelementptr inbounds %struct.rtllib_device, ptr %39, i32 0, i32 170
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hw_sleep_wq.i.i) #11
  %reset_wq.i.i = getelementptr i8, ptr %dev, i32 31320
  %call3.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_wq.i.i) #11
  %qos_activate.i.i = getelementptr i8, ptr %dev, i32 35748
  %call4.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %qos_activate.i.i) #11
  %40 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtllib.i, align 8
  %hw_wakeup_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 169
  %call30.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hw_wakeup_wq.i) #11
  %42 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rtllib.i, align 8
  tail call void @rtllib_softmac_stop_protocol(ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %rf_ps_lock.i = getelementptr i8, ptr %dev, i32 32024
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  %RFChangeInProgress.i = getelementptr i8, ptr %dev, i32 36010
  %44 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %RFChangeInProgress.i, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool43.not6.i = icmp eq i8 %45, 0
  br i1 %tobool43.not6.i, label %if.end22.i.while.end.i_crit_edge, label %if.end22.i.while.body.i_crit_edge

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  br label %while.body.i

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %do.end75.i.while.body.i_crit_edge, %if.end22.i.while.body.i_crit_edge
  %flags.08.i = phi i32 [ %call85.i, %do.end75.i.while.body.i_crit_edge ], [ %call38.i, %if.end22.i.while.body.i_crit_edge ]
  %RFInProgressTimeOut.07.i = phi i8 [ %inc.i, %do.end75.i.while.body.i_crit_edge ], [ 0, %if.end22.i.while.body.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %flags.08.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %RFInProgressTimeOut.07.i)
  %cmp46.i = icmp ugt i8 %RFInProgressTimeOut.07.i, 100
  br i1 %cmp46.i, label %do.body50.i, label %do.body64.i

do.body50.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call58.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  br label %while.end.i

do.body64.i:                                      ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %46 = load i32, ptr @rt_global_debug_component, align 4
  %and65.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %do.body64.i.do.end75.i_crit_edge, label %do.end70.i

do.body64.i.do.end75.i_crit_edge:                 ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75.i

do.end70.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.81) #14
  br label %do.end75.i

do.end75.i:                                       ; preds = %do.end70.i, %do.body64.i.do.end75.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #11
  %inc.i = add nuw nsw i8 %RFInProgressTimeOut.07.i, 1
  %call85.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  %48 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %RFChangeInProgress.i, align 2, !range !484
  %tobool43.not.i = icmp eq i8 %49, 0
  br i1 %tobool43.not.i, label %do.end75.i.while.end.i_crit_edge, label %do.end75.i.while.body.i_crit_edge

do.end75.i.while.body.i_crit_edge:                ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end75.i.while.end.i_crit_edge:                 ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end75.i.while.end.i_crit_edge, %do.body50.i, %if.end22.i.while.end.i_crit_edge
  %flags.1.i = phi i32 [ %call58.i, %do.body50.i ], [ %call38.i, %if.end22.i.while.end.i_crit_edge ], [ %call85.i, %do.end75.i.while.end.i_crit_edge ]
  %50 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %RFChangeInProgress.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %flags.1.i) #11
  %51 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i.i, align 4
  %stop_adapter.i = getelementptr inbounds %struct.rtl819x_ops, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %stop_adapter.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stop_adapter.i, align 4
  tail call void %54(ptr noundef %dev, i1 noundef zeroext false) #11
  %call101.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  %55 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %RFChangeInProgress.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %call101.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 21474800) #11
  %57 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rtllib.i, align 8
  %current_network.i = getelementptr inbounds %struct.rtllib_device, ptr %58, i32 0, i32 89
  %59 = call ptr @memset(ptr %current_network.i, i32 0, i32 1088)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %60 = load i32, ptr @rt_global_debug_component, align 4
  %and110.i = and i32 %60, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %while.end.i._rtl92e_sta_down.exit_crit_edge, label %do.end115.i

while.end.i._rtl92e_sta_down.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_sta_down.exit

do.end115.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.81) #14
  br label %_rtl92e_sta_down.exit

_rtl92e_sta_down.exit:                            ; preds = %do.end115.i, %while.end.i._rtl92e_sta_down.exit_crit_edge, %entry._rtl92e_sta_down.exit_crit_edge
  %61 = phi i32 [ -1, %entry._rtl92e_sta_down.exit_crit_edge ], [ 0, %do.end115.i ], [ 0, %while.end.i._rtl92e_sta_down.exit_crit_edge ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_leisure_ps_leave(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_cam_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_irq(i32 noundef %irq, ptr noundef %netdev) #0 align 64 {
entry:
  %inta = alloca i32, align 4
  %intb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inta) #11
  %0 = ptrtoint ptr %inta to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inta, align 4, !annotation !485
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intb) #11
  %1 = ptrtoint ptr %intb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %intb, align 4
  %irq_enabled = getelementptr i8, ptr %netdev, i32 30792
  %2 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %irq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.done_crit_edge, label %do.body2

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body2:                                         ; preds = %entry
  %irq_th_lock = getelementptr i8, ptr %netdev, i32 31936
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #11
  %ops = getelementptr i8, ptr %netdev, i32 31312
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %interrupt_recognized = getelementptr inbounds %struct.rtl819x_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %interrupt_recognized to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_recognized, align 4
  call void %7(ptr noundef %netdev, ptr noundef nonnull %inta, ptr noundef nonnull %intb) #11
  %stats = getelementptr i8, ptr %netdev, i32 32516
  %shints = getelementptr i8, ptr %netdev, i32 33368
  %8 = ptrtoint ptr %shints to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shints, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %shints, align 4
  %10 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inta, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %11, label %if.end16 [
    i32 0, label %do.body2.done.sink.split_crit_edge
    i32 65535, label %do.body2.done.sink.split_crit_edge353
  ]

do.body2.done.sink.split_crit_edge353:            ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split

do.body2.done.sink.split_crit_edge:               ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split

if.end16:                                         ; preds = %do.body2
  %ints = getelementptr i8, ptr %netdev, i32 33364
  %13 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ints, align 8
  %inc18 = add i32 %14, 1
  store i32 %inc18, ptr %ints, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end16.done.sink.split_crit_edge, label %if.end22

if.end16.done.sink.split_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split

if.end22:                                         ; preds = %if.end16
  %and = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.if.end39_crit_edge, label %do.body25

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.body25:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %17 = load i32, ptr @rt_global_debug_component, align 4
  %and26 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end36_crit_edge, label %do.end31

do.body25.do.end36_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #14
  br label %do.end36

do.end36:                                         ; preds = %do.end31, %do.body25.do.end36_crit_edge
  %txbeaconokint = getelementptr i8, ptr %netdev, i32 33392
  %18 = ptrtoint ptr %txbeaconokint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txbeaconokint, align 4
  %inc38 = add i32 %19, 1
  store i32 %inc38, ptr %txbeaconokint, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.end22.if.end39_crit_edge
  %20 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inta, align 4
  %and40 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end57_crit_edge, label %do.body43

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

do.body43:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %22 = load i32, ptr @rt_global_debug_component, align 4
  %and44 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.do.end54_crit_edge, label %do.end49

do.body43.do.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #14
  br label %do.end54

do.end54:                                         ; preds = %do.end49, %do.body43.do.end54_crit_edge
  %txbeaconerr = getelementptr i8, ptr %netdev, i32 33396
  %23 = ptrtoint ptr %txbeaconerr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txbeaconerr, align 8
  %inc56 = add i32 %24, 1
  store i32 %inc56, ptr %txbeaconerr, align 8
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.end39.if.end57_crit_edge
  %25 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inta, align 4
  %and58 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end73_crit_edge, label %do.body61

if.end57.if.end73_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.body61:                                        ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %27 = load i32, ptr @rt_global_debug_component, align 4
  %and62 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body61.if.end73_crit_edge, label %do.end67

do.body61.if.end73_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end67:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #14
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %do.body61.if.end73_crit_edge, %if.end57.if.end73_crit_edge
  %28 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inta, align 4
  %and74 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end116_crit_edge, label %do.body77

if.end73.if.end116_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

do.body77:                                        ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %30 = load i32, ptr @rt_global_debug_component, align 4
  %and78 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body77.do.end88_crit_edge, label %do.end83

do.body77.do.end88_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

do.end83:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #14
  br label %do.end88

do.end88:                                         ; preds = %do.end83, %do.body77.do.end88_crit_edge
  %txmanageokint = getelementptr i8, ptr %netdev, i32 33400
  %31 = ptrtoint ptr %txmanageokint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txmanageokint, align 4
  %inc90 = add i32 %32, 1
  store i32 %inc90, ptr %txmanageokint, align 4
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 6)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call6) #11
  %rtllib = getelementptr i8, ptr %netdev, i32 31316
  %33 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rtllib, align 8
  %ack_tx_to_ieee = getelementptr inbounds %struct.rtllib_device, ptr %34, i32 0, i32 108
  %35 = ptrtoint ptr %ack_tx_to_ieee to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ack_tx_to_ieee, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool92.not = icmp eq i8 %36, 0
  br i1 %tobool92.not, label %do.end88.do.body103_crit_edge, label %if.then93

do.end88.do.body103_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body103

if.then93:                                        ; preds = %do.end88
  %qlen.i.i = getelementptr i8, ptr %netdev, i32 35044
  %37 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.not.i = icmp eq i32 %38, 0
  br i1 %cmp4.not.i, label %if.end.1.i, label %if.then93._rtl92e_is_tx_queue_empty.exit.thread_crit_edge

if.then93._rtl92e_is_tx_queue_empty.exit.thread_crit_edge: ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_is_tx_queue_empty.exit.thread

_rtl92e_is_tx_queue_empty.exit.thread:            ; preds = %if.end.6.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge, %if.end.3.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge, %if.end.2.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge, %if.end.1.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge, %if.then93._rtl92e_is_tx_queue_empty.exit.thread_crit_edge
  %i.022.lcssa.i = phi i32 [ 0, %if.then93._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ 1, %if.end.1.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ 2, %if.end.2.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ 3, %if.end.3.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ 6, %if.end.6.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ]
  %.lcssa.i = phi i32 [ %38, %if.then93._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ %40, %if.end.1.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ %42, %if.end.2.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ %44, %if.end.3.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ], [ %46, %if.end.6.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.108, i32 noundef %i.022.lcssa.i, i32 noundef %.lcssa.i) #14
  br label %do.body103

if.end.1.i:                                       ; preds = %if.then93
  %qlen.i.1.i = getelementptr i8, ptr %netdev, i32 35116
  %39 = ptrtoint ptr %qlen.i.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp4.not.1.i = icmp eq i32 %40, 0
  br i1 %cmp4.not.1.i, label %if.end.2.i, label %if.end.1.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge

if.end.1.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_is_tx_queue_empty.exit.thread

if.end.2.i:                                       ; preds = %if.end.1.i
  %qlen.i.2.i = getelementptr i8, ptr %netdev, i32 35188
  %41 = ptrtoint ptr %qlen.i.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp4.not.2.i = icmp eq i32 %42, 0
  br i1 %cmp4.not.2.i, label %if.end.3.i, label %if.end.2.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge

if.end.2.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_is_tx_queue_empty.exit.thread

if.end.3.i:                                       ; preds = %if.end.2.i
  %qlen.i.3.i = getelementptr i8, ptr %netdev, i32 35260
  %43 = ptrtoint ptr %qlen.i.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp4.not.3.i = icmp eq i32 %44, 0
  br i1 %cmp4.not.3.i, label %if.end.6.i, label %if.end.3.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge

if.end.3.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_is_tx_queue_empty.exit.thread

if.end.6.i:                                       ; preds = %if.end.3.i
  %qlen.i.6.i = getelementptr i8, ptr %netdev, i32 35476
  %45 = ptrtoint ptr %qlen.i.6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %qlen.i.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp4.not.6.i = icmp eq i32 %46, 0
  br i1 %cmp4.not.6.i, label %if.then96, label %if.end.6.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge

if.end.6.i._rtl92e_is_tx_queue_empty.exit.thread_crit_edge: ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_is_tx_queue_empty.exit.thread

if.then96:                                        ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtllib, align 8
  %ack_tx_to_ieee98 = getelementptr inbounds %struct.rtllib_device, ptr %48, i32 0, i32 108
  %49 = ptrtoint ptr %ack_tx_to_ieee98 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ack_tx_to_ieee98, align 2
  %50 = load ptr, ptr %rtllib, align 8
  call void @rtllib_ps_tx_ack(ptr noundef %50, i16 noundef signext 1) #11
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %_rtl92e_is_tx_queue_empty.exit.thread, %do.end88.do.body103_crit_edge
  %call111 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #11
  br label %if.end116

if.end116:                                        ; preds = %do.body103, %if.end73.if.end116_crit_edge
  %flags.0 = phi i32 [ %call111, %do.body103 ], [ %call6, %if.end73.if.end116_crit_edge ]
  %51 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %inta, align 4
  %and117 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end116.if.end122_crit_edge, label %if.then119

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %txcmdpktokint = getelementptr i8, ptr %netdev, i32 33404
  %53 = ptrtoint ptr %txcmdpktokint to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txcmdpktokint, align 8
  %inc121 = add i32 %54, 1
  store i32 %inc121, ptr %txcmdpktokint, align 8
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 5)
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end116.if.end122_crit_edge
  %55 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %inta, align 4
  %and123 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end126_crit_edge, label %if.then125

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 7)
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end122.if.end126_crit_edge
  %57 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %inta, align 4
  %and127 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.if.end133_crit_edge, label %if.then129

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then129:                                       ; preds = %if.end126
  %rxint = getelementptr i8, ptr %netdev, i32 33360
  %59 = ptrtoint ptr %rxint to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxint, align 4
  %inc131 = add i32 %60, 1
  store i32 %inc131, ptr %rxint, align 4
  %nIMR_ROK = getelementptr i8, ptr %netdev, i32 31392
  %61 = ptrtoint ptr %nIMR_ROK to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nIMR_ROK, align 4
  %inc132 = add i32 %62, 1
  store i32 %inc132, ptr %nIMR_ROK, align 4
  %state.i333 = getelementptr i8, ptr %netdev, i32 32172
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i333) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then129.if.end133_crit_edge

if.then129.if.end133_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then.i:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  %irq_rx_tasklet = getelementptr i8, ptr %netdev, i32 32168
  call void @__tasklet_schedule(ptr noundef %irq_rx_tasklet) #11
  br label %if.end133

if.end133:                                        ; preds = %if.then.i, %if.then129.if.end133_crit_edge, %if.end126.if.end133_crit_edge
  %63 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inta, align 4
  %and134 = and i32 %64, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end149_crit_edge, label %do.body137

if.end133.if.end149_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

do.body137:                                       ; preds = %if.end133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %65 = load i32, ptr @rt_global_debug_component, align 4
  %and138 = and i32 %65, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %do.body137.do.end148_crit_edge, label %do.end143

do.body137.do.end148_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end148

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #13
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #14
  br label %do.end148

do.end148:                                        ; preds = %do.end143, %do.body137.do.end148_crit_edge
  %state.i334 = getelementptr i8, ptr %netdev, i32 32220
  %call.i335 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i334) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool.not.i336 = icmp eq i32 %call.i335, 0
  br i1 %tobool.not.i336, label %if.then.i337, label %do.end148.if.end149_crit_edge

do.end148.if.end149_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.then.i337:                                     ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #13
  %irq_prepare_beacon_tasklet = getelementptr i8, ptr %netdev, i32 32216
  call void @__tasklet_schedule(ptr noundef %irq_prepare_beacon_tasklet) #11
  br label %if.end149

if.end149:                                        ; preds = %if.then.i337, %do.end148.if.end149_crit_edge, %if.end133.if.end149_crit_edge
  %66 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %inta, align 4
  %and150 = and i32 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end170_crit_edge, label %do.body153

if.end149.if.end170_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

do.body153:                                       ; preds = %if.end149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %68 = load i32, ptr @rt_global_debug_component, align 4
  %and154 = and i32 %68, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %do.body153.do.end164_crit_edge, label %do.end159

do.body153.do.end164_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end164

do.end159:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #14
  br label %do.end164

do.end164:                                        ; preds = %do.end159, %do.body153.do.end164_crit_edge
  %69 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %stats, align 8
  %inc166 = add i32 %70, 1
  store i32 %inc166, ptr %stats, align 8
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 4
  %71 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mem_start.i, align 4
  %73 = inttoptr i32 %72 to ptr
  %add.ptr.i = getelementptr i8, ptr %73, i32 244
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !474
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  %75 = and i32 %74, -524289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !480
  call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mem_start.i, align 4
  %78 = inttoptr i32 %77 to ptr
  %add.ptr.i340 = getelementptr i8, ptr %78, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i340, i32 %75) #11, !srcloc !481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 4294960) #11
  %state.i341 = getelementptr i8, ptr %netdev, i32 32172
  %call.i342 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i341) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool.not.i343 = icmp eq i32 %call.i342, 0
  br i1 %tobool.not.i343, label %if.then.i344, label %do.end164.if.end170_crit_edge

do.end164.if.end170_crit_edge:                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then.i344:                                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  %irq_rx_tasklet169 = getelementptr i8, ptr %netdev, i32 32168
  call void @__tasklet_schedule(ptr noundef %irq_rx_tasklet169) #11
  br label %if.end170

if.end170:                                        ; preds = %if.then.i344, %do.end164.if.end170_crit_edge, %if.end149.if.end170_crit_edge
  %80 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %inta, align 4
  %and171 = and i32 %81, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end189_crit_edge, label %do.body174

if.end170.if.end189_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

do.body174:                                       ; preds = %if.end170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %82 = load i32, ptr @rt_global_debug_component, align 4
  %and175 = and i32 %82, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.do.end185_crit_edge, label %do.end180

do.body174.do.end185_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end185

do.end180:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #13
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #14
  br label %do.end185

do.end185:                                        ; preds = %do.end180, %do.body174.do.end185_crit_edge
  %rxoverflow = getelementptr i8, ptr %netdev, i32 33356
  %83 = ptrtoint ptr %rxoverflow to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rxoverflow, align 8
  %inc187 = add i32 %84, 1
  store i32 %inc187, ptr %rxoverflow, align 8
  %state.i346 = getelementptr i8, ptr %netdev, i32 32172
  %call.i347 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i346) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %tobool.not.i348 = icmp eq i32 %call.i347, 0
  br i1 %tobool.not.i348, label %if.then.i349, label %do.end185.if.end189_crit_edge

do.end185.if.end189_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then.i349:                                     ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #13
  %irq_rx_tasklet188 = getelementptr i8, ptr %netdev, i32 32168
  call void @__tasklet_schedule(ptr noundef %irq_rx_tasklet188) #11
  br label %if.end189

if.end189:                                        ; preds = %if.then.i349, %do.end185.if.end189_crit_edge, %if.end170.if.end189_crit_edge
  %85 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %inta, align 4
  %and190 = and i32 %86, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end189.if.end195_crit_edge, label %if.then192

if.end189.if.end195_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  %txoverflow = getelementptr i8, ptr %netdev, i32 33372
  %87 = ptrtoint ptr %txoverflow to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %txoverflow, align 8
  %inc194 = add i32 %88, 1
  store i32 %inc194, ptr %txoverflow, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end189.if.end195_crit_edge
  %and196 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end195.if.end215_crit_edge, label %do.body199

if.end195.if.end215_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

do.body199:                                       ; preds = %if.end195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %89 = load i32, ptr @rt_global_debug_component, align 4
  %and200 = and i32 %89, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body199.do.end210_crit_edge, label %do.end205

do.body199.do.end210_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end210

do.end205:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #13
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #14
  br label %do.end210

do.end210:                                        ; preds = %do.end205, %do.body199.do.end210_crit_edge
  %txbkokint = getelementptr i8, ptr %netdev, i32 33380
  %90 = ptrtoint ptr %txbkokint to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %txbkokint, align 8
  %inc212 = add i32 %91, 1
  store i32 %inc212, ptr %txbkokint, align 8
  %rtllib213 = getelementptr i8, ptr %netdev, i32 31316
  %92 = ptrtoint ptr %rtllib213 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rtllib213, align 8
  %NumTxOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %93, i32 0, i32 156, i32 6
  %94 = ptrtoint ptr %NumTxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %NumTxOkInPeriod, align 4
  %inc214 = add i32 %95, 1
  store i32 %inc214, ptr %NumTxOkInPeriod, align 4
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 0)
  br label %if.end215

if.end215:                                        ; preds = %do.end210, %if.end195.if.end215_crit_edge
  %96 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %inta, align 4
  %and216 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end215.if.end237_crit_edge, label %do.body219

if.end215.if.end237_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end237

do.body219:                                       ; preds = %if.end215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %98 = load i32, ptr @rt_global_debug_component, align 4
  %and220 = and i32 %98, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %do.body219.do.end230_crit_edge, label %do.end225

do.body219.do.end230_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end230

do.end225:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #13
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #14
  br label %do.end230

do.end230:                                        ; preds = %do.end225, %do.body219.do.end230_crit_edge
  %txbeokint = getelementptr i8, ptr %netdev, i32 33376
  %99 = ptrtoint ptr %txbeokint to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %txbeokint, align 4
  %inc232 = add i32 %100, 1
  store i32 %inc232, ptr %txbeokint, align 4
  %rtllib233 = getelementptr i8, ptr %netdev, i32 31316
  %101 = ptrtoint ptr %rtllib233 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rtllib233, align 8
  %NumTxOkInPeriod235 = getelementptr inbounds %struct.rtllib_device, ptr %102, i32 0, i32 156, i32 6
  %103 = ptrtoint ptr %NumTxOkInPeriod235 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %NumTxOkInPeriod235, align 4
  %inc236 = add i32 %104, 1
  store i32 %inc236, ptr %NumTxOkInPeriod235, align 4
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 1)
  br label %if.end237

if.end237:                                        ; preds = %do.end230, %if.end215.if.end237_crit_edge
  %105 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %inta, align 4
  %and238 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %if.end237.if.end259_crit_edge, label %do.body241

if.end237.if.end259_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

do.body241:                                       ; preds = %if.end237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %107 = load i32, ptr @rt_global_debug_component, align 4
  %and242 = and i32 %107, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %do.body241.do.end252_crit_edge, label %do.end247

do.body241.do.end252_crit_edge:                   ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end252

do.end247:                                        ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #13
  %call249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #14
  br label %do.end252

do.end252:                                        ; preds = %do.end247, %do.body241.do.end252_crit_edge
  %txviokint = getelementptr i8, ptr %netdev, i32 33384
  %108 = ptrtoint ptr %txviokint to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %txviokint, align 4
  %inc254 = add i32 %109, 1
  store i32 %inc254, ptr %txviokint, align 4
  %rtllib255 = getelementptr i8, ptr %netdev, i32 31316
  %110 = ptrtoint ptr %rtllib255 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rtllib255, align 8
  %NumTxOkInPeriod257 = getelementptr inbounds %struct.rtllib_device, ptr %111, i32 0, i32 156, i32 6
  %112 = ptrtoint ptr %NumTxOkInPeriod257 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %NumTxOkInPeriod257, align 4
  %inc258 = add i32 %113, 1
  store i32 %inc258, ptr %NumTxOkInPeriod257, align 4
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 2)
  br label %if.end259

if.end259:                                        ; preds = %do.end252, %if.end237.if.end259_crit_edge
  %114 = ptrtoint ptr %inta to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %inta, align 4
  %and260 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.end259.done.sink.split_crit_edge, label %if.then262

if.end259.done.sink.split_crit_edge:              ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split

if.then262:                                       ; preds = %if.end259
  %txvookint = getelementptr i8, ptr %netdev, i32 33388
  %116 = ptrtoint ptr %txvookint to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %txvookint, align 8
  %inc264 = add i32 %117, 1
  store i32 %inc264, ptr %txvookint, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %118 = load i32, ptr @rt_global_debug_component, align 4
  %and266 = and i32 %118, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %if.then262.do.end276_crit_edge, label %do.end271

if.then262.do.end276_crit_edge:                   ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end276

do.end271:                                        ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  %call273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236) #14
  br label %do.end276

do.end276:                                        ; preds = %do.end271, %if.then262.do.end276_crit_edge
  %rtllib277 = getelementptr i8, ptr %netdev, i32 31316
  %119 = ptrtoint ptr %rtllib277 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rtllib277, align 8
  %NumTxOkInPeriod279 = getelementptr inbounds %struct.rtllib_device, ptr %120, i32 0, i32 156, i32 6
  %121 = ptrtoint ptr %NumTxOkInPeriod279 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %NumTxOkInPeriod279, align 4
  %inc280 = add i32 %122, 1
  store i32 %inc280, ptr %NumTxOkInPeriod279, align 4
  call fastcc void @_rtl92e_tx_isr(ptr noundef %netdev, i32 noundef 3)
  br label %done.sink.split

done.sink.split:                                  ; preds = %do.end276, %if.end259.done.sink.split_crit_edge, %if.end16.done.sink.split_crit_edge, %do.body2.done.sink.split_crit_edge, %do.body2.done.sink.split_crit_edge353
  %flags.0.sink = phi i32 [ %call6, %do.body2.done.sink.split_crit_edge ], [ %call6, %do.body2.done.sink.split_crit_edge353 ], [ %call6, %if.end16.done.sink.split_crit_edge ], [ %flags.0, %do.end276 ], [ %flags.0, %if.end259.done.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %flags.0.sink) #11
  br label %done

done:                                             ; preds = %done.sink.split, %entry.done_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intb) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inta) #11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %queue_index1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %queue_index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %queue_index1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.not = icmp eq i8 %1, 5
  br i1 %cmp.not, label %if.then15, label %if.then

if.then:                                          ; preds = %entry
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %if.then.if.then8_crit_edge, label %lor.lhs.false

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %up = getelementptr i8, ptr %dev, i32 30794
  %6 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %bResetInProgress = getelementptr i8, ptr %dev, i32 36214
  %8 = ptrtoint ptr %bResetInProgress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bResetInProgress, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end16, label %lor.lhs.false5.if.then8_crit_edge

lor.lhs.false5.if.then8_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5.if.then8_crit_edge, %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %cb, align 8
  %irq_th_lock.i = getelementptr i8, ptr %dev, i32 31936
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #11
  %arrayidx.i = getelementptr i8, ptr %dev, i32 35380
  %idx7.i = getelementptr i8, ptr %dev, i32 35388
  %11 = ptrtoint ptr %idx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx7.i, align 4
  %queue.i = getelementptr i8, ptr %dev, i32 35396
  %qlen.i.i = getelementptr i8, ptr %dev, i32 35404
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i, align 4
  %add.i = add i32 %14, %12
  %entries.i = getelementptr i8, ptr %dev, i32 35392
  %15 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i, %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx9.i = getelementptr %struct.tx_desc, ptr %18, i32 %rem.i
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %tx_fill_cmd_descriptor.i = getelementptr inbounds %struct.rtl819x_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %tx_fill_cmd_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_fill_cmd_descriptor.i, align 4
  tail call void %22(ptr noundef %dev, ptr noundef %arrayidx9.i, ptr noundef %add.ptr, ptr noundef %skb) #11
  %prev.i.i.i = getelementptr i8, ptr %dev, i32 35400
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %queue.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %26 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %skb, ptr %24, align 4
  %28 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call4.i) #11
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false5
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %cb, align 8
  %RATRIndex = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %31 = ptrtoint ptr %RATRIndex to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %RATRIndex, align 2
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %add.ptr, align 2
  %bf.set19 = or i8 %bf.load, 6
  store i8 %bf.set19, ptr %add.ptr, align 2
  %bTxEnableFwCalcDur = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %33 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load20 = load i16, ptr %bTxEnableFwCalcDur, align 2
  %bf.set22 = or i16 %bf.load20, 2048
  store i16 %bf.set22, ptr %bTxEnableFwCalcDur, align 2
  %34 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rtllib, align 8
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %35, i32 0, i32 61
  %36 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_headroom, align 8
  %call24 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %37) #11
  %call25 = tail call fastcc signext i16 @_rtl92e_tx(ptr noundef %dev, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call25)
  %cmp27.not = icmp eq i16 %call25, 0
  br i1 %cmp27.not, label %if.end16.cleanup_crit_edge, label %if.then29

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv26 = sext i16 %call25 to i32
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end16.cleanup_crit_edge, %if.then15, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then15 ], [ %conv26, %if.then29 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_set_chan(ptr noundef %dev, i16 noundef signext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = sext i16 %ch to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %conv) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %chan_forced = getelementptr i8, ptr %dev, i32 36217
  %1 = ptrtoint ptr %chan_forced to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chan_forced, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %chan = getelementptr i8, ptr %dev, i32 35794
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %ch, ptr %chan, align 2
  %rf_set_chan = getelementptr i8, ptr %dev, i32 34724
  %4 = ptrtoint ptr %rf_set_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf_set_chan, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = trunc i16 %ch to i8
  %call13 = tail call zeroext i8 %5(ptr noundef %dev, i8 noundef zeroext %conv12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_hard_data_xmit(ptr noundef %skb, ptr noundef %dev, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %queue_index1 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %queue_index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %queue_index1, align 1
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %up = getelementptr i8, ptr %dev, i32 30794
  %6 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bResetInProgress = getelementptr i8, ptr %dev, i32 36214
  %8 = ptrtoint ptr %bResetInProgress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bResetInProgress, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false2.cleanup.sink.split_crit_edge

lor.lhs.false2.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp4 = icmp eq i8 %1, 5
  br i1 %cmp4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__._rtl92e_hard_data_xmit) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %cb, align 8
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 61
  %13 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_headroom, align 8
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %14) #11
  %call12 = tail call fastcc signext i16 @_rtl92e_tx(ptr noundef %dev, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp15.not = icmp eq i8 %1, 6
  br i1 %cmp15.not, label %if.end7.if.end23_crit_edge, label %if.then17

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtllib, align 8
  %tx_headroom19 = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 61
  %19 = ptrtoint ptr %tx_headroom19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_headroom19, align 8
  %sub = sub i32 %16, %20
  %tx_bytes = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 49, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %sub, %22
  store i32 %add, ptr %tx_bytes, align 4
  %23 = load ptr, ptr %rtllib, align 8
  %tx_packets = getelementptr inbounds %struct.rtllib_device, ptr %23, i32 0, i32 49, i32 1
  %24 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end7.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12)
  %cmp24.not = icmp eq i16 %call12, 0
  br i1 %cmp24.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %lor.lhs.false2.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal signext i16 @_rtl92e_check_nic_enough_desc(ptr nocapture noundef readonly %dev, i32 noundef %prio) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %entries = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 3
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  %queue = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1
  %. = zext i1 %cmp to i16
  ret i16 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_handle_assoc_response(ptr noundef %dev, ptr nocapture noundef readnone %resp, ptr noundef readonly %network) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %tobool.not.i = icmp eq ptr %priv.i, null
  %tobool1.not.i = icmp eq ptr %network, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry._rtl92e_qos_assoc_resp.exit_crit_edge, label %if.end.i

entry._rtl92e_qos_assoc_resp.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_assoc_resp.exit

if.end.i:                                         ; preds = %entry
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib.i, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 5
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i._rtl92e_qos_assoc_resp.exit_crit_edge

if.end.i._rtl92e_qos_assoc_resp.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_assoc_resp.exit

if.end3.i:                                        ; preds = %if.end.i
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5.not.i = icmp eq i32 %5, 2
  br i1 %cmp5.not.i, label %do.body8.i, label %if.end3.i._rtl92e_qos_assoc_resp.exit_crit_edge

if.end3.i._rtl92e_qos_assoc_resp.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_assoc_resp.exit

do.body8.i:                                       ; preds = %if.end3.i
  %lock.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 59
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %flags14.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %6 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags14.i, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib.i, align 8
  %qos_data40.i = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 89, i32 6
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %qos_data18.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6
  %10 = call ptr @memcpy(ptr %qos_data40.i, ptr %qos_data18.i, i32 32)
  %11 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib.i, align 8
  %active.i = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 89, i32 6, i32 2
  %13 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %active.i, align 4
  %wmm_acm.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wmm_acm.i, align 4
  %16 = load ptr, ptr %rtllib.i, align 8
  %wmm_acm25.i = getelementptr inbounds %struct.rtllib_device, ptr %16, i32 0, i32 129
  %17 = ptrtoint ptr %wmm_acm25.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %wmm_acm25.i, align 8
  %18 = load ptr, ptr %rtllib.i, align 8
  %param_count.i = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 89, i32 6, i32 4
  %19 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %param_count.i, align 4
  %old_param_count.i = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 89, i32 6, i32 5
  %21 = ptrtoint ptr %old_param_count.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %old_param_count.i, align 1
  %param_count33.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %param_count33.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %param_count33.i, align 4
  %24 = load ptr, ptr %rtllib.i, align 8
  %param_count37.i = getelementptr inbounds %struct.rtllib_device, ptr %24, i32 0, i32 89, i32 6, i32 4
  %25 = ptrtoint ptr %param_count37.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %param_count37.i, align 4
  br label %if.end49.i

if.else.i:                                        ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call ptr @memcpy(ptr %qos_data40.i, ptr @def_qos_parameters, i32 32)
  %27 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtllib.i, align 8
  %active45.i = getelementptr inbounds %struct.rtllib_device, ptr %28, i32 0, i32 89, i32 6, i32 2
  %29 = ptrtoint ptr %active45.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %active45.i, align 4
  %30 = load ptr, ptr %rtllib.i, align 8
  %supported.i = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 89, i32 6, i32 3
  %31 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %supported.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then16.i
  %32 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rtllib.i, align 8
  %lock51.i = getelementptr inbounds %struct.rtllib_device, ptr %33, i32 0, i32 59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock51.i, i32 noundef %call11.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %34 = load i32, ptr @rt_global_debug_component, align 4
  %and53.i = and i32 %34, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end49.i.if.then71.i_crit_edge, label %do.end58.i

if.end49.i.if.then71.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71.i

do.end58.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags14.i, align 8
  %37 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtllib.i, align 8
  %active64.i = getelementptr inbounds %struct.rtllib_device, ptr %38, i32 0, i32 89, i32 6, i32 2
  %39 = ptrtoint ptr %active64.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active64.i, align 4
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %36, i32 noundef %40) #14
  br label %if.then71.i

if.then71.i:                                      ; preds = %do.end58.i, %if.end49.i.if.then71.i_crit_edge
  %41 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtllib.i, align 8
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void @rtl92e_dm_init_edca_turbo(ptr noundef %44) #11
  %qos_activate.i = getelementptr i8, ptr %dev, i32 35748
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %qos_activate.i) #11
  br label %_rtl92e_qos_assoc_resp.exit

_rtl92e_qos_assoc_resp.exit:                      ; preds = %if.then71.i, %if.end3.i._rtl92e_qos_assoc_resp.exit_crit_edge, %if.end.i._rtl92e_qos_assoc_resp.exit_crit_edge, %entry._rtl92e_qos_assoc_resp.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_handle_beacon(ptr noundef %dev, ptr nocapture noundef readnone %beacon, ptr nocapture noundef %network) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib.i = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib.i, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 5
  br i1 %cmp.not.i, label %if.end.i, label %entry._rtl92e_qos_handle_probe_response.exit_crit_edge

entry._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

if.end.i:                                         ; preds = %entry
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i._rtl92e_qos_handle_probe_response.exit_crit_edge

if.end.i._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

if.end4.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 24
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %and8.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i._rtl92e_qos_handle_probe_response.exit_crit_edge, label %if.end12.thread.i

land.lhs.true.i._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

if.end12.thread.i:                                ; preds = %land.lhs.true.i
  %supported.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %supported.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported.i, align 4
  %active.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp153.i = icmp eq i32 %9, 1
  br i1 %cmp153.i, label %land.lhs.true22.i, label %if.end12.thread.i._rtl92e_qos_handle_probe_response.exit_crit_edge

if.end12.thread.i._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %if.end12.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

land.lhs.true22.i:                                ; preds = %if.end12.thread.i
  %old_param_count.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 5
  %11 = ptrtoint ptr %old_param_count.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %old_param_count.i, align 1
  %param_count.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp26.not.i = icmp eq i8 %12, %14
  br i1 %cmp26.not.i, label %land.lhs.true22.i._rtl92e_qos_handle_probe_response.exit_crit_edge, label %if.then28.i

land.lhs.true22.i._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

if.then28.i:                                      ; preds = %land.lhs.true22.i
  %15 = ptrtoint ptr %old_param_count.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %old_param_count.i, align 1
  %wmm_acm.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wmm_acm.i, align 4
  %18 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtllib.i, align 8
  %wmm_acm35.i = getelementptr inbounds %struct.rtllib_device, ptr %19, i32 0, i32 129
  %20 = ptrtoint ptr %wmm_acm35.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %wmm_acm35.i, align 8
  %qos_activate.i = getelementptr i8, ptr %dev, i32 35748
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %qos_activate.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %22 = load i32, ptr @rt_global_debug_component, align 4
  %and36.i = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.then28.i._rtl92e_qos_handle_probe_response.exit_crit_edge, label %do.end.i

if.then28.i._rtl92e_qos_handle_probe_response.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_qos_handle_probe_response.exit

do.end.i:                                         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #14
  br label %_rtl92e_qos_handle_probe_response.exit

if.else.i:                                        ; preds = %if.end4.i
  %qos_data46.i = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 6
  %23 = call ptr @memcpy(ptr %qos_data46.i, ptr @def_qos_parameters, i32 32)
  %active48.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %active48.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %active48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp49.i = icmp eq i32 %25, 1
  br i1 %cmp49.i, label %if.then54.i, label %if.else.i.if.end69.i_crit_edge

if.else.i.if.end69.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.then54.i:                                      ; preds = %if.else.i
  %qos_activate55.i = getelementptr i8, ptr %dev, i32 35748
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i1.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %qos_activate55.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %27 = load i32, ptr @rt_global_debug_component, align 4
  %and58.i = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.then54.i.if.end69.i_crit_edge, label %do.end63.i

if.then54.i.if.end69.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

do.end63.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #13
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #14
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end63.i, %if.then54.i.if.end69.i_crit_edge, %if.else.i.if.end69.i_crit_edge
  %28 = ptrtoint ptr %active48.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %active48.i, align 4
  %supported73.i = getelementptr inbounds %struct.rtllib_network, ptr %network, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %supported73.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %supported73.i, align 4
  br label %_rtl92e_qos_handle_probe_response.exit

_rtl92e_qos_handle_probe_response.exit:           ; preds = %if.end69.i, %do.end.i, %if.then28.i._rtl92e_qos_handle_probe_response.exit_crit_edge, %land.lhs.true22.i._rtl92e_qos_handle_probe_response.exit_crit_edge, %if.end12.thread.i._rtl92e_qos_handle_probe_response.exit_crit_edge, %land.lhs.true.i._rtl92e_qos_handle_probe_response.exit_crit_edge, %if.end.i._rtl92e_qos_handle_probe_response.exit_crit_edge, %entry._rtl92e_qos_handle_probe_response.exit_crit_edge
  %update_beacon_wq = getelementptr i8, ptr %dev, i32 30800
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %update_beacon_wq, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_bw_mode(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92e_set_channel(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_start_beacon(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @_rtl92e_stop_beacon(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_hw_wakeup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enter_sleep(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal signext i16 @_rtl92e_is_tx_queue_empty(ptr noundef %dev) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr i8, ptr %dev, i32 35044
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %if.end.1, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %if.end.6.if.then5_crit_edge, %if.end.3.if.then5_crit_edge, %if.end.2.if.then5_crit_edge, %if.end.1.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %i.022.lcssa = phi i32 [ 0, %if.end.if.then5_crit_edge ], [ 1, %if.end.1.if.then5_crit_edge ], [ 2, %if.end.2.if.then5_crit_edge ], [ 3, %if.end.3.if.then5_crit_edge ], [ 6, %if.end.6.if.then5_crit_edge ]
  %.lcssa = phi i32 [ %1, %if.end.if.then5_crit_edge ], [ %3, %if.end.1.if.then5_crit_edge ], [ %5, %if.end.2.if.then5_crit_edge ], [ %7, %if.end.3.if.then5_crit_edge ], [ %9, %if.end.6.if.then5_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %i.022.lcssa, i32 noundef %.lcssa) #14
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %qlen.i.1 = getelementptr i8, ptr %dev, i32 35116
  %2 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.1 = icmp eq i32 %3, 0
  br i1 %cmp4.not.1, label %if.end.2, label %if.end.1.if.then5_crit_edge

if.end.1.if.then5_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end.2:                                         ; preds = %if.end.1
  %qlen.i.2 = getelementptr i8, ptr %dev, i32 35188
  %4 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.2 = icmp eq i32 %5, 0
  br i1 %cmp4.not.2, label %if.end.3, label %if.end.2.if.then5_crit_edge

if.end.2.if.then5_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end.3:                                         ; preds = %if.end.2
  %qlen.i.3 = getelementptr i8, ptr %dev, i32 35260
  %6 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.not.3 = icmp eq i32 %7, 0
  br i1 %cmp4.not.3, label %if.end.6, label %if.end.3.if.then5_crit_edge

if.end.3.if.then5_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end.6:                                         ; preds = %if.end.3
  %qlen.i.6 = getelementptr i8, ptr %dev, i32 35476
  %8 = ptrtoint ptr %qlen.i.6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.not.6 = icmp eq i32 %9, 0
  br i1 %cmp4.not.6, label %if.end.6.cleanup_crit_edge, label %if.end.6.if.then5_crit_edge

if.end.6.if.then5_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.6.cleanup_crit_edge, %if.then5
  %retval.0 = phi i16 [ 0, %if.then5 ], [ 1, %if.end.6.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_get_nmode_support_by_sec(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92e_is_halfn_supported_by_ap(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_monitor_mode(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_init_gain(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_rtllib_ips_leave_wq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_rtllib_ips_leave(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_scan_op_backup(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc signext i16 @_rtl92e_tx(ptr noundef %dev, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %add.ptr = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %bdisable_nic = getelementptr i8, ptr %dev, i32 36012
  %0 = ptrtoint ptr %bdisable_nic to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bdisable_nic, align 8, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__._rtl92e_tx) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = trunc i32 %3 to i16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %bAwakePktSent = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 135
  %6 = ptrtoint ptr %bAwakePktSent to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bAwakePktSent, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add.ptr1 = getelementptr i8, ptr %8, i32 8
  %9 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr1, align 1
  %addr1 = getelementptr i8, ptr %8, i32 12
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr i8, ptr %8, i32 14
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %14, %12
  %add.ptr3.i = getelementptr i8, ptr %8, i32 16
  %15 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %len7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len7, align 4
  %sub = add i32 %18, -8
  %txbytesbroadcast = getelementptr i8, ptr %dev, i32 33412
  %19 = ptrtoint ptr %txbytesbroadcast to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txbytesbroadcast, align 8
  %add = add i32 %sub, %20
  store i32 %add, ptr %txbytesbroadcast, align 8
  br label %do.body21

if.else:                                          ; preds = %if.end
  %21 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr1, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len15, align 4
  %sub16 = add i32 %25, -8
  br i1 %tobool.i.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %txbytesmulticast = getelementptr i8, ptr %dev, i32 33408
  %26 = ptrtoint ptr %txbytesmulticast to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txbytesmulticast, align 4
  %add13 = add i32 %sub16, %27
  store i32 %add13, ptr %txbytesmulticast, align 4
  br label %do.body21

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %txbytesunicast = getelementptr i8, ptr %dev, i32 33416
  %28 = ptrtoint ptr %txbytesunicast to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txbytesunicast, align 4
  %add18 = add i32 %sub16, %29
  store i32 %add18, ptr %txbytesunicast, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.else14, %if.then9, %if.then6
  %irq_th_lock = getelementptr i8, ptr %dev, i32 31936
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock) #11
  %queue_index = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %30 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %queue_index, align 1
  %idxprom = zext i8 %31 to i32
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %31)
  %cmp29.not = icmp eq i8 %31, 8
  br i1 %cmp29.not, label %if.end36, label %if.end36.thread

if.end36:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %OWN = getelementptr %struct.tx_desc, ptr %33, i32 0, i32 2
  br label %if.end55

if.end36.thread:                                  ; preds = %do.body21
  %idx32 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %idxprom, i32 2
  %34 = ptrtoint ptr %idx32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx32, align 4
  %queue = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %idxprom, i32 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %add34 = add i32 %37, %35
  %entries = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %idxprom, i32 3
  %38 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entries, align 4
  %rem = urem i32 %add34, %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %arrayidx37133 = getelementptr %struct.tx_desc, ptr %41, i32 %rem
  %OWN134 = getelementptr %struct.tx_desc, ptr %41, i32 %rem, i32 2
  %42 = ptrtoint ptr %OWN134 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load135 = load i8, ptr %OWN134, align 1
  %bf.clear136 = and i8 %bf.load135, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear136)
  %cmp39.not137 = icmp eq i8 %bf.clear136, 0
  br i1 %cmp39.not137, label %if.end36.thread.if.end55_crit_edge, label %if.then45

if.end36.thread.if.end55_crit_edge:               ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then45:                                        ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %idx32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx32, align 4
  %len49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len49, align 4
  %47 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %idxprom, i32 noundef %44, i32 noundef %rem, i32 noundef %46, i32 noundef %48) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call24) #11
  %49 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len49, align 4
  %conv54 = trunc i32 %50 to i16
  br label %cleanup

if.end55:                                         ; preds = %if.end36.thread.if.end55_crit_edge, %if.end36
  %OWN142 = phi ptr [ %OWN134, %if.end36.thread.if.end55_crit_edge ], [ %OWN, %if.end36 ]
  %arrayidx37140 = phi ptr [ %arrayidx37133, %if.end36.thread.if.end55_crit_edge ], [ %33, %if.end36 ]
  %51 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %51)
  %cmp57 = icmp eq i16 %51, 2048
  br i1 %cmp57, label %if.then59, label %if.end55.if.end66_crit_edge

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %if.end55
  %52 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rtllib, align 8
  %LedControlHandler = getelementptr inbounds %struct.rtllib_device, ptr %53, i32 0, i32 202
  %54 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %LedControlHandler, align 4
  %tobool61.not = icmp eq ptr %55, null
  br i1 %tobool61.not, label %if.then59.if.end66_crit_edge, label %if.then62

if.then59.if.end66_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %55(ptr noundef %dev, i32 noundef 4) #11
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then59.if.end66_crit_edge, %if.end55.if.end66_crit_edge
  %ops = getelementptr i8, ptr %dev, i32 31312
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops, align 4
  %tx_fill_descriptor = getelementptr inbounds %struct.rtl819x_ops, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %tx_fill_descriptor to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_fill_descriptor, align 4
  tail call void %59(ptr noundef %dev, ptr noundef %arrayidx37140, ptr noundef %add.ptr, ptr noundef %skb) #11
  %queue67 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %idxprom, i32 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %queue67, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i, align 4
  %62 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %queue67, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %63 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %skb, ptr %61, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue67, i32 0, i32 1
  %65 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %67 = ptrtoint ptr %OWN142 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load69 = load i8, ptr %OWN142, align 1
  %bf.set = or i8 %bf.load69, 1
  store i8 %bf.set, ptr %OWN142, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock, i32 noundef %call24) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %68 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %69, i32 0, i32 12
  %71 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp.not.i.i = icmp eq i32 %72, %70
  br i1 %cmp.not.i.i, label %if.end66.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end66.netif_trans_update.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %70, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end66.netif_trans_update.exit_crit_edge
  %74 = ptrtoint ptr %queue_index to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %queue_index, align 1
  %conv73 = zext i8 %75 to i32
  %shl = shl nuw i32 1, %conv73
  %conv74 = trunc i32 %shl to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !482
  tail call void @arm_heavy_mb() #11
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv74) #11
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %77 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mem_start.i, align 4
  %79 = inttoptr i32 %78 to ptr
  %add.ptr.i = getelementptr i8, ptr %79, i32 253
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %76) #11, !srcloc !483
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 4294960) #11
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.then45, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ %conv54, %if.then45 ], [ 0, %netif_trans_update.exit ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_restart(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 -4
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %wx_mutex = getelementptr i8, ptr %data, i32 920
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #11
  %up.i = getelementptr i8, ptr %3, i32 30794
  %4 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  br i1 %cmp.i, label %entry.rtl92e_commit.exit_crit_edge, label %if.end.i

entry.rtl92e_commit.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rtl92e_commit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %6 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtllib.i, align 8
  tail call void @rtllib_softmac_stop_protocol(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %ops.i.i = getelementptr i8, ptr %3, i32 31312
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %irq_disable.i.i = getelementptr inbounds %struct.rtl819x_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %irq_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_disable.i.i, align 4
  tail call void %11(ptr noundef %3) #11
  %irq_enabled.i.i = getelementptr i8, ptr %3, i32 30792
  %12 = ptrtoint ptr %irq_enabled.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %irq_enabled.i.i, align 4
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %stop_adapter.i = getelementptr inbounds %struct.rtl819x_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %stop_adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop_adapter.i, align 4
  tail call void %16(ptr noundef %3, i1 noundef zeroext true) #11
  %call2.i = tail call fastcc i32 @_rtl92e_up(ptr noundef %3, i1 noundef zeroext false) #11
  br label %rtl92e_commit.exit

rtl92e_commit.exit:                               ; preds = %if.end.i, %entry.rtl92e_commit.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_ips_leave_wq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_watchdog_wq_cb(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 416
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %up = getelementptr i8, ptr %data, i32 -106
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bHwRadioOff = getelementptr i8, ptr %data, i32 4840
  %6 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bHwRadioOff, align 8, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp ugt i32 %9, 4
  %CntAfterLink = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 5
  br i1 %cmp, label %if.then6, label %if.end.if.end16.sink.split_crit_edge

if.end.if.end16.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.sink.split

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %CntAfterLink to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %CntAfterLink, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp8 = icmp ult i8 %11, 2
  br i1 %cmp8, label %if.then10, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw nsw i8 %11, 1
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then10, %if.end.if.end16.sink.split_crit_edge
  %inc.sink = phi i8 [ %inc, %if.then10 ], [ 0, %if.end.if.end16.sink.split_crit_edge ]
  %12 = ptrtoint ptr %CntAfterLink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %inc.sink, ptr %CntAfterLink, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.then6.if.end16_crit_edge
  tail call void @rtl92e_dm_watchdog(ptr noundef %3) #11
  %13 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtllib, align 8
  %call18 = tail call zeroext i1 @rtllib_act_scanning(ptr noundef %14, i1 noundef zeroext false) #11
  br i1 %call18, label %if.end16.if.end51thread-pre-split_crit_edge, label %if.then19

if.end16.if.end51thread-pre-split_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

if.then19:                                        ; preds = %if.end16
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %15 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp20 = icmp eq i32 %16, 2
  br i1 %cmp20, label %land.lhs.true, label %if.then19.if.end51thread-pre-split_crit_edge

if.then19.if.end51thread-pre-split_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

land.lhs.true:                                    ; preds = %if.then19
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp23 = icmp eq i32 %18, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true25:                                  ; preds = %land.lhs.true
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true25.if.end51thread-pre-split_crit_edge

land.lhs.true25.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %is_set_key = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 25
  %21 = ptrtoint ptr %is_set_key to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_set_key, align 4, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true28.if.end51thread-pre-split_crit_edge

land.lhs.true28.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %proto_stoppping = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 120
  %23 = ptrtoint ptr %proto_stoppping to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %proto_stoppping, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool31.not = icmp eq i16 %24, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %land.lhs.true30.if.end51thread-pre-split_crit_edge

land.lhs.true30.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %wx_set_enc = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 26
  %25 = ptrtoint ptr %wx_set_enc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wx_set_enc, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not = icmp eq i8 %26, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true32.if.end51thread-pre-split_crit_edge

land.lhs.true32.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

if.then34:                                        ; preds = %land.lhs.true32
  %ReturnPoint = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 4
  %27 = ptrtoint ptr %ReturnPoint to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ReturnPoint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp36 = icmp eq i32 %28, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.then34.if.end51thread-pre-split_crit_edge

if.then34.if.end51thread-pre-split_crit_edge:     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

land.lhs.true38:                                  ; preds = %if.then34
  %bNetPromiscuousMode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 57
  %29 = ptrtoint ptr %bNetPromiscuousMode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bNetPromiscuousMode, align 4, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool39.not = icmp eq i8 %30, 0
  br i1 %tobool39.not, label %do.body, label %land.lhs.true38.if.end51thread-pre-split_crit_edge

land.lhs.true38.if.end51thread-pre-split_crit_edge: ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51thread-pre-split

do.body:                                          ; preds = %land.lhs.true38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %31, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %do.body.do.end48_crit_edge, label %do.end

do.body.do.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #14
  br label %do.end48

do.end48:                                         ; preds = %do.end, %do.body.do.end48_crit_edge
  tail call void @rtl92e_ips_enter(ptr noundef %3) #11
  br label %if.end51thread-pre-split

if.end51thread-pre-split:                         ; preds = %do.end48, %land.lhs.true38.if.end51thread-pre-split_crit_edge, %if.then34.if.end51thread-pre-split_crit_edge, %land.lhs.true32.if.end51thread-pre-split_crit_edge, %land.lhs.true30.if.end51thread-pre-split_crit_edge, %land.lhs.true28.if.end51thread-pre-split_crit_edge, %land.lhs.true25.if.end51thread-pre-split_crit_edge, %if.then19.if.end51thread-pre-split_crit_edge, %if.end16.if.end51thread-pre-split_crit_edge
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %state, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end51thread-pre-split, %land.lhs.true.if.end51_crit_edge
  %33 = phi i32 [ %.pr, %if.end51thread-pre-split ], [ %18, %land.lhs.true.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp53 = icmp eq i32 %33, 5
  br i1 %cmp53, label %land.lhs.true55, label %if.end51.do.body112_crit_edge

if.end51.do.body112_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body112

land.lhs.true55:                                  ; preds = %if.end51
  %iw_mode56 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %34 = ptrtoint ptr %iw_mode56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp57 = icmp eq i32 %35, 2
  br i1 %cmp57, label %land.lhs.true59, label %land.lhs.true55.do.body112_crit_edge

land.lhs.true55.do.body112_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body112

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %bNetPromiscuousMode60 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 57
  %36 = ptrtoint ptr %bNetPromiscuousMode60 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bNetPromiscuousMode60, align 4, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool61.not = icmp eq i8 %37, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true59.do.body112_crit_edge

land.lhs.true59.do.body112_crit_edge:             ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body112

if.then62:                                        ; preds = %land.lhs.true59
  %NumRxOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 7
  %38 = ptrtoint ptr %NumRxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %NumRxOkInPeriod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %39)
  %cmp63 = icmp ugt i32 %39, 100
  br i1 %cmp63, label %if.end70, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %NumTxOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 6
  %40 = ptrtoint ptr %NumTxOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %NumTxOkInPeriod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %41)
  %cmp67 = icmp ugt i32 %41, 100
  br label %lor.lhs.false75

if.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %39)
  %cmp73 = icmp ugt i32 %39, 4000
  br i1 %cmp73, label %if.end70.if.then80_crit_edge, label %if.end70.lor.lhs.false75_crit_edge

if.end70.lor.lhs.false75_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false75

if.end70.if.then80_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

lor.lhs.false75:                                  ; preds = %if.end70.lor.lhs.false75_crit_edge, %lor.lhs.false65
  %bBusyTraffic.0361 = phi i1 [ true, %if.end70.lor.lhs.false75_crit_edge ], [ %cmp67, %lor.lhs.false65 ]
  %NumTxOkInPeriod77 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 6
  %42 = ptrtoint ptr %NumTxOkInPeriod77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %NumTxOkInPeriod77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %43)
  %cmp78 = icmp ugt i32 %43, 4000
  br i1 %cmp78, label %lor.lhs.false75.if.then80_crit_edge, label %lor.lhs.false75.if.end88_crit_edge

lor.lhs.false75.if.end88_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

lor.lhs.false75.if.then80_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

if.then80:                                        ; preds = %lor.lhs.false75.if.then80_crit_edge, %if.end70.if.then80_crit_edge
  %bBusyTraffic.0362 = phi i1 [ %bBusyTraffic.0361, %lor.lhs.false75.if.then80_crit_edge ], [ true, %if.end70.if.then80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %39)
  %cmp83 = icmp ugt i32 %39, 5000
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %lor.lhs.false75.if.end88_crit_edge
  %bBusyTraffic.0360 = phi i1 [ %bBusyTraffic.0361, %lor.lhs.false75.if.end88_crit_edge ], [ %bBusyTraffic.0362, %if.then80 ]
  %bHigherBusyTraffic.0 = phi i1 [ false, %lor.lhs.false75.if.end88_crit_edge ], [ true, %if.then80 ]
  %bHigherBusyRxTraffic.0 = phi i1 [ false, %lor.lhs.false75.if.end88_crit_edge ], [ %cmp83, %if.then80 ]
  %NumRxUnicastOkInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 8
  %44 = ptrtoint ptr %NumRxUnicastOkInPeriod to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %NumRxUnicastOkInPeriod, align 4
  %NumTxOkInPeriod91 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 6
  %46 = ptrtoint ptr %NumTxOkInPeriod91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %NumTxOkInPeriod91, align 4
  %add = add i32 %47, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add)
  %cmp92 = icmp ult i32 %add, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp97 = icmp ult i32 %45, 3
  %not.or.cond = and i1 %cmp97, %cmp92
  %beacon_interval = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 26
  %48 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %beacon_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 94, i16 %49)
  %cmp103 = icmp ugt i16 %49, 94
  %spec.select = select i1 %cmp103, i1 %not.or.cond, i1 false
  br i1 %spec.select, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtl92e_leisure_ps_enter(ptr noundef %3) #11
  br label %if.end124

if.else109:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtl92e_leisure_ps_leave(ptr noundef %3) #11
  br label %if.end124

do.body112:                                       ; preds = %land.lhs.true59.do.body112_crit_edge, %land.lhs.true55.do.body112_crit_edge, %if.end51.do.body112_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %50 = load i32, ptr @rt_global_debug_component, align 4
  %and113 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body112.do.end123_crit_edge, label %do.end118

do.body112.do.end123_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #14
  br label %do.end123

do.end123:                                        ; preds = %do.end118, %do.body112.do.end123_crit_edge
  tail call void @rtl92e_leisure_ps_leave(ptr noundef %3) #11
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %if.else109, %if.then108
  %bBusyTraffic.1.off0 = phi i1 [ false, %do.end123 ], [ %bBusyTraffic.0360, %if.then108 ], [ %bBusyTraffic.0360, %if.else109 ]
  %bHigherBusyTraffic.1.off0 = phi i1 [ false, %do.end123 ], [ %bHigherBusyTraffic.0, %if.then108 ], [ %bHigherBusyTraffic.0, %if.else109 ]
  %bHigherBusyRxTraffic.1.off0 = phi i1 [ false, %do.end123 ], [ %bHigherBusyRxTraffic.0, %if.then108 ], [ %bHigherBusyRxTraffic.0, %if.else109 ]
  %LinkDetectInfo125 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156
  %NumRxOkInPeriod126 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 7
  %51 = ptrtoint ptr %NumRxOkInPeriod126 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %NumRxOkInPeriod126, align 4
  %NumTxOkInPeriod128 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 6
  %52 = ptrtoint ptr %NumTxOkInPeriod128 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %NumTxOkInPeriod128, align 4
  %NumRxUnicastOkInPeriod130 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 8
  %53 = ptrtoint ptr %NumRxUnicastOkInPeriod130 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %NumRxUnicastOkInPeriod130, align 4
  %bBusyTraffic133 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 9
  %frombool = zext i1 %bBusyTraffic.1.off0 to i8
  %54 = ptrtoint ptr %bBusyTraffic133 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool, ptr %bBusyTraffic133, align 4
  %bHigherBusyTraffic136 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 10
  %frombool137 = zext i1 %bHigherBusyTraffic.1.off0 to i8
  %55 = ptrtoint ptr %bHigherBusyTraffic136 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool137, ptr %bHigherBusyTraffic136, align 1
  %bHigherBusyRxTraffic140 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 11
  %frombool141 = zext i1 %bHigherBusyRxTraffic.1.off0 to i8
  %56 = ptrtoint ptr %bHigherBusyRxTraffic140 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool141, ptr %bHigherBusyRxTraffic140, align 2
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp143 = icmp eq i32 %58, 5
  br i1 %cmp143, label %land.lhs.true145, label %if.end124.do.body192_crit_edge

if.end124.do.body192_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body192

land.lhs.true145:                                 ; preds = %if.end124
  %iw_mode146 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %59 = ptrtoint ptr %iw_mode146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iw_mode146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp147 = icmp eq i32 %60, 2
  br i1 %cmp147, label %if.then149, label %land.lhs.true145.do.body192_crit_edge

land.lhs.true145.do.body192_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body192

if.then149:                                       ; preds = %land.lhs.true145
  %61 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rtllib, align 8
  %SlotIndex1.i = getelementptr inbounds %struct.rtllib_device, ptr %62, i32 0, i32 156, i32 5
  %63 = ptrtoint ptr %SlotIndex1.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %SlotIndex1.i, align 2
  %inc.i = add i16 %64, 1
  store i16 %inc.i, ptr %SlotIndex1.i, align 2
  %65 = load ptr, ptr %rtllib, align 8
  %LinkDetectInfo3.i = getelementptr inbounds %struct.rtllib_device, ptr %65, i32 0, i32 156
  %SlotNum.i = getelementptr inbounds %struct.rtllib_device, ptr %65, i32 0, i32 156, i32 4
  %66 = ptrtoint ptr %SlotNum.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %SlotNum.i, align 4
  %68 = urem i16 %64, %67
  %69 = ptrtoint ptr %LinkDetectInfo3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %LinkDetectInfo3.i, align 4
  %idxprom.i = zext i16 %68 to i32
  %arrayidx.i = getelementptr %struct.rtllib_device, ptr %65, i32 0, i32 156, i32 2, i32 %idxprom.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx.i, align 4
  %72 = load ptr, ptr %rtllib, align 8
  %NumRecvDataInPeriod.i = getelementptr inbounds %struct.rtllib_device, ptr %72, i32 0, i32 156, i32 1
  %73 = ptrtoint ptr %NumRecvDataInPeriod.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %NumRecvDataInPeriod.i, align 4
  %arrayidx15.i = getelementptr %struct.rtllib_device, ptr %72, i32 0, i32 156, i32 3, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx15.i, align 4
  %76 = load ptr, ptr %rtllib, align 8
  %SlotNum1948.i = getelementptr inbounds %struct.rtllib_device, ptr %76, i32 0, i32 156, i32 4
  %77 = ptrtoint ptr %SlotNum1948.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %SlotNum1948.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp49.not.i = icmp eq i16 %78, 0
  br i1 %cmp49.not.i, label %if.then149._rtl92e_update_rxcounts.exit_crit_edge, label %if.then149.for.body.i_crit_edge

if.then149.for.body.i_crit_edge:                  ; preds = %if.then149
  br label %for.body.i

if.then149._rtl92e_update_rxcounts.exit_crit_edge: ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_update_rxcounts.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then149.for.body.i_crit_edge
  %TotalRxBcnNum.0 = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then149.for.body.i_crit_edge ]
  %TotalRxDataNum.0 = phi i32 [ %add32.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then149.for.body.i_crit_edge ]
  %i.050.i = phi i8 [ %inc33.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then149.for.body.i_crit_edge ]
  %conv16.i = zext i8 %i.050.i to i32
  %arrayidx26.i = getelementptr %struct.rtllib_device, ptr %76, i32 0, i32 156, i32 2, i32 %conv16.i
  %79 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx26.i, align 4
  %add.i = add i32 %80, %TotalRxBcnNum.0
  %arrayidx31.i = getelementptr %struct.rtllib_device, ptr %76, i32 0, i32 156, i32 3, i32 %conv16.i
  %81 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %82, %TotalRxDataNum.0
  %inc33.i = add i8 %i.050.i, 1
  %83 = zext i8 %inc33.i to i16
  %cmp.i = icmp ugt i16 %78, %83
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i._rtl92e_update_rxcounts.exit_crit_edge

for.body.i._rtl92e_update_rxcounts.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_update_rxcounts.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

_rtl92e_update_rxcounts.exit:                     ; preds = %for.body.i._rtl92e_update_rxcounts.exit_crit_edge, %if.then149._rtl92e_update_rxcounts.exit_crit_edge
  %TotalRxBcnNum.1 = phi i32 [ 0, %if.then149._rtl92e_update_rxcounts.exit_crit_edge ], [ %add.i, %for.body.i._rtl92e_update_rxcounts.exit_crit_edge ]
  %TotalRxDataNum.1 = phi i32 [ 0, %if.then149._rtl92e_update_rxcounts.exit_crit_edge ], [ %add32.i, %for.body.i._rtl92e_update_rxcounts.exit_crit_edge ]
  %add150 = sub i32 0, %TotalRxDataNum.1
  call void @__sanitizer_cov_trace_cmp4(i32 %TotalRxBcnNum.1, i32 %add150)
  %cmp151 = icmp eq i32 %TotalRxBcnNum.1, %add150
  %check_roaming_cnt = getelementptr i8, ptr %data, i32 4956
  br i1 %cmp151, label %if.then153, label %_rtl92e_update_rxcounts.exit.if.end157_crit_edge

_rtl92e_update_rxcounts.exit.if.end157_crit_edge: ; preds = %_rtl92e_update_rxcounts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then153:                                       ; preds = %_rtl92e_update_rxcounts.exit
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %check_roaming_cnt to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %check_roaming_cnt, align 4
  %inc154 = add i8 %85, 1
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %_rtl92e_update_rxcounts.exit.if.end157_crit_edge
  %.sink = phi i8 [ %inc154, %if.then153 ], [ 0, %_rtl92e_update_rxcounts.exit.if.end157_crit_edge ]
  %86 = ptrtoint ptr %check_roaming_cnt to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink, ptr %check_roaming_cnt, align 4
  %check_roaming_cnt158 = getelementptr i8, ptr %data, i32 4956
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %cmp160.not = icmp eq i8 %.sink, 0
  br i1 %cmp160.not, label %if.end157.if.end187_crit_edge, label %if.then162

if.end157.if.end187_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end187

if.then162:                                       ; preds = %if.end157
  %eRFPowerState163 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %87 = ptrtoint ptr %eRFPowerState163 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %eRFPowerState163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp164 = icmp eq i32 %88, 2
  br i1 %cmp164, label %if.then166, label %if.then162.if.end167_crit_edge

if.then162.if.end167_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then166:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.154) #14
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.then162.if.end167_crit_edge
  %chan = getelementptr i8, ptr %data, i32 4894
  %89 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %chan, align 2
  %conv168 = sext i16 %90 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.154, i32 noundef %conv168) #14
  %91 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %state, align 8
  %92 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rtllib, align 8
  %current_network172 = getelementptr inbounds %struct.rtllib_device, ptr %93, i32 0, i32 89
  tail call void @RemovePeerTS(ptr noundef %93, ptr noundef %current_network172) #11
  %is_roaming = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 15
  %94 = ptrtoint ptr %is_roaming to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %is_roaming, align 4
  %is_set_key173 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 25
  %95 = ptrtoint ptr %is_set_key173 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %is_set_key173, align 4
  %link_change = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 184
  %96 = ptrtoint ptr %link_change to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %link_change, align 4
  tail call void %97(ptr noundef %3) #11
  %LedControlHandler = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 202
  %98 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %LedControlHandler, align 4
  %tobool174.not = icmp eq ptr %99, null
  br i1 %tobool174.not, label %if.end167.if.end178_crit_edge, label %if.then175

if.end167.if.end178_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then175:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1, align 4
  tail call void %99(ptr noundef %101, i32 noundef 8) #11
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.end167.if.end178_crit_edge
  tail call void @notify_wx_assoc_event(ptr noundef %1) #11
  %rtllib_ap_sec_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 197
  %102 = ptrtoint ptr %rtllib_ap_sec_type to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rtllib_ap_sec_type, align 8
  %call179 = tail call zeroext i8 %103(ptr noundef %1) #11
  %104 = and i8 %call179, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool182.not = icmp eq i8 %104, 0
  br i1 %tobool182.not, label %if.then183, label %if.end178.if.end185_crit_edge

if.end178.if.end185_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.then183:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %associate_procedure_wq = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %105 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %105, ptr noundef %associate_procedure_wq, i32 noundef 0) #11
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end178.if.end185_crit_edge
  %106 = ptrtoint ptr %check_roaming_cnt158 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %check_roaming_cnt158, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end185, %if.end157.if.end187_crit_edge
  %107 = ptrtoint ptr %LinkDetectInfo125 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %LinkDetectInfo125, align 4
  %NumRecvDataInPeriod = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 1
  %108 = ptrtoint ptr %NumRecvDataInPeriod to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %NumRecvDataInPeriod, align 4
  br label %do.body192

do.body192:                                       ; preds = %if.end187, %land.lhs.true145.do.body192_crit_edge, %if.end124.do.body192_crit_edge
  %tx_lock = getelementptr i8, ptr %data, i32 1080
  %call197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #11
  %109 = load i8, ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt, align 1
  %inc202 = add i8 %109, 1
  store i8 %inc202, ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp204 = icmp ugt i8 %109, 2
  br i1 %cmp204, label %land.lhs.true206, label %do.body192.if.end215_crit_edge

do.body192.if.end215_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

land.lhs.true206:                                 ; preds = %do.body192
  %is_roaming207 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 15
  %110 = ptrtoint ptr %is_roaming207 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %is_roaming207, align 4, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool208.not = icmp eq i8 %111, 0
  br i1 %tobool208.not, label %land.lhs.true209, label %land.lhs.true206.if.end215_crit_edge

land.lhs.true206.if.end215_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

land.lhs.true209:                                 ; preds = %land.lhs.true206
  %RFChangeInProgress = getelementptr i8, ptr %data, i32 5110
  %112 = ptrtoint ptr %RFChangeInProgress to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %RFChangeInProgress, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool210.not = icmp eq i8 %113, 0
  br i1 %tobool210.not, label %land.lhs.true211, label %land.lhs.true209.if.end215_crit_edge

land.lhs.true209.if.end215_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

land.lhs.true211:                                 ; preds = %land.lhs.true209
  %bSwRfProcessing = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 2
  %114 = ptrtoint ptr %bSwRfProcessing to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bSwRfProcessing, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool212.not = icmp eq i8 %115, 0
  br i1 %tobool212.not, label %if.then213, label %land.lhs.true211.if.end215_crit_edge

land.lhs.true211.if.end215_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then213:                                       ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  %call214 = tail call fastcc i32 @_rtl92e_if_check_reset(ptr noundef %3)
  store i8 3, ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt, align 1
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %land.lhs.true211.if.end215_crit_edge, %land.lhs.true209.if.end215_crit_edge, %land.lhs.true206.if.end215_crit_edge, %do.body192.if.end215_crit_edge
  %ResetType.0 = phi i32 [ 0, %land.lhs.true206.if.end215_crit_edge ], [ 0, %land.lhs.true209.if.end215_crit_edge ], [ 0, %land.lhs.true211.if.end215_crit_edge ], [ %call214, %if.then213 ], [ 0, %do.body192.if.end215_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call197) #11
  %bDisableNormalResetCheck = getelementptr i8, ptr %data, i32 5309
  %116 = ptrtoint ptr %bDisableNormalResetCheck to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bDisableNormalResetCheck, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool217.not = icmp eq i8 %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ResetType.0)
  %cmp219 = icmp eq i32 %ResetType.0, 1
  %or.cond349 = select i1 %tobool217.not, i1 %cmp219, i1 false
  br i1 %or.cond349, label %if.then221, label %if.end234

if.then221:                                       ; preds = %if.end215
  %ResetProgress = getelementptr i8, ptr %data, i32 5304
  %118 = ptrtoint ptr %ResetProgress to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %ResetProgress, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %119 = load i32, ptr @rt_global_debug_component, align 4
  %and223 = and i32 %119, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.then221.cleanup_crit_edge, label %do.end228

if.then221.cleanup_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end228:                                        ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #13
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.154) #14
  br label %cleanup

if.end234:                                        ; preds = %if.end215
  %force_reset = getelementptr i8, ptr %data, i32 5315
  %120 = ptrtoint ptr %force_reset to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %force_reset, align 1, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool235.not = icmp ne i8 %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ResetType.0)
  %cmp241 = icmp eq i32 %ResetType.0, 2
  %or.cond350 = select i1 %tobool217.not, i1 %cmp241, i1 false
  %or.cond366 = select i1 %tobool235.not, i1 true, i1 %or.cond350
  br i1 %or.cond366, label %if.then243, label %if.end234.if.end244_crit_edge

if.end234.if.end244_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

if.then243:                                       ; preds = %if.end234
  %rtllib.i352 = getelementptr i8, ptr %3, i32 31316
  %122 = ptrtoint ptr %rtllib.i352 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rtllib.i352, align 8
  %ResetProgress.i = getelementptr i8, ptr %3, i32 36204
  %124 = ptrtoint ptr %ResetProgress.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ResetProgress.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp.i353 = icmp eq i32 %125, 0
  br i1 %cmp.i353, label %do.body.i, label %if.then243.if.end244_crit_edge

if.then243.if.end244_crit_edge:                   ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

do.body.i:                                        ; preds = %if.then243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %126 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %126, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end5.i_crit_edge, label %do.end.i

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #14
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %127 = ptrtoint ptr %ResetProgress.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %ResetProgress.i, align 8
  %rf_ps_lock.i = getelementptr i8, ptr %3, i32 32024
  %call12.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  %RFChangeInProgress.i = getelementptr i8, ptr %3, i32 36010
  %128 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %RFChangeInProgress.i, align 2, !range !484
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool17.not.i = icmp eq i8 %129, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %call12.i) #11
  br label %END.i

if.end20.i:                                       ; preds = %do.end5.i
  %130 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %RFChangeInProgress.i, align 2
  %bResetInProgress.i = getelementptr i8, ptr %3, i32 36214
  %131 = ptrtoint ptr %bResetInProgress.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %bResetInProgress.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %call12.i) #11
  %wx_mutex.i = getelementptr i8, ptr %3, i32 32240
  %up.i = getelementptr i8, ptr %3, i32 30794
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %ops.i.i = getelementptr i8, ptr %3, i32 31312
  %irq_enabled.i.i = getelementptr i8, ptr %3, i32 30792
  %watch_dog_timer.i = getelementptr i8, ptr %3, i32 31792
  %watch_dog_wq.i.i = getelementptr i8, ptr %3, i32 30900
  %update_beacon_wq.i.i = getelementptr i8, ptr %3, i32 30800
  %reset_wq.i.i = getelementptr i8, ptr %3, i32 31320
  %qos_activate.i.i = getelementptr i8, ptr %3, i32 35748
  %state62.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 90
  %wx_mutex66.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 121
  %associate_timer.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 160
  %associate_retry_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 167
  br label %RESET_START.i

RESET_START.i:                                    ; preds = %if.then113.i.RESET_START.i_crit_edge, %if.end20.i
  %reset_times.0.i = phi i8 [ 0, %if.end20.i ], [ %inc.i355, %if.then113.i.RESET_START.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex.i, i32 noundef 0) #11
  %132 = ptrtoint ptr %rtllib.i352 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rtllib.i352, align 8
  %state.i = getelementptr inbounds %struct.rtllib_device, ptr %133, i32 0, i32 90
  %134 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %135)
  %cmp24.i = icmp eq i32 %135, 5
  br i1 %cmp24.i, label %if.then26.i, label %RESET_START.i.if.end27.i_crit_edge

RESET_START.i.if.end27.i_crit_edge:               ; preds = %RESET_START.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then26.i:                                      ; preds = %RESET_START.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtl92e_leisure_ps_leave(ptr noundef %3) #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %RESET_START.i.if.end27.i_crit_edge
  %136 = ptrtoint ptr %up.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool28.not.i = icmp eq i16 %137, 0
  br i1 %tobool28.not.i, label %if.end31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.172) #14
  tail call void @mutex_unlock(ptr noundef %wx_mutex.i) #11
  br label %if.end244

if.end31.i:                                       ; preds = %if.end27.i
  %138 = ptrtoint ptr %up.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %up.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %139 = load i32, ptr @rt_global_debug_component, align 4
  %and34.i = and i32 %139, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end31.i.while.body.i.preheader_crit_edge, label %do.end39.i

if.end31.i.while.body.i.preheader_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.preheader

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.172) #14
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end39.i, %if.end31.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.0259.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 1000, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.0259.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #11
  %tobool45.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool45.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %141 = load i32, ptr @rt_global_debug_component, align 4
  %and47.i = and i32 %141, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %while.end.i.do.end57.i_crit_edge, label %do.end52.i

while.end.i.do.end57.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end57.i

do.end52.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.172) #14
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end52.i, %while.end.i.do.end57.i_crit_edge
  %142 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %143, i32 0, i32 13
  %144 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.then59.i, label %do.end57.i.if.end60.i_crit_edge

do.end57.i.if.end60.i_crit_edge:                  ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then59.i:                                      ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %do.end57.i.if.end60.i_crit_edge
  %146 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops.i.i, align 4
  %irq_disable.i.i = getelementptr inbounds %struct.rtl819x_ops, ptr %147, i32 0, i32 13
  %148 = ptrtoint ptr %irq_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %irq_disable.i.i, align 4
  tail call void %149(ptr noundef %3) #11
  %150 = ptrtoint ptr %irq_enabled.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %irq_enabled.i.i, align 4
  %call61.i = tail call i32 @del_timer_sync(ptr noundef %watch_dog_timer.i) #11
  %call.i.i354 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watch_dog_wq.i.i) #11
  %call1.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_beacon_wq.i.i) #11
  %151 = ptrtoint ptr %rtllib.i352 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rtllib.i352, align 8
  %hw_sleep_wq.i.i = getelementptr inbounds %struct.rtllib_device, ptr %152, i32 0, i32 170
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %hw_sleep_wq.i.i) #11
  %call3.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_wq.i.i) #11
  %call4.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %qos_activate.i.i) #11
  tail call void @rtl92e_dm_deinit(ptr noundef %3) #11
  tail call void @rtllib_stop_scan_syncro(ptr noundef %123) #11
  %153 = ptrtoint ptr %state62.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %state62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %154)
  %cmp63.i = icmp eq i32 %154, 5
  br i1 %cmp63.i, label %if.then65.i, label %if.else.i

if.then65.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex66.i, i32 noundef 0) #11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.180) #14
  %155 = ptrtoint ptr %rtllib.i352 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rtllib.i352, align 8
  tail call void @rtllib_stop_send_beacons(ptr noundef %156) #11
  %call68.i = tail call i32 @del_timer_sync(ptr noundef %associate_timer.i) #11
  %call69.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %associate_retry_wq.i) #11
  tail call void @rtllib_stop_scan(ptr noundef %123) #11
  tail call void @netif_carrier_off(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %wx_mutex66.i) #11
  br label %if.end72.i

if.else.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.181) #14
  %157 = ptrtoint ptr %rtllib.i352 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rtllib.i352, align 8
  tail call void @rtllib_softmac_stop_protocol(ptr noundef %158, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else.i, %if.then65.i
  tail call void @rtl92e_dm_backup_state(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %wx_mutex.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %159 = load i32, ptr @rt_global_debug_component, align 4
  %and75.i = and i32 %159, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end72.i.do.body86.i_crit_edge, label %do.end80.i

if.end72.i.do.body86.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86.i

do.end80.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.172) #14
  br label %do.body86.i

do.body86.i:                                      ; preds = %do.end80.i, %if.end72.i.do.body86.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %160 = load i32, ptr @rt_global_debug_component, align 4
  %and87.i = and i32 %160, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %do.body86.i.do.end97.i_crit_edge, label %do.end92.i

do.body86.i.do.end97.i_crit_edge:                 ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end97.i

do.end92.i:                                       ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #13
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.172) #14
  br label %do.end97.i

do.end97.i:                                       ; preds = %do.end92.i, %do.body86.i.do.end97.i_crit_edge
  %call98.i = tail call fastcc i32 @_rtl92e_up(ptr noundef %3, i1 noundef zeroext true) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %161 = load i32, ptr @rt_global_debug_component, align 4
  %and100.i = and i32 %161, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %do.end97.i.do.end110.i_crit_edge, label %do.end105.i

do.end97.i.do.end110.i_crit_edge:                 ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end110.i

do.end105.i:                                      ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #13
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.172) #14
  br label %do.end110.i

do.end110.i:                                      ; preds = %do.end105.i, %do.end97.i.do.end110.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call98.i)
  %cmp111.i = icmp eq i32 %call98.i, -1
  br i1 %cmp111.i, label %if.then113.i, label %do.end110.i.if.end120.i_crit_edge

do.end110.i.if.end120.i_crit_edge:                ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120.i

if.then113.i:                                     ; preds = %do.end110.i
  %cmp115.i = icmp ult i8 %reset_times.0.i, 3
  %inc.i355 = add nuw nsw i8 %reset_times.0.i, 1
  br i1 %cmp115.i, label %if.then113.i.RESET_START.i_crit_edge, label %if.else118.i

if.then113.i.RESET_START.i_crit_edge:             ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %RESET_START.i

if.else118.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.172) #14
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else118.i, %do.end110.i.if.end120.i_crit_edge
  %is_silent_reset.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 14
  %162 = ptrtoint ptr %is_silent_reset.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %is_silent_reset.i, align 1
  %call130.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock.i) #11
  %163 = ptrtoint ptr %RFChangeInProgress.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %RFChangeInProgress.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock.i, i32 noundef %call130.i) #11
  tail call void @rtl92e_enable_hw_security_config(ptr noundef %3) #11
  %164 = ptrtoint ptr %state62.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %state62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %165)
  %cmp138.i = icmp eq i32 %165, 5
  br i1 %cmp138.i, label %land.lhs.true.i, label %if.end120.i.if.end163.i_crit_edge

if.end120.i.if.end163.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163.i

land.lhs.true.i:                                  ; preds = %if.end120.i
  %iw_mode.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 56
  %166 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %iw_mode.i, align 8
  %168 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %167, label %land.lhs.true.i.if.end163.i_crit_edge [
    i32 2, label %if.then142.i
    i32 1, label %if.then154.i
  ]

land.lhs.true.i.if.end163.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163.i

if.then142.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %set_chan.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 181
  %169 = ptrtoint ptr %set_chan.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %set_chan.i, align 8
  %dev143.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 1
  %171 = ptrtoint ptr %dev143.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev143.i, align 4
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 89, i32 1
  %173 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %channel.i, align 2
  %conv144.i = zext i8 %174 to i16
  tail call void %170(ptr noundef %172, i16 noundef signext %conv144.i) #11
  %associate_complete_wq.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %175 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %175, ptr noundef %associate_complete_wq.i) #11
  br label %if.end163.i

if.then154.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %set_chan155.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 181
  %176 = ptrtoint ptr %set_chan155.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %set_chan155.i, align 8
  %dev156.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 1
  %178 = ptrtoint ptr %dev156.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev156.i, align 4
  %channel158.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 89, i32 1
  %180 = ptrtoint ptr %channel158.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %channel158.i, align 2
  %conv159.i = zext i8 %181 to i16
  tail call void %177(ptr noundef %179, i16 noundef signext %conv159.i) #11
  %link_change.i = getelementptr inbounds %struct.rtllib_device, ptr %123, i32 0, i32 184
  %182 = ptrtoint ptr %link_change.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %link_change.i, align 4
  %184 = ptrtoint ptr %dev156.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev156.i, align 4
  tail call void %183(ptr noundef %185) #11
  tail call void @notify_wx_assoc_event(ptr noundef %123) #11
  tail call void @rtllib_start_send_beacons(ptr noundef %123) #11
  %186 = ptrtoint ptr %dev156.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev156.i, align 4
  tail call void @netif_carrier_on(ptr noundef %187) #11
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then154.i, %if.then142.i, %land.lhs.true.i.if.end163.i_crit_edge, %if.end120.i.if.end163.i_crit_edge
  tail call void @rtl92e_cam_restore(ptr noundef %3) #11
  tail call void @rtl92e_dm_restore_state(ptr noundef %3) #11
  br label %END.i

END.i:                                            ; preds = %if.end163.i, %if.then18.i
  %188 = ptrtoint ptr %ResetProgress.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %ResetProgress.i, align 8
  %reset_count.i = getelementptr i8, ptr %3, i32 36200
  %189 = ptrtoint ptr %reset_count.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %reset_count.i, align 4
  %inc165.i = add i32 %190, 1
  store i32 %inc165.i, ptr %reset_count.i, align 4
  %bForcedSilentReset.i = getelementptr i8, ptr %3, i32 36208
  %191 = ptrtoint ptr %bForcedSilentReset.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %bForcedSilentReset.i, align 4
  %bResetInProgress166.i = getelementptr i8, ptr %3, i32 36214
  %192 = ptrtoint ptr %bResetInProgress166.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %bResetInProgress166.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !478
  tail call void @arm_heavy_mb() #11
  %mem_start.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 4
  %193 = ptrtoint ptr %mem_start.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mem_start.i.i, align 4
  %195 = inttoptr i32 %194 to ptr
  %add.ptr.i.i = getelementptr i8, ptr %195, i32 792
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #11, !srcloc !479
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 4294960) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %197 = load i32, ptr @rt_global_debug_component, align 4
  %and168.i = and i32 %197, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168.i)
  %tobool169.not.i = icmp eq i32 %and168.i, 0
  br i1 %tobool169.not.i, label %END.i.if.end244_crit_edge, label %do.end173.i

END.i.if.end244_crit_edge:                        ; preds = %END.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

do.end173.i:                                      ; preds = %END.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %reset_count.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %reset_count.i, align 4
  %call176.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %199) #14
  br label %if.end244

if.end244:                                        ; preds = %do.end173.i, %END.i.if.end244_crit_edge, %if.then29.i, %if.then243.if.end244_crit_edge, %if.end234.if.end244_crit_edge
  %200 = ptrtoint ptr %force_reset to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %force_reset, align 1
  %bForcedSilentReset = getelementptr i8, ptr %data, i32 5308
  %201 = ptrtoint ptr %bForcedSilentReset to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %bForcedSilentReset, align 4
  %bResetInProgress = getelementptr i8, ptr %data, i32 5314
  %202 = ptrtoint ptr %bResetInProgress to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %bResetInProgress, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %203 = load i32, ptr @rt_global_debug_component, align 4
  %and247 = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %if.end244.cleanup_crit_edge, label %do.end252

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end252:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  %call254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end252, %if.end244.cleanup_crit_edge, %do.end228, %if.then221.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_txpower_tracking_wq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_rf_pathcheck_wq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_update_beacon(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %ShortPreamble.i = alloca i8, align 1
  %slot_time_val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 516
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89
  tail call void @HT_update_self_and_peer_setting(ptr noundef %1, ptr noundef %current_network) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bd_rt2rt_long_slot_time = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 45, i32 8
  %8 = ptrtoint ptr %bd_rt2rt_long_slot_time to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bd_rt2rt_long_slot_time, align 1
  %10 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pHTInfo, align 8
  %bCurrentRT2RTLongSlotTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %11, i32 0, i32 42
  %12 = ptrtoint ptr %bCurrentRT2RTLongSlotTime to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %bCurrentRT2RTLongSlotTime, align 1
  %rt2rt_ht_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 45, i32 9
  %13 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rt2rt_ht_mode, align 2
  %15 = load ptr, ptr %pHTInfo, align 8
  %RT2RT_HT_Mode = getelementptr inbounds %struct.rt_hi_throughput, ptr %15, i32 0, i32 40
  %16 = ptrtoint ptr %RT2RT_HT_Mode to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %RT2RT_HT_Mode, align 1
  %capability = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 17
  %17 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %capability, align 8
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %19 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtllib.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ShortPreamble.i) #11
  %21 = ptrtoint ptr %ShortPreamble.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %ShortPreamble.i, align 1, !annotation !485
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %dot11CurrentPreambleMode14.i = getelementptr i8, ptr %3, i32 35907
  %22 = ptrtoint ptr %dot11CurrentPreambleMode14.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dot11CurrentPreambleMode14.i, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp.not.i = icmp eq i8 %23, 3
  br i1 %cmp.not.i, label %if.then.i.if.end35.i_crit_edge, label %if.then3.i

if.then.i.if.end35.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then3.i:                                       ; preds = %if.then.i
  %24 = ptrtoint ptr %ShortPreamble.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ShortPreamble.i, align 1
  %25 = ptrtoint ptr %dot11CurrentPreambleMode14.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %dot11CurrentPreambleMode14.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and5.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end35.sink.split.i_crit_edge, label %if.then3.i.if.end35.sink.split.sink.split.i_crit_edge

if.then3.i.if.end35.sink.split.sink.split.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split.sink.split.i

if.then3.i.if.end35.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp16.not.i = icmp eq i8 %23, 1
  br i1 %cmp16.not.i, label %if.else.i.if.end35.i_crit_edge, label %if.then18.i

if.else.i.if.end35.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then18.i:                                      ; preds = %if.else.i
  %27 = ptrtoint ptr %ShortPreamble.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ShortPreamble.i, align 1
  %28 = ptrtoint ptr %dot11CurrentPreambleMode14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %dot11CurrentPreambleMode14.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %29 = load i32, ptr @rt_global_debug_component, align 4
  %and21.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then18.i.if.end35.sink.split.i_crit_edge, label %if.then18.i.if.end35.sink.split.sink.split.i_crit_edge

if.then18.i.if.end35.sink.split.sink.split.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split.sink.split.i

if.then18.i.if.end35.sink.split.i_crit_edge:      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.sink.split.i

if.end35.sink.split.sink.split.i:                 ; preds = %if.then18.i.if.end35.sink.split.sink.split.i_crit_edge, %if.then3.i.if.end35.sink.split.sink.split.i_crit_edge
  %.str.198.sink.i = phi ptr [ @.str.195, %if.then3.i.if.end35.sink.split.sink.split.i_crit_edge ], [ @.str.198, %if.then18.i.if.end35.sink.split.sink.split.i_crit_edge ]
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.198.sink.i, ptr noundef nonnull @.str.196) #14
  br label %if.end35.sink.split.i

if.end35.sink.split.i:                            ; preds = %if.end35.sink.split.sink.split.i, %if.then18.i.if.end35.sink.split.i_crit_edge, %if.then3.i.if.end35.sink.split.i_crit_edge
  %30 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtllib.i, align 8
  %SetHwRegHandler33.i = getelementptr inbounds %struct.rtllib_device, ptr %31, i32 0, i32 203
  %32 = ptrtoint ptr %SetHwRegHandler33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %SetHwRegHandler33.i, align 8
  call void %33(ptr noundef %3, i8 noundef zeroext 18, ptr noundef nonnull %ShortPreamble.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end35.sink.split.i, %if.else.i.if.end35.i_crit_edge, %if.then.i.if.end35.i_crit_edge
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %20, i32 0, i32 89, i32 23
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode.i, align 4
  %36 = and i8 %35, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool38.not.i = icmp eq i8 %36, 0
  br i1 %tobool38.not.i, label %if.end35.i._rtl92e_update_cap.exit_crit_edge, label %if.then39.i

if.end35.i._rtl92e_update_cap.exit_crit_edge:     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_update_cap.exit

if.then39.i:                                      ; preds = %if.end35.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slot_time_val.i) #11
  %slot_time.i = getelementptr i8, ptr %3, i32 35908
  %37 = ptrtoint ptr %slot_time.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %slot_time.i, align 8
  %and41.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then39.i.if.else53.i_crit_edge, label %land.lhs.true.i

if.then39.i.if.else53.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else53.i

land.lhs.true.i:                                  ; preds = %if.then39.i
  %39 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtllib.i, align 8
  %pHTInfo.i = getelementptr inbounds %struct.rtllib_device, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %pHTInfo.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pHTInfo.i, align 8
  %bCurrentRT2RTLongSlotTime.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %42, i32 0, i32 42
  %43 = ptrtoint ptr %bCurrentRT2RTLongSlotTime.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bCurrentRT2RTLongSlotTime.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool44.not.i = icmp eq i8 %44, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %land.lhs.true.i.if.else53.i_crit_edge

land.lhs.true.i.if.else53.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else53.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp47.not.i = icmp eq i8 %38, 9
  br i1 %cmp47.not.i, label %if.then45.i.if.end61.i_crit_edge, label %if.then49.i

if.then45.i.if.end61.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

if.then49.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %slot_time_val.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 9, ptr %slot_time_val.i, align 1
  br label %if.end61.sink.split.i

if.else53.i:                                      ; preds = %land.lhs.true.i.if.else53.i_crit_edge, %if.then39.i.if.else53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %38)
  %cmp55.not.i = icmp eq i8 %38, 20
  br i1 %cmp55.not.i, label %if.else53.i.if.end61.i_crit_edge, label %if.then57.i

if.else53.i.if.end61.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %slot_time_val.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 20, ptr %slot_time_val.i, align 1
  %47 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rtllib.i, align 8
  br label %if.end61.sink.split.i

if.end61.sink.split.i:                            ; preds = %if.then57.i, %if.then49.i
  %.sink.i = phi ptr [ %48, %if.then57.i ], [ %40, %if.then49.i ]
  %SetHwRegHandler59.i = getelementptr inbounds %struct.rtllib_device, ptr %.sink.i, i32 0, i32 203
  %49 = ptrtoint ptr %SetHwRegHandler59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %SetHwRegHandler59.i, align 8
  call void %50(ptr noundef %3, i8 noundef zeroext 17, ptr noundef nonnull %slot_time_val.i) #11
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end61.sink.split.i, %if.else53.i.if.end61.i_crit_edge, %if.then45.i.if.end61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slot_time_val.i) #11
  br label %_rtl92e_update_cap.exit

_rtl92e_update_cap.exit:                          ; preds = %if.end61.i, %if.end35.i._rtl92e_update_cap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ShortPreamble.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_qos_activate(ptr noundef %data) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %data, i32 -4432
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #11
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %i, align 4, !annotation !485
  %mutex = getelementptr i8, ptr %data, i32 -3324
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %5 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtllib, align 8
  %state = getelementptr inbounds %struct.rtllib_device, ptr %6, i32 0, i32 90
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.not = icmp eq i32 %8, 5
  br i1 %cmp.not, label %do.body, label %entry.success_crit_edge

entry.success_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %9 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %10 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %SetHwRegHandler = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 203
  %13 = ptrtoint ptr %SetHwRegHandler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %SetHwRegHandler, align 8
  call void %14(ptr noundef %3, i8 noundef zeroext 31, ptr noundef nonnull %i) #11
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4
  %cmp9 = icmp slt i32 %inc, 4
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.success_crit_edge

for.body.success_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

success:                                          ; preds = %for.body.success_crit_edge, %entry.success_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_hw_wakeup_wq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_hw_sleep_wq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_irq_rx_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %stats.i = alloca %struct.rtllib_rx_stats, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %t, i32 -852
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %priv.i.i = getelementptr i8, ptr %3, i32 30772
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %stats.i) #11
  %4 = call ptr @memset(ptr %stats.i, i32 0, i32 96)
  %5 = getelementptr inbounds { i64, i8, i8, i8, [1 x i8], i16, i8, i8, i8, i8, i16, [4 x i8], i64, i32, i8, [1 x i8], i16, i8, [3 x i8], i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, [1 x i8], i16, i16, i16, i16, i8, i8, i16, [2 x i8] }, ptr %stats.i, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -98, ptr %5, align 2
  %7 = getelementptr inbounds { i64, i8, i8, i8, [1 x i8], i16, i8, i8, i8, i8, i16, [4 x i8], i64, i32, i8, [1 x i8], i16, i8, [3 x i8], i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, [1 x i8], i16, i16, i16, i16, i8, i8, i16, [2 x i8] }, ptr %stats.i, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 1
  %rxringcount.i = getelementptr i8, ptr %3, i32 34996
  %9 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rxringcount.i, align 8
  %nic_type.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats.i, i32 0, i32 12
  %11 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not216.i = icmp eq i32 %10, 0
  br i1 %tobool.not216.i, label %entry._rtl92e_rx_normal.exit_crit_edge, label %while.body.lr.ph.i

entry._rtl92e_rx_normal.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_rx_normal.exit

while.body.lr.ph.i:                               ; preds = %entry
  %rx_ring.i = getelementptr i8, ptr %3, i32 34728
  %rx_idx.i = getelementptr i8, ptr %3, i32 34992
  %rx_buf.i = getelementptr i8, ptr %3, i32 34732
  %ops.i = getelementptr i8, ptr %3, i32 31312
  %rxbuffersize.i = getelementptr i8, ptr %3, i32 35000
  %RxDrvInfoSize.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats.i, i32 0, i32 24
  %RxBufShift.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats.i, i32 0, i32 25
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %bCRC.i = getelementptr inbounds %struct.rtllib_rx_stats, ptr %stats.i, i32 0, i32 18
  %rxdatacrcerr.i = getelementptr i8, ptr %3, i32 32524
  %rxmgmtcrcerr.i = getelementptr i8, ptr %3, i32 32528
  %rxok.i = getelementptr i8, ptr %3, i32 32520
  %rxbytesunicast.i = getelementptr i8, ptr %3, i32 33420
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec219.in.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %dec219.i, %cleanup.i.while.body.i_crit_edge ]
  %bLedBlinking.0.off0218.i = phi i1 [ true, %while.body.lr.ph.i ], [ %bLedBlinking.2.off0.i, %cleanup.i.while.body.i_crit_edge ]
  %unicast_packet.0.off0217.i = phi i1 [ false, %while.body.lr.ph.i ], [ %unicast_packet.2.off0.i, %cleanup.i.while.body.i_crit_edge ]
  %dec219.i = add i32 %dec219.in.i, -1
  %12 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring.i, align 4
  %14 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_idx.i, align 4
  %arrayidx2.i = getelementptr %struct.rx_desc, ptr %13, i32 %15
  %arrayidx6.i = getelementptr [64 x ptr], ptr %rx_buf.i, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i, align 4
  %OWN.i = getelementptr %struct.rx_desc, ptr %13, i32 %15, i32 2
  %18 = ptrtoint ptr %OWN.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %OWN.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool7.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %while.body.i._rtl92e_rx_normal.exit_crit_edge

while.body.i._rtl92e_rx_normal.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_rx_normal.exit

if.end.i:                                         ; preds = %while.body.i
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %rx_query_status_descriptor.i = getelementptr inbounds %struct.rtl819x_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %rx_query_status_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_query_status_descriptor.i, align 4
  %call8.i = call zeroext i1 %22(ptr noundef %3, ptr noundef nonnull %stats.i, ptr noundef %arrayidx2.i, ptr noundef %17) #11
  br i1 %call8.i, label %if.end10.i, label %if.end.i.done.i_crit_edge

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end10.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rxbuffersize.i, align 4
  %conv.i = zext i16 %24 to i32
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv.i, i32 noundef 2592) #11
  %tobool12.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.done.i_crit_edge, label %if.end17.i, !prof !487

if.end10.i.done.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end17.i:                                       ; preds = %if.end10.i
  %25 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i, align 8
  %29 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rxbuffersize.i, align 4
  %conv20.i = zext i16 %30 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev18.i, i32 noundef %28, i32 noundef %conv20.i, i32 noundef 2, i32 noundef 0) #11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load21.i = load i16, ptr %arrayidx2.i, align 4
  %bf.lshr.i = lshr i16 %bf.load21.i, 2
  %conv22.i = zext i16 %bf.lshr.i to i32
  %call23.i = call ptr @skb_put(ptr noundef %17, i32 noundef %conv22.i) #11
  %32 = ptrtoint ptr %RxDrvInfoSize.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %RxDrvInfoSize.i, align 2
  %conv24.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %RxBufShift.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %RxBufShift.i, align 1
  %conv25.i = zext i8 %35 to i32
  %add.i = add nuw nsw i32 %conv25.i, %conv24.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %39, i32 %add.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %41, -4
  call void @skb_trim(ptr noundef %17, i32 noundef %sub.i) #11
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %addr1.i = getelementptr inbounds %struct.rtllib_hdr_1addr, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr1.i, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i = icmp eq i32 %46, 0
  %spec.select.i = select i1 %tobool.i.not.i, i1 true, i1 %unicast_packet.0.off0217.i
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %43, align 1
  %49 = and i16 %48, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp.i = icmp eq i16 %49, 0
  %not.cmp.i = xor i1 %cmp.i, true
  %bLedBlinking.1.off0.i = select i1 %not.cmp.i, i1 %bLedBlinking.0.off0218.i, i1 false
  br i1 %bLedBlinking.1.off0.i, label %if.then37.i, label %if.end17.i.if.end43.i_crit_edge

if.end17.i.if.end43.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.end17.i
  %50 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtllib.i, align 8
  %LedControlHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %51, i32 0, i32 202
  %52 = ptrtoint ptr %LedControlHandler.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %LedControlHandler.i, align 4
  %tobool38.not.i = icmp eq ptr %53, null
  br i1 %tobool38.not.i, label %if.then37.i.if.end43.i_crit_edge, label %if.then39.i

if.then37.i.if.end43.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %53(ptr noundef %3, i32 noundef 5) #11
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %if.then37.i.if.end43.i_crit_edge, %if.end17.i.if.end43.i_crit_edge
  %54 = ptrtoint ptr %bCRC.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load44.i = load i8, ptr %bCRC.i, align 2
  %55 = and i8 %bf.load44.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool47.not.i = icmp eq i8 %55, 0
  br i1 %tobool47.not.i, label %if.end43.i.if.end57.i_crit_edge, label %if.then48.i

if.end43.i.if.end57.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then48.i:                                      ; preds = %if.end43.i
  br i1 %cmp.i, label %if.else.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %rxdatacrcerr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rxdatacrcerr.i, align 8
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %rxdatacrcerr.i, align 8
  br label %if.end57.i

if.else.i:                                        ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %rxmgmtcrcerr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rxmgmtcrcerr.i, align 4
  %inc55.i = add i32 %59, 1
  store i32 %inc55.i, ptr %rxmgmtcrcerr.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %if.then52.i, %if.end43.i.if.end57.i_crit_edge
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  %62 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rtllib.i, align 8
  %call60.i = call i32 @rtllib_rx(ptr noundef %63, ptr noundef %17, ptr noundef nonnull %stats.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.else63.i

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 1) #11
  br label %if.end71.i

if.else63.i:                                      ; preds = %if.end57.i
  %64 = ptrtoint ptr %rxok.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rxok.i, align 4
  %inc65.i = add i32 %65, 1
  store i32 %inc65.i, ptr %rxok.i, align 4
  br i1 %spec.select.i, label %if.then67.i, label %if.else63.i.if.end71.i_crit_edge

if.else63.i.if.end71.i_crit_edge:                 ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.then67.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %rxbytesunicast.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxbytesunicast.i, align 8
  %add69.i = add i32 %67, %61
  store i32 %add69.i, ptr %rxbytesunicast.i, align 8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %if.else63.i.if.end71.i_crit_edge, %if.then62.i
  %68 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %3, ptr %68, align 8
  %70 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_idx.i, align 4
  %arrayidx76.i = getelementptr [64 x ptr], ptr %rx_buf.i, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i.i, ptr %arrayidx76.i, align 4
  %73 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i.i, align 8
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %tail.i209.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %75 = ptrtoint ptr %tail.i209.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i209.i, align 8
  %77 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rxbuffersize.i, align 4
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %76) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end71.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !486

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %dev78.i) #11
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44, i32 3
  %79 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev78.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %82, %if.end.i.i.i ], [ %80, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.202, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.203, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv81.i = zext i16 %78 to i32
  call void @debug_dma_map_single(ptr noundef %dev78.i, ptr noundef %76, i32 noundef %conv81.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %83 = load ptr, ptr @mem_map, align 4
  %84 = ptrtoint ptr %76 to i32
  %sub.i.i = add i32 %84, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i210.i = getelementptr %struct.page, ptr %83, i32 %shr.i.i
  %and.i.i = and i32 %84, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev78.i, ptr noundef %add.ptr.i210.i, i32 noundef %and.i.i, i32 noundef %conv81.i, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %cb83.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %cb83.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i.i, ptr %cb83.i, align 8
  %86 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv.i.i, align 8
  %dev86.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev86.i, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then91.i, label %dma_map_single_attrs.exit.i.done.i_crit_edge

dma_map_single_attrs.exit.i.done.i_crit_edge:     ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.then91.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  br label %_rtl92e_rx_normal.exit

done.i:                                           ; preds = %dma_map_single_attrs.exit.i.done.i_crit_edge, %if.end10.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %unicast_packet.2.off0.i = phi i1 [ %unicast_packet.0.off0217.i, %if.end10.i.done.i_crit_edge ], [ %unicast_packet.0.off0217.i, %if.end.i.done.i_crit_edge ], [ %spec.select.i, %dma_map_single_attrs.exit.i.done.i_crit_edge ]
  %bLedBlinking.2.off0.i = phi i1 [ %bLedBlinking.0.off0218.i, %if.end10.i.done.i_crit_edge ], [ %bLedBlinking.0.off0218.i, %if.end.i.done.i_crit_edge ], [ %bLedBlinking.1.off0.i, %dma_map_single_attrs.exit.i.done.i_crit_edge ]
  %skb.0.i = phi ptr [ %17, %if.end10.i.done.i_crit_edge ], [ %17, %if.end.i.done.i_crit_edge ], [ %call.i.i.i, %dma_map_single_attrs.exit.i.done.i_crit_edge ]
  %cb93.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 3
  %88 = ptrtoint ptr %cb93.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cb93.i, align 8
  %BufferAddress.i = getelementptr %struct.rx_desc, ptr %13, i32 %15, i32 5
  %90 = ptrtoint ptr %BufferAddress.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %BufferAddress.i, align 4
  %91 = ptrtoint ptr %OWN.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load96.i = load i8, ptr %OWN.i, align 1
  %bf.set.i = or i8 %bf.load96.i, 1
  store i8 %bf.set.i, ptr %OWN.i, align 1
  %92 = ptrtoint ptr %rxbuffersize.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %rxbuffersize.i, align 4
  %94 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load99.i = load i16, ptr %arrayidx2.i, align 4
  %bf.shl.i = shl i16 %93, 2
  %bf.clear100.i = and i16 %bf.load99.i, 3
  %bf.set101.i = or i16 %bf.clear100.i, %bf.shl.i
  store i16 %bf.set101.i, ptr %arrayidx2.i, align 4
  %95 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_idx.i, align 4
  %97 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rxringcount.i, align 8
  %sub105.i = add i32 %98, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %sub105.i)
  %cmp106.i = icmp eq i32 %96, %sub105.i
  br i1 %cmp106.i, label %if.then108.i, label %done.i.cleanup.i_crit_edge

done.i.cleanup.i_crit_edge:                       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then108.i:                                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set111.i = or i8 %bf.load96.i, 3
  %99 = ptrtoint ptr %OWN.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %bf.set111.i, ptr %OWN.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then108.i, %done.i.cleanup.i_crit_edge
  %100 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_idx.i, align 4
  %add115.i = add i32 %101, 1
  %102 = ptrtoint ptr %rxringcount.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rxringcount.i, align 8
  %rem.i = urem i32 %add115.i, %103
  store i32 %rem.i, ptr %rx_idx.i, align 4
  %tobool.not.i = icmp eq i32 %dec219.i, 0
  br i1 %tobool.not.i, label %cleanup.i._rtl92e_rx_normal.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i._rtl92e_rx_normal.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_rtl92e_rx_normal.exit

_rtl92e_rx_normal.exit:                           ; preds = %cleanup.i._rtl92e_rx_normal.exit_crit_edge, %if.then91.i, %while.body.i._rtl92e_rx_normal.exit_crit_edge, %entry._rtl92e_rx_normal.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %stats.i) #11
  %104 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rtllib, align 8
  %dev2 = getelementptr inbounds %struct.rtllib_device, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev2, align 4
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mem_start.i, align 4
  %110 = inttoptr i32 %109 to ptr
  %add.ptr.i = getelementptr i8, ptr %110, i32 244
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !474
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !475
  %112 = or i32 %111, 524288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !480
  call void @arm_heavy_mb() #11
  %113 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mem_start.i, align 4
  %115 = inttoptr i32 %114 to ptr
  %add.ptr.i8 = getelementptr i8, ptr %115, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %112) #11, !srcloc !481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 4294960) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_irq_tx_tasklet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %t, i32 -876
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %rtllib.i = getelementptr i8, ptr %3, i32 31316
  %4 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib.i, align 8
  %softmac_data_hard_start_xmit.i = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 178
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %entry
  %queue_index.019.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rtllib_device, ptr %5, i32 0, i32 141, i32 %queue_index.019.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not18.i = icmp eq ptr %7, %arrayidx.i
  br i1 %cmp.i.not18.i, label %while.cond.preheader.i.for.inc.i_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %8 = ptrtoint ptr %rtllib.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib.i, align 8
  %check_nic_enough_desc.i = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 192
  %10 = ptrtoint ptr %check_nic_enough_desc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %check_nic_enough_desc.i, align 4
  %call3.i = tail call signext i16 %11(ptr noundef %3, i32 noundef %queue_index.019.i) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call3.i)
  %cmp4.i = icmp sgt i16 %call3.i, 0
  br i1 %cmp4.i, label %while.body.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.body.i:                                     ; preds = %land.rhs.i
  %call8.i = tail call ptr @skb_dequeue(ptr noundef %arrayidx.i) #11
  %12 = ptrtoint ptr %softmac_data_hard_start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %softmac_data_hard_start_xmit.i, align 4
  tail call void %13(ptr noundef %call8.i, ptr noundef %3, i32 noundef 0) #11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %arrayidx.i
  br i1 %cmp.i.not.i, label %while.body.i.for.inc.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.body.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %queue_index.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %_rtl92e_tx_resume.exit, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

_rtl92e_tx_resume.exit:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl92e_prepare_beacon(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %t, i32 -900
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %dev1 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %queue = getelementptr i8, ptr %t, i32 3396
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %5, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %5
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %entry.__skb_dequeue.exit_crit_edge, label %if.then.i

entry.__skb_dequeue.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qlen.i.i = getelementptr i8, ptr %t, i32 3404
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %8 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %spec.store.select.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %prev17.i.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %entry.__skb_dequeue.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #11
  %14 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtllib, align 8
  %call3 = tail call ptr @rtllib_get_beacon(ptr noundef %15) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %__skb_dequeue.exit.cleanup_crit_edge, label %if.end

__skb_dequeue.exit.cleanup_crit_edge:             ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %t, i32 3380
  %add.ptr4 = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 8
  %queue_index = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 13
  %16 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %queue_index, align 1
  %data_rate = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 20
  %17 = ptrtoint ptr %data_rate to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %data_rate, align 2
  %RATRIndex = getelementptr %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %RATRIndex to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %RATRIndex, align 2
  %19 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %add.ptr4, align 2
  %bf.set7 = or i8 %bf.load, 6
  store i8 %bf.set7, ptr %add.ptr4, align 2
  %20 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtllib, align 8
  %tx_headroom = getelementptr inbounds %struct.rtllib_device, ptr %21, i32 0, i32 61
  %22 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_headroom, align 8
  %call9 = tail call ptr @skb_push(ptr noundef nonnull %call3, i32 noundef %23) #11
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr i8, ptr %t, i32 -904
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %tx_fill_descriptor = getelementptr inbounds %struct.rtl819x_ops, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %tx_fill_descriptor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_fill_descriptor, align 4
  tail call void %29(ptr noundef %3, ptr noundef %25, ptr noundef %add.ptr4, ptr noundef nonnull %call3) #11
  %prev.i.i = getelementptr i8, ptr %t, i32 3400
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %queue, ptr %call3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.0, ptr %call3, i32 0, i32 1
  %33 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %prev10.i.i.i, align 4
  store volatile ptr %call3, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call3, ptr %31, align 4
  %qlen.i.i.i = getelementptr i8, ptr %t, i32 3404
  %35 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %OWN = getelementptr inbounds %struct.tx_desc, ptr %25, i32 0, i32 2
  %37 = ptrtoint ptr %OWN to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load12 = load i8, ptr %OWN, align 1
  %bf.set14 = or i8 %bf.load12, 1
  store i8 %bf.set14, ptr %OWN, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__skb_dequeue.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_watchdog(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_ips_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_leisure_ps_enter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @RemovePeerTS(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @notify_wx_assoc_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92e_if_check_reset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eRFPowerState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %irq_th_lock.i = getelementptr i8, ptr %dev, i32 31936
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %indvars.iv.i = phi i32 [ 0, %if.then ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %bCheckFwTxCnt.0.off076.i = phi i1 [ false, %if.then ], [ %bCheckFwTxCnt.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %QueueID.075.i = phi i8 [ 0, %if.then ], [ %inc34.i, %for.inc.i.for.body.i_crit_edge ]
  %trunc.i = trunc i8 %QueueID.075.i to i7
  %4 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.253)
  switch i7 %trunc.i, label %if.end17.i [
    i7 5, label %for.body.i.for.inc.i_crit_edge
    i7 8, label %for.body.i.for.inc.i_crit_edge51
  ]

for.body.i.for.inc.i_crit_edge51:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end17.i:                                       ; preds = %for.body.i
  %queue.i = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %indvars.iv.i, i32 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue.i, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp19.i = icmp eq i32 %6, 0
  br i1 %cmp19.i, label %if.end17.i.for.inc.i_crit_edge, label %if.else.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end17.i
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue.i, align 4
  %nStuckCount.i = getelementptr %struct.sk_buff, ptr %8, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %nStuckCount.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nStuckCount.i, align 1
  %inc.i = add i8 %10, 1
  store i8 %inc.i, ptr %nStuckCount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %inc.i)
  %cmp26.i = icmp ugt i8 %inc.i, 1
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv25.i = zext i8 %inc.i to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.167, ptr noundef nonnull @__func__._rtl92e_tx_check_stuck, i32 noundef %indvars.iv.i, i32 noundef %conv25.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %if.else.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge51
  %bCheckFwTxCnt.1.off0.i = phi i1 [ %bCheckFwTxCnt.0.off076.i, %for.body.i.for.inc.i_crit_edge ], [ %bCheckFwTxCnt.0.off076.i, %if.end17.i.for.inc.i_crit_edge ], [ true, %if.then28.i ], [ true, %if.else.i.for.inc.i_crit_edge ], [ %bCheckFwTxCnt.0.off076.i, %for.body.i.for.inc.i_crit_edge51 ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc34.i = add nuw nsw i8 %QueueID.075.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call4.i) #11
  br i1 %bCheckFwTxCnt.1.off0.i, label %if.then36.i, label %for.end.i.land.lhs.true_crit_edge

for.end.i.land.lhs.true_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then36.i:                                      ; preds = %for.end.i
  %ops.i = getelementptr i8, ptr %dev, i32 31312
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %TxCheckStuckHandler.i = getelementptr inbounds %struct.rtl819x_ops, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %TxCheckStuckHandler.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %TxCheckStuckHandler.i, align 4
  %call37.i = tail call zeroext i1 %14(ptr noundef %dev) #11
  br i1 %call37.i, label %do.body39.i, label %if.then36.i.land.lhs.true_crit_edge

if.then36.i.land.lhs.true_crit_edge:              ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.body39.i:                                      ; preds = %if.then36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %15 = load i32, ptr @rt_global_debug_component, align 4
  %and.i = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool40.not.i, label %do.body39.i.land.lhs.true_crit_edge, label %do.end44.i

do.body39.i.land.lhs.true_crit_edge:              ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

do.end44.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end44.i, %do.body39.i.land.lhs.true_crit_edge, %if.then36.i.land.lhs.true_crit_edge, %for.end.i.land.lhs.true_crit_edge
  %cmp14 = phi i1 [ false, %for.end.i.land.lhs.true_crit_edge ], [ false, %if.then36.i.land.lhs.true_crit_edge ], [ true, %do.body39.i.land.lhs.true_crit_edge ], [ true, %do.end44.i ]
  %TxResetType.0 = phi i32 [ 0, %for.end.i.land.lhs.true_crit_edge ], [ 0, %if.then36.i.land.lhs.true_crit_edge ], [ 2, %do.body39.i.land.lhs.true_crit_edge ], [ 2, %do.end44.i ]
  %16 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtllib, align 8
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %17, i32 0, i32 56
  %18 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp4 = icmp eq i32 %19, 2
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.rtllib_device, ptr %17, i32 0, i32 90
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp7 = icmp eq i32 %21, 5
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true5
  %ops.i36 = getelementptr i8, ptr %dev, i32 31312
  %22 = ptrtoint ptr %ops.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i36, align 4
  %RxCheckStuckHandler.i = getelementptr inbounds %struct.rtl819x_ops, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %RxCheckStuckHandler.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %RxCheckStuckHandler.i, align 4
  %call1.i = tail call zeroext i1 %25(ptr noundef %dev) #11
  br i1 %call1.i, label %do.body.i, label %if.then8.if.else_crit_edge

if.then8.if.else_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.body.i:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %26 = load i32, ptr @rt_global_debug_component, align 4
  %and.i37 = and i32 %26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i, label %do.body.i.if.then17_crit_edge, label %do.end.i

do.body.i.if.then17_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #14
  br label %if.then17

if.else:                                          ; preds = %if.then8.if.else_crit_edge, %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  br i1 %cmp14, label %if.else.if.then17_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.then17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %if.else.if.then17_crit_edge, %do.end.i, %do.body.i.if.then17_crit_edge
  %RxResetType.048 = phi i32 [ 0, %if.else.if.then17_crit_edge ], [ 2, %do.end.i ], [ 2, %do.body.i.if.then17_crit_edge ]
  %TxResetType.04147 = phi i32 [ 2, %if.else.if.then17_crit_edge ], [ %TxResetType.0, %do.end.i ], [ %TxResetType.0, %do.body.i.if.then17_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__._rtl92e_if_check_reset, i32 noundef %TxResetType.04147, i32 noundef %RxResetType.048) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then17 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_stop_scan_syncro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_stop_send_beacons(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_backup_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_hw_security_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_start_send_beacons(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_cam_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_dm_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @HT_update_self_and_peer_setting(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtllib_get_beacon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dot11d_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dot11d_channel_map(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_tx_isr(ptr noundef %dev, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio
  %queue = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not34 = icmp eq i32 %1, 0
  br i1 %tobool.not34, label %entry.if.then14_crit_edge, label %while.body.lr.ph

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

while.body.lr.ph:                                 ; preds = %entry
  %idx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 2
  %entries = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 3
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %27, %__skb_dequeue.exit.while.body_crit_edge ]
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %OWN = getelementptr %struct.tx_desc, ptr %4, i32 %6, i32 2
  %7 = ptrtoint ptr %OWN to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %OWN, align 1
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool4.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool4.not, label %if.end, label %while.body.cleanup16_crit_edge

while.body.cleanup16_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.end:                                           ; preds = %while.body
  %add = add i32 %6, 1
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %9
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %idx, align 4
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %12, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %12
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %if.end.__skb_dequeue.exit_crit_edge, label %if.then.i

if.end.__skb_dequeue.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  %13 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %14 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %spec.store.select.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %prev17.i.i, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %15, ptr %17, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %if.end.__skb_dequeue.exit_crit_edge
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %TxBuffAddr = getelementptr %struct.tx_desc, ptr %4, i32 %6, i32 8
  %22 = ptrtoint ptr %TxBuffAddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %TxBuffAddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev11, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #11
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #11
  %26 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %__skb_dequeue.exit.if.then14_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

__skb_dequeue.exit.if.then14_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %__skb_dequeue.exit.if.then14_crit_edge, %entry.if.then14_crit_edge
  %state.i = getelementptr i8, ptr %dev, i32 32196
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i32 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i32, label %if.then.i33, label %if.then14.cleanup16_crit_edge

if.then14.cleanup16_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.then.i33:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %irq_tx_tasklet = getelementptr i8, ptr %dev, i32 32192
  tail call void @__tasklet_schedule(ptr noundef %irq_tx_tasklet) #11
  br label %cleanup16

cleanup16:                                        ; preds = %if.then.i33, %if.then14.cleanup16_crit_edge, %while.body.cleanup16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_ps_tx_ack(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92e_free_tx_ring(ptr noundef %dev, i32 noundef %prio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30772
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio
  %queue = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not27 = icmp eq i32 %1, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %idx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 2
  %entries = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 3
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %27, %__skb_dequeue.exit.while.body_crit_edge ]
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %8, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %8
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %10 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %spec.store.select.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %TxBuffAddr = getelementptr %struct.tx_desc, ptr %4, i32 %6, i32 8
  %18 = ptrtoint ptr %TxBuffAddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %TxBuffAddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev6, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #11
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i, i32 noundef 0) #11
  %22 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx, align 4
  %add = add i32 %23, 1
  %24 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries, align 4
  %rem = urem i32 %add, %25
  store i32 %rem, ptr %idx, align 4
  %26 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %entries11 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 3
  %30 = ptrtoint ptr %entries11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entries11, align 4
  %mul = shl i32 %31, 5
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %dma = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 58, i32 %prio, i32 1
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef %mul, ptr noundef %33, i32 noundef %35, i32 noundef 0) #11
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92e_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !130, !132, !133, !134, !135, !137, !139, !140, !141, !143, !145, !147, !148, !149, !151, !152, !153, !155, !157, !158, !159, !161, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !182, !183, !185, !186, !188, !190, !191, !192, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !210, !212, !213, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !297, !298, !299, !300, !302, !303, !304, !306, !308, !310, !311, !312, !314, !315, !316, !318, !320, !322, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !338, !340, !342, !343, !344, !346, !347, !348, !350, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !384, !386, !387, !388, !390, !392, !394, !396, !397, !398, !400, !401, !402, !403, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !446, !448, !449, !450, !451, !453, !454, !455, !457, !458, !460, !462}
!llvm.module.flags = !{!463, !464, !465, !466, !467, !468, !469, !470}
!llvm.ident = !{!471}

!0 = !{ptr @hwwep, !1, !"hwwep", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 25, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 147, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl92e_set_rf_state._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl92e_set_rf_state._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 154, i32 4}
!10 = !{ptr @rtl92e_set_rf_state._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtl92e_set_rf_state._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 160, i32 5}
!14 = !{ptr @rtl92e_set_rf_state._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl92e_set_rf_state._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 167, i32 11}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 197, i32 4}
!20 = !{ptr @rtl92e_set_rf_state._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtl92e_set_rf_state._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 234, i32 3}
!24 = !{ptr @rtl92e_set_rf_state._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl92e_set_rf_state._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 247, i32 3}
!28 = !{ptr @rtl92e_set_rf_state._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtl92e_set_rf_state._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 256, i32 2}
!32 = !{ptr @rtl92e_set_rf_state._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl92e_set_rf_state._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 704, i32 9}
!36 = !{ptr @__func__.rtl92e_set_wireless_mode, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 705, i32 9}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 719, i32 3}
!40 = !{ptr @rtl92e_set_wireless_mode._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rtl92e_set_wireless_mode._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 723, i32 3}
!44 = !{ptr @rtl92e_set_wireless_mode._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtl92e_set_wireless_mode._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 727, i32 2}
!48 = !{ptr @rtl92e_set_wireless_mode._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtl92e_set_wireless_mode._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2574, i32 20}
!52 = !{ptr @__func__.rtl92e_enable_nic, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2574, i32 55}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2579, i32 2}
!56 = !{ptr @rtl92e_enable_nic._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rtl92e_enable_nic._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2583, i32 20}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2587, i32 2}
!62 = !{ptr @rtl92e_enable_nic._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtl92e_enable_nic._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2593, i32 2}
!66 = !{ptr @rtl92e_enable_nic._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtl92e_enable_nic._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2602, i32 2}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rtl92e_disable_nic._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rtl92e_disable_nic._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2611, i32 2}
!75 = !{ptr @rtl92e_disable_nic._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rtl92e_disable_nic._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_description347, !78, !"__UNIQUE_ID_description347", i1 false, i1 false}
!78 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2633, i32 1}
!79 = !{ptr @__UNIQUE_ID_author348, !80, !"__UNIQUE_ID_author348", i1 false, i1 false}
!80 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2634, i32 1}
!81 = !{ptr @__UNIQUE_ID_version349, !82, !"__UNIQUE_ID_version349", i1 false, i1 false}
!82 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2635, i32 1}
!83 = !{ptr @__UNIQUE_ID_license350, !84, !"__UNIQUE_ID_license350", i1 false, i1 false}
!84 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2636, i32 1}
!85 = !{ptr @__UNIQUE_ID_firmware351, !86, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!86 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2637, i32 1}
!87 = !{ptr @__UNIQUE_ID_firmware352, !88, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!88 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2638, i32 1}
!89 = !{ptr @__UNIQUE_ID_firmware353, !90, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!90 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2639, i32 1}
!91 = !{ptr @__param_ifname, !92, !"__param_ifname", i1 false, i1 false}
!92 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2641, i32 1}
!93 = !{ptr @__UNIQUE_ID_ifnametype354, !92, !"__UNIQUE_ID_ifnametype354", i1 false, i1 false}
!94 = !{ptr @__param_hwwep, !95, !"__param_hwwep", i1 false, i1 false}
!95 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2642, i32 1}
!96 = !{ptr @__UNIQUE_ID_hwweptype355, !95, !"__UNIQUE_ID_hwweptype355", i1 false, i1 false}
!97 = !{ptr @__UNIQUE_ID_ifname356, !98, !"__UNIQUE_ID_ifname356", i1 false, i1 false}
!98 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2644, i32 1}
!99 = !{ptr @__UNIQUE_ID_hwwep357, !100, !"__UNIQUE_ID_hwwep357", i1 false, i1 false}
!100 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2645, i32 1}
!101 = !{ptr @rtl8192_pci_id_tbl, !102, !"rtl8192_pci_id_tbl", i1 false, i1 false}
!102 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 51, i32 29}
!103 = !{ptr @rtl819xp_ops, !104, !"rtl819xp_ops", i1 false, i1 false}
!104 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 29, i32 33}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 745, i32 2}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @_rtl92e_sta_up._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @_rtl92e_sta_up._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @_rtl92e_sta_up._entry.46, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 754, i32 2}
!112 = !{ptr @_rtl92e_sta_up._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2616, i32 1}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 68, i32 10}
!117 = !{ptr @rtl8192_pci_driver, !118, !"rtl8192_pci_driver", i1 false, i1 false}
!118 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 67, i32 26}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2405, i32 2}
!121 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @_rtl92e_pci_probe._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @_rtl92e_pci_probe._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2408, i32 3}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @_rtl92e_pci_probe._entry.52, !125, !"_entry", i1 false, i1 false}
!129 = !{ptr @_rtl92e_pci_probe._entry_ptr.56, !125, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2416, i32 4}
!132 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @_rtl92e_pci_probe._entry.57, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @_rtl92e_pci_probe._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2444, i32 19}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2448, i32 2}
!139 = !{ptr @_rtl92e_pci_probe._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @_rtl92e_pci_probe._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2451, i32 19}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2458, i32 19}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2487, i32 3}
!147 = !{ptr @_rtl92e_pci_probe._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @_rtl92e_pci_probe._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2492, i32 2}
!151 = !{ptr @_rtl92e_pci_probe._entry.70, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @_rtl92e_pci_probe._entry_ptr.72, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2494, i32 20}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2503, i32 2}
!157 = !{ptr @_rtl92e_pci_probe._entry.74, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @_rtl92e_pci_probe._entry_ptr.76, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2508, i32 2}
!161 = !{ptr @_rtl92e_pci_probe._entry.77, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @_rtl92e_pci_probe._entry_ptr.79, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @rtl8192_netdev_ops, !164, !"rtl8192_netdev_ops", i1 false, i1 false}
!164 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2384, i32 36}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 793, i32 2}
!167 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @_rtl92e_sta_down._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @_rtl92e_sta_down._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 816, i32 3}
!172 = !{ptr @_rtl92e_sta_down._entry.82, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @_rtl92e_sta_down._entry_ptr.84, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 832, i32 2}
!176 = !{ptr @_rtl92e_sta_down._entry.85, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @_rtl92e_sta_down._entry_ptr.87, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 275, i32 19}
!180 = !{ptr @_rtl92e_init.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1063, i32 2}
!182 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @_rtl92e_init.__key.90, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1065, i32 2}
!185 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1070, i32 19}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1075, i32 2}
!190 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @_rtl92e_init._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @_rtl92e_init._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1078, i32 19}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1723, i32 20}
!197 = !{ptr @__func__._rtl92e_tx, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1724, i32 8}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1754, i32 8}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 300, i32 2}
!203 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @_rtl92e_set_chan._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @_rtl92e_set_chan._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1609, i32 20}
!208 = !{ptr @__func__._rtl92e_hard_data_xmit, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1610, i32 8}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 499, i32 2}
!212 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @_rtl92e_qos_assoc_resp._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @_rtl92e_qos_assoc_resp._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @def_qos_parameters, !216, !"def_qos_parameters", i1 false, i1 false}
!216 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 359, i32 43}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 429, i32 4}
!219 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @_rtl92e_qos_handle_probe_response._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @_rtl92e_qos_handle_probe_response._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 438, i32 4}
!224 = !{ptr @_rtl92e_qos_handle_probe_response._entry.105, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @_rtl92e_qos_handle_probe_response._entry_ptr.107, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1098, i32 21}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 970, i32 7}
!230 = !{ptr @skb_queue_head_init.__key, !231, !"__key", i1 false, i1 false}
!231 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!232 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @_rtl92e_init_priv_lock.__key, !234, !"__key", i1 false, i1 false}
!234 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 982, i32 2}
!235 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @_rtl92e_init_priv_lock.__key.112, !237, !"__key", i1 false, i1 false}
!237 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 983, i32 2}
!238 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @_rtl92e_init_priv_lock.__key.114, !240, !"__key", i1 false, i1 false}
!240 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 984, i32 2}
!241 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @_rtl92e_init_priv_lock.__key.116, !243, !"__key", i1 false, i1 false}
!243 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 985, i32 2}
!244 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @_rtl92e_init_priv_lock.__key.118, !246, !"__key", i1 false, i1 false}
!246 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 986, i32 2}
!247 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @_rtl92e_init_priv_lock.__key.120, !249, !"__key", i1 false, i1 false}
!249 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 987, i32 2}
!250 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @_rtl92e_init_priv_lock.__key.122, !252, !"__key", i1 false, i1 false}
!252 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 988, i32 2}
!253 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @_rtl92e_init_priv_task.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 995, i32 2}
!256 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @_rtl92e_init_priv_task.__key.125, !258, !"__key", i1 false, i1 false}
!258 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 996, i32 2}
!259 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @_rtl92e_init_priv_task.__key.127, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 998, i32 2}
!262 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @_rtl92e_init_priv_task.__key.129, !261, !"__key", i1 false, i1 false}
!264 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @_rtl92e_init_priv_task.__key.131, !266, !"__key", i1 false, i1 false}
!266 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1000, i32 2}
!267 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @_rtl92e_init_priv_task.__key.133, !266, !"__key", i1 false, i1 false}
!269 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @_rtl92e_init_priv_task.__key.135, !271, !"__key", i1 false, i1 false}
!271 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1002, i32 2}
!272 = !{ptr @.str.136, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @_rtl92e_init_priv_task.__key.137, !271, !"__key", i1 false, i1 false}
!274 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @_rtl92e_init_priv_task.__key.139, !276, !"__key", i1 false, i1 false}
!276 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1004, i32 2}
!277 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @_rtl92e_init_priv_task.__key.141, !276, !"__key", i1 false, i1 false}
!279 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @_rtl92e_init_priv_task.__key.143, !281, !"__key", i1 false, i1 false}
!281 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1006, i32 2}
!282 = !{ptr @.str.144, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @_rtl92e_init_priv_task.__key.145, !284, !"__key", i1 false, i1 false}
!284 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1007, i32 2}
!285 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @_rtl92e_init_priv_task.__key.147, !284, !"__key", i1 false, i1 false}
!287 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @_rtl92e_init_priv_task.__key.149, !289, !"__key", i1 false, i1 false}
!289 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1009, i32 2}
!290 = !{ptr @.str.150, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @_rtl92e_init_priv_task.__key.151, !289, !"__key", i1 false, i1 false}
!292 = !{ptr @.str.152, !289, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @_rtl92e_watchdog_wq_cb.check_reset_cnt, !294, !"check_reset_cnt", i1 false, i1 false}
!294 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1369, i32 12}
!295 = !{ptr @.str.153, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1398, i32 5}
!297 = !{ptr @.str.154, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @_rtl92e_watchdog_wq_cb._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @_rtl92e_watchdog_wq_cb._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.156, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1436, i32 3}
!302 = !{ptr @_rtl92e_watchdog_wq_cb._entry.155, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @_rtl92e_watchdog_wq_cb._entry_ptr.157, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.158, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1462, i32 22}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1465, i32 9}
!308 = !{ptr @.str.161, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1503, i32 3}
!310 = !{ptr @_rtl92e_watchdog_wq_cb._entry.160, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @_rtl92e_watchdog_wq_cb._entry_ptr.162, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.164, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1513, i32 2}
!314 = !{ptr @_rtl92e_watchdog_wq_cb._entry.163, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @_rtl92e_watchdog_wq_cb._entry_ptr.165, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1193, i32 20}
!318 = !{ptr @__func__._rtl92e_if_check_reset, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1194, i32 8}
!320 = !{ptr @.str.167, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1144, i32 10}
!322 = !{ptr @__func__._rtl92e_tx_check_stuck, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1145, i32 10}
!324 = !{ptr @.str.168, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1153, i32 4}
!326 = !{ptr @_rtl92e_tx_check_stuck._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @_rtl92e_tx_check_stuck._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.169, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1167, i32 3}
!330 = !{ptr @.str.170, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @_rtl92e_rx_check_stuck._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @_rtl92e_rx_check_stuck._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.171, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1217, i32 3}
!335 = !{ptr @.str.172, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @_rtl92e_if_silent_reset._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @_rtl92e_if_silent_reset._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.173, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1238, i32 21}
!340 = !{ptr @.str.175, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1245, i32 3}
!342 = !{ptr @_rtl92e_if_silent_reset._entry.174, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.176, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.178, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1248, i32 3}
!346 = !{ptr @_rtl92e_if_silent_reset._entry.177, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.179, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.180, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1263, i32 21}
!350 = !{ptr @.str.181, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1271, i32 21}
!352 = !{ptr @.str.183, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1278, i32 3}
!354 = !{ptr @_rtl92e_if_silent_reset._entry.182, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.184, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.186, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1282, i32 3}
!358 = !{ptr @_rtl92e_if_silent_reset._entry.185, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.187, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.189, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1286, i32 3}
!362 = !{ptr @_rtl92e_if_silent_reset._entry.188, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.190, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.191, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1293, i32 22}
!366 = !{ptr @.str.193, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1336, i32 3}
!368 = !{ptr @_rtl92e_if_silent_reset._entry.192, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @_rtl92e_if_silent_reset._entry_ptr.194, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.195, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 320, i32 4}
!372 = !{ptr @.str.196, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @_rtl92e_update_cap._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @_rtl92e_update_cap._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.198, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 330, i32 4}
!377 = !{ptr @_rtl92e_update_cap._entry.197, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @_rtl92e_update_cap._entry_ptr.199, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.200, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 392, i32 2}
!381 = !{ptr @.str.201, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @_rtl92e_qos_activate._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @_rtl92e_qos_activate._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = distinct !{null, !385, !"__already_done", i1 false, i1 false}
!385 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!386 = !{ptr @.str.202, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.203, !385, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.204, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1025, i32 19}
!390 = !{ptr @__func__._rtl92e_get_channel_map, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1026, i32 7}
!392 = !{ptr @.str.205, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1032, i32 8}
!394 = !{ptr @.str.206, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1035, i32 2}
!396 = !{ptr @_rtl92e_get_channel_map._entry, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @_rtl92e_get_channel_map._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.207, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2282, i32 3}
!400 = !{ptr @.str.208, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @_rtl92e_irq._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @_rtl92e_irq._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @_rtl92e_irq._entry.209, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2287, i32 3}
!405 = !{ptr @_rtl92e_irq._entry_ptr.210, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.212, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2292, i32 3}
!408 = !{ptr @_rtl92e_irq._entry.211, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @_rtl92e_irq._entry_ptr.213, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.215, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2295, i32 3}
!412 = !{ptr @_rtl92e_irq._entry.214, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @_rtl92e_irq._entry_ptr.216, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.218, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2323, i32 3}
!416 = !{ptr @_rtl92e_irq._entry.217, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @_rtl92e_irq._entry_ptr.219, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.221, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2328, i32 3}
!420 = !{ptr @_rtl92e_irq._entry.220, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @_rtl92e_irq._entry_ptr.222, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.224, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2336, i32 3}
!424 = !{ptr @_rtl92e_irq._entry.223, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @_rtl92e_irq._entry_ptr.225, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.227, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2345, i32 3}
!428 = !{ptr @_rtl92e_irq._entry.226, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @_rtl92e_irq._entry_ptr.228, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.230, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2352, i32 3}
!432 = !{ptr @_rtl92e_irq._entry.229, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @_rtl92e_irq._entry_ptr.231, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.233, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2359, i32 3}
!436 = !{ptr @_rtl92e_irq._entry.232, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @_rtl92e_irq._entry_ptr.234, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.236, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2367, i32 3}
!440 = !{ptr @_rtl92e_irq._entry.235, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @_rtl92e_irq._entry_ptr.237, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.238, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1788, i32 21}
!444 = !{ptr @.str.239, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 1834, i32 20}
!446 = !{ptr @.str.240, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2548, i32 4}
!448 = !{ptr @.str.241, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @_rtl92e_pci_disconnect._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @_rtl92e_pci_disconnect._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.243, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 2563, i32 2}
!453 = !{ptr @_rtl92e_pci_disconnect._entry.242, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @_rtl92e_pci_disconnect._entry_ptr.244, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @rtl92e_pm_ops, !456, !"rtl92e_pm_ops", i1 false, i1 false}
!456 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 65, i32 8}
!457 = !{ptr @___asan_gen_.368, !92, !"__param_str_ifname", i1 false, i1 false}
!458 = !{ptr @.str.245, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 26, i32 23}
!460 = !{ptr @ifname, !461, !"ifname", i1 false, i1 false}
!461 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_core.c", i32 26, i32 14}
!462 = !{ptr @___asan_gen_.254, !95, !"__param_str_hwwep", i1 false, i1 false}
!463 = !{i32 1, !"wchar_size", i32 2}
!464 = !{i32 1, !"min_enum_size", i32 4}
!465 = !{i32 8, !"branch-target-enforcement", i32 0}
!466 = !{i32 8, !"sign-return-address", i32 0}
!467 = !{i32 8, !"sign-return-address-all", i32 0}
!468 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!469 = !{i32 7, !"uwtable", i32 1}
!470 = !{i32 7, !"frame-pointer", i32 2}
!471 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!472 = !{i64 5111036}
!473 = !{i64 2156788185}
!474 = !{i64 5111256}
!475 = !{i64 2156788731}
!476 = !{i64 5110418}
!477 = !{i64 2156789277}
!478 = !{i64 2156789504}
!479 = !{i64 5110641}
!480 = !{i64 2156790339}
!481 = !{i64 5110838}
!482 = !{i64 2156791292}
!483 = !{i64 5110218}
!484 = !{i8 0, i8 2}
!485 = !{!"auto-init"}
!486 = !{!"branch_weights", i32 2000, i32 1}
!487 = !{!"branch_weights", i32 1, i32 2000}
