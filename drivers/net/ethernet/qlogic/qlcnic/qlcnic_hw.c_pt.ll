; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.crb_128M_2M_sub_block_map = type { i32, i32, i32, i32 }
%struct.crb_128M_2M_block_map = type { [16 x %struct.crb_128M_2M_sub_block_map] }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }
%struct.qlcnic_nic_req = type { i64, i64, [6 x i64] }
%struct.qlcnic_mac_req = type { i8, i8, [6 x i8] }
%struct.qlcnic_host_tx_ring = type { i32, ptr, [28 x i8], i16, i32, i32, i32, i32, %struct.qlcnic_tx_queue_stats, ptr, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, ptr, %struct.spinlock, [112 x i8] }
%struct.qlcnic_tx_queue_stats = type { i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_buffer = type { ptr, [18 x %struct.qlcnic_skb_frag], i32 }
%struct.qlcnic_skb_frag = type { i64, i64 }
%struct.cmd_desc_type0 = type { i8, i8, i16, i32, i64, i16, i16, i8, i8, i8, i8, i64, i64, [4 x i16], i64, [6 x i8], i16 }
%struct.qlcnic_mac_vlan_list = type { %struct.list_head, [8 x i8], i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.qlcnic_filter = type { %struct.hlist_node, [6 x i8], i16, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct._cdrp_cmd = type { i32, ptr }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@qlcnic_pcie_sem_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to acquire sem=%d lock held by=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_pcie_sem_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_pcie_sem_lock._entry_ptr = internal global ptr @qlcnic_pcie_sem_lock._entry, section ".printk_index", align 4
@qlcnic_pcie_sem_lock._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to acquire sem=%d lock\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_pcie_sem_lock._entry_ptr.7 = internal global ptr @qlcnic_pcie_sem_lock._entry.5, section ".printk_index", align 4
@qlcnic_pcie_sem_lock._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_pcie_sem_lock._entry_ptr.9 = internal global ptr @qlcnic_pcie_sem_lock._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qlcnic_82xx_set_rx_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Could not send interrupt coalescing parameters\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_82xx_set_rx_coalesce\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_82xx_set_rx_coalesce._entry_ptr = internal global ptr @qlcnic_82xx_set_rx_coalesce._entry, section ".printk_index", align 4
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set Rx coalescing parameters\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_82xx_config_hw_lro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not send configure hw lro request\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_82xx_config_hw_lro\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_82xx_config_hw_lro._entry_ptr = internal global ptr @qlcnic_82xx_config_hw_lro._entry, section ".printk_index", align 4
@qlcnic_config_bridged_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 873, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not send configure bridge mode request\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qlcnic_config_bridged_mode\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_config_bridged_mode._entry_ptr = internal global ptr @qlcnic_config_bridged_mode._entry, section ".printk_index", align 4
@qlcnic_82xx_config_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 930, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not configure RSS\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_82xx_config_rss\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_82xx_config_rss._entry_ptr = internal global ptr @qlcnic_82xx_config_rss._entry, section ".printk_index", align 4
@qlcnic_82xx_config_ipaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not notify %s IP 0x%x request\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_82xx_config_ipaddr\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_82xx_config_ipaddr._entry_ptr = internal global ptr @qlcnic_82xx_config_ipaddr._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Add\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Remove\00", [25 x i8] zeroinitializer }, align 32
@qlcnic_82xx_linkevent_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 974, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not configure link notification\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_82xx_linkevent_request\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_82xx_linkevent_request._entry_ptr = internal global ptr @qlcnic_82xx_linkevent_request._entry, section ".printk_index", align 4
@qlcnic_82xx_hw_write_wx_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid offset: 0x%016lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qlcnic_82xx_hw_write_wx_2M\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_82xx_hw_write_wx_2M._entry_ptr = internal global ptr @qlcnic_82xx_hw_write_wx_2M._entry, section ".printk_index", align 4
@qlcnic_82xx_hw_read_wx_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.2, i32 1229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qlcnic_82xx_hw_read_wx_2M\00", [38 x i8] zeroinitializer }, align 32
@qlcnic_82xx_hw_read_wx_2M._entry_ptr = internal global ptr @qlcnic_82xx_hw_read_wx_2M._entry, section ".printk_index", align 4
@__func__.qlcnic_pci_mem_write_2M = private unnamed_addr constant [24 x i8] c"qlcnic_pci_mem_write_2M\00", align 1
@qlcnic_pci_mem_write_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.qlcnic_pci_mem_write_2M, ptr @.str.2, i32 1390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write through agent\0A\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_pci_mem_write_2M._entry_ptr = internal global ptr @qlcnic_pci_mem_write_2M._entry, section ".printk_index", align 4
@__func__.qlcnic_pci_mem_read_2M = private unnamed_addr constant [23 x i8] c"qlcnic_pci_mem_read_2M\00", align 1
@qlcnic_pci_mem_read_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.qlcnic_pci_mem_read_2M, ptr @.str.2, i32 1443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read through agent\0A\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_pci_mem_read_2M._entry_ptr = internal global ptr @qlcnic_pci_mem_read_2M._entry, section ".printk_index", align 4
@qlcnic_82xx_get_board_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid board config, magic=%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qlcnic_82xx_get_board_info\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_board_info._entry_ptr = internal global ptr @qlcnic_82xx_get_board_info._entry, section ".printk_index", align 4
@qlcnic_82xx_get_board_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1511, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown board type %x\0A\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_82xx_get_board_info._entry_ptr.34 = internal global ptr @qlcnic_82xx_get_board_info._entry.32, section ".printk_index", align 4
@qlcnic_82xx_config_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LED configuration failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_82xx_config_led\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_82xx_config_led._entry_ptr = internal global ptr @qlcnic_82xx_config_led._entry, section ".printk_index", align 4
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get current beacon state, err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@qlcnic_82xx_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1672, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qlcnic_82xx_resume\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_82xx_resume._entry_ptr = internal global ptr @qlcnic_82xx_resume._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__qlcnic_set_multi.bcast_addr = internal constant [6 x i8] c"\FF\FF\FF\FF\FF\FF", align 1
@qlcnic_set_fw_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 716, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%sting loopback mode failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qlcnic_set_fw_loopback\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_set_fw_loopback._entry_ptr = internal global ptr @qlcnic_set_fw_loopback._entry, section ".printk_index", align 4
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Set\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Reset\00", [26 x i8] zeroinitializer }, align 32
@qlcnic_send_lro_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not cleanup lro flows\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_send_lro_cleanup\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_send_lro_cleanup._entry_ptr = internal global ptr @qlcnic_send_lro_cleanup._entry, section ".printk_index", align 4
@crb_128M_2M_map = internal unnamed_addr constant <{ %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, %struct.crb_128M_2M_block_map, %struct.crb_128M_2M_block_map, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } }> <{ %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 1048576, i32 1056768, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1114112, i32 1179648, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1179648, i32 1187840, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1245184, i32 1253376, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1310720, i32 1318912, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1376256, i32 1384448, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1441792, i32 1507328, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1507328, i32 1515520, i32 1236992 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 1966080, i32 1968128, i32 1187840 }, %struct.crb_128M_2M_sub_block_map zeroinitializer] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 2097152, i32 2162688, i32 1572864 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 4194304, i32 4198400, i32 1478656 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 5242880, i32 5308416, i32 1310720 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 6291456, i32 6356992, i32 1835008 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 7340032, i32 7356416, i32 1802240 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 8388608, i32 8396800, i32 1507328 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 9371648, i32 9379840, i32 1515520 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 9437184, i32 9445376, i32 1523712 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 10420224, i32 10428416, i32 1531904 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 10485760, i32 10493952, i32 1540096 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 11468800, i32 11476992, i32 1548288 }] }, %struct.crb_128M_2M_block_map { [16 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 0, i32 11534336, i32 11542528, i32 1556480 }, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map zeroinitializer, %struct.crb_128M_2M_sub_block_map { i32 1, i32 12517376, i32 12525568, i32 1564672 }] }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 12582912, i32 12599296, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 13631488, i32 13647872, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 14680064, i32 14696448, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 15728640, i32 15732736, i32 1458176 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 16777216, i32 16793600, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 17825792, i32 17829888, i32 1441792 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 18874368, i32 18878464, i32 1445888 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 19922944, i32 19927040, i32 1449984 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 20971520, i32 20975616, i32 1454080 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 22020096, i32 22024192, i32 1462272 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 23068672, i32 23072768, i32 1466368 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 30408704, i32 30474240, i32 1638400 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 31457280, i32 31461376, i32 1482752 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 32505856, i32 32571392, i32 1376256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> } { <{ [8 x %struct.crb_128M_2M_sub_block_map], [8 x %struct.crb_128M_2M_sub_block_map] }> <{ [8 x %struct.crb_128M_2M_sub_block_map] [%struct.crb_128M_2M_sub_block_map { i32 1, i32 34603008, i32 34611200, i32 1179648 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34668544, i32 34734080, i32 1245184 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34734080, i32 34742272, i32 1196032 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34799616, i32 34807808, i32 1204224 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34865152, i32 34873344, i32 1212416 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34930688, i32 34938880, i32 1220608 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 34996224, i32 35061760, i32 1114112 }, %struct.crb_128M_2M_sub_block_map { i32 1, i32 35061760, i32 35069952, i32 1236992 }], [8 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 35651584, i32 35667968, i32 1769472 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 41943040, i32 41959424, i32 1720320 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 42991616, i32 42995712, i32 1486848 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 44040192, i32 44041216, i32 1754112 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 45088768, i32 45089792, i32 1755136 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 46137344, i32 46138368, i32 1756160 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 47185920, i32 47186944, i32 1757184 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 48234496, i32 48235520, i32 1758208 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 49283072, i32 49284096, i32 1759232 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 50331648, i32 50332672, i32 1760256 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 0, i32 51380224, i32 51396608, i32 1736704 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 52428800, i32 52445184, i32 1916928 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 53477376, i32 53493760, i32 1703936 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 55574528, i32 55575552, i32 1753088 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 56623104, i32 56624128, i32 1761280 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 57671680, i32 57672704, i32 1762304 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 58720256, i32 58736640, i32 1900544 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 59768832, i32 59785216, i32 1785856 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 60817408, i32 60833792, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, %struct.crb_128M_2M_block_map zeroinitializer, %struct.crb_128M_2M_block_map zeroinitializer, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 63963136, i32 63979520, i32 1933312 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 65011712, i32 65015808, i32 1470464 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> }, { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> } { <{ %struct.crb_128M_2M_sub_block_map, [15 x %struct.crb_128M_2M_sub_block_map] }> <{ %struct.crb_128M_2M_sub_block_map { i32 1, i32 66060288, i32 66064384, i32 1474560 }, [15 x %struct.crb_128M_2M_sub_block_map] zeroinitializer }> } }>, section ".data..cacheline_aligned", align 128
@crb_hub_agt = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 1907, i32 661, i32 677, i32 0, i32 208, i32 433, i32 230, i32 224, i32 225, i32 226, i32 227, i32 1056, i32 1047, i32 1057, i32 843, i32 1029, i32 832, i32 833, i32 834, i32 835, i32 837, i32 836, i32 960, i32 961, i32 962, i32 963, i32 0, i32 964, i32 1040, i32 0, i32 209, i32 0, i32 1907, i32 1046, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1047, i32 0, i32 137, i32 1802, i32 1803, i32 1804, i32 141, i32 142, i32 1807, i32 1029, i32 1056, i32 1057, i32 0, i32 136, i32 145, i32 1810, i32 1030, i32 0, i32 1816, i32 409, i32 425, i32 0, i32 838, i32 0], [64 x i8] zeroinitializer }, align 32
@qlcnic_pci_set_crbwindow_2M._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid offset 0x%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_pci_set_crbwindow_2M\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_pci_set_crbwindow_2M._entry_ptr = internal global ptr @qlcnic_pci_set_crbwindow_2M._entry, section ".printk_index", align 4
@qlcnic_pci_set_crbwindow_2M._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1166, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set CRB window to %d off 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_pci_set_crbwindow_2M._entry_ptr.52 = internal global ptr @qlcnic_pci_set_crbwindow_2M._entry.49, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.53 = internal global [16 x i64] [i64 14, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 49, i64 50, i64 128]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 13]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 323, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 327, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 331, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 788, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 809, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 845, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 872, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 930, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 955, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 973, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1198, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1228, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1389, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1442, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1469, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1511, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1554, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1573, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1672, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 715, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 999, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"crb_hub_agt\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 211, i32 23 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1157, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [50 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1164, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @qlcnic_82xx_config_hw_lro._entry, ptr @qlcnic_82xx_config_hw_lro._entry_ptr, ptr @qlcnic_82xx_config_ipaddr._entry, ptr @qlcnic_82xx_config_ipaddr._entry_ptr, ptr @qlcnic_82xx_config_led._entry, ptr @qlcnic_82xx_config_led._entry_ptr, ptr @qlcnic_82xx_config_rss._entry, ptr @qlcnic_82xx_config_rss._entry_ptr, ptr @qlcnic_82xx_get_board_info._entry, ptr @qlcnic_82xx_get_board_info._entry.32, ptr @qlcnic_82xx_get_board_info._entry_ptr, ptr @qlcnic_82xx_get_board_info._entry_ptr.34, ptr @qlcnic_82xx_hw_read_wx_2M._entry, ptr @qlcnic_82xx_hw_read_wx_2M._entry_ptr, ptr @qlcnic_82xx_hw_write_wx_2M._entry, ptr @qlcnic_82xx_hw_write_wx_2M._entry_ptr, ptr @qlcnic_82xx_linkevent_request._entry, ptr @qlcnic_82xx_linkevent_request._entry_ptr, ptr @qlcnic_82xx_resume._entry, ptr @qlcnic_82xx_resume._entry_ptr, ptr @qlcnic_82xx_set_rx_coalesce._entry, ptr @qlcnic_82xx_set_rx_coalesce._entry_ptr, ptr @qlcnic_config_bridged_mode._entry, ptr @qlcnic_config_bridged_mode._entry_ptr, ptr @qlcnic_pci_mem_read_2M._entry, ptr @qlcnic_pci_mem_read_2M._entry_ptr, ptr @qlcnic_pci_mem_write_2M._entry, ptr @qlcnic_pci_mem_write_2M._entry_ptr, ptr @qlcnic_pci_set_crbwindow_2M._entry, ptr @qlcnic_pci_set_crbwindow_2M._entry.49, ptr @qlcnic_pci_set_crbwindow_2M._entry_ptr, ptr @qlcnic_pci_set_crbwindow_2M._entry_ptr.52, ptr @qlcnic_pcie_sem_lock._entry, ptr @qlcnic_pcie_sem_lock._entry.5, ptr @qlcnic_pcie_sem_lock._entry.8, ptr @qlcnic_pcie_sem_lock._entry_ptr, ptr @qlcnic_pcie_sem_lock._entry_ptr.7, ptr @qlcnic_pcie_sem_lock._entry_ptr.9, ptr @qlcnic_send_lro_cleanup._entry, ptr @qlcnic_send_lro_cleanup._entry_ptr, ptr @qlcnic_set_fw_loopback._entry, ptr @qlcnic_set_fw_loopback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @crb_hub_agt, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pcie_sem_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pcie_sem_lock._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pcie_sem_lock._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_set_rx_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_config_hw_lro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_config_bridged_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_config_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_config_ipaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_linkevent_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_hw_write_wx_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_hw_read_wx_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pci_mem_write_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pci_mem_read_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_board_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_get_board_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_config_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_82xx_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_set_fw_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_send_lro_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_hub_agt to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pci_set_crbwindow_2M._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_pci_set_crbwindow_2M._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef %sem, i32 noundef %id_reg) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %mul = shl i32 %sem, 3
  %add1 = add i32 %mul, 101826560
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %entry
  %timeout.052 = phi i32 [ 0, %entry ], [ %inc, %if.end25.while.body_crit_edge ]
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call = call i32 %6(ptr noundef %adapter, i32 noundef %add1, ptr noundef nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %timeout.052)
  %exitcond = icmp eq i32 %timeout.052, 9999
  br i1 %exitcond, label %if.then3, label %if.end25

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id_reg)
  %tobool4.not = icmp eq i32 %id_reg, 0
  br i1 %tobool4.not, label %do.end21, label %if.then5

if.then5:                                         ; preds = %if.then3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %hw_ops7 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops7, align 4
  %read_reg8 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %read_reg8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg8, align 4
  %call9 = call i32 %12(ptr noundef %adapter, i32 noundef %id_reg, ptr noundef nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, -1
  %pdev15 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %13 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  br i1 %cmp10.not, label %do.end14, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str, i32 noundef %sem, i32 noundef %call9) #11
  br label %cleanup

do.end14:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.6, i32 noundef %sem) #11
  br label %cleanup

do.end21:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %pdev22 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %15 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev22, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.6, i32 noundef %sem) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %timeout.052, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 257697600) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end25.while.body_crit_edge, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %while.body.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id_reg)
  %tobool26.not = icmp eq i32 %id_reg, 0
  br i1 %tobool26.not, label %while.end.cleanup_crit_edge, label %if.then27

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %hw_ops29 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %hw_ops29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_ops29, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_reg, align 4
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %24 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %portnum, align 2
  %conv = zext i8 %25 to i32
  %call30 = call i32 %23(ptr noundef %adapter, i32 noundef %id_reg, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %while.end.cleanup_crit_edge, %do.end21, %do.end14, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end14 ], [ -5, %do.end21 ], [ 0, %if.then27 ], [ 0, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_pcie_sem_unlock(ptr noundef %adapter, i32 noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %mul = shl i32 %sem, 3
  %add1 = add i32 %mul, 101826564
  %call = call i32 %6(ptr noundef %adapter, i32 noundef %add1, ptr noundef nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %4)
  %cmp.i = icmp eq i16 %4, -32736
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %and.i = and i32 %addr, -65536
  %add.ptr.i = getelementptr i8, ptr %8, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !132
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr2.i = getelementptr i8, ptr %8, i32 1966080
  %conv3.i = and i32 %addr, 65535
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !133
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end4

if.else:                                          ; preds = %entry
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg, align 4
  %call2 = call i32 %16(ptr noundef %adapter, i32 noundef %addr, ptr noundef nonnull %err) #8
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %18)
  %cmp = icmp eq i32 %18, -5
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %if.then
  %data.0 = phi i32 [ %12, %if.then ], [ %call2, %if.else.if.end4_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %data.0, %if.end4 ], [ -5, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef %addr, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %3)
  %cmp.i = icmp eq i16 %3, -32736
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %and.i = and i32 %addr, -65536
  %add.ptr.i = getelementptr i8, ptr %7, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr2.i = getelementptr i8, ptr %7, i32 1966080
  %conv3.i = and i32 %addr, 65535
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %conv3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %data) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #8, !srcloc !132
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef %addr, i32 noundef %data) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call1, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_sre_macaddr_change(ptr noundef %adapter, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vlan_id, i8 noundef zeroext %op) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 42949672960, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %words to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %op, ptr %words, align 8
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_req, ptr %words, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %mac_addr, ptr %addr, i32 6)
  %arrayidx3 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %vlan_id)
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx3, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr nocapture noundef readonly %cmd_desc_arr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring1, align 8
  %txq = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq, align 32
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %_xmit_lock.i) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %xmit_lock_owner.i, align 4
  %producer2 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %producer2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %producer2, align 4
  %sw_consumer.i = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sw_consumer.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp.i = icmp ugt i32 %14, %12
  br i1 %cmp.i, label %if.end.qlcnic_tx_avail.exit_crit_edge, label %if.else.i, !prof !140

if.end.qlcnic_tx_avail.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_tx_avail.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_desc.i = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_desc.i, align 4
  %add.i = add i32 %16, %14
  br label %qlcnic_tx_avail.exit

qlcnic_tx_avail.exit:                             ; preds = %if.else.i, %if.end.qlcnic_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %if.else.i ], [ %14, %if.end.qlcnic_tx_avail.exit_crit_edge ]
  %retval.0.i = sub i32 %.pn.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp = icmp ult i32 %retval.0.i, 2
  br i1 %cmp, label %if.then4, label %qlcnic_tx_avail.exit.do.body20_crit_edge

qlcnic_tx_avail.exit.do.body20_crit_edge:         ; preds = %qlcnic_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then4:                                         ; preds = %qlcnic_tx_avail.exit
  %17 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txq, align 32
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !141
  %19 = ptrtoint ptr %producer2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %producer2, align 4
  %21 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sw_consumer.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.i3 = icmp ugt i32 %22, %20
  br i1 %cmp.i3, label %qlcnic_tx_avail.exit9, label %qlcnic_tx_avail.exit9.thread, !prof !140

qlcnic_tx_avail.exit9:                            ; preds = %if.then4
  %retval.0.i8 = sub i32 %22, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i8)
  %cmp10 = icmp ugt i32 %retval.0.i8, 1
  br i1 %cmp10, label %qlcnic_tx_avail.exit9.qlcnic_tx_avail.exit18_crit_edge, label %qlcnic_tx_avail.exit9.if.else_crit_edge

qlcnic_tx_avail.exit9.if.else_crit_edge:          ; preds = %qlcnic_tx_avail.exit9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

qlcnic_tx_avail.exit9.qlcnic_tx_avail.exit18_crit_edge: ; preds = %qlcnic_tx_avail.exit9
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_tx_avail.exit18

qlcnic_tx_avail.exit9.thread:                     ; preds = %if.then4
  %num_desc.i4 = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %num_desc.i4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_desc.i4, align 4
  %add.i5 = sub i32 %22, %20
  %retval.0.i824 = add i32 %add.i5, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i824)
  %cmp1025 = icmp ugt i32 %retval.0.i824, 1
  br i1 %cmp1025, label %if.else.i15, label %qlcnic_tx_avail.exit9.thread.if.else_crit_edge

qlcnic_tx_avail.exit9.thread.if.else_crit_edge:   ; preds = %qlcnic_tx_avail.exit9.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else.i15:                                      ; preds = %qlcnic_tx_avail.exit9.thread
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %num_desc.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_desc.i4, align 4
  %add.i14 = add i32 %26, %22
  %.pre = sub i32 %add.i14, %20
  br label %qlcnic_tx_avail.exit18

qlcnic_tx_avail.exit18:                           ; preds = %if.else.i15, %qlcnic_tx_avail.exit9.qlcnic_tx_avail.exit18_crit_edge
  %retval.0.i17.pre-phi = phi i32 [ %retval.0.i8, %qlcnic_tx_avail.exit9.qlcnic_tx_avail.exit18_crit_edge ], [ %.pre, %if.else.i15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retval.0.i17.pre-phi)
  %cmp13 = icmp ugt i32 %retval.0.i17.pre-phi, 10
  br i1 %cmp13, label %if.then14, label %qlcnic_tx_avail.exit18.do.body20_crit_edge

qlcnic_tx_avail.exit18.do.body20_crit_edge:       ; preds = %qlcnic_tx_avail.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.then14:                                        ; preds = %qlcnic_tx_avail.exit18
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txq, align 32
  tail call void @netif_tx_wake_queue(ptr noundef %28) #8
  br label %do.body20

if.else:                                          ; preds = %qlcnic_tx_avail.exit9.thread.if.else_crit_edge, %qlcnic_tx_avail.exit9.if.else_crit_edge
  %xmit_off = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 44, i32 15
  %29 = ptrtoint ptr %xmit_off to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %xmit_off, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %xmit_off, align 8
  br label %cleanup.sink.split

do.body20:                                        ; preds = %if.then14, %qlcnic_tx_avail.exit18.do.body20_crit_edge, %qlcnic_tx_avail.exit.do.body20_crit_edge
  %cmd_buf_arr = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 13
  %31 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_buf_arr, align 16
  %arrayidx22 = getelementptr %struct.qlcnic_cmd_buffer, ptr %32, i32 %12
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx22, align 8
  %frag_count = getelementptr %struct.qlcnic_cmd_buffer, ptr %32, i32 %12, i32 2
  %34 = ptrtoint ptr %frag_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %frag_count, align 8
  %desc_head = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_head, align 4
  %arrayidx23 = getelementptr %struct.cmd_desc_type0, ptr %36, i32 %12
  %37 = call ptr @memcpy(ptr %arrayidx23, ptr %cmd_desc_arr, i32 64)
  %add = add i32 %12, 1
  %num_desc = getelementptr inbounds %struct.qlcnic_host_tx_ring, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_desc, align 4
  %sub = add i32 %39, -1
  %and = and i32 %sub, %add
  %40 = ptrtoint ptr %producer2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and, ptr %producer2, align 4
  tail call void @qlcnic_update_cmd_producer(ptr noundef %3) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body20, %if.else
  %retval.0.ph = phi i32 [ -16, %if.else ], [ 0, %do.body20 ]
  %41 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %txq, align 32
  %xmit_lock_owner.i21 = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %xmit_lock_owner.i21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1, ptr %xmit_lock_owner.i21, align 4
  %_xmit_lock.i22 = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 10
  tail call void @_raw_spin_unlock_bh(ptr noundef %_xmit_lock.i22) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_nic_del_mac(ptr noundef %adapter, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %cur.0.in = phi ptr [ %mac_list, %entry ], [ %cur.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %cmp.not = icmp eq ptr %cur.0, %mac_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %cur.0, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %3 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %4, %2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qlcnic_mac_vlan_list, ptr %cur.0, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %8, %6
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %14(ptr noundef %adapter, ptr noundef %mac_addr, i16 noundef zeroext 0, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %21 = ptrtoint ptr %cur.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cur.0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cur.0) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ %call.i, %if.then.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_nic_add_mac(ptr noundef %adapter, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vlan, i32 noundef %mac_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %cur.042 = load ptr, ptr %mac_list, align 4
  %cmp.not43 = icmp eq ptr %cur.042, %mac_list
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cur.044 = phi ptr [ %cur.042, %for.body.lr.ph ], [ %cur.0, %for.inc.for.body_crit_edge ]
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %cur.044, i32 0, i32 1
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac_addr, align 4
  %xor.i = xor i32 %6, %2
  %add.ptr1.i = getelementptr %struct.qlcnic_mac_vlan_list, ptr %cur.044, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %8, %4
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %vlan_id = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %cur.044, i32 0, i32 2
  %9 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vlan_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %vlan)
  %cmp3 = icmp eq i16 %10, %vlan
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %cur.044 to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur.0 = load ptr, ptr %cur.044, align 4
  %cmp.not = icmp eq ptr %cur.0, %mac_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 24) #12
  %cmp11 = icmp eq ptr %call7.i.i, null
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %mac_addr15 = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %call7.i.i, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %mac_addr15, ptr %addr, i32 6)
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %19(ptr noundef %adapter, ptr noundef %mac_addr15, i16 noundef zeroext %vlan, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %vlan_id22 = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %vlan_id22 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %vlan, ptr %vlan_id22, align 8
  %mac_type23 = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %mac_type23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mac_type, ptr %mac_type23, align 4
  %prev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %23, ptr noundef %mac_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mac_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end21.cleanup_crit_edge, %if.then20, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then20 ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_flush_mcast_mac(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_list, align 8
  %cmp.i.not16 = icmp eq ptr %1, %mac_list
  br i1 %cmp.i.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %head.017 = phi ptr [ %tmp.019, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %head.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.019 = load ptr, ptr %head.017, align 4
  %mac_type = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017, i32 0, i32 3
  %3 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017, i32 0, i32 1
  %vlan_id = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017, i32 0, i32 2
  %5 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_id, align 4
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %12(ptr noundef %adapter, ptr noundef %mac_addr, i16 noundef zeroext %6, i8 noundef zeroext 2) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.017) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head.017, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %head.017 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.017, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %head.017 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %head.017, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.017, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %head.017) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.019, %mac_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_set_multi(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device1.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.else [
    i16 -31696, label %if.end.if.then3_crit_edge
    i16 -31680, label %if.end.if.then3_crit_edge8
    i16 -29648, label %if.end.if.then3_crit_edge9
  ]

if.end.if.then3_crit_edge9:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.if.then3_crit_edge8:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge8, %if.end.if.then3_crit_edge9
  tail call void @qlcnic_sriov_vf_set_multi(ptr noundef %netdev) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %mac_addr.i = getelementptr i8, ptr %netdev, i32 2375
  %call3.i = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %mac_addr.i, i16 noundef zeroext 0, i32 noundef 0) #8
  %call4.i = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef nonnull @__qlcnic_set_multi.bcast_addr, i16 noundef zeroext 0, i32 noundef 2) #8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags7.i = getelementptr i8, ptr %netdev, i32 2328
  %13 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags7.i, align 8
  %and8.i = lshr i32 %14, 11
  %and8.lobit.i = and i32 %and8.i, 1
  %15 = xor i32 %and8.lobit.i, 1
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end.i
  %and13.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i, label %if.else.i.if.end38.i_crit_edge

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %mc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 8
  %max_mc_count.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 17
  %18 = ptrtoint ptr %max_mc_count.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_mc_count.i, align 8
  %conv.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp.i = icmp sgt i32 %17, %conv.i
  br i1 %cmp.i, label %lor.lhs.false.i.if.end38.i_crit_edge, label %if.else17.i

lor.lhs.false.i.if.end38.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.else17.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.i = icmp eq i32 %17, 0
  br i1 %cmp20.i, label %if.else17.i.if.end38.i_crit_edge, label %if.then22.i

if.else17.i.if.end38.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then22.i:                                      ; preds = %if.else17.i
  %mac_list.i.i = getelementptr i8, ptr %netdev, i32 3112
  %20 = ptrtoint ptr %mac_list.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_list.i.i, align 8
  %cmp.i.not16.i.i = icmp eq ptr %21, %mac_list.i.i
  br i1 %cmp.i.not16.i.i, label %if.then22.i.qlcnic_flush_mcast_mac.exit.i_crit_edge, label %if.then22.i.for.body.i.i_crit_edge

if.then22.i.for.body.i.i_crit_edge:               ; preds = %if.then22.i
  br label %for.body.i.i

if.then22.i.qlcnic_flush_mcast_mac.exit.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_flush_mcast_mac.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then22.i.for.body.i.i_crit_edge
  %head.017.i.i = phi ptr [ %tmp.019.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %21, %if.then22.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %head.017.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.019.i.i = load ptr, ptr %head.017.i.i, align 4
  %mac_type.i.i = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %mac_type.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not.i.i = icmp eq i32 %24, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %mac_addr.i.i = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017.i.i, i32 0, i32 1
  %vlan_id.i.i = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %head.017.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %vlan_id.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vlan_id.i.i, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %hw_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_ops.i.i.i, align 4
  %change_macvlan.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %change_macvlan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %change_macvlan.i.i.i, align 4
  %call.i.i.i = tail call i32 %32(ptr noundef %add.ptr.i, ptr noundef %mac_addr.i.i, i16 noundef zeroext %26, i8 noundef zeroext 2) #8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.017.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %head.017.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i, align 4
  %35 = ptrtoint ptr %head.017.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.017.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %39 = ptrtoint ptr %head.017.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %head.017.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %head.017.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %head.017.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.i.not.i.i = icmp eq ptr %tmp.019.i.i, %mac_list.i.i
  br i1 %cmp.i.not.i.i, label %for.inc.i.i.qlcnic_flush_mcast_mac.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.qlcnic_flush_mcast_mac.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_flush_mcast_mac.exit.i

qlcnic_flush_mcast_mac.exit.i:                    ; preds = %for.inc.i.i.qlcnic_flush_mcast_mac.exit.i_crit_edge, %if.then22.i.qlcnic_flush_mcast_mac.exit.i_crit_edge
  %41 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %ha.06.i = load ptr, ptr %mc.i, align 4
  %cmp27.not7.i = icmp eq ptr %ha.06.i, %mc.i
  br i1 %cmp27.not7.i, label %qlcnic_flush_mcast_mac.exit.i.if.end38.i_crit_edge, label %qlcnic_flush_mcast_mac.exit.i.for.body.i_crit_edge

qlcnic_flush_mcast_mac.exit.i.for.body.i_crit_edge: ; preds = %qlcnic_flush_mcast_mac.exit.i
  br label %for.body.i

qlcnic_flush_mcast_mac.exit.i.if.end38.i_crit_edge: ; preds = %qlcnic_flush_mcast_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %qlcnic_flush_mcast_mac.exit.i.for.body.i_crit_edge
  %ha.08.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.06.i, %qlcnic_flush_mcast_mac.exit.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.08.i, i32 0, i32 2
  %call30.i = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %addr.i, i16 noundef zeroext 0, i32 noundef 1) #8
  %42 = ptrtoint ptr %ha.08.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %ha.0.i = load ptr, ptr %ha.08.i, align 4
  %cmp27.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp27.not.i, label %for.body.i.if.end38.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %for.body.i.if.end38.i_crit_edge, %qlcnic_flush_mcast_mac.exit.i.if.end38.i_crit_edge, %if.else17.i.if.end38.i_crit_edge, %lor.lhs.false.i.if.end38.i_crit_edge, %if.else.i.if.end38.i_crit_edge, %if.then6.i
  %mode.0.i = phi i32 [ 0, %if.else17.i.if.end38.i_crit_edge ], [ %15, %if.then6.i ], [ 2, %lor.lhs.false.i.if.end38.i_crit_edge ], [ 2, %if.else.i.if.end38.i_crit_edge ], [ 0, %qlcnic_flush_mcast_mac.exit.i.if.end38.i_crit_edge ], [ 0, %for.body.i.if.end38.i_crit_edge ]
  %uc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65
  %count39.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 65, i32 1
  %43 = ptrtoint ptr %count39.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count39.i, align 8
  %max_uc_count.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 22
  %45 = ptrtoint ptr %max_uc_count.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %max_uc_count.i, align 8
  %conv40.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv40.i)
  %cmp41.i = icmp sgt i32 %44, %conv40.i
  br i1 %cmp41.i, label %if.end38.i.land.lhs.true.i_crit_edge, label %if.else44.i

if.end38.i.land.lhs.true.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.else44.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp47.i = icmp eq i32 %44, 0
  br i1 %cmp47.i, label %if.else44.i.if.end75.i_crit_edge, label %for.cond56.preheader.i

if.else44.i.if.end75.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

for.cond56.preheader.i:                           ; preds = %if.else44.i
  %47 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %ha.19.i = load ptr, ptr %uc.i, align 4
  %cmp60.not10.i = icmp eq ptr %ha.19.i, %uc.i
  br i1 %cmp60.not10.i, label %for.cond56.preheader.i.if.end75.i_crit_edge, label %for.cond56.preheader.i.for.body63.i_crit_edge

for.cond56.preheader.i.for.body63.i_crit_edge:    ; preds = %for.cond56.preheader.i
  br label %for.body63.i

for.cond56.preheader.i.if.end75.i_crit_edge:      ; preds = %for.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

for.body63.i:                                     ; preds = %for.body63.i.for.body63.i_crit_edge, %for.cond56.preheader.i.for.body63.i_crit_edge
  %ha.111.i = phi ptr [ %ha.1.i, %for.body63.i.for.body63.i_crit_edge ], [ %ha.19.i, %for.cond56.preheader.i.for.body63.i_crit_edge ]
  %addr64.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.111.i, i32 0, i32 2
  %call66.i = tail call i32 @qlcnic_nic_add_mac(ptr noundef %add.ptr.i, ptr noundef %addr64.i, i16 noundef zeroext 0, i32 noundef 0) #8
  %48 = ptrtoint ptr %ha.111.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %ha.1.i = load ptr, ptr %ha.111.i, align 4
  %cmp60.not.i = icmp eq ptr %ha.1.i, %uc.i
  br i1 %cmp60.not.i, label %for.body63.i.if.end75.i_crit_edge, label %for.body63.i.for.body63.i_crit_edge

for.body63.i.for.body63.i_crit_edge:              ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body63.i

for.body63.i.if.end75.i_crit_edge:                ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.end75.i:                                       ; preds = %for.body63.i.if.end75.i_crit_edge, %for.cond56.preheader.i.if.end75.i_crit_edge, %if.else44.i.if.end75.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0.i)
  %cmp76.i = icmp eq i32 %mode.0.i, 1
  br i1 %cmp76.i, label %if.end75.i.land.lhs.true.i_crit_edge, label %if.end75.i.if.else85.i_crit_edge

if.end75.i.if.else85.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else85.i

if.end75.i.land.lhs.true.i_crit_edge:             ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end75.i.land.lhs.true.i_crit_edge, %if.end38.i.land.lhs.true.i_crit_edge
  %fdb_mac_learn.i = getelementptr i8, ptr %netdev, i32 2393
  %49 = ptrtoint ptr %fdb_mac_learn.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fdb_mac_learn.i, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool78.not.i = icmp eq i8 %50, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %land.lhs.true.i.if.else85.i_crit_edge

land.lhs.true.i.if.else85.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else85.i

if.then79.i:                                      ; preds = %land.lhs.true.i
  tail call void @qlcnic_alloc_lb_filters_mem(ptr noundef %add.ptr.i) #8
  %drv_mac_learn.i = getelementptr i8, ptr %netdev, i32 2392
  %51 = ptrtoint ptr %drv_mac_learn.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %drv_mac_learn.i, align 8
  %flags80.i = getelementptr i8, ptr %netdev, i32 2328
  %52 = ptrtoint ptr %flags80.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags80.i, align 8
  %and81.i = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.then79.i.if.end88.i_crit_edge, label %if.then79.i.if.end88.sink.split.i_crit_edge

if.then79.i.if.end88.sink.split.i_crit_edge:      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.sink.split.i

if.then79.i.if.end88.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.else85.i:                                      ; preds = %land.lhs.true.i.if.else85.i_crit_edge, %if.end75.i.if.else85.i_crit_edge
  %mode.14.i = phi i32 [ 1, %land.lhs.true.i.if.else85.i_crit_edge ], [ %mode.0.i, %if.end75.i.if.else85.i_crit_edge ]
  %drv_mac_learn86.i = getelementptr i8, ptr %netdev, i32 2392
  %54 = ptrtoint ptr %drv_mac_learn86.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %drv_mac_learn86.i, align 8
  br label %if.end88.sink.split.i

if.end88.sink.split.i:                            ; preds = %if.else85.i, %if.then79.i.if.end88.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else85.i ], [ 1, %if.then79.i.if.end88.sink.split.i_crit_edge ]
  %mode.13.ph.i = phi i32 [ %mode.14.i, %if.else85.i ], [ 1, %if.then79.i.if.end88.sink.split.i_crit_edge ]
  %rx_mac_learn.i = getelementptr i8, ptr %netdev, i32 2394
  %55 = ptrtoint ptr %rx_mac_learn.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink.i, ptr %rx_mac_learn.i, align 2
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end88.sink.split.i, %if.then79.i.if.end88.i_crit_edge
  %mode.13.i = phi i32 [ 1, %if.then79.i.if.end88.i_crit_edge ], [ %mode.13.ph.i, %if.end88.sink.split.i ]
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_ops.i.i, align 4
  %config_promisc_mode.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %59, i32 0, i32 31
  %60 = ptrtoint ptr %config_promisc_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config_promisc_mode.i.i, align 4
  %call.i.i = tail call i32 %61(ptr noundef %add.ptr.i, i32 noundef %mode.13.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end88.i, %if.else.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_vf_set_multi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_nic_set_promisc(ptr noundef %adapter, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 12
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %conv1 = zext i32 %mode to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_free_mac_list(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_list = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not6 = icmp eq ptr %1, %mac_list
  br i1 %cmp.i.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %18, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %mac_addr = getelementptr inbounds %struct.qlcnic_mac_vlan_list, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %8(ptr noundef %adapter, ptr noundef %mac_addr, i16 noundef zeroext 0, i8 noundef zeroext 2) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #8
  %17 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mac_list, align 4
  %cmp.i.not = icmp eq ptr %18, %mac_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_prune_lb_filters(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fbucket_size = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 3
  %0 = ptrtoint ptr %fbucket_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fbucket_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp136.not = icmp eq i16 %1, 0
  br i1 %cmp136.not, label %entry.for.cond31.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond31.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond31.preheader

for.body.lr.ph:                                   ; preds = %entry
  %fhash = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56
  %mac_learn_lock = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 59
  %fnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 1
  br label %for.body

for.cond31.preheader:                             ; preds = %for.inc29.for.cond31.preheader_crit_edge, %entry.for.cond31.preheader_crit_edge
  %fbucket_size32 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57, i32 3
  %2 = ptrtoint ptr %fbucket_size32 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fbucket_size32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp34141.not = icmp eq i16 %3, 0
  br i1 %cmp34141.not, label %for.cond31.preheader.for.end86_crit_edge, label %for.body36.lr.ph

for.cond31.preheader.for.end86_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.body36.lr.ph:                                 ; preds = %for.cond31.preheader
  %rx_fhash = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57
  %rx_mac_learn_lock = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 60
  %fnum67 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 57, i32 1
  br label %for.body36

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc29.for.body_crit_edge ]
  %4 = ptrtoint ptr %fhash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fhash, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %5, i32 %i.0137
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not133 = icmp eq ptr %7, null
  br i1 %tobool5.not133, label %for.body.for.inc29_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %tmp_fil.0134 = phi ptr [ %9, %for.inc.land.rhs_crit_edge ], [ %7, %for.body.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %tmp_fil.0134 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmp_fil.0134, align 4
  %vlan_id = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.0134, i32 0, i32 2
  %10 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_id, align 2
  %ftime = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.0134, i32 0, i32 3
  %12 = ptrtoint ptr %ftime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ftime, align 4
  %add = add i32 %13, 8000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool10.not = icmp eq i16 %11, 0
  %conv12 = select i1 %tobool10.not, i8 2, i8 4
  %faddr = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.0134, i32 0, i32 1
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %20(ptr noundef %adapter, ptr noundef %faddr, i16 noundef zeroext %11, i8 noundef zeroext %conv12) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_learn_lock) #8
  %21 = ptrtoint ptr %fnum to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fnum, align 4
  %dec = add i8 %22, -1
  store i8 %dec, ptr %fnum, align 4
  %23 = ptrtoint ptr %tmp_fil.0134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmp_fil.0134, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tmp_fil.0134, i32 0, i32 1
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pprev2.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %24, ptr %26, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then.hlist_del.exit_crit_edge
  %29 = ptrtoint ptr %tmp_fil.0134 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_fil.0134, align 4
  %30 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_learn_lock) #8
  tail call void @kfree(ptr noundef nonnull %tmp_fil.0134) #8
  br label %for.inc

for.inc:                                          ; preds = %hlist_del.exit, %land.rhs.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.inc.for.inc29_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.for.inc29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29

for.inc29:                                        ; preds = %for.inc.for.inc29_crit_edge, %for.body.for.inc29_crit_edge
  %inc = add nuw nsw i32 %i.0137, 1
  %31 = ptrtoint ptr %fbucket_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fbucket_size, align 8
  %conv = zext i16 %32 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc29.for.body_crit_edge, label %for.inc29.for.cond31.preheader_crit_edge

for.inc29.for.cond31.preheader_crit_edge:         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond31.preheader

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body36:                                       ; preds = %for.inc84.for.body36_crit_edge, %for.body36.lr.ph
  %i.1142 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc85, %for.inc84.for.body36_crit_edge ]
  %33 = ptrtoint ptr %rx_fhash to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_fhash, align 4
  %arrayidx39 = getelementptr %struct.hlist_head, ptr %34, i32 %i.1142
  %35 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx39, align 4
  %tobool52.not138 = icmp eq ptr %36, null
  br i1 %tobool52.not138, label %for.body36.for.inc84_crit_edge, label %for.body36.land.rhs53_crit_edge

for.body36.land.rhs53_crit_edge:                  ; preds = %for.body36
  br label %land.rhs53

for.body36.for.inc84_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

land.rhs53:                                       ; preds = %for.inc72.land.rhs53_crit_edge, %for.body36.land.rhs53_crit_edge
  %tmp_fil.1139 = phi ptr [ %38, %for.inc72.land.rhs53_crit_edge ], [ %36, %for.body36.land.rhs53_crit_edge ]
  %37 = ptrtoint ptr %tmp_fil.1139 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp_fil.1139, align 4
  %ftime60 = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.1139, i32 0, i32 3
  %39 = ptrtoint ptr %ftime60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ftime60, align 4
  %add61 = add i32 %40, 8000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub62 = sub i32 %add61, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp63 = icmp slt i32 %sub62, 0
  br i1 %cmp63, label %if.then65, label %land.rhs53.for.inc72_crit_edge

land.rhs53.for.inc72_crit_edge:                   ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc72

if.then65:                                        ; preds = %land.rhs53
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_mac_learn_lock) #8
  %42 = ptrtoint ptr %fnum67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fnum67, align 4
  %dec68 = add i8 %43, -1
  store i8 %dec68, ptr %fnum67, align 4
  %44 = ptrtoint ptr %tmp_fil.1139 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tmp_fil.1139, align 4
  %pprev2.i.i127 = getelementptr inbounds %struct.hlist_node, ptr %tmp_fil.1139, i32 0, i32 1
  %46 = ptrtoint ptr %pprev2.i.i127 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i127, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %45, ptr %47, align 4
  %tobool.not.i.i128 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i128, label %if.then65.hlist_del.exit131_crit_edge, label %do.body13.i.i130

if.then65.hlist_del.exit131_crit_edge:            ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit131

do.body13.i.i130:                                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i129 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev14.i.i129 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %pprev14.i.i129, align 4
  br label %hlist_del.exit131

hlist_del.exit131:                                ; preds = %do.body13.i.i130, %if.then65.hlist_del.exit131_crit_edge
  %50 = ptrtoint ptr %tmp_fil.1139 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_fil.1139, align 4
  %51 = ptrtoint ptr %pprev2.i.i127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i127, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_mac_learn_lock) #8
  tail call void @kfree(ptr noundef nonnull %tmp_fil.1139) #8
  br label %for.inc72

for.inc72:                                        ; preds = %hlist_del.exit131, %land.rhs53.for.inc72_crit_edge
  %tobool52.not = icmp eq ptr %38, null
  br i1 %tobool52.not, label %for.inc72.for.inc84_crit_edge, label %for.inc72.land.rhs53_crit_edge

for.inc72.land.rhs53_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs53

for.inc72.for.inc84_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

for.inc84:                                        ; preds = %for.inc72.for.inc84_crit_edge, %for.body36.for.inc84_crit_edge
  %inc85 = add nuw nsw i32 %i.1142, 1
  %52 = ptrtoint ptr %fbucket_size32 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %fbucket_size32, align 4
  %conv33 = zext i16 %53 to i32
  %cmp34 = icmp ult i32 %inc85, %conv33
  br i1 %cmp34, label %for.inc84.for.body36_crit_edge, label %for.inc84.for.end86_crit_edge

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.inc84.for.body36_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %for.cond31.preheader.for.end86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_delete_lb_filters(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fbucket_size = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 3
  %0 = ptrtoint ptr %fbucket_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fbucket_size, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp48.not = icmp eq i16 %1, 0
  br i1 %cmp48.not, label %entry.for.end28_crit_edge, label %for.body.lr.ph

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %fhash = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56
  %mac_learn_lock = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 59
  %fnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 56, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc27.for.body_crit_edge ]
  %2 = ptrtoint ptr %fhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fhash, align 8
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not45 = icmp eq ptr %5, null
  br i1 %tobool5.not45, label %for.body.for.inc27_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc27

land.rhs:                                         ; preds = %hlist_del.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %tmp_fil.046 = phi ptr [ %7, %hlist_del.exit.land.rhs_crit_edge ], [ %5, %for.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %tmp_fil.046 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmp_fil.046, align 4
  %vlan_id = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.046, i32 0, i32 2
  %8 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  %conv12 = select i1 %tobool10.not, i8 2, i8 4
  %faddr = getelementptr inbounds %struct.qlcnic_filter, ptr %tmp_fil.046, i32 0, i32 1
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i, align 4
  %change_macvlan.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %change_macvlan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %change_macvlan.i, align 4
  %call.i = tail call i32 %15(ptr noundef %adapter, ptr noundef %faddr, i16 noundef zeroext %9, i8 noundef zeroext %conv12) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_learn_lock) #8
  %16 = ptrtoint ptr %fnum to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fnum, align 4
  %dec = add i8 %17, -1
  store i8 %dec, ptr %fnum, align 4
  %18 = ptrtoint ptr %tmp_fil.046 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tmp_fil.046, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tmp_fil.046, i32 0, i32 1
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %land.rhs.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs.hlist_del.exit_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs.hlist_del.exit_crit_edge
  %24 = ptrtoint ptr %tmp_fil.046 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp_fil.046, align 4
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_learn_lock) #8
  tail call void @kfree(ptr noundef nonnull %tmp_fil.046) #8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %hlist_del.exit.for.inc27_crit_edge, label %hlist_del.exit.land.rhs_crit_edge

hlist_del.exit.land.rhs_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

hlist_del.exit.for.inc27_crit_edge:               ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc27

for.inc27:                                        ; preds = %hlist_del.exit.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %26 = ptrtoint ptr %fbucket_size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fbucket_size, align 8
  %conv = zext i16 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc27.for.body_crit_edge, label %for.inc27.for.end28_crit_edge

for.inc27.for.end28_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end28:                                        ; preds = %for.inc27.for.end28_crit_edge, %entry.for.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_set_lb_mode(ptr noundef %adapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %req.i9 = alloca %struct.qlcnic_nic_req, align 8
  %req.i = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #8
  %0 = getelementptr inbounds i8, ptr %req.i, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req.i, align 8
  %portnum.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %4 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 16
  %or1.i = or i64 %shl.i, 4294967315
  %5 = tail call i64 @llvm.bswap.i64(i64 %or1.i) #8
  %req_hdr.i = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr.i, align 8
  %conv2.i = zext i8 %mode to i64
  %7 = shl nuw i64 %conv2.i, 56
  %words.i = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i, i32 0, i32 2
  %8 = ptrtoint ptr %words.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words.i, align 8
  %call.i = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end, label %qlcnic_set_fw_loopback.exit

qlcnic_set_fw_loopback.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool.not.i = icmp eq i8 %mode, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond.i) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #8
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i, align 4
  %config_promisc_mode.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 31
  %15 = ptrtoint ptr %config_promisc_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config_promisc_mode.i, align 4
  %call.i8 = tail call i32 %16(ptr noundef %adapter, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i9) #8
  %17 = getelementptr inbounds i8, ptr %req.i9, i32 24
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %req.i9 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 140776143060992, ptr %req.i9, align 8
  %20 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %portnum.i, align 2
  %conv.i11 = zext i8 %21 to i64
  %shl.i12 = shl nuw nsw i64 %conv.i11, 16
  %or1.i13 = or i64 %shl.i12, 4294967315
  %22 = tail call i64 @llvm.bswap.i64(i64 %or1.i13) #8
  %req_hdr.i14 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i9, i32 0, i32 1
  %23 = ptrtoint ptr %req_hdr.i14 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %req_hdr.i14, align 8
  %words.i15 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i9, i32 0, i32 2
  %24 = ptrtoint ptr %words.i15 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %words.i15, align 8
  %call.i16 = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %cmp.not.i17, label %if.then3.qlcnic_set_fw_loopback.exit21_crit_edge, label %do.end.i20

if.then3.qlcnic_set_fw_loopback.exit21_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_set_fw_loopback.exit21

do.end.i20:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i18 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %25 = ptrtoint ptr %pdev.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i18, align 8
  %dev.i19 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43) #11
  br label %qlcnic_set_fw_loopback.exit21

qlcnic_set_fw_loopback.exit21:                    ; preds = %do.end.i20, %if.then3.qlcnic_set_fw_loopback.exit21_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i9) #8
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 1000) #8
  br label %return

return:                                           ; preds = %if.end5, %qlcnic_set_fw_loopback.exit21, %qlcnic_set_fw_loopback.exit
  %retval.0 = phi i32 [ -5, %qlcnic_set_fw_loopback.exit21 ], [ 0, %if.end5 ], [ -5, %qlcnic_set_fw_loopback.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_clear_lb_mode(ptr noundef %adapter, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #8
  %2 = getelementptr inbounds i8, ptr %req.i, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req.i, align 8
  %portnum.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %5 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %6 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 16
  %or1.i = or i64 %shl.i, 4294967315
  %7 = tail call i64 @llvm.bswap.i64(i64 %or1.i) #8
  %req_hdr.i = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr.i, align 8
  %words.i = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i, i32 0, i32 2
  %9 = ptrtoint ptr %words.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %words.i, align 8
  %call.i = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %entry.qlcnic_set_fw_loopback.exit_crit_edge, label %do.end.i

entry.qlcnic_set_fw_loopback.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_set_fw_loopback.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43) #11
  br label %qlcnic_set_fw_loopback.exit

qlcnic_set_fw_loopback.exit:                      ; preds = %do.end.i, %entry.qlcnic_set_fw_loopback.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #8
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = lshr i32 %13, 8
  %14 = and i32 %and3, 2
  %mode.addr.0 = select i1 %tobool.not, i32 %14, i32 1
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %config_promisc_mode.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %config_promisc_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config_promisc_mode.i, align 4
  %call.i11 = tail call i32 %20(ptr noundef %adapter, i32 noundef %mode.addr.0) #8
  tail call void @msleep(i32 noundef 1000) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_read_phys_port_id(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #8
  %0 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %physical_port = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %physical_port, align 1
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %get_mac_address.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %get_mac_address.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_mac_address.i, align 4
  %call.i = call i32 %8(ptr noundef %adapter, ptr noundef nonnull %mac, i8 noundef zeroext %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %phys_port_id = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 61
  %11 = call ptr @memcpy(ptr %phys_port_id, ptr %mac, i32 6)
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %or = or i32 %13, 262144
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_set_rx_coalesce(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 3
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %flag = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47, i32 6
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flag, align 2
  %conv1 = zext i16 %10 to i64
  %11 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %12 = lshr exact i64 %11, 32
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %words, align 8
  %rx_packets = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47, i32 2
  %14 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rx_packets, align 2
  %conv5 = zext i16 %15 to i64
  %rx_time_us = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47, i32 3
  %16 = ptrtoint ptr %rx_time_us to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rx_time_us, align 4
  %conv8 = zext i16 %17 to i64
  %shl9 = shl nuw nsw i64 %conv8, 16
  %or10 = or i64 %shl9, %conv5
  %18 = tail call i64 @llvm.bswap.i64(i64 %or10)
  %arrayidx12 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx12, align 8
  %coal14 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47
  %timer_out = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47, i32 7
  %20 = ptrtoint ptr %timer_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timer_out, align 4
  %conv15 = zext i32 %21 to i64
  %22 = ptrtoint ptr %coal14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %coal14, align 8
  %conv18 = zext i8 %23 to i64
  %shl19 = shl nuw nsw i64 %conv18, 32
  %or20 = or i64 %shl19, %conv15
  %sts_ring_mask = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 47, i32 1
  %24 = ptrtoint ptr %sts_ring_mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sts_ring_mask, align 1
  %conv23 = zext i8 %25 to i64
  %shl24 = shl nuw nsw i64 %conv23, 40
  %or25 = or i64 %or20, %shl24
  %26 = tail call i64 @llvm.bswap.i64(i64 %or25)
  %arrayidx27 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx27, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %28 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_config_intr_coalesce(ptr noundef %adapter, ptr nocapture noundef readonly %ethcoal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %flag = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 47, i32 6
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %flag, align 2
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 1
  %3 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv = trunc i32 %4 to i16
  %rx_time_us = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 47, i32 3
  %5 = ptrtoint ptr %rx_time_us to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %rx_time_us, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ethcoal, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv2 = trunc i32 %7 to i16
  %rx_packets = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %rx_packets to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2, ptr %rx_packets, align 2
  %call = tail call i32 @qlcnic_82xx_set_rx_coalesce(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.12) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_config_hw_lro(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %5 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum, align 2
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 24
  %7 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %extra_capability = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 41
  %11 = ptrtoint ptr %extra_capability to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %extra_capability, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool3.not, i64 1, i64 515
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %word.0 = phi i64 [ 0, %if.end.if.end7_crit_edge ], [ %spec.select, %if.then2 ]
  %13 = tail call i64 @llvm.bswap.i64(i64 %word.0)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %words, align 8
  %call9 = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_config_bridged_mode(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = lshr i32 %1, 4
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %enable)
  %cmp = icmp eq i32 %and.lobit, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %req, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %5 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %portnum, align 2
  %conv = zext i8 %6 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 23
  %7 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req_hdr, align 8
  %conv2 = zext i32 %enable to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv2)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %words, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %xor = xor i32 %14, 16
  store i32 %xor, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_config_rss(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %1 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %portnum, align 2
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %req_hdr, align 8
  %and = shl i32 %enable, 8
  %5 = and i32 %and, 256
  %or3 = zext i32 %5 to i64
  %or6 = or i64 %or3, -9221401712017799952
  %6 = tail call i64 @llvm.bswap.i64(i64 %or6)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %words, align 8
  %arrayidx10 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4302980996204178622, ptr %arrayidx10, align 8
  %arrayidx10.1 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -6688466159396573056, ptr %arrayidx10.1, align 8
  %arrayidx10.2 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -3806726062286537810, ptr %arrayidx10.2, align 8
  %arrayidx10.3 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4406041342284636995, ptr %arrayidx10.3, align 8
  %arrayidx10.4 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -2713882297990489307, ptr %arrayidx10.4, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11.not = icmp eq i32 %call, 0
  br i1 %cmp11.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_config_ipaddr(ptr noundef %adapter, i32 noundef %ip, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 18
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %conv1 = sext i32 %cmd to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv1)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %arrayidx3 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ip, ptr %arrayidx3, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 133
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp5 = icmp eq i32 %cmd, 2
  %cond = select i1 %cmp5, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, i32 noundef %ip) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_linkevent_request(ptr noundef %adapter, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 24
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 21
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %shl1 = shl i32 %enable, 8
  %or2 = or i32 %shl1, %enable
  %conv3 = sext i32 %or2 to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %conv3)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_change_mtu(ptr noundef %netdev, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @qlcnic_fw_cmd_set_mtu(ptr noundef %add.ptr.i, i32 noundef %mtu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mtu, ptr %mtu2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_fw_cmd_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @qlcnic_fix_features(ptr nocapture noundef %netdev, i64 noundef %features) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %3)
  %cmp.i = icmp eq i16 %3, -32736
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2328
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %and3 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %offload_flags1.i = getelementptr i8, ptr %netdev, i32 3576
  %6 = ptrtoint ptr %offload_flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offload_flags1.i, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else18.i, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  %or.i = or i64 %features, 1099511627794
  %rx_csum.i = getelementptr i8, ptr %netdev, i32 2349
  %8 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_csum.i, align 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %capabilities.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 40
  %11 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities.i, align 4
  %and2.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end10_crit_edge, label %if.then4.i

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4.i:                                       ; preds = %if.then.i
  %and5.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or9.i = or i64 %features, 1099511693330
  %and8.i = and i64 %or.i, -65537
  %features.addr.0.i = select i1 %tobool6.not.i, i64 %and8.i, i64 %or9.i
  %and10.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %and13.i = and i64 %features.addr.0.i, -1048577
  br label %if.end10

if.else14.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %or15.i = or i64 %features.addr.0.i, 1048576
  br label %if.end10

if.else18.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %capabilities21.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 40
  %15 = ptrtoint ptr %capabilities21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities21.i, align 4
  %and22.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  %spec.select.v.i = select i1 %tobool23.not.i, i64 -1099511627795, i64 -1099512741907
  %spec.select.i = and i64 %spec.select.v.i, %features
  %rx_csum27.i = getelementptr i8, ptr %netdev, i32 2349
  %17 = ptrtoint ptr %rx_csum27.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rx_csum27.i, align 1
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %features7 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %18 = ptrtoint ptr %features7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features7, align 16
  %20 = and i64 %19, 1099512741906
  %21 = and i64 %features, -1099512741907
  %xor9 = or i64 %20, %21
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.else18.i, %if.else14.i, %if.then12.i, %if.then.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %features.addr.0 = phi i64 [ %xor9, %if.else ], [ %features, %land.lhs.true.if.end10_crit_edge ], [ %features, %entry.if.end10_crit_edge ], [ %or15.i, %if.else14.i ], [ %and13.i, %if.then12.i ], [ %or.i, %if.then.i.if.end10_crit_edge ], [ %spec.select.i, %if.else18.i ]
  %and11 = and i64 %features.addr.0, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  %and14 = and i64 %features.addr.0, -32769
  %spec.select = select i1 %tobool12.not, i64 %and14, i64 %features.addr.0
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_set_features(ptr noundef %netdev, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and2 = and i64 %xor, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %features, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  %and.lobit = lshr exact i64 %and, 15
  %2 = trunc i64 %and.lobit to i32
  %xor5 = xor i64 %1, 32768
  %3 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %xor5, ptr %features1, align 16
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_ops.i, align 4
  %config_hw_lro.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %config_hw_lro.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config_hw_lro.i, align 4
  %call.i = tail call i32 %9(ptr noundef %add.ptr.i, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp ne i32 %call.i, 0
  %brmerge = or i1 %tobool7.not, %tobool.not
  %.mux = select i1 %tobool7.not, i32 -5, i32 0
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %13)
  %cmp.i = icmp eq i16 %13, -32736
  br i1 %cmp.i, label %if.then12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #8
  %state.i = getelementptr i8, ptr %netdev, i32 2324
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then12.qlcnic_send_lro_cleanup.exit.thread_crit_edge, label %if.end.i

if.then12.qlcnic_send_lro_cleanup.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_send_lro_cleanup.exit.thread

if.end.i:                                         ; preds = %if.then12
  %16 = getelementptr inbounds i8, ptr %req.i, i32 16
  %17 = call ptr @memset(ptr %16, i32 0, i32 48)
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 140776143060992, ptr %req.i, align 8
  %portnum.i = getelementptr i8, ptr %netdev, i32 2350
  %19 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %20 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 16
  %or1.i = or i64 %shl.i, 288230376151711751
  %21 = tail call i64 @llvm.bswap.i64(i64 %or1.i) #8
  %req_hdr.i = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req.i, i32 0, i32 1
  %22 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %req_hdr.i, align 8
  %call2.i = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %add.ptr.i, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end.i.qlcnic_send_lro_cleanup.exit.thread_crit_edge, label %qlcnic_send_lro_cleanup.exit

if.end.i.qlcnic_send_lro_cleanup.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_send_lro_cleanup.exit.thread

qlcnic_send_lro_cleanup.exit.thread:              ; preds = %if.end.i.qlcnic_send_lro_cleanup.exit.thread_crit_edge, %if.then12.qlcnic_send_lro_cleanup.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #8
  br label %cleanup

qlcnic_send_lro_cleanup.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr i8, ptr %netdev, i32 2316
  %23 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev.i, align 4
  %dev.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #8
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_send_lro_cleanup.exit, %qlcnic_send_lro_cleanup.exit.thread, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %.mux, %if.end.cleanup_crit_edge ], [ -5, %qlcnic_send_lro_cleanup.exit ], [ 0, %qlcnic_send_lro_cleanup.exit.thread ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_hw_write_wx_2M(ptr noundef %adapter, i32 noundef %off, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = add i32 %off, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %2)
  %3 = icmp ult i32 %2, -67108864
  br i1 %3, label %do.end29, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %off, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i.do.body3_crit_edge, label %land.lhs.true.i

if.end.i.do.body3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

land.lhs.true.i:                                  ; preds = %if.end.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %6 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp5.not.i = icmp ult i32 %sub.i, %7
  br i1 %cmp5.not.i, label %land.lhs.true.i.do.body3_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.body3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %8 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %9, %sub.i
  br i1 %cmp7.i, label %do.body, label %land.lhs.true6.i.do.body3_crit_edge

land.lhs.true6.i.do.body3_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.body:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %12 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %sub10.i = sub i32 %sub.i, %7
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %sub10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %14) #8, !srcloc !132
  br label %cleanup

do.body3:                                         ; preds = %land.lhs.true6.i.do.body3_crit_edge, %land.lhs.true.i.do.body3_crit_edge, %if.end.i.do.body3_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %crb_lock = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 3
  %call6 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock) #8
  %call9 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 7, i32 noundef 136323364)
  %call10 = tail call fastcc i32 @qlcnic_pci_set_crbwindow_2M(ptr noundef %adapter, i32 noundef %off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body12, label %do.body3.if.end15_crit_edge

do.body3.if.end15_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr14.i = getelementptr i8, ptr %16, i32 1966080
  %17 = and i32 %off, 65535
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %18) #8, !srcloc !132
  br label %if.end15

if.end15:                                         ; preds = %do.body12, %do.body3.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %19 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %err.i, align 4
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %25(ptr noundef %adapter, i32 noundef 101826620, ptr noundef nonnull %err.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %crb_lock23 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 3
  call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock23, i32 noundef %call6) #8
  br label %cleanup

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %off) #11
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end15, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ %call10, %if.end15 ], [ -5, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_pci_set_crbwindow_2M(ptr nocapture noundef readonly %adapter, i32 noundef %off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %off, -100663296
  %shr = lshr i32 %sub, 20
  %and = and i32 %shr, 63
  %arrayidx = getelementptr [64 x i32], ptr @crb_hub_agt, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %1, 20
  %and1 = and i32 %off, 983040
  %or = or i32 %shl, %and1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %sub) #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %or)
  %cmp6.not = icmp eq i32 %10, %or
  br i1 %cmp6.not, label %do.body2.cleanup_crit_edge, label %if.then7

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.body2
  %call8 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %do.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %pdev13 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %11 = ptrtoint ptr %pdev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev13, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.50, i32 noundef %or, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then7.cleanup_crit_edge, %do.body2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end12 ], [ -5, %if.then7.cleanup_crit_edge ], [ 0, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_hw_read_wx_2M(ptr noundef %adapter, i32 noundef %off, ptr nocapture noundef readnone %err) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = add i32 %off, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %2)
  %3 = icmp ult i32 %2, -67108864
  br i1 %3, label %do.end31, label %if.end.i

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %off, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i.do.body_crit_edge, label %land.lhs.true.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.i:                                  ; preds = %if.end.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %6 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp5.not.i = icmp ult i32 %sub.i, %7
  br i1 %cmp5.not.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %8 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %9, %sub.i
  br i1 %cmp7.i, label %if.then, label %land.lhs.true6.i.do.body_crit_edge

land.lhs.true6.i.do.body_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %12 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %sub10.i = sub i32 %sub.i, %7
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %sub10.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !133
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true6.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %crb_lock = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 3
  %call8 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %crb_lock) #8
  %call9 = tail call i32 @qlcnic_pcie_sem_lock(ptr noundef %adapter, i32 noundef 7, i32 noundef 136323364)
  %call10 = tail call fastcc i32 @qlcnic_pci_set_crbwindow_2M(ptr noundef %adapter, i32 noundef %off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr14.i = getelementptr i8, ptr %17, i32 1966080
  %18 = and i32 %off, 65535
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !133
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.body.if.end17_crit_edge
  %data.0 = phi i32 [ -1, %do.body.if.end17_crit_edge ], [ %20, %if.then11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %21 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %err.i, align 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %27(ptr noundef %adapter, i32 noundef 101826620, ptr noundef nonnull %err.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %crb_lock25 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 3
  call void @_raw_write_unlock_irqrestore(ptr noundef %crb_lock25, i32 noundef %call8) #8
  br label %cleanup

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %off) #11
  tail call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end17, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %data.0, %if.end17 ], [ -1, %do.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qlcnic_get_ioaddr(ptr nocapture noundef readonly %ahw, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %0)
  %1 = icmp ult i32 %0, -67108864
  br i1 %1, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %offset, -100663296
  %shr.i = lshr i32 %sub.i, 20
  %arrayidx.i = getelementptr [64 x %struct.crb_128M_2M_block_map], ptr @crb_128M_2M_map, i32 0, i32 %shr.i
  %shr2.i = lshr i32 %sub.i, 16
  %and3.i = and i32 %shr2.i, 15
  %arrayidx4.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %start_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 1
  %4 = ptrtoint ptr %start_128M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_128M.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp5.not.i = icmp ult i32 %sub.i, %5
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %end_128M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 2
  %6 = ptrtoint ptr %end_128M.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end_128M.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %7, %sub.i
  br i1 %cmp7.i, label %qlcnic_pci_get_crb_addr_2M.exit, label %land.lhs.true6.i.if.end12.i_crit_edge

land.lhs.true6.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true6.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %8 = ptrtoint ptr %ahw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ahw, align 8
  %add.ptr14.i = getelementptr i8, ptr %9, i32 1966080
  %10 = and i32 %offset, 65535
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 %10
  br label %do.end

qlcnic_pci_get_crb_addr_2M.exit:                  ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ahw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ahw, align 8
  %start_2M.i = getelementptr [16 x %struct.crb_128M_2M_sub_block_map], ptr %arrayidx.i, i32 0, i32 %and3.i, i32 3
  %13 = ptrtoint ptr %start_2M.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_2M.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %14
  %sub10.i = sub i32 %sub.i, %5
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i, i32 %sub10.i
  br label %if.end

do.end:                                           ; preds = %if.end12.i, %entry.do.end_crit_edge
  %addr.0.ph = phi ptr [ %add.ptr16.i, %if.end12.i ], [ null, %entry.do.end_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1239, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %qlcnic_pci_get_crb_addr_2M.exit
  %addr.025 = phi ptr [ %addr.0.ph, %do.end ], [ %add.ptr11.i, %qlcnic_pci_get_crb_addr_2M.exit ]
  ret ptr %addr.025
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_pci_mem_write_2M(ptr noundef %adapter, i64 noundef %off, i64 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %err.i283 = alloca i32, align 4
  %err.i199 = alloca i32, align 4
  %err.i167 = alloca i32, align 4
  %err.i = alloca i32, align 4
  %data.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %data, ptr %data.addr, align 8
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217727, i64 %1)
  %2 = icmp ult i64 %1, 134217727
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp2 = icmp ult i64 %off, 268435455
  %or.cond116 = or i1 %cmp2, %2
  br i1 %or.cond116, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and.i = and i64 %off, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end6.qlcnic_set_ms_controls.exit_crit_edge

if.end6.qlcnic_set_ms_controls.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_set_ms_controls.exit

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_set_ms_controls.exit

qlcnic_set_ms_controls.exit:                      ; preds = %if.else.i, %if.end6.qlcnic_set_ms_controls.exit_crit_edge
  %.sink7.i = phi i32 [ 1090519216, %if.else.i ], [ 1090519200, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %.sink6.i = phi i32 [ 1090519224, %if.else.i ], [ 1090519208, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %.sink5.i = phi i32 [ 1090519220, %if.else.i ], [ 1090519204, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %.sink4.i = phi i32 [ 1090519228, %if.else.i ], [ 1090519212, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %.sink3.i = phi i32 [ 1090519200, %if.else.i ], [ 1090519216, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %.sink2.i = phi i32 [ 1090519204, %if.else.i ], [ 1090519220, %if.end6.qlcnic_set_ms_controls.exit_crit_edge ]
  %3 = trunc i64 %off to i32
  %4 = add nsw i64 %off, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %4)
  %5 = icmp ult i64 %4, 1048575
  br i1 %5, label %if.then10, label %if.end12

if.then10:                                        ; preds = %qlcnic_set_ms_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and31.i = and i64 %off, 262143
  %conv.i = and i32 %3, 268173312
  call fastcc void @qlcnic_pci_mem_access_direct(ptr noundef %adapter, i32 noundef %conv.i, i64 noundef %and31.i, ptr noundef nonnull %data.addr, i32 noundef 1)
  br label %cleanup

if.end12:                                         ; preds = %qlcnic_set_ms_controls.exit
  %conv = and i32 %3, -16
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %mem_lock = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock, i32 noundef 0) #8
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %11)
  %cmp.i.i = icmp eq i16 %11, -32736
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i117

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65) #8, !srcloc !132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i = getelementptr i8, ptr %15, i32 1966228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %17) #8, !srcloc !132
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit

if.else.i117:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519188, i32 noundef %conv) #8
  br label %qlcnic_ind_wr.exit

qlcnic_ind_wr.exit:                               ; preds = %if.else.i117, %if.then.i
  %19 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i119 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %device1.i.i119 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device1.i.i119, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %22)
  %cmp.i.i120 = icmp eq i16 %22, -32736
  br i1 %cmp.i.i120, label %if.then.i126, label %if.else.i128

if.then.i126:                                     ; preds = %qlcnic_ind_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %add.ptr.i.i122 = getelementptr i8, ptr %26, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122, i32 65) #8, !srcloc !132
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i125 = getelementptr i8, ptr %26, i32 1966232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i125, i32 0) #8, !srcloc !132
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i125) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit130

if.else.i128:                                     ; preds = %qlcnic_ind_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i127 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519192, i32 noundef 0) #8
  br label %qlcnic_ind_wr.exit130

qlcnic_ind_wr.exit130:                            ; preds = %if.else.i128, %if.then.i126
  %29 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i132 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %device1.i.i132 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device1.i.i132, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %32)
  %cmp.i.i133 = icmp eq i16 %32, -32736
  br i1 %cmp.i.i133, label %if.then.i139, label %if.else.i141

if.then.i139:                                     ; preds = %qlcnic_ind_wr.exit130
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %add.ptr.i.i135 = getelementptr i8, ptr %36, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135, i32 65) #8, !srcloc !132
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i135) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i138 = getelementptr i8, ptr %36, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i138, i32 33554432) #8, !srcloc !132
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i138) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit143

if.else.i141:                                     ; preds = %qlcnic_ind_wr.exit130
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i140 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 2) #8
  br label %qlcnic_ind_wr.exit143

qlcnic_ind_wr.exit143:                            ; preds = %if.else.i141, %if.then.i139
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i145 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %device1.i.i145 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device1.i.i145, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %42)
  %cmp.i.i146 = icmp eq i16 %42, -32736
  br i1 %cmp.i.i146, label %if.then.i152, label %if.else.i154

if.then.i152:                                     ; preds = %qlcnic_ind_wr.exit143
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %add.ptr.i.i148 = getelementptr i8, ptr %46, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148, i32 65) #8, !srcloc !132
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i148) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i151 = getelementptr i8, ptr %46, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i151, i32 50331648) #8, !srcloc !132
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i151) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %for.body.preheader

if.else.i154:                                     ; preds = %qlcnic_ind_wr.exit143
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i153 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 3) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i154, %if.then.i152
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %j.0334 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %49 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %err.i, align 4
  %50 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i158 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %device1.i.i158 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device1.i.i158, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %53)
  %cmp.i.i159 = icmp eq i16 %53, -32736
  %54 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i159, label %if.then.i165, label %if.else.i166

if.then.i165:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %add.ptr.i.i161 = getelementptr i8, ptr %57, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161, i32 65) #8, !srcloc !132
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i161) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr4.i.i164 = getelementptr i8, ptr %57, i32 1966224
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i164) #8, !srcloc !133
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %qlcnic_ind_rd.exit

if.else.i166:                                     ; preds = %for.body
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %55, i32 0, i32 46
  %61 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_reg.i, align 4
  %call2.i = call i32 %64(ptr noundef %adapter, i32 noundef 1090519184, ptr noundef nonnull %err.i) #8
  %65 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %66)
  %cmp.i = icmp eq i32 %66, -5
  br i1 %cmp.i, label %qlcnic_ind_rd.exit.thread, label %if.else.i166.qlcnic_ind_rd.exit_crit_edge

if.else.i166.qlcnic_ind_rd.exit_crit_edge:        ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit

qlcnic_ind_rd.exit.thread:                        ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %for.inc

qlcnic_ind_rd.exit:                               ; preds = %if.else.i166.qlcnic_ind_rd.exit_crit_edge, %if.then.i165
  %data.0.i = phi i32 [ %60, %if.then.i165 ], [ %call2.i, %if.else.i166.qlcnic_ind_rd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %and23 = and i32 %data.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.end31, label %qlcnic_ind_rd.exit.for.inc_crit_edge

qlcnic_ind_rd.exit.for.inc_crit_edge:             ; preds = %qlcnic_ind_rd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %qlcnic_ind_rd.exit.for.inc_crit_edge, %qlcnic_ind_rd.exit.thread
  %inc = add nuw nsw i32 %j.0334, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.done_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end31:                                         ; preds = %qlcnic_ind_rd.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i167) #8
  %67 = ptrtoint ptr %err.i167 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %err.i167, align 4
  %68 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i169 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %device1.i.i169 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %device1.i.i169, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %71)
  %cmp.i.i170 = icmp eq i16 %71, -32736
  %72 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i170, label %if.then.i176, label %if.else.i181

if.then.i176:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %add.ptr.i.i172 = getelementptr i8, ptr %75, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172, i32 65) #8, !srcloc !132
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i172) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr2.i.i173 = getelementptr i8, ptr %75, i32 1966080
  %conv3.i.i174 = and i32 %.sink6.i, 184
  %add.ptr4.i.i175 = getelementptr i8, ptr %add.ptr2.i.i173, i32 %conv3.i.i174
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i175) #8, !srcloc !133
  %78 = call i32 @llvm.bswap.i32(i32 %77) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end4.i183

if.else.i181:                                     ; preds = %if.end31
  %hw_ops.i177 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %73, i32 0, i32 46
  %79 = ptrtoint ptr %hw_ops.i177 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_ops.i177, align 4
  %read_reg.i178 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read_reg.i178 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read_reg.i178, align 4
  %call2.i179 = call i32 %82(ptr noundef %adapter, i32 noundef %.sink6.i, ptr noundef nonnull %err.i167) #8
  %83 = ptrtoint ptr %err.i167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %err.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %84)
  %cmp.i180 = icmp eq i32 %84, -5
  br i1 %cmp.i180, label %if.else.i181.qlcnic_ind_rd.exit185_crit_edge, label %if.else.i181.if.end4.i183_crit_edge

if.else.i181.if.end4.i183_crit_edge:              ; preds = %if.else.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i183

if.else.i181.qlcnic_ind_rd.exit185_crit_edge:     ; preds = %if.else.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit185

if.end4.i183:                                     ; preds = %if.else.i181.if.end4.i183_crit_edge, %if.then.i176
  %data.0.i182 = phi i32 [ %78, %if.then.i176 ], [ %call2.i179, %if.else.i181.if.end4.i183_crit_edge ]
  br label %qlcnic_ind_rd.exit185

qlcnic_ind_rd.exit185:                            ; preds = %if.end4.i183, %if.else.i181.qlcnic_ind_rd.exit185_crit_edge
  %retval.0.i184 = phi i32 [ %data.0.i182, %if.end4.i183 ], [ -5, %if.else.i181.qlcnic_ind_rd.exit185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i167) #8
  %85 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i187 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %device1.i.i187 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %device1.i.i187, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %88)
  %cmp.i.i188 = icmp eq i16 %88, -32736
  br i1 %cmp.i.i188, label %if.then.i194, label %if.else.i196

if.then.i194:                                     ; preds = %qlcnic_ind_rd.exit185
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %add.ptr.i.i190 = getelementptr i8, ptr %92, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i190, i32 65) #8, !srcloc !132
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i190) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr2.i.i191 = getelementptr i8, ptr %92, i32 1966080
  %conv3.i.i192 = and i32 %.sink7.i, 176
  %add.ptr4.i.i193 = getelementptr i8, ptr %add.ptr2.i.i191, i32 %conv3.i.i192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  %94 = call i32 @llvm.bswap.i32(i32 %retval.0.i184) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i193, i32 %94) #8, !srcloc !132
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i193) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit198

if.else.i196:                                     ; preds = %qlcnic_ind_rd.exit185
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i195 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef %.sink7.i, i32 noundef %retval.0.i184) #8
  br label %qlcnic_ind_wr.exit198

qlcnic_ind_wr.exit198:                            ; preds = %if.else.i196, %if.then.i194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i199) #8
  %96 = ptrtoint ptr %err.i199 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %err.i199, align 4
  %97 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i201 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %device1.i.i201 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %device1.i.i201, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %100)
  %cmp.i.i202 = icmp eq i16 %100, -32736
  %101 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i202, label %if.then.i208, label %if.else.i213

if.then.i208:                                     ; preds = %qlcnic_ind_wr.exit198
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %add.ptr.i.i204 = getelementptr i8, ptr %104, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i204, i32 65) #8, !srcloc !132
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i204) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr2.i.i205 = getelementptr i8, ptr %104, i32 1966080
  %conv3.i.i206 = and i32 %.sink4.i, 188
  %add.ptr4.i.i207 = getelementptr i8, ptr %add.ptr2.i.i205, i32 %conv3.i.i206
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i207) #8, !srcloc !133
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end4.i215

if.else.i213:                                     ; preds = %qlcnic_ind_wr.exit198
  %hw_ops.i209 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %102, i32 0, i32 46
  %108 = ptrtoint ptr %hw_ops.i209 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw_ops.i209, align 4
  %read_reg.i210 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %read_reg.i210 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read_reg.i210, align 4
  %call2.i211 = call i32 %111(ptr noundef %adapter, i32 noundef %.sink4.i, ptr noundef nonnull %err.i199) #8
  %112 = ptrtoint ptr %err.i199 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %err.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %113)
  %cmp.i212 = icmp eq i32 %113, -5
  br i1 %cmp.i212, label %if.else.i213.qlcnic_ind_rd.exit217_crit_edge, label %if.else.i213.if.end4.i215_crit_edge

if.else.i213.if.end4.i215_crit_edge:              ; preds = %if.else.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i215

if.else.i213.qlcnic_ind_rd.exit217_crit_edge:     ; preds = %if.else.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit217

if.end4.i215:                                     ; preds = %if.else.i213.if.end4.i215_crit_edge, %if.then.i208
  %data.0.i214 = phi i32 [ %107, %if.then.i208 ], [ %call2.i211, %if.else.i213.if.end4.i215_crit_edge ]
  br label %qlcnic_ind_rd.exit217

qlcnic_ind_rd.exit217:                            ; preds = %if.end4.i215, %if.else.i213.qlcnic_ind_rd.exit217_crit_edge
  %retval.0.i216 = phi i32 [ %data.0.i214, %if.end4.i215 ], [ -5, %if.else.i213.qlcnic_ind_rd.exit217_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i199) #8
  %114 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i219 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %device1.i.i219 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %device1.i.i219, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %117)
  %cmp.i.i220 = icmp eq i16 %117, -32736
  br i1 %cmp.i.i220, label %if.then.i226, label %if.else.i228

if.then.i226:                                     ; preds = %qlcnic_ind_rd.exit217
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %adapter, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %add.ptr.i.i222 = getelementptr i8, ptr %121, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i222, i32 65) #8, !srcloc !132
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i222) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr2.i.i223 = getelementptr i8, ptr %121, i32 1966080
  %conv3.i.i224 = and i32 %.sink5.i, 180
  %add.ptr4.i.i225 = getelementptr i8, ptr %add.ptr2.i.i223, i32 %conv3.i.i224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  %123 = call i32 @llvm.bswap.i32(i32 %retval.0.i216) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i225, i32 %123) #8, !srcloc !132
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i225) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit230

if.else.i228:                                     ; preds = %qlcnic_ind_rd.exit217
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i227 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef %.sink5.i, i32 noundef %retval.0.i216) #8
  br label %qlcnic_ind_wr.exit230

qlcnic_ind_wr.exit230:                            ; preds = %if.else.i228, %if.then.i226
  %125 = ptrtoint ptr %data.addr to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %data.addr, align 8
  %conv44 = trunc i64 %126 to i32
  %127 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i232 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %device1.i.i232 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %device1.i.i232, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %130)
  %cmp.i.i233 = icmp eq i16 %130, -32736
  br i1 %cmp.i.i233, label %if.then.i239, label %if.else.i241

if.then.i239:                                     ; preds = %qlcnic_ind_wr.exit230
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %adapter, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 8
  %add.ptr.i.i235 = getelementptr i8, ptr %134, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235, i32 65) #8, !srcloc !132
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i235) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr2.i.i236 = getelementptr i8, ptr %134, i32 1966080
  %conv3.i.i237 = and i32 %.sink3.i, 176
  %add.ptr4.i.i238 = getelementptr i8, ptr %add.ptr2.i.i236, i32 %conv3.i.i237
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  %136 = call i32 @llvm.bswap.i32(i32 %conv44) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i238, i32 %136) #8, !srcloc !132
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i238) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit243

if.else.i241:                                     ; preds = %qlcnic_ind_wr.exit230
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i240 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef %.sink3.i, i32 noundef %conv44) #8
  br label %qlcnic_ind_wr.exit243

qlcnic_ind_wr.exit243:                            ; preds = %if.else.i241, %if.then.i239
  %shr = lshr i64 %126, 32
  %conv49 = trunc i64 %shr to i32
  %138 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i245 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %device1.i.i245 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %device1.i.i245, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %141)
  %cmp.i.i246 = icmp eq i16 %141, -32736
  br i1 %cmp.i.i246, label %if.then.i252, label %if.else.i254

if.then.i252:                                     ; preds = %qlcnic_ind_wr.exit243
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %adapter, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 8
  %add.ptr.i.i248 = getelementptr i8, ptr %145, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248, i32 65) #8, !srcloc !132
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i248) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr2.i.i249 = getelementptr i8, ptr %145, i32 1966080
  %conv3.i.i250 = and i32 %.sink2.i, 180
  %add.ptr4.i.i251 = getelementptr i8, ptr %add.ptr2.i.i249, i32 %conv3.i.i250
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  %147 = call i32 @llvm.bswap.i32(i32 %conv49) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i251, i32 %147) #8, !srcloc !132
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i251) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit256

if.else.i254:                                     ; preds = %qlcnic_ind_wr.exit243
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i253 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef %.sink2.i, i32 noundef %conv49) #8
  br label %qlcnic_ind_wr.exit256

qlcnic_ind_wr.exit256:                            ; preds = %if.else.i254, %if.then.i252
  %149 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i258 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %device1.i.i258 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %device1.i.i258, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %152)
  %cmp.i.i259 = icmp eq i16 %152, -32736
  br i1 %cmp.i.i259, label %if.then.i265, label %if.else.i267

if.then.i265:                                     ; preds = %qlcnic_ind_wr.exit256
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %adapter, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %add.ptr.i.i261 = getelementptr i8, ptr %156, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261, i32 65) #8, !srcloc !132
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i261) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i264 = getelementptr i8, ptr %156, i32 1966224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i264, i32 100663296) #8, !srcloc !132
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i264) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit269

if.else.i267:                                     ; preds = %qlcnic_ind_wr.exit256
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i266 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 6) #8
  br label %qlcnic_ind_wr.exit269

qlcnic_ind_wr.exit269:                            ; preds = %if.else.i267, %if.then.i265
  %159 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i271 = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 8
  %161 = ptrtoint ptr %device1.i.i271 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %device1.i.i271, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %162)
  %cmp.i.i272 = icmp eq i16 %162, -32736
  br i1 %cmp.i.i272, label %if.then.i278, label %if.else.i280

if.then.i278:                                     ; preds = %qlcnic_ind_wr.exit269
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %adapter, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %add.ptr.i.i274 = getelementptr i8, ptr %166, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i274, i32 65) #8, !srcloc !132
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i274) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i277 = getelementptr i8, ptr %166, i32 1966224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i277, i32 117440512) #8, !srcloc !132
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i277) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %for.body58.preheader

if.else.i280:                                     ; preds = %qlcnic_ind_wr.exit269
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i279 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 7) #8
  br label %for.body58.preheader

for.body58.preheader:                             ; preds = %if.else.i280, %if.then.i278
  br label %for.body58

for.body58:                                       ; preds = %for.inc66.for.body58_crit_edge, %for.body58.preheader
  %j.1335 = phi i32 [ %inc67, %for.inc66.for.body58_crit_edge ], [ 0, %for.body58.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i283) #8
  %169 = ptrtoint ptr %err.i283 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %err.i283, align 4
  %170 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i285 = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 8
  %172 = ptrtoint ptr %device1.i.i285 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %device1.i.i285, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %173)
  %cmp.i.i286 = icmp eq i16 %173, -32736
  %174 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i286, label %if.then.i292, label %if.else.i297

if.then.i292:                                     ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %add.ptr.i.i288 = getelementptr i8, ptr %177, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i288, i32 65) #8, !srcloc !132
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i288) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr4.i.i291 = getelementptr i8, ptr %177, i32 1966224
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i291) #8, !srcloc !133
  %180 = call i32 @llvm.bswap.i32(i32 %179) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %qlcnic_ind_rd.exit301

if.else.i297:                                     ; preds = %for.body58
  %hw_ops.i293 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %175, i32 0, i32 46
  %181 = ptrtoint ptr %hw_ops.i293 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw_ops.i293, align 4
  %read_reg.i294 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %read_reg.i294 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read_reg.i294, align 4
  %call2.i295 = call i32 %184(ptr noundef %adapter, i32 noundef 1090519184, ptr noundef nonnull %err.i283) #8
  %185 = ptrtoint ptr %err.i283 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %err.i283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %186)
  %cmp.i296 = icmp eq i32 %186, -5
  br i1 %cmp.i296, label %qlcnic_ind_rd.exit301.thread, label %if.else.i297.qlcnic_ind_rd.exit301_crit_edge

if.else.i297.qlcnic_ind_rd.exit301_crit_edge:     ; preds = %if.else.i297
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit301

qlcnic_ind_rd.exit301.thread:                     ; preds = %if.else.i297
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i283) #8
  br label %for.inc66

qlcnic_ind_rd.exit301:                            ; preds = %if.else.i297.qlcnic_ind_rd.exit301_crit_edge, %if.then.i292
  %data.0.i298 = phi i32 [ %180, %if.then.i292 ], [ %call2.i295, %if.else.i297.qlcnic_ind_rd.exit301_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i283) #8
  %and61 = and i32 %data.0.i298, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %qlcnic_ind_rd.exit301.done_crit_edge, label %qlcnic_ind_rd.exit301.for.inc66_crit_edge

qlcnic_ind_rd.exit301.for.inc66_crit_edge:        ; preds = %qlcnic_ind_rd.exit301
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

qlcnic_ind_rd.exit301.done_crit_edge:             ; preds = %qlcnic_ind_rd.exit301
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.inc66:                                        ; preds = %qlcnic_ind_rd.exit301.for.inc66_crit_edge, %qlcnic_ind_rd.exit301.thread
  %inc67 = add nuw nsw i32 %j.1335, 1
  %exitcond337.not = icmp eq i32 %inc67, 1000
  br i1 %exitcond337.not, label %if.then71, label %for.inc66.for.body58_crit_edge

for.inc66.for.body58_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58

if.then71:                                        ; preds = %for.inc66
  %call72 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.qlcnic_pci_mem_write_2M) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.done_crit_edge, label %do.end

if.then71.done_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end:                                           ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %done

done:                                             ; preds = %do.end, %if.then71.done_crit_edge, %qlcnic_ind_rd.exit301.done_crit_edge, %for.inc.done_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %if.then71.done_crit_edge ], [ 0, %qlcnic_ind_rd.exit301.done_crit_edge ], [ -5, %for.inc.done_crit_edge ]
  %189 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adapter, align 8
  %mem_lock78 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %190, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %mem_lock78) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %ret.0, %done ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_pci_mem_access_direct(ptr nocapture noundef readonly %adapter, i32 noundef %window, i64 noundef %off, ptr nocapture noundef %data, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %mem_lock = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %window)
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %ocm_win_crb = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ocm_win_crb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ocm_win_crb, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #8, !srcloc !132
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %ocm_win_crb3 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ocm_win_crb3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ocm_win_crb3, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %12 = trunc i64 %off to i32
  %conv = add i32 %12, 786432
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %19 = zext i32 %18 to i64
  %20 = zext i32 %17 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %data, align 8
  br label %do.body8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i64 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %shr.i = lshr i64 %26, 32
  %conv3.i = trunc i64 %shr.i to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #8
  %add.ptr.i1 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %28) #8, !srcloc !132
  br label %do.body8

do.body8:                                         ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %ocm_win_crb12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %ocm_win_crb12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ocm_win_crb12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #8, !srcloc !132
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %ocm_win_crb16 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ocm_win_crb16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ocm_win_crb16, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %mem_lock21 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mem_lock21) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_pci_mem_read_2M(ptr noundef %adapter, i64 noundef %off, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %err.i146 = alloca i32, align 4
  %err.i127 = alloca i32, align 4
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %off, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i64 %off, -12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217727, i64 %0)
  %1 = icmp ult i64 %0, 134217727
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435455, i64 %off)
  %cmp2 = icmp ult i64 %off, 268435455
  %or.cond74 = or i1 %cmp2, %1
  br i1 %or.cond74, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and.i = and i64 %off, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.not.i, i32 1090519208, i32 1090519224
  %spec.select186 = select i1 %tobool.not.i, i32 1090519212, i32 1090519228
  %2 = trunc i64 %off to i32
  %3 = add nsw i64 %off, -8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048575, i64 %3)
  %4 = icmp ult i64 %3, 1048575
  br i1 %4, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %2, 268173312
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %mem_lock.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock.i, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %ocm_win_crb.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ocm_win_crb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ocm_win_crb.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #8, !srcloc !132
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %ocm_win_crb3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ocm_win_crb3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ocm_win_crb3.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %17 = and i32 %2, 262143
  %conv.i75 = or i32 %17, 786432
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i75
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %ocm_win_crb12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ocm_win_crb12.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ocm_win_crb12.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #8, !srcloc !132
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %ocm_win_crb16.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ocm_win_crb16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ocm_win_crb16.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  %mem_lock21.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mem_lock21.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 8
  %mem_lock = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %42, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock, i32 noundef 0) #8
  %conv = and i32 %2, -16
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %43 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %device1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %46)
  %cmp.i.i = icmp eq i16 %46, -32736
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i77

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %add.ptr.i.i76 = getelementptr i8, ptr %50, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76, i32 65) #8, !srcloc !132
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i = getelementptr i8, ptr %50, i32 1966228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %52) #8, !srcloc !132
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit

if.else.i77:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519188, i32 noundef %conv) #8
  br label %qlcnic_ind_wr.exit

qlcnic_ind_wr.exit:                               ; preds = %if.else.i77, %if.then.i
  %54 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i79 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %device1.i.i79 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %device1.i.i79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %57)
  %cmp.i.i80 = icmp eq i16 %57, -32736
  br i1 %cmp.i.i80, label %if.then.i86, label %if.else.i88

if.then.i86:                                      ; preds = %qlcnic_ind_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %add.ptr.i.i82 = getelementptr i8, ptr %61, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 65) #8, !srcloc !132
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i85 = getelementptr i8, ptr %61, i32 1966232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i85, i32 0) #8, !srcloc !132
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i85) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit90

if.else.i88:                                      ; preds = %qlcnic_ind_wr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i87 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519192, i32 noundef 0) #8
  br label %qlcnic_ind_wr.exit90

qlcnic_ind_wr.exit90:                             ; preds = %if.else.i88, %if.then.i86
  %64 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i92 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %device1.i.i92 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %device1.i.i92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %67)
  %cmp.i.i93 = icmp eq i16 %67, -32736
  br i1 %cmp.i.i93, label %if.then.i99, label %if.else.i101

if.then.i99:                                      ; preds = %qlcnic_ind_wr.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %add.ptr.i.i95 = getelementptr i8, ptr %71, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 65) #8, !srcloc !132
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i98 = getelementptr i8, ptr %71, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i98, i32 33554432) #8, !srcloc !132
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i98) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %qlcnic_ind_wr.exit103

if.else.i101:                                     ; preds = %qlcnic_ind_wr.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i100 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 2) #8
  br label %qlcnic_ind_wr.exit103

qlcnic_ind_wr.exit103:                            ; preds = %if.else.i101, %if.then.i99
  %74 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i105 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %device1.i.i105 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %device1.i.i105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %77)
  %cmp.i.i106 = icmp eq i16 %77, -32736
  br i1 %cmp.i.i106, label %if.then.i112, label %if.else.i114

if.then.i112:                                     ; preds = %qlcnic_ind_wr.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adapter, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %add.ptr.i.i108 = getelementptr i8, ptr %81, i32 1245280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 65) #8, !srcloc !132
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %add.ptr4.i.i111 = getelementptr i8, ptr %81, i32 1966224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i111, i32 50331648) #8, !srcloc !132
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i111) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  br label %for.body.preheader

if.else.i114:                                     ; preds = %qlcnic_ind_wr.exit103
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i113 = tail call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %adapter, i32 noundef 1090519184, i32 noundef 3) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i114, %if.then.i112
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %j.0187 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %84 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %err.i, align 4
  %85 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i118 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %device1.i.i118 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %device1.i.i118, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %88)
  %cmp.i.i119 = icmp eq i16 %88, -32736
  %89 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i119, label %if.then.i125, label %if.else.i126

if.then.i125:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %add.ptr.i.i121 = getelementptr i8, ptr %92, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 65) #8, !srcloc !132
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr4.i.i124 = getelementptr i8, ptr %92, i32 1966224
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i124) #8, !srcloc !133
  %95 = call i32 @llvm.bswap.i32(i32 %94) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %qlcnic_ind_rd.exit

if.else.i126:                                     ; preds = %for.body
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %90, i32 0, i32 46
  %96 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read_reg.i, align 4
  %call2.i = call i32 %99(ptr noundef %adapter, i32 noundef 1090519184, ptr noundef nonnull %err.i) #8
  %100 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %101)
  %cmp.i = icmp eq i32 %101, -5
  br i1 %cmp.i, label %qlcnic_ind_rd.exit.thread, label %if.else.i126.qlcnic_ind_rd.exit_crit_edge

if.else.i126.qlcnic_ind_rd.exit_crit_edge:        ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit

qlcnic_ind_rd.exit.thread:                        ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %for.inc

qlcnic_ind_rd.exit:                               ; preds = %if.else.i126.qlcnic_ind_rd.exit_crit_edge, %if.then.i125
  %data.0.i = phi i32 [ %95, %if.then.i125 ], [ %call2.i, %if.else.i126.qlcnic_ind_rd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %and23 = and i32 %data.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.else, label %qlcnic_ind_rd.exit.for.inc_crit_edge

qlcnic_ind_rd.exit.for.inc_crit_edge:             ; preds = %qlcnic_ind_rd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %qlcnic_ind_rd.exit.for.inc_crit_edge, %qlcnic_ind_rd.exit.thread
  %inc = add nuw nsw i32 %j.0187, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then30, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then30:                                        ; preds = %for.inc
  %call31 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.qlcnic_pci_mem_read_2M) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end41_crit_edge, label %do.end

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  br label %if.end41

if.else:                                          ; preds = %qlcnic_ind_rd.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i127) #8
  %104 = ptrtoint ptr %err.i127 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %err.i127, align 4
  %105 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i129 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %device1.i.i129 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %device1.i.i129, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %108)
  %cmp.i.i130 = icmp eq i16 %108, -32736
  %109 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i130, label %if.then.i136, label %if.else.i141

if.then.i136:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %add.ptr.i.i132 = getelementptr i8, ptr %112, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i132, i32 65) #8, !srcloc !132
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr2.i.i133 = getelementptr i8, ptr %112, i32 1966080
  %conv3.i.i134 = and i32 %spec.select186, 188
  %add.ptr4.i.i135 = getelementptr i8, ptr %add.ptr2.i.i133, i32 %conv3.i.i134
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i135) #8, !srcloc !133
  %115 = call i32 @llvm.bswap.i32(i32 %114) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end4.i143

if.else.i141:                                     ; preds = %if.else
  %hw_ops.i137 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %110, i32 0, i32 46
  %116 = ptrtoint ptr %hw_ops.i137 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_ops.i137, align 4
  %read_reg.i138 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %read_reg.i138 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read_reg.i138, align 4
  %call2.i139 = call i32 %119(ptr noundef %adapter, i32 noundef %spec.select186, ptr noundef nonnull %err.i127) #8
  %120 = ptrtoint ptr %err.i127 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %err.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %121)
  %cmp.i140 = icmp eq i32 %121, -5
  br i1 %cmp.i140, label %if.else.i141.qlcnic_ind_rd.exit145_crit_edge, label %if.else.i141.if.end4.i143_crit_edge

if.else.i141.if.end4.i143_crit_edge:              ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i143

if.else.i141.qlcnic_ind_rd.exit145_crit_edge:     ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit145

if.end4.i143:                                     ; preds = %if.else.i141.if.end4.i143_crit_edge, %if.then.i136
  %data.0.i142 = phi i32 [ %115, %if.then.i136 ], [ %call2.i139, %if.else.i141.if.end4.i143_crit_edge ]
  br label %qlcnic_ind_rd.exit145

qlcnic_ind_rd.exit145:                            ; preds = %if.end4.i143, %if.else.i141.qlcnic_ind_rd.exit145_crit_edge
  %retval.0.i144 = phi i32 [ %data.0.i142, %if.end4.i143 ], [ -5, %if.else.i141.qlcnic_ind_rd.exit145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i127) #8
  %conv36 = zext i32 %retval.0.i144 to i64
  %shl = shl nuw i64 %conv36, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i146) #8
  %122 = ptrtoint ptr %err.i146 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %err.i146, align 4
  %123 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev.i.i, align 8
  %device1.i.i148 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %device1.i.i148 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %device1.i.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32736, i16 %126)
  %cmp.i.i149 = icmp eq i16 %126, -32736
  %127 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter, align 8
  br i1 %cmp.i.i149, label %if.then.i155, label %if.else.i160

if.then.i155:                                     ; preds = %qlcnic_ind_rd.exit145
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %add.ptr.i.i151 = getelementptr i8, ptr %130, i32 1245280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151, i32 65) #8, !srcloc !132
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %add.ptr2.i.i152 = getelementptr i8, ptr %130, i32 1966080
  %conv3.i.i153 = and i32 %spec.select, 184
  %add.ptr4.i.i154 = getelementptr i8, ptr %add.ptr2.i.i152, i32 %conv3.i.i153
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i154) #8, !srcloc !133
  %133 = call i32 @llvm.bswap.i32(i32 %132) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  br label %if.end4.i162

if.else.i160:                                     ; preds = %qlcnic_ind_rd.exit145
  %hw_ops.i156 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %128, i32 0, i32 46
  %134 = ptrtoint ptr %hw_ops.i156 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw_ops.i156, align 4
  %read_reg.i157 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %read_reg.i157 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read_reg.i157, align 4
  %call2.i158 = call i32 %137(ptr noundef %adapter, i32 noundef %spec.select, ptr noundef nonnull %err.i146) #8
  %138 = ptrtoint ptr %err.i146 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %err.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %139)
  %cmp.i159 = icmp eq i32 %139, -5
  br i1 %cmp.i159, label %if.else.i160.qlcnic_ind_rd.exit164_crit_edge, label %if.else.i160.if.end4.i162_crit_edge

if.else.i160.if.end4.i162_crit_edge:              ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i162

if.else.i160.qlcnic_ind_rd.exit164_crit_edge:     ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_ind_rd.exit164

if.end4.i162:                                     ; preds = %if.else.i160.if.end4.i162_crit_edge, %if.then.i155
  %data.0.i161 = phi i32 [ %133, %if.then.i155 ], [ %call2.i158, %if.else.i160.if.end4.i162_crit_edge ]
  br label %qlcnic_ind_rd.exit164

qlcnic_ind_rd.exit164:                            ; preds = %if.end4.i162, %if.else.i160.qlcnic_ind_rd.exit164_crit_edge
  %retval.0.i163 = phi i32 [ %data.0.i161, %if.end4.i162 ], [ -5, %if.else.i160.qlcnic_ind_rd.exit164_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i146) #8
  %conv40 = sext i32 %retval.0.i163 to i64
  %or = or i64 %shl, %conv40
  %140 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %or, ptr %data, align 8
  br label %if.end41

if.end41:                                         ; preds = %qlcnic_ind_rd.exit164, %do.end, %if.then30.if.end41_crit_edge
  %ret.0 = phi i32 [ 0, %qlcnic_ind_rd.exit164 ], [ -5, %do.end ], [ -5, %if.then30.if.end41_crit_edge ]
  %141 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adapter, align 8
  %mem_lock43 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %142, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %mem_lock43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ %ret.0, %if.end41 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_get_board_info(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %board_type = alloca i32, align 4
  %magic = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %board_type) #8
  %0 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %board_type, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic) #8
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %magic, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %pdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %3 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1, align 8
  %call = call i32 @qlcnic_rom_fast_read(ptr noundef %adapter, i32 noundef 16680, ptr noundef nonnull %magic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %6)
  %cmp.not = icmp eq i32 %6, 305419896
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %6) #11
  br label %cleanup40

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @qlcnic_rom_fast_read(ptr noundef %adapter, i32 noundef 16392, ptr noundef nonnull %board_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup40_crit_edge

if.end3.cleanup40_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end7:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board_type, align 4
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %board_type8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %board_type8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %board_type8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %8)
  %cmp9 = icmp eq i32 %8, 41
  br i1 %cmp9, label %if.then11, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then11:                                        ; preds = %if.end7
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call13 = call i32 %17(ptr noundef %adapter, i32 noundef 154140684, ptr noundef nonnull %err) #8
  %18 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %19)
  %cmp14 = icmp eq i32 %19, -5
  br i1 %cmp14, label %if.then11.cleanup40_crit_edge, label %if.end17

if.then11.cleanup40_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end17:                                         ; preds = %if.then11
  %and = and i32 %call13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.end22.thread, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %board_type, align 4
  br label %sw.bb27

if.end22:                                         ; preds = %if.end17.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %21 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %board_type, align 4
  %22 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %.pr, label %do.end36 [
    i32 34, label %if.end22.sw.bb_crit_edge
    i32 40, label %if.end22.sw.bb_crit_edge59
    i32 49, label %if.end22.sw.bb_crit_edge60
    i32 35, label %if.end22.sw.bb_crit_edge61
    i32 37, label %if.end22.sw.bb_crit_edge62
    i32 38, label %if.end22.sw.bb_crit_edge63
    i32 42, label %if.end22.sw.bb_crit_edge64
    i32 43, label %if.end22.sw.bb_crit_edge65
    i32 50, label %if.end22.sw.bb_crit_edge66
    i32 39, label %if.end22.sw.bb_crit_edge67
    i32 33, label %if.end22.sw.bb24_crit_edge
    i32 36, label %if.end22.sw.bb24_crit_edge68
    i32 41, label %if.end22.sw.bb24_crit_edge69
    i32 128, label %if.end22.sw.bb27_crit_edge
  ]

if.end22.sw.bb27_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

if.end22.sw.bb24_crit_edge69:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end22.sw.bb24_crit_edge68:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end22.sw.bb24_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

if.end22.sw.bb_crit_edge67:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge66:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge65:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge64:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge63:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge62:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge61:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge60:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge59:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge59, %if.end22.sw.bb_crit_edge60, %if.end22.sw.bb_crit_edge61, %if.end22.sw.bb_crit_edge62, %if.end22.sw.bb_crit_edge63, %if.end22.sw.bb_crit_edge64, %if.end22.sw.bb_crit_edge65, %if.end22.sw.bb_crit_edge66, %if.end22.sw.bb_crit_edge67
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %port_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %port_type to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %port_type, align 2
  br label %cleanup40

sw.bb24:                                          ; preds = %if.end22.sw.bb24_crit_edge, %if.end22.sw.bb24_crit_edge68, %if.end22.sw.bb24_crit_edge69
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %port_type26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %port_type26 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %port_type26, align 2
  br label %cleanup40

sw.bb27:                                          ; preds = %if.end22.sw.bb27_crit_edge, %if.end22.thread
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %29 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp29 = icmp ult i8 %30, 2
  %conv31 = select i1 %cmp29, i16 2, i16 1
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %port_type33 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %port_type33 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv31, ptr %port_type33, align 2
  br label %cleanup40

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.33, i32 noundef %.pr) #11
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %port_type39 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %port_type39 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %port_type39, align 2
  br label %cleanup40

cleanup40:                                        ; preds = %do.end36, %sw.bb27, %sw.bb24, %sw.bb, %if.then11.cleanup40_crit_edge, %if.end3.cleanup40_crit_edge, %do.end, %entry.cleanup40_crit_edge
  %retval.1 = phi i32 [ -5, %do.end ], [ -5, %entry.cleanup40_crit_edge ], [ -5, %if.end3.cleanup40_crit_edge ], [ 0, %do.end36 ], [ 0, %sw.bb27 ], [ 0, %sw.bb24 ], [ 0, %sw.bb ], [ -5, %if.then11.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %board_type) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_rom_fast_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_config_led(ptr noundef %adapter, i32 noundef %state, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.qlcnic_nic_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #8
  %0 = getelementptr inbounds i8, ptr %req, i32 32
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 140776143060992, ptr %req, align 8
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %3 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %portnum, align 2
  %conv = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %or = or i64 %shl, 4
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %req_hdr = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %req_hdr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %req_hdr, align 8
  %conv1 = zext i32 %rate to i64
  %shl2 = shl nuw i64 %conv1, 32
  %or5 = or i64 %shl2, %conv
  %7 = tail call i64 @llvm.bswap.i64(i64 %or5)
  %words = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %words to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %words, align 8
  %conv6 = zext i32 %state to i64
  %9 = tail call i64 @llvm.bswap.i64(i64 %conv6)
  %arrayidx8 = getelementptr inbounds %struct.qlcnic_nic_req, ptr %req, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx8, align 8
  %call = call fastcc i32 @qlcnic_send_cmd_descs(ptr noundef %adapter, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_get_beacon_state(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #8
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %extra_capability = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 41
  %3 = ptrtoint ptr %extra_capability to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extra_capability, align 8
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %8(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then3:                                         ; preds = %if.then
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %hw_ops.i30 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops.i30, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then3.if.then6_crit_edge, label %qlcnic_issue_cmd.exit

if.then3.if.then6_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

qlcnic_issue_cmd.exit:                            ; preds = %if.then3
  %call.i31 = call i32 %14(ptr noundef %adapter, ptr noundef nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool5.not = icmp eq i32 %call.i31, 0
  br i1 %tobool5.not, label %if.else, label %qlcnic_issue_cmd.exit.if.then6_crit_edge

qlcnic_issue_cmd.exit.if.then6_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %qlcnic_issue_cmd.exit.if.then6_crit_edge, %if.then3.if.then6_crit_edge
  %retval.0.i34 = phi i32 [ %call.i31, %qlcnic_issue_cmd.exit.if.then6_crit_edge ], [ -5, %if.then3.if.then6_crit_edge ]
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i34) #11
  br label %if.end20

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arg, align 4
  %arrayidx7 = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7, align 4
  %trunc = trunc i32 %20 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %trunc, label %if.else.if.end20_crit_edge [
    i8 13, label %if.then10
    i8 12, label %if.then16
  ]

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_state11 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %beacon_state11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %beacon_state11, align 8
  br label %if.end20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_state17 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %beacon_state17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %beacon_state17, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then10, %if.else.if.end20_crit_edge, %if.then6, %if.then.if.end20_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_get_func_no(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %func = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func) #8
  %0 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %func, align 4, !annotation !157
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 68, ptr noundef nonnull %func) #8
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 1253648
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !133
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  %9 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %func, align 4
  %sub = sub i32 %10, %8
  %div6 = lshr i32 %sub, 12
  %conv = trunc i32 %div6 to i8
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %pci_func to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %pci_func, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_read_crb(ptr noundef %adapter, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  %data = alloca i32, align 4
  %qmdata = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qmdata)
  %1 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %1)
  %2 = icmp eq i64 %1, 75497472
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1046528
  %7 = trunc i64 %offset to i32
  %idx.ext.i = add nsw i32 %7, -75497472
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext.i
  %mem_lock.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock.i, i32 noundef 0) #8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #8
  %15 = ptrtoint ptr %qmdata to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %qmdata, align 8
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %mem_lock4.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mem_lock4.i) #8
  %18 = call ptr @memcpy(ptr %buf, ptr %qmdata, i32 %size)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %4, i32 0, i32 46
  %19 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_reg, align 4
  %conv = trunc i64 %offset to i32
  %call = call i32 %22(ptr noundef %adapter, i32 noundef %conv, ptr noundef nonnull %err) #8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call, ptr %data, align 4
  %24 = call ptr @memcpy(ptr %buf, ptr %data, i32 %size)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qmdata)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_write_crb(ptr noundef %adapter, ptr nocapture noundef readonly %buf, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %qmdata = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qmdata)
  %1 = ptrtoint ptr %qmdata to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %qmdata, align 8
  %2 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %2)
  %3 = icmp eq i64 %2, 75497472
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %qmdata, ptr %buf, i32 %size)
  %5 = ptrtoint ptr %qmdata to i32
  call void @__asan_load8_noabort(i32 %5)
  %qmdata.0.qmdata.0.qmdata.0. = load i64, ptr %qmdata, align 8
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1046528
  %10 = trunc i64 %offset to i32
  %idx.ext.i = add nsw i32 %10, -75497472
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext.i
  %mem_lock.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mem_lock.i, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %conv.i.i = trunc i64 %qmdata.0.qmdata.0.qmdata.0. to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %11) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %shr.i.i = lshr i64 %qmdata.0.qmdata.0.qmdata.0., 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #8, !srcloc !132
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %mem_lock4.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mem_lock4.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %data, ptr %buf, i32 %size)
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_ops, align 4
  %write_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_reg, align 4
  %conv = trunc i64 %offset to i32
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %call = tail call i32 %21(ptr noundef %adapter, i32 noundef %conv, i32 noundef %data.0.data.0.data.0.) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qmdata)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_api_lock(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %0 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %entry
  %timeout.052.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end25.i.while.body.i_crit_edge ]
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %6(ptr noundef %adapter, i32 noundef 101826600, ptr noundef nonnull %err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %while.body.i.qlcnic_pcie_sem_lock.exit_crit_edge, label %if.end.i

while.body.i.qlcnic_pcie_sem_lock.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_pcie_sem_lock.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %timeout.052.i)
  %exitcond.i = icmp eq i32 %timeout.052.i, 9999
  br i1 %exitcond.i, label %if.then3.i, label %if.end25.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev22.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %7 = ptrtoint ptr %pdev22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev22.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.6, i32 noundef 5) #11
  br label %qlcnic_pcie_sem_lock.exit

if.end25.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %timeout.052.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 257697600) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25.i.while.body.i_crit_edge, label %if.end25.i.qlcnic_pcie_sem_lock.exit_crit_edge

if.end25.i.qlcnic_pcie_sem_lock.exit_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_pcie_sem_lock.exit

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

qlcnic_pcie_sem_lock.exit:                        ; preds = %if.end25.i.qlcnic_pcie_sem_lock.exit_crit_edge, %if.then3.i, %while.body.i.qlcnic_pcie_sem_lock.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %if.then3.i ], [ 0, %if.end25.i.qlcnic_pcie_sem_lock.exit_crit_edge ], [ 0, %while.body.i.qlcnic_pcie_sem_lock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_82xx_api_unlock(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %0 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err.i, align 4
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %6(ptr noundef %adapter, i32 noundef 101826604, ptr noundef nonnull %err.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_shutdown(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %3) #8
  %nic_ops.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 43
  %4 = ptrtoint ptr %nic_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_ops.i, align 8
  %cancel_idc_work.i = getelementptr inbounds %struct.qlcnic_nic_template, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cancel_idc_work.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cancel_idc_work.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.qlcnic_cancel_idc_work.exit_crit_edge, label %if.then.i

entry.qlcnic_cancel_idc_work.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_cancel_idc_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %1) #8
  br label %qlcnic_cancel_idc_work.exit

qlcnic_cancel_idc_work.exit:                      ; preds = %if.then.i, %entry.qlcnic_cancel_idc_work.exit_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %qlcnic_cancel_idc_work.exit.if.end_crit_edge, label %if.then

qlcnic_cancel_idc_work.exit.if.end_crit_edge:     ; preds = %qlcnic_cancel_idc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %qlcnic_cancel_idc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_down(ptr noundef %1, ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_cancel_idc_work.exit.if.end_crit_edge
  tail call void @qlcnic_clr_all_drv_state(ptr noundef %1, i8 noundef zeroext 0) #8
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %10 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %err.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg.i, align 4
  %call.i = call i32 %16(ptr noundef %1, i32 noundef 136323460, ptr noundef nonnull %err.i) #8
  %portnum.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i15 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i15, label %if.end.qlcnic_wol_supported.exit_crit_edge, label %if.then.i16

if.end.qlcnic_wol_supported.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_wol_supported.exit

if.then.i16:                                      ; preds = %if.end
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %hw_ops2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %hw_ops2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops2.i, align 4
  %read_reg3.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read_reg3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg3.i, align 4
  %call4.i = call i32 %24(ptr noundef %1, i32 noundef 136323464, ptr noundef nonnull %err.i) #8
  %25 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %26)
  %cmp.i = icmp eq i32 %26, -5
  br i1 %cmp.i, label %if.then.i16.if.then4_crit_edge, label %if.end.i

if.then.i16.if.then4_crit_edge:                   ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i:                                         ; preds = %if.then.i16
  %27 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %portnum.i, align 2
  %conv8.i = zext i8 %28 to i32
  %shl9.i = shl nuw i32 1, %conv8.i
  %and10.i = and i32 %shl9.i, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.qlcnic_wol_supported.exit_crit_edge, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i.qlcnic_wol_supported.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_wol_supported.exit

qlcnic_wol_supported.exit:                        ; preds = %if.end.i.qlcnic_wol_supported.exit_crit_edge, %if.end.qlcnic_wol_supported.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %if.end6

if.then4:                                         ; preds = %if.end.i.if.then4_crit_edge, %if.then.i16.if.then4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call5 = call i32 @device_wakeup_enable(ptr noundef %dev) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %qlcnic_wol_supported.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_down(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_clr_all_drv_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_82xx_resume(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %nic_ops.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %2 = ptrtoint ptr %nic_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_ops.i, align 8
  %start_firmware.i = getelementptr inbounds %struct.qlcnic_nic_template, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start_firmware.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start_firmware.i, align 4
  %call.i = tail call i32 %5(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @qlcnic_up(ptr noundef %adapter, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_restore_indev_addr(ptr noundef %1, i32 noundef 1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %err.0 = phi i32 [ %call4, %if.then3.if.end8_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.if.end8_crit_edge ]
  tail call void @netif_device_attach(ptr noundef %1) #8
  tail call void @qlcnic_schedule_work(ptr noundef %adapter, ptr noundef nonnull @qlcnic_fw_poll_work, i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %err.0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_up(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_restore_indev_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_schedule_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_fw_poll_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_update_cmd_producer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_alloc_lb_filters_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !101, !102, !104, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 323, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_pcie_sem_lock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_pcie_sem_lock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 327, i32 6}
!10 = !{ptr @qlcnic_pcie_sem_lock._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qlcnic_pcie_sem_lock._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @qlcnic_pcie_sem_lock._entry.8, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 331, i32 5}
!14 = !{ptr @qlcnic_pcie_sem_lock._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 788, i32 3}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qlcnic_82xx_set_rx_coalesce._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @qlcnic_82xx_set_rx_coalesce._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 809, i32 7}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 845, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qlcnic_82xx_config_hw_lro._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @qlcnic_82xx_config_hw_lro._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 872, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @qlcnic_config_bridged_mode._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @qlcnic_config_bridged_mode._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 892, i32 19}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 930, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @qlcnic_82xx_config_rss._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @qlcnic_82xx_config_rss._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 955, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qlcnic_82xx_config_ipaddr._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @qlcnic_82xx_config_ipaddr._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 973, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @qlcnic_82xx_linkevent_request._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @qlcnic_82xx_linkevent_request._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1198, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @qlcnic_82xx_hw_write_wx_2M._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @qlcnic_82xx_hw_write_wx_2M._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1228, i32 2}
!58 = !{ptr @qlcnic_82xx_hw_read_wx_2M._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @qlcnic_82xx_hw_read_wx_2M._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__func__.qlcnic_pci_mem_write_2M, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1388, i32 7}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1389, i32 4}
!64 = !{ptr @qlcnic_pci_mem_write_2M._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @qlcnic_pci_mem_write_2M._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__func__.qlcnic_pci_mem_read_2M, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1441, i32 7}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1442, i32 4}
!70 = !{ptr @qlcnic_pci_mem_read_2M._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qlcnic_pci_mem_read_2M._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1469, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qlcnic_82xx_get_board_info._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @qlcnic_82xx_get_board_info._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1511, i32 3}
!79 = !{ptr @qlcnic_82xx_get_board_info._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @qlcnic_82xx_get_board_info._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1554, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @qlcnic_82xx_config_led._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @qlcnic_82xx_config_led._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1573, i32 9}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1672, i32 3}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @qlcnic_82xx_resume._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @qlcnic_82xx_resume._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @__qlcnic_set_multi.bcast_addr, !94, !"bcast_addr", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 533, i32 18}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 715, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qlcnic_set_fw_loopback._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qlcnic_set_fw_loopback._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 999, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @qlcnic_send_lro_cleanup._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @qlcnic_send_lro_cleanup._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @crb_128M_2M_map, !108, !"crb_128M_2M_map", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 51, i32 1}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1157, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qlcnic_pci_set_crbwindow_2M._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @qlcnic_pci_set_crbwindow_2M._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 1164, i32 4}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @qlcnic_pci_set_crbwindow_2M._entry.49, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @qlcnic_pci_set_crbwindow_2M._entry_ptr.52, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @crb_hub_agt, !120, !"crb_hub_agt", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_hw.c", i32 211, i32 23}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2158073157}
!132 = !{i64 6135826}
!133 = !{i64 6136244}
!134 = !{i64 2158073751}
!135 = !{i64 2158074225}
!136 = !{i64 2158074437}
!137 = !{i64 2158075031}
!138 = !{i64 2158075276}
!139 = !{i64 2158075870}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2158082895}
!142 = !{i8 0, i8 2}
!143 = !{i64 2158136431}
!144 = !{i64 2158137347}
!145 = !{i64 2158133756}
!146 = !{i64 2158134361}
!147 = !{i64 2158139966}
!148 = !{i64 2158140949}
!149 = !{i64 2158143800}
!150 = !{i64 2158144510}
!151 = !{i64 2158068258}
!152 = !{i64 2158068708}
!153 = !{i64 2158069090}
!154 = !{i64 2158069507}
!155 = !{i64 2158144745}
!156 = !{i64 2158145440}
!157 = !{!"auto-init"}
!158 = !{i64 2158158021}
