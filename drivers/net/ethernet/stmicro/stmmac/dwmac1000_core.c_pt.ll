; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.169, %struct.anon.170 }
%struct.anon.169 = type { i32, i32, i32 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
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
%struct.dsa_port = type { %union.anon.145, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.145 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.134 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.134 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rgmii_adv = type { i32, i32, i32, i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.163, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.163 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.164, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%union.anon.164 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }

@dwmac1000_ops = dso_local constant { %struct.stmmac_ops, [52 x i8] } { %struct.stmmac_ops { ptr @dwmac1000_core_init, ptr @stmmac_set_mac, ptr @dwmac1000_rx_ipc_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac1000_dump_regs, ptr @dwmac1000_irq_status, ptr null, ptr @dwmac1000_set_filter, ptr @dwmac1000_flow_ctrl, ptr @dwmac1000_pmt, ptr @dwmac1000_set_umac_addr, ptr @dwmac1000_get_umac_addr, ptr @dwmac1000_set_eee_mode, ptr @dwmac1000_reset_eee_mode, ptr null, ptr @dwmac1000_set_eee_timer, ptr @dwmac1000_set_eee_pls, ptr @dwmac1000_debug, ptr @dwmac1000_ctrl_ane, ptr @dwmac1000_rane, ptr @dwmac1000_get_adv_lp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwmac1000_set_mac_loopback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dwmac1000_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 539, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09DWMAC1000\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwmac1000_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwmac1000_setup._entry_ptr = internal global ptr @dwmac1000_setup._entry, section ".printk_index", align 4
@dwmac_pcs_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016stmmac_pcs: ANE process completed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwmac_pcs_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h\00", [47 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr = internal global ptr @dwmac_pcs_isr._entry, section ".printk_index", align 4
@dwmac_pcs_isr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016stmmac_pcs: Link Up\0A\00", [41 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr.10 = internal global ptr @dwmac_pcs_isr._entry.8, section ".printk_index", align 4
@dwmac_pcs_isr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016stmmac_pcs: Link Down\0A\00", [39 x i8] zeroinitializer }, align 32
@dwmac_pcs_isr._entry_ptr.13 = internal global ptr @dwmac_pcs_isr._entry.11, section ".printk_index", align 4
@dwmac1000_rgsmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Link is Up - %d/%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwmac1000_rgsmii\00", [47 x i8] zeroinitializer }, align 32
@dwmac1000_rgsmii._entry_ptr = internal global ptr @dwmac1000_rgsmii._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@dwmac1000_rgsmii._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016Link is Down\0A\00", [16 x i8] zeroinitializer }, align 32
@dwmac1000_rgsmii._entry_ptr.20 = internal global ptr @dwmac1000_rgsmii._entry.18, section ".printk_index", align 4
@dwmac1000_set_filter.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwmac1000_set_filter\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: # mcasts %d, # unicast %d\0A\00", [33 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@dwmac1000_set_mchash.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwmac1000_set_mchash\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"STMMAC: err in setting multicast filter\0A\00", [55 x i8] zeroinitializer }, align 32
@dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwmac1000_flow_ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GMAC Flow-Control:\0A\00", [44 x i8] zeroinitializer }, align 32
@dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09Receive Flow-Control ON\0A\00", [38 x i8] zeroinitializer }, align 32
@dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09Transmit Flow-Control ON\0A\00", [37 x i8] zeroinitializer }, align 32
@dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.26, ptr @.str.2, ptr @.str.30, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09duplex mode: PAUSE %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dwmac1000_pmt.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwmac1000_pmt\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GMAC: WOL Magic frame\0A\00", [41 x i8] zeroinitializer }, align 32
@dwmac1000_pmt.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GMAC: WOL on global unicast\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 8]
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"dwmac1000_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 513, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 539, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 65, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 71, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 298, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 302, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 158, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 141, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 238, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 240, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 244, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 249, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 262, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [56 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 266, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @dwmac1000_rgsmii._entry, ptr @dwmac1000_rgsmii._entry.18, ptr @dwmac1000_rgsmii._entry_ptr, ptr @dwmac1000_rgsmii._entry_ptr.20, ptr @dwmac1000_setup._entry, ptr @dwmac1000_setup._entry_ptr, ptr @dwmac_pcs_isr._entry, ptr @dwmac_pcs_isr._entry.11, ptr @dwmac_pcs_isr._entry.8, ptr @dwmac_pcs_isr._entry_ptr, ptr @dwmac_pcs_isr._entry_ptr.10, ptr @dwmac_pcs_isr._entry_ptr.13, ptr @dwmac1000_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_pcs_isr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_rgsmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac1000_rgsmii._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_core_init(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %mtu3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu3, align 4
  %5 = or i32 %2, -2139070208
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %7 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsa_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false_crit_edge, label %netdev_uses_dsa.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

netdev_uses_dsa.exit:                             ; preds = %entry
  %rcv.i = getelementptr inbounds %struct.dsa_port, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %rcv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcv.i, align 4
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %netdev_uses_dsa.exit.lor.lhs.false_crit_edge, label %netdev_uses_dsa.exit.if.then_crit_edge

netdev_uses_dsa.exit.if.then_crit_edge:           ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

netdev_uses_dsa.exit.lor.lhs.false_crit_edge:     ; preds = %netdev_uses_dsa.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %netdev_uses_dsa.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %plat = getelementptr i8, ptr %dev, i32 17408
  %11 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat, align 128
  %enh_desc = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %enh_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enh_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %netdev_uses_dsa.exit.if.then_crit_edge
  %and = and i32 %6, -129
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %value.0 = phi i32 [ %and, %if.then ], [ %6, %lor.lhs.false.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %4)
  %cmp = icmp sgt i32 %4, 1500
  %or6 = or i32 %value.0, 134217728
  %spec.select = select i1 %cmp, i32 %or6, i32 %value.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %4)
  %cmp8 = icmp sgt i32 %4, 2000
  %or10 = or i32 %spec.select, 1048576
  %value.2 = select i1 %cmp8, i32 %or10, i32 %spec.select
  %ps = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 17
  %15 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %if.end.do.body_crit_edge, label %if.then13

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then13:                                        ; preds = %if.end
  %or14 = or i32 %value.2, 8
  %link = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %link, align 4
  %neg = xor i32 %18, -1
  %and15 = and i32 %or14, %neg
  %19 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.then13.do.body_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb19
    i32 10, label %sw.bb22
  ]

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 3
  br label %do.body.sink.split

sw.bb19:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 2
  br label %do.body.sink.split

sw.bb22:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 9, i32 1
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %sw.bb22, %sw.bb19, %sw.bb
  %speed10.sink = phi ptr [ %speed10, %sw.bb22 ], [ %speed100, %sw.bb19 ], [ %speed1000, %sw.bb ]
  %20 = ptrtoint ptr %speed10.sink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %speed10.sink, align 4
  %or24 = or i32 %21, %and15
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then13.do.body_crit_edge, %if.end.do.body_crit_edge
  %value.3 = phi i32 [ %and15, %if.then13.do.body_crit_edge ], [ %value.2, %if.end.do.body_crit_edge ], [ %or24, %do.body.sink.split ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %value.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %22) #6, !srcloc !76
  %pcs = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 15
  %23 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not = icmp eq i32 %24, 0
  %spec.select63 = select i1 %tobool27.not, i32 519, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select63)
  %add.ptr34 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %25) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %add.ptr38 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #6, !srcloc !76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac1000_rx_ipc_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %rx_csum = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 14
  %3 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_csum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = and i32 %2, -262145
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 1024
  %value.0 = or i32 %masksel, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #6, !srcloc !76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %9 = lshr i32 %8, 18
  %.lobit = and i32 %9, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_dump_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %reg_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.05, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 55
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwmac1000_irq_status(ptr nocapture noundef readonly %hw, ptr nocapture noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %add.ptr4 = getelementptr i8, ptr %1, i32 60
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and8 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_tx_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 48
  %7 = ptrtoint ptr %mmc_tx_irq_n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmc_tx_irq_n, align 64
  %inc = add i32 %8, 1
  store i32 %inc, ptr %mmc_tx_irq_n, align 64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then13, !prof !85

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_rx_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 49
  %9 = ptrtoint ptr %mmc_rx_irq_n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmc_rx_irq_n, align 4
  %inc14 = add i32 %10, 1
  store i32 %inc14, ptr %mmc_rx_irq_n, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %and16 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %if.then24, !prof !85

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %mmc_rx_csum_offload_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 50
  %11 = ptrtoint ptr %mmc_rx_csum_offload_irq_n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmc_rx_csum_offload_irq_n, align 8
  %inc25 = add i32 %12, 1
  store i32 %inc25, ptr %mmc_rx_csum_offload_irq_n, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end15.if.end26_crit_edge
  %and27 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %if.then35, !prof !85

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %1, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %irq_receive_pmt_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 47
  %14 = ptrtoint ptr %irq_receive_pmt_irq_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_receive_pmt_irq_n, align 4
  %inc42 = add i32 %15, 1
  store i32 %inc42, ptr %irq_receive_pmt_irq_n, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end26.if.end43_crit_edge
  %and44 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end73_crit_edge, label %if.then46

if.end43.if.end73_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then46:                                        ; preds = %if.end43
  %add.ptr49 = getelementptr i8, ptr %1, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #6, !srcloc !73
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %and53 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then46.if.end57_crit_edge, label %if.then55

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %irq_tx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 51
  %18 = ptrtoint ptr %irq_tx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_tx_path_in_lpi_mode_n, align 4
  %inc56 = add i32 %19, 1
  store i32 %inc56, ptr %irq_tx_path_in_lpi_mode_n, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then46.if.end57_crit_edge
  %and58 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %irq_tx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 52
  %20 = ptrtoint ptr %irq_tx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  %inc61 = add i32 %21, 1
  store i32 %inc61, ptr %irq_tx_path_exit_lpi_mode_n, align 16
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %and63 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.then65

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %irq_rx_path_in_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 53
  %22 = ptrtoint ptr %irq_rx_path_in_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_rx_path_in_lpi_mode_n, align 4
  %inc66 = add i32 %23, 1
  store i32 %inc66, ptr %irq_rx_path_in_lpi_mode_n, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %and68 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end73_crit_edge, label %if.then70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %irq_rx_path_exit_lpi_mode_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 54
  %24 = ptrtoint ptr %irq_rx_path_exit_lpi_mode_n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  %inc71 = add i32 %25, 1
  store i32 %inc71, ptr %irq_rx_path_exit_lpi_mode_n, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67.if.end73_crit_edge, %if.end43.if.end73_crit_edge
  %ret.0 = phi i32 [ %17, %if.then70 ], [ %17, %if.end67.if.end73_crit_edge ], [ 0, %if.end43.if.end73_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 196
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end73.if.end7.i_crit_edge, label %if.then.i

if.end73.if.end7.i_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end73
  %irq_pcs_ane_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 81
  %28 = ptrtoint ptr %irq_pcs_ane_n.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_pcs_ane_n.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %irq_pcs_ane_n.i, align 4
  %and2.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end7.i_crit_edge, label %do.end.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.then.i.if.end7.i_crit_edge, %if.end73.if.end7.i_crit_edge
  %and8.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.dwmac_pcs_isr.exit_crit_edge, label %if.then10.i

if.end7.i.dwmac_pcs_isr.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac_pcs_isr.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_pcs_link_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 82
  %30 = ptrtoint ptr %irq_pcs_link_n.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_pcs_link_n.i, align 8
  %inc11.i = add i32 %31, 1
  store i32 %inc11.i, ptr %irq_pcs_link_n.i, align 8
  %and12.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %.str.12..str.9.i = select i1 %tobool13.not.i, ptr @.str.12, ptr @.str.9
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12..str.9.i) #9
  br label %dwmac_pcs_isr.exit

dwmac_pcs_isr.exit:                               ; preds = %if.then10.i, %if.end7.i.dwmac_pcs_isr.exit_crit_edge
  %and74 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %dwmac_pcs_isr.exit.if.end77_crit_edge, label %if.then76

dwmac_pcs_isr.exit.if.end77_crit_edge:            ; preds = %dwmac_pcs_isr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then76:                                        ; preds = %dwmac_pcs_isr.exit
  %add.ptr.i103 = getelementptr i8, ptr %1, i32 216
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #6, !srcloc !73
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %irq_rgmii_n.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 83
  %34 = ptrtoint ptr %irq_rgmii_n.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_rgmii_n.i, align 4
  %inc.i104 = add i32 %35, 1
  store i32 %inc.i104, ptr %irq_rgmii_n.i, align 4
  %and.i105 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  %pcs_link17.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 84
  br i1 %tobool.not.i106, label %if.else16.i, label %if.then.i108

if.then.i108:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %pcs_link17.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %pcs_link17.i, align 16
  %and2.i107 = lshr i32 %33, 1
  %shr.i = and i32 %and2.i107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %switch.selectcmp.i = icmp eq i32 %shr.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %switch.selectcmp35.i = icmp eq i32 %shr.i, 2
  %switch.select36.i = select i1 %switch.selectcmp35.i, i32 1000, i32 %switch.select.i
  %pcs_speed6.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 86
  %37 = ptrtoint ptr %pcs_speed6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %switch.select36.i, ptr %pcs_speed6.i, align 8
  %and10.i = and i32 %33, 1
  %pcs_duplex.i = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 85
  %38 = ptrtoint ptr %pcs_duplex.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and10.i, ptr %pcs_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool14.not.i = icmp eq i32 %and10.i, 0
  %cond.i = select i1 %tobool14.not.i, ptr @.str.17, ptr @.str.16
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %switch.select36.i, ptr noundef nonnull %cond.i) #9
  br label %if.end77

if.else16.i:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %pcs_link17.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pcs_link17.i, align 16
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %if.end77

if.end77:                                         ; preds = %if.else16.i, %if.then.i108, %dwmac_pcs_isr.exit.if.end77_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_filter(ptr nocapture noundef readonly %hw, ptr noundef readonly %dev) #0 align 64 {
entry:
  %mc_filter = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = inttoptr i32 %1 to ptr
  %unicast_filter_entries = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 12
  %3 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %unicast_filter_entries, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mc_filter) #6
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 13
  %5 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcast_bits_log2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_set_filter.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_set_filter, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  %count3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %9 = ptrtoint ptr %count3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_set_filter.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %8, i32 noundef %10) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %11 = call ptr @memset(ptr %mc_filter, i32 0, i32 32)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %do.end.if.end66_crit_edge

do.end.if.end66_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else:                                          ; preds = %do.end
  %and7 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else10:                                        ; preds = %if.else
  %mc11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %count12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp13 = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.else10.if.end66_crit_edge, label %if.else15

if.else10.if.end66_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else15:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.else15.if.end66_crit_edge, label %for.cond.preheader

if.else15.if.end66_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

for.cond.preheader:                               ; preds = %if.else15
  %16 = ptrtoint ptr %mc11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0205 = load ptr, ptr %mc11, align 4
  %cmp25.not206 = icmp eq ptr %ha.0205, %mc11
  br i1 %cmp25.not206, label %for.cond.preheader.if.end66_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end66_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = sub i32 32, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.body.lr.ph
  %ha.0207 = phi ptr [ %ha.0205, %for.body.lr.ph ], [ %ha.0, %cond.end.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0207, i32 0, i32 2
  %call29 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #10
  %neg = xor i32 %call29, -1
  %17 = lshr i32 %neg, 8
  %conv4.i.i = and i32 %17, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %18 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv6.i.i, 16
  %21 = and i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %23 to i32
  %24 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %20, %24
  %sum.shift.i = lshr i32 %neg, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %25 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %26 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %neg, 16
  %27 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %29 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  %shr53 = lshr i32 %or.i, %sub
  %and54 = and i32 %shr53, 31
  %shl55 = shl nuw i32 1, %and54
  %shr56 = ashr i32 %shr53, 5
  %arrayidx = getelementptr [8 x i32], ptr %mc_filter, i32 0, i32 %shr56
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %or57 = or i32 %shl55, %31
  store i32 %or57, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %ha.0207 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.0 = load ptr, ptr %ha.0207, align 4
  %cmp25.not = icmp eq ptr %ha.0, %mc11
  br i1 %cmp25.not, label %cond.end.if.end66_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end.if.end66_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %cond.end.if.end66_crit_edge, %for.cond.preheader.if.end66_crit_edge, %if.else15.if.end66_crit_edge, %if.else10.if.end66_crit_edge, %if.else.if.end66_crit_edge, %do.end.if.end66_crit_edge
  %value.0 = phi i32 [ 1024, %if.else15.if.end66_crit_edge ], [ 1153, %do.end.if.end66_crit_edge ], [ 1040, %if.else.if.end66_crit_edge ], [ 1040, %if.else10.if.end66_crit_edge ], [ 1028, %for.cond.preheader.if.end66_crit_edge ], [ 1028, %cond.end.if.end66_crit_edge ]
  call fastcc void @dwmac1000_set_mchash(ptr noundef %2, ptr noundef nonnull %mc_filter, i32 noundef %6)
  %uc69 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %33 = ptrtoint ptr %count70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %4)
  %cmp71 = icmp ugt i32 %34, %4
  br i1 %cmp71, label %if.then72, label %for.cond82.preheader

for.cond82.preheader:                             ; preds = %if.end66
  %35 = ptrtoint ptr %uc69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %ha75.0208 = load ptr, ptr %uc69, align 4
  %cmp86.not209 = icmp eq ptr %ha75.0208, %uc69
  br i1 %cmp86.not209, label %for.cond82.preheader.while.cond.preheader_crit_edge, label %for.cond82.preheader.for.body89_crit_edge

for.cond82.preheader.for.body89_crit_edge:        ; preds = %for.cond82.preheader
  br label %for.body89

for.cond82.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %or73 = or i32 %value.0, 1
  br label %do.body148

while.cond.preheader:                             ; preds = %for.body89.while.cond.preheader_crit_edge, %for.cond82.preheader.while.cond.preheader_crit_edge
  %reg.0.lcssa = phi i32 [ 1, %for.cond82.preheader.while.cond.preheader_crit_edge ], [ %inc, %for.body89.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %reg.0.lcssa, i32 %4)
  %cmp117212 = icmp ult i32 %reg.0.lcssa, %4
  br i1 %cmp117212, label %while.cond.preheader.do.body118_crit_edge, label %while.cond.preheader.do.body148_crit_edge

while.cond.preheader.do.body148_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body148

while.cond.preheader.do.body118_crit_edge:        ; preds = %while.cond.preheader
  br label %do.body118

for.body89:                                       ; preds = %for.body89.for.body89_crit_edge, %for.cond82.preheader.for.body89_crit_edge
  %ha75.0211 = phi ptr [ %ha75.0, %for.body89.for.body89_crit_edge ], [ %ha75.0208, %for.cond82.preheader.for.body89_crit_edge ]
  %reg.0210 = phi i32 [ %inc, %for.body89.for.body89_crit_edge ], [ 1, %for.cond82.preheader.for.body89_crit_edge ]
  %addr90 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha75.0211, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg.0210)
  %cmp92 = icmp sgt i32 %reg.0210, 15
  %sub94 = shl i32 %reg.0210, 3
  %cond99.v = select i1 %cmp92, i32 1920, i32 64
  %cond99 = add i32 %cond99.v, %sub94
  %cond109.v = select i1 %cmp92, i32 1924, i32 68
  %cond109 = add i32 %cond109.v, %sub94
  tail call void @stmmac_set_mac_addr(ptr noundef %2, ptr noundef %addr90, i32 noundef %cond99, i32 noundef %cond109) #6
  %inc = add i32 %reg.0210, 1
  %36 = ptrtoint ptr %ha75.0211 to i32
  call void @__asan_load4_noabort(i32 %36)
  %ha75.0 = load ptr, ptr %ha75.0211, align 4
  %cmp86.not = icmp eq ptr %ha75.0, %uc69
  br i1 %cmp86.not, label %for.body89.while.cond.preheader_crit_edge, label %for.body89.for.body89_crit_edge

for.body89.for.body89_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89

for.body89.while.cond.preheader_crit_edge:        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

do.body118:                                       ; preds = %do.body118.do.body118_crit_edge, %while.cond.preheader.do.body118_crit_edge
  %reg.1213 = phi i32 [ %inc146, %do.body118.do.body118_crit_edge ], [ %reg.0.lcssa, %while.cond.preheader.do.body118_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg.1213)
  %cmp121 = icmp sgt i32 %reg.1213, 15
  %sub123 = shl i32 %reg.1213, 3
  %cond130.v = select i1 %cmp121, i32 1920, i32 64
  %cond130 = add i32 %cond130.v, %sub123
  %add.ptr131 = getelementptr i8, ptr %2, i32 %cond130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %cond144.v = select i1 %cmp121, i32 1924, i32 68
  %cond144 = add i32 %cond144.v, %sub123
  %add.ptr145 = getelementptr i8, ptr %2, i32 %cond144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 0) #6, !srcloc !76
  %inc146 = add i32 %reg.1213, 1
  %exitcond.not = icmp eq i32 %inc146, %4
  br i1 %exitcond.not, label %do.body118.do.body148_crit_edge, label %do.body118.do.body118_crit_edge

do.body118.do.body118_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

do.body118.do.body148_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body148

do.body148:                                       ; preds = %do.body118.do.body148_crit_edge, %while.cond.preheader.do.body148_crit_edge, %if.then72
  %value.1 = phi i32 [ %or73, %if.then72 ], [ %value.0, %while.cond.preheader.do.body148_crit_edge ], [ %value.0, %do.body118.do.body148_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  %add.ptr151 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %37) #6, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mc_filter) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_flow_ctrl(ptr nocapture noundef readonly %hw, i32 noundef %duplex, i32 noundef %fc, i32 noundef %pause_time, i32 noundef %tx_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_flow_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.27) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end21_crit_edge, label %do.body5

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_flow_ctrl, %if.then17)) #6
          to label %if.end21 [label %if.then17], !srcloc !90

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.28) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.body5, %do.end.if.end21_crit_edge
  %flow.0 = phi i32 [ 8, %do.end.if.end21_crit_edge ], [ 12, %if.then17 ], [ 12, %do.body5 ]
  %and22 = and i32 %fc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end42_crit_edge, label %do.body25

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body25:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_flow_ctrl, %if.then37)) #6
          to label %do.end40 [label %if.then37], !srcloc !90

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.29) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25
  %or41 = or i32 %flow.0, 2
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.end21.if.end42_crit_edge
  %flow.1 = phi i32 [ %or41, %do.end40 ], [ %flow.0, %if.end21.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %tobool43.not = icmp eq i32 %duplex, 0
  br i1 %tobool43.not, label %if.end42.do.body63_crit_edge, label %do.body45

if.end42.do.body63_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

do.body45:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_flow_ctrl, %if.then57)) #6
          to label %do.end60 [label %if.then57], !srcloc !90

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.30, i32 noundef %pause_time) #6
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45
  %shl = shl i32 %pause_time, 16
  %or61 = or i32 %flow.1, %shl
  br label %do.body63

do.body63:                                        ; preds = %do.end60, %if.end42.do.body63_crit_edge
  %flow.2 = phi i32 [ %or61, %do.end60 ], [ %flow.1, %if.end42.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %flow.2)
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_pmt(ptr nocapture noundef readonly %hw, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_pmt.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_pmt, %if.then4)) #6
          to label %if.end5 [label %if.then4], !srcloc !90

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_pmt.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.32) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %entry.if.end5_crit_edge
  %pmt.0 = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 3, %if.then4 ], [ 3, %do.body ]
  %and6 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.do.body27_crit_edge, label %do.body9

if.end5.do.body27_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

do.body9:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_pmt.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_pmt, %if.then21)) #6
          to label %do.end24 [label %if.then21], !srcloc !90

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_pmt.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.33) #6
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %or25 = or i32 %pmt.0, 517
  br label %do.body27

do.body27:                                        ; preds = %do.end24, %if.end5.do.body27_crit_edge
  %pmt.1 = phi i32 [ %or25, %do.end24 ], [ %pmt.0, %if.end5.do.body27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %pmt.1)
  %add.ptr = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg_n)
  %cmp = icmp ugt i32 %reg_n, 15
  %sub = shl i32 %reg_n, 3
  %cond.v = select i1 %cmp, i32 1920, i32 64
  %cond = add i32 %cond.v, %sub
  %cond12.v = select i1 %cmp, i32 1924, i32 68
  %cond12 = add i32 %cond12.v, %sub
  tail call void @stmmac_set_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %cond, i32 noundef %cond12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_get_umac_addr(ptr nocapture noundef readonly %hw, ptr noundef %addr, i32 noundef %reg_n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg_n)
  %cmp = icmp ugt i32 %reg_n, 15
  %sub = shl i32 %reg_n, 3
  %cond.v = select i1 %cmp, i32 1920, i32 64
  %cond = add i32 %cond.v, %sub
  %cond12.v = select i1 %cmp, i32 1924, i32 68
  %cond12 = add i32 %cond12.v, %sub
  tail call void @stmmac_get_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %cond, i32 noundef %cond12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %en_tx_lpi_clockgating) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %3 = or i32 %2, 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_reset_eee_mode(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %3 = and i32 %2, -2305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_timer(ptr nocapture noundef readonly %hw, i32 noundef %ls, i32 noundef %tw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %and = and i32 %tw, 65535
  %and1 = shl i32 %ls, 16
  %shl = and i32 %and1, 134152192
  %or = or i32 %and, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_eee_pls(ptr nocapture noundef readonly %hw, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %tobool.not = icmp eq i32 %link, 0
  %3 = and i32 %2, -513
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 131072
  %value.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_debug(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %rx_queues, i32 noundef %tx_queues) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 36
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !73
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %and = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_tx_status_fifo_full = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 87
  %2 = ptrtoint ptr %mtl_tx_status_fifo_full to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtl_tx_status_fifo_full, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %mtl_tx_status_fifo_full, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_tx_fifo_not_empty = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 88
  %4 = ptrtoint ptr %mtl_tx_fifo_not_empty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtl_tx_fifo_not_empty, align 32
  %inc5 = add i32 %5, 1
  store i32 %inc5, ptr %mtl_tx_fifo_not_empty, align 32
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %mmtl_fifo_ctrl = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 89
  %6 = ptrtoint ptr %mmtl_fifo_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmtl_fifo_ctrl, align 4
  %inc10 = add i32 %7, 1
  store i32 %inc10, ptr %mmtl_fifo_ctrl, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %and12 = lshr i32 %1, 20
  %8 = and i32 %and12, 3
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %8, label %if.end11.unreachabledefault [
    i32 0, label %if.end11.if.end30_crit_edge
    i32 3, label %if.then16
    i32 2, label %if.then19
    i32 1, label %if.then23
  ]

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_tx_fifo_read_ctrl_write = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 90
  %10 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtl_tx_fifo_read_ctrl_write, align 8
  %inc17 = add i32 %11, 1
  store i32 %inc17, ptr %mtl_tx_fifo_read_ctrl_write, align 8
  br label %if.end30

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_tx_fifo_read_ctrl_wait = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 91
  %12 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtl_tx_fifo_read_ctrl_wait, align 4
  %inc20 = add i32 %13, 1
  store i32 %inc20, ptr %mtl_tx_fifo_read_ctrl_wait, align 4
  br label %if.end30

if.then23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_tx_fifo_read_ctrl_read = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 92
  %14 = ptrtoint ptr %mtl_tx_fifo_read_ctrl_read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtl_tx_fifo_read_ctrl_read, align 16
  %inc24 = add i32 %15, 1
  store i32 %inc24, ptr %mtl_tx_fifo_read_ctrl_read, align 16
  br label %if.end30

if.end11.unreachabledefault:                      ; preds = %if.end11
  unreachable

if.end30:                                         ; preds = %if.then23, %if.then19, %if.then16, %if.end11.if.end30_crit_edge
  %and31 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_in_pause = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 94
  %16 = ptrtoint ptr %mac_tx_in_pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_tx_in_pause, align 8
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %mac_tx_in_pause, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %and36 = lshr i32 %1, 17
  %18 = and i32 %and36, 3
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %18, label %if.end35.unreachabledefault [
    i32 0, label %if.end35.if.end57_crit_edge
    i32 3, label %if.then42
    i32 2, label %if.then46
    i32 1, label %if.then50
  ]

if.end35.if.end57_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_xfer = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 95
  %20 = ptrtoint ptr %mac_tx_frame_ctrl_xfer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_tx_frame_ctrl_xfer, align 4
  %inc43 = add i32 %21, 1
  store i32 %inc43, ptr %mac_tx_frame_ctrl_xfer, align 4
  br label %if.end57

if.then46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_pause = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 98
  %22 = ptrtoint ptr %mac_tx_frame_ctrl_pause to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_tx_frame_ctrl_pause, align 8
  %inc47 = add i32 %23, 1
  store i32 %inc47, ptr %mac_tx_frame_ctrl_pause, align 8
  br label %if.end57

if.then50:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %mac_tx_frame_ctrl_wait = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 97
  %24 = ptrtoint ptr %mac_tx_frame_ctrl_wait to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_tx_frame_ctrl_wait, align 4
  %inc51 = add i32 %25, 1
  store i32 %inc51, ptr %mac_tx_frame_ctrl_wait, align 4
  br label %if.end57

if.end35.unreachabledefault:                      ; preds = %if.end35
  unreachable

if.end57:                                         ; preds = %if.then50, %if.then46, %if.then42, %if.end35.if.end57_crit_edge
  %and58 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %mac_gmii_tx_proto_engine = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 99
  %26 = ptrtoint ptr %mac_gmii_tx_proto_engine to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_gmii_tx_proto_engine, align 4
  %inc61 = add i32 %27, 1
  store i32 %inc61, ptr %mac_gmii_tx_proto_engine, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %and63 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end84_crit_edge, label %if.else79

if.end62.if.end84_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.else79:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_rx_fifo_fill_level_empty = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 103
  %28 = ptrtoint ptr %mtl_rx_fifo_fill_level_empty to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtl_rx_fifo_fill_level_empty, align 4
  %inc80 = add i32 %29, 1
  store i32 %inc80, ptr %mtl_rx_fifo_fill_level_empty, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.end62.if.end84_crit_edge
  %and85 = lshr i32 %1, 5
  %30 = and i32 %and85, 3
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %30, label %if.end84.unreachabledefault [
    i32 0, label %if.end84.if.end106_crit_edge
    i32 3, label %if.then91
    i32 2, label %if.then95
    i32 1, label %if.then99
  ]

if.end84.if.end106_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then91:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_rx_fifo_read_ctrl_flush = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 104
  %32 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_flush to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtl_rx_fifo_read_ctrl_flush, align 32
  %inc92 = add i32 %33, 1
  store i32 %inc92, ptr %mtl_rx_fifo_read_ctrl_flush, align 32
  br label %if.end106

if.then95:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_rx_fifo_read_ctrl_read_data = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 105
  %34 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_read_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mtl_rx_fifo_read_ctrl_read_data, align 4
  %inc96 = add i32 %35, 1
  store i32 %inc96, ptr %mtl_rx_fifo_read_ctrl_read_data, align 4
  br label %if.end106

if.then99:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_rx_fifo_read_ctrl_status = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 106
  %36 = ptrtoint ptr %mtl_rx_fifo_read_ctrl_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mtl_rx_fifo_read_ctrl_status, align 8
  %inc100 = add i32 %37, 1
  store i32 %inc100, ptr %mtl_rx_fifo_read_ctrl_status, align 8
  br label %if.end106

if.end84.unreachabledefault:                      ; preds = %if.end84
  unreachable

if.end106:                                        ; preds = %if.then99, %if.then95, %if.then91, %if.end84.if.end106_crit_edge
  %and107 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end111_crit_edge, label %if.then109

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %mtl_rx_fifo_ctrl_active = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 108
  %38 = ptrtoint ptr %mtl_rx_fifo_ctrl_active to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtl_rx_fifo_ctrl_active, align 16
  %inc110 = add i32 %39, 1
  store i32 %inc110, ptr %mtl_rx_fifo_ctrl_active, align 16
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end106.if.end111_crit_edge
  %and112 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end117_crit_edge, label %if.then114

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %shr116 = lshr exact i32 %and112, 1
  %mac_rx_frame_ctrl_fifo = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 109
  %40 = ptrtoint ptr %mac_rx_frame_ctrl_fifo to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr116, ptr %mac_rx_frame_ctrl_fifo, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end111.if.end117_crit_edge
  %and118 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end122_crit_edge, label %if.then120

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %mac_gmii_rx_proto_engine = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 110
  %41 = ptrtoint ptr %mac_gmii_rx_proto_engine to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mac_gmii_rx_proto_engine, align 8
  %inc121 = add i32 %42, 1
  store i32 %inc121, ptr %mac_gmii_rx_proto_engine, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117.if.end122_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_ctrl_ane(ptr noundef %ioaddr, i1 noundef zeroext %ane, i1 noundef zeroext %srgmi_ral, i1 noundef zeroext %loopback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 192
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %or.i = or i32 %1, 4608
  %spec.select.i = select i1 %ane, i32 %or.i, i32 %1
  %or6.i = or i32 %spec.select.i, 262144
  %value.1.i = select i1 %srgmi_ral, i32 %or6.i, i32 %spec.select.i
  %or10.i = or i32 %value.1.i, 16384
  %value.2.i = select i1 %loopback, i32 %or10.i, i32 %value.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_rane(ptr noundef %ioaddr, i1 noundef zeroext %restart) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 192
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %or.i = or i32 %1, 512
  %spec.select.i = select i1 %restart, i32 %or.i, i32 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_get_adv_lp(ptr noundef %ioaddr, ptr nocapture noundef writeonly %adv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 200
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %duplex.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 1
  %2 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %duplex.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and7.i = lshr i32 %1, 7
  %shr.i = and i32 %and7.i, 3
  %3 = ptrtoint ptr %adv to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr.i, ptr %adv, align 4
  %add.ptr11.i = getelementptr i8, ptr %ioaddr, i32 204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %and15.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then17.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %lp_duplex.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 3
  %6 = ptrtoint ptr %lp_duplex.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lp_duplex.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end.i.if.end18.i_crit_edge
  %and19.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.dwmac_get_adv_lp.exit_crit_edge, label %if.then21.i

if.end18.i.dwmac_get_adv_lp.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dwmac_get_adv_lp.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %lp_duplex22.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 3
  %7 = ptrtoint ptr %lp_duplex22.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %lp_duplex22.i, align 4
  br label %dwmac_get_adv_lp.exit

dwmac_get_adv_lp.exit:                            ; preds = %if.then21.i, %if.end18.i.dwmac_get_adv_lp.exit_crit_edge
  %and24.i = lshr i32 %5, 7
  %shr25.i = and i32 %and24.i, 3
  %lp_pause.i = getelementptr inbounds %struct.rgmii_adv, ptr %adv, i32 0, i32 2
  %8 = ptrtoint ptr %lp_pause.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr25.i, ptr %lp_pause.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac1000_set_mac_loopback(ptr noundef %ioaddr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %1 = and i32 %0, -1048577
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 4096, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #6, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac1000_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str) #9
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags, align 16
  %or = or i64 %7, 4096
  store i64 %or, ptr %priv_flags, align 16
  %ioaddr = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 13
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 32
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pcsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pcsr, align 4
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %11 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat, align 128
  %multicast_filter_bins = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %multicast_filter_bins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %multicast_filter_bins, align 4
  %multicast_filter_bins1 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %multicast_filter_bins1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %multicast_filter_bins1, align 4
  %16 = load ptr, ptr %plat, align 128
  %unicast_filter_entries = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %unicast_filter_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unicast_filter_entries, align 4
  %unicast_filter_entries3 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %unicast_filter_entries3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %unicast_filter_entries3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #6
  %sub.i = xor i32 %20, 31
  %storemerge = select i1 %tobool.not, i32 0, i32 %sub.i
  %mcast_bits_log2 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %mcast_bits_log2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %mcast_bits_log2, align 4
  %link = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9
  %duplex = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2048, ptr %duplex, align 4
  %speed10 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32768, ptr %speed10, align 4
  %speed100 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 49152, ptr %speed100, align 4
  %speed1000 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %speed1000 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %speed1000, align 4
  %26 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 49152, ptr %link, align 4
  %mii = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %mii, align 4
  %data = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %data, align 4
  %addr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %addr_shift to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 11, ptr %addr_shift, align 4
  %addr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 63488, ptr %addr_mask, align 4
  %reg_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %reg_shift, align 4
  %reg_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 5
  %32 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1984, ptr %reg_mask, align 4
  %clk_csr_shift = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 6
  %33 = ptrtoint ptr %clk_csr_shift to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %clk_csr_shift, align 4
  %clk_csr_mask = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 8, i32 7
  %34 = ptrtoint ptr %clk_csr_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 60, ptr %clk_csr_mask, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwmac1000_set_mchash(ptr noundef %ioaddr, ptr nocapture noundef readonly %mcfilterbits, i32 noundef %mcbitslog2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mcbitslog2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mcbitslog2, label %do.body8 [
    i32 6, label %do.body
    i32 7, label %entry.do.body13_crit_edge
    i32 8, label %sw.bb7
  ]

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %1 = ptrtoint ptr %mcfilterbits to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mcfilterbits, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %arrayidx4 = getelementptr i32, ptr %mcfilterbits, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #6, !srcloc !76
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac1000_set_mchash.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac1000_set_mchash, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !90

if.then:                                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac1000_set_mchash.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.25) #6
  br label %cleanup

do.body13:                                        ; preds = %sw.bb7, %entry.do.body13_crit_edge
  %exitcond.not.3 = phi i1 [ true, %entry.do.body13_crit_edge ], [ false, %sw.bb7 ]
  %add.ptr17 = getelementptr i8, ptr %ioaddr, i32 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %mcfilterbits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mcfilterbits, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.1 = getelementptr i32, ptr %mcfilterbits, i32 1
  %10 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx16.1, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr18.1 = getelementptr i8, ptr %ioaddr, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.1, i32 %12) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.2 = getelementptr i32, ptr %mcfilterbits, i32 2
  %13 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16.2, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr18.2 = getelementptr i8, ptr %ioaddr, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.2, i32 %15) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.3 = getelementptr i32, ptr %mcfilterbits, i32 3
  %16 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16.3, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr18.3 = getelementptr i8, ptr %ioaddr, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.3, i32 %18) #6, !srcloc !76
  br i1 %exitcond.not.3, label %do.body13.cleanup_crit_edge, label %do.body13.4

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body13.4:                                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.4 = getelementptr i32, ptr %mcfilterbits, i32 4
  %19 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx16.4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr18.4 = getelementptr i8, ptr %ioaddr, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.4, i32 %21) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.5 = getelementptr i32, ptr %mcfilterbits, i32 5
  %22 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16.5, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr18.5 = getelementptr i8, ptr %ioaddr, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.5, i32 %24) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.6 = getelementptr i32, ptr %mcfilterbits, i32 6
  %25 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx16.6, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr18.6 = getelementptr i8, ptr %ioaddr, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.6, i32 %27) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %arrayidx16.7 = getelementptr i32, ptr %mcfilterbits, i32 7
  %28 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16.7, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr18.7 = getelementptr i8, ptr %ioaddr, i32 1308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.7, i32 %30) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body13.4, %do.body13.cleanup_crit_edge, %if.then, %do.body8, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_set_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_get_mac_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @dwmac1000_ops, !1, !"dwmac1000_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 513, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 539, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dwmac1000_setup._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @dwmac1000_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 65, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dwmac_pcs_isr._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @dwmac_pcs_isr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 71, i32 4}
!18 = !{ptr @dwmac_pcs_isr._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @dwmac_pcs_isr._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h", i32 73, i32 4}
!22 = !{ptr @dwmac_pcs_isr._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dwmac_pcs_isr._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 298, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dwmac1000_rgsmii._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dwmac1000_rgsmii._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 302, i32 3}
!33 = !{ptr @dwmac1000_rgsmii._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dwmac1000_rgsmii._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 158, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dwmac1000_set_filter.__UNIQUE_ID_ddebug500, !36, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 141, i32 3}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dwmac1000_set_mchash.__UNIQUE_ID_ddebug499, !41, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 238, i32 2}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug501, !45, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 240, i32 3}
!50 = !{ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug502, !49, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 244, i32 3}
!53 = !{ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug503, !52, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 249, i32 3}
!56 = !{ptr @dwmac1000_flow_ctrl.__UNIQUE_ID_ddebug504, !55, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 262, i32 3}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dwmac1000_pmt.__UNIQUE_ID_ddebug505, !58, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac1000_core.c", i32 266, i32 3}
!63 = !{ptr @dwmac1000_pmt.__UNIQUE_ID_ddebug506, !62, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 6237670}
!74 = !{i64 2158811292}
!75 = !{i64 2158811730}
!76 = !{i64 6237252}
!77 = !{i64 2158812957}
!78 = !{i64 2158813367}
!79 = !{i64 2158814049}
!80 = !{i64 2158814300}
!81 = !{i64 2158814988}
!82 = !{i64 2158815473}
!83 = !{i64 2158851266}
!84 = !{i64 2158851771}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2158852811}
!87 = !{i64 2158853380}
!88 = !{i64 2158783122}
!89 = !{i64 2158846849}
!90 = !{i64 2148221241, i64 2148221246, i64 2148221259, i64 2148221303, i64 2148221337, i64 2148221358}
!91 = !{i64 2158830642}
!92 = !{i64 2158831248}
!93 = !{i64 2158831715}
!94 = !{i64 2158841220}
!95 = !{i64 2158846167}
!96 = !{i64 2158854002}
!97 = !{i64 2158854245}
!98 = !{i64 2158854909}
!99 = !{i64 2158855152}
!100 = !{i64 2158856459}
!101 = !{i64 2158855816}
!102 = !{i64 2158856059}
!103 = !{i64 2158857176}
!104 = !{i64 2158793975}
!105 = !{i64 2158794532}
!106 = !{i64 2158792831}
!107 = !{i64 2158793136}
!108 = !{i64 2158795397}
!109 = !{i64 2158796763}
!110 = !{i64 2158865113}
!111 = !{i64 2158865364}
!112 = !{i64 2158816084}
!113 = !{i64 2158816536}
!114 = !{i64 2158819388}
