; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/netcp_ethss.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/netcp_ethss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netcp_module = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.netcp_ethtool_stat = type { [32 x i8], i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cpsw_ale_params = type { ptr, ptr, i32, i32, i32, i8, i32, ptr, i32 }
%struct.gbe_priv = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i8, i8, i8, %struct.netcp_tx_pipe, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [9 x ptr], %struct.gbe_ss_regs_ofs, %struct.gbe_switch_regs_ofs, %struct.gbe_host_port_regs_ofs, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netcp_tx_pipe = type { ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.gbe_ss_regs_ofs = type { i16, i16, i16 }
%struct.gbe_switch_regs_ofs = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.gbe_host_port_regs_ofs = type { i16, i16, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.gbe_intf = type { ptr, ptr, ptr, %struct.netcp_tx_pipe, ptr, %struct.list_head, [128 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.gbe_slave = type { ptr, ptr, %struct.gbe_port_regs_ofs, %struct.gbe_emac_regs_ofs, i32, i32, %struct.atomic_t, i8, ptr, i32, i32, i8, ptr, ptr, %struct.ts_ctl, %struct.list_head }
%struct.gbe_port_regs_ofs = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.gbe_emac_regs_ofs = type { i16, i16, i16 }
%struct.ts_ctl = type { i32, i8, i8, i8 }
%struct.netcp_addr = type { ptr, [6 x i8], i32, i32, %struct.list_head }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.100, %union.anon.101 }
%union.anon.100 = type { [16 x i8] }
%union.anon.101 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.netcp_packet = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i8, ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_keystone_netcp_ethss__360_3867_keystone_gbe_init6 = internal global ptr @keystone_gbe_init, section ".initcall6.init", align 4
@gbe_module = internal global { %struct.netcp_module, [52 x i8] } { %struct.netcp_module { ptr @.str, ptr null, i8 1, ptr @gbe_probe, ptr @gbe_remove, ptr @gbe_attach, ptr @gbe_release, ptr @gbe_open, ptr @gbe_close, ptr @gbe_add_addr, ptr @gbe_del_addr, ptr @gbe_add_vid, ptr @gbe_del_vid, ptr @gbe_ioctl, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@xgbe_module = internal global { %struct.netcp_module, [52 x i8] } { %struct.netcp_module { ptr @.str.161, ptr null, i8 1, ptr @gbe_probe, ptr @gbe_remove, ptr @gbe_attach, ptr @gbe_release, ptr @gbe_open, ptr @gbe_close, ptr @gbe_add_addr, ptr @gbe_del_addr, ptr @gbe_add_vid, ptr @gbe_del_vid, ptr @gbe_ioctl, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_keystone_gbe_exit = internal global ptr @keystone_gbe_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file361 = internal constant [71 x i8] c"keystone_netcp_ethss.file=drivers/net/ethernet/ti/keystone_netcp_ethss\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [36 x i8] c"keystone_netcp_ethss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [73 x i8] c"keystone_netcp_ethss.description=TI NETCP ETHSS driver for Keystone SOCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author364 = internal constant [59 x i8] c"keystone_netcp_ethss.author=Sandeep Nair <sandeep_n@ti.com\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netcp-gbe\00", [22 x i8] zeroinitializer }, align 32
@gbe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3555, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"device tree info unavailable\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gbe_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/ti/netcp_ethss.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr = internal global ptr @gbe_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,netcp-gbe-5\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,netcp-gbe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,netcp-gbe-9\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,netcp-gbe-2\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,netcp-xgbe\00", [18 x i8] zeroinitializer }, align 32
@gbe_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 3574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device tree node for unknown device\0A\00", [59 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.13 = internal global ptr @gbe_probe._entry.11, section ".printk_index", align 4
@gbe_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&gbe_dev->hw_stats_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable-ale\00", [21 x i8] zeroinitializer }, align 32
@gbe_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 3588, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ALE enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.19 = internal global ptr @gbe_probe._entry.16, section ".printk_index", align 4
@gbe_probe.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 3, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_netcp_ethss\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALE bypass enabled*\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-queue\00", [23 x i8] zeroinitializer }, align 32
@gbe_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 3597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing tx_queue parameter\0A\00", [36 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.25 = internal global ptr @gbe_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx-channel\00", [21 x i8] zeroinitializer }, align 32
@gbe_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 3604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"missing \22tx-channel\22 parameter\0A\00", [32 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.29 = internal global ptr @gbe_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gbe\00", [28 x i8] zeroinitializer }, align 32
@gbe_probe.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.31, i8 3, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ss_version: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xgbe\00", [27 x i8] zeroinitializer }, align 32
@gbe_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 3629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown GBE node(%pOFn)\0A\00", [39 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.35 = internal global ptr @gbe_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interfaces\00", [21 x i8] zeroinitializer }, align 32
@gbe_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 3638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not find interfaces\0A\00", [37 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.39 = internal global ptr @gbe_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slave-port\00", [21 x i8] zeroinitializer }, align 32
@gbe_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 3659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"missing slave-port parameter, skipping interface configuration for %pOFn\0A\00", [54 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.43 = internal global ptr @gbe_probe._entry.41, section ".printk_index", align 4
@gbe_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 3671, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No network interface configured\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.47 = internal global ptr @gbe_probe._entry.44, section ".printk_index", align 4
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"secondary-slave-ports\00", [42 x i8] zeroinitializer }, align 32
@gbe_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 3682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No network interface or secondary ports configured\0A\00", [44 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.51 = internal global ptr @gbe_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"66ak2el\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"66ak2g\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"66ak2h-xgbe\00", [20 x i8] zeroinitializer }, align 32
@gbe_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.2, ptr @.str.3, i32 3702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error initializing ale engine\0A\00", [33 x i8] zeroinitializer }, align 32
@gbe_probe._entry_ptr.58 = internal global ptr @gbe_probe._entry.56, section ".printk_index", align 4
@gbe_probe.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.2, ptr @.str.3, ptr @.str.59, i8 3, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Created a gbe ale engine\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpts\00", [27 x i8] zeroinitializer }, align 32
@gbe_probe.__key.61 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&gbe_dev->timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@get_gbe_resource_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 3336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Can't translate of node(%pOFn) of gbe ss address at %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_gbe_resource_version\00", [39 x i8] zeroinitializer }, align 32
@get_gbe_resource_version._entry_ptr = internal global ptr @get_gbe_resource_version._entry, section ".printk_index", align 4
@get_gbe_resource_version._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 3342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to map gbe register base\0A\00", [63 x i8] zeroinitializer }, align 32
@get_gbe_resource_version._entry_ptr.67 = internal global ptr @get_gbe_resource_version._entry.65, section ".printk_index", align 4
@set_gbe_ethss14_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 3361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Can't translate of gbe node(%pOFn) address at index %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_gbe_ethss14_priv\00", [43 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr = internal global ptr @set_gbe_ethss14_priv._entry, section ".printk_index", align 4
@set_gbe_ethss14_priv._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 3368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to map gbe sgmii port34 register base\0A\00", [50 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr.72 = internal global ptr @set_gbe_ethss14_priv._entry.70, section ".printk_index", align 4
@set_gbe_ethss14_priv._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 3377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr.74 = internal global ptr @set_gbe_ethss14_priv._entry.73, section ".printk_index", align 4
@set_gbe_ethss14_priv._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.69, ptr @.str.3, i32 3384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to map gbe switch module register base\0A\00", [49 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr.77 = internal global ptr @set_gbe_ethss14_priv._entry.75, section ".printk_index", align 4
@gbe13_et_stats = internal constant { [136 x %struct.netcp_ethtool_stat], [1472 x i8] } { [136 x %struct.netcp_ethtool_stat] [%struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_broadcast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_multicast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_align_code_errors\00\00\00\00\00\00", i32 0, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_oversized_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_undersized_frames\00\00\00\00\00\00", i32 0, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_broadcast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_multicast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_collision_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_single_coll_frames\00\00\00\00\00", i32 0, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_excessive_collisions\00\00\00", i32 0, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_late_collisions\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_carrier_sense_errors\00\00\00", i32 0, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_65_to_127byte_frames\00\00\00", i32 0, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_128_to_255byte_frames\00\00", i32 0, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_256_to_511byte_frames\00\00", i32 0, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_512_to_1023byte_frames\00", i32 0, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_A:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_broadcast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_multicast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_align_code_errors\00\00\00\00\00\00", i32 1, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_oversized_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_undersized_frames\00\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_broadcast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_multicast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_collision_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_single_coll_frames\00\00\00\00\00", i32 1, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_excessive_collisions\00\00\00", i32 1, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_late_collisions\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_carrier_sense_errors\00\00\00", i32 1, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_65_to_127byte_frames\00\00\00", i32 1, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_128_to_255byte_frames\00\00", i32 1, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_256_to_511byte_frames\00\00", i32 1, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_512_to_1023byte_frames\00", i32 1, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_B:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_broadcast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_multicast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_align_code_errors\00\00\00\00\00\00", i32 2, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_oversized_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_undersized_frames\00\00\00\00\00\00", i32 2, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_broadcast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_multicast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_collision_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_single_coll_frames\00\00\00\00\00", i32 2, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_excessive_collisions\00\00\00", i32 2, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_late_collisions\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_carrier_sense_errors\00\00\00", i32 2, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_65_to_127byte_frames\00\00\00", i32 2, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_128_to_255byte_frames\00\00", i32 2, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_256_to_511byte_frames\00\00", i32 2, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_512_to_1023byte_frames\00", i32 2, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_C:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_broadcast_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_multicast_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_align_code_errors\00\00\00\00\00\00", i32 3, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_oversized_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_undersized_frames\00\00\00\00\00\00", i32 3, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_broadcast_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_multicast_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_collision_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_single_coll_frames\00\00\00\00\00", i32 3, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_excessive_collisions\00\00\00", i32 3, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_late_collisions\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_carrier_sense_errors\00\00\00", i32 3, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_65_to_127byte_frames\00\00\00", i32 3, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_128_to_255byte_frames\00\00", i32 3, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_256_to_511byte_frames\00\00", i32 3, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_512_to_1023byte_frames\00", i32 3, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_D:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 140 }], [1472 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.69, ptr @.str.3, i32 3397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hw_stats memory allocation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr.80 = internal global ptr @set_gbe_ethss14_priv._entry.78, section ".printk_index", align 4
@set_gbe_ethss14_priv._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.69, ptr @.str.3, i32 3407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hw_stats_prev memory allocation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@set_gbe_ethss14_priv._entry_ptr.83 = internal global ptr @set_gbe_ethss14_priv._entry.81, section ".printk_index", align 4
@gbenu_et_stats = internal constant { [572 x %struct.netcp_ethtool_stat], [6288 x i8] } { [572 x %struct.netcp_ethtool_stat] [%struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_good_frames\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_broadcast_frames\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_multicast_frames\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_crc_errors\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_oversized_frames\00\00\00\00", i32 0, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_undersized_frames\00\00\00", i32 0, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_overrun_drop\00\00\00\00\00\00\00", i32 0, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_good_frames\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_broadcast_frames\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_multicast_frames\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_64B_frames\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_65_to_127B_frames\00\00\00", i32 0, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_128_to_255B_frames\00\00", i32 0, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_256_to_511B_frames\00\00", i32 0, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_512_to_1023B_frames\00", i32 0, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_1024B_frames\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_bottom_fifo_drop\00\00\00\00", i32 0, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_port_mask_drop\00\00\00\00\00\00", i32 0, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:rx_top_fifo_drop\00\00\00\00\00\00\00", i32 0, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_rate_limit_drop\00\00\00\00", i32 0, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_vid_ingress_drop\00\00\00", i32 0, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_da_eq_sa_drop\00\00\00\00\00\00", i32 0, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_ucast\00\00\00\00\00\00", i32 0, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_ucast_bytes", i32 0, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_mcast\00\00\00\00\00\00", i32 0, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_mcast_bytes", i32 0, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_bcast\00\00\00\00\00\00", i32 0, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_unknown_bcast_bytes", i32 0, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_pol_match\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_pol_match_red\00\00\00\00\00\00", i32 0, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:ale_pol_match_yellow\00\00\00", i32 0, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_mem_protect_err\00\00\00\00\00", i32 0, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri0_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri1_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri2_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri3_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri4_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri5_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri6_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_HOST:tx_pri7_drop_bcnt\00\00\00\00\00\00", i32 0, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_broadcast_frames\00\00\00\00\00\00", i32 1, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_multicast_frames\00\00\00\00\00\00", i32 1, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_align_code_errors\00\00\00\00\00", i32 1, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_oversized_frames\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_undersized_frames\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_broadcast_frames\00\00\00\00\00\00", i32 1, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_multicast_frames\00\00\00\00\00\00", i32 1, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_deferred_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_collision_frames\00\00\00\00\00\00", i32 1, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_single_coll_frames\00\00\00\00", i32 1, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_mult_coll_frames\00\00\00\00\00\00", i32 1, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_excessive_collisions\00\00", i32 1, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_late_collisions\00\00\00\00\00\00\00", i32 1, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_carrier_sense_errors\00\00", i32 1, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_65_to_127B_frames\00\00\00\00\00", i32 1, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_128_to_255B_frames\00\00\00\00", i32 1, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_256_to_511B_frames\00\00\00\00", i32 1, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_512_to_1023B_frames\00\00\00", i32 1, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 1, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_rate_limit_drop\00\00\00\00\00\00", i32 1, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_vid_ingress_drop\00\00\00\00\00", i32 1, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_ucast_bytes\00\00", i32 1, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_mcast_bytes\00\00", i32 1, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_unknown_bcast_bytes\00\00", i32 1, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:ale_pol_match_yellow\00\00\00\00\00", i32 1, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_mem_protect_err\00\00\00\00\00\00\00", i32 1, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P1:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_broadcast_frames\00\00\00\00\00\00", i32 2, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_multicast_frames\00\00\00\00\00\00", i32 2, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_align_code_errors\00\00\00\00\00", i32 2, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_oversized_frames\00\00\00\00\00\00", i32 2, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_undersized_frames\00\00\00\00\00", i32 2, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_broadcast_frames\00\00\00\00\00\00", i32 2, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_multicast_frames\00\00\00\00\00\00", i32 2, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_deferred_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_collision_frames\00\00\00\00\00\00", i32 2, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_single_coll_frames\00\00\00\00", i32 2, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_mult_coll_frames\00\00\00\00\00\00", i32 2, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_excessive_collisions\00\00", i32 2, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_late_collisions\00\00\00\00\00\00\00", i32 2, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_carrier_sense_errors\00\00", i32 2, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_65_to_127B_frames\00\00\00\00\00", i32 2, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_128_to_255B_frames\00\00\00\00", i32 2, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_256_to_511B_frames\00\00\00\00", i32 2, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_512_to_1023B_frames\00\00\00", i32 2, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 2, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_rate_limit_drop\00\00\00\00\00\00", i32 2, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_vid_ingress_drop\00\00\00\00\00", i32 2, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_ucast_bytes\00\00", i32 2, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_mcast_bytes\00\00", i32 2, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_unknown_bcast_bytes\00\00", i32 2, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:ale_pol_match_yellow\00\00\00\00\00", i32 2, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_mem_protect_err\00\00\00\00\00\00\00", i32 2, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P2:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_broadcast_frames\00\00\00\00\00\00", i32 3, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_multicast_frames\00\00\00\00\00\00", i32 3, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_align_code_errors\00\00\00\00\00", i32 3, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_oversized_frames\00\00\00\00\00\00", i32 3, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_undersized_frames\00\00\00\00\00", i32 3, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_broadcast_frames\00\00\00\00\00\00", i32 3, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_multicast_frames\00\00\00\00\00\00", i32 3, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_deferred_frames\00\00\00\00\00\00\00", i32 3, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_collision_frames\00\00\00\00\00\00", i32 3, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_single_coll_frames\00\00\00\00", i32 3, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_mult_coll_frames\00\00\00\00\00\00", i32 3, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_excessive_collisions\00\00", i32 3, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_late_collisions\00\00\00\00\00\00\00", i32 3, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_carrier_sense_errors\00\00", i32 3, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_65_to_127B_frames\00\00\00\00\00", i32 3, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_128_to_255B_frames\00\00\00\00", i32 3, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_256_to_511B_frames\00\00\00\00", i32 3, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_512_to_1023B_frames\00\00\00", i32 3, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 3, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_rate_limit_drop\00\00\00\00\00\00", i32 3, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_vid_ingress_drop\00\00\00\00\00", i32 3, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_ucast_bytes\00\00", i32 3, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_mcast_bytes\00\00", i32 3, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_unknown_bcast_bytes\00\00", i32 3, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:ale_pol_match_yellow\00\00\00\00\00", i32 3, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_mem_protect_err\00\00\00\00\00\00\00", i32 3, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P3:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 3, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_broadcast_frames\00\00\00\00\00\00", i32 4, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_multicast_frames\00\00\00\00\00\00", i32 4, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_align_code_errors\00\00\00\00\00", i32 4, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_oversized_frames\00\00\00\00\00\00", i32 4, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_undersized_frames\00\00\00\00\00", i32 4, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_broadcast_frames\00\00\00\00\00\00", i32 4, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_multicast_frames\00\00\00\00\00\00", i32 4, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_deferred_frames\00\00\00\00\00\00\00", i32 4, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_collision_frames\00\00\00\00\00\00", i32 4, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_single_coll_frames\00\00\00\00", i32 4, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_mult_coll_frames\00\00\00\00\00\00", i32 4, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_excessive_collisions\00\00", i32 4, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_late_collisions\00\00\00\00\00\00\00", i32 4, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_carrier_sense_errors\00\00", i32 4, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_65_to_127B_frames\00\00\00\00\00", i32 4, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_128_to_255B_frames\00\00\00\00", i32 4, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_256_to_511B_frames\00\00\00\00", i32 4, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_512_to_1023B_frames\00\00\00", i32 4, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 4, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_rate_limit_drop\00\00\00\00\00\00", i32 4, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_vid_ingress_drop\00\00\00\00\00", i32 4, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_ucast_bytes\00\00", i32 4, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_mcast_bytes\00\00", i32 4, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_unknown_bcast_bytes\00\00", i32 4, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:ale_pol_match_yellow\00\00\00\00\00", i32 4, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_mem_protect_err\00\00\00\00\00\00\00", i32 4, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P4:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 4, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_broadcast_frames\00\00\00\00\00\00", i32 5, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_multicast_frames\00\00\00\00\00\00", i32 5, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_align_code_errors\00\00\00\00\00", i32 5, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_oversized_frames\00\00\00\00\00\00", i32 5, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_undersized_frames\00\00\00\00\00", i32 5, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_broadcast_frames\00\00\00\00\00\00", i32 5, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_multicast_frames\00\00\00\00\00\00", i32 5, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_deferred_frames\00\00\00\00\00\00\00", i32 5, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_collision_frames\00\00\00\00\00\00", i32 5, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_single_coll_frames\00\00\00\00", i32 5, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_mult_coll_frames\00\00\00\00\00\00", i32 5, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_excessive_collisions\00\00", i32 5, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_late_collisions\00\00\00\00\00\00\00", i32 5, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_carrier_sense_errors\00\00", i32 5, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_65_to_127B_frames\00\00\00\00\00", i32 5, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_128_to_255B_frames\00\00\00\00", i32 5, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_256_to_511B_frames\00\00\00\00", i32 5, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_512_to_1023B_frames\00\00\00", i32 5, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 5, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_rate_limit_drop\00\00\00\00\00\00", i32 5, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_vid_ingress_drop\00\00\00\00\00", i32 5, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_ucast_bytes\00\00", i32 5, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_mcast_bytes\00\00", i32 5, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_unknown_bcast_bytes\00\00", i32 5, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:ale_pol_match_yellow\00\00\00\00\00", i32 5, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_mem_protect_err\00\00\00\00\00\00\00", i32 5, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P5:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 5, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_broadcast_frames\00\00\00\00\00\00", i32 6, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_multicast_frames\00\00\00\00\00\00", i32 6, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_align_code_errors\00\00\00\00\00", i32 6, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_oversized_frames\00\00\00\00\00\00", i32 6, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_undersized_frames\00\00\00\00\00", i32 6, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_broadcast_frames\00\00\00\00\00\00", i32 6, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_multicast_frames\00\00\00\00\00\00", i32 6, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_deferred_frames\00\00\00\00\00\00\00", i32 6, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_collision_frames\00\00\00\00\00\00", i32 6, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_single_coll_frames\00\00\00\00", i32 6, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_mult_coll_frames\00\00\00\00\00\00", i32 6, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_excessive_collisions\00\00", i32 6, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_late_collisions\00\00\00\00\00\00\00", i32 6, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_carrier_sense_errors\00\00", i32 6, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_65_to_127B_frames\00\00\00\00\00", i32 6, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_128_to_255B_frames\00\00\00\00", i32 6, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_256_to_511B_frames\00\00\00\00", i32 6, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_512_to_1023B_frames\00\00\00", i32 6, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 6, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_rate_limit_drop\00\00\00\00\00\00", i32 6, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_vid_ingress_drop\00\00\00\00\00", i32 6, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_ucast_bytes\00\00", i32 6, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_mcast_bytes\00\00", i32 6, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_unknown_bcast_bytes\00\00", i32 6, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:ale_pol_match_yellow\00\00\00\00\00", i32 6, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_mem_protect_err\00\00\00\00\00\00\00", i32 6, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P6:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 6, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_broadcast_frames\00\00\00\00\00\00", i32 7, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_multicast_frames\00\00\00\00\00\00", i32 7, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_align_code_errors\00\00\00\00\00", i32 7, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_oversized_frames\00\00\00\00\00\00", i32 7, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_undersized_frames\00\00\00\00\00", i32 7, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_broadcast_frames\00\00\00\00\00\00", i32 7, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_multicast_frames\00\00\00\00\00\00", i32 7, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_deferred_frames\00\00\00\00\00\00\00", i32 7, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_collision_frames\00\00\00\00\00\00", i32 7, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_single_coll_frames\00\00\00\00", i32 7, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_mult_coll_frames\00\00\00\00\00\00", i32 7, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_excessive_collisions\00\00", i32 7, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_late_collisions\00\00\00\00\00\00\00", i32 7, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_carrier_sense_errors\00\00", i32 7, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_65_to_127B_frames\00\00\00\00\00", i32 7, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_128_to_255B_frames\00\00\00\00", i32 7, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_256_to_511B_frames\00\00\00\00", i32 7, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_512_to_1023B_frames\00\00\00", i32 7, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 7, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_rate_limit_drop\00\00\00\00\00\00", i32 7, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_vid_ingress_drop\00\00\00\00\00", i32 7, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_ucast_bytes\00\00", i32 7, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_mcast_bytes\00\00", i32 7, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_unknown_bcast_bytes\00\00", i32 7, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:ale_pol_match_yellow\00\00\00\00\00", i32 7, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_mem_protect_err\00\00\00\00\00\00\00", i32 7, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P7:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 7, i32 4, i32 508 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_broadcast_frames\00\00\00\00\00\00", i32 8, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_multicast_frames\00\00\00\00\00\00", i32 8, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_align_code_errors\00\00\00\00\00", i32 8, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_oversized_frames\00\00\00\00\00\00", i32 8, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_jabber_frames\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_undersized_frames\00\00\00\00\00", i32 8, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_overrun_drop\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_broadcast_frames\00\00\00\00\00\00", i32 8, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_multicast_frames\00\00\00\00\00\00", i32 8, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pause_frames\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_deferred_frames\00\00\00\00\00\00\00", i32 8, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_collision_frames\00\00\00\00\00\00", i32 8, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_single_coll_frames\00\00\00\00", i32 8, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_mult_coll_frames\00\00\00\00\00\00", i32 8, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_excessive_collisions\00\00", i32 8, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_late_collisions\00\00\00\00\00\00\00", i32 8, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_ipg_error\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_carrier_sense_errors\00\00", i32 8, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_64B_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_65_to_127B_frames\00\00\00\00\00", i32 8, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_128_to_255B_frames\00\00\00\00", i32 8, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_256_to_511B_frames\00\00\00\00", i32 8, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_512_to_1023B_frames\00\00\00", i32 8, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_1024B_frames\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_bottom_fifo_drop\00\00\00\00\00\00", i32 8, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_port_mask_drop\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:rx_top_fifo_drop\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_rate_limit_drop\00\00\00\00\00\00", i32 8, i32 4, i32 144 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_vid_ingress_drop\00\00\00\00\00", i32 8, i32 4, i32 148 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_da_eq_sa_drop\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 152 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_ucast\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 168 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_ucast_bytes\00\00", i32 8, i32 4, i32 172 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_mcast\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 176 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_mcast_bytes\00\00", i32 8, i32 4, i32 180 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_bcast\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 184 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_unknown_bcast_bytes\00\00", i32 8, i32 4, i32 188 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_pol_match\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 192 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_pol_match_red\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 196 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:ale_pol_match_yellow\00\00\00\00\00", i32 8, i32 4, i32 200 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_mem_protect_err\00\00\00\00\00\00\00", i32 8, i32 4, i32 380 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri0_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 448 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri1_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 452 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri2_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 456 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri3_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 460 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri4_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 464 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri5_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 468 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri6_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 472 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri7_drop\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 476 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri0_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 480 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri1_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 484 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri2_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 488 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri3_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 492 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri4_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 496 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri5_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 500 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri6_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 504 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_P8:tx_pri7_drop_bcnt\00\00\00\00\00\00\00\00", i32 8, i32 4, i32 508 }], [6288 x i8] zeroinitializer }, align 32
@set_gbenu_ethss_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.84, ptr @.str.3, i32 3468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_gbenu_ethss_priv\00", [43 x i8] zeroinitializer }, align 32
@set_gbenu_ethss_priv._entry_ptr = internal global ptr @set_gbenu_ethss_priv._entry, section ".printk_index", align 4
@set_gbenu_ethss_priv._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.84, ptr @.str.3, i32 3478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@set_gbenu_ethss_priv._entry_ptr.86 = internal global ptr @set_gbenu_ethss_priv._entry.85, section ".printk_index", align 4
@set_gbenu_ethss_priv._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.84, ptr @.str.3, i32 3486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Can't translate of gbenu node(%pOFn) addr at index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@set_gbenu_ethss_priv._entry_ptr.89 = internal global ptr @set_gbenu_ethss_priv._entry.87, section ".printk_index", align 4
@set_gbenu_ethss_priv._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.84, ptr @.str.3, i32 3493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to map gbenu switch module register base\0A\00", [47 x i8] zeroinitializer }, align 32
@set_gbenu_ethss_priv._entry_ptr.92 = internal global ptr @set_gbenu_ethss_priv._entry.90, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 3229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't xlate xgbe of node(%pOFn) ss address at %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_xgbe_ethss10_priv\00", [42 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr = internal global ptr @set_xgbe_ethss10_priv._entry, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 3235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to map xgbe ss register base\0A\00", [59 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.97 = internal global ptr @set_xgbe_ethss10_priv._entry.95, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.3, i32 3244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Can't xlate xgbe of node(%pOFn) sm address at %d\0A\00", [46 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.100 = internal global ptr @set_xgbe_ethss10_priv._entry.98, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.3, i32 3250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to map xgbe sm register base\0A\00", [59 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.103 = internal global ptr @set_xgbe_ethss10_priv._entry.101, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.3, i32 3259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't xlate xgbe serdes of node(%pOFn) address at %d\0A\00", [42 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.106 = internal global ptr @set_xgbe_ethss10_priv._entry.104, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.3, i32 3265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to map xgbe serdes register base\0A\00", [55 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.109 = internal global ptr @set_xgbe_ethss10_priv._entry.107, section ".printk_index", align 4
@xgbe10_et_stats = internal constant { [94 x %struct.netcp_ethtool_stat], [1048 x i8] } { [94 x %struct.netcp_ethtool_stat] [%struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_broadcast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_multicast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_oversized_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_undersized_frames\00\00\00\00\00\00", i32 0, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:overrun_type4\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:overrun_type5\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_broadcast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_multicast_frames\00\00\00\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_65_to_127byte_frames\00\00\00", i32 0, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_128_to_255byte_frames\00\00", i32 0, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_256_to_511byte_frames\00\00", i32 0, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_512_to_1023byte_frames\00", i32 0, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_0:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_broadcast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_multicast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_align_code_errors\00\00\00\00\00\00", i32 1, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_oversized_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_undersized_frames\00\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:overrun_type4\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:overrun_type5\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_broadcast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_multicast_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_collision_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_single_coll_frames\00\00\00\00\00", i32 1, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 1, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_excessive_collisions\00\00\00", i32 1, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_late_collisions\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_carrier_sense_errors\00\00\00", i32 1, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_65_to_127byte_frames\00\00\00", i32 1, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_128_to_255byte_frames\00\00", i32 1, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_256_to_511byte_frames\00\00", i32 1, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_512_to_1023byte_frames\00", i32 1, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_1:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 140 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 0 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_broadcast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 4 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_multicast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 8 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 12 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 16 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_align_code_errors\00\00\00\00\00\00", i32 2, i32 4, i32 20 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_oversized_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 24 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_jabber_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 28 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_undersized_frames\00\00\00\00\00\00", i32 2, i32 4, i32 32 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 36 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:overrun_type4\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 40 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:overrun_type5\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 44 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 48 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_good_frames\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 52 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_broadcast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 56 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_multicast_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 60 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 64 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_deferred_frames\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 68 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_collision_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 72 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_single_coll_frames\00\00\00\00\00", i32 2, i32 4, i32 76 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_mult_coll_frames\00\00\00\00\00\00\00", i32 2, i32 4, i32 80 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_excessive_collisions\00\00\00", i32 2, i32 4, i32 84 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_late_collisions\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 88 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 92 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_carrier_sense_errors\00\00\00", i32 2, i32 4, i32 96 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 100 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_64byte_frames\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 104 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_65_to_127byte_frames\00\00\00", i32 2, i32 4, i32 108 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_128_to_255byte_frames\00\00", i32 2, i32 4, i32 112 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_256_to_511byte_frames\00\00", i32 2, i32 4, i32 116 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_512_to_1023byte_frames\00", i32 2, i32 4, i32 120 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:tx_1024byte_frames\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 124 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:net_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 128 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_sof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 132 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_mof_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 136 }, %struct.netcp_ethtool_stat { [32 x i8] c"GBE_2:rx_dma_overruns\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4, i32 140 }], [1048 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.94, ptr @.str.3, i32 3278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.111 = internal global ptr @set_xgbe_ethss10_priv._entry.110, section ".printk_index", align 4
@set_xgbe_ethss10_priv._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.94, ptr @.str.3, i32 3288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@set_xgbe_ethss10_priv._entry_ptr.113 = internal global ptr @set_xgbe_ethss10_priv._entry.112, section ".printk_index", align 4
@init_secondary_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 3127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"memory alloc failed for secondary port(%pOFn), skipping...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_secondary_ports\00", [43 x i8] zeroinitializer }, align 32
@init_secondary_ports._entry_ptr = internal global ptr @init_secondary_ports._entry, section ".printk_index", align 4
@init_secondary_ports._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 3134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Failed to initialize secondary port(%pOFn), skipping...\0A\00", [39 x i8] zeroinitializer }, align 32
@init_secondary_ports._entry_ptr.118 = internal global ptr @init_secondary_ports._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@init_secondary_ports._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.3, i32 3165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Failed to allocate dummy netdev for secondary ports, skipping phy_connect()...\0A\00", [48 x i8] zeroinitializer }, align 32
@init_secondary_ports._entry_ptr.122 = internal global ptr @init_secondary_ports._entry.120, section ".printk_index", align 4
@init_secondary_ports._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.115, ptr @.str.3, i32 3194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy not found for slave %d\0A\00", [36 x i8] zeroinitializer }, align 32
@init_secondary_ports._entry_ptr.125 = internal global ptr @init_secondary_ports._entry.123, section ".printk_index", align 4
@init_secondary_ports.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.115, ptr @.str.3, ptr @.str.126, i8 3, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"phy found: id is: 0x%s\0A\00", [40 x i8] zeroinitializer }, align 32
@init_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 2997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing slave-port parameter\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_slave\00", [21 x i8] zeroinitializer }, align 32
@init_slave._entry_ptr = internal global ptr @init_slave._entry, section ".printk_index", align 4
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"link-interface\00", [17 x i8] zeroinitializer }, align 32
@init_slave._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.128, ptr @.str.3, i32 3004, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"missing link-interface value defaulting to 1G mac-phy link\0A\00", [36 x i8] zeroinitializer }, align 32
@init_slave._entry_ptr.132 = internal global ptr @init_slave._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@init_slave._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.128, ptr @.str.3, i32 3045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown ethss(0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@init_slave._entry_ptr.136 = internal global ptr @init_slave._entry.134, section ".printk_index", align 4
@gbe_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 3814, ptr @.str.139, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unreleased ethss interfaces present\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gbe_remove\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@gbe_remove._entry_ptr = internal global ptr @gbe_remove._entry, section ".printk_index", align 4
@gbe_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 3752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interface node not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gbe_attach\00", [21 x i8] zeroinitializer }, align 32
@gbe_attach._entry_ptr = internal global ptr @gbe_attach._entry, section ".printk_index", align 4
@keystone_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @keystone_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @keystone_get_msglevel, ptr @keystone_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keystone_get_stat_strings, ptr null, ptr @keystone_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @keystone_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keystone_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keystone_get_link_ksettings, ptr @keystone_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@gbe_open.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.144, ptr @.str.3, ptr @.str.145, i8 2, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gbe_open\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"initializing gbe version %d.%d (%d) GBE identification value 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@gbe_open.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.144, ptr @.str.3, ptr @.str.146, i8 2, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"opened TX channel %s: %p with to port %d, flags %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gbe_slave_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 2330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported phy mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gbe_slave_open\00", [17 x i8] zeroinitializer }, align 32
@gbe_slave_open._entry_ptr = internal global ptr @gbe_slave_open._entry, section ".printk_index", align 4
@gbe_slave_open._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 2350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy not found on slave %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gbe_slave_open._entry_ptr.151 = internal global ptr @gbe_slave_open._entry.149, section ".printk_index", align 4
@gbe_slave_open.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.148, ptr @.str.3, ptr @.str.126, i8 2, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbe_register_cpts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 2708, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering cpts device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gbe_register_cpts\00", [46 x i8] zeroinitializer }, align 32
@gbe_register_cpts._entry_ptr = internal global ptr @gbe_register_cpts._entry, section ".printk_index", align 4
@gbe_add_addr.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.154, ptr @.str.3, ptr @.str.155, i8 2, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gbe_add_addr\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ethss adding address %pM, type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@gbe_del_addr.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.156, ptr @.str.3, ptr @.str.157, i8 2, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gbe_del_addr\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ethss deleting address %pM, type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netcp-xgbe\00", [21 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TI KeyStone Ethernet Driver\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"v1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 20178, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.171 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 16, i64 20178, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 16, i64 20178, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 1000, i64 10000]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 20198, i64 20200]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 10]
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"gbe_module\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3819, i32 28 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"xgbe_module\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3836, i32 28 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3820, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3555, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3563, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3564, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3566, i32 43 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3568, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3571, i32 43 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3574, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3584, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3586, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3588, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3591, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3594, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3597, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3601, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3604, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3608, i32 28 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3613, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3622, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3629, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3636, i32 42 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3638, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3656, i32 41 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3658, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3671, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3674, i32 47 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3681, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3692, i32 22 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3694, i32 23 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3696, i32 23 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3698, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3702, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3706, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3709, i32 41 }
@___asan_gen_.350 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3733, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3334, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3342, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3359, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3367, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3375, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3383, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [15 x i8] c"gbe13_et_stats\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 808, i32 40 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3397, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3406, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [15 x i8] c"gbenu_et_stats\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1020, i32 40 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3468, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3477, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3484, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3492, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3227, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3235, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3242, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3250, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3257, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3265, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [16 x i8] c"xgbe10_et_stats\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 1625, i32 40 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3278, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3287, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3126, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3132, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3161, i32 24 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3164, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3193, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3196, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2997, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3001, i32 33 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3003, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3013, i32 44 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3044, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3813, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3752, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant [21 x i8] c"keystone_ethtool_ops\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2043, i32 33 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2899, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2912, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2329, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2349, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2708, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2459, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 2485, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.612, i32 174, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.615 = private constant [41 x i8] c"../drivers/net/ethernet/ti/netcp_ethss.c\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 3837, i32 11 }
@___asan_gen_.617 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [8 x i8] c"str.162\00", align 1
@llvm.compiler.used = appending global [196 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__exitcall_keystone_gbe_exit, ptr @__initcall__kmod_keystone_netcp_ethss__360_3867_keystone_gbe_init6, ptr @gbe_attach._entry, ptr @gbe_attach._entry_ptr, ptr @gbe_probe._entry, ptr @gbe_probe._entry.11, ptr @gbe_probe._entry.16, ptr @gbe_probe._entry.23, ptr @gbe_probe._entry.27, ptr @gbe_probe._entry.33, ptr @gbe_probe._entry.37, ptr @gbe_probe._entry.41, ptr @gbe_probe._entry.44, ptr @gbe_probe._entry.49, ptr @gbe_probe._entry.56, ptr @gbe_probe._entry_ptr, ptr @gbe_probe._entry_ptr.13, ptr @gbe_probe._entry_ptr.19, ptr @gbe_probe._entry_ptr.25, ptr @gbe_probe._entry_ptr.29, ptr @gbe_probe._entry_ptr.35, ptr @gbe_probe._entry_ptr.39, ptr @gbe_probe._entry_ptr.43, ptr @gbe_probe._entry_ptr.47, ptr @gbe_probe._entry_ptr.51, ptr @gbe_probe._entry_ptr.58, ptr @gbe_register_cpts._entry, ptr @gbe_register_cpts._entry_ptr, ptr @gbe_remove._entry, ptr @gbe_remove._entry_ptr, ptr @gbe_slave_open._entry, ptr @gbe_slave_open._entry.149, ptr @gbe_slave_open._entry_ptr, ptr @gbe_slave_open._entry_ptr.151, ptr @get_gbe_resource_version._entry, ptr @get_gbe_resource_version._entry.65, ptr @get_gbe_resource_version._entry_ptr, ptr @get_gbe_resource_version._entry_ptr.67, ptr @init_secondary_ports._entry, ptr @init_secondary_ports._entry.116, ptr @init_secondary_ports._entry.120, ptr @init_secondary_ports._entry.123, ptr @init_secondary_ports._entry_ptr, ptr @init_secondary_ports._entry_ptr.118, ptr @init_secondary_ports._entry_ptr.122, ptr @init_secondary_ports._entry_ptr.125, ptr @init_slave._entry, ptr @init_slave._entry.130, ptr @init_slave._entry.134, ptr @init_slave._entry_ptr, ptr @init_slave._entry_ptr.132, ptr @init_slave._entry_ptr.136, ptr @keystone_gbe_exit, ptr @set_gbe_ethss14_priv._entry, ptr @set_gbe_ethss14_priv._entry.70, ptr @set_gbe_ethss14_priv._entry.73, ptr @set_gbe_ethss14_priv._entry.75, ptr @set_gbe_ethss14_priv._entry.78, ptr @set_gbe_ethss14_priv._entry.81, ptr @set_gbe_ethss14_priv._entry_ptr, ptr @set_gbe_ethss14_priv._entry_ptr.72, ptr @set_gbe_ethss14_priv._entry_ptr.74, ptr @set_gbe_ethss14_priv._entry_ptr.77, ptr @set_gbe_ethss14_priv._entry_ptr.80, ptr @set_gbe_ethss14_priv._entry_ptr.83, ptr @set_gbenu_ethss_priv._entry, ptr @set_gbenu_ethss_priv._entry.85, ptr @set_gbenu_ethss_priv._entry.87, ptr @set_gbenu_ethss_priv._entry.90, ptr @set_gbenu_ethss_priv._entry_ptr, ptr @set_gbenu_ethss_priv._entry_ptr.86, ptr @set_gbenu_ethss_priv._entry_ptr.89, ptr @set_gbenu_ethss_priv._entry_ptr.92, ptr @set_xgbe_ethss10_priv._entry, ptr @set_xgbe_ethss10_priv._entry.101, ptr @set_xgbe_ethss10_priv._entry.104, ptr @set_xgbe_ethss10_priv._entry.107, ptr @set_xgbe_ethss10_priv._entry.110, ptr @set_xgbe_ethss10_priv._entry.112, ptr @set_xgbe_ethss10_priv._entry.95, ptr @set_xgbe_ethss10_priv._entry.98, ptr @set_xgbe_ethss10_priv._entry_ptr, ptr @set_xgbe_ethss10_priv._entry_ptr.100, ptr @set_xgbe_ethss10_priv._entry_ptr.103, ptr @set_xgbe_ethss10_priv._entry_ptr.106, ptr @set_xgbe_ethss10_priv._entry_ptr.109, ptr @set_xgbe_ethss10_priv._entry_ptr.111, ptr @set_xgbe_ethss10_priv._entry_ptr.113, ptr @set_xgbe_ethss10_priv._entry_ptr.97, ptr @gbe_module, ptr @xgbe_module, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @gbe_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @gbe_probe.__key.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.76, ptr @gbe13_et_stats, ptr @.str.79, ptr @.str.82, ptr @gbenu_et_stats, ptr @.str.84, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @xgbe10_et_stats, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @keystone_ethtool_ops, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.160, ptr @.str.161, ptr @str, ptr @str.162], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_module to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe_module to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_probe.__key.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gbe_resource_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_gbe_resource_version._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe13_et_stats to i32), i32 5984, i32 7456, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbe_ethss14_priv._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbenu_et_stats to i32), i32 25168, i32 31456, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbenu_ethss_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbenu_ethss_priv._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbenu_ethss_priv._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gbenu_ethss_priv._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgbe10_et_stats to i32), i32 4136, i32 5184, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_xgbe_ethss10_priv._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_secondary_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_secondary_ports._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_secondary_ports._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_secondary_ports._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slave._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_slave._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_slave_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_slave_open._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbe_register_cpts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_gbe_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netcp_register_module(ptr noundef nonnull @gbe_module) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @netcp_register_module(ptr noundef nonnull @xgbe_module) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keystone_gbe_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netcp_unregister_module(ptr noundef nonnull @gbe_module) #11
  tail call void @netcp_unregister_module(ptr noundef nonnull @xgbe_module) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netcp_unregister_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_register_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_probe(ptr noundef %netcp_device, ptr noundef %dev, ptr noundef %node, ptr nocapture noundef writeonly %inst_priv) #3 align 64 {
entry:
  %res.i487 = alloca %struct.resource, align 4
  %res.i443 = alloca %struct.resource, align 4
  %res.i432 = alloca %struct.resource, align 4
  %res.i = alloca %struct.resource, align 4
  %ale_params = alloca %struct.cpsw_ale_params, align 4
  %slave_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ale_params) #11
  %0 = call ptr @memset(ptr %ale_params, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_num) #11
  %1 = ptrtoint ptr %slave_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %slave_num, align 4, !annotation !310
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 312, i32 noundef 3520) #11
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end3.if.then8_crit_edge

if.end3.if.then8_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end3
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end3.if.then8_crit_edge
  %max_num_slaves = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %max_num_slaves to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %max_num_slaves, align 1
  br label %if.end30

if.else:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %max_num_slaves12 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %max_num_slaves12 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %max_num_slaves12, align 1
  br label %if.end30

if.else13:                                        ; preds = %if.else
  %call14 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #13
  %max_num_slaves17 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %max_num_slaves17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %max_num_slaves17, align 1
  store ptr @gbe_set_rx_mode, ptr getelementptr inbounds (%struct.netcp_module, ptr @gbe_module, i32 0, i32 14), align 4
  br label %if.end30

if.else18:                                        ; preds = %if.else13
  %call19 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end26, label %if.then21

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  %max_num_slaves22 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %max_num_slaves22 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %max_num_slaves22, align 1
  br label %if.end30

do.end26:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end30:                                         ; preds = %if.then21, %if.then16, %if.then11, %if.then8
  %max_num_slaves31 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_num_slaves31, align 1
  %add = add i8 %7, 1
  %max_num_ports = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %add, ptr %max_num_ports, align 2
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %netcp_device34 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %netcp_device34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %netcp_device, ptr %netcp_device34, align 4
  %rx_packet_max = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 9504, ptr %rx_packet_max, align 4
  %hw_stats_lock = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %hw_stats_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @gbe_probe.__key, i16 noundef signext 3) #11
  %call39 = tail call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.15, ptr noundef null) #11
  %tobool40.not = icmp eq ptr %call39, null
  %enable_ale46 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 5
  br i1 %tobool40.not, label %if.else45, label %if.then41

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %enable_ale46 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enable_ale46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #14
  br label %if.end56

if.else45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %enable_ale46 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enable_ale46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_probe.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_probe, %if.then52)) #11
          to label %if.end56 [label %if.then52], !srcloc !311

if.then52:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_probe.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.else45, %if.then41
  %tx_queue_id = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 27
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node, ptr noundef nonnull @.str.22, ptr noundef %tx_queue_id, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end62, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #14
  %14 = ptrtoint ptr %tx_queue_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 648, ptr %tx_queue_id, align 4
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %if.end56.if.end64_crit_edge
  %dma_chan_name = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 28
  %call65 = tail call i32 @of_property_read_string(ptr noundef nonnull %node, ptr noundef nonnull @.str.26, ptr noundef %dma_chan_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %if.end72

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %call73 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node, ptr noundef nonnull @.str.30) #11
  br i1 %call73, label %if.then74, label %if.else117

if.then74:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #11
  %15 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i430 = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 0, ptr noundef nonnull %res.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i430)
  %tobool.not.i = icmp eq i32 %call.i430, 0
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i, label %if.end.i, label %get_gbe_resource_version.exit.thread565

get_gbe_resource_version.exit.thread565:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.63, ptr noundef nonnull %node, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then74
  %call2.i = call ptr @devm_ioremap_resource(ptr noundef %17, ptr noundef nonnull %res.i) #11
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_gbe_resource_version.exit, label %get_gbe_resource_version.exit.thread

get_gbe_resource_version.exit.thread:             ; preds = %if.end.i
  %ss_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %ss_regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %ss_regs.i, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call2.i) #11, !srcloc !312
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  %ss_version.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 12
  %21 = ptrtoint ptr %ss_version.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ss_version.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_probe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_probe, %if.then91)) #11
          to label %do.end94 [label %if.then91], !srcloc !311

get_gbe_resource_version.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.66) #14
  %24 = ptrtoint ptr %call2.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #11
  br label %cleanup

if.then91:                                        ; preds = %get_gbe_resource_version.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ss_version.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ss_version.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_probe.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %26) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %get_gbe_resource_version.exit.thread
  %27 = ptrtoint ptr %ss_version.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ss_version.i, align 4
  %shr = lshr i32 %28, 16
  %trunc577 = trunc i32 %shr to i16
  %29 = zext i16 %trunc577 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc577, label %do.end94.cleanup_crit_edge [
    i16 20178, label %if.then98
    i16 20198, label %do.end94.if.then112_crit_edge
    i16 20200, label %do.end94.if.then112_crit_edge602
  ]

do.end94.if.then112_crit_edge602:                 ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

do.end94.if.then112_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then98:                                        ; preds = %do.end94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i432) #11
  %30 = call ptr @memset(ptr %res.i432, i32 255, i32 32)
  %call.i433 = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 1, ptr noundef nonnull %res.i432) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i433)
  %tobool.not.i434 = icmp eq i32 %call.i433, 0
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i434, label %if.end.i438, label %do.end.i435

do.end.i435:                                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.68, ptr noundef nonnull %node, i32 noundef 1) #14
  br label %set_gbe_ethss14_priv.exit

if.end.i438:                                      ; preds = %if.then98
  %call2.i436 = call ptr @devm_ioremap_resource(ptr noundef %32, ptr noundef nonnull %res.i432) #11
  %cmp.i.i437 = icmp ugt ptr %call2.i436, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i437, label %do.end7.i439, label %if.end10.i440

do.end7.i439:                                     ; preds = %if.end.i438
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.71) #14
  %35 = ptrtoint ptr %call2.i436 to i32
  br label %set_gbe_ethss14_priv.exit

if.end10.i440:                                    ; preds = %if.end.i438
  %sgmii_port34_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 20
  %36 = ptrtoint ptr %sgmii_port34_regs.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call2.i436, ptr %sgmii_port34_regs.i, align 4
  %call11.i = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 2, ptr noundef nonnull %res.i432) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  br i1 %tobool12.not.i, label %if.end18.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i440
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.68, ptr noundef nonnull %node, i32 noundef 2) #14
  br label %set_gbe_ethss14_priv.exit

if.end18.i:                                       ; preds = %if.end10.i440
  %call20.i = call ptr @devm_ioremap_resource(ptr noundef %38, ptr noundef nonnull %res.i432) #11
  %cmp.i132.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132.i, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.76) #14
  %41 = ptrtoint ptr %call20.i to i32
  br label %set_gbe_ethss14_priv.exit

if.end28.i:                                       ; preds = %if.end18.i
  %switch_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 15
  %42 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call20.i, ptr %switch_regs.i, align 4
  %43 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_num_slaves31, align 1
  %num_stats_mods.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %num_stats_mods.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %num_stats_mods.i, align 1
  %et_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 34
  %46 = ptrtoint ptr %et_stats.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @gbe13_et_stats, ptr %et_stats.i, align 4
  %num_et_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 35
  %47 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 136, ptr %num_et_stats.i, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef 1088, i32 noundef 3520) #11
  %hw_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 32
  %50 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i.i, ptr %hw_stats.i, align 4
  %tobool33.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool33.not.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.79) #14
  br label %set_gbe_ethss14_priv.exit

if.end39.i:                                       ; preds = %if.end28.i
  %53 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_et_stats.i, align 4
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 4) #11
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !314

devm_kcalloc.exit.thread.i:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw_stats_prev135.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %57 = ptrtoint ptr %hw_stats_prev135.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %hw_stats_prev135.i, align 4
  br label %do.end48.i

devm_kcalloc.exit.i:                              ; preds = %if.end39.i
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %60 = extractvalue { i32, i1 } %55, 0
  %call5.i.i133.i = call noalias ptr @devm_kmalloc(ptr noundef %59, i32 noundef %60, i32 noundef 3520) #11
  %hw_stats_prev.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %61 = ptrtoint ptr %hw_stats_prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i133.i, ptr %hw_stats_prev.i, align 4
  %tobool44.not.i = icmp eq ptr %call5.i.i133.i, null
  br i1 %tobool44.not.i, label %devm_kcalloc.exit.i.do.end48.i_crit_edge, label %if.end50.i

devm_kcalloc.exit.i.do.end48.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.i

do.end48.i:                                       ; preds = %devm_kcalloc.exit.i.do.end48.i_crit_edge, %devm_kcalloc.exit.thread.i
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.82) #14
  br label %set_gbe_ethss14_priv.exit

if.end50.i:                                       ; preds = %devm_kcalloc.exit.i
  %64 = ptrtoint ptr %ss_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ss_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 256
  %sgmii_port_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 19
  %66 = ptrtoint ptr %sgmii_port_regs.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i, ptr %sgmii_port_regs.i, align 4
  %67 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %switch_regs.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %68, i32 52
  %host_port_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 16
  %69 = ptrtoint ptr %host_port_regs.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr52.i, ptr %host_port_regs.i, align 4
  %70 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %max_num_slaves31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp138.not.i = icmp eq i8 %71, 0
  br i1 %cmp138.not.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  br label %for.body.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end50.i.for.body.i_crit_edge
  %i.0139.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end50.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %switch_regs.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %73, i32 768
  %and.i = shl i32 %i.0139.i, 8
  %mul.i = and i32 %and.i, 256
  %add.ptr57.i = getelementptr i8, ptr %add.ptr56.i, i32 %mul.i
  %arrayidx.i = getelementptr %struct.gbe_priv, ptr %call.i, i32 0, i32 22, i32 %i.0139.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr57.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0139.i, 1
  %75 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %max_num_slaves31, align 1
  %conv.i = zext i8 %76 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end50.i.for.end.i_crit_edge
  %77 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %switch_regs.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %78, i32 1280
  %cpts_reg.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 18
  %79 = ptrtoint ptr %cpts_reg.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr59.i, ptr %cpts_reg.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %78, i32 1536
  %ale_reg.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 17
  %80 = ptrtoint ptr %ale_reg.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr61.i, ptr %ale_reg.i, align 4
  %81 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %max_num_ports, align 2
  %conv62.i = zext i8 %82 to i32
  %ale_ports.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 4
  %83 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv62.i, ptr %ale_ports.i, align 4
  %host_port.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 10
  %84 = ptrtoint ptr %host_port.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %host_port.i, align 4
  %stats_en_mask.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 13
  %85 = ptrtoint ptr %stats_en_mask.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 255, ptr %stats_en_mask.i, align 4
  %ss_regs_ofs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 23
  %86 = ptrtoint ptr %ss_regs_ofs.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %ss_regs_ofs.i, align 4
  %switch_regs_ofs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24
  %87 = ptrtoint ptr %switch_regs_ofs.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %switch_regs_ofs.i, align 2
  %control.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 1
  %88 = ptrtoint ptr %control.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 4, ptr %control.i, align 2
  %soft_reset.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 2
  %89 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 8, ptr %soft_reset.i, align 2
  %stat_port_en.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 4
  %90 = ptrtoint ptr %stat_port_en.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 12, ptr %stat_port_en.i, align 2
  %ptype.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 5
  %91 = ptrtoint ptr %ptype.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 16, ptr %ptype.i, align 2
  %flow_control.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 6
  %92 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 36, ptr %flow_control.i, align 2
  %host_port_regs_ofs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25
  %93 = ptrtoint ptr %host_port_regs_ofs.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 4, ptr %host_port_regs_ofs.i, align 4
  %rx_maxlen.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25, i32 2
  %94 = ptrtoint ptr %rx_maxlen.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 12, ptr %rx_maxlen.i, align 4
  br label %set_gbe_ethss14_priv.exit

set_gbe_ethss14_priv.exit:                        ; preds = %for.end.i, %do.end48.i, %do.end37.i, %do.end25.i, %do.end16.i, %do.end7.i439, %do.end.i435
  %retval.0.i442 = phi i32 [ %call.i433, %do.end.i435 ], [ %35, %do.end7.i439 ], [ %call11.i, %do.end16.i ], [ %41, %do.end25.i ], [ 0, %for.end.i ], [ -12, %do.end48.i ], [ -12, %do.end37.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i432) #11
  br label %if.end130

if.then112:                                       ; preds = %do.end94.if.then112_crit_edge, %do.end94.if.then112_crit_edge602
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i443) #11
  %95 = call ptr @memset(ptr %res.i443, i32 255, i32 32)
  %96 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %max_num_ports, align 2
  %num_stats_mods.i445 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 8
  %98 = ptrtoint ptr %num_stats_mods.i445 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %num_stats_mods.i445, align 1
  %et_stats.i446 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 34
  %99 = ptrtoint ptr %et_stats.i446 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @gbenu_et_stats, ptr %et_stats.i446, align 4
  %100 = zext i16 %trunc577 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.163)
  switch i16 %trunc577, label %if.then112.if.end.i451_crit_edge [
    i16 20198, label %if.then112.if.then.i_crit_edge
    i16 20200, label %if.then112.if.then.i_crit_edge603
  ]

if.then112.if.then.i_crit_edge603:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then112.if.then.i_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then112.if.end.i451_crit_edge:                 ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i451

if.then.i:                                        ; preds = %if.then112.if.then.i_crit_edge, %if.then112.if.then.i_crit_edge603
  %101 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %max_num_slaves31, align 1
  %conv.i449 = zext i8 %102 to i32
  %mul.i450 = mul nuw nsw i32 %conv.i449, 65
  %add.i = add nuw nsw i32 %mul.i450, 52
  br label %if.end.i451

if.end.i451:                                      ; preds = %if.then.i, %if.then112.if.end.i451_crit_edge
  %.sink.i = phi i32 [ %add.i, %if.then.i ], [ 117, %if.then112.if.end.i451_crit_edge ]
  %num_et_stats5.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 35
  %103 = ptrtoint ptr %num_et_stats5.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink.i, ptr %num_et_stats5.i, align 4
  %104 = shl nuw nsw i32 %.sink.i, 3
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  %call5.i.i.i453 = call noalias ptr @devm_kmalloc(ptr noundef %106, i32 noundef %104, i32 noundef 3520) #11
  %hw_stats.i454 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 32
  %107 = ptrtoint ptr %hw_stats.i454 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call5.i.i.i453, ptr %hw_stats.i454, align 4
  %tobool.not.i455 = icmp eq ptr %call5.i.i.i453, null
  br i1 %tobool.not.i455, label %do.end.i457, label %if.end10.i458

do.end.i457:                                      ; preds = %if.end.i451
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.79) #14
  br label %set_gbenu_ethss_priv.exit

if.end10.i458:                                    ; preds = %if.end.i451
  %110 = ptrtoint ptr %num_et_stats5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_et_stats5.i, align 4
  %112 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %111, i32 4) #11
  %113 = extractvalue { i32, i1 } %112, 1
  br i1 %113, label %devm_kcalloc.exit136.thread.i, label %devm_kcalloc.exit136.i, !prof !314

devm_kcalloc.exit136.thread.i:                    ; preds = %if.end10.i458
  call void @__sanitizer_cov_trace_pc() #13
  %hw_stats_prev141.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %114 = ptrtoint ptr %hw_stats_prev141.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %hw_stats_prev141.i, align 4
  br label %do.end19.i

devm_kcalloc.exit136.i:                           ; preds = %if.end10.i458
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 4
  %117 = extractvalue { i32, i1 } %112, 0
  %call5.i.i133.i459 = call noalias ptr @devm_kmalloc(ptr noundef %116, i32 noundef %117, i32 noundef 3520) #11
  %hw_stats_prev.i460 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %118 = ptrtoint ptr %hw_stats_prev.i460 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call5.i.i133.i459, ptr %hw_stats_prev.i460, align 4
  %tobool15.not.i = icmp eq ptr %call5.i.i133.i459, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit136.i.do.end19.i_crit_edge, label %if.end21.i

devm_kcalloc.exit136.i.do.end19.i_crit_edge:      ; preds = %devm_kcalloc.exit136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19.i

do.end19.i:                                       ; preds = %devm_kcalloc.exit136.i.do.end19.i_crit_edge, %devm_kcalloc.exit136.thread.i
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.82) #14
  br label %set_gbenu_ethss_priv.exit

if.end21.i:                                       ; preds = %devm_kcalloc.exit136.i
  %call22.i = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 1, ptr noundef nonnull %res.i443) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  br i1 %tobool23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.88, ptr noundef nonnull %node, i32 noundef 1) #14
  br label %set_gbenu_ethss_priv.exit

if.end29.i:                                       ; preds = %if.end21.i
  %call31.i = call ptr @devm_ioremap_resource(ptr noundef %122, ptr noundef nonnull %res.i443) #11
  %cmp.i.i461 = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i461, label %do.end36.i, label %if.end39.i463

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.91) #14
  %125 = ptrtoint ptr %call31.i to i32
  br label %set_gbenu_ethss_priv.exit

if.end39.i463:                                    ; preds = %if.end29.i
  %switch_regs.i462 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 15
  %126 = ptrtoint ptr %switch_regs.i462 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call31.i, ptr %switch_regs.i462, align 4
  %127 = ptrtoint ptr %ss_version.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ss_version.i, align 4
  %shr41.mask.i = and i32 %128, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323827200, i32 %shr41.mask.i)
  %cmp43.i = icmp eq i32 %shr41.mask.i, 1323827200
  br i1 %cmp43.i, label %if.end39.i463.if.end46.i_crit_edge, label %if.then45.i

if.end39.i463.if.end46.i_crit_edge:               ; preds = %if.end39.i463
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end39.i463
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %ss_regs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ss_regs.i, align 4
  %add.ptr.i465 = getelementptr i8, ptr %130, i32 256
  %sgmii_port_regs.i466 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 19
  %131 = ptrtoint ptr %sgmii_port_regs.i466 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr.i465, ptr %sgmii_port_regs.i466, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end39.i463.if.end46.i_crit_edge
  %sgmii_port_regs47.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 19
  %132 = ptrtoint ptr %sgmii_port_regs47.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sgmii_port_regs47.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %133, i32 512
  %sgmii_port34_regs.i467 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 20
  %134 = ptrtoint ptr %sgmii_port34_regs.i467 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr48.i, ptr %sgmii_port34_regs.i467, align 4
  %add.ptr50.i = getelementptr i8, ptr %call31.i, i32 4096
  %host_port_regs.i468 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 16
  %135 = ptrtoint ptr %host_port_regs.i468 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr50.i, ptr %host_port_regs.i468, align 4
  %136 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %max_num_ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp53144.not.i = icmp eq i8 %137, 0
  br i1 %cmp53144.not.i, label %if.end46.i.for.end.i485_crit_edge, label %if.end46.i.for.body.i472_crit_edge

if.end46.i.for.body.i472_crit_edge:               ; preds = %if.end46.i
  br label %for.body.i472

if.end46.i.for.end.i485_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i485

for.body.i472:                                    ; preds = %for.body.i472.for.body.i472_crit_edge, %if.end46.i.for.body.i472_crit_edge
  %i.0145.i = phi i32 [ %inc.i471, %for.body.i472.for.body.i472_crit_edge ], [ 0, %if.end46.i.for.body.i472_crit_edge ]
  %138 = ptrtoint ptr %switch_regs.i462 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %switch_regs.i462, align 4
  %add.ptr56.i469 = getelementptr i8, ptr %139, i32 106496
  %mul57.i = shl i32 %i.0145.i, 9
  %add.ptr58.i = getelementptr i8, ptr %add.ptr56.i469, i32 %mul57.i
  %arrayidx.i470 = getelementptr %struct.gbe_priv, ptr %call.i, i32 0, i32 22, i32 %i.0145.i
  %140 = ptrtoint ptr %arrayidx.i470 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr58.i, ptr %arrayidx.i470, align 4
  %inc.i471 = add nuw nsw i32 %i.0145.i, 1
  %141 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %max_num_ports, align 2
  %conv52.i = zext i8 %142 to i32
  %cmp53.i = icmp ult i32 %inc.i471, %conv52.i
  br i1 %cmp53.i, label %for.body.i472.for.body.i472_crit_edge, label %for.end.i485.loopexit

for.body.i472.for.body.i472_crit_edge:            ; preds = %for.body.i472
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i472

for.end.i485.loopexit:                            ; preds = %for.body.i472
  call void @__sanitizer_cov_trace_pc() #13
  %conv52.i.le = zext i8 %142 to i32
  br label %for.end.i485

for.end.i485:                                     ; preds = %for.end.i485.loopexit, %if.end46.i.for.end.i485_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end46.i.for.end.i485_crit_edge ], [ %conv52.i.le, %for.end.i485.loopexit ]
  %143 = ptrtoint ptr %switch_regs.i462 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %switch_regs.i462, align 4
  %add.ptr60.i = getelementptr i8, ptr %144, i32 118784
  %cpts_reg.i473 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 18
  %145 = ptrtoint ptr %cpts_reg.i473 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr60.i, ptr %cpts_reg.i473, align 4
  %add.ptr62.i = getelementptr i8, ptr %144, i32 122880
  %ale_reg.i474 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 17
  %146 = ptrtoint ptr %ale_reg.i474 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr62.i, ptr %ale_reg.i474, align 4
  %ale_ports.i475 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 4
  %147 = ptrtoint ptr %ale_ports.i475 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %.lcssa.i, ptr %ale_ports.i475, align 4
  %host_port.i476 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 10
  %148 = ptrtoint ptr %host_port.i476 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %host_port.i476, align 4
  %notmask.i = shl nsw i32 -1, %.lcssa.i
  %sub.i = xor i32 %notmask.i, -1
  %stats_en_mask.i477 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 13
  %149 = ptrtoint ptr %stats_en_mask.i477 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %sub.i, ptr %stats_en_mask.i477, align 4
  %ss_regs_ofs.i478 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 23
  %150 = ptrtoint ptr %ss_regs_ofs.i478 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %ss_regs_ofs.i478, align 4
  %rgmii_status.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 23, i32 2
  %151 = ptrtoint ptr %rgmii_status.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 24, ptr %rgmii_status.i, align 4
  %switch_regs_ofs.i479 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24
  %152 = ptrtoint ptr %switch_regs_ofs.i479 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %switch_regs_ofs.i479, align 2
  %control.i480 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 1
  %153 = ptrtoint ptr %control.i480 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 4, ptr %control.i480, align 2
  %stat_port_en.i481 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 4
  %154 = ptrtoint ptr %stat_port_en.i481 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 20, ptr %stat_port_en.i481, align 2
  %ptype.i482 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 5
  %155 = ptrtoint ptr %ptype.i482 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 24, ptr %ptype.i482, align 2
  %host_port_regs_ofs.i483 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25
  %156 = ptrtoint ptr %host_port_regs_ofs.i483 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 20, ptr %host_port_regs_ofs.i483, align 4
  %rx_maxlen.i484 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25, i32 2
  %157 = ptrtoint ptr %rx_maxlen.i484 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 36, ptr %rx_maxlen.i484, align 4
  %tx_pri_map.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25, i32 1
  %158 = ptrtoint ptr %tx_pri_map.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 24, ptr %tx_pri_map.i, align 2
  br label %set_gbenu_ethss_priv.exit

set_gbenu_ethss_priv.exit:                        ; preds = %for.end.i485, %do.end36.i, %do.end27.i, %do.end19.i, %do.end.i457
  %retval.0.i486 = phi i32 [ %call22.i, %do.end27.i ], [ %125, %do.end36.i ], [ 0, %for.end.i485 ], [ -12, %do.end19.i ], [ -12, %do.end.i457 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i443) #11
  br label %if.end130

if.else117:                                       ; preds = %if.end72
  %call118 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node, ptr noundef nonnull @.str.32) #11
  br i1 %call118, label %if.then119, label %do.end128

if.then119:                                       ; preds = %if.else117
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i487) #11
  %159 = call ptr @memset(ptr %res.i487, i32 255, i32 32)
  %call.i488 = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 0, ptr noundef nonnull %res.i487) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i488)
  %tobool.not.i489 = icmp eq i32 %call.i488, 0
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i489, label %if.end.i493, label %do.end.i490

do.end.i490:                                      ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.93, ptr noundef nonnull %node, i32 noundef 0) #14
  br label %set_xgbe_ethss10_priv.exit.thread

if.end.i493:                                      ; preds = %if.then119
  %call2.i491 = call ptr @devm_ioremap_resource(ptr noundef %161, ptr noundef nonnull %res.i487) #11
  %cmp.i.i492 = icmp ugt ptr %call2.i491, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i492, label %if.end.i493.set_xgbe_ethss10_priv.exit_crit_edge, label %if.end10.i498

if.end.i493.set_xgbe_ethss10_priv.exit_crit_edge: ; preds = %if.end.i493
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_xgbe_ethss10_priv.exit

if.end10.i498:                                    ; preds = %if.end.i493
  %ss_regs.i495 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 14
  %162 = ptrtoint ptr %ss_regs.i495 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call2.i491, ptr %ss_regs.i495, align 4
  %call11.i496 = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 1, ptr noundef nonnull %res.i487) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i496)
  %tobool12.not.i497 = icmp eq i32 %call11.i496, 0
  %163 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call.i, align 4
  br i1 %tobool12.not.i497, label %if.end18.i501, label %do.end16.i499

do.end16.i499:                                    ; preds = %if.end10.i498
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.99, ptr noundef nonnull %node, i32 noundef 1) #14
  br label %set_xgbe_ethss10_priv.exit.thread

if.end18.i501:                                    ; preds = %if.end10.i498
  %call20.i500 = call ptr @devm_ioremap_resource(ptr noundef %164, ptr noundef nonnull %res.i487) #11
  %cmp.i170.i = icmp ugt ptr %call20.i500, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %if.end18.i501.set_xgbe_ethss10_priv.exit_crit_edge, label %if.end28.i504

if.end18.i501.set_xgbe_ethss10_priv.exit_crit_edge: ; preds = %if.end18.i501
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_xgbe_ethss10_priv.exit

if.end28.i504:                                    ; preds = %if.end18.i501
  %switch_regs.i503 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 15
  %165 = ptrtoint ptr %switch_regs.i503 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call20.i500, ptr %switch_regs.i503, align 4
  %call29.i = call i32 @of_address_to_resource(ptr noundef nonnull %node, i32 noundef 2, ptr noundef nonnull %res.i487) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  %166 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %call.i, align 4
  br i1 %tobool30.not.i, label %if.end36.i, label %do.end34.i

do.end34.i:                                       ; preds = %if.end28.i504
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.105, ptr noundef nonnull %node, i32 noundef 2) #14
  br label %set_xgbe_ethss10_priv.exit.thread

if.end36.i:                                       ; preds = %if.end28.i504
  %call38.i = call ptr @devm_ioremap_resource(ptr noundef %167, ptr noundef nonnull %res.i487) #11
  %cmp.i171.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171.i, label %if.end36.i.set_xgbe_ethss10_priv.exit_crit_edge, label %if.end46.i511

if.end36.i.set_xgbe_ethss10_priv.exit_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_xgbe_ethss10_priv.exit

if.end46.i511:                                    ; preds = %if.end36.i
  %xgbe_serdes_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 21
  %168 = ptrtoint ptr %xgbe_serdes_regs.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call38.i, ptr %xgbe_serdes_regs.i, align 4
  %169 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %max_num_ports, align 2
  %num_stats_mods.i506 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 8
  %171 = ptrtoint ptr %num_stats_mods.i506 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %num_stats_mods.i506, align 1
  %et_stats.i507 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 34
  %172 = ptrtoint ptr %et_stats.i507 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @xgbe10_et_stats, ptr %et_stats.i507, align 4
  %num_et_stats.i508 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 35
  %173 = ptrtoint ptr %num_et_stats.i508 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 94, ptr %num_et_stats.i508, align 4
  %174 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call.i, align 4
  %call5.i.i.i509 = call noalias ptr @devm_kmalloc(ptr noundef %175, i32 noundef 752, i32 noundef 3520) #11
  %hw_stats.i510 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 32
  %176 = ptrtoint ptr %hw_stats.i510 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call5.i.i.i509, ptr %hw_stats.i510, align 4
  %tobool51.not.i = icmp eq ptr %call5.i.i.i509, null
  br i1 %tobool51.not.i, label %do.end55.i, label %if.end57.i

do.end55.i:                                       ; preds = %if.end46.i511
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.79) #14
  br label %set_xgbe_ethss10_priv.exit.thread

if.end57.i:                                       ; preds = %if.end46.i511
  %179 = ptrtoint ptr %num_et_stats.i508 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_et_stats.i508, align 4
  %181 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %180, i32 4) #11
  %182 = extractvalue { i32, i1 } %181, 1
  br i1 %182, label %devm_kcalloc.exit.thread.i512, label %devm_kcalloc.exit.i514, !prof !314

devm_kcalloc.exit.thread.i512:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw_stats_prev174.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %183 = ptrtoint ptr %hw_stats_prev174.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr null, ptr %hw_stats_prev174.i, align 4
  br label %do.end66.i

devm_kcalloc.exit.i514:                           ; preds = %if.end57.i
  %184 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call.i, align 4
  %186 = extractvalue { i32, i1 } %181, 0
  %call5.i.i172.i = call noalias ptr @devm_kmalloc(ptr noundef %185, i32 noundef %186, i32 noundef 3520) #11
  %hw_stats_prev.i513 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %187 = ptrtoint ptr %hw_stats_prev.i513 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call5.i.i172.i, ptr %hw_stats_prev.i513, align 4
  %tobool62.not.i = icmp eq ptr %call5.i.i172.i, null
  br i1 %tobool62.not.i, label %devm_kcalloc.exit.i514.do.end66.i_crit_edge, label %if.end68.i

devm_kcalloc.exit.i514.do.end66.i_crit_edge:      ; preds = %devm_kcalloc.exit.i514
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66.i

do.end66.i:                                       ; preds = %devm_kcalloc.exit.i514.do.end66.i_crit_edge, %devm_kcalloc.exit.thread.i512
  %188 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.82) #14
  br label %set_xgbe_ethss10_priv.exit.thread

if.end68.i:                                       ; preds = %devm_kcalloc.exit.i514
  %ss_version.i515 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 12
  %190 = ptrtoint ptr %ss_version.i515 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 20196, ptr %ss_version.i515, align 4
  %191 = ptrtoint ptr %ss_regs.i495 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ss_regs.i495, align 4
  %add.ptr.i516 = getelementptr i8, ptr %192, i32 256
  %sgmii_port_regs.i517 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 19
  %193 = ptrtoint ptr %sgmii_port_regs.i517 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %add.ptr.i516, ptr %sgmii_port_regs.i517, align 4
  %add.ptr71.i = getelementptr i8, ptr %192, i32 52
  %host_port_regs.i518 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 16
  %194 = ptrtoint ptr %host_port_regs.i518 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %add.ptr71.i, ptr %host_port_regs.i518, align 4
  %195 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %max_num_ports, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp177.not.i = icmp eq i8 %196, 0
  br i1 %cmp177.not.i, label %if.end68.i.set_xgbe_ethss10_priv.exit.thread571_crit_edge, label %if.end68.i.for.body.i524_crit_edge

if.end68.i.for.body.i524_crit_edge:               ; preds = %if.end68.i
  br label %for.body.i524

if.end68.i.set_xgbe_ethss10_priv.exit.thread571_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_xgbe_ethss10_priv.exit.thread571

for.body.i524:                                    ; preds = %for.body.i524.for.body.i524_crit_edge, %if.end68.i.for.body.i524_crit_edge
  %i.0178.i = phi i32 [ %inc.i521, %for.body.i524.for.body.i524_crit_edge ], [ 0, %if.end68.i.for.body.i524_crit_edge ]
  %197 = ptrtoint ptr %switch_regs.i503 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %switch_regs.i503, align 4
  %add.ptr75.i = getelementptr i8, ptr %198, i32 2048
  %mul.i519 = shl i32 %i.0178.i, 8
  %add.ptr76.i = getelementptr i8, ptr %add.ptr75.i, i32 %mul.i519
  %arrayidx.i520 = getelementptr %struct.gbe_priv, ptr %call.i, i32 0, i32 22, i32 %i.0178.i
  %199 = ptrtoint ptr %arrayidx.i520 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %add.ptr76.i, ptr %arrayidx.i520, align 4
  %inc.i521 = add nuw nsw i32 %i.0178.i, 1
  %200 = ptrtoint ptr %max_num_ports to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %max_num_ports, align 2
  %conv.i522 = zext i8 %201 to i32
  %cmp.i523 = icmp ult i32 %inc.i521, %conv.i522
  br i1 %cmp.i523, label %for.body.i524.for.body.i524_crit_edge, label %set_xgbe_ethss10_priv.exit.thread571.loopexit

for.body.i524.for.body.i524_crit_edge:            ; preds = %for.body.i524
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i524

set_xgbe_ethss10_priv.exit.thread571.loopexit:    ; preds = %for.body.i524
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i522.le = zext i8 %201 to i32
  br label %set_xgbe_ethss10_priv.exit.thread571

set_xgbe_ethss10_priv.exit.thread571:             ; preds = %set_xgbe_ethss10_priv.exit.thread571.loopexit, %if.end68.i.set_xgbe_ethss10_priv.exit.thread571_crit_edge
  %.lcssa.i527 = phi i32 [ 0, %if.end68.i.set_xgbe_ethss10_priv.exit.thread571_crit_edge ], [ %conv.i522.le, %set_xgbe_ethss10_priv.exit.thread571.loopexit ]
  %202 = ptrtoint ptr %switch_regs.i503 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %switch_regs.i503, align 4
  %add.ptr78.i = getelementptr i8, ptr %203, i32 1792
  %ale_reg.i528 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 17
  %204 = ptrtoint ptr %ale_reg.i528 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr78.i, ptr %ale_reg.i528, align 4
  %add.ptr80.i = getelementptr i8, ptr %203, i32 1536
  %cpts_reg.i529 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 18
  %205 = ptrtoint ptr %cpts_reg.i529 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %add.ptr80.i, ptr %cpts_reg.i529, align 4
  %ale_ports.i530 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 4
  %206 = ptrtoint ptr %ale_ports.i530 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %.lcssa.i527, ptr %ale_ports.i530, align 4
  %host_port.i531 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 10
  %207 = ptrtoint ptr %host_port.i531 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %host_port.i531, align 4
  %notmask.i532 = shl nsw i32 -1, %.lcssa.i527
  %sub.i533 = xor i32 %notmask.i532, -1
  %stats_en_mask.i534 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 13
  %208 = ptrtoint ptr %stats_en_mask.i534 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %sub.i533, ptr %stats_en_mask.i534, align 4
  %ss_regs_ofs.i535 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 23
  %209 = ptrtoint ptr %ss_regs_ofs.i535 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %ss_regs_ofs.i535, align 4
  %control.i536 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 23, i32 1
  %210 = ptrtoint ptr %control.i536 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 12, ptr %control.i536, align 2
  %switch_regs_ofs.i537 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24
  %211 = ptrtoint ptr %switch_regs_ofs.i537 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %switch_regs_ofs.i537, align 2
  %control88.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 1
  %212 = ptrtoint ptr %control88.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 4, ptr %control88.i, align 2
  %ptype.i538 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 5
  %213 = ptrtoint ptr %ptype.i538 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 16, ptr %ptype.i538, align 2
  %stat_port_en.i539 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 4
  %214 = ptrtoint ptr %stat_port_en.i539 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 12, ptr %stat_port_en.i539, align 2
  %flow_control.i540 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 6
  %215 = ptrtoint ptr %flow_control.i540 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 36, ptr %flow_control.i540, align 2
  %host_port_regs_ofs.i541 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25
  %216 = ptrtoint ptr %host_port_regs_ofs.i541 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 4, ptr %host_port_regs_ofs.i541, align 4
  %tx_pri_map.i542 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25, i32 1
  %217 = ptrtoint ptr %tx_pri_map.i542 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 8, ptr %tx_pri_map.i542, align 2
  %rx_maxlen.i543 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 25, i32 2
  %218 = ptrtoint ptr %rx_maxlen.i543 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 20, ptr %rx_maxlen.i543, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i487) #11
  %219 = ptrtoint ptr %xgbe_serdes_regs.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %xgbe_serdes_regs.i, align 4
  %221 = ptrtoint ptr %ss_regs.i495 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ss_regs.i495, align 4
  %call124 = call i32 @netcp_xgbe_serdes_init(ptr noundef %220, ptr noundef %222) #11
  br label %if.end130

set_xgbe_ethss10_priv.exit.thread:                ; preds = %do.end66.i, %do.end55.i, %do.end34.i, %do.end16.i499, %do.end.i490
  %retval.0.i545.ph = phi i32 [ -12, %do.end55.i ], [ -12, %do.end66.i ], [ %call29.i, %do.end34.i ], [ %call11.i496, %do.end16.i499 ], [ %call.i488, %do.end.i490 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i487) #11
  br label %cleanup

set_xgbe_ethss10_priv.exit:                       ; preds = %if.end36.i.set_xgbe_ethss10_priv.exit_crit_edge, %if.end18.i501.set_xgbe_ethss10_priv.exit_crit_edge, %if.end.i493.set_xgbe_ethss10_priv.exit_crit_edge
  %.str.96.sink = phi ptr [ @.str.96, %if.end.i493.set_xgbe_ethss10_priv.exit_crit_edge ], [ @.str.102, %if.end18.i501.set_xgbe_ethss10_priv.exit_crit_edge ], [ @.str.108, %if.end36.i.set_xgbe_ethss10_priv.exit_crit_edge ]
  %retval.0.i545.in = phi ptr [ %call2.i491, %if.end.i493.set_xgbe_ethss10_priv.exit_crit_edge ], [ %call20.i500, %if.end18.i501.set_xgbe_ethss10_priv.exit_crit_edge ], [ %call38.i, %if.end36.i.set_xgbe_ethss10_priv.exit_crit_edge ]
  %223 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull %.str.96.sink) #14
  %retval.0.i545 = ptrtoint ptr %retval.0.i545.in to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i487) #11
  br label %cleanup

do.end128:                                        ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %node) #14
  br label %cleanup

if.end130:                                        ; preds = %set_xgbe_ethss10_priv.exit.thread571, %set_gbenu_ethss_priv.exit, %set_gbe_ethss14_priv.exit
  %ret.0 = phi i32 [ %retval.0.i442, %set_gbe_ethss14_priv.exit ], [ %retval.0.i486, %set_gbenu_ethss_priv.exit ], [ %call124, %set_xgbe_ethss10_priv.exit.thread571 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool131.not = icmp eq i32 %ret.0, 0
  br i1 %tobool131.not, label %if.end133, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end133:                                        ; preds = %if.end130
  %call134 = call ptr @of_get_child_by_name(ptr noundef nonnull %node, ptr noundef nonnull @.str.36) #11
  %tobool135.not = icmp eq ptr %call134, null
  br i1 %tobool135.not, label %do.end139, label %if.end133.if.end140_crit_edge

if.end133.if.end140_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

do.end139:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  br label %if.end140

if.end140:                                        ; preds = %do.end139, %if.end133.if.end140_crit_edge
  %tx_pipe = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 9
  %225 = ptrtoint ptr %dma_chan_name to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dma_chan_name, align 4
  %227 = ptrtoint ptr %tx_queue_id to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %tx_queue_id, align 4
  %call143 = call i32 @netcp_txpipe_init(ptr noundef %tx_pipe, ptr noundef %netcp_device, ptr noundef %226, i32 noundef %228) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.then145

if.then145:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef %call134) #11
  br label %cleanup

if.end146:                                        ; preds = %if.end140
  %call148 = call i32 @netcp_txpipe_open(ptr noundef %tx_pipe) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.then150

if.then150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef %call134) #11
  br label %cleanup

if.end151:                                        ; preds = %if.end146
  %gbe_intf_head = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 29
  %229 = ptrtoint ptr %gbe_intf_head to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %gbe_intf_head, ptr %gbe_intf_head, align 4
  %prev.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 29, i32 1
  %230 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %gbe_intf_head, ptr %prev.i, align 4
  %call152 = call ptr @of_get_next_child(ptr noundef %call134, ptr noundef null) #11
  %cmp153.not581 = icmp eq ptr %call152, null
  br i1 %cmp153.not581, label %if.end151.for.end_crit_edge, label %for.body.lr.ph

if.end151.for.end_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end151
  %num_slaves = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %interface.0582 = phi ptr [ %call152, %for.body.lr.ph ], [ %call169, %for.inc.for.body_crit_edge ]
  %call.i.i546 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %interface.0582, ptr noundef nonnull @.str.40, ptr noundef nonnull %slave_num, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i546)
  %tobool156.not = icmp sgt i32 %call.i.i546, -1
  br i1 %tobool156.not, label %if.end161, label %do.end160

do.end160:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull %interface.0582) #14
  br label %for.inc

if.end161:                                        ; preds = %for.body
  %231 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %num_slaves, align 4
  %inc = add i32 %232, 1
  store i32 %inc, ptr %num_slaves, align 4
  %233 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %max_num_slaves31, align 1
  %conv164 = zext i8 %234 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv164)
  %cmp165.not = icmp ult i32 %inc, %conv164
  br i1 %cmp165.not, label %if.end161.for.inc_crit_edge, label %if.then167

if.end161.for.inc_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then167:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %interface.0582) #11
  br label %for.end

for.inc:                                          ; preds = %if.end161.for.inc_crit_edge, %do.end160
  %call169 = call ptr @of_get_next_child(ptr noundef %call134, ptr noundef nonnull %interface.0582) #11
  %cmp153.not = icmp eq ptr %call169, null
  br i1 %cmp153.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then167, %if.end151.for.end_crit_edge
  call void @of_node_put(ptr noundef %call134) #11
  %num_slaves170 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 3
  %235 = ptrtoint ptr %num_slaves170 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %num_slaves170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool171.not = icmp eq i32 %236, 0
  br i1 %tobool171.not, label %do.end175, label %for.end.if.end176_crit_edge

for.end.if.end176_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

do.end175:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45) #14
  br label %if.end176

if.end176:                                        ; preds = %do.end175, %for.end.if.end176_crit_edge
  %call177 = call ptr @of_get_child_by_name(ptr noundef nonnull %node, ptr noundef nonnull @.str.48) #11
  %secondary_slaves = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 30
  %237 = ptrtoint ptr %secondary_slaves to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %secondary_slaves, ptr %secondary_slaves, align 4
  %prev.i547 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 30, i32 1
  %238 = ptrtoint ptr %prev.i547 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %secondary_slaves, ptr %prev.i547, align 4
  %tobool178.not = icmp eq ptr %call177, null
  br i1 %tobool178.not, label %if.end176.if.end185_crit_edge, label %land.lhs.true

if.end176.if.end185_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

land.lhs.true:                                    ; preds = %if.end176
  %239 = ptrtoint ptr %num_slaves170 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %num_slaves170, align 4
  %241 = ptrtoint ptr %max_num_slaves31 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %max_num_slaves31, align 1
  %conv181 = zext i8 %242 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %conv181)
  %cmp182 = icmp ult i32 %240, %conv181
  br i1 %cmp182, label %if.then184, label %land.lhs.true.if.end185_crit_edge

land.lhs.true.if.end185_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.then184:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @init_secondary_ports(ptr noundef nonnull %call.i, ptr noundef nonnull %call177)
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %land.lhs.true.if.end185_crit_edge, %if.end176.if.end185_crit_edge
  call void @of_node_put(ptr noundef %call177) #11
  %243 = ptrtoint ptr %num_slaves170 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_slaves170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool187.not = icmp eq i32 %244, 0
  br i1 %tobool187.not, label %do.end191, label %if.end192

do.end191:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  br label %free_sec_ports

if.end192:                                        ; preds = %if.end185
  %245 = getelementptr inbounds i8, ptr %ale_params, i32 12
  %246 = call ptr @memset(ptr %245, i32 0, i32 24)
  %247 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %call.i, align 4
  %249 = ptrtoint ptr %ale_params to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %248, ptr %ale_params, align 4
  %ale_reg = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 17
  %250 = ptrtoint ptr %ale_reg to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ale_reg, align 4
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 1
  %252 = ptrtoint ptr %ale_regs to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %ale_regs, align 4
  %ale_ageout = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 2
  %253 = ptrtoint ptr %ale_ageout to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 30, ptr %ale_ageout, align 4
  %ale_ports = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 4
  %254 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ale_ports, align 4
  %ale_ports195 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 4
  %256 = ptrtoint ptr %ale_ports195 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %ale_ports195, align 4
  %dev_id = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 7
  %257 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr @.str.52, ptr %dev_id, align 4
  %ss_version196 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 12
  %258 = ptrtoint ptr %ss_version196 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %ss_version196, align 4
  %shr197 = lshr i32 %259, 16
  %trunc = trunc i32 %shr197 to i16
  %260 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %trunc, label %if.else211 [
    i16 20198, label %if.end192.if.end219.sink.split_crit_edge
    i16 20200, label %if.then209
  ]

if.end192.if.end219.sink.split_crit_edge:         ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.sink.split

if.then209:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.sink.split

if.else211:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %259)
  %cmp213 = icmp eq i32 %259, 20196
  br i1 %cmp213, label %if.else211.if.end219.sink.split_crit_edge, label %if.else211.if.end219_crit_edge

if.else211.if.end219_crit_edge:                   ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.else211.if.end219.sink.split_crit_edge:        ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.sink.split

if.end219.sink.split:                             ; preds = %if.else211.if.end219.sink.split_crit_edge, %if.then209, %if.end192.if.end219.sink.split_crit_edge
  %.str.54.sink = phi ptr [ @.str.54, %if.then209 ], [ @.str.53, %if.end192.if.end219.sink.split_crit_edge ], [ @.str.55, %if.else211.if.end219.sink.split_crit_edge ]
  %261 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %.str.54.sink, ptr %dev_id, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.end219.sink.split, %if.else211.if.end219_crit_edge
  %call220 = call ptr @cpsw_ale_create(ptr noundef nonnull %ale_params) #11
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 26
  %262 = ptrtoint ptr %ale to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call220, ptr %ale, align 4
  %cmp.i548 = icmp ugt ptr %call220, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i548, label %do.end226, label %do.body231

do.end226:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.57) #14
  %265 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ale, align 4
  %267 = ptrtoint ptr %266 to i32
  br label %free_sec_ports

do.body231:                                       ; preds = %if.end219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_probe.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_probe, %if.then243)) #11
          to label %if.end248 [label %if.then243], !srcloc !311

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #13
  %268 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_probe.__UNIQUE_ID_ddebug359, ptr noundef %269, ptr noundef nonnull @.str.59) #11
  br label %if.end248

if.end248:                                        ; preds = %if.then243, %do.body231
  %call249 = call ptr @of_get_child_by_name(ptr noundef nonnull %node, ptr noundef nonnull @.str.60) #11
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %if.then251, label %if.end248.if.end253_crit_edge

if.end248.if.end253_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then251:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  %call252 = call ptr @of_node_get(ptr noundef nonnull %node) #11
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end248.if.end253_crit_edge
  %cpts_node.0 = phi ptr [ %call249, %if.end248.if.end253_crit_edge ], [ %call252, %if.then251 ]
  %270 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %call.i, align 4
  %cpts_reg = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 18
  %272 = ptrtoint ptr %cpts_reg to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cpts_reg, align 4
  %call255 = call ptr @cpts_create(ptr noundef %271, ptr noundef %273, ptr noundef %cpts_node.0, i32 noundef 0) #11
  %cpts = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 38
  %274 = ptrtoint ptr %cpts to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %call255, ptr %cpts, align 4
  call void @of_node_put(ptr noundef %cpts_node.0) #11
  %275 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cpts, align 4
  %cmp.i549 = icmp ugt ptr %276, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i549, label %if.then259, label %if.end262

if.then259:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  %277 = ptrtoint ptr %276 to i32
  br label %free_sec_ports

if.end262:                                        ; preds = %if.end253
  call fastcc void @gbe_init_host_port(ptr noundef nonnull %call.i)
  call void @_raw_spin_lock_bh(ptr noundef %hw_stats_lock) #11
  %num_stats_mods = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 8
  %278 = ptrtoint ptr %num_stats_mods to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %num_stats_mods, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %cmp266585.not = icmp eq i8 %279, 0
  br i1 %cmp266585.not, label %if.end262.for.end279_crit_edge, label %for.body268.lr.ph

if.end262.for.end279_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end279

for.body268.lr.ph:                                ; preds = %if.end262
  %num_et_stats.i552 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 35
  %et_stats.i553 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 34
  %hw_stats.i554 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 32
  %hw_stats_prev.i555 = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 33
  %switch_regs.i.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 15
  %stat_port_en.i.i = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 24, i32 4
  br label %for.body268

for.body268:                                      ; preds = %for.inc277.for.body268_crit_edge, %for.body268.lr.ph
  %i.0586 = phi i32 [ 0, %for.body268.lr.ph ], [ %inc278, %for.inc277.for.body268_crit_edge ]
  %280 = ptrtoint ptr %ss_version196 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ss_version196, align 4
  %shr270.mask = and i32 %281, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1322385408, i32 %shr270.mask)
  %cmp272 = icmp eq i32 %shr270.mask, 1322385408
  br i1 %cmp272, label %if.then274, label %if.else275

if.then274:                                       ; preds = %for.body268
  %282 = ptrtoint ptr %switch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %switch_regs.i.i, align 4
  %284 = ptrtoint ptr %stat_port_en.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %stat_port_en.i.i, align 2
  %conv.i.i = zext i16 %285 to i32
  %add.ptr.i.i = getelementptr i8, ptr %283, i32 %conv.i.i
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !312
  %287 = call i32 @llvm.bswap.i32(i32 %286) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  %288 = zext i32 %i.0586 to i64
  call void @__sanitizer_cov_trace_switch(i64 %288, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %i.0586, label %if.then274.gbe_stats_mod_visible_ver14.exit.i_crit_edge [
    i32 0, label %if.then274.sw.bb.i.i_crit_edge
    i32 1, label %if.then274.sw.bb.i.i_crit_edge604
    i32 2, label %if.then274.sw.bb2.i.i_crit_edge
    i32 3, label %if.then274.sw.bb2.i.i_crit_edge605
  ]

if.then274.sw.bb2.i.i_crit_edge605:               ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i

if.then274.sw.bb2.i.i_crit_edge:                  ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i.i

if.then274.sw.bb.i.i_crit_edge604:                ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

if.then274.sw.bb.i.i_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

if.then274.gbe_stats_mod_visible_ver14.exit.i_crit_edge: ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_stats_mod_visible_ver14.exit.i

sw.bb.i.i:                                        ; preds = %if.then274.sw.bb.i.i_crit_edge, %if.then274.sw.bb.i.i_crit_edge604
  %and.i.i = and i32 %287, -268435457
  br label %do.body.i.i

sw.bb2.i.i:                                       ; preds = %if.then274.sw.bb2.i.i_crit_edge, %if.then274.sw.bb2.i.i_crit_edge605
  %or.i.i = or i32 %287, 268435456
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ %or.i.i, %sw.bb2.i.i ], [ %and.i.i, %sw.bb.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  call void @arm_heavy_mb() #11
  %289 = call i32 @llvm.bswap.i32(i32 %val.0.i.i) #11
  %290 = ptrtoint ptr %switch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %switch_regs.i.i, align 4
  %292 = ptrtoint ptr %stat_port_en.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %stat_port_en.i.i, align 2
  %conv6.i.i = zext i16 %293 to i32
  %add.ptr7.i.i = getelementptr i8, ptr %291, i32 %conv6.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %289) #11, !srcloc !317
  br label %gbe_stats_mod_visible_ver14.exit.i

gbe_stats_mod_visible_ver14.exit.i:               ; preds = %do.body.i.i, %if.then274.gbe_stats_mod_visible_ver14.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.gbe_priv, ptr %call.i, i32 0, i32 22, i32 %i.0586
  %294 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx.i.i, align 4
  %296 = ptrtoint ptr %num_et_stats.i552 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %num_et_stats.i552, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp19.i.i = icmp sgt i32 %297, 0
  br i1 %cmp19.i.i, label %gbe_stats_mod_visible_ver14.exit.i.for.body.i.i_crit_edge, label %gbe_stats_mod_visible_ver14.exit.i.for.inc277_crit_edge

gbe_stats_mod_visible_ver14.exit.i.for.inc277_crit_edge: ; preds = %gbe_stats_mod_visible_ver14.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc277

gbe_stats_mod_visible_ver14.exit.i.for.body.i.i_crit_edge: ; preds = %gbe_stats_mod_visible_ver14.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %gbe_stats_mod_visible_ver14.exit.i.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %gbe_stats_mod_visible_ver14.exit.i.for.body.i.i_crit_edge ]
  %298 = ptrtoint ptr %et_stats.i553 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %et_stats.i553, align 4
  %type.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %299, i32 %i.020.i.i, i32 1
  %300 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %301, i32 %i.0586)
  %cmp2.i.i = icmp eq i32 %301, %i.0586
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %299, i32 %i.020.i.i, i32 3
  %302 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %295, i32 %303
  %304 = ptrtoint ptr %hw_stats.i554 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %hw_stats.i554, align 4
  %arrayidx5.i.i = getelementptr i64, ptr %305, i32 %i.020.i.i
  %306 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 0, ptr %arrayidx5.i.i, align 8
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #11, !srcloc !312
  %308 = call i32 @llvm.bswap.i32(i32 %307) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  %309 = ptrtoint ptr %hw_stats_prev.i555 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %hw_stats_prev.i555, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %310, i32 %i.020.i.i
  %311 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %308, ptr %arrayidx7.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %312 = ptrtoint ptr %num_et_stats.i552 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %num_et_stats.i552, align 4
  %cmp.i.i550 = icmp slt i32 %inc.i.i, %313
  br i1 %cmp.i.i550, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc277_crit_edge

for.inc.i.i.for.inc277_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc277

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.else275:                                       ; preds = %for.body268
  %arrayidx.i551 = getelementptr %struct.gbe_priv, ptr %call.i, i32 0, i32 22, i32 %i.0586
  %314 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx.i551, align 4
  %316 = ptrtoint ptr %num_et_stats.i552 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %num_et_stats.i552, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %cmp19.i = icmp sgt i32 %317, 0
  br i1 %cmp19.i, label %if.else275.for.body.i556_crit_edge, label %if.else275.for.inc277_crit_edge

if.else275.for.inc277_crit_edge:                  ; preds = %if.else275
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc277

if.else275.for.body.i556_crit_edge:               ; preds = %if.else275
  br label %for.body.i556

for.body.i556:                                    ; preds = %for.inc.i.for.body.i556_crit_edge, %if.else275.for.body.i556_crit_edge
  %i.020.i = phi i32 [ %inc.i559, %for.inc.i.for.body.i556_crit_edge ], [ 0, %if.else275.for.body.i556_crit_edge ]
  %318 = ptrtoint ptr %et_stats.i553 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %et_stats.i553, align 4
  %type.i = getelementptr %struct.netcp_ethtool_stat, ptr %319, i32 %i.020.i, i32 1
  %320 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %321, i32 %i.0586)
  %cmp2.i = icmp eq i32 %321, %i.0586
  br i1 %cmp2.i, label %if.then.i558, label %for.body.i556.for.inc.i_crit_edge

for.body.i556.for.inc.i_crit_edge:                ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i558:                                     ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i = getelementptr %struct.netcp_ethtool_stat, ptr %319, i32 %i.020.i, i32 3
  %322 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %offset.i, align 4
  %add.ptr.i557 = getelementptr i8, ptr %315, i32 %323
  %324 = ptrtoint ptr %hw_stats.i554 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %hw_stats.i554, align 4
  %arrayidx5.i = getelementptr i64, ptr %325, i32 %i.020.i
  %326 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 0, ptr %arrayidx5.i, align 8
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i557) #11, !srcloc !312
  %328 = call i32 @llvm.bswap.i32(i32 %327) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  %329 = ptrtoint ptr %hw_stats_prev.i555 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %hw_stats_prev.i555, align 4
  %arrayidx7.i = getelementptr i32, ptr %330, i32 %i.020.i
  %331 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %328, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i558, %for.body.i556.for.inc.i_crit_edge
  %inc.i559 = add nuw nsw i32 %i.020.i, 1
  %332 = ptrtoint ptr %num_et_stats.i552 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %num_et_stats.i552, align 4
  %cmp.i560 = icmp slt i32 %inc.i559, %333
  br i1 %cmp.i560, label %for.inc.i.for.body.i556_crit_edge, label %for.inc.i.for.inc277_crit_edge

for.inc.i.for.inc277_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc277

for.inc.i.for.body.i556_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i556

for.inc277:                                       ; preds = %for.inc.i.for.inc277_crit_edge, %if.else275.for.inc277_crit_edge, %for.inc.i.i.for.inc277_crit_edge, %gbe_stats_mod_visible_ver14.exit.i.for.inc277_crit_edge
  %inc278 = add nuw nsw i32 %i.0586, 1
  %334 = ptrtoint ptr %num_stats_mods to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %num_stats_mods, align 1
  %conv265 = zext i8 %335 to i32
  %cmp266 = icmp ult i32 %inc278, %conv265
  br i1 %cmp266, label %for.inc277.for.body268_crit_edge, label %for.inc277.for.end279_crit_edge

for.inc277.for.end279_crit_edge:                  ; preds = %for.inc277
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end279

for.inc277.for.body268_crit_edge:                 ; preds = %for.inc277
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body268

for.end279:                                       ; preds = %for.inc277.for.end279_crit_edge, %if.end262.for.end279_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %hw_stats_lock) #11
  %timer = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 2
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @netcp_ethss_timer, i32 noundef 0, ptr noundef nonnull @.str.62, ptr noundef nonnull @gbe_probe.__key.61) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %336 = load volatile i32, ptr @jiffies, align 128
  %add284 = add i32 %336, 50
  %expires = getelementptr inbounds %struct.gbe_priv, ptr %call.i, i32 0, i32 2, i32 1
  %337 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %add284, ptr %expires, align 4
  call void @add_timer(ptr noundef %timer) #11
  %338 = ptrtoint ptr %inst_priv to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %call.i, ptr %inst_priv, align 4
  br label %cleanup

free_sec_ports:                                   ; preds = %if.then259, %do.end226, %do.end191
  %ret.1 = phi i32 [ %267, %do.end226 ], [ %277, %if.then259 ], [ -19, %do.end191 ]
  call fastcc void @free_secondary_ports(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %free_sec_ports, %for.end279, %if.then150, %if.then145, %if.end130.cleanup_crit_edge, %do.end128, %set_xgbe_ethss10_priv.exit, %set_xgbe_ethss10_priv.exit.thread, %do.end94.cleanup_crit_edge, %get_gbe_resource_version.exit, %get_gbe_resource_version.exit.thread565, %do.end71, %do.end26, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end71 ], [ %call143, %if.then145 ], [ %call148, %if.then150 ], [ %ret.1, %free_sec_ports ], [ 0, %for.end279 ], [ -22, %do.end26 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %24, %get_gbe_resource_version.exit ], [ %retval.0.i545, %set_xgbe_ethss10_priv.exit ], [ %ret.0, %if.end130.cleanup_crit_edge ], [ %call.i430, %get_gbe_resource_version.exit.thread565 ], [ %retval.0.i545.ph, %set_xgbe_ethss10_priv.exit.thread ], [ -19, %do.end128 ], [ -19, %do.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_num) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ale_params) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_remove(ptr nocapture noundef readnone %netcp_device, ptr noundef %inst_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %cpts = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 38
  %0 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpts, align 4
  tail call void @cpts_release(ptr noundef %1) #11
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 26
  %2 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_stop(ptr noundef %3) #11
  %tx_pipe = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 9
  %call1 = tail call i32 @netcp_txpipe_close(ptr noundef %tx_pipe) #11
  %secondary_slaves.i = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 30
  %4 = ptrtoint ptr %secondary_slaves.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %secondary_slaves.i, align 4
  %cmp.i.not14.i = icmp eq ptr %5, %secondary_slaves.i
  br i1 %cmp.i.not14.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %6 = phi ptr [ %18, %list_del.exit.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %phy.i = getelementptr i8, ptr %6, i32 -32
  %7 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_disconnect(ptr noundef nonnull %8) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %secondary_slaves.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %secondary_slaves.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %secondary_slaves.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.while.end.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

list_del.exit.i.while.end.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %list_del.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %dummy_ndev.i = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 31
  %19 = ptrtoint ptr %dummy_ndev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dummy_ndev.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %while.end.i.free_secondary_ports.exit_crit_edge, label %if.then5.i

while.end.i.free_secondary_ports.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_secondary_ports.exit

if.then5.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_netdev(ptr noundef nonnull %20) #11
  br label %free_secondary_ports.exit

free_secondary_ports.exit:                        ; preds = %if.then5.i, %while.end.i.free_secondary_ports.exit_crit_edge
  %gbe_intf_head = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 29
  %21 = ptrtoint ptr %gbe_intf_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %gbe_intf_head, align 4
  %cmp.i.not = icmp eq ptr %22, %gbe_intf_head
  br i1 %cmp.i.not, label %free_secondary_ports.exit.if.end_crit_edge, label %do.end

free_secondary_ports.exit.if.end_crit_edge:       ; preds = %free_secondary_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %free_secondary_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %inst_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inst_priv, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %24, ptr noundef nonnull @.str.137) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %free_secondary_ports.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_attach(ptr noundef %inst_priv, ptr noundef %ndev, ptr noundef %node, ptr nocapture noundef writeonly %intf_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  %0 = ptrtoint ptr %inst_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst_priv, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.140) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 560, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ndev, ptr %call.i, align 4
  %3 = ptrtoint ptr %inst_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inst_priv, align 4
  %dev7 = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %dev7, align 4
  %gbe_dev8 = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %gbe_dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %inst_priv, ptr %gbe_dev8, align 4
  %call.i57 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 92, i32 noundef 3520) #11
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i57, ptr %slave, align 4
  %tobool12.not = icmp eq ptr %call.i57, null
  br i1 %tobool12.not, label %if.end4.if.then28_crit_edge, label %if.end14

if.end4.if.then28_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.end14:                                         ; preds = %if.end4
  %call16 = tail call fastcc i32 @init_slave(ptr noundef %inst_priv, ptr noundef nonnull %call.i57, ptr noundef nonnull %node)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %fail

if.end19:                                         ; preds = %if.end14
  %tx_pipe = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 3
  %tx_pipe20 = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 9
  %8 = call ptr @memcpy(ptr %tx_pipe, ptr %tx_pipe20, i32 24)
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @keystone_ethtool_ops, ptr %ethtool_ops, align 16
  %gbe_intf_list = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 5
  %gbe_intf_head = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 29
  %prev.i = getelementptr inbounds %struct.gbe_priv, ptr %inst_priv, i32 0, i32 29, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %gbe_intf_list, ptr noundef %11, ptr noundef %gbe_intf_head) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %gbe_intf_list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %gbe_intf_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %gbe_intf_head, ptr %gbe_intf_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbe_intf, ptr %call.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %gbe_intf_list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end19.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %intf_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %intf_priv, align 4
  br label %cleanup

fail:                                             ; preds = %if.end14
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %slave, align 4
  %tobool22.not = icmp eq ptr %.pr, null
  br i1 %tobool22.not, label %fail.if.then28_crit_edge, label %if.then23

fail.if.then28_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then23:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %inst_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inst_priv, align 4
  tail call void @devm_kfree(ptr noundef %19, ptr noundef nonnull %.pr) #11
  br label %if.then28

if.then28:                                        ; preds = %if.then23, %fail.if.then28_crit_edge, %if.end4.if.then28_crit_edge
  %ret.060 = phi i32 [ -19, %fail.if.then28_crit_edge ], [ -19, %if.then23 ], [ -12, %if.end4.if.then28_crit_edge ]
  %20 = ptrtoint ptr %inst_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inst_priv, align 4
  tail call void @devm_kfree(ptr noundef %21, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.060, %if.then28 ], [ 0, %list_add_tail.exit ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_release(ptr noundef %intf_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_priv, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ethtool_ops, align 16
  %gbe_intf_list = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %gbe_intf_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %gbe_intf_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gbe_intf_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %gbe_intf_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %gbe_intf_list, align 4
  %prev.i = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 4
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave, align 4
  tail call void @devm_kfree(ptr noundef %12, ptr noundef %14) #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %16, ptr noundef %intf_priv) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_open(ptr noundef %intf_priv, ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %slave2 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 4
  %2 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave2, align 4
  %port_num3 = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port_num3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num3, align 4
  %switch_regs = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %switch_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_regs, align 4
  %switch_regs_ofs = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %switch_regs_ofs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %switch_regs_ofs, align 2
  %conv = zext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_open.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !311

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %shr = lshr i32 %11, 8
  %and = and i32 %shr, 7
  %and10 = and i32 %11, 255
  %shr11 = lshr i32 %11, 11
  %and12 = and i32 %shr11, 31
  %shr13 = lshr i32 %11, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_open.__UNIQUE_ID_ddebug354, ptr noundef %13, ptr noundef nonnull @.str.145, i32 noundef %and, i32 noundef %and10, i32 noundef %and12, i32 noundef %shr13) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ss_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %15)
  %cmp = icmp eq i32 %15, 20196
  br i1 %cmp, label %do.end.if.then27_crit_edge, label %lor.lhs.false

do.end.if.then27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %do.end
  %shr17 = lshr i32 %15, 16
  %trunc = trunc i32 %shr17 to i16
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %trunc, label %lor.lhs.false.if.end28_crit_edge [
    i16 20198, label %lor.lhs.false.if.then27_crit_edge
    i16 20200, label %lor.lhs.false.if.then27_crit_edge155
  ]

lor.lhs.false.if.then27_crit_edge155:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge155, %do.end.if.then27_crit_edge
  %flags = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %flags, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %lor.lhs.false.if.end28_crit_edge
  %enable_ale = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %enable_ale to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable_ale, align 4, !range !320
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  %conv32 = trunc i32 %5 to i8
  %spec.select = select i1 %tobool29.not, i8 %conv32, i8 0
  %20 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_open.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_open, %if.then48)) #11
          to label %do.end60 [label %if.then48], !srcloc !311

if.then48:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dma_chan_name = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %dma_chan_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_chan_name, align 4
  %dma_channel = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_channel, align 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %20, align 4
  %conv54 = zext i8 %29 to i32
  %flags56 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %flags56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags56, align 1
  %conv57 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_open.__UNIQUE_ID_ddebug355, ptr noundef %23, ptr noundef nonnull @.str.146, ptr noundef %25, ptr noundef %27, i32 noundef %conv54, i32 noundef %conv57) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then48, %if.end28
  tail call fastcc void @gbe_slave_stop(ptr noundef %intf_priv)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %switch_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %switch_regs, align 4
  %ptype = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 24, i32 5
  %34 = ptrtoint ptr %ptype to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ptype, align 2
  %conv66 = zext i16 %35 to i32
  %add.ptr67 = getelementptr i8, ptr %33, i32 %conv66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #11, !srcloc !317
  %36 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ss_version, align 4
  %shr69 = lshr i32 %37, 16
  %trunc154 = trunc i32 %shr69 to i16
  %38 = zext i16 %trunc154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %trunc154, label %do.end60.do.body81_crit_edge [
    i16 20198, label %do.end60.if.then79_crit_edge
    i16 20200, label %do.end60.if.then79_crit_edge156
  ]

do.end60.if.then79_crit_edge156:                  ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

do.end60.if.then79_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

do.end60.do.body81_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body81

if.then79:                                        ; preds = %do.end60.if.then79_crit_edge, %do.end60.if.then79_crit_edge156
  %hw_cap = getelementptr i8, ptr %ndev, i32 2832
  %39 = ptrtoint ptr %hw_cap to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %hw_cap, align 16
  br label %do.body81

do.body81:                                        ; preds = %if.then79, %do.end60.do.body81_crit_edge
  %val.0 = phi i32 [ 8196, %if.then79 ], [ 4, %do.end60.do.body81_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %40 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %41 = ptrtoint ptr %switch_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %switch_regs, align 4
  %control = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 24, i32 1
  %43 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %control, align 2
  %conv86 = zext i16 %44 to i32
  %add.ptr87 = getelementptr i8, ptr %42, i32 %conv86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %40) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  tail call void @arm_heavy_mb() #11
  %stats_en_mask = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 13
  %45 = ptrtoint ptr %stats_en_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stats_en_mask, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %switch_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %switch_regs, align 4
  %stat_port_en = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 24, i32 4
  %50 = ptrtoint ptr %stat_port_en to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %stat_port_en, align 2
  %conv93 = zext i16 %51 to i32
  %add.ptr94 = getelementptr i8, ptr %49, i32 %conv93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %47) #11, !srcloc !317
  %call95 = tail call fastcc i32 @gbe_slave_open(ptr noundef %intf_priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %fail

if.end98:                                         ; preds = %do.body81
  %call99 = tail call i32 @netcp_register_txhook(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull @gbe_txhook, ptr noundef %intf_priv) #11
  %call100 = tail call i32 @netcp_register_rxhook(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull @gbe_rxhook, ptr noundef %intf_priv) #11
  %open = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 7
  %52 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %open, align 4
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %1, ptr noundef %3, ptr noundef %ndev)
  %cpts.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 38
  %53 = ptrtoint ptr %cpts.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpts.i, align 4
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end98.cleanup_crit_edge, label %if.end.i

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end98
  %cpts_registered.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 37
  %55 = ptrtoint ptr %cpts_registered.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpts_registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp sgt i32 %56, 0
  br i1 %cmp.i, label %if.end.i.done.i_crit_edge, label %if.end2.i

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end2.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @cpts_register(ptr noundef nonnull %54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end2.i.done.i_crit_edge, label %do.end.i

if.end2.i.done.i_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.152) #14
  br label %cleanup

done.i:                                           ; preds = %if.end2.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %59 = ptrtoint ptr %cpts_registered.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpts_registered.i, align 4
  %inc.i = add i32 %60, 1
  store i32 %inc.i, ptr %cpts_registered.i, align 4
  br label %cleanup

fail:                                             ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gbe_slave_stop(ptr noundef %intf_priv)
  br label %cleanup

cleanup:                                          ; preds = %fail, %done.i, %do.end.i, %if.end98.cleanup_crit_edge
  ret i32 %call95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_close(ptr noundef %intf_priv, ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %cpts.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %cpts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpts.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.gbe_unregister_cpts.exit_crit_edge, label %lor.lhs.false.i

entry.gbe_unregister_cpts.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_unregister_cpts.exit

lor.lhs.false.i:                                  ; preds = %entry
  %cpts_registered.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %cpts_registered.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpts_registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %lor.lhs.false.i.gbe_unregister_cpts.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gbe_unregister_cpts.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_unregister_cpts.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dec.i = add nsw i32 %5, -1
  %6 = ptrtoint ptr %cpts_registered.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec.i, ptr %cpts_registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.gbe_unregister_cpts.exit_crit_edge

if.end.i.gbe_unregister_cpts.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_unregister_cpts.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpts_unregister(ptr noundef nonnull %3) #11
  br label %gbe_unregister_cpts.exit

gbe_unregister_cpts.exit:                         ; preds = %if.end4.i, %if.end.i.gbe_unregister_cpts.exit_crit_edge, %lor.lhs.false.i.gbe_unregister_cpts.exit_crit_edge, %entry.gbe_unregister_cpts.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @gbe_slave_stop(ptr noundef %intf_priv)
  %call2 = tail call i32 @netcp_unregister_rxhook(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull @gbe_rxhook, ptr noundef %intf_priv) #11
  %call3 = tail call i32 @netcp_unregister_txhook(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull @gbe_txhook, ptr noundef %intf_priv) #11
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 4
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %open = getelementptr inbounds %struct.gbe_slave, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %open, align 4
  %10 = load ptr, ptr %slave, align 4
  %link_state = getelementptr inbounds %struct.gbe_slave, ptr %10, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #11
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %link_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_add_addr(ptr noundef %intf_priv, ptr noundef %naddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_add_addr.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_add_addr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !311

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %type = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_add_addr.__UNIQUE_ID_ddebug352, ptr noundef %3, ptr noundef nonnull @.str.155, ptr noundef %addr, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type4 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 2
  %6 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge34
    i32 2, label %do.end.sw.bb7_crit_edge
    i32 1, label %do.end.sw.bb7_crit_edge35
  ]

do.end.sw.bb7_crit_edge35:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

do.end.sw.bb7_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

do.end.sw.bb_crit_edge34:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge34
  %addr5 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %9 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gbe_dev1, align 4
  %ale.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale.i, align 4
  %ale_ports.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ale_ports.i, align 4
  %notmask.i = shl nsw i32 -1, %14
  %sub.i = xor i32 %notmask.i, -1
  %call.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %12, ptr noundef %addr5, i32 noundef %sub.i, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #11
  %active_vlans.i = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #11
  %conv324.i = and i32 %call2.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv324.i)
  %cmp25.i = icmp ult i32 %conv324.i, 4096
  br i1 %cmp25.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %conv327.i = phi i32 [ %conv3.i, %for.body.i.for.body.i_crit_edge ], [ %conv324.i, %sw.bb.for.body.i_crit_edge ]
  %vlan_id.0.in26.i = phi i32 [ %call13.i, %for.body.i.for.body.i_crit_edge ], [ %call2.i, %sw.bb.for.body.i_crit_edge ]
  %vlan_id.0.i = trunc i32 %vlan_id.0.in26.i to i16
  %15 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ale.i, align 4
  %17 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ale_ports.i, align 4
  %notmask23.i = shl nsw i32 -1, %18
  %sub8.i = xor i32 %notmask23.i, -1
  %call9.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %16, ptr noundef %addr5, i32 noundef %sub8.i, i32 noundef 8, i16 noundef zeroext %vlan_id.0.i, i32 noundef 3) #11
  %add.i = add nuw nsw i32 %conv327.i, 1
  %call13.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #11
  %conv3.i = and i32 %call13.i, 65535
  %cmp.i = icmp ult i32 %conv3.i, 4096
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb7:                                           ; preds = %do.end.sw.bb7_crit_edge, %do.end.sw.bb7_crit_edge35
  %addr8 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %19 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gbe_dev1, align 4
  %ale.i18 = getelementptr inbounds %struct.gbe_priv, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %ale.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale.i18, align 4
  %host_port.i = getelementptr inbounds %struct.gbe_priv, ptr %20, i32 0, i32 10
  %23 = ptrtoint ptr %host_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_port.i, align 4
  %call.i19 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %22, ptr noundef %addr8, i32 noundef %24, i32 noundef 0, i16 noundef zeroext 0) #11
  %active_vlans.i20 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  %call2.i21 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i20, i32 noundef 4096, i32 noundef 0) #11
  %conv321.i = and i32 %call2.i21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv321.i)
  %cmp22.i = icmp ult i32 %conv321.i, 4096
  br i1 %cmp22.i, label %sw.bb7.for.body.i27_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7.for.body.i27_crit_edge:                    ; preds = %sw.bb7
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %sw.bb7.for.body.i27_crit_edge
  %conv324.i22 = phi i32 [ %conv3.i25, %for.body.i27.for.body.i27_crit_edge ], [ %conv321.i, %sw.bb7.for.body.i27_crit_edge ]
  %vlan_id.0.in23.i = phi i32 [ %call11.i, %for.body.i27.for.body.i27_crit_edge ], [ %call2.i21, %sw.bb7.for.body.i27_crit_edge ]
  %vlan_id.0.i23 = trunc i32 %vlan_id.0.in23.i to i16
  %25 = ptrtoint ptr %ale.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ale.i18, align 4
  %27 = ptrtoint ptr %host_port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %host_port.i, align 4
  %call7.i = tail call i32 @cpsw_ale_add_ucast(ptr noundef %26, ptr noundef %addr8, i32 noundef %28, i32 noundef 8, i16 noundef zeroext %vlan_id.0.i23) #11
  %add.i24 = add nuw nsw i32 %conv324.i22, 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i20, i32 noundef 4096, i32 noundef %add.i24) #11
  %conv3.i25 = and i32 %call11.i, 65535
  %cmp.i26 = icmp ult i32 %conv3.i25, 4096
  br i1 %cmp.i26, label %for.body.i27.for.body.i27_crit_edge, label %for.body.i27.sw.epilog_crit_edge

for.body.i27.sw.epilog_crit_edge:                 ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i27

sw.epilog:                                        ; preds = %for.body.i27.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_del_addr(ptr noundef %intf_priv, ptr noundef %naddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_del_addr.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_del_addr, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !311

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %type = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_del_addr.__UNIQUE_ID_ddebug353, ptr noundef %3, ptr noundef nonnull @.str.157, ptr noundef %addr, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %type4 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 2
  %6 = ptrtoint ptr %type4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge34
    i32 2, label %do.end.sw.bb7_crit_edge
    i32 1, label %do.end.sw.bb7_crit_edge35
  ]

do.end.sw.bb7_crit_edge35:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

do.end.sw.bb7_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

do.end.sw.bb_crit_edge34:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge34
  %addr5 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %9 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gbe_dev1, align 4
  %ale.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale.i, align 4
  %call.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %12, ptr noundef %addr5, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #11
  %active_vlans.i = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #11
  %conv318.i = and i32 %call2.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv318.i)
  %cmp19.i = icmp ult i32 %conv318.i, 4096
  br i1 %cmp19.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %conv321.i = phi i32 [ %conv3.i, %for.body.i.for.body.i_crit_edge ], [ %conv318.i, %sw.bb.for.body.i_crit_edge ]
  %vlan_id.0.in20.i = phi i32 [ %call10.i, %for.body.i.for.body.i_crit_edge ], [ %call2.i, %sw.bb.for.body.i_crit_edge ]
  %vlan_id.0.i = trunc i32 %vlan_id.0.in20.i to i16
  %13 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale.i, align 4
  %call6.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %14, ptr noundef %addr5, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vlan_id.0.i) #11
  %add.i = add nuw nsw i32 %conv321.i, 1
  %call10.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #11
  %conv3.i = and i32 %call10.i, 65535
  %cmp.i = icmp ult i32 %conv3.i, 4096
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb7:                                           ; preds = %do.end.sw.bb7_crit_edge, %do.end.sw.bb7_crit_edge35
  %addr8 = getelementptr inbounds %struct.netcp_addr, ptr %naddr, i32 0, i32 1
  %15 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gbe_dev1, align 4
  %ale.i18 = getelementptr inbounds %struct.gbe_priv, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %ale.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale.i18, align 4
  %host_port.i = getelementptr inbounds %struct.gbe_priv, ptr %16, i32 0, i32 10
  %19 = ptrtoint ptr %host_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_port.i, align 4
  %call.i19 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %18, ptr noundef %addr8, i32 noundef %20, i32 noundef 0, i16 noundef zeroext 0) #11
  %active_vlans.i20 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  %call2.i21 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i20, i32 noundef 4096, i32 noundef 0) #11
  %conv321.i22 = and i32 %call2.i21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv321.i22)
  %cmp22.i = icmp ult i32 %conv321.i22, 4096
  br i1 %cmp22.i, label %sw.bb7.for.body.i27_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7.for.body.i27_crit_edge:                    ; preds = %sw.bb7
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %sw.bb7.for.body.i27_crit_edge
  %conv324.i = phi i32 [ %conv3.i25, %for.body.i27.for.body.i27_crit_edge ], [ %conv321.i22, %sw.bb7.for.body.i27_crit_edge ]
  %vlan_id.0.in23.i = phi i32 [ %call11.i, %for.body.i27.for.body.i27_crit_edge ], [ %call2.i21, %sw.bb7.for.body.i27_crit_edge ]
  %vlan_id.0.i23 = trunc i32 %vlan_id.0.in23.i to i16
  %21 = ptrtoint ptr %ale.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale.i18, align 4
  %23 = ptrtoint ptr %host_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %host_port.i, align 4
  %call7.i = tail call i32 @cpsw_ale_del_ucast(ptr noundef %22, ptr noundef %addr8, i32 noundef %24, i32 noundef 8, i16 noundef zeroext %vlan_id.0.i23) #11
  %add.i24 = add nuw nsw i32 %conv324.i, 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i20, i32 noundef 4096, i32 noundef %add.i24) #11
  %conv3.i25 = and i32 %call11.i, 65535
  %cmp.i26 = icmp ult i32 %conv3.i25, 4096
  br i1 %cmp.i26, label %for.body.i27.for.body.i27_crit_edge, label %for.body.i27.sw.epilog_crit_edge

for.body.i27.sw.epilog_crit_edge:                 ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i27

sw.epilog:                                        ; preds = %for.body.i27.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_add_vid(ptr noundef %intf_priv, i32 noundef %vid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %active_vlans = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %vid, ptr noundef %active_vlans) #11
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale, align 4
  %conv = trunc i32 %vid to i16
  %ale_ports = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale_ports, align 4
  %notmask = shl nsw i32 -1, %5
  %sub = xor i32 %notmask, -1
  %sub6 = add i32 %5, -1
  %notmask14 = shl nsw i32 -1, %sub6
  %sub8 = xor i32 %notmask14, -1
  %call = tail call i32 @cpsw_ale_add_vlan(ptr noundef %3, i16 noundef zeroext %conv, i32 noundef %sub, i32 noundef 0, i32 noundef %sub, i32 noundef %sub8) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_del_vid(ptr noundef %intf_priv, i32 noundef %vid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale, align 4
  %conv = trunc i32 %vid to i16
  %call = tail call i32 @cpsw_ale_del_vlan(ptr noundef %3, i16 noundef zeroext %conv, i32 noundef 0) #11
  %active_vlans = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %vid, ptr noundef %active_vlans) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_ioctl(ptr nocapture noundef readonly %intf_priv, ptr noundef %req, i32 noundef %cmd) #3 align 64 {
entry:
  %cfg.i17 = alloca %struct.hwtstamp_config, align 4
  %cfg.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 4
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %phy1 = getelementptr inbounds %struct.gbe_slave, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %phy_has_hwtstamp.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

phy_has_hwtstamp.exit:                            ; preds = %land.lhs.true.i
  %hwtstamp.i = getelementptr inbounds %struct.mii_timestamper, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwtstamp.i, align 4
  %tobool3.i.not = icmp eq ptr %7, null
  br i1 %tobool3.i.not, label %phy_has_hwtstamp.exit.if.then_crit_edge, label %phy_has_hwtstamp.exit.if.then5_crit_edge

phy_has_hwtstamp.exit.if.then5_crit_edge:         ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

phy_has_hwtstamp.exit.if.then_crit_edge:          ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %phy_has_hwtstamp.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %cmd, label %if.end [
    i32 35249, label %sw.bb
    i32 35248, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  %gbe_dev1.i = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %9 = ptrtoint ptr %gbe_dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gbe_dev1.i, align 4
  %cpts2.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %cpts2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpts2.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #11
  %tobool.not.i16 = icmp eq ptr %12, null
  br i1 %tobool.not.i16, label %sw.bb.gbe_hwtstamp_get.exit_crit_edge, label %if.end.i

sw.bb.gbe_hwtstamp_get.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_get.exit

if.end.i:                                         ; preds = %sw.bb
  %13 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 1
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cfg.i, align 4
  %tx_ts_enabled.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 40
  %16 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp ne i32 %17, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %14, align 4
  %rx_ts_enabled.i = getelementptr inbounds %struct.gbe_priv, ptr %10, i32 0, i32 39
  %19 = ptrtoint ptr %rx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ts_enabled.i, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %13, align 4
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.160, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end.i.gbe_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i

if.end.i.gbe_hwtstamp_get.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_get.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 12, i32 -1226833920) #15, !srcloc !324
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.gbe_hwtstamp_get.exit_crit_edge

if.end.i.i.i.gbe_hwtstamp_get.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_get.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg.i, i32 noundef 12) #11
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %cfg.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %gbe_hwtstamp_get.exit

gbe_hwtstamp_get.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i.gbe_hwtstamp_get.exit_crit_edge, %if.end.i.gbe_hwtstamp_get.exit_crit_edge, %sw.bb.gbe_hwtstamp_get.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.bb.gbe_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.gbe_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i.gbe_hwtstamp_get.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #11
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  %gbe_dev1.i18 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %25 = ptrtoint ptr %gbe_dev1.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gbe_dev1.i18, align 4
  %cpts2.i19 = getelementptr inbounds %struct.gbe_priv, ptr %26, i32 0, i32 38
  %27 = ptrtoint ptr %cpts2.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpts2.i19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i17) #11
  %29 = ptrtoint ptr %cfg.i17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %cfg.i17, align 4, !annotation !310
  %30 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i17, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4, !annotation !310
  %32 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i17, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !310
  %tobool.not.i20 = icmp eq ptr %28, null
  br i1 %tobool.not.i20, label %sw.bb3.gbe_hwtstamp_set.exit_crit_edge, label %if.end.i23

sw.bb3.gbe_hwtstamp_set.exit_crit_edge:           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_set.exit

if.end.i23:                                       ; preds = %sw.bb3
  %ifr_ifru.i21 = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %34 = ptrtoint ptr %ifr_ifru.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ifr_ifru.i21, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.160, i32 noundef 156) #11
  %call.i.i.i22 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i22, label %if.end.i23.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i23.if.then11.i.i.i_crit_edge:             ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i23
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 12, i32 -1226833920) #15, !srcloc !325
  %asmresult.i.i.i24 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i24)
  %cmp.i.i.i25 = icmp eq i32 %asmresult.i.i.i24, 0
  br i1 %cmp.i.i.i25, label %if.end.i.i.i27, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !326

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i27:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg.i17, i32 noundef 12) #11
  %37 = call i32 @llvm.read_register.i32(metadata !300) #11
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !327
  %and.i.i.i.i.i = and i32 %39, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !328
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg.i17, ptr noundef %35, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #11, !srcloc !328
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i, label %if.end.i.i.i27.if.then11.i.i.i_crit_edge, !prof !326

if.end.i.i.i27.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i27.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i23.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i27.if.then11.i.i.i_crit_edge ], [ 12, %if.end.i23.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cfg.i17, i32 %sub.i.i.i
  %40 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %gbe_hwtstamp_set.exit

if.end5.i:                                        ; preds = %if.end.i.i.i27
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %switch = icmp ult i32 %42, 2
  br i1 %switch, label %sw.epilog.i, label %if.end5.i.gbe_hwtstamp_set.exit_crit_edge

if.end5.i.gbe_hwtstamp_set.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_set.exit

sw.epilog.i:                                      ; preds = %if.end5.i
  %tx_ts_enabled7.i = getelementptr inbounds %struct.gbe_priv, ptr %26, i32 0, i32 40
  %43 = ptrtoint ptr %tx_ts_enabled7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tx_ts_enabled7.i, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %32, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %45, label %sw.epilog.i.gbe_hwtstamp_set.exit_crit_edge [
    i32 0, label %sw.bb8.i
    i32 3, label %sw.epilog.i.sw.bb9.i_crit_edge
    i32 4, label %sw.epilog.i.sw.bb9.i_crit_edge33
    i32 5, label %sw.epilog.i.sw.bb9.i_crit_edge34
    i32 6, label %sw.epilog.i.sw.bb12.i_crit_edge
    i32 7, label %sw.epilog.i.sw.bb12.i_crit_edge35
    i32 8, label %sw.epilog.i.sw.bb12.i_crit_edge36
    i32 9, label %sw.epilog.i.sw.bb12.i_crit_edge37
    i32 10, label %sw.epilog.i.sw.bb12.i_crit_edge38
    i32 11, label %sw.epilog.i.sw.bb12.i_crit_edge39
    i32 12, label %sw.epilog.i.sw.bb12.i_crit_edge40
    i32 13, label %sw.epilog.i.sw.bb12.i_crit_edge41
    i32 14, label %sw.epilog.i.sw.bb12.i_crit_edge42
  ]

sw.epilog.i.sw.bb12.i_crit_edge42:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge41:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge40:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge39:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge38:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge37:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge36:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge35:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb12.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12.i

sw.epilog.i.sw.bb9.i_crit_edge34:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

sw.epilog.i.sw.bb9.i_crit_edge33:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

sw.epilog.i.sw.bb9.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9.i

sw.epilog.i.gbe_hwtstamp_set.exit_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_set.exit

sw.bb8.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_ts_enabled.i28 = getelementptr inbounds %struct.gbe_priv, ptr %26, i32 0, i32 39
  %47 = ptrtoint ptr %rx_ts_enabled.i28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rx_ts_enabled.i28, align 4
  br label %sw.epilog16.i

sw.bb9.i:                                         ; preds = %sw.epilog.i.sw.bb9.i_crit_edge, %sw.epilog.i.sw.bb9.i_crit_edge33, %sw.epilog.i.sw.bb9.i_crit_edge34
  %rx_ts_enabled10.i = getelementptr inbounds %struct.gbe_priv, ptr %26, i32 0, i32 39
  %48 = ptrtoint ptr %rx_ts_enabled10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %rx_ts_enabled10.i, align 4
  %49 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %32, align 4
  br label %sw.epilog16.i

sw.bb12.i:                                        ; preds = %sw.epilog.i.sw.bb12.i_crit_edge, %sw.epilog.i.sw.bb12.i_crit_edge35, %sw.epilog.i.sw.bb12.i_crit_edge36, %sw.epilog.i.sw.bb12.i_crit_edge37, %sw.epilog.i.sw.bb12.i_crit_edge38, %sw.epilog.i.sw.bb12.i_crit_edge39, %sw.epilog.i.sw.bb12.i_crit_edge40, %sw.epilog.i.sw.bb12.i_crit_edge41, %sw.epilog.i.sw.bb12.i_crit_edge42
  %rx_ts_enabled13.i = getelementptr inbounds %struct.gbe_priv, ptr %26, i32 0, i32 39
  %50 = ptrtoint ptr %rx_ts_enabled13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12, ptr %rx_ts_enabled13.i, align 4
  %51 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 12, ptr %32, align 4
  br label %sw.epilog16.i

sw.epilog16.i:                                    ; preds = %sw.bb12.i, %sw.bb9.i, %sw.bb8.i
  %52 = ptrtoint ptr %gbe_dev1.i18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gbe_dev1.i18, align 4
  %54 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave, align 4
  %rx_ts_enabled.i.i = getelementptr inbounds %struct.gbe_priv, ptr %53, i32 0, i32 39
  %56 = ptrtoint ptr %rx_ts_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_ts_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog16.i.if.end.i.i_crit_edge

sw.epilog16.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog16.i
  %tx_ts_enabled.i.i = getelementptr inbounds %struct.gbe_priv, ptr %53, i32 0, i32 40
  %58 = ptrtoint ptr %tx_ts_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_ts_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool3.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %55, align 4
  %ts_ctl.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 2, i32 5
  %62 = ptrtoint ptr %ts_ctl.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ts_ctl.i.i, align 2
  %conv.i.i = zext i16 %63 to i32
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %conv.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !317
  br label %if.then.i32.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.epilog16.i.if.end.i.i_crit_edge
  %ts_ctl4.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 14
  %dst_port_map.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 14, i32 1
  %64 = ptrtoint ptr %dst_port_map.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dst_port_map.i.i, align 4
  %conv5.i.i = zext i8 %65 to i32
  %shl.i.i = shl nuw nsw i32 %conv5.i.i, 21
  %66 = ptrtoint ptr %ts_ctl4.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ts_ctl4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool7.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool7.not.i.i, label %cond.false.i.i, label %if.end.i.i.cond.end.i.i_crit_edge

if.end.i.i.cond.end.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %maddr_map.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 14, i32 2
  %68 = ptrtoint ptr %maddr_map.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %maddr_map.i.i, align 1
  %conv9.i.i = zext i8 %69 to i32
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 16
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %shl10.i.i, %cond.false.i.i ], [ 16777216, %if.end.i.i.cond.end.i.i_crit_edge ]
  %or.i.i = or i32 %shl.i.i, %cond.i.i
  %or11.i.i = or i32 %or.i.i, 8423671
  %tx_ts_enabled12.i.i = getelementptr inbounds %struct.gbe_priv, ptr %53, i32 0, i32 40
  %70 = ptrtoint ptr %tx_ts_enabled12.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_ts_enabled12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool13.not.i.i = icmp eq i32 %71, 0
  %spec.select.i.i = select i1 %tobool13.not.i.i, i32 983040, i32 984240
  %or20.i.i = or i32 %spec.select.i.i, 523
  %ts_en.1.i.i = select i1 %tobool.not.i.i, i32 %spec.select.i.i, i32 %or20.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  call void @arm_heavy_mb() #11
  %72 = call i32 @llvm.bswap.i32(i32 %ts_en.1.i.i) #11
  %73 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %55, align 4
  %ts_ctl27.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 2, i32 5
  %75 = ptrtoint ptr %ts_ctl27.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ts_ctl27.i.i, align 2
  %conv28.i.i = zext i16 %76 to i32
  %add.ptr29.i.i = getelementptr i8, ptr %74, i32 %conv28.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 %72) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %55, align 4
  %ts_seq_ltype.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 2, i32 6
  %79 = ptrtoint ptr %ts_seq_ltype.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ts_seq_ltype.i.i, align 4
  %conv35.i.i = zext i16 %80 to i32
  %add.ptr36.i.i = getelementptr i8, ptr %78, i32 %conv35.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 -142074368) #11, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  call void @arm_heavy_mb() #11
  %81 = call i32 @llvm.bswap.i32(i32 %or11.i.i) #11
  %82 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %55, align 4
  %ts_ctl_ltype2.i.i = getelementptr inbounds %struct.gbe_slave, ptr %55, i32 0, i32 2, i32 8
  %84 = ptrtoint ptr %ts_ctl_ltype2.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ts_ctl_ltype2.i.i, align 4
  %conv42.i.i = zext i16 %85 to i32
  %add.ptr43.i.i = getelementptr i8, ptr %83, i32 %conv42.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %81) #11, !srcloc !317
  br label %if.then.i32.i

if.then.i32.i:                                    ; preds = %cond.end.i.i, %do.body.i.i
  %86 = ptrtoint ptr %ifr_ifru.i21 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ifr_ifru.i21, align 4
  call void @__might_fault(ptr noundef nonnull @.str.160, i32 noundef 174) #11
  %call.i.i31.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i31.i, label %if.then.i32.i.gbe_hwtstamp_set.exit_crit_edge, label %if.end.i.i35.i

if.then.i32.i.gbe_hwtstamp_set.exit_crit_edge:    ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_set.exit

if.end.i.i35.i:                                   ; preds = %if.then.i32.i
  %88 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %87, i32 12, i32 -1226833920) #15, !srcloc !324
  %asmresult.i.i33.i = extractvalue { i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i33.i)
  %cmp.i.i34.i = icmp eq i32 %asmresult.i.i33.i, 0
  br i1 %cmp.i.i34.i, label %copy_to_user.exit.i31, label %if.end.i.i35.i.gbe_hwtstamp_set.exit_crit_edge

if.end.i.i35.i.gbe_hwtstamp_set.exit_crit_edge:   ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_hwtstamp_set.exit

copy_to_user.exit.i31:                            ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg.i17, i32 noundef 12) #11
  %call.i1.i.i.i29 = call i32 @arm_copy_to_user(ptr noundef %87, ptr noundef nonnull %cfg.i17, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i29)
  %tobool19.not.i = icmp eq i32 %call.i1.i.i.i29, 0
  %spec.select.i30 = select i1 %tobool19.not.i, i32 0, i32 -14
  br label %gbe_hwtstamp_set.exit

gbe_hwtstamp_set.exit:                            ; preds = %copy_to_user.exit.i31, %if.end.i.i35.i.gbe_hwtstamp_set.exit_crit_edge, %if.then.i32.i.gbe_hwtstamp_set.exit_crit_edge, %sw.epilog.i.gbe_hwtstamp_set.exit_crit_edge, %if.end5.i.gbe_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i, %sw.bb3.gbe_hwtstamp_set.exit_crit_edge
  %retval.0.i32 = phi i32 [ -95, %sw.bb3.gbe_hwtstamp_set.exit_crit_edge ], [ -34, %if.end5.i.gbe_hwtstamp_set.exit_crit_edge ], [ -34, %sw.epilog.i.gbe_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i32.i.gbe_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i35.i.gbe_hwtstamp_set.exit_crit_edge ], [ %spec.select.i30, %copy_to_user.exit.i31 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i17) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %phy_has_hwtstamp.exit.if.then5_crit_edge
  %call6 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %3, ptr noundef %req, i32 noundef %cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %gbe_hwtstamp_set.exit, %gbe_hwtstamp_get.exit
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %retval.0.i32, %gbe_hwtstamp_set.exit ], [ %retval.0.i, %gbe_hwtstamp_get.exit ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_set_rx_mode(ptr nocapture noundef readonly %intf_priv, i1 noundef zeroext %promisc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf_priv, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %ale2 = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %ale2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale2, align 4
  %num_slaves = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 3
  %lnot.ext = zext i1 %promisc to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.061 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.061, i32 noundef 15, i32 noundef %lnot.ext) #11
  %call9 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef %i.061, i32 noundef 16, i32 noundef %lnot.ext) #11
  %inc = add i32 %i.061, 1
  %4 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_slaves, align 4
  %cmp.not = icmp ugt i32 %inc, %5
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %promisc, label %if.end, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call12 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef 1) #11
  %add.neg = sub i32 -100, %6
  br label %do.body

do.body:                                          ; preds = %do.cond24.do.body_crit_edge, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !335
  %call20 = tail call i32 @cpsw_ale_control_get(ptr noundef %3, i32 noundef 0, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond24, label %do.body.if.end31_crit_edge

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.cond24:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %7
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %do.cond24.do.body_crit_edge, label %land.lhs.true

do.cond24.do.body_crit_edge:                      ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %do.cond24
  %call28 = tail call i32 @cpsw_ale_control_get(ptr noundef %3, i32 noundef 0, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %do.body.if.end31_crit_edge
  %ret.059 = phi i32 [ -110, %land.lhs.true.if.end31_crit_edge ], [ 0, %do.body.if.end31_crit_edge ]
  %call32 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 2, i32 noundef 1) #11
  %ale_ports = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ale_ports, align 4
  %notmask = shl nsw i32 -1, %9
  %sub33 = xor i32 %notmask, -1
  %call34 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %3, i32 noundef %sub33, i32 noundef -1) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %for.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end31 ], [ 0, %for.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.059, %if.end31 ], [ 0, %for.end.cleanup.sink.split_crit_edge ]
  %call35 = tail call i32 @cpsw_ale_control_set(ptr noundef %3, i32 noundef 0, i32 noundef 3, i32 noundef %.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_xgbe_serdes_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_txpipe_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_txpipe_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_secondary_ports(ptr noundef %gbe_dev, ptr noundef %node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef null) #11
  %cmp.not175 = icmp eq ptr %call, null
  br i1 %cmp.not175, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 12
  %sgmii_port_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 19
  %sgmii_port34_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 20
  %rx_packet_max = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 11
  %secondary_slaves = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 30
  %prev.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 30, i32 1
  %num_slaves = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 3
  %max_num_slaves = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0177 = phi ptr [ %call, %for.body.lr.ph ], [ %call24, %for.inc.for.body_crit_edge ]
  %mac_phy_link.0.off0176 = phi i1 [ false, %for.body.lr.ph ], [ %mac_phy_link.2.off0, %for.inc.for.body_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 92, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.114, ptr noundef nonnull %port.0177) #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call3 = tail call fastcc i32 @init_slave(ptr noundef %gbe_dev, ptr noundef nonnull %call.i, ptr noundef nonnull %port.0177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.117, ptr noundef nonnull %port.0177) #14
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call.i) #11
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323827200, i32 %shr.mask)
  %cmp10 = icmp eq i32 %shr.mask, 1323827200
  br i1 %cmp10, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  %link_interface.i = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %link_interface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.i = icmp ugt i32 %5, 9
  br i1 %cmp.i, label %if.then11.if.end12_crit_edge, label %if.end.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %slave_num.i = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i = icmp slt i32 %7, 2
  %cond.in.i = select i1 %cmp1.i, ptr %sgmii_port_regs.i, ptr %sgmii_port34_regs.i
  %8 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i167 = tail call i32 @netcp_sgmii_reset(ptr noundef %cond.i, i32 noundef %7) #11
  %9 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp4.i = icmp slt i32 %10, 2
  %cond10.in.i = select i1 %cmp4.i, ptr %sgmii_port_regs.i, ptr %sgmii_port34_regs.i
  %11 = ptrtoint ptr %cond10.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond10.i = load ptr, ptr %cond10.in.i, align 4
  %12 = ptrtoint ptr %link_interface.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_interface.i, align 4
  %call13.i = tail call i32 @netcp_sgmii_config(ptr noundef %cond10.i, i32 noundef %10, i32 noundef %13) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end.i, %if.then11.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %emac_regs.i = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %emac_regs.i, align 4
  %soft_reset.i = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %soft_reset.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !317
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end12
  %i.01.i = phi i32 [ 0, %if.end12 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emac_regs.i, align 4
  %20 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %soft_reset.i, align 2
  %conv5.i = zext i16 %21 to i32
  %add.ptr6.i = getelementptr i8, ptr %19, i32 %conv5.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.not.not.i = icmp eq i32 %23, 0
  %inc.i = add nuw nsw i32 %i.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  %or.cond.i = select i1 %cmp8.not.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %gbe_port_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

gbe_port_reset.exit:                              ; preds = %for.body.i
  %24 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_packet_max, align 4
  tail call fastcc void @gbe_port_config(ptr noundef %gbe_dev, ptr noundef nonnull %call.i, i32 noundef %25)
  %slave_list = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %slave_list, ptr noundef %27, ptr noundef %secondary_slaves) #11
  br i1 %call.i.i, label %if.end.i.i, label %gbe_port_reset.exit.list_add_tail.exit_crit_edge

gbe_port_reset.exit.list_add_tail.exit_crit_edge: ; preds = %gbe_port_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %gbe_port_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %slave_list, ptr %prev.i, align 4
  %29 = ptrtoint ptr %slave_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %secondary_slaves, ptr %slave_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %slave_list, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %gbe_port_reset.exit.list_add_tail.exit_crit_edge
  %32 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_slaves, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %num_slaves, align 4
  %link_interface = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link_interface, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %35, label %list_add_tail.exit.if.end18_crit_edge [
    i32 1, label %list_add_tail.exit.if.then17_crit_edge
    i32 10, label %list_add_tail.exit.if.then17_crit_edge199
  ]

list_add_tail.exit.if.then17_crit_edge199:        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

list_add_tail.exit.if.then17_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

list_add_tail.exit.if.end18_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %list_add_tail.exit.if.then17_crit_edge, %list_add_tail.exit.if.then17_crit_edge199
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %list_add_tail.exit.if.end18_crit_edge
  %mac_phy_link.1.off0 = phi i1 [ true, %if.then17 ], [ %mac_phy_link.0.off0176, %list_add_tail.exit.if.end18_crit_edge ]
  %open = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %open, align 4
  %38 = ptrtoint ptr %max_num_slaves to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %max_num_slaves, align 1
  %conv = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp20.not = icmp ult i32 %inc, %conv
  br i1 %cmp20.not, label %if.end18.for.inc_crit_edge, label %if.then22

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then22:                                        ; preds = %if.end18
  tail call void @of_node_put(ptr noundef nonnull %port.0177) #11
  br i1 %mac_phy_link.1.off0, label %if.then22.if.end27_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %do.end8, %do.end
  %mac_phy_link.2.off0 = phi i1 [ %mac_phy_link.0.off0176, %do.end8 ], [ %mac_phy_link.1.off0, %if.end18.for.inc_crit_edge ], [ %mac_phy_link.0.off0176, %do.end ]
  %call24 = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef nonnull %port.0177) #11
  %cmp.not = icmp eq ptr %call24, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %mac_phy_link.2.off0, label %for.end.if.end27_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %if.then22.if.end27_crit_edge
  %call28 = tail call ptr @alloc_netdev_mqs(i32 noundef 4, ptr noundef nonnull @.str.119, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #11
  %dummy_ndev = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 31
  %40 = ptrtoint ptr %dummy_ndev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call28, ptr %dummy_ndev, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.121) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %add.ptr.i168 = getelementptr i8, ptr %call28, i32 2304
  %41 = ptrtoint ptr %add.ptr.i168 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %gbe_dev, ptr %add.ptr.i168, align 4
  %link_interface38 = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %link_interface38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %link_interface38, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %43, label %if.else47 [
    i32 1, label %if.end35.if.end50_crit_edge
    i32 5, label %if.then45
  ]

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.else47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then45, %if.end35.if.end50_crit_edge
  %.sink = phi i8 [ 2, %if.then45 ], [ 3, %if.else47 ], [ 2, %if.end35.if.end50_crit_edge ]
  %phy_mode.0 = phi i32 [ 9, %if.then45 ], [ 0, %if.else47 ], [ 4, %if.end35.if.end50_crit_edge ]
  %phy_port_t46 = getelementptr inbounds %struct.gbe_slave, ptr %call.i, i32 0, i32 11
  %45 = ptrtoint ptr %phy_port_t46 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink, ptr %phy_port_t46, align 4
  %secondary_slaves51 = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 30
  %46 = ptrtoint ptr %secondary_slaves51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn180 = load ptr, ptr %secondary_slaves51, align 4
  %cmp55.not181 = icmp eq ptr %.pn180, %secondary_slaves51
  br i1 %cmp55.not181, label %if.end50.cleanup_crit_edge, label %if.end50.for.body57_crit_edge

if.end50.for.body57_crit_edge:                    ; preds = %if.end50
  br label %for.body57

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body57:                                       ; preds = %for.inc94.for.body57_crit_edge, %if.end50.for.body57_crit_edge
  %.pn182 = phi ptr [ %.pn, %for.inc94.for.body57_crit_edge ], [ %.pn180, %if.end50.for.body57_crit_edge ]
  %link_interface58 = getelementptr i8, ptr %.pn182, i32 -28
  %47 = ptrtoint ptr %link_interface58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %link_interface58, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %48, label %for.body57.for.inc94_crit_edge [
    i32 1, label %for.body57.if.end69_crit_edge
    i32 5, label %for.body57.if.end69_crit_edge200
    i32 10, label %for.body57.if.end69_crit_edge201
  ]

for.body57.if.end69_crit_edge201:                 ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.body57.if.end69_crit_edge200:                 ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.body57.if.end69_crit_edge:                    ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.body57.for.inc94_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc94

if.end69:                                         ; preds = %for.body57.if.end69_crit_edge, %for.body57.if.end69_crit_edge200, %for.body57.if.end69_crit_edge201
  %50 = ptrtoint ptr %dummy_ndev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dummy_ndev, align 4
  %phy_node = getelementptr i8, ptr %.pn182, i32 -12
  %52 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_node, align 4
  %call71 = tail call ptr @of_phy_connect(ptr noundef %51, ptr noundef %53, ptr noundef nonnull @gbe_adjust_link_sec_slaves, i32 noundef 0, i32 noundef %phy_mode.0) #11
  %phy = getelementptr i8, ptr %.pn182, i32 -32
  %54 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call71, ptr %phy, align 4
  %tobool73.not = icmp eq ptr %call71, null
  br i1 %tobool73.not, label %do.end77, label %do.body79

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %slave_num = getelementptr i8, ptr %.pn182, i32 -48
  %55 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slave_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef %56) #14
  br label %for.inc94

do.body79:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_secondary_ports.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_secondary_ports, %if.then86)) #11
          to label %do.end91 [label %if.then86], !srcloc !311

if.then86:                                        ; preds = %do.body79
  %57 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.end.i.i169, label %if.then86.phydev_name.exit_crit_edge

if.then86.phydev_name.exit_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %phydev_name.exit

if.end.i.i169:                                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i169, %if.then86.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %62, %if.end.i.i169 ], [ %60, %if.then86.phydev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_secondary_ports.__UNIQUE_ID_ddebug356, ptr noundef %1, ptr noundef nonnull @.str.126, ptr noundef %retval.0.i.i) #11
  br label %do.end91

do.end91:                                         ; preds = %phydev_name.exit, %do.body79
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  tail call void @phy_start(ptr noundef %64) #11
  br label %for.inc94

for.inc94:                                        ; preds = %do.end91, %do.end77, %for.body57.for.inc94_crit_edge
  %65 = ptrtoint ptr %.pn182 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn182, align 4
  %cmp55.not = icmp eq ptr %.pn, %secondary_slaves51
  br i1 %cmp55.not, label %for.inc94.cleanup_crit_edge, label %for.inc94.for.body57_crit_edge

for.inc94.for.body57_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body57

for.inc94.cleanup_crit_edge:                      ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc94.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end34, %for.end.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpsw_ale_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpts_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_init_host_port(ptr nocapture noundef readonly %priv) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323696128, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1323696128
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %1)
  %cmp2 = icmp eq i32 %1, 20196
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %do.body, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void @arm_heavy_mb() #11
  %host_port_regs = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_port_regs, align 4
  %tx_pri_map = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %tx_pri_map to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_pri_map, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !317
  br label %do.body3

do.body3:                                         ; preds = %do.body, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %host_port_regs6 = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 16
  %6 = ptrtoint ptr %host_port_regs6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_port_regs6, align 4
  %rx_maxlen = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %rx_maxlen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_maxlen, align 4
  %conv8 = zext i16 %9 to i32
  %add.ptr9 = getelementptr i8, ptr %7, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 539295744) #11, !srcloc !317
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 26
  %10 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_start(ptr noundef %11) #11
  %enable_ale = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 5
  %12 = ptrtoint ptr %enable_ale to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable_ale, align 4, !range !320
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_control_set(ptr noundef %17, i32 noundef 0, i32 noundef 7, i32 noundef %15) #11
  %18 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ale, align 4
  %call14 = tail call i32 @cpsw_ale_control_set(ptr noundef %19, i32 noundef 0, i32 noundef 5, i32 noundef 1) #11
  %20 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale, align 4
  %host_port = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 10
  %22 = ptrtoint ptr %host_port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_port, align 4
  %call16 = tail call i32 @cpsw_ale_control_set(ptr noundef %21, i32 noundef %23, i32 noundef 12, i32 noundef 3) #11
  %24 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ale, align 4
  %ale_ports = getelementptr inbounds %struct.gbe_priv, ptr %priv, i32 0, i32 4
  %26 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ale_ports, align 4
  %notmask = shl nsw i32 -1, %27
  %sub = xor i32 %notmask, -1
  %call18 = tail call i32 @cpsw_ale_control_set(ptr noundef %25, i32 noundef 0, i32 noundef 17, i32 noundef %sub) #11
  %28 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ale, align 4
  %30 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ale_ports, align 4
  %sub21 = add i32 %31, -1
  %notmask54 = shl nsw i32 -1, %sub21
  %sub23 = xor i32 %notmask54, -1
  %call24 = tail call i32 @cpsw_ale_control_set(ptr noundef %29, i32 noundef 0, i32 noundef 18, i32 noundef %sub23) #11
  %32 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale, align 4
  %34 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ale_ports, align 4
  %notmask55 = shl nsw i32 -1, %35
  %sub28 = xor i32 %notmask55, -1
  %call29 = tail call i32 @cpsw_ale_control_set(ptr noundef %33, i32 noundef 0, i32 noundef 19, i32 noundef %sub28) #11
  %36 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ale, align 4
  %38 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ale_ports, align 4
  %notmask56 = shl nsw i32 -1, %39
  %sub33 = xor i32 %notmask56, -1
  %call34 = tail call i32 @cpsw_ale_control_set(ptr noundef %37, i32 noundef 0, i32 noundef 20, i32 noundef %sub33) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netcp_ethss_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %gbe_intf_head = getelementptr i8, ptr %t, i32 208
  %0 = ptrtoint ptr %gbe_intf_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn52 = load ptr, ptr %gbe_intf_head, align 4
  %cmp.not54 = icmp eq ptr %.pn52, %gbe_intf_head
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn52, %entry.for.body_crit_edge ]
  %slave5 = getelementptr i8, ptr %.pn55, i32 -4
  %1 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave5, align 4
  %open = getelementptr inbounds %struct.gbe_slave, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %open, align 4, !range !320
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %gbe_intf.056 = getelementptr i8, ptr %.pn55, i32 -40
  %5 = ptrtoint ptr %gbe_intf.056 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gbe_intf.056, align 4
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %add.ptr, ptr noundef %2, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %gbe_intf_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %secondary_slaves = getelementptr i8, ptr %t, i32 216
  %8 = ptrtoint ptr %secondary_slaves to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn5157 = load ptr, ptr %secondary_slaves, align 4
  %cmp18.not58 = icmp eq ptr %.pn5157, %secondary_slaves
  br i1 %cmp18.not58, label %for.end.for.end27_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %.pn5159 = phi ptr [ %.pn51, %for.body20.for.body20_crit_edge ], [ %.pn5157, %for.end.for.body20_crit_edge ]
  %slave.0 = getelementptr i8, ptr %.pn5159, i32 -84
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %add.ptr, ptr noundef %slave.0, ptr noundef null)
  %9 = ptrtoint ptr %.pn5159 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn51 = load ptr, ptr %.pn5159, align 4
  %cmp18.not = icmp eq ptr %.pn51, %secondary_slaves
  br i1 %cmp18.not, label %for.body20.for.end27_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body20

for.body20.for.end27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.end27:                                        ; preds = %for.body20.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %hw_stats_lock = getelementptr i8, ptr %t, i32 244
  tail call void @_raw_spin_lock(ptr noundef %hw_stats_lock) #11
  %ss_version = getelementptr i8, ptr %t, i32 92
  %10 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %11, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1322385408, i32 %shr.mask)
  %cmp28 = icmp eq i32 %shr.mask, 1322385408
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gbe_update_stats_ver14(ptr noundef %add.ptr, ptr noundef null)
  br label %if.end30

if.else:                                          ; preds = %for.end27
  %num_et_stats.i = getelementptr i8, ptr %t, i32 240
  %12 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_et_stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9.i = icmp sgt i32 %13, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

for.body.lr.ph.i:                                 ; preds = %if.else
  %et_stats.i.i = getelementptr i8, ptr %t, i32 236
  %hw_stats_prev.i.i = getelementptr i8, ptr %t, i32 232
  %hw_stats.i.i = getelementptr i8, ptr %t, i32 228
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %et_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %et_stats.i.i, align 4
  %type.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %15, i32 %i.010.i, i32 1
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.gbe_priv, ptr %add.ptr, i32 0, i32 22, i32 %17
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.i.i, align 4
  %offset.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %15, i32 %i.010.i, i32 3
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !312
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %24 = ptrtoint ptr %hw_stats_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_stats_prev.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %25, i32 %i.010.i
  %26 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i.i, align 4
  %sub.i.i = sub i32 %23, %27
  store i32 %23, ptr %arrayidx5.i.i, align 4
  %conv.i.i = zext i32 %sub.i.i to i64
  %28 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_stats.i.i, align 4
  %arrayidx8.i.i = getelementptr i64, ptr %29, i32 %i.010.i
  %30 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx8.i.i, align 8
  %add.i.i = add i64 %31, %conv.i.i
  store i64 %add.i.i, ptr %arrayidx8.i.i, align 8
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %32 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_et_stats.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end30_crit_edge

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end30:                                         ; preds = %for.body.i.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.then29
  tail call void @_raw_spin_unlock(ptr noundef %hw_stats_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 50
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %35 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_secondary_ports(ptr noundef %gbe_dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %secondary_slaves = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 30
  %0 = ptrtoint ptr %secondary_slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %secondary_slaves, align 4
  %cmp.i.not14 = icmp eq ptr %1, %secondary_slaves
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %phy = getelementptr i8, ptr %2, i32 -32
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_disconnect(ptr noundef nonnull %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %secondary_slaves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %secondary_slaves, align 4
  %cmp.i.not = icmp eq ptr %14, %secondary_slaves
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %dummy_ndev = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 31
  %15 = ptrtoint ptr %dummy_ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dummy_ndev, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %while.end.if.end7_crit_edge, label %if.then5

while.end.if.end7_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_netdev(ptr noundef nonnull %16) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %while.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_flush_multicast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_slave(ptr nocapture noundef readonly %gbe_dev, ptr noundef %slave, ptr noundef %node) unnamed_addr #3 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_num = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 4
  %call.i.i229 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.40, ptr noundef %slave_num, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i229)
  %tobool.not = icmp sgt i32 %call.i.i229, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.127) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_interface = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 9
  %call.i.i230 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.129, ptr noundef %link_interface, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i230)
  %tobool2.not = icmp sgt i32 %call.i.i230, -1
  br i1 %tobool2.not, label %if.end9, label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gbe_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.131) #14
  %4 = ptrtoint ptr %link_interface to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %link_interface, align 4
  %node10232 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 12
  %5 = ptrtoint ptr %node10232 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %node10232, align 4
  %open233 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 7
  %6 = ptrtoint ptr %open233 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %open233, align 4
  br label %if.then17

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %link_interface, align 4
  %node10 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 12
  %8 = ptrtoint ptr %node10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node, ptr %node10, align 4
  %open = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 7
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %open, align 4
  %10 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %.pr, label %if.end9.if.end19_crit_edge [
    i32 1, label %if.end9.if.then17_crit_edge
    i32 5, label %if.end9.if.then17_crit_edge235
    i32 10, label %if.end9.if.then17_crit_edge236
  ]

if.end9.if.then17_crit_edge236:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end9.if.then17_crit_edge235:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end9.if.then17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end9.if.then17_crit_edge, %if.end9.if.then17_crit_edge235, %if.end9.if.then17_crit_edge236, %if.end9.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %11 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then17.of_parse_phandle.exit_crit_edge

if.then17.of_parse_phandle.exit_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then17.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ null, %if.then17.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %phy_node = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 13
  %14 = ptrtoint ptr %phy_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %phy_node, align 4
  br label %if.end19

if.end19:                                         ; preds = %of_parse_phandle.exit, %if.end9.if.end19_crit_edge
  %15 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slave_num, align 4
  %host_port.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 10
  %17 = ptrtoint ptr %host_port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  %add.i = zext i1 %cmp.i to i32
  %retval.0.i231 = add i32 %16, %add.i
  %port_num = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 5
  %19 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i231, ptr %port_num, align 4
  %20 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp23 = icmp ugt i32 %21, 9
  %spec.select = select i1 %cmp23, i32 8659200, i32 8650912
  %22 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 10
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %22, align 4
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 12
  %24 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ss_version, align 4
  %shr = lshr i32 %25, 16
  %trunc = trunc i32 %shr to i16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %trunc, label %if.else46 [
    i16 20178, label %if.then29
    i16 20198, label %if.end19.if.end58_crit_edge
    i16 20200, label %if.end19.if.end58_crit_edge237
  ]

if.end19.if.end58_crit_edge237:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end19.if.end58_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp31 = icmp sgt i32 %16, 1
  %sub = add i32 %16, -2
  %port_reg_num.0 = select i1 %cmp31, i32 %sub, i32 %16
  %port_reg_ofs.0 = select i1 %cmp31, i32 512, i32 96
  br label %if.end58

if.else46:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %25)
  %cmp48 = icmp eq i32 %25, 20196
  br i1 %cmp48, label %if.else46.if.end58_crit_edge, label %do.end53

if.else46.if.end58_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end53:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gbe_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.135, i32 noundef %25) #14
  br label %cleanup

if.end58:                                         ; preds = %if.else46.if.end58_crit_edge, %if.then29, %if.end19.if.end58_crit_edge, %if.end19.if.end58_crit_edge237
  %port_reg_num.1 = phi i32 [ %port_reg_num.0, %if.then29 ], [ %16, %if.end19.if.end58_crit_edge ], [ %16, %if.end19.if.end58_crit_edge237 ], [ %16, %if.else46.if.end58_crit_edge ]
  %port_reg_ofs.1 = phi i32 [ %port_reg_ofs.0, %if.then29 ], [ 8192, %if.end19.if.end58_crit_edge ], [ 8192, %if.end19.if.end58_crit_edge237 ], [ 100, %if.else46.if.end58_crit_edge ]
  %emac_reg_ofs.0 = phi i32 [ 256, %if.then29 ], [ 9008, %if.end19.if.end58_crit_edge ], [ 9008, %if.end19.if.end58_crit_edge237 ], [ 1024, %if.else46.if.end58_crit_edge ]
  %port_reg_blk_sz.0 = phi i32 [ 48, %if.then29 ], [ 4096, %if.end19.if.end58_crit_edge ], [ 4096, %if.end19.if.end58_crit_edge237 ], [ 48, %if.else46.if.end58_crit_edge ]
  %emac_reg_blk_sz.0 = phi i32 [ 64, %if.then29 ], [ 4096, %if.end19.if.end58_crit_edge ], [ 4096, %if.end19.if.end58_crit_edge237 ], [ 64, %if.else46.if.end58_crit_edge ]
  %switch_regs = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 15
  %29 = ptrtoint ptr %switch_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %switch_regs, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %port_reg_ofs.1
  %mul = mul i32 %port_reg_blk_sz.0, %port_reg_num.1
  %add.ptr59 = getelementptr i8, ptr %add.ptr, i32 %mul
  %31 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr59, ptr %slave, align 4
  %32 = load ptr, ptr %switch_regs, align 4
  %add.ptr61 = getelementptr i8, ptr %32, i32 %emac_reg_ofs.0
  %mul63 = mul i32 %emac_reg_blk_sz.0, %16
  %add.ptr64 = getelementptr i8, ptr %add.ptr61, i32 %mul63
  %emac_regs = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 1
  %33 = ptrtoint ptr %emac_regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr64, ptr %emac_regs, align 4
  %34 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ss_version, align 4
  %shr66 = lshr i32 %35, 16
  %trunc234 = trunc i32 %shr66 to i16
  %36 = zext i16 %trunc234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %trunc234, label %if.else117 [
    i16 20178, label %if.then69
    i16 20198, label %if.end58.if.then91_crit_edge
    i16 20200, label %if.end58.if.then91_crit_edge238
  ]

if.end58.if.then91_crit_edge238:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

if.end58.if.then91_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then91

if.then69:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %port_regs_ofs = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2
  %37 = ptrtoint ptr %port_regs_ofs to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 8, ptr %port_regs_ofs, align 4
  %tx_pri_map = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %tx_pri_map to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 12, ptr %tx_pri_map, align 2
  %sa_lo = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %sa_lo to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16, ptr %sa_lo, align 2
  %sa_hi = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %sa_hi to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 20, ptr %sa_hi, align 4
  %ts_ctl = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 5
  %41 = ptrtoint ptr %ts_ctl to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 24, ptr %ts_ctl, align 2
  %ts_seq_ltype = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %ts_seq_ltype to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 28, ptr %ts_seq_ltype, align 4
  %ts_vlan = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 7
  %43 = ptrtoint ptr %ts_vlan to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 32, ptr %ts_vlan, align 2
  %ts_ctl_ltype2 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %ts_ctl_ltype2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 36, ptr %ts_ctl_ltype2, align 4
  %ts_ctl2 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 9
  %45 = ptrtoint ptr %ts_ctl2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 40, ptr %ts_ctl2, align 2
  %emac_regs_ofs = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %46 = ptrtoint ptr %emac_regs_ofs to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 4, ptr %emac_regs_ofs, align 2
  %soft_reset = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %soft_reset to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 12, ptr %soft_reset, align 2
  %rx_maxlen = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %rx_maxlen to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 16, ptr %rx_maxlen, align 2
  br label %if.end147

if.then91:                                        ; preds = %if.end58.if.then91_crit_edge, %if.end58.if.then91_crit_edge238
  %port_regs_ofs92 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2
  %49 = ptrtoint ptr %port_regs_ofs92 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 20, ptr %port_regs_ofs92, align 4
  %tx_pri_map95 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %tx_pri_map95 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 24, ptr %tx_pri_map95, align 2
  %rx_pri_map = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %rx_pri_map to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 32, ptr %rx_pri_map, align 4
  %sa_lo98 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %sa_lo98 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 776, ptr %sa_lo98, align 2
  %sa_hi100 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %sa_hi100 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 780, ptr %sa_hi100, align 4
  %ts_ctl102 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 5
  %54 = ptrtoint ptr %ts_ctl102 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 784, ptr %ts_ctl102, align 2
  %ts_seq_ltype104 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 6
  %55 = ptrtoint ptr %ts_seq_ltype104 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 788, ptr %ts_seq_ltype104, align 4
  %ts_vlan106 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 7
  %56 = ptrtoint ptr %ts_vlan106 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 792, ptr %ts_vlan106, align 2
  %ts_ctl_ltype2108 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 8
  %57 = ptrtoint ptr %ts_ctl_ltype2108 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 796, ptr %ts_ctl_ltype2108, align 4
  %ts_ctl2110 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 9
  %58 = ptrtoint ptr %ts_ctl2110 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 800, ptr %ts_ctl2110, align 2
  %rx_maxlen112 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 10
  %59 = ptrtoint ptr %rx_maxlen112 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 36, ptr %rx_maxlen112, align 4
  %emac_regs_ofs113 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %60 = ptrtoint ptr %emac_regs_ofs113 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %emac_regs_ofs113, align 2
  %soft_reset116 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %soft_reset116 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 8, ptr %soft_reset116, align 2
  br label %if.end147

if.else117:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %35)
  %cmp119 = icmp eq i32 %35, 20196
  br i1 %cmp119, label %if.then120, label %if.else117.if.end147_crit_edge

if.else117.if.end147_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then120:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #13
  %port_regs_ofs121 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2
  %62 = ptrtoint ptr %port_regs_ofs121 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 4, ptr %port_regs_ofs121, align 4
  %tx_pri_map124 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %tx_pri_map124 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 8, ptr %tx_pri_map124, align 2
  %sa_lo126 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %sa_lo126 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 12, ptr %sa_lo126, align 2
  %sa_hi128 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %sa_hi128 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 16, ptr %sa_hi128, align 4
  %ts_ctl130 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 5
  %66 = ptrtoint ptr %ts_ctl130 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 20, ptr %ts_ctl130, align 2
  %ts_seq_ltype132 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 6
  %67 = ptrtoint ptr %ts_seq_ltype132 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 24, ptr %ts_seq_ltype132, align 4
  %ts_vlan134 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 7
  %68 = ptrtoint ptr %ts_vlan134 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 28, ptr %ts_vlan134, align 2
  %ts_ctl_ltype2136 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 8
  %69 = ptrtoint ptr %ts_ctl_ltype2136 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 32, ptr %ts_ctl_ltype2136, align 4
  %ts_ctl2138 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 9
  %70 = ptrtoint ptr %ts_ctl2138 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 36, ptr %ts_ctl2138, align 2
  %emac_regs_ofs139 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %71 = ptrtoint ptr %emac_regs_ofs139 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 4, ptr %emac_regs_ofs139, align 2
  %soft_reset142 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %soft_reset142 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 12, ptr %soft_reset142, align 2
  %rx_maxlen144 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 2
  %73 = ptrtoint ptr %rx_maxlen144 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 16, ptr %rx_maxlen144, align 2
  br label %if.end147

if.end147:                                        ; preds = %if.then120, %if.else117.if.end147_crit_edge, %if.then91, %if.then69
  %link_state = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %link_state, i32 noundef 4) #11
  %74 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 -1, ptr %link_state, align 4
  %ts_ctl.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 14
  %75 = ptrtoint ptr %ts_ctl.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %ts_ctl.i, align 4
  %dst_port_map.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 14, i32 1
  %76 = ptrtoint ptr %dst_port_map.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %dst_port_map.i, align 4
  %maddr_map.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 14, i32 2
  %77 = ptrtoint ptr %maddr_map.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 31, ptr %maddr_map.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %do.end53, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end147 ], [ -22, %do.end53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_port_config(ptr nocapture noundef readonly %gbe_dev, ptr nocapture noundef readonly %slave, i32 noundef %max_rx_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 12
  %0 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %1)
  %cmp1 = icmp eq i32 %1, 20196
  br i1 %cmp1, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %link_interface = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 9
  %2 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp2 = icmp ugt i32 %3, 9
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ss_regs = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 14
  %4 = ptrtoint ptr %ss_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss_regs, align 4
  %control = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %control, align 2
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !312
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  %slave_num = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 4
  %10 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_num, align 4
  %shl = shl nuw i32 1, %11
  %or = or i32 %shl, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %ss_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ss_regs, align 4
  %15 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %control, align 2
  %conv8 = zext i16 %16 to i32
  %add.ptr9 = getelementptr i8, ptr %14, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #11, !srcloc !317
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %17 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ss_version, align 4
  %shr = lshr i32 %18, 16
  %trunc = trunc i32 %shr to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %trunc, label %if.else [
    i16 20198, label %if.end10.if.then19_crit_edge
    i16 20200, label %if.end10.if.then19_crit_edge54
  ]

if.end10.if.then19_crit_edge54:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %if.end10.if.then19_crit_edge, %if.end10.if.then19_crit_edge54
  %rx_maxlen = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 2, i32 10
  br label %do.body26

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %emac_regs = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 1
  %rx_maxlen22 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3, i32 2
  br label %do.body26

do.body26:                                        ; preds = %if.else, %if.then19
  %.sink53.in = phi ptr [ %rx_maxlen, %if.then19 ], [ %rx_maxlen22, %if.else ]
  %.sink.in = phi ptr [ %slave, %if.then19 ], [ %emac_regs, %if.else ]
  %20 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load ptr, ptr %.sink.in, align 4
  %21 = ptrtoint ptr %.sink53.in to i32
  call void @__asan_load2_noabort(i32 %21)
  %.sink53 = load i16, ptr %.sink53.in, align 2
  %conv20 = zext i16 %.sink53 to i32
  %add.ptr21 = getelementptr i8, ptr %.sink, i32 %conv20
  %22 = tail call i32 @llvm.smin.i32(i32 %max_rx_len, i32 9504)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %23) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @arm_heavy_mb() #11
  %mac_control = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 10
  %24 = ptrtoint ptr %mac_control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_control, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %emac_regs32 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 1
  %27 = ptrtoint ptr %emac_regs32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %emac_regs32, align 4
  %emac_regs_ofs33 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %29 = ptrtoint ptr %emac_regs_ofs33 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %emac_regs_ofs33, align 2
  %conv35 = zext i16 %30 to i32
  %add.ptr36 = getelementptr i8, ptr %28, i32 %conv35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %26) #11, !srcloc !317
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gbe_adjust_link_sec_slaves(ptr noundef readonly %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %secondary_slaves = getelementptr i8, ptr %ndev, i32 2528
  %0 = ptrtoint ptr %secondary_slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %secondary_slaves, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %secondary_slaves
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %slave.0 = getelementptr i8, ptr %.pn13, i32 -84
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %add.ptr.i, ptr noundef %slave.0, ptr noundef null)
  %1 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, %secondary_slaves
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_sgmii_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_sgmii_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netcp_ethss_update_link_state(ptr nocapture noundef readonly %gbe_dev, ptr noundef %slave, ptr noundef %ndev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_num = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 4
  %0 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave_num, align 4
  %open = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 7
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open, align 4, !range !320
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_interface = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 9
  %4 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_interface, align 4
  %6 = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ss_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 14
  %8 = ptrtoint ptr %ss_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ss_regs.i, align 4
  %rgmii_status.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 23, i32 2
  %10 = ptrtoint ptr %rgmii_status.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rgmii_status.i, align 4
  %conv.i = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !345
  %13 = lshr i32 %12, 24
  %14 = and i32 %13, 1
  %15 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %link_interface, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %16 = phi i32 [ %.pr, %if.then3 ], [ %5, %if.end.if.end4_crit_edge ]
  %sw_link_state.0 = phi i32 [ %14, %if.then3 ], [ 1, %if.end.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp6 = icmp ult i32 %16, 5
  br i1 %cmp6, label %if.then7, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp8 = icmp slt i32 %1, 2
  %sgmii_port_regs = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 19
  %sgmii_port34_regs = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 20
  %cond.in = select i1 %cmp8, ptr %sgmii_port_regs, ptr %sgmii_port34_regs
  %17 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond = load ptr, ptr %cond.in, align 4
  %call = tail call i32 @netcp_sgmii_get_port_link(ptr noundef %cond, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9 = icmp ne i32 %call, 0
  %frombool = zext i1 %tobool9 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %sw_link_state.1 = phi i32 [ %frombool, %if.then7 ], [ %sw_link_state.0, %if.end4.if.end10_crit_edge ]
  %phy.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 8
  %18 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end10.gbe_phy_link_status.exit_crit_edge, label %lor.rhs.i

if.end10.gbe_phy_link_status.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_phy_link_status.exit

lor.rhs.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %link.i = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %link.i, align 8
  %21 = lshr i16 %bf.load.i, 2
  %.lobit = and i16 %21, 1
  %22 = zext i16 %.lobit to i32
  br label %gbe_phy_link_status.exit

gbe_phy_link_status.exit:                         ; preds = %lor.rhs.i, %if.end10.gbe_phy_link_status.exit_crit_edge
  %23 = phi i32 [ 1, %if.end10.gbe_phy_link_status.exit_crit_edge ], [ %22, %lor.rhs.i ]
  %and = and i32 %sw_link_state.1, %23
  %link_state16 = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %link_state16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !346
  tail call void @llvm.prefetch.p0(ptr %link_state16, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %and, ptr %link_state16) #11, !srcloc !347
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !348
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i, i32 %and)
  %cmp18.not = icmp eq i32 %asmresult.i.i, %and
  br i1 %cmp18.not, label %gbe_phy_link_status.exit.cleanup_crit_edge, label %if.then20

gbe_phy_link_status.exit.cleanup_crit_edge:       ; preds = %gbe_phy_link_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %gbe_phy_link_status.exit
  %25 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i38 = icmp eq i32 %and, 0
  br i1 %tobool.not.i38, label %do.body32.i, label %if.then.i

if.then.i:                                        ; preds = %if.then20
  %mac_control2.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 10
  %27 = ptrtoint ptr %mac_control2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac_control2.i, align 4
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %if.then.i.do.body.i_crit_edge, label %land.lhs.true.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %26, i32 0, i32 8
  %29 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed.i, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %30, label %land.lhs.true.i.do.body.i_crit_edge [
    i32 1000, label %if.then4.i
    i32 10000, label %if.then9.i
  ]

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = and i32 %28, -385
  %and.i = or i32 %or.i, 128
  br label %do.body.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %or10.i = and i32 %28, -385
  %and11.i = or i32 %or10.i, 256
  br label %do.body.i

do.body.i:                                        ; preds = %if.then9.i, %if.then4.i, %land.lhs.true.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  %mac_control.0.i = phi i32 [ %and.i, %if.then4.i ], [ %and11.i, %if.then9.i ], [ %28, %if.then.i.do.body.i_crit_edge ], [ %28, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %mac_control.0.i) #11
  %emac_regs.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 1
  %33 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %emac_regs.i, align 4
  %emac_regs_ofs.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %35 = ptrtoint ptr %emac_regs_ofs.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %emac_regs_ofs.i, align 2
  %conv.i39 = zext i16 %36 to i32
  %add.ptr.i40 = getelementptr i8, ptr %34, i32 %conv.i39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %32) #11, !srcloc !317
  %ale.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 26
  %37 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ale.i, align 4
  %port_num.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 5
  %39 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_num.i, align 4
  %call.i = tail call i32 @cpsw_ale_control_set(ptr noundef %38, i32 noundef %40, i32 noundef 12, i32 noundef 3) #11
  %tobool14.not.i = icmp eq ptr %ndev, null
  br i1 %tobool14.not.i, label %do.body.i.if.end58.i_crit_edge, label %land.lhs.true15.i

do.body.i.if.end58.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true15.i:                                ; preds = %do.body.i
  %41 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %open, align 4, !range !320
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool16.not.i = icmp eq i8 %42, 0
  br i1 %tobool16.not.i, label %land.lhs.true15.i.if.end58.i_crit_edge, label %land.lhs.true18.i

land.lhs.true15.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %43 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %link_interface, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %44, label %if.then29.i [
    i32 1, label %land.lhs.true18.i.if.end58.i_crit_edge
    i32 5, label %land.lhs.true18.i.if.end58.i_crit_edge41
    i32 10, label %land.lhs.true18.i.if.end58.i_crit_edge42
  ]

land.lhs.true18.i.if.end58.i_crit_edge42:         ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true18.i.if.end58.i_crit_edge41:         ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true18.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then29.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_on(ptr noundef nonnull %ndev) #11
  br label %if.end58.i

do.body32.i:                                      ; preds = %if.then20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  tail call void @arm_heavy_mb() #11
  %emac_regs35.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 1
  %46 = ptrtoint ptr %emac_regs35.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %emac_regs35.i, align 4
  %emac_regs_ofs36.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 3
  %48 = ptrtoint ptr %emac_regs_ofs36.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %emac_regs_ofs36.i, align 2
  %conv38.i = zext i16 %49 to i32
  %add.ptr39.i = getelementptr i8, ptr %47, i32 %conv38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 0) #11, !srcloc !317
  %ale40.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 26
  %50 = ptrtoint ptr %ale40.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ale40.i, align 4
  %port_num41.i = getelementptr inbounds %struct.gbe_slave, ptr %slave, i32 0, i32 5
  %52 = ptrtoint ptr %port_num41.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_num41.i, align 4
  %call42.i = tail call i32 @cpsw_ale_control_set(ptr noundef %51, i32 noundef %53, i32 noundef 12, i32 noundef 0) #11
  %tobool43.not.i = icmp eq ptr %ndev, null
  br i1 %tobool43.not.i, label %do.body32.i.if.end58.i_crit_edge, label %land.lhs.true44.i

do.body32.i.if.end58.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true44.i:                                ; preds = %do.body32.i
  %54 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %link_interface, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %55, label %if.then56.i [
    i32 1, label %land.lhs.true44.i.if.end58.i_crit_edge
    i32 5, label %land.lhs.true44.i.if.end58.i_crit_edge43
    i32 10, label %land.lhs.true44.i.if.end58.i_crit_edge44
  ]

land.lhs.true44.i.if.end58.i_crit_edge44:         ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true44.i.if.end58.i_crit_edge43:         ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

land.lhs.true44.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then56.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_off(ptr noundef nonnull %ndev) #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %land.lhs.true44.i.if.end58.i_crit_edge, %land.lhs.true44.i.if.end58.i_crit_edge43, %land.lhs.true44.i.if.end58.i_crit_edge44, %do.body32.i.if.end58.i_crit_edge, %if.then29.i, %land.lhs.true18.i.if.end58.i_crit_edge, %land.lhs.true18.i.if.end58.i_crit_edge41, %land.lhs.true18.i.if.end58.i_crit_edge42, %land.lhs.true15.i.if.end58.i_crit_edge, %do.body.i.if.end58.i_crit_edge
  %tobool59.not.i = icmp eq ptr %26, null
  br i1 %tobool59.not.i, label %if.end58.i.cleanup_crit_edge, label %if.then60.i

if.end58.i.cleanup_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then60.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_print_status(ptr noundef nonnull %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then60.i, %if.end58.i.cleanup_crit_edge, %gbe_phy_link_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_sgmii_get_port_link(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_update_stats_ver14(ptr nocapture noundef readonly %gbe_dev, ptr noundef writeonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_et_stats = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 35
  %0 = ptrtoint ptr %num_et_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_et_stats, align 4
  %div = sdiv i32 %1, 2
  %switch_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 15
  %stat_port_en.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 24, i32 4
  %.off = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %2 = icmp ult i32 %.off, 3
  %et_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 34
  %hw_stats_prev.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 33
  %hw_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 32
  %tobool4.not = icmp eq ptr %data, null
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  %3 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %switch_regs.i, align 4
  %5 = ptrtoint ptr %stat_port_en.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %stat_port_en.i, align 2
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  %8 = and i32 %7, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %switch_regs.i, align 4
  %11 = ptrtoint ptr %stat_port_en.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %stat_port_en.i, align 2
  %conv6.i = zext i16 %12 to i32
  %add.ptr7.i = getelementptr i8, ptr %10, i32 %conv6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %8) #11, !srcloc !317
  br i1 %2, label %entry.for.inc6_crit_edge, label %entry.for.body3_crit_edge

entry.for.body3_crit_edge:                        ; preds = %entry
  br label %for.body3

entry.for.inc6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc6

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %entry.for.body3_crit_edge
  %j.024 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %entry.for.body3_crit_edge ]
  %13 = ptrtoint ptr %et_stats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %et_stats.i, align 4
  %type.i = getelementptr %struct.netcp_ethtool_stat, ptr %14, i32 %j.024, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %arrayidx1.i = getelementptr %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 22, i32 %16
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.i, align 4
  %offset.i = getelementptr %struct.netcp_ethtool_stat, ptr %14, i32 %j.024, i32 3
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %18, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #11, !srcloc !312
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %23 = ptrtoint ptr %hw_stats_prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_stats_prev.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %24, i32 %j.024
  %25 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx5.i, align 4
  %sub.i = sub i32 %22, %26
  store i32 %22, ptr %arrayidx5.i, align 4
  %conv.i22 = zext i32 %sub.i to i64
  %27 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_stats.i, align 4
  %arrayidx8.i = getelementptr i64, ptr %28, i32 %j.024
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx8.i, align 8
  %add.i = add i64 %30, %conv.i22
  store i64 %add.i, ptr %arrayidx8.i, align 8
  br i1 %tobool4.not, label %for.body3.for.inc_crit_edge, label %if.then

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_stats.i, align 4
  %arrayidx = getelementptr i64, ptr %32, i32 %j.024
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx, align 8
  %arrayidx5 = getelementptr i64, ptr %data, i32 %j.024
  %35 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3.for.inc_crit_edge
  %inc = add nuw i32 %j.024, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.inc6_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3

for.inc.for.inc6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc6

for.inc6:                                         ; preds = %for.inc.for.inc6_crit_edge, %entry.for.inc6_crit_edge
  %36 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %switch_regs.i, align 4
  %38 = ptrtoint ptr %stat_port_en.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %stat_port_en.i, align 2
  %conv.i.1 = zext i16 %39 to i32
  %add.ptr.i.1 = getelementptr i8, ptr %37, i32 %conv.i.1
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  %41 = or i32 %40, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %switch_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %switch_regs.i, align 4
  %44 = ptrtoint ptr %stat_port_en.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %stat_port_en.i, align 2
  %conv6.i.1 = zext i16 %45 to i32
  %add.ptr7.i.1 = getelementptr i8, ptr %43, i32 %conv6.i.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.1, i32 %41) #11, !srcloc !317
  br i1 %2, label %for.inc6.for.inc6.1_crit_edge, label %for.inc6.for.body3.1_crit_edge

for.inc6.for.body3.1_crit_edge:                   ; preds = %for.inc6
  br label %for.body3.1

for.inc6.for.inc6.1_crit_edge:                    ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc6.1

for.body3.1:                                      ; preds = %for.inc.1.for.body3.1_crit_edge, %for.inc6.for.body3.1_crit_edge
  %j.024.1 = phi i32 [ %inc.1, %for.inc.1.for.body3.1_crit_edge ], [ 0, %for.inc6.for.body3.1_crit_edge ]
  %add.1 = add i32 %j.024.1, %div
  %46 = ptrtoint ptr %et_stats.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %et_stats.i, align 4
  %type.i.1 = getelementptr %struct.netcp_ethtool_stat, ptr %47, i32 %add.1, i32 1
  %48 = ptrtoint ptr %type.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i.1, align 4
  %arrayidx1.i.1 = getelementptr %struct.gbe_priv, ptr %gbe_dev, i32 0, i32 22, i32 %49
  %50 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx1.i.1, align 4
  %offset.i.1 = getelementptr %struct.netcp_ethtool_stat, ptr %47, i32 %add.1, i32 3
  %52 = ptrtoint ptr %offset.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset.i.1, align 4
  %add.ptr.i21.1 = getelementptr i8, ptr %51, i32 %53
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.1) #11, !srcloc !312
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %56 = ptrtoint ptr %hw_stats_prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw_stats_prev.i, align 4
  %arrayidx5.i.1 = getelementptr i32, ptr %57, i32 %add.1
  %58 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.i.1, align 4
  %sub.i.1 = sub i32 %55, %59
  store i32 %55, ptr %arrayidx5.i.1, align 4
  %conv.i22.1 = zext i32 %sub.i.1 to i64
  %60 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_stats.i, align 4
  %arrayidx8.i.1 = getelementptr i64, ptr %61, i32 %add.1
  %62 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx8.i.1, align 8
  %add.i.1 = add i64 %63, %conv.i22.1
  store i64 %add.i.1, ptr %arrayidx8.i.1, align 8
  br i1 %tobool4.not, label %for.body3.1.for.inc.1_crit_edge, label %if.then.1

for.body3.1.for.inc.1_crit_edge:                  ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_stats.i, align 4
  %arrayidx.1 = getelementptr i64, ptr %65, i32 %add.1
  %66 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx.1, align 8
  %arrayidx5.1 = getelementptr i64, ptr %data, i32 %add.1
  %68 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx5.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.body3.1.for.inc.1_crit_edge
  %inc.1 = add nuw i32 %j.024.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %umax
  br i1 %exitcond.1.not, label %for.inc.1.for.inc6.1_crit_edge, label %for.inc.1.for.body3.1_crit_edge

for.inc.1.for.body3.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.1

for.inc.1.for.inc6.1_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc6.1

for.inc6.1:                                       ; preds = %for.inc.1.for.inc6.1_crit_edge, %for.inc6.for.inc6.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_txpipe_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @keystone_get_drvinfo(ptr nocapture noundef readnone %ndev, ptr nocapture noundef writeonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %driver, ptr @str, i32 32)
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %version, ptr @str.162, i32 32)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @keystone_get_msglevel(ptr nocapture noundef readonly %ndev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3304
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @keystone_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 3304
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_get_stat_strings(ptr noundef %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %keystone_get_intf_data.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit:                      ; preds = %entry
  %call1.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %keystone_get_intf_data.exit.cleanup_crit_edge, label %keystone_get_intf_data.exit.if.end_crit_edge

keystone_get_intf_data.exit.if.end_crit_edge:     ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit.cleanup_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %keystone_get_intf_data.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %gbe_intf.0.i13 = phi ptr [ %call1.i, %keystone_get_intf_data.exit.if.end_crit_edge ], [ %call.i, %entry.if.end_crit_edge ]
  %gbe_dev2 = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf.0.i13, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_et_stats = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %num_et_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_et_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %et_stats = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.015 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %et_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %et_stats, align 4
  %arrayidx = getelementptr %struct.netcp_ethtool_stat, ptr %5, i32 %i.016
  %6 = call ptr @memcpy(ptr %data.addr.015, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %data.addr.015, i32 32
  %inc = add nuw nsw i32 %i.016, 1
  %7 = ptrtoint ptr %num_et_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_et_stats, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %keystone_get_intf_data.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_get_ethtool_stats(ptr noundef %ndev, ptr nocapture noundef readnone %stats, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %keystone_get_intf_data.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit:                      ; preds = %entry
  %call1.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %keystone_get_intf_data.exit.cleanup_crit_edge, label %keystone_get_intf_data.exit.if.end_crit_edge

keystone_get_intf_data.exit.if.end_crit_edge:     ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit.cleanup_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %keystone_get_intf_data.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %gbe_intf.0.i18 = phi ptr [ %call1.i, %keystone_get_intf_data.exit.if.end_crit_edge ], [ %call.i, %entry.if.end_crit_edge ]
  %gbe_dev2 = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf.0.i18, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev2, align 4
  %hw_stats_lock = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %hw_stats_lock) #11
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1322385408, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1322385408
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gbe_update_stats_ver14(ptr noundef %1, ptr noundef %data)
  br label %if.end4

if.else:                                          ; preds = %if.end
  %num_et_stats.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_et_stats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i = icmp sgt i32 %5, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.else
  %et_stats.i.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 34
  %hw_stats_prev.i.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 33
  %hw_stats.i.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 32
  %tobool.not.i14 = icmp eq ptr %data, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %et_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %et_stats.i.i, align 4
  %type.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %7, i32 %i.010.i, i32 1
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.gbe_priv, ptr %1, i32 0, i32 22, i32 %9
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %offset.i.i = getelementptr %struct.netcp_ethtool_stat, ptr %7, i32 %i.010.i, i32 3
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !312
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %16 = ptrtoint ptr %hw_stats_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_stats_prev.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %17, i32 %i.010.i
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i.i, align 4
  %sub.i.i = sub i32 %15, %19
  store i32 %15, ptr %arrayidx5.i.i, align 4
  %conv.i.i = zext i32 %sub.i.i to i64
  %20 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_stats.i.i, align 4
  %arrayidx8.i.i = getelementptr i64, ptr %21, i32 %i.010.i
  %22 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx8.i.i, align 8
  %add.i.i = add i64 %23, %conv.i.i
  store i64 %add.i.i, ptr %arrayidx8.i.i, align 8
  br i1 %tobool.not.i14, label %for.body.i.for.inc.i_crit_edge, label %if.then.i15

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i15:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_stats.i.i, align 4
  %arrayidx.i = getelementptr i64, ptr %25, i32 %i.010.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %data, i32 %i.010.i
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx1.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i15, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %29 = ptrtoint ptr %num_et_stats.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_et_stats.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %30
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then3
  tail call void @_raw_spin_unlock_bh(ptr noundef %hw_stats_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %keystone_get_intf_data.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_get_sset_count(ptr noundef %ndev, i32 noundef %stringset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %keystone_get_intf_data.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit:                      ; preds = %entry
  %call1.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %keystone_get_intf_data.exit.cleanup_crit_edge, label %keystone_get_intf_data.exit.if.end_crit_edge

keystone_get_intf_data.exit.if.end_crit_edge:     ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

keystone_get_intf_data.exit.cleanup_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %keystone_get_intf_data.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %gbe_intf.0.i9 = phi ptr [ %call1.i, %keystone_get_intf_data.exit.if.end_crit_edge ], [ %call.i, %entry.if.end_crit_edge ]
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %stringset, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gbe_dev2 = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf.0.i9, i32 0, i32 2
  %1 = ptrtoint ptr %gbe_dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gbe_dev2, align 4
  %num_et_stats = getelementptr inbounds %struct.gbe_priv, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %num_et_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_et_stats, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb3, %if.end.cleanup_crit_edge, %keystone_get_intf_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %4, %sw.bb3 ], [ -22, %keystone_get_intf_data.exit.cleanup_crit_edge ], [ %stringset, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_get_ts_info(ptr noundef %ndev, ptr nocapture noundef writeonly %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %gbe_dev = getelementptr inbounds %struct.gbe_intf, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  %cpts = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpts, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %so_timestamping, align 4
  %5 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gbe_dev, align 4
  %cpts4 = getelementptr inbounds %struct.gbe_priv, ptr %6, i32 0, i32 38
  %7 = ptrtoint ptr %cpts4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpts4, align 4
  %phc_index = getelementptr inbounds %struct.cpts, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phc_index, align 8
  %phc_index5 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %phc_index5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phc_index5, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4105, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_get_link_ksettings(ptr noundef %ndev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %keystone_get_intf_data.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

keystone_get_intf_data.exit:                      ; preds = %if.end
  %call1.i = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool2.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not, label %keystone_get_intf_data.exit.cleanup_crit_edge, label %keystone_get_intf_data.exit.if.end4_crit_edge

keystone_get_intf_data.exit.if.end4_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

keystone_get_intf_data.exit.cleanup_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %keystone_get_intf_data.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %gbe_intf.0.i18 = phi ptr [ %call1.i, %keystone_get_intf_data.exit.if.end4_crit_edge ], [ %call.i, %if.end.if.end4_crit_edge ]
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf.0.i18, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #11
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %phy_port_t = getelementptr inbounds %struct.gbe_slave, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %phy_port_t to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_port_t, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %port, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %keystone_get_intf_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %keystone_get_intf_data.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_set_link_ksettings(ptr noundef %ndev, ptr noundef %cmd) #3 align 64 {
entry:
  %advertising = alloca i32, align 4
  %supported = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %port1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #11
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %advertising, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supported) #11
  %5 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %supported, align 4, !annotation !310
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #11
  %call7 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %supported, ptr noundef %link_modes) #11
  %6 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %advertising, align 4
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported, align 4
  %and = and i32 %9, %7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %keystone_get_intf_data.exit, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

keystone_get_intf_data.exit:                      ; preds = %if.end
  %call1.i = call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool9.not = icmp eq ptr %call1.i, null
  br i1 %tobool9.not, label %keystone_get_intf_data.exit.cleanup_crit_edge, label %keystone_get_intf_data.exit.if.end11_crit_edge

keystone_get_intf_data.exit.if.end11_crit_edge:   ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

keystone_get_intf_data.exit.cleanup_crit_edge:    ; preds = %keystone_get_intf_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %keystone_get_intf_data.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %gbe_intf.0.i93 = phi ptr [ %call1.i, %keystone_get_intf_data.exit.if.end11_crit_edge ], [ %call.i, %if.end.if.end11_crit_edge ]
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf.0.i93, i32 0, i32 4
  %10 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %phy_port_t = getelementptr inbounds %struct.gbe_slave, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %phy_port_t to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phy_port_t, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %13)
  %cmp.not = icmp eq i8 %3, %13
  br i1 %cmp.not, label %if.end14.if.end58_crit_edge, label %if.then18

if.end14.if.end58_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20 = icmp eq i8 %3, 0
  %and22 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond = select i1 %cmp20, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %if.then18.cleanup_crit_edge, label %if.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp27 = icmp eq i8 %3, 1
  %and30 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %or.cond87 = select i1 %cmp27, i1 %tobool31.not, i1 false
  br i1 %or.cond87, label %if.end25.cleanup_crit_edge, label %if.end33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp35 = icmp eq i8 %3, 4
  %and38 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond88 = select i1 %cmp35, i1 %tobool39.not, i1 false
  br i1 %or.cond88, label %if.end33.cleanup_crit_edge, label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp43 = icmp eq i8 %3, 2
  %and46 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %or.cond89 = select i1 %cmp43, i1 %tobool47.not, i1 false
  br i1 %or.cond89, label %if.end41.cleanup_crit_edge, label %if.end49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp51 = icmp eq i8 %3, 3
  %and54 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond90 = select i1 %cmp51, i1 %tobool55.not, i1 false
  br i1 %or.cond90, label %if.end49.cleanup_crit_edge, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end58:                                         ; preds = %if.end49.if.end58_crit_edge, %if.end14.if.end58_crit_edge
  %14 = ptrtoint ptr %phy_port_t to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %3, ptr %phy_port_t, align 4
  %call61 = call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %1, ptr noundef %cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %keystone_get_intf_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end58 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %keystone_get_intf_data.exit.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ -22, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supported) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netcp_module_get_intf_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbe_slave_stop(ptr nocapture noundef readonly %intf) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %intf, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %slave2 = getelementptr inbounds %struct.gbe_intf, ptr %intf, i32 0, i32 4
  %2 = ptrtoint ptr %slave2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave2, align 4
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323827200, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1323827200
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %link_interface.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %link_interface.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp ugt i32 %7, 9
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %slave_num.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1.i = icmp slt i32 %9, 2
  %sgmii_port_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 19
  %sgmii_port34_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 20
  %cond.in.i = select i1 %cmp1.i, ptr %sgmii_port_regs.i, ptr %sgmii_port34_regs.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i = tail call zeroext i1 @netcp_sgmii_rtreset(ptr noundef %cond.i, i32 noundef %9, i1 noundef zeroext true) #11
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %emac_regs.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %emac_regs.i, align 4
  %soft_reset.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %soft_reset.i, align 2
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !317
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %emac_regs.i, align 4
  %17 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %soft_reset.i, align 2
  %conv5.i = zext i16 %18 to i32
  %add.ptr6.i = getelementptr i8, ptr %16, i32 %conv5.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.not.not.i = icmp eq i32 %20, 0
  %inc.i = add nuw nsw i32 %i.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  %or.cond.i = select i1 %cmp8.not.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %gbe_port_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

gbe_port_reset.exit:                              ; preds = %for.body.i
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  %port_num = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_num, align 4
  %call3 = tail call i32 @cpsw_ale_control_set(ptr noundef %22, i32 noundef %24, i32 noundef 12, i32 noundef 0) #11
  %25 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ale, align 4
  %27 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intf, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_num, align 4
  %shl = shl nuw i32 1, %30
  %call6 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %26, ptr noundef %broadcast, i32 noundef %shl, i32 noundef 0, i16 noundef zeroext 0) #11
  %phy = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %gbe_port_reset.exit.cleanup_crit_edge, label %if.end8

gbe_port_reset.exit.cleanup_crit_edge:            ; preds = %gbe_port_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %gbe_port_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @phy_stop(ptr noundef nonnull %32) #11
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  tail call void @phy_disconnect(ptr noundef %34) #11
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %gbe_port_reset.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbe_slave_open(ptr nocapture noundef readonly %gbe_intf) unnamed_addr #3 align 64 {
entry:
  %phy_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  %slave1 = getelementptr inbounds %struct.gbe_intf, ptr %gbe_intf, i32 0, i32 4
  %2 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_mode) #11
  %4 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %phy_mode, align 4, !annotation !310
  %ss_version = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ss_version, align 4
  %shr.mask = and i32 %6, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323827200, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 1323827200
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %link_interface.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %link_interface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %cmp.i = icmp ugt i32 %8, 9
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %slave_num.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1.i = icmp slt i32 %10, 2
  %sgmii_port_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 19
  %sgmii_port34_regs.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 20
  %cond.in.i = select i1 %cmp1.i, ptr %sgmii_port_regs.i, ptr %sgmii_port34_regs.i
  %11 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %call.i = tail call i32 @netcp_sgmii_reset(ptr noundef %cond.i, i32 noundef %10) #11
  %12 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.i = icmp slt i32 %13, 2
  %cond10.in.i = select i1 %cmp4.i, ptr %sgmii_port_regs.i, ptr %sgmii_port34_regs.i
  %14 = ptrtoint ptr %cond10.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond10.i = load ptr, ptr %cond10.in.i, align 4
  %15 = ptrtoint ptr %link_interface.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_interface.i, align 4
  %call13.i = tail call i32 @netcp_sgmii_config(ptr noundef %cond10.i, i32 noundef %13, i32 noundef %16) #11
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %emac_regs.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emac_regs.i, align 4
  %soft_reset.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %soft_reset.i, align 2
  %conv.i = zext i16 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %18, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #11, !srcloc !317
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %emac_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %emac_regs.i, align 4
  %23 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %soft_reset.i, align 2
  %conv5.i = zext i16 %24 to i32
  %add.ptr6.i = getelementptr i8, ptr %22, i32 %conv5.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.not.not.i = icmp eq i32 %26, 0
  %inc.i = add nuw nsw i32 %i.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  %or.cond.i = select i1 %cmp8.not.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %gbe_port_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

gbe_port_reset.exit:                              ; preds = %for.body.i
  %27 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ss_version, align 4
  %shr3.mask = and i32 %28, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323827200, i32 %shr3.mask)
  %cmp5 = icmp eq i32 %shr3.mask, 1323827200
  br i1 %cmp5, label %gbe_port_reset.exit.if.end7_crit_edge, label %if.then6

gbe_port_reset.exit.if.end7_crit_edge:            ; preds = %gbe_port_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %gbe_port_reset.exit
  %link_interface.i124 = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %link_interface.i124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %link_interface.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %30)
  %cmp.i125 = icmp ugt i32 %30, 9
  br i1 %cmp.i125, label %if.then6.if.end7_crit_edge, label %if.end.i133

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i133:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %slave_num.i126 = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %slave_num.i126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slave_num.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp1.i127 = icmp slt i32 %32, 2
  %sgmii_port_regs.i128 = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 19
  %sgmii_port34_regs.i129 = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 20
  %cond.in.i130 = select i1 %cmp1.i127, ptr %sgmii_port_regs.i128, ptr %sgmii_port34_regs.i129
  %33 = ptrtoint ptr %cond.in.i130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond.i131 = load ptr, ptr %cond.in.i130, align 4
  %call.i132 = tail call zeroext i1 @netcp_sgmii_rtreset(ptr noundef %cond.i131, i32 noundef %32, i1 noundef zeroext false) #11
  br label %if.end7

if.end7:                                          ; preds = %if.end.i133, %if.then6.if.end7_crit_edge, %gbe_port_reset.exit.if.end7_crit_edge
  %rx_packet_max = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_packet_max, align 4
  tail call fastcc void @gbe_port_config(ptr noundef %1, ptr noundef %3, i32 noundef %35)
  %36 = ptrtoint ptr %gbe_intf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gbe_intf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  tail call void @arm_heavy_mb() #11
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i, align 64
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i134 = zext i8 %41 to i32
  %arrayidx3.i = getelementptr i8, ptr %39, i32 1
  %42 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %43 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl5.i, %conv.i134
  %arrayidx7.i = getelementptr i8, ptr %39, i32 2
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %45 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or.i, %shl9.i
  %arrayidx12.i = getelementptr i8, ptr %39, i32 3
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %47 to i32
  %shl14.i = shl nuw i32 %conv13.i, 24
  %or15.i = or i32 %or10.i, %shl14.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #11
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %sa_hi.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %sa_hi.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sa_hi.i, align 4
  %conv16.i = zext i16 %52 to i32
  %add.ptr.i135 = getelementptr i8, ptr %50, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %48) #11, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !352
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx21.i = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %56 to i32
  %arrayidx25.i = getelementptr i8, ptr %54, i32 5
  %57 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %58 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 8
  %or28.i = or i32 %shl27.i, %conv22.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #11
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %sa_lo.i = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 2, i32 3
  %62 = ptrtoint ptr %sa_lo.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sa_lo.i, align 2
  %conv31.i = zext i16 %63 to i32
  %add.ptr32.i = getelementptr i8, ptr %61, i32 %conv31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %59) #11, !srcloc !317
  %64 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ss_version, align 4
  %shr9 = lshr i32 %65, 16
  %trunc = trunc i32 %shr9 to i16
  %66 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %trunc, label %if.end7.if.end17_crit_edge [
    i16 20198, label %if.end7.do.body_crit_edge
    i16 20200, label %if.end7.do.body_crit_edge137
  ]

if.end7.do.body_crit_edge137:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end7.do.body_crit_edge137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !353
  tail call void @arm_heavy_mb() #11
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %rx_pri_map = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %rx_pri_map to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rx_pri_map, align 4
  %conv = zext i16 %70 to i32
  %add.ptr = getelementptr i8, ptr %68, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !317
  br label %if.end17

if.end17:                                         ; preds = %do.body, %if.end7.if.end17_crit_edge
  %ale = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 26
  %71 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ale, align 4
  %port_num = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 5
  %73 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port_num, align 4
  %call18 = tail call i32 @cpsw_ale_control_set(ptr noundef %72, i32 noundef %74, i32 noundef 12, i32 noundef 3) #11
  %75 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ale, align 4
  %77 = ptrtoint ptr %gbe_intf to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gbe_intf, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 99
  %79 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port_num, align 4
  %shl = shl nuw i32 1, %80
  %call21 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %76, ptr noundef %broadcast, i32 noundef %shl, i32 noundef 0, i16 noundef zeroext 0, i32 noundef 3) #11
  %link_interface = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 9
  %81 = ptrtoint ptr %link_interface to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %link_interface, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %82, label %if.end17.cleanup_crit_edge [
    i32 1, label %if.then24
    i32 5, label %if.then28
    i32 10, label %if.then43
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %phy_mode, align 4
  br label %if.then49

if.then28:                                        ; preds = %if.end17
  %node = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 12
  %85 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %node, align 4
  %call29 = call i32 @of_get_phy_mode(ptr noundef %86, ptr noundef nonnull %phy_mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then28.if.end31_crit_edge, label %if.then30

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 9, ptr %phy_mode, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then28.if.end31_crit_edge
  %88 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %phy_mode, align 4
  %90 = add i32 %89, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %if.end31.if.then49_crit_edge, label %do.end36

if.end31.if.then49_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.147, i32 noundef %89) #14
  br label %cleanup

if.then43:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %phy_mode to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %phy_mode, align 4
  br label %if.then49

if.then49:                                        ; preds = %if.then43, %if.end31.if.then49_crit_edge, %if.then24
  %.sink = phi i8 [ 3, %if.then43 ], [ 2, %if.then24 ], [ 2, %if.end31.if.then49_crit_edge ]
  %phy_port_t44 = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 11
  %95 = ptrtoint ptr %phy_port_t44 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.sink, ptr %phy_port_t44, align 4
  %96 = ptrtoint ptr %ss_version to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ss_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20196, i32 %97)
  %cmp51 = icmp eq i32 %97, 20196
  %spec.select = select i1 %cmp51, ptr @xgbe_adjust_link, ptr @gbe_adjust_link
  %98 = ptrtoint ptr %gbe_intf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gbe_intf, align 4
  %phy_node = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 13
  %100 = ptrtoint ptr %phy_node to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy_node, align 4
  %102 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %phy_mode, align 4
  %call56 = call ptr @of_phy_connect(ptr noundef %99, ptr noundef %101, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef %103) #11
  %phy = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 8
  %104 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call56, ptr %phy, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %do.end62, label %do.body65

do.end62:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %slave_num = getelementptr inbounds %struct.gbe_slave, ptr %3, i32 0, i32 4
  %107 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %slave_num, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.150, i32 noundef %108) #14
  br label %cleanup

do.body65:                                        ; preds = %if.then49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbe_slave_open.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbe_slave_open, %if.then70)) #11
          to label %do.end76 [label %if.then70], !srcloc !311

if.then70:                                        ; preds = %do.body65
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %111 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then70.phydev_name.exit_crit_edge

if.then70.phydev_name.exit_crit_edge:             ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.then70.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %116, %if.end.i.i ], [ %114, %if.then70.phydev_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbe_slave_open.__UNIQUE_ID_ddebug351, ptr noundef %110, ptr noundef nonnull @.str.126, ptr noundef %retval.0.i.i) #11
  br label %do.end76

do.end76:                                         ; preds = %phydev_name.exit, %do.body65
  %117 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %phy, align 4
  call void @phy_start(ptr noundef %118) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end62, %do.end36, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end62 ], [ -22, %do.end36 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.end76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_mode) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_register_txhook(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_txhook(i32 noundef %order, ptr noundef %data, ptr nocapture noundef %p_info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pipe = getelementptr inbounds %struct.gbe_intf, ptr %data, i32 0, i32 3
  %tx_pipe1 = getelementptr inbounds %struct.netcp_packet, ptr %p_info, i32 0, i32 6
  %0 = ptrtoint ptr %tx_pipe1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %tx_pipe, ptr %tx_pipe1, align 4
  %1 = ptrtoint ptr %p_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_info, align 4
  %3 = getelementptr inbounds %struct.anon.44, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 145
  %6 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev1.i, align 16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_flags.i, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.gbe_txtstamp_mark_pkt.exit_crit_edge, label %lor.lhs.false.i

entry.gbe_txtstamp_mark_pkt.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_txtstamp_mark_pkt.exit

lor.lhs.false.i:                                  ; preds = %entry
  %gbe_dev2.i = getelementptr inbounds %struct.gbe_intf, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %gbe_dev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gbe_dev2.i, align 4
  %tx_ts_enabled.i = getelementptr inbounds %struct.gbe_priv, ptr %14, i32 0, i32 40
  %15 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.gbe_txtstamp_mark_pkt.exit_crit_edge, label %if.end.i

lor.lhs.false.i.gbe_txtstamp_mark_pkt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_txtstamp_mark_pkt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %mii_ts.i.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 37
  %17 = ptrtoint ptr %mii_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mii_ts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end12.i_crit_edge, label %phy_has_txtstamp.exit.i

land.lhs.true.i.i.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

phy_has_txtstamp.exit.i:                          ; preds = %land.lhs.true.i.i
  %txtstamp.i.i = getelementptr inbounds %struct.mii_timestamper, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %txtstamp.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txtstamp.i.i, align 4
  %tobool3.i.not.i = icmp eq ptr %20, null
  br i1 %tobool3.i.not.i, label %phy_has_txtstamp.exit.i.if.end12.i_crit_edge, label %phy_has_txtstamp.exit.i.cleanup.sink.split.i_crit_edge

phy_has_txtstamp.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %phy_has_txtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

phy_has_txtstamp.exit.i.if.end12.i_crit_edge:     ; preds = %phy_has_txtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %phy_has_txtstamp.exit.i.if.end12.i_crit_edge, %land.lhs.true.i.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %call.i.i.i = tail call i32 @ptp_classify_raw(ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.end12.i.gbe_txtstamp_mark_pkt.exit_crit_edge, label %if.then14.i

if.end12.i.gbe_txtstamp_mark_pkt.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_txtstamp_mark_pkt.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %txtstamp.i = getelementptr inbounds %struct.netcp_packet, ptr %p_info, i32 0, i32 9
  %21 = ptrtoint ptr %txtstamp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gbe_txtstamp, ptr %txtstamp.i, align 4
  %ts_context.i = getelementptr inbounds %struct.netcp_packet, ptr %p_info, i32 0, i32 8
  %22 = ptrtoint ptr %ts_context.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data, ptr %ts_context.i, align 4
  %23 = ptrtoint ptr %p_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_info, align 4
  %end.i2.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %end.i2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i2.i, align 4
  %tx_flags17.i = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %tx_flags17.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_flags17.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then14.i, %phy_has_txtstamp.exit.i.cleanup.sink.split.i_crit_edge
  %.sink3.i = phi i8 [ %28, %if.then14.i ], [ %11, %phy_has_txtstamp.exit.i.cleanup.sink.split.i_crit_edge ]
  %tx_flags17.sink.i = phi ptr [ %tx_flags17.i, %if.then14.i ], [ %tx_flags.i, %phy_has_txtstamp.exit.i.cleanup.sink.split.i_crit_edge ]
  %29 = or i8 %.sink3.i, 4
  %30 = ptrtoint ptr %tx_flags17.sink.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tx_flags17.sink.i, align 1
  br label %gbe_txtstamp_mark_pkt.exit

gbe_txtstamp_mark_pkt.exit:                       ; preds = %cleanup.sink.split.i, %if.end12.i.gbe_txtstamp_mark_pkt.exit_crit_edge, %lor.lhs.false.i.gbe_txtstamp_mark_pkt.exit_crit_edge, %entry.gbe_txtstamp_mark_pkt.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_register_rxhook(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbe_rxhook(i32 noundef %order, ptr nocapture noundef readonly %data, ptr nocapture noundef %p_info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev2.i = getelementptr inbounds %struct.gbe_intf, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev2.i, align 4
  %rxtstamp_complete.i = getelementptr inbounds %struct.netcp_packet, ptr %p_info, i32 0, i32 7
  %2 = ptrtoint ptr %rxtstamp_complete.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxtstamp_complete.i, align 4, !range !320
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.gbe_rxtstamp.exit_crit_edge

entry.gbe_rxtstamp.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gbe_rxtstamp.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %p_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_info, align 4
  %6 = getelementptr inbounds %struct.anon.44, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 145
  %9 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %mii_ts.i.i = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 37
  %11 = ptrtoint ptr %mii_ts.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii_ts.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end5.i_crit_edge, label %phy_has_rxtstamp.exit.i

land.lhs.true.i.i.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

phy_has_rxtstamp.exit.i:                          ; preds = %land.lhs.true.i.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool3.i.not.i = icmp eq ptr %14, null
  br i1 %tobool3.i.not.i, label %phy_has_rxtstamp.exit.i.if.end5.i_crit_edge, label %phy_has_rxtstamp.exit.i.cleanup.sink.split.i_crit_edge

phy_has_rxtstamp.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %phy_has_rxtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

phy_has_rxtstamp.exit.i.if.end5.i_crit_edge:      ; preds = %phy_has_rxtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %phy_has_rxtstamp.exit.i.if.end5.i_crit_edge, %land.lhs.true.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %rx_ts_enabled.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 39
  %15 = ptrtoint ptr %rx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.then7.i

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %cpts.i = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 38
  %17 = ptrtoint ptr %cpts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpts.i, align 4
  tail call void @cpts_rx_timestamp(ptr noundef %18, ptr noundef %5) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then7.i, %if.end5.i.cleanup.sink.split.i_crit_edge, %phy_has_rxtstamp.exit.i.cleanup.sink.split.i_crit_edge
  %19 = ptrtoint ptr %rxtstamp_complete.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %rxtstamp_complete.i, align 4
  br label %gbe_rxtstamp.exit

gbe_rxtstamp.exit:                                ; preds = %cleanup.sink.split.i, %entry.gbe_rxtstamp.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netcp_sgmii_rtreset(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gbe_adjust_link(ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @gbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gbe_dev = getelementptr inbounds %struct.gbe_intf, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %1, ptr noundef %3, ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_adjust_link(ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call ptr @netcp_module_get_intf_data(ptr noundef nonnull @xgbe_module, ptr noundef %add.ptr.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gbe_dev = getelementptr inbounds %struct.gbe_intf, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev, align 4
  %slave = getelementptr inbounds %struct.gbe_intf, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  tail call fastcc void @netcp_ethss_update_link_state(ptr noundef %1, ptr noundef %3, ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gbe_txtstamp(ptr nocapture noundef readonly %context, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gbe_dev1 = getelementptr inbounds %struct.gbe_intf, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %gbe_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gbe_dev1, align 4
  %cpts = getelementptr inbounds %struct.gbe_priv, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpts, align 4
  tail call void @cpts_tx_timestamp(ptr noundef %3, ptr noundef %skb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_rx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_unregister_rxhook(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netcp_unregister_txhook(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !91, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !111, !112, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !229, !231, !233, !234, !235, !237, !239, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !252, !254, !256, !258, !260, !261, !262, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !294, !296, !298}
!llvm.named.register.sp = !{!300}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__initcall__kmod_keystone_netcp_ethss__360_3867_keystone_gbe_init6, !1, !"__initcall__kmod_keystone_netcp_ethss__360_3867_keystone_gbe_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3867, i32 1}
!2 = !{ptr @__exitcall_keystone_gbe_exit, !3, !"__exitcall_keystone_gbe_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3874, i32 1}
!4 = !{ptr @__UNIQUE_ID_file361, !5, !"__UNIQUE_ID_file361", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3876, i32 1}
!6 = !{ptr @__UNIQUE_ID_license362, !5, !"__UNIQUE_ID_license362", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description363, !8, !"__UNIQUE_ID_description363", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3877, i32 1}
!9 = !{ptr @__UNIQUE_ID_author364, !10, !"__UNIQUE_ID_author364", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3878, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3820, i32 11}
!13 = !{ptr @gbe_module, !14, !"gbe_module", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3819, i32 28}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3555, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gbe_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @gbe_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3563, i32 36}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3564, i32 36}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3566, i32 43}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3568, i32 43}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3571, i32 43}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3574, i32 3}
!35 = !{ptr @gbe_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gbe_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @gbe_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3584, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3586, i32 29}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3588, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gbe_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @gbe_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3591, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gbe_probe.__UNIQUE_ID_ddebug357, !48, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3594, i32 35}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3597, i32 3}
!55 = !{ptr @gbe_probe._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @gbe_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3601, i32 38}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3604, i32 3}
!61 = !{ptr @gbe_probe._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @gbe_probe._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3608, i32 28}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3613, i32 3}
!67 = !{ptr @gbe_probe.__UNIQUE_ID_ddebug358, !66, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3622, i32 35}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3629, i32 3}
!72 = !{ptr @gbe_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gbe_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3636, i32 42}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3638, i32 3}
!78 = !{ptr @gbe_probe._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @gbe_probe._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3656, i32 41}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3658, i32 4}
!84 = !{ptr @gbe_probe._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @gbe_probe._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3671, i32 3}
!88 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @gbe_probe._entry.44, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @gbe_probe._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3674, i32 47}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3681, i32 3}
!95 = !{ptr @gbe_probe._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @gbe_probe._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3692, i32 22}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3694, i32 23}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3696, i32 23}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3698, i32 23}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3702, i32 3}
!107 = !{ptr @gbe_probe._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @gbe_probe._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3706, i32 3}
!111 = !{ptr @gbe_probe.__UNIQUE_ID_ddebug359, !110, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3709, i32 41}
!114 = !{ptr @gbe_probe.__key.61, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3733, i32 2}
!116 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3334, i32 3}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @get_gbe_resource_version._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @get_gbe_resource_version._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3342, i32 3}
!124 = !{ptr @get_gbe_resource_version._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @get_gbe_resource_version._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3359, i32 3}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @set_gbe_ethss14_priv._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @set_gbe_ethss14_priv._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3367, i32 3}
!133 = !{ptr @set_gbe_ethss14_priv._entry.70, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @set_gbe_ethss14_priv._entry_ptr.72, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @set_gbe_ethss14_priv._entry.73, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3375, i32 3}
!137 = !{ptr @set_gbe_ethss14_priv._entry_ptr.74, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3383, i32 3}
!140 = !{ptr @set_gbe_ethss14_priv._entry.75, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @set_gbe_ethss14_priv._entry_ptr.77, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3397, i32 3}
!144 = !{ptr @set_gbe_ethss14_priv._entry.78, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @set_gbe_ethss14_priv._entry_ptr.80, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3406, i32 3}
!148 = !{ptr @set_gbe_ethss14_priv._entry.81, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @set_gbe_ethss14_priv._entry_ptr.83, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @gbe13_et_stats, !151, !"gbe13_et_stats", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 808, i32 40}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3468, i32 3}
!154 = !{ptr @set_gbenu_ethss_priv._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @set_gbenu_ethss_priv._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @set_gbenu_ethss_priv._entry.85, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3477, i32 3}
!158 = !{ptr @set_gbenu_ethss_priv._entry_ptr.86, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3484, i32 3}
!161 = !{ptr @set_gbenu_ethss_priv._entry.87, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @set_gbenu_ethss_priv._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3492, i32 3}
!165 = !{ptr @set_gbenu_ethss_priv._entry.90, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @set_gbenu_ethss_priv._entry_ptr.92, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @gbenu_et_stats, !168, !"gbenu_et_stats", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 1020, i32 40}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3227, i32 3}
!171 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @set_xgbe_ethss10_priv._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @set_xgbe_ethss10_priv._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3235, i32 3}
!176 = !{ptr @set_xgbe_ethss10_priv._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3242, i32 3}
!180 = !{ptr @set_xgbe_ethss10_priv._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3250, i32 3}
!184 = !{ptr @set_xgbe_ethss10_priv._entry.101, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3257, i32 3}
!188 = !{ptr @set_xgbe_ethss10_priv._entry.104, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.106, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3265, i32 3}
!192 = !{ptr @set_xgbe_ethss10_priv._entry.107, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.109, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @set_xgbe_ethss10_priv._entry.110, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3278, i32 3}
!196 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.111, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @set_xgbe_ethss10_priv._entry.112, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3287, i32 3}
!199 = !{ptr @set_xgbe_ethss10_priv._entry_ptr.113, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @xgbe10_et_stats, !201, !"xgbe10_et_stats", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 1625, i32 40}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3126, i32 4}
!204 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @init_secondary_ports._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @init_secondary_ports._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3132, i32 4}
!209 = !{ptr @init_secondary_ports._entry.116, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @init_secondary_ports._entry_ptr.118, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.119, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3161, i32 24}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3164, i32 3}
!215 = !{ptr @init_secondary_ports._entry.120, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @init_secondary_ports._entry_ptr.122, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.124, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3193, i32 4}
!219 = !{ptr @init_secondary_ports._entry.123, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @init_secondary_ports._entry_ptr.125, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.126, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3196, i32 4}
!223 = !{ptr @init_secondary_ports.__UNIQUE_ID_ddebug356, !222, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2997, i32 3}
!226 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @init_slave._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @init_slave._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.129, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3001, i32 33}
!231 = !{ptr @.str.131, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3003, i32 3}
!233 = !{ptr @init_slave._entry.130, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @init_slave._entry_ptr.132, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.133, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3013, i32 44}
!237 = !{ptr @.str.135, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3044, i32 3}
!239 = !{ptr @init_slave._entry.134, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @init_slave._entry_ptr.136, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.137, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3813, i32 3}
!243 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @gbe_remove._entry, !242, !"_entry", i1 false, i1 false}
!246 = !{ptr @gbe_remove._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.140, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3752, i32 3}
!249 = !{ptr @.str.141, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @gbe_attach._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @gbe_attach._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @keystone_ethtool_ops, !253, !"keystone_ethtool_ops", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2043, i32 33}
!254 = distinct !{null, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 1738, i32 24}
!256 = distinct !{null, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 1739, i32 25}
!258 = !{ptr @.str.144, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2899, i32 2}
!260 = !{ptr @.str.145, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @gbe_open.__UNIQUE_ID_ddebug354, !259, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!262 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2912, i32 2}
!264 = !{ptr @gbe_open.__UNIQUE_ID_ddebug355, !263, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!265 = !{ptr @.str.147, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2329, i32 4}
!267 = !{ptr @.str.148, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @gbe_slave_open._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @gbe_slave_open._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.150, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2349, i32 4}
!272 = !{ptr @gbe_slave_open._entry.149, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @gbe_slave_open._entry_ptr.151, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @gbe_slave_open.__UNIQUE_ID_ddebug351, !275, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2353, i32 3}
!276 = !{ptr @.str.152, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2708, i32 3}
!278 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @gbe_register_cpts._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @gbe_register_cpts._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.154, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2459, i32 2}
!283 = !{ptr @.str.155, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @gbe_add_addr.__UNIQUE_ID_ddebug352, !282, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!285 = !{ptr @.str.156, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 2485, i32 2}
!287 = !{ptr @.str.157, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @gbe_del_addr.__UNIQUE_ID_ddebug353, !286, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!291 = distinct !{null, !290, !"<string literal>", i1 false, i1 false}
!292 = distinct !{null, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!294 = !{ptr @.str.160, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!296 = !{ptr @.str.161, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3837, i32 11}
!298 = !{ptr @xgbe_module, !299, !"xgbe_module", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/ti/netcp_ethss.c", i32 3836, i32 28}
!300 = !{!"sp"}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{!"auto-init"}
!311 = !{i64 2148259147, i64 2148259152, i64 2148259165, i64 2148259209, i64 2148259243, i64 2148259264}
!312 = !{i64 792408}
!313 = !{i64 2157366866}
!314 = !{!"branch_weights", i32 1, i32 2000}
!315 = !{i64 2157241798}
!316 = !{i64 2157242335}
!317 = !{i64 791990}
!318 = !{i64 2157240186}
!319 = !{i64 2157298319}
!320 = !{i8 0, i8 2}
!321 = !{i64 2157305193}
!322 = !{i64 2157306230}
!323 = !{i64 2157306833}
!324 = !{i64 2153030353, i64 2153030378}
!325 = !{i64 2153029672, i64 2153029697}
!326 = !{!"branch_weights", i32 2000, i32 1}
!327 = !{i64 5525227}
!328 = !{i64 5525424}
!329 = !{i64 2153010657}
!330 = !{i64 2157278927}
!331 = !{i64 2157280758}
!332 = !{i64 2157281324}
!333 = !{i64 2157281898}
!334 = !{i64 2157285808}
!335 = !{i64 2157285650}
!336 = !{i64 2157257067}
!337 = !{i64 2157258101}
!338 = !{i64 2157268825}
!339 = !{i64 2157269436}
!340 = !{i64 2157240837}
!341 = !{i64 2157259059}
!342 = !{i64 2157259397}
!343 = !{i64 2157260235}
!344 = !{i64 2157260783}
!345 = !{i64 2157252253}
!346 = !{i64 2148787908}
!347 = !{i64 1034836, i64 1034853, i64 1034877, i64 1034903, i64 1034921}
!348 = !{i64 2148788278}
!349 = !{i64 2157250656}
!350 = !{i64 2157251255}
!351 = !{i64 2157248531}
!352 = !{i64 2157249581}
!353 = !{i64 2157262303}
