; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/tehuti/tehuti.c_pt.bc'
source_filename = "../drivers/net/ethernet/tehuti/tehuti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.152 = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.129, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.129 = type { ptr }
%struct.pci_nic = type { i32, ptr, i32, [2 x ptr] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.134, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.134 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.bdx_priv = type { ptr, ptr, %struct.napi_struct, %struct.rxd_fifo, %struct.rxf_fifo, ptr, i32, %struct.txd_fifo, %struct.txf_fifo, %struct.txdb, i32, i32, i32, %struct.spinlock, i8, i32, i32, %struct.bdx_stats, ptr, ptr, i8, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rxd_fifo = type { %struct.fifo }
%struct.fifo = type { i32, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.rxf_fifo = type { %struct.fifo }
%struct.txd_fifo = type { %struct.fifo }
%struct.txf_fifo = type { %struct.fifo }
%struct.txdb = type { ptr, ptr, ptr, ptr, i32 }
%struct.bdx_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tx_map = type { %union.bdx_dma_addr, i32 }
%union.bdx_dma_addr = type { i32 }
%struct.rxd_desc = type { i32, i16, i16, i32, i32 }
%struct.rxdb = type { ptr, ptr, i32, i32 }
%struct.rx_map = type { i64, ptr }
%struct.rxf_desc = type { i32, i32, i32, i32, i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.txd_desc = type { i32, i16, i16, i32, i32, [0 x %struct.pbl] }
%struct.pbl = type { i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.126, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.126 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.150, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.150 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_tehuti__480_2443_bdx_module_init6 = internal global ptr @bdx_module_init, section ".initcall6.init", align 4
@bdx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @bdx_pci_tbl, ptr @bdx_probe, ptr @bdx_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_bdx_module_exit = internal global ptr @bdx_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file481 = internal constant [47 x i8] c"tehuti.file=drivers/net/ethernet/tehuti/tehuti\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [19 x i8] c"tehuti.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author483 = internal constant [33 x i8] c"tehuti.author=Tehuti Networks(R)\00", section ".modinfo", align 1
@__UNIQUE_ID_description484 = internal constant [53 x i8] c"tehuti.description=Tehuti Networks(R) Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware485 = internal constant [31 x i8] c"tehuti.firmware=tehuti/bdx.bin\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tehuti\00", [25 x i8] zeroinitializer }, align 32
@txd_sizes = internal global { [18 x %struct.anon.152], [56 x i8] } zeroinitializer, align 32
@print_driver_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016tehuti: %s, %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"print_driver_id\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/tehuti/tehuti.c\00", [59 x i8] zeroinitializer }, align 32
@print_driver_id._entry_ptr = internal global ptr @print_driver_id._entry, section ".printk_index", align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tehuti Networks(R) Network Driver\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"7.29.3\00", [25 x i8] zeroinitializer }, align 32
@print_driver_id._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016tehuti: Options: hw_csum %s\0A\00", [33 x i8] zeroinitializer }, align 32
@print_driver_id._entry_ptr.8 = internal global ptr @print_driver_id._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bdx_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 8137, i32 12297, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 8137, i32 12304, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 8137, i32 12308, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bdx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013tehuti: No usable DMA configuration, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bdx_probe\00", [22 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr = internal global ptr @bdx_probe._entry, section ".printk_index", align 4
@bdx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013tehuti: no MMIO resource\0A\00", [36 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.14 = internal global ptr @bdx_probe._entry.12, section ".printk_index", align 4
@bdx_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 1924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013tehuti: MMIO resource (%x) too small\0A\00", [56 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.17 = internal global ptr @bdx_probe._entry.15, section ".printk_index", align 4
@bdx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 1931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013tehuti: ioremap failed\0A\00", [38 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.20 = internal global ptr @bdx_probe._entry.18, section ".printk_index", align 4
@bdx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.3, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013tehuti: invalid irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.23 = internal global ptr @bdx_probe._entry.21, section ".printk_index", align 4
@bdx_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bdx_open, ptr @bdx_close, ptr @bdx_tx_transmit, ptr null, ptr null, ptr null, ptr @bdx_setmulti, ptr @bdx_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @bdx_siocdevprivate, ptr null, ptr @bdx_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdx_vlan_rx_add_vid, ptr @bdx_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bdx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@bdx_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.3, i32 2032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tehuti: load MAC address failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.27 = internal global ptr @bdx_probe._entry.25, section ".printk_index", align 4
@bdx_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.3, i32 2039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013tehuti: register_netdev failed\0A\00", [62 x i8] zeroinitializer }, align 32
@bdx_probe._entry_ptr.30 = internal global ptr @bdx_probe._entry.28, section ".printk_index", align 4
@print_hw_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016tehuti: %s%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_hw_id\00", [20 x i8] zeroinitializer }, align 32
@print_hw_id._entry_ptr = internal global ptr @print_hw_id._entry, section ".printk_index", align 4
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tehuti 10 Giga TOE SmartNIC\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", 2-Port\00", [23 x i8] zeroinitializer }, align 32
@print_hw_id._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016tehuti: srom 0x%x fpga %d build %u lane# %d max_pl 0x%x mrrs 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@print_hw_id._entry_ptr.37 = internal global ptr @print_hw_id._entry.35, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bdx_hw_reset_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013tehuti: HW reset failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdx_hw_reset_direct\00", [44 x i8] zeroinitializer }, align 32
@bdx_hw_reset_direct._entry_ptr = internal global ptr @bdx_hw_reset_direct._entry, section ".printk_index", align 4
@bdx_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.40, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdx_hw_reset\00", [19 x i8] zeroinitializer }, align 32
@bdx_hw_reset._entry_ptr = internal global ptr @bdx_hw_reset._entry, section ".printk_index", align 4
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SW reset timeout. continuing anyway\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tx init failed\0A\00", [16 x i8] zeroinitializer }, align 32
@bdx_fifo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013tehuti: dma_alloc_coherent failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdx_fifo_init\00", [18 x i8] zeroinitializer }, align 32
@bdx_fifo_init._entry_ptr = internal global ptr @bdx_fifo_init._entry, section ".printk_index", align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Rx init failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tehuti/bdx.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware loading failed\0A\00", [39 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Link Up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI-E Link Fault\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI-E Time Out\0A\00", [16 x i8] zeroinitializer }, align 32
@print_fw_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016tehuti: fw 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"print_fw_id\00", [20 x i8] zeroinitializer }, align 32
@print_fw_id._entry_ptr = internal global ptr @print_fw_id._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bdx_siocdevprivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013tehuti: can't copy from user\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bdx_siocdevprivate\00", [45 x i8] zeroinitializer }, align 32
@bdx_siocdevprivate._entry_ptr = internal global ptr @bdx_siocdevprivate._entry, section ".printk_index", align 4
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__bdx_vlan_rx_vid._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 706, ptr null, ptr null }, align 1
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tehuti: %s:%-5d: vid=%d value=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__bdx_vlan_rx_vid\00", [46 x i8] zeroinitializer }, align 32
@__bdx_vlan_rx_vid._entry_ptr = internal global ptr @__bdx_vlan_rx_vid._entry, section ".printk_index", align 4
@__bdx_vlan_rx_vid._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 708, ptr null, ptr null }, align 1
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tehuti: invalid VID: %u (> 4096)\0A\00", [60 x i8] zeroinitializer }, align 32
@__bdx_vlan_rx_vid._entry_ptr.65 = internal global ptr @__bdx_vlan_rx_vid._entry.63, section ".printk_index", align 4
@__bdx_vlan_rx_vid._entry.66 = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 714, ptr null, ptr null }, align 1
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tehuti: %s:%-5d: reg=%x, val=%x, bit=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__bdx_vlan_rx_vid._entry_ptr.68 = internal global ptr @__bdx_vlan_rx_vid._entry.66, section ".printk_index", align 4
@__bdx_vlan_rx_vid._entry.69 = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 719, ptr null, ptr null }, align 1
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013tehuti: %s:%-5d: new val %x\0A\00", [33 x i8] zeroinitializer }, align 32
@__bdx_vlan_rx_vid._entry_ptr.71 = internal global ptr @__bdx_vlan_rx_vid._entry.69, section ".printk_index", align 4
@bdx_set_ethtool_ops.bdx_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @bdx_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @bdx_get_coalesce, ptr @bdx_set_coalesce, ptr @bdx_get_ringparam, ptr @bdx_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @bdx_get_strings, ptr null, ptr @bdx_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @bdx_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdx_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@bdx_stat_names = internal constant { [23 x [32 x i8]], [160 x i8] } { [23 x [32 x i8]] [[32 x i8] c"InUCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InMCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InBCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InPkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InDropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameTooLong\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"FrameSequenceErrors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InVLAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InDroppedDFE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InDroppedIntFull\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InFrameAlignErrors\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutUCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutMCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutBCast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutPkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutVLAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InUCastOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutUCastOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InBCastOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutBCastOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"InOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"OutOctects\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, Port %c\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"bdx_pci_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2419, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2440, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"txd_sizes\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1453, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2431, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2432, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"bdx_pci_tbl\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 65, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1905, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1918, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1924, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1931, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1937, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [15 x i8] c"bdx_netdev_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1852, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2028, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2032, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2039, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 106, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 108, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 471, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 495, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 519, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1552, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 163, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1009, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 330, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 351, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 326, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 208, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 214, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 230, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 233, i32 26 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 117, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 653, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 156, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 706, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 708, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 714, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 719, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [16 x i8] c"bdx_ethtool_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2366, i32 34 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2138, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant [15 x i8] c"bdx_stat_names\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 2066, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [40 x i8] c"../drivers/net/ethernet/tehuti/tehuti.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 122, i32 20 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author483, ptr @__UNIQUE_ID_description484, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_firmware485, ptr @__UNIQUE_ID_license482, ptr @__bdx_vlan_rx_vid._entry, ptr @__bdx_vlan_rx_vid._entry.63, ptr @__bdx_vlan_rx_vid._entry.66, ptr @__bdx_vlan_rx_vid._entry.69, ptr @__bdx_vlan_rx_vid._entry_ptr, ptr @__bdx_vlan_rx_vid._entry_ptr.65, ptr @__bdx_vlan_rx_vid._entry_ptr.68, ptr @__bdx_vlan_rx_vid._entry_ptr.71, ptr @__exitcall_bdx_module_exit, ptr @__initcall__kmod_tehuti__480_2443_bdx_module_init6, ptr @bdx_fifo_init._entry, ptr @bdx_fifo_init._entry_ptr, ptr @bdx_hw_reset._entry, ptr @bdx_hw_reset._entry_ptr, ptr @bdx_hw_reset_direct._entry, ptr @bdx_hw_reset_direct._entry_ptr, ptr @bdx_module_exit, ptr @bdx_probe._entry, ptr @bdx_probe._entry.12, ptr @bdx_probe._entry.15, ptr @bdx_probe._entry.18, ptr @bdx_probe._entry.21, ptr @bdx_probe._entry.25, ptr @bdx_probe._entry.28, ptr @bdx_probe._entry_ptr, ptr @bdx_probe._entry_ptr.14, ptr @bdx_probe._entry_ptr.17, ptr @bdx_probe._entry_ptr.20, ptr @bdx_probe._entry_ptr.23, ptr @bdx_probe._entry_ptr.27, ptr @bdx_probe._entry_ptr.30, ptr @bdx_siocdevprivate._entry, ptr @bdx_siocdevprivate._entry_ptr, ptr @print_driver_id._entry, ptr @print_driver_id._entry.6, ptr @print_driver_id._entry_ptr, ptr @print_driver_id._entry_ptr.8, ptr @print_fw_id._entry, ptr @print_fw_id._entry_ptr, ptr @print_hw_id._entry, ptr @print_hw_id._entry.35, ptr @print_hw_id._entry_ptr, ptr @print_hw_id._entry_ptr.37, ptr @bdx_pci_driver, ptr @.str, ptr @txd_sizes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @bdx_pci_tbl, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @bdx_netdev_ops, ptr @bdx_probe.__key, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @bdx_set_ethtool_ops.bdx_ethtool_ops, ptr @.str.72, ptr @bdx_stat_names, ptr @.str.73], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txd_sizes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_driver_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_driver_id._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_hw_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_hw_id._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_hw_reset_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_fifo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fw_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_siocdevprivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_set_ethtool_ops.bdx_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdx_stat_names to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @init_txd_sizes() #17
  tail call fastcc void @print_driver_id() #17
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @bdx_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bdx_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @bdx_pci_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @init_txd_sizes() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc3, %for.body.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.011, 3
  %add = add nuw nsw i32 %mul, 7
  %and = and i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %inc = add nuw nsw i32 %mul, 8
  %spec.select = select i1 %tobool.not, i32 %add, i32 %inc
  %0 = lshr i32 %spec.select, 1
  %conv = trunc i32 %0 to i16
  %arrayidx = getelementptr [18 x %struct.anon.152], ptr @txd_sizes, i32 0, i32 %i.011
  %qwords = getelementptr [18 x %struct.anon.152], ptr @txd_sizes, i32 0, i32 %i.011, i32 1
  %1 = ptrtoint ptr %qwords to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %qwords, align 2
  %lwords.0.tr = trunc i32 %spec.select to i16
  %conv1 = shl nuw nsw i16 %lwords.0.tr, 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv1, ptr %arrayidx, align 2
  %inc3 = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc3, 18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_driver_id() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #5 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %pci_link_status.i = alloca i16, align 2
  %pci_ctrl.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef 20) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_pci_crit_edge

if.end.err_pci_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pci

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  br label %err_dma

if.end12:                                         ; preds = %if.end4
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #14
  %call13 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_dma_crit_edge

if.end12.err_dma_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_dma

if.end16:                                         ; preds = %if.end12
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool17.not = icmp eq i32 %1, 0
  br i1 %tobool17.not, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #18
  br label %err_out_res

if.end24:                                         ; preds = %if.end16
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %3
  %cond = select i1 %cmp, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond)
  %cmp33 = icmp ult i32 %cond, 4096
  br i1 %cmp33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %cond) #18
  br label %err_out_res

if.end40:                                         ; preds = %if.end24
  %call41 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %cond) #14
  %regs = getelementptr inbounds %struct.pci_nic, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call41, ptr %regs, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #18
  br label %err_out_res

if.end50:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp51 = icmp ult i32 %6, 2
  br i1 %cmp51, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %6) #18
  br label %err_out_iomap

if.end59:                                         ; preds = %if.end50
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %driver_data.i.i, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12308, i16 %9)
  %cmp60 = icmp eq i16 %9, 12308
  %. = select i1 %cmp60, i32 2, i32 1
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %., ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_link_status.i) #14
  %11 = ptrtoint ptr %pci_link_status.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %pci_link_status.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_ctrl.i) #14
  %12 = ptrtoint ptr %pci_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %pci_ctrl.i, align 2
  %call1.i208 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 146, ptr noundef nonnull %pci_link_status.i) #14
  %call2.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 136, ptr noundef nonnull %pci_ctrl.i) #14
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i209 = icmp eq i32 %14, 1
  %cond.i = select i1 %cmp.i209, ptr @.str.9, ptr @.str.34
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond.i) #18
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 20512
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !167
  %18 = call i32 @llvm.bswap.i32(i32 %17) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !168
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %20, i32 20528
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !169
  %22 = and i32 %21, -15794176
  %23 = call i32 @llvm.bswap.i32(i32 %22) #14
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr21.i = getelementptr i8, ptr %25, i32 20544
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #14, !srcloc !167
  %27 = call i32 @llvm.bswap.i32(i32 %26) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !170
  %28 = ptrtoint ptr %pci_link_status.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pci_link_status.i, align 2
  %30 = lshr i16 %29, 4
  %31 = and i16 %30, 63
  %and25.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %pci_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pci_ctrl.i, align 2
  %conv26.i = zext i16 %33 to i32
  %34 = lshr i32 %conv26.i, 5
  %and28.i = and i32 %34, 7
  %35 = lshr i32 %conv26.i, 12
  %and31.i = and i32 %35, 7
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %18, i32 noundef %23, i32 noundef %27, i32 noundef %and25.i, i32 noundef %and28.i, i32 noundef %and31.i) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_ctrl.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_link_status.i) #14
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr.i210 = getelementptr i8, ptr %37, i32 20480
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !172
  call void @arm_heavy_mb() #14
  %39 = or i32 %38, 16777216
  %40 = call i32 @llvm.bswap.i32(i32 %39) #14
  %add.i = add i32 %40, 8
  %41 = call i32 @llvm.bswap.i32(i32 %add.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 %41) #14, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 10737400) #14
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !175
  call void @arm_heavy_mb() #14
  %44 = and i32 %43, -16777217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 %44) #14, !srcloc !173
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end59
  %i.02.i = phi i32 [ 0, %if.end59 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !176
  %46 = and i32 %45, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %46)
  %cmp23.i = icmp eq i32 %46, 196608
  br i1 %cmp23.i, label %if.then.i211, label %for.inc.i

if.then.i211:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr26.i = getelementptr i8, ptr %37, i32 16480
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !177
  br label %bdx_hw_reset_direct.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #14
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 70
  br i1 %exitcond.not.i, label %do.end32.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end32.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #18
  br label %bdx_hw_reset_direct.exit

bdx_hw_reset_direct.exit:                         ; preds = %do.end32.i, %if.then.i211
  %irq_type = getelementptr inbounds %struct.pci_nic, ptr %call, i32 0, i32 2
  %58 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %irq_type, align 4
  %59 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp68218 = icmp sgt i32 %60, 0
  br i1 %cmp68218, label %for.body.lr.ph, label %bdx_hw_reset_direct.exit.cleanup_crit_edge

bdx_hw_reset_direct.exit.cleanup_crit_edge:       ; preds = %bdx_hw_reset_direct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %bdx_hw_reset_direct.exit
  %61 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %62 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %64 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %65 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end122.for.body_crit_edge, %for.body.lr.ph
  %port.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end122.for.body_crit_edge ]
  %call70 = call ptr @alloc_etherdev_mqs(i32 noundef 664, i32 noundef 1, i32 noundef 1) #14
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %for.body.err_out_iomap_crit_edge, label %if.end73

for.body.err_out_iomap_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_iomap

if.end73:                                         ; preds = %for.body
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 16
  %66 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @bdx_netdev_ops, ptr %netdev_ops, align 8
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 107
  %67 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3000, ptr %tx_queue_len, align 16
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 44
  %68 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @bdx_set_ethtool_ops.bdx_ethtool_ops, ptr %ethtool_ops.i, align 16
  %conv74 = trunc i32 %port.0219 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 52
  %69 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv74, ptr %if_port, align 2
  %features = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 23
  %70 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 1099511694243, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 24
  %71 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 65667, ptr %hw_features, align 8
  %add.ptr.i212 = getelementptr i8, ptr %call70, i32 2304
  %arrayidx77 = getelementptr %struct.pci_nic, ptr %call, i32 0, i32 3, i32 %port.0219
  %72 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i212, ptr %arrayidx77, align 4
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %mul = shl i32 %port.0219, 15
  %add.ptr = getelementptr i8, ptr %74, i32 %mul
  %75 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr, ptr %add.ptr.i212, align 8
  %port80 = getelementptr i8, ptr %call70, i32 2748
  %76 = ptrtoint ptr %port80 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv74, ptr %port80, align 4
  %pdev81 = getelementptr i8, ptr %call70, i32 2944
  %77 = ptrtoint ptr %pdev81 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %pdev, ptr %pdev81, align 8
  %ndev82 = getelementptr i8, ptr %call70, i32 2308
  %78 = ptrtoint ptr %ndev82 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call70, ptr %ndev82, align 4
  %nic83 = getelementptr i8, ptr %call70, i32 2948
  %79 = ptrtoint ptr %nic83 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call, ptr %nic83, align 4
  %msg_enable = getelementptr i8, ptr %call70, i32 2752
  %80 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 7, ptr %msg_enable, align 8
  %napi = getelementptr i8, ptr %call70, i32 2312
  call void @netif_napi_add(ptr noundef nonnull %call70, ptr noundef %napi, ptr noundef nonnull @bdx_poll, i32 noundef 64) #14
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr85 = getelementptr i8, ptr %82, i32 20528
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !178
  %84 = and i32 %83, -15794176
  call void @__sanitizer_cov_trace_const_cmp4(i32 872480768, i32 %84)
  %cmp89 = icmp ne i32 %84, 872480768
  %spec.select = zext i1 %cmp89 to i32
  %85 = getelementptr i8, ptr %call70, i32 2756
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select, ptr %85, align 4
  %txd_size = getelementptr i8, ptr %call70, i32 2952
  %87 = ptrtoint ptr %txd_size to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %txd_size, align 8
  %txf_size = getelementptr i8, ptr %call70, i32 2953
  %88 = ptrtoint ptr %txf_size to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 2, ptr %txf_size, align 1
  %rxd_size = getelementptr i8, ptr %call70, i32 2954
  %89 = ptrtoint ptr %rxd_size to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %rxd_size, align 2
  %rxf_size = getelementptr i8, ptr %call70, i32 2955
  %90 = ptrtoint ptr %rxf_size to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 3, ptr %rxf_size, align 1
  %rdintcm = getelementptr i8, ptr %call70, i32 2956
  %91 = ptrtoint ptr %rdintcm to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 12877856, ptr %rdintcm, align 4
  %tdintcm = getelementptr i8, ptr %call70, i32 2960
  %92 = ptrtoint ptr %tdintcm to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 12615712, ptr %tdintcm, align 8
  %93 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %features, align 16
  %or = or i64 %94, 4096
  store i64 %or, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 30
  %95 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 31
  %96 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 16384, ptr %max_mtu, align 4
  %tx_lock = getelementptr i8, ptr %call70, i32 2704
  call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @bdx_probe.__key, i16 noundef signext 3) #14
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %97 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr.i213 = getelementptr i8, ptr %98, i32 4688
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !179
  %100 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr5.i = getelementptr i8, ptr %101, i32 4688
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !167
  %103 = call i32 @llvm.bswap.i32(i32 %102) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  %104 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr14.i214 = getelementptr i8, ptr %105, i32 4704
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i214) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !181
  %107 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr23.i = getelementptr i8, ptr %108, i32 4704
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #14, !srcloc !167
  %110 = call i32 @llvm.bswap.i32(i32 %109) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !182
  %111 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr32.i = getelementptr i8, ptr %112, i32 4720
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !183
  %114 = ptrtoint ptr %add.ptr.i212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i212, align 8
  %add.ptr41.i = getelementptr i8, ptr %115, i32 4720
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #14, !srcloc !167
  %117 = call i32 @llvm.bswap.i32(i32 %116) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !184
  %conv50.i = trunc i32 %117 to i8
  %118 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv50.i, ptr %61, align 1
  %119 = lshr i32 %117, 8
  %conv56.i = trunc i32 %119 to i8
  %120 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv56.i, ptr %addr.i, align 1
  %conv50.1.i = trunc i32 %110 to i8
  %121 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv50.1.i, ptr %63, align 1
  %122 = lshr i32 %110, 8
  %conv56.1.i = trunc i32 %122 to i8
  %123 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv56.1.i, ptr %62, align 1
  %conv50.2.i = trunc i32 %103 to i8
  %124 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv50.2.i, ptr %65, align 1
  %125 = lshr i32 %103, 8
  %conv56.2.i = trunc i32 %125 to i8
  %126 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv56.2.i, ptr %64, align 1
  %127 = ptrtoint ptr %ndev82 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ndev82, align 4
  call void @dev_addr_mod(ptr noundef %128, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  %parent = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 133, i32 1
  %129 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %dev, ptr %parent, align 8
  %call114 = call i32 @register_netdev(ptr noundef nonnull %call70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end122, label %do.end119

do.end119:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #18
  call void @free_netdev(ptr noundef nonnull %call70) #14
  br label %err_out_iomap

if.end122:                                        ; preds = %if.end73
  call void @netif_carrier_off(ptr noundef nonnull %call70) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call70, i32 0, i32 103
  %130 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %131, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %132 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp.i215 = icmp eq i8 %133, 0
  %cond.i216 = select i1 %cmp.i215, i32 65, i32 66
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call70, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.33, i32 noundef %cond.i216) #18
  %inc = add nuw nsw i32 %port.0219, 1
  %134 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %call, align 4
  %cmp68 = icmp slt i32 %inc, %135
  br i1 %cmp68, label %if.end122.for.body_crit_edge, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end122.for.body_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

err_out_iomap:                                    ; preds = %do.end119, %for.body.err_out_iomap_crit_edge, %if.then52
  %err.0 = phi i32 [ -5, %if.then52 ], [ %call114, %do.end119 ], [ -12, %for.body.err_out_iomap_crit_edge ]
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %137) #14
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_iomap, %if.then44, %if.then34, %if.then18
  %err.1 = phi i32 [ -5, %if.then34 ], [ %err.0, %err_out_iomap ], [ -5, %if.then44 ], [ -5, %if.then18 ]
  call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_dma

err_dma:                                          ; preds = %err_out_res, %if.end12.err_dma_crit_edge, %do.end10
  %err.2 = phi i32 [ %call.i, %do.end10 ], [ %call13, %if.end12.err_dma_crit_edge ], [ %err.1, %err_out_res ]
  call void @pci_disable_device(ptr noundef %pdev) #14
  br label %err_pci

err_pci:                                          ; preds = %err_dma, %if.end.err_pci_crit_edge
  %err.3 = phi i32 [ %call1, %if.end.err_pci_crit_edge ], [ %err.2, %err_dma ]
  call void @vfree(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %err_pci, %if.end122.cleanup_crit_edge, %bdx_hw_reset_direct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_pci ], [ -12, %entry.cleanup_crit_edge ], [ 0, %bdx_hw_reset_direct.exit.cleanup_crit_edge ], [ 0, %if.end122.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdx_remove(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %port.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pci_nic, ptr %1, i32 0, i32 3, i32 %port.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ndev1 = getelementptr inbounds %struct.bdx_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev1, align 4
  tail call void @unregister_netdev(ptr noundef %7) #14
  tail call void @free_netdev(ptr noundef %7) #14
  %inc = add nuw nsw i32 %port.011, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %regs = getelementptr inbounds %struct.pci_nic, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %11) #14
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  tail call void @vfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_poll(ptr noundef %napi, i32 noundef %budget) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  %txdb.i = getelementptr i8, ptr %napi, i32 360
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %reg_WPTR.i = getelementptr i8, ptr %napi, i32 350
  %2 = ptrtoint ptr %reg_WPTR.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg_WPTR.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !185
  %5 = and i32 %4, -260112384
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %wptr.i = getelementptr i8, ptr %napi, i32 340
  %7 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %wptr.i, align 4
  %rptr.i = getelementptr i8, ptr %napi, i32 336
  %8 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rptr.i, align 4
  %memsz.i = getelementptr i8, ptr %napi, i32 352
  %10 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %memsz.i, align 4
  %conv6.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6.i)
  %cmp.not.i = icmp ult i32 %9, %conv6.i
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %do.body9.i, !prof !186

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp21.not272.i = icmp eq i32 %6, %9
  br i1 %cmp21.not272.i, label %while.cond.preheader.i.do.body85.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.do.body85.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body85.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %size_mask.i = getelementptr i8, ptr %napi, i32 354
  %rptr31.i = getelementptr i8, ptr %napi, i32 368
  %pdev.i = getelementptr i8, ptr %napi, i32 632
  %wptr.i.i = getelementptr i8, ptr %napi, i32 372
  %end.i.i.i = getelementptr i8, ptr %napi, i32 364
  br label %while.body.i

do.body9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1704, 0\0A.popsection", ""() #14, !srcloc !187
  unreachable

while.body.i:                                     ; preds = %bdx_tx_db_inc_rptr.exit249.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi i32 [ %9, %while.body.lr.ph.i ], [ %53, %bdx_tx_db_inc_rptr.exit249.i.while.body.i_crit_edge ]
  %tx_level.0273.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %sub.i, %bdx_tx_db_inc_rptr.exit249.i.while.body.i_crit_edge ]
  %add.i = add i32 %12, 16
  %13 = ptrtoint ptr %size_mask.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size_mask.i, align 2
  %conv26.i = zext i16 %14 to i32
  %and29.i = and i32 %add.i, %conv26.i
  %15 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and29.i, ptr %rptr.i, align 4
  %16 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rptr31.i, align 4
  %len.i = getelementptr inbounds %struct.tx_map, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp32.i = icmp eq i32 %19, 0
  br i1 %cmp32.i, label %do.body41.i, label %while.body.i.do.body50.i_crit_edge, !prof !188

while.body.i.do.body50.i_crit_edge:               ; preds = %while.body.i
  br label %do.body50.i

do.body41.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1712, 0\0A.popsection", ""() #14, !srcloc !189
  unreachable

do.body50.i:                                      ; preds = %bdx_tx_db_inc_rptr.exit.i.do.body50.i_crit_edge, %while.body.i.do.body50.i_crit_edge
  %20 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rptr31.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp53.i = icmp eq i32 %23, 0
  br i1 %cmp53.i, label %do.body62.i, label %do.end70.i, !prof !188

do.body62.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1714, 0\0A.popsection", ""() #14, !srcloc !190
  unreachable

do.end70.i:                                       ; preds = %do.body50.i
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %len74.i = getelementptr inbounds %struct.tx_map, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %len74.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len74.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %23, i32 noundef %27, i32 noundef 1, i32 noundef 0) #14
  %28 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rptr31.i, align 4
  %30 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wptr.i.i, align 4
  %cmp.i.i = icmp eq ptr %29, %31
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end5.i.i, !prof !188

do.body2.i.i:                                     ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1387, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

do.end5.i.i:                                      ; preds = %do.end70.i
  %32 = ptrtoint ptr %txdb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %txdb.i, align 4
  %cmp24.i.i.i = icmp ult ptr %29, %33
  br i1 %cmp24.i.i.i, label %do.end5.i.i.do.body35.i.i.i_crit_edge, label %lor.rhs25.i.i.i, !prof !188

do.end5.i.i.do.body35.i.i.i_crit_edge:            ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i

lor.rhs25.i.i.i:                                  ; preds = %do.end5.i.i
  %34 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i.i, align 4
  %cmp26.not.i.i.i = icmp ult ptr %29, %35
  br i1 %cmp26.not.i.i.i, label %do.end40.i.i.i, label %lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge, !prof !186

lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge:        ; preds = %lor.rhs25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i

do.body35.i.i.i:                                  ; preds = %lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge, %do.end5.i.i.do.body35.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i.i:                                   ; preds = %lor.rhs25.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.tx_map, ptr %29, i32 1
  %cmp42.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %35
  br i1 %cmp42.i.i.i, label %if.then49.i.i.i, label %do.end40.i.i.i.bdx_tx_db_inc_rptr.exit.i_crit_edge, !prof !188

do.end40.i.i.i.bdx_tx_db_inc_rptr.exit.i_crit_edge: ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit.i

if.then49.i.i.i:                                  ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit.i

bdx_tx_db_inc_rptr.exit.i:                        ; preds = %if.then49.i.i.i, %do.end40.i.i.i.bdx_tx_db_inc_rptr.exit.i_crit_edge
  %storemerge.i.i = phi ptr [ %33, %if.then49.i.i.i ], [ %incdec.ptr.i.i.i, %do.end40.i.i.i.bdx_tx_db_inc_rptr.exit.i_crit_edge ]
  %36 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %storemerge.i.i, ptr %rptr31.i, align 4
  %len77.i = getelementptr inbounds %struct.tx_map, ptr %storemerge.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %len77.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len77.i, align 4
  %cmp78.i = icmp sgt i32 %38, 0
  br i1 %cmp78.i, label %bdx_tx_db_inc_rptr.exit.i.do.body50.i_crit_edge, label %do.end80.i

bdx_tx_db_inc_rptr.exit.i.do.body50.i_crit_edge:  ; preds = %bdx_tx_db_inc_rptr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body50.i

do.end80.i:                                       ; preds = %bdx_tx_db_inc_rptr.exit.i
  %sub.i = sub i32 %tx_level.0273.i, %38
  %39 = ptrtoint ptr %storemerge.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %storemerge.i.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %40, i32 noundef 0) #14
  %41 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rptr31.i, align 4
  %43 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wptr.i.i, align 4
  %cmp.i233.i = icmp eq ptr %42, %44
  br i1 %cmp.i233.i, label %do.body2.i234.i, label %do.body23.i.i239.i, !prof !188

do.body2.i234.i:                                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1387, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

do.body23.i.i239.i:                               ; preds = %do.end80.i
  %45 = ptrtoint ptr %txdb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %txdb.i, align 4
  %cmp24.i.i238.i = icmp ult ptr %42, %46
  br i1 %cmp24.i.i238.i, label %do.body23.i.i239.i.do.body35.i.i243.i_crit_edge, label %lor.rhs25.i.i242.i, !prof !188

do.body23.i.i239.i.do.body35.i.i243.i_crit_edge:  ; preds = %do.body23.i.i239.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i243.i

lor.rhs25.i.i242.i:                               ; preds = %do.body23.i.i239.i
  %47 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i.i, align 4
  %cmp26.not.i.i241.i = icmp ult ptr %42, %48
  br i1 %cmp26.not.i.i241.i, label %do.end40.i.i246.i, label %lor.rhs25.i.i242.i.do.body35.i.i243.i_crit_edge, !prof !186

lor.rhs25.i.i242.i.do.body35.i.i243.i_crit_edge:  ; preds = %lor.rhs25.i.i242.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i243.i

do.body35.i.i243.i:                               ; preds = %lor.rhs25.i.i242.i.do.body35.i.i243.i_crit_edge, %do.body23.i.i239.i.do.body35.i.i243.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i246.i:                                ; preds = %lor.rhs25.i.i242.i
  %incdec.ptr.i.i244.i = getelementptr %struct.tx_map, ptr %42, i32 1
  %cmp42.i.i245.i = icmp eq ptr %incdec.ptr.i.i244.i, %48
  br i1 %cmp42.i.i245.i, label %if.then49.i.i247.i, label %do.end40.i.i246.i.bdx_tx_db_inc_rptr.exit249.i_crit_edge, !prof !188

do.end40.i.i246.i.bdx_tx_db_inc_rptr.exit249.i_crit_edge: ; preds = %do.end40.i.i246.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit249.i

if.then49.i.i247.i:                               ; preds = %do.end40.i.i246.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit249.i

bdx_tx_db_inc_rptr.exit249.i:                     ; preds = %if.then49.i.i247.i, %do.end40.i.i246.i.bdx_tx_db_inc_rptr.exit249.i_crit_edge
  %storemerge.i248.i = phi ptr [ %46, %if.then49.i.i247.i ], [ %incdec.ptr.i.i244.i, %do.end40.i.i246.i.bdx_tx_db_inc_rptr.exit249.i_crit_edge ]
  %49 = ptrtoint ptr %rptr31.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %storemerge.i248.i, ptr %rptr31.i, align 4
  %50 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rptr.i, align 4
  %cmp21.not.i = icmp eq i32 %51, %53
  br i1 %cmp21.not.i, label %bdx_tx_db_inc_rptr.exit249.i.do.body85.i_crit_edge, label %bdx_tx_db_inc_rptr.exit249.i.while.body.i_crit_edge

bdx_tx_db_inc_rptr.exit249.i.while.body.i_crit_edge: ; preds = %bdx_tx_db_inc_rptr.exit249.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

bdx_tx_db_inc_rptr.exit249.i.do.body85.i_crit_edge: ; preds = %bdx_tx_db_inc_rptr.exit249.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body85.i

do.body85.i:                                      ; preds = %bdx_tx_db_inc_rptr.exit249.i.do.body85.i_crit_edge, %while.cond.preheader.i.do.body85.i_crit_edge
  %tx_level.0.lcssa.i = phi i32 [ 0, %while.cond.preheader.i.do.body85.i_crit_edge ], [ %sub.i, %bdx_tx_db_inc_rptr.exit249.i.do.body85.i_crit_edge ]
  %.lcssa257.i = phi i32 [ %6, %while.cond.preheader.i.do.body85.i_crit_edge ], [ %51, %bdx_tx_db_inc_rptr.exit249.i.do.body85.i_crit_edge ]
  %and88.i = and i32 %.lcssa257.i, 32760
  %54 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %memsz.i, align 4
  %conv91.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and88.i, i32 %conv91.i)
  %cmp92.not.i = icmp ult i32 %and88.i, %conv91.i
  br i1 %cmp92.not.i, label %do.body110.i, label %do.body101.i, !prof !186

do.body101.i:                                     ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1727, 0\0A.popsection", ""() #14, !srcloc !193
  unreachable

do.body110.i:                                     ; preds = %do.body85.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !194
  tail call void @arm_heavy_mb() #14
  %56 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rptr.i, align 4
  %and115.i = and i32 %57, 32760
  %58 = tail call i32 @llvm.bswap.i32(i32 %and115.i) #14
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 8
  %reg_RPTR.i = getelementptr i8, ptr %napi, i32 348
  %61 = ptrtoint ptr %reg_RPTR.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %reg_RPTR.i, align 4
  %conv118.i = zext i16 %62 to i32
  %add.ptr119.i = getelementptr i8, ptr %60, i32 %conv118.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 %58) #14, !srcloc !173
  %tx_lock.i = getelementptr i8, ptr %napi, i32 392
  tail call void @_raw_spin_lock(ptr noundef %tx_lock.i) #14
  %tx_level120.i = getelementptr i8, ptr %napi, i32 380
  %63 = ptrtoint ptr %tx_level120.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_level120.i, align 4
  %add121.i = add i32 %64, %tx_level.0.lcssa.i
  store i32 %add121.i, ptr %tx_level120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add121.i)
  %cmp124.i = icmp slt i32 %add121.i, 1
  br i1 %cmp124.i, label %do.body110.i.do.body140.i_crit_edge, label %lor.rhs.i, !prof !188

do.body110.i.do.body140.i_crit_edge:              ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140.i

lor.rhs.i:                                        ; preds = %do.body110.i
  %memsz128.i = getelementptr i8, ptr %napi, i32 320
  %65 = ptrtoint ptr %memsz128.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %memsz128.i, align 8
  %conv129.i = zext i16 %66 to i32
  %sub130.i = add nsw i32 %conv129.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %add121.i, i32 %sub130.i)
  %cmp131.i = icmp sgt i32 %add121.i, %sub130.i
  br i1 %cmp131.i, label %lor.rhs.i.do.body140.i_crit_edge, label %do.end148.i, !prof !188

lor.rhs.i.do.body140.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140.i

do.body140.i:                                     ; preds = %lor.rhs.i.do.body140.i_crit_edge, %do.body110.i.do.body140.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1734, 0\0A.popsection", ""() #14, !srcloc !195
  unreachable

do.end148.i:                                      ; preds = %lor.rhs.i
  %tx_noupd.i = getelementptr i8, ptr %napi, i32 388
  %67 = ptrtoint ptr %tx_noupd.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_noupd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool149.not.i = icmp eq i32 %68, 0
  br i1 %tobool149.not.i, label %do.end148.i.if.end165.i_crit_edge, label %if.then150.i

do.end148.i.if.end165.i_crit_edge:                ; preds = %do.end148.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165.i

if.then150.i:                                     ; preds = %do.end148.i
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %tx_noupd.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tx_noupd.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !196
  tail call void @arm_heavy_mb() #14
  %wptr157.i = getelementptr i8, ptr %napi, i32 308
  %70 = ptrtoint ptr %wptr157.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wptr157.i, align 4
  %and158.i = and i32 %71, 32760
  %72 = tail call i32 @llvm.bswap.i32(i32 %and158.i) #14
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 8
  %reg_WPTR162.i = getelementptr i8, ptr %napi, i32 318
  %75 = ptrtoint ptr %reg_WPTR162.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %reg_WPTR162.i, align 2
  %conv163.i = zext i16 %76 to i32
  %add.ptr164.i = getelementptr i8, ptr %74, i32 %conv163.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164.i, i32 %72) #14, !srcloc !173
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then150.i, %do.end148.i.if.end165.i_crit_edge
  %ndev.i = getelementptr i8, ptr %napi, i32 -4
  %77 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end165.i.bdx_tx_cleanup.exit_crit_edge, label %land.lhs.true.i

if.end165.i.bdx_tx_cleanup.exit_crit_edge:        ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_cleanup.exit

land.lhs.true.i:                                  ; preds = %if.end165.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 6
  %83 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %state.i.i, align 4
  %85 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i, label %land.rhs.i, label %land.lhs.true.i.bdx_tx_cleanup.exit_crit_edge

land.lhs.true.i.bdx_tx_cleanup.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_cleanup.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %86 = ptrtoint ptr %tx_level120.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_level120.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %87)
  %cmp172.i = icmp sgt i32 %87, 255
  br i1 %cmp172.i, label %do.end183.i, label %land.rhs.i.bdx_tx_cleanup.exit_crit_edge, !prof !188

land.rhs.i.bdx_tx_cleanup.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_cleanup.exit

do.end183.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %80) #14
  br label %bdx_tx_cleanup.exit

bdx_tx_cleanup.exit:                              ; preds = %do.end183.i, %land.rhs.i.bdx_tx_cleanup.exit_crit_edge, %land.lhs.true.i.bdx_tx_cleanup.exit_crit_edge, %if.end165.i.bdx_tx_cleanup.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock.i) #14
  %88 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ndev.i, align 4
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr, align 8
  %reg_WPTR.i23 = getelementptr i8, ptr %napi, i32 246
  %92 = ptrtoint ptr %reg_WPTR.i23 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %reg_WPTR.i23, align 2
  %conv.i24 = zext i16 %93 to i32
  %add.ptr.i25 = getelementptr i8, ptr %91, i32 %conv.i24
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !197
  %95 = and i32 %94, -125894656
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #14
  %wptr.i26 = getelementptr i8, ptr %napi, i32 236
  %97 = ptrtoint ptr %wptr.i26 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %wptr.i26, align 4
  %rptr.i27 = getelementptr i8, ptr %napi, i32 232
  %98 = ptrtoint ptr %rptr.i27 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rptr.i27, align 4
  %sub.i28 = sub i32 %96, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i28)
  %cmp.i = icmp slt i32 %sub.i28, 0
  br i1 %cmp.i, label %if.then.i, label %bdx_tx_cleanup.exit.if.end.i_crit_edge

bdx_tx_cleanup.exit.if.end.i_crit_edge:           ; preds = %bdx_tx_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %bdx_tx_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #16
  %memsz.i29 = getelementptr i8, ptr %napi, i32 248
  %100 = ptrtoint ptr %memsz.i29 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %memsz.i29, align 4
  %conv9.i = zext i16 %101 to i32
  %add.i30 = add nsw i32 %sub.i28, %conv9.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bdx_tx_cleanup.exit.if.end.i_crit_edge
  %size.0.i = phi i32 [ %add.i30, %if.then.i ], [ %sub.i28, %bdx_tx_cleanup.exit.if.end.i_crit_edge ]
  %va.i = getelementptr i8, ptr %napi, i32 228
  %memsz45.i = getelementptr i8, ptr %napi, i32 248
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 36, i32 4
  %rxdb.i = getelementptr i8, ptr %napi, i32 288
  %pdev.i31 = getelementptr i8, ptr %napi, i32 632
  %pktsz.i = getelementptr i8, ptr %napi, i32 284
  %va.i.i = getelementptr i8, ptr %napi, i32 260
  %wptr.i.i32 = getelementptr i8, ptr %napi, i32 268
  %memsz.i.i = getelementptr i8, ptr %napi, i32 280
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 36, i32 2
  %smax.i = tail call i32 @llvm.smax.i32(i32 %budget, i32 1) #14
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %NETIF_RX_MUX.exit.i.while.cond.outer.i_crit_edge, %if.end.i
  %size.1.ph.i = phi i32 [ %sub34.i, %NETIF_RX_MUX.exit.i.while.cond.outer.i_crit_edge ], [ %size.0.i, %if.end.i ]
  %done.0.ph.i = phi i32 [ %inc127.i, %NETIF_RX_MUX.exit.i.while.cond.outer.i_crit_edge ], [ 0, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.ph.i)
  %cmp10235.i = icmp sgt i32 %size.1.ph.i, 0
  br i1 %cmp10235.i, label %while.cond.outer.i.while.body.i33_crit_edge, label %while.cond.outer.i.bdx_rx_receive.exit_crit_edge

while.cond.outer.i.bdx_rx_receive.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_receive.exit

while.cond.outer.i.while.body.i33_crit_edge:      ; preds = %while.cond.outer.i
  br label %while.body.i33

while.body.i33:                                   ; preds = %bdx_recycle_skb.exit.while.body.i33_crit_edge, %while.cond.outer.i.while.body.i33_crit_edge
  %size.1236.i = phi i32 [ %sub34.i, %bdx_recycle_skb.exit.while.body.i33_crit_edge ], [ %size.1.ph.i, %while.cond.outer.i.while.body.i33_crit_edge ]
  %102 = ptrtoint ptr %va.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %va.i, align 4
  %104 = ptrtoint ptr %rptr.i27 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rptr.i27, align 4
  %add.ptr15.i = getelementptr i8, ptr %103, i32 %105
  %106 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr15.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #14
  %len17.i = getelementptr inbounds %struct.rxd_desc, ptr %add.ptr15.i, i32 0, i32 1
  %109 = ptrtoint ptr %len17.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %len17.i, align 4
  %rxd_vlan18.i = getelementptr inbounds %struct.rxd_desc, ptr %add.ptr15.i, i32 0, i32 2
  %111 = ptrtoint ptr %rxd_vlan18.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %rxd_vlan18.i, align 2
  %and19.i = shl i32 %108, 3
  %shl.i = and i32 %and19.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp21.i = icmp eq i32 %shl.i, 0
  br i1 %cmp21.i, label %do.body25.i, label %do.end33.i, !prof !188

do.body25.i:                                      ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1226, 0\0A.popsection", ""() #14, !srcloc !198
  unreachable

do.end33.i:                                       ; preds = %while.body.i33
  %sub34.i = sub nsw i32 %size.1236.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34.i)
  %cmp35.i = icmp slt i32 %sub34.i, 0
  br i1 %cmp35.i, label %do.end33.i.bdx_rx_receive.exit_crit_edge, label %if.end38.i

do.end33.i.bdx_rx_receive.exit_crit_edge:         ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_receive.exit

if.end38.i:                                       ; preds = %do.end33.i
  %add41.i = add i32 %shl.i, %105
  %113 = ptrtoint ptr %rptr.i27 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add41.i, ptr %rptr.i27, align 4
  %114 = ptrtoint ptr %memsz45.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %memsz45.i, align 4
  %conv46.i = zext i16 %115 to i32
  %sub47.i = sub i32 %add41.i, %conv46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub47.i)
  %cmp48.i = icmp sgt i32 %sub47.i, -1
  br i1 %cmp48.i, label %if.then56.i, label %if.end38.i.if.end74.i_crit_edge, !prof !188

if.end38.i.if.end74.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

if.then56.i:                                      ; preds = %if.end38.i
  %116 = ptrtoint ptr %rptr.i27 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub47.i, ptr %rptr.i27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %conv46.i)
  %cmp59.not.i = icmp eq i32 %add41.i, %conv46.i
  br i1 %cmp59.not.i, label %if.then56.i.if.end74.i_crit_edge, label %do.end64.i

if.then56.i.if.end74.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i

do.end64.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr70.i = getelementptr i8, ptr %103, i32 %conv46.i
  %117 = call ptr @memcpy(ptr %add.ptr70.i, ptr %103, i32 %sub47.i)
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end64.i, %if.then56.i.if.end74.i_crit_edge, %if.end38.i.if.end74.i_crit_edge
  %118 = and i32 %108, 132120576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool77.not.i = icmp eq i32 %118, 0
  br i1 %tobool77.not.i, label %if.end88.i, label %do.end87.i, !prof !186

do.end87.i:                                       ; preds = %if.end74.i
  %119 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %120, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %121 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rxdb.i, align 8
  %va_lo.i41 = getelementptr inbounds %struct.rxd_desc, ptr %add.ptr15.i, i32 0, i32 3
  %123 = ptrtoint ptr %va_lo.i41 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %va_lo.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp.i.i42 = icmp slt i32 %124, 0
  br i1 %cmp.i.i42, label %do.end87.i.do.body3.i.i46_crit_edge, label %lor.rhs.i.i45, !prof !188

do.end87.i.do.body3.i.i46_crit_edge:              ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i46

lor.rhs.i.i45:                                    ; preds = %do.end87.i
  %nelem.i.i43 = getelementptr inbounds %struct.rxdb, ptr %122, i32 0, i32 2
  %125 = ptrtoint ptr %nelem.i.i43 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nelem.i.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %124)
  %cmp1.not.i.i44 = icmp sgt i32 %126, %124
  br i1 %cmp1.not.i.i44, label %bdx_rxdb_addr_elem.exit.i59, label %lor.rhs.i.i45.do.body3.i.i46_crit_edge, !prof !186

lor.rhs.i.i45.do.body3.i.i46_crit_edge:           ; preds = %lor.rhs.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i46

do.body3.i.i46:                                   ; preds = %lor.rhs.i.i45.do.body3.i.i46_crit_edge, %do.end87.i.do.body3.i.i46_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

bdx_rxdb_addr_elem.exit.i59:                      ; preds = %lor.rhs.i.i45
  %elems.i.i47 = getelementptr inbounds %struct.rxdb, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %elems.i.i47 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %elems.i.i47, align 4
  %add.ptr.i.i48 = getelementptr %struct.rx_map, ptr %128, i32 %124
  %129 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %va.i.i, align 4
  %131 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %wptr.i.i32, align 4
  %add.ptr.i51 = getelementptr i8, ptr %130, i32 %132
  %133 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 50331904, ptr %add.ptr.i51, align 4
  %134 = ptrtoint ptr %va_lo.i41 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %va_lo.i41, align 4
  %va_lo12.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i51, i32 0, i32 1
  %136 = ptrtoint ptr %va_lo12.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %va_lo12.i, align 4
  %137 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %add.ptr.i.i48, align 8
  %conv.i52 = trunc i64 %138 to i32
  %139 = tail call i32 @llvm.bswap.i32(i32 %conv.i52) #14
  %pa_lo.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i51, i32 0, i32 3
  %140 = ptrtoint ptr %pa_lo.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %pa_lo.i, align 4
  %pa_hi.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i51, i32 0, i32 4
  %141 = ptrtoint ptr %pa_hi.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %pa_hi.i, align 4
  %142 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %pktsz.i, align 4
  %conv14.i = zext i16 %143 to i32
  %144 = tail call i32 @llvm.bswap.i32(i32 %conv14.i) #14
  %len.i54 = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i51, i32 0, i32 5
  %145 = ptrtoint ptr %len.i54 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %len.i54, align 4
  %146 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %wptr.i.i32, align 4
  %add.i55 = add i32 %147, 24
  store i32 %add.i55, ptr %wptr.i.i32, align 4
  %148 = ptrtoint ptr %memsz.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %memsz.i.i, align 4
  %conv20.i = zext i16 %149 to i32
  %sub.i57 = sub i32 %add.i55, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i57)
  %cmp.i58 = icmp sgt i32 %sub.i57, -1
  br i1 %cmp.i58, label %if.then.i60, label %bdx_rxdb_addr_elem.exit.i59.bdx_recycle_skb.exit_crit_edge, !prof !188

bdx_rxdb_addr_elem.exit.i59.bdx_recycle_skb.exit_crit_edge: ; preds = %bdx_rxdb_addr_elem.exit.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_recycle_skb.exit

if.then.i60:                                      ; preds = %bdx_rxdb_addr_elem.exit.i59
  %150 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub.i57, ptr %wptr.i.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i55, i32 %conv20.i)
  %cmp25.not.i = icmp eq i32 %add.i55, %conv20.i
  br i1 %cmp25.not.i, label %if.then.i60.bdx_recycle_skb.exit_crit_edge, label %if.then27.i

if.then.i60.bdx_recycle_skb.exit_crit_edge:       ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_recycle_skb.exit

if.then27.i:                                      ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %va.i.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %152, i32 %conv20.i
  %153 = call ptr @memcpy(ptr %152, ptr %add.ptr35.i, i32 %sub.i57)
  br label %bdx_recycle_skb.exit

bdx_recycle_skb.exit:                             ; preds = %if.then27.i, %if.then.i60.bdx_recycle_skb.exit_crit_edge, %bdx_rxdb_addr_elem.exit.i59.bdx_recycle_skb.exit_crit_edge
  %cmp10.i = icmp sgt i32 %sub34.i, 0
  br i1 %cmp10.i, label %bdx_recycle_skb.exit.while.body.i33_crit_edge, label %bdx_recycle_skb.exit.bdx_rx_receive.exit_crit_edge

bdx_recycle_skb.exit.bdx_rx_receive.exit_crit_edge: ; preds = %bdx_recycle_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_receive.exit

bdx_recycle_skb.exit.while.body.i33_crit_edge:    ; preds = %bdx_recycle_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i33

if.end88.i:                                       ; preds = %if.end74.i
  %154 = tail call i16 @llvm.bswap.i16(i16 %110) #14
  %155 = tail call i16 @llvm.bswap.i16(i16 %112) #14
  %156 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rxdb.i, align 8
  %va_lo.i = getelementptr inbounds %struct.rxd_desc, ptr %add.ptr15.i, i32 0, i32 3
  %158 = ptrtoint ptr %va_lo.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %va_lo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i.i34 = icmp slt i32 %159, 0
  br i1 %cmp.i.i34, label %if.end88.i.do.body3.i.i_crit_edge, label %lor.rhs.i.i, !prof !188

if.end88.i.do.body3.i.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i

lor.rhs.i.i:                                      ; preds = %if.end88.i
  %nelem.i.i = getelementptr inbounds %struct.rxdb, ptr %157, i32 0, i32 2
  %160 = ptrtoint ptr %nelem.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %nelem.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %159)
  %cmp1.not.i.i = icmp sgt i32 %161, %159
  br i1 %cmp1.not.i.i, label %bdx_rxdb_addr_elem.exit.i, label %lor.rhs.i.i.do.body3.i.i_crit_edge, !prof !186

lor.rhs.i.i.do.body3.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.rhs.i.i.do.body3.i.i_crit_edge, %if.end88.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

bdx_rxdb_addr_elem.exit.i:                        ; preds = %lor.rhs.i.i
  %elems.i.i = getelementptr inbounds %struct.rxdb, ptr %157, i32 0, i32 1
  %162 = ptrtoint ptr %elems.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %elems.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rx_map, ptr %163, i32 %159
  %skb90.i = getelementptr %struct.rx_map, ptr %163, i32 %159, i32 1
  %164 = ptrtoint ptr %skb90.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %skb90.i, align 8
  %conv91.i35 = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %154)
  %cmp92.i = icmp ult i16 %154, 257
  br i1 %cmp92.i, label %land.lhs.true.i36, label %bdx_rxdb_addr_elem.exit.i.if.else.i_crit_edge

bdx_rxdb_addr_elem.exit.i.if.else.i_crit_edge:    ; preds = %bdx_rxdb_addr_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i36:                                ; preds = %bdx_rxdb_addr_elem.exit.i
  %166 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ndev.i, align 4
  %add96.i = add nuw nsw i32 %conv91.i35, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %167, i32 noundef %add96.i, i32 noundef 2592) #14
  %tobool98.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool98.not.i, label %land.lhs.true.i36.if.else.i_crit_edge, label %if.then99.i

land.lhs.true.i36.if.else.i_crit_edge:            ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then99.i:                                      ; preds = %land.lhs.true.i36
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %168 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %169, i32 2
  store ptr %add.ptr.i216.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %170 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %171, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %172 = ptrtoint ptr %pdev.i31 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev.i31, align 8
  %dev.i37 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  %174 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %add.ptr.i.i, align 8
  %conv100.i = trunc i64 %175 to i32
  %176 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %pktsz.i, align 4
  %conv102.i = zext i16 %177 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i37, i32 noundef %conv100.i, i32 noundef %conv102.i, i32 noundef 2) #14
  %178 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %data.i.i, align 4
  %data103.i = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 19
  %180 = ptrtoint ptr %data103.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %data103.i, align 4
  %182 = call ptr @memcpy(ptr %179, ptr %181, i32 %conv91.i35)
  %183 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rxdb.i, align 8
  %185 = ptrtoint ptr %va_lo.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %va_lo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i.i = icmp slt i32 %186, 0
  br i1 %cmp.i.i.i, label %if.then99.i.do.body3.i.i.i_crit_edge, label %lor.rhs.i.i.i, !prof !188

if.then99.i.do.body3.i.i.i_crit_edge:             ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i.i

lor.rhs.i.i.i:                                    ; preds = %if.then99.i
  %nelem.i.i.i = getelementptr inbounds %struct.rxdb, ptr %184, i32 0, i32 2
  %187 = ptrtoint ptr %nelem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nelem.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %186)
  %cmp1.not.i.i.i = icmp sgt i32 %188, %186
  br i1 %cmp1.not.i.i.i, label %bdx_rxdb_addr_elem.exit.i.i, label %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, !prof !186

lor.rhs.i.i.i.do.body3.i.i.i_crit_edge:           ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %lor.rhs.i.i.i.do.body3.i.i.i_crit_edge, %if.then99.i.do.body3.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

bdx_rxdb_addr_elem.exit.i.i:                      ; preds = %lor.rhs.i.i.i
  %elems.i.i.i = getelementptr inbounds %struct.rxdb, ptr %184, i32 0, i32 1
  %189 = ptrtoint ptr %elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %elems.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.rx_map, ptr %190, i32 %186
  %191 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %va.i.i, align 4
  %193 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %wptr.i.i32, align 4
  %add.ptr.i217.i = getelementptr i8, ptr %192, i32 %194
  %195 = ptrtoint ptr %add.ptr.i217.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 50331904, ptr %add.ptr.i217.i, align 4
  %196 = ptrtoint ptr %va_lo.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %va_lo.i, align 4
  %va_lo12.i.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i217.i, i32 0, i32 1
  %198 = ptrtoint ptr %va_lo12.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %va_lo12.i.i, align 4
  %199 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %add.ptr.i.i.i, align 8
  %conv.i.i = trunc i64 %200 to i32
  %201 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #14
  %pa_lo.i.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i217.i, i32 0, i32 3
  %202 = ptrtoint ptr %pa_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %pa_lo.i.i, align 4
  %pa_hi.i.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i217.i, i32 0, i32 4
  %203 = ptrtoint ptr %pa_hi.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %pa_hi.i.i, align 4
  %204 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %pktsz.i, align 4
  %conv14.i.i = zext i16 %205 to i32
  %206 = tail call i32 @llvm.bswap.i32(i32 %conv14.i.i) #14
  %len.i.i = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr.i217.i, i32 0, i32 5
  %207 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %len.i.i, align 4
  %208 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %wptr.i.i32, align 4
  %add.i.i = add i32 %209, 24
  store i32 %add.i.i, ptr %wptr.i.i32, align 4
  %210 = ptrtoint ptr %memsz.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %memsz.i.i, align 4
  %conv20.i.i = zext i16 %211 to i32
  %sub.i.i = sub i32 %add.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp.i218.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i218.i, label %if.then.i.i, label %bdx_rxdb_addr_elem.exit.i.i.if.end113.i_crit_edge, !prof !188

bdx_rxdb_addr_elem.exit.i.i.if.end113.i_crit_edge: ; preds = %bdx_rxdb_addr_elem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113.i

if.then.i.i:                                      ; preds = %bdx_rxdb_addr_elem.exit.i.i
  %212 = ptrtoint ptr %wptr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %sub.i.i, ptr %wptr.i.i32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv20.i.i)
  %cmp25.not.i.i = icmp eq i32 %add.i.i, %conv20.i.i
  br i1 %cmp25.not.i.i, label %if.then.i.i.if.end113.i_crit_edge, label %if.then27.i.i

if.then.i.i.if.end113.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113.i

if.then27.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %213 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %va.i.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %214, i32 %conv20.i.i
  %215 = call ptr @memcpy(ptr %214, ptr %add.ptr35.i.i, i32 %sub.i.i)
  br label %if.end113.i

if.else.i:                                        ; preds = %land.lhs.true.i36.if.else.i_crit_edge, %bdx_rxdb_addr_elem.exit.i.if.else.i_crit_edge
  %216 = ptrtoint ptr %pdev.i31 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pdev.i31, align 8
  %dev106.i = getelementptr inbounds %struct.pci_dev, ptr %217, i32 0, i32 44
  %218 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %add.ptr.i.i, align 8
  %conv108.i = trunc i64 %219 to i32
  %220 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %pktsz.i, align 4
  %conv111.i = zext i16 %221 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev106.i, i32 noundef %conv108.i, i32 noundef %conv111.i, i32 noundef 2, i32 noundef 0) #14
  %222 = ptrtoint ptr %va_lo.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %va_lo.i, align 4
  %224 = ptrtoint ptr %nelem.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nelem.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %223)
  %cmp.not.i.i = icmp sle i32 %225, %223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp1.i.i = icmp slt i32 %223, 0
  %spec.select.i.i = or i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %do.body3.i220.i, label %bdx_rxdb_free_elem.exit.i, !prof !188

do.body3.i220.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 962, 0\0A.popsection", ""() #14, !srcloc !200
  unreachable

bdx_rxdb_free_elem.exit.i:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %226 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %157, align 4
  %top.i.i = getelementptr inbounds %struct.rxdb, ptr %157, i32 0, i32 3
  %228 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %top.i.i, align 4
  %inc.i.i = add i32 %229, 1
  store i32 %inc.i.i, ptr %top.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %227, i32 %229
  %230 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %223, ptr %arrayidx.i.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %bdx_rxdb_free_elem.exit.i, %if.then27.i.i, %if.then.i.i.if.end113.i_crit_edge, %bdx_rxdb_addr_elem.exit.i.i.if.end113.i_crit_edge
  %skb.0.i = phi ptr [ %165, %bdx_rxdb_free_elem.exit.i ], [ %call.i.i, %bdx_rxdb_addr_elem.exit.i.i.if.end113.i_crit_edge ], [ %call.i.i, %if.then.i.i.if.end113.i_crit_edge ], [ %call.i.i, %if.then27.i.i ]
  %231 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rx_bytes.i, align 8
  %add116.i = add i32 %232, %conv91.i35
  store i32 %add116.i, ptr %rx_bytes.i, align 8
  %call118.i = tail call ptr @skb_put(ptr noundef %skb.0.i, i32 noundef %conv91.i35) #14
  %call119.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %89) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %233 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %call119.i, ptr %protocol.i, align 8
  %234 = and i32 %108, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp122.i = icmp eq i32 %234, 0
  br i1 %cmp122.i, label %if.end113.i.if.end126.i_crit_edge, label %if.else125.i

if.end113.i.if.end126.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126.i

if.else125.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #16
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %235 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.else125.i, %if.end113.i.if.end126.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %tobool.not.i.i38 = icmp sgt i32 %108, -1
  br i1 %tobool.not.i.i38, label %if.end126.i.NETIF_RX_MUX.exit.i_crit_edge, label %do.end4.i.i

if.end126.i.NETIF_RX_MUX.exit.i_crit_edge:        ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %NETIF_RX_MUX.exit.i

do.end4.i.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 9
  %236 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 10
  %237 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %155, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 3
  %238 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %bf.load.i.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, -2147483648
  store i32 %bf.set.i.i.i, ptr %vlan_present.i.i.i, align 2
  br label %NETIF_RX_MUX.exit.i

NETIF_RX_MUX.exit.i:                              ; preds = %do.end4.i.i, %if.end126.i.NETIF_RX_MUX.exit.i_crit_edge
  %call.i221.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0.i) #14
  %inc127.i = add nuw nsw i32 %done.0.ph.i, 1
  %exitcond.not.i = icmp eq i32 %inc127.i, %smax.i
  br i1 %exitcond.not.i, label %NETIF_RX_MUX.exit.i.bdx_rx_receive.exit_crit_edge, label %NETIF_RX_MUX.exit.i.while.cond.outer.i_crit_edge

NETIF_RX_MUX.exit.i.while.cond.outer.i_crit_edge: ; preds = %NETIF_RX_MUX.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer.i

NETIF_RX_MUX.exit.i.bdx_rx_receive.exit_crit_edge: ; preds = %NETIF_RX_MUX.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_receive.exit

bdx_rx_receive.exit:                              ; preds = %NETIF_RX_MUX.exit.i.bdx_rx_receive.exit_crit_edge, %bdx_recycle_skb.exit.bdx_rx_receive.exit_crit_edge, %do.end33.i.bdx_rx_receive.exit_crit_edge, %while.cond.outer.i.bdx_rx_receive.exit_crit_edge
  %done.1.i = phi i32 [ %done.0.ph.i, %bdx_recycle_skb.exit.bdx_rx_receive.exit_crit_edge ], [ %done.0.ph.i, %do.end33.i.bdx_rx_receive.exit_crit_edge ], [ %smax.i, %NETIF_RX_MUX.exit.i.bdx_rx_receive.exit_crit_edge ], [ %done.0.ph.i, %while.cond.outer.i.bdx_rx_receive.exit_crit_edge ]
  %stats132.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 36
  %239 = ptrtoint ptr %stats132.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %stats132.i, align 8
  %add133.i = add i32 %240, %done.1.i
  store i32 %add133.i, ptr %stats132.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %241 = ptrtoint ptr %rptr.i27 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %rptr.i27, align 4
  %and139.i = and i32 %242, 32760
  %243 = tail call i32 @llvm.bswap.i32(i32 %and139.i) #14
  %244 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %add.ptr, align 8
  %reg_RPTR.i39 = getelementptr i8, ptr %napi, i32 244
  %246 = ptrtoint ptr %reg_RPTR.i39 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %reg_RPTR.i39, align 4
  %conv142.i = zext i16 %247 to i32
  %add.ptr143.i = getelementptr i8, ptr %245, i32 %conv142.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i, i32 %243) #14, !srcloc !173
  %rxf_fifo0144.i = getelementptr i8, ptr %napi, i32 256
  tail call fastcc void @bdx_rx_alloc_skbs(ptr noundef %add.ptr, ptr noundef %rxf_fifo0144.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1.i, i32 %budget)
  %cmp = icmp slt i32 %done.1.i, %budget
  br i1 %cmp, label %bdx_rx_receive.exit.do.end4_crit_edge, label %lor.lhs.false

bdx_rx_receive.exit.do.end4_crit_edge:            ; preds = %bdx_rx_receive.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

lor.lhs.false:                                    ; preds = %bdx_rx_receive.exit
  %napi_stop = getelementptr i8, ptr %napi, i32 292
  %248 = ptrtoint ptr %napi_stop to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %napi_stop, align 4
  %inc = add i32 %249, 1
  store i32 %inc, ptr %napi_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %249)
  %cmp1 = icmp sgt i32 %249, 29
  br i1 %cmp1, label %lor.lhs.false.do.end4_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.do.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end4:                                          ; preds = %lor.lhs.false.do.end4_crit_edge, %bdx_rx_receive.exit.do.end4_crit_edge
  %napi_stop5 = getelementptr i8, ptr %napi, i32 292
  %250 = ptrtoint ptr %napi_stop5 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %napi_stop5, align 4
  %call6 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.1.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %251 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %add.ptr, align 8
  %add.ptr11 = getelementptr i8, ptr %252, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1133250568) #14, !srcloc !173
  br label %if.end

if.end:                                           ; preds = %do.end4, %lor.lhs.false.if.end_crit_edge
  ret i32 %done.1.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_open(ptr noundef %ndev) #5 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @bdx_reset(ptr noundef %add.ptr.i)
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ndev3 = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %ndev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev3, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %txd_fifo0.i = getelementptr i8, ptr %ndev, i32 2608
  %txd_size.i = getelementptr i8, ptr %ndev, i32 2952
  %6 = ptrtoint ptr %txd_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txd_size.i, align 8
  %conv.i = zext i8 %7 to i32
  %call.i = tail call fastcc i32 @bdx_fifo_init(ptr noundef %add.ptr.i, ptr noundef %txd_fifo0.i, i32 noundef %conv.i, i16 noundef zeroext 16448, i16 noundef zeroext 16384, i16 noundef zeroext 16576, i16 noundef zeroext 16512) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bdx_tx_init.exit_crit_edge

if.end.bdx_tx_init.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_init.exit

if.end.i:                                         ; preds = %if.end
  %txf_fifo0.i = getelementptr i8, ptr %ndev, i32 2640
  %txf_size.i = getelementptr i8, ptr %ndev, i32 2953
  %8 = ptrtoint ptr %txf_size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txf_size.i, align 1
  %conv2.i = zext i8 %9 to i32
  %call3.i = tail call fastcc i32 @bdx_fifo_init(ptr noundef %add.ptr.i, ptr noundef %txf_fifo0.i, i32 noundef %conv2.i, i16 noundef zeroext 16496, i16 noundef zeroext 16432, i16 noundef zeroext 16624, i16 noundef zeroext 16560) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.bdx_tx_init.exit_crit_edge

if.end.i.bdx_tx_init.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_init.exit

if.end6.i:                                        ; preds = %if.end.i
  %txdb.i = getelementptr i8, ptr %ndev, i32 2672
  %10 = ptrtoint ptr %txd_size.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %txd_size.i, align 8
  %12 = ptrtoint ptr %txf_size.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txf_size.i, align 1
  %14 = tail call i8 @llvm.umax.i8(i8 %11, i8 %13) #14
  %cond.i = zext i8 %14 to i32
  %mul.i.i = shl i32 8192, %cond.i
  %call.i.i = tail call noalias ptr @vmalloc(i32 noundef %mul.i.i) #19
  %15 = ptrtoint ptr %txdb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %txdb.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.bdx_tx_init.exit_crit_edge, label %lor.lhs.false

if.end6.i.bdx_tx_init.exit_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_init.exit

bdx_tx_init.exit:                                 ; preds = %if.end6.i.bdx_tx_init.exit_crit_edge, %if.end.i.bdx_tx_init.exit_crit_edge, %if.end.bdx_tx_init.exit_crit_edge
  %ndev.i = getelementptr i8, ptr %ndev, i32 2308
  %16 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.42) #18
  br label %err

lor.lhs.false:                                    ; preds = %if.end6.i
  %div17.i.i = lshr exact i32 %mul.i.i, 3
  %sub.i.i = add nsw i32 %div17.i.i, -1
  %size.i.i = getelementptr i8, ptr %ndev, i32 2688
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i.i, ptr %size.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.tx_map, ptr %call.i.i, i32 %sub.i.i
  %add.ptr4.i.i = getelementptr %struct.tx_map, ptr %add.ptr.i.i, i32 1
  %end.i.i = getelementptr i8, ptr %ndev, i32 2676
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i.i, ptr %end.i.i, align 4
  %rptr.i.i = getelementptr i8, ptr %ndev, i32 2680
  %20 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %rptr.i.i, align 4
  %wptr.i.i = getelementptr i8, ptr %ndev, i32 2684
  %21 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %wptr.i.i, align 4
  %memsz.i = getelementptr i8, ptr %ndev, i32 2632
  %22 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %memsz.i, align 8
  %conv20.i = zext i16 %23 to i32
  %sub.i = add nsw i32 %conv20.i, -16
  %tx_level.i = getelementptr i8, ptr %ndev, i32 2692
  %24 = ptrtoint ptr %tx_level.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %tx_level.i, align 4
  %sub22.i = add nsw i32 %conv20.i, -1040
  %tx_update_mark.i = getelementptr i8, ptr %ndev, i32 2696
  %25 = ptrtoint ptr %tx_update_mark.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub22.i, ptr %tx_update_mark.i, align 8
  %rxd_fifo0.i = getelementptr i8, ptr %ndev, i32 2536
  %rxd_size.i = getelementptr i8, ptr %ndev, i32 2954
  %26 = ptrtoint ptr %rxd_size.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxd_size.i, align 2
  %conv.i30 = zext i8 %27 to i32
  %call.i31 = tail call fastcc i32 @bdx_fifo_init(ptr noundef %add.ptr.i, ptr noundef %rxd_fifo0.i, i32 noundef %conv.i30, i16 noundef zeroext 16480, i16 noundef zeroext 16416, i16 noundef zeroext 16608, i16 noundef zeroext 16544) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.end.i36, label %lor.lhs.false.bdx_rx_init.exit_crit_edge

lor.lhs.false.bdx_rx_init.exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_init.exit

if.end.i36:                                       ; preds = %lor.lhs.false
  %rxf_fifo0.i = getelementptr i8, ptr %ndev, i32 2568
  %rxf_size.i = getelementptr i8, ptr %ndev, i32 2955
  %28 = ptrtoint ptr %rxf_size.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rxf_size.i, align 1
  %conv2.i33 = zext i8 %29 to i32
  %call3.i34 = tail call fastcc i32 @bdx_fifo_init(ptr noundef %add.ptr.i, ptr noundef %rxf_fifo0.i, i32 noundef %conv2.i33, i16 noundef zeroext 16464, i16 noundef zeroext 16400, i16 noundef zeroext 16592, i16 noundef zeroext 16528) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34)
  %tobool4.not.i35 = icmp eq i32 %call3.i34, 0
  br i1 %tobool4.not.i35, label %if.end6.i39, label %if.end.i36.bdx_rx_init.exit_crit_edge

if.end.i36.bdx_rx_init.exit_crit_edge:            ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_init.exit

if.end6.i39:                                      ; preds = %if.end.i36
  %memsz.i37 = getelementptr i8, ptr %ndev, i32 2592
  %30 = ptrtoint ptr %memsz.i37 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %memsz.i37, align 8
  %32 = udiv i16 %31, 24
  %div.i = zext i16 %32 to i32
  %reass.mul.i.i = mul nuw nsw i32 %div.i, 20
  %add2.i.i = add nuw nsw i32 %reass.mul.i.i, 16
  %call.i.i38 = tail call noalias ptr @vmalloc(i32 noundef %add2.i.i) #19
  %cmp.not.i.i = icmp eq ptr %call.i.i38, null
  br i1 %cmp.not.i.i, label %bdx_rxdb_create.exit.thread.i, label %if.then.i.i, !prof !188

bdx_rxdb_create.exit.thread.i:                    ; preds = %if.end6.i39
  call void @__sanitizer_cov_trace_pc() #16
  %rxdb30.i = getelementptr i8, ptr %ndev, i32 2600
  %33 = ptrtoint ptr %rxdb30.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rxdb30.i, align 8
  br label %bdx_rx_init.exit

if.then.i.i:                                      ; preds = %if.end6.i39
  %add.ptr.i.i40 = getelementptr %struct.rxdb, ptr %call.i.i38, i32 1
  %34 = ptrtoint ptr %call.i.i38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.i40, ptr %call.i.i38, align 4
  %add.ptr5.i.i = getelementptr i32, ptr %add.ptr.i.i40, i32 %div.i
  %elems.i.i = getelementptr inbounds %struct.rxdb, ptr %call.i.i38, i32 0, i32 1
  %35 = ptrtoint ptr %elems.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr5.i.i, ptr %elems.i.i, align 4
  %nelem6.i.i = getelementptr inbounds %struct.rxdb, ptr %call.i.i38, i32 0, i32 2
  %36 = ptrtoint ptr %nelem6.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %nelem6.i.i, align 4
  %top.i.i = getelementptr inbounds %struct.rxdb, ptr %call.i.i38, i32 0, i32 3
  %37 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div.i, ptr %top.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %31)
  %38 = icmp ult i16 %31, 24
  br i1 %38, label %if.then.i.i.lor.lhs.false7_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.lor.lhs.false7_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false7

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i_crit_edge ]
  %39 = xor i32 %i.028.i.i, -1
  %sub8.i.i = add nsw i32 %39, %div.i
  %40 = ptrtoint ptr %call.i.i38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i.i38, align 4
  %arrayidx.i.i = getelementptr i32, ptr %41, i32 %i.028.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub8.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.lor.lhs.false7_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.lor.lhs.false7_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false7

bdx_rx_init.exit:                                 ; preds = %bdx_rxdb_create.exit.thread.i, %if.end.i36.bdx_rx_init.exit_crit_edge, %lor.lhs.false.bdx_rx_init.exit_crit_edge
  %ndev18.i = getelementptr i8, ptr %ndev, i32 2308
  %43 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev18.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.45) #18
  br label %err

lor.lhs.false7:                                   ; preds = %for.body.i.i.lor.lhs.false7_crit_edge, %if.then.i.i.lor.lhs.false7_crit_edge
  %rxdb.i = getelementptr i8, ptr %ndev, i32 2600
  %45 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i38, ptr %rxdb.i, align 8
  %ndev.i41 = getelementptr i8, ptr %ndev, i32 2308
  %46 = ptrtoint ptr %ndev.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev.i41, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mtu.i, align 4
  %50 = trunc i32 %49 to i16
  %conv15.i = add i16 %50, 18
  %pktsz.i = getelementptr i8, ptr %ndev, i32 2596
  %51 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv15.i, ptr %pktsz.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #14
  %52 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fw.i, align 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %54, i32 20848
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !203
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %57, i32 20864
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i45 = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool9.not.i = icmp eq i32 %55, 0
  %or.cond.i = select i1 %tobool.not.i45, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %lor.lhs.false7.for.body.i.preheader_crit_edge, label %if.then.i

lor.lhs.false7.for.body.i.preheader_crit_edge:    ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %lor.lhs.false7
  %pdev.i = getelementptr i8, ptr %ndev, i32 2944
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %call10.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.46, ptr noundef %dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end.i46, label %if.then.i.out.i_crit_edge

if.then.i.out.i_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end.i46:                                       ; preds = %if.then.i
  %61 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp36.i.i = icmp sgt i32 %64, 0
  br i1 %cmp36.i.i, label %while.body.lr.ph.i.i, label %if.end.i46.while.body.i.preheader_crit_edge

if.end.i46.while.body.i.preheader_crit_edge:      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

while.body.lr.ph.i.i:                             ; preds = %if.end.i46
  %data.i = getelementptr inbounds %struct.firmware, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %reg_RPTR.i.i.i = getelementptr i8, ptr %ndev, i32 2628
  %rptr.i.i.i = getelementptr i8, ptr %ndev, i32 2616
  %wptr.i.i.i = getelementptr i8, ptr %ndev, i32 2620
  %va.i.i.i = getelementptr i8, ptr %ndev, i32 2612
  %reg_WPTR.i.i.i = getelementptr i8, ptr %ndev, i32 2630
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %data.addr.039.i.i = phi ptr [ %66, %while.body.lr.ph.i.i ], [ %data.addr.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %timer.038.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %timer.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %size.addr.037.i.i = phi i32 [ %64, %while.body.lr.ph.i.i ], [ %size.addr.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 8
  %69 = ptrtoint ptr %reg_RPTR.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %reg_RPTR.i.i.i, align 4
  %conv.i.i.i = zext i16 %70 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 %conv.i.i.i
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  %72 = and i32 %71, -125894656
  %73 = call i32 @llvm.bswap.i32(i32 %72) #14
  %74 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rptr.i.i.i, align 4
  %75 = ptrtoint ptr %wptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wptr.i.i.i, align 4
  %sub.i.i.i = sub i32 %73, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %while.body.i.i.bdx_tx_space.exit.i.i_crit_edge

while.body.i.i.bdx_tx_space.exit.i.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_space.exit.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %memsz.i, align 4
  %conv8.i.i.i = zext i16 %78 to i32
  %add.i.i.i = add nsw i32 %sub.i.i.i, %conv8.i.i.i
  br label %bdx_tx_space.exit.i.i

bdx_tx_space.exit.i.i:                            ; preds = %if.then.i.i.i, %while.body.i.i.bdx_tx_space.exit.i.i_crit_edge
  %fsize.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %sub.i.i.i, %while.body.i.i.bdx_tx_space.exit.i.i_crit_edge ]
  %sub.i.i47 = add i32 %fsize.0.i.i.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i47)
  %cmp1.i.i = icmp slt i32 %sub.i.i47, 1
  br i1 %cmp1.i.i, label %if.then.i.i48, label %if.end7.i.i

if.then.i.i48:                                    ; preds = %bdx_tx_space.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %timer.038.i.i)
  %cmp2.i.i = icmp sgt i32 %timer.038.i.i, 300
  br i1 %cmp2.i.i, label %if.then.i.i48.while.body.i.preheader_crit_edge, label %if.end.i.i

if.then.i.i48.while.body.i.preheader_crit_edge:   ; preds = %if.then.i.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

if.end.i.i:                                       ; preds = %if.then.i.i48
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i49 = add nsw i32 %timer.038.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 10737400) #14
  br label %cleanup.i.i

if.end7.i.i:                                      ; preds = %bdx_tx_space.exit.i.i
  %80 = call i32 @llvm.umin.i32(i32 %sub.i.i47, i32 %size.addr.037.i.i) #14
  %81 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %memsz.i, align 4
  %conv.i25.i.i = zext i16 %82 to i32
  %sub.i27.i.i = sub i32 %conv.i25.i.i, %76
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub.i27.i.i)
  %cmp3.i.i.i = icmp slt i32 %80, %sub.i27.i.i
  %83 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %va.i.i.i, align 4
  %add.ptr.i28.i.i = getelementptr i8, ptr %84, i32 %76
  br i1 %cmp3.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = call ptr @memcpy(ptr %add.ptr.i28.i.i, ptr %data.addr.039.i.i, i32 %80)
  %86 = ptrtoint ptr %wptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wptr.i.i.i, align 4
  %add.i29.i.i = add i32 %87, %80
  store i32 %add.i29.i.i, ptr %wptr.i.i.i, align 4
  br label %bdx_tx_push_desc.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %88 = call ptr @memcpy(ptr %add.ptr.i28.i.i, ptr %data.addr.039.i.i, i32 %sub.i27.i.i)
  %sub16.i.i.i = sub i32 %80, %sub.i27.i.i
  %89 = ptrtoint ptr %wptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub16.i.i.i, ptr %wptr.i.i.i, align 4
  %90 = ptrtoint ptr %va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %va.i.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %data.addr.039.i.i, i32 %sub.i27.i.i
  %92 = call ptr @memcpy(ptr %91, ptr %add.ptr21.i.i.i, i32 %sub16.i.i.i)
  br label %bdx_tx_push_desc.exit.i.i

bdx_tx_push_desc.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then5.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  call void @arm_heavy_mb() #14
  %93 = ptrtoint ptr %wptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %wptr.i.i.i, align 4
  %and.i.i.i = and i32 %94, 32760
  %95 = call i32 @llvm.bswap.i32(i32 %and.i.i.i) #14
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 8
  %98 = ptrtoint ptr %reg_WPTR.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %reg_WPTR.i.i.i, align 2
  %conv28.i.i.i = zext i16 %99 to i32
  %add.ptr29.i.i.i = getelementptr i8, ptr %97, i32 %conv28.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i.i, i32 %95) #14, !srcloc !173
  %sub12.i.i = sub nsw i32 %size.addr.037.i.i, %80
  %add.ptr.i.i50 = getelementptr i8, ptr %data.addr.039.i.i, i32 %80
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bdx_tx_push_desc.exit.i.i, %if.end.i.i
  %size.addr.1.i.i = phi i32 [ %size.addr.037.i.i, %if.end.i.i ], [ %sub12.i.i, %bdx_tx_push_desc.exit.i.i ]
  %timer.1.i.i = phi i32 [ %inc.i.i49, %if.end.i.i ], [ %timer.038.i.i, %bdx_tx_push_desc.exit.i.i ]
  %data.addr.1.i.i = phi ptr [ %data.addr.039.i.i, %if.end.i.i ], [ %add.ptr.i.i50, %bdx_tx_push_desc.exit.i.i ]
  %cmp.i.i = icmp sgt i32 %size.addr.1.i.i, 0
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.while.body.i.preheader_crit_edge

cleanup.i.i.while.body.i.preheader_crit_edge:     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.preheader:                           ; preds = %cleanup.i.i.while.body.i.preheader_crit_edge, %if.then.i.i48.while.body.i.preheader_crit_edge, %if.end.i46.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.058.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.058.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #14
  %tobool13.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool13.not.i, label %while.body.i.for.body.i.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.for.body.i.preheader_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %while.body.i.for.body.i.preheader_crit_edge, %lor.lhs.false7.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.059.i = phi i32 [ %inc.i, %if.end24.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %102, i32 20864
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #14, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool22.not.i = icmp eq i32 %103, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.end24.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 429496000) #14
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end24.i.out.i_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end24.i.out.i_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

out.i:                                            ; preds = %if.end24.i.out.i_crit_edge, %for.body.i.out.i_crit_edge, %if.then.i.out.i_crit_edge
  %rc.0.i = phi i32 [ %call10.i, %if.then.i.out.i_crit_edge ], [ 0, %for.body.i.out.i_crit_edge ], [ -5, %if.end24.i.out.i_crit_edge ]
  br i1 %tobool9.not.i, label %out.i.if.end32.i_crit_edge, label %do.body27.i

out.i.if.end32.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

do.body27.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !208
  call void @arm_heavy_mb() #14
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr31.i = getelementptr i8, ptr %106, i32 20848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 16777216) #14, !srcloc !173
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.body27.i, %out.i.if.end32.i_crit_edge
  %107 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %108) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool33.not.i = icmp eq i32 %rc.0.i, 0
  br i1 %tobool33.not.i, label %if.end11, label %bdx_fw_load.exit

bdx_fw_load.exit:                                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %ndev.i41 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ndev.i41, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.47) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #14
  br label %err

if.end11:                                         ; preds = %if.end32.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #14
  call fastcc void @bdx_rx_alloc_skbs(ptr noundef %add.ptr.i, ptr noundef %rxf_fifo0.i)
  %111 = ptrtoint ptr %ndev.i41 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ndev.i41, align 4
  call fastcc void @bdx_link_changed(ptr noundef %add.ptr.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  call void @arm_heavy_mb() #14
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %114, i32 24596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -532742144) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %116, i32 24600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -1778384896) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !211
  call void @arm_heavy_mb() #14
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr14.i = getelementptr i8, ptr %118, i32 24604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 268468224) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @arm_heavy_mb() #14
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %120, i32 24608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 268492800) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  call void @arm_heavy_mb() #14
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %122, i32 24612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %124, i32 24616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  call void @arm_heavy_mb() #14
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %126, i32 24584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 855638016) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !216
  call void @arm_heavy_mb() #14
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr39.i = getelementptr i8, ptr %128, i32 9024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 0) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @arm_heavy_mb() #14
  %129 = ptrtoint ptr %pktsz.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %pktsz.i, align 4
  %131 = and i16 %130, 16383
  %and.i = zext i16 %131 to i32
  %132 = call i32 @llvm.bswap.i32(i32 %and.i) #14
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %134, i32 4800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %132) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  call void @arm_heavy_mb() #14
  %rdintcm.i = getelementptr i8, ptr %ndev, i32 2956
  %135 = ptrtoint ptr %rdintcm.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rdintcm.i, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #14
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr52.i = getelementptr i8, ptr %139, i32 20768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %137) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  call void @arm_heavy_mb() #14
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr57.i = getelementptr i8, ptr %141, i32 20776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 0) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %tdintcm.i = getelementptr i8, ptr %ndev, i32 2960
  %142 = ptrtoint ptr %tdintcm.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tdintcm.i, align 8
  %144 = call i32 @llvm.bswap.i32(i32 %143) #14
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr65.i = getelementptr i8, ptr %146, i32 20784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %144) #14, !srcloc !173
  %147 = ptrtoint ptr %ndev.i41 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ndev.i41, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 86
  %149 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev_addr.i.i, align 64
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1
  %conv.i.i = zext i8 %152 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx5.i.i = getelementptr i8, ptr %150, i32 1
  %153 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx5.i.i, align 1
  %conv6.i.i = zext i8 %154 to i32
  %or.i.i = or i32 %shl.i.i, %conv6.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  call void @arm_heavy_mb() #14
  %155 = call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %156 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i55 = getelementptr i8, ptr %157, i32 4720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %155) #14, !srcloc !173
  %158 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx11.i.i = getelementptr i8, ptr %159, i32 2
  %160 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %161 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %arrayidx15.i.i = getelementptr i8, ptr %159, i32 3
  %162 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %163 to i32
  %or17.i.i = or i32 %shl13.i.i, %conv16.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  call void @arm_heavy_mb() #14
  %164 = call i32 @llvm.bswap.i32(i32 %or17.i.i) #14
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr22.i.i = getelementptr i8, ptr %166, i32 4704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 %164) #14, !srcloc !173
  %167 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx24.i.i = getelementptr i8, ptr %168, i32 4
  %169 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %170 to i32
  %shl26.i.i = shl nuw nsw i32 %conv25.i.i, 8
  %arrayidx28.i.i = getelementptr i8, ptr %168, i32 5
  %171 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %172 to i32
  %or30.i.i = or i32 %shl26.i.i, %conv29.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !223
  call void @arm_heavy_mb() #14
  %173 = call i32 @llvm.bswap.i32(i32 %or30.i.i) #14
  %174 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr35.i.i = getelementptr i8, ptr %175, i32 4688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 %173) #14, !srcloc !173
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !224
  call void @arm_heavy_mb() #14
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr71.i = getelementptr i8, ptr %177, i32 4672
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 202375168) #14, !srcloc !173
  %pdev.i56 = getelementptr i8, ptr %ndev, i32 2944
  %178 = ptrtoint ptr %pdev.i56 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdev.i56, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 46
  %180 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %irq.i, align 4
  %nic.i = getelementptr i8, ptr %ndev, i32 2948
  %182 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %nic.i, align 4
  %irq_type.i = getelementptr inbounds %struct.pci_nic, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %irq_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp.i = icmp eq i32 %185, 1
  %cond.i57 = select i1 %cmp.i, i32 0, i32 128
  %call.i.i58 = call i32 @request_threaded_irq(i32 noundef %181, ptr noundef nonnull @bdx_isr_napi, ptr noundef null, i32 noundef %cond.i57, ptr noundef %112, ptr noundef %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool.not.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %tobool.not.i59, label %if.end15, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !225
  call void @arm_heavy_mb() #14
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr78.i = getelementptr i8, ptr %187, i32 20752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 1133250568) #14, !srcloc !173
  %napi = getelementptr i8, ptr %ndev, i32 2312
  call void @napi_enable(ptr noundef %napi) #14
  %188 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %nic.i, align 4
  %regs.i = getelementptr inbounds %struct.pci_nic, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %191, i32 20496
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #14, !srcloc !167
  %193 = call i32 @llvm.bswap.i32(i32 %192) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !226
  %call3.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %193) #18
  br label %cleanup

err:                                              ; preds = %if.end11.err_crit_edge, %bdx_fw_load.exit, %bdx_rx_init.exit, %bdx_tx_init.exit
  %rc.0 = phi i32 [ -12, %bdx_tx_init.exit ], [ -12, %bdx_rx_init.exit ], [ %rc.0.i, %bdx_fw_load.exit ], [ %call.i.i58, %if.end11.err_crit_edge ]
  %call16 = call i32 @bdx_close(ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end15
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_close(ptr noundef %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %napi = getelementptr i8, ptr %ndev, i32 2312
  tail call void @napi_disable(ptr noundef %napi) #14
  tail call fastcc void @bdx_reset(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #14, !srcloc !173
  %pdev.i = getelementptr i8, ptr %ndev, i32 2944
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %ndev.i = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #14
  %8 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev.i, align 4
  tail call void @netif_carrier_off(ptr noundef %9) #14
  %10 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #14
  %rxdb.i = getelementptr i8, ptr %ndev, i32 2600
  %14 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxdb.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %top.i.i.i = getelementptr inbounds %struct.rxdb, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp34.i.i = icmp sgt i32 %17, 0
  br i1 %cmp34.i.i, label %bdx_rxdb_alloc_elem.exit.lr.ph.i.i, label %if.then.i.for.cond.preheader.i.i_crit_edge

if.then.i.for.cond.preheader.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i.i

bdx_rxdb_alloc_elem.exit.lr.ph.i.i:               ; preds = %if.then.i
  %nelem.i.i.i = getelementptr inbounds %struct.rxdb, ptr %15, i32 0, i32 2
  %elems.i.i.i = getelementptr inbounds %struct.rxdb, ptr %15, i32 0, i32 1
  br label %bdx_rxdb_alloc_elem.exit.i.i

for.cond.preheader.i.i:                           ; preds = %bdx_rxdb_addr_elem.exit.i.i.for.cond.preheader.i.i_crit_edge, %if.then.i.for.cond.preheader.i.i_crit_edge
  %nelem.i.i = getelementptr inbounds %struct.rxdb, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %nelem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nelem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp835.i.i = icmp sgt i32 %19, 0
  br i1 %cmp835.i.i, label %bdx_rxdb_addr_elem.exit33.lr.ph.i.i, label %for.cond.preheader.i.i.bdx_rx_free_skbs.exit.i_crit_edge

for.cond.preheader.i.i.bdx_rx_free_skbs.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_free_skbs.exit.i

bdx_rxdb_addr_elem.exit33.lr.ph.i.i:              ; preds = %for.cond.preheader.i.i
  %elems.i31.i.i = getelementptr inbounds %struct.rxdb, ptr %15, i32 0, i32 1
  %pktsz.i.i = getelementptr i8, ptr %ndev, i32 2596
  br label %bdx_rxdb_addr_elem.exit33.i.i

bdx_rxdb_alloc_elem.exit.i.i:                     ; preds = %bdx_rxdb_addr_elem.exit.i.i.bdx_rxdb_alloc_elem.exit.i.i_crit_edge, %bdx_rxdb_alloc_elem.exit.lr.ph.i.i
  %20 = phi i32 [ %17, %bdx_rxdb_alloc_elem.exit.lr.ph.i.i ], [ %32, %bdx_rxdb_addr_elem.exit.i.i.bdx_rxdb_alloc_elem.exit.i.i_crit_edge ]
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 4
  %dec.i.i.i = add nsw i32 %20, -1
  %23 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i.i.i, ptr %top.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %22, i32 %dec.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv5.i.i = and i32 %25, 65535
  %26 = ptrtoint ptr %nelem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nelem.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv5.i.i)
  %cmp1.not.i.i.i = icmp sgt i32 %27, %conv5.i.i
  br i1 %cmp1.not.i.i.i, label %bdx_rxdb_addr_elem.exit.i.i, label %do.body3.i.i.i, !prof !186

do.body3.i.i.i:                                   ; preds = %bdx_rxdb_alloc_elem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

bdx_rxdb_addr_elem.exit.i.i:                      ; preds = %bdx_rxdb_alloc_elem.exit.i.i
  %28 = ptrtoint ptr %elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %elems.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.rx_map, ptr %29, i32 %conv5.i.i
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %add.ptr.i.i.i, align 8
  %31 = ptrtoint ptr %top.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top.i.i.i, align 4
  %cmp.i.i = icmp sgt i32 %32, 0
  br i1 %cmp.i.i, label %bdx_rxdb_addr_elem.exit.i.i.bdx_rxdb_alloc_elem.exit.i.i_crit_edge, label %bdx_rxdb_addr_elem.exit.i.i.for.cond.preheader.i.i_crit_edge

bdx_rxdb_addr_elem.exit.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %bdx_rxdb_addr_elem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader.i.i

bdx_rxdb_addr_elem.exit.i.i.bdx_rxdb_alloc_elem.exit.i.i_crit_edge: ; preds = %bdx_rxdb_addr_elem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rxdb_alloc_elem.exit.i.i

bdx_rxdb_addr_elem.exit33.i.i:                    ; preds = %for.inc.i.i.bdx_rxdb_addr_elem.exit33.i.i_crit_edge, %bdx_rxdb_addr_elem.exit33.lr.ph.i.i
  %conv737.i.i = phi i32 [ 0, %bdx_rxdb_addr_elem.exit33.lr.ph.i.i ], [ %conv7.i.i, %for.inc.i.i.bdx_rxdb_addr_elem.exit33.i.i_crit_edge ]
  %i.036.i.i = phi i16 [ 0, %bdx_rxdb_addr_elem.exit33.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.bdx_rxdb_addr_elem.exit33.i.i_crit_edge ]
  %33 = ptrtoint ptr %elems.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %elems.i31.i.i, align 4
  %add.ptr.i32.i.i = getelementptr %struct.rx_map, ptr %34, i32 %conv737.i.i
  %35 = ptrtoint ptr %add.ptr.i32.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i32.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool.not.i.i = icmp eq i64 %36, 0
  br i1 %tobool.not.i.i, label %bdx_rxdb_addr_elem.exit33.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

bdx_rxdb_addr_elem.exit33.i.i.for.inc.i.i_crit_edge: ; preds = %bdx_rxdb_addr_elem.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %bdx_rxdb_addr_elem.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %conv14.i.i = trunc i64 %36 to i32
  %39 = ptrtoint ptr %pktsz.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pktsz.i.i, align 4
  %conv15.i.i = zext i16 %40 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i, i32 noundef 2, i32 noundef 0) #14
  %skb.i.i = getelementptr %struct.rx_map, ptr %34, i32 %conv737.i.i, i32 1
  %41 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb.i.i, align 8
  tail call void @consume_skb(ptr noundef %42) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %bdx_rxdb_addr_elem.exit33.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i16 %i.036.i.i, 1
  %conv7.i.i = zext i16 %inc.i.i to i32
  %43 = ptrtoint ptr %nelem.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nelem.i.i, align 4
  %cmp8.i.i = icmp sgt i32 %44, %conv7.i.i
  br i1 %cmp8.i.i, label %for.inc.i.i.bdx_rxdb_addr_elem.exit33.i.i_crit_edge, label %for.inc.i.i.bdx_rx_free_skbs.exit.i_crit_edge

for.inc.i.i.bdx_rx_free_skbs.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_free_skbs.exit.i

for.inc.i.i.bdx_rxdb_addr_elem.exit33.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rxdb_addr_elem.exit33.i.i

bdx_rx_free_skbs.exit.i:                          ; preds = %for.inc.i.i.bdx_rx_free_skbs.exit.i_crit_edge, %for.cond.preheader.i.i.bdx_rx_free_skbs.exit.i_crit_edge
  %45 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rxdb.i, align 8
  tail call void @vfree(ptr noundef %46) #14
  %47 = ptrtoint ptr %rxdb.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rxdb.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %bdx_rx_free_skbs.exit.i, %entry.if.end.i_crit_edge
  %va.i.i = getelementptr i8, ptr %ndev, i32 2572
  %48 = ptrtoint ptr %va.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %va.i.i, align 4
  %tobool.not.i13.i = icmp eq ptr %49, null
  br i1 %tobool.not.i13.i, label %if.end.i.bdx_fifo_free.exit.i_crit_edge, label %if.then.i16.i

if.end.i.bdx_fifo_free.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_fifo_free.exit.i

if.then.i16.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %rxf_fifo03.i = getelementptr i8, ptr %ndev, i32 2568
  %50 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i, align 8
  %dev.i15.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %memsz.i.i = getelementptr i8, ptr %ndev, i32 2592
  %52 = ptrtoint ptr %memsz.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %memsz.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1024
  %54 = ptrtoint ptr %rxf_fifo03.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rxf_fifo03.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i15.i, i32 noundef %add.i.i, ptr noundef nonnull %49, i32 noundef %55, i32 noundef 0) #14
  %56 = ptrtoint ptr %va.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va.i.i, align 4
  br label %bdx_fifo_free.exit.i

bdx_fifo_free.exit.i:                             ; preds = %if.then.i16.i, %if.end.i.bdx_fifo_free.exit.i_crit_edge
  %va.i17.i = getelementptr i8, ptr %ndev, i32 2540
  %57 = ptrtoint ptr %va.i17.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %va.i17.i, align 4
  %tobool.not.i18.i = icmp eq ptr %58, null
  br i1 %tobool.not.i18.i, label %bdx_fifo_free.exit.i.bdx_rx_free.exit_crit_edge, label %if.then.i24.i

bdx_fifo_free.exit.i.bdx_rx_free.exit_crit_edge:  ; preds = %bdx_fifo_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_rx_free.exit

if.then.i24.i:                                    ; preds = %bdx_fifo_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %rxd_fifo0.i = getelementptr i8, ptr %ndev, i32 2536
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 8
  %dev.i20.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %memsz.i21.i = getelementptr i8, ptr %ndev, i32 2560
  %61 = ptrtoint ptr %memsz.i21.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %memsz.i21.i, align 4
  %conv.i22.i = zext i16 %62 to i32
  %add.i23.i = add nuw nsw i32 %conv.i22.i, 1024
  %63 = ptrtoint ptr %rxd_fifo0.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rxd_fifo0.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i20.i, i32 noundef %add.i23.i, ptr noundef nonnull %58, i32 noundef %64, i32 noundef 0) #14
  %65 = ptrtoint ptr %va.i17.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va.i17.i, align 4
  br label %bdx_rx_free.exit

bdx_rx_free.exit:                                 ; preds = %if.then.i24.i, %bdx_fifo_free.exit.i.bdx_rx_free.exit_crit_edge
  %txdb.i.i = getelementptr i8, ptr %ndev, i32 2672
  %rptr.i.i = getelementptr i8, ptr %ndev, i32 2680
  %wptr.i.i = getelementptr i8, ptr %ndev, i32 2684
  %66 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rptr.i.i, align 4
  %68 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wptr.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %67, %69
  br i1 %cmp.not17.i.i, label %bdx_rx_free.exit.bdx_tx_free_skbs.exit.i_crit_edge, label %while.body.lr.ph.i.i

bdx_rx_free.exit.bdx_tx_free_skbs.exit.i_crit_edge: ; preds = %bdx_rx_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_free_skbs.exit.i

while.body.lr.ph.i.i:                             ; preds = %bdx_rx_free.exit
  %end.i.i.i.i = getelementptr i8, ptr %ndev, i32 2676
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %bdx_tx_db_inc_rptr.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %70 = phi ptr [ %67, %while.body.lr.ph.i.i ], [ %storemerge.i.i.i, %bdx_tx_db_inc_rptr.exit.i.i.while.body.i.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.tx_map, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i8 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i8, label %if.else.i.i, label %if.then.i.i10, !prof !188

if.then.i.i10:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i, align 8
  %dev.i.i9 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %70, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i9, i32 noundef %76, i32 noundef %72, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %70, align 4
  tail call void @consume_skb(ptr noundef %78) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i10
  %79 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rptr.i.i, align 4
  %81 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wptr.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %80, %82
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %do.end5.i.i.i, !prof !188

do.body2.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1387, 0\0A.popsection", ""() #14, !srcloc !191
  unreachable

do.end5.i.i.i:                                    ; preds = %if.end.i.i
  %83 = ptrtoint ptr %txdb.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %txdb.i.i, align 4
  %cmp24.i.i.i.i = icmp ult ptr %80, %84
  br i1 %cmp24.i.i.i.i, label %do.end5.i.i.i.do.body35.i.i.i.i_crit_edge, label %lor.rhs25.i.i.i.i, !prof !188

do.end5.i.i.i.do.body35.i.i.i.i_crit_edge:        ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i.i

lor.rhs25.i.i.i.i:                                ; preds = %do.end5.i.i.i
  %85 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %end.i.i.i.i, align 4
  %cmp26.not.i.i.i.i = icmp ult ptr %80, %86
  br i1 %cmp26.not.i.i.i.i, label %do.end40.i.i.i.i, label %lor.rhs25.i.i.i.i.do.body35.i.i.i.i_crit_edge, !prof !186

lor.rhs25.i.i.i.i.do.body35.i.i.i.i_crit_edge:    ; preds = %lor.rhs25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i.i

do.body35.i.i.i.i:                                ; preds = %lor.rhs25.i.i.i.i.do.body35.i.i.i.i_crit_edge, %do.end5.i.i.i.do.body35.i.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i.i.i:                                 ; preds = %lor.rhs25.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr %struct.tx_map, ptr %80, i32 1
  %cmp42.i.i.i.i = icmp eq ptr %incdec.ptr.i.i.i.i, %86
  br i1 %cmp42.i.i.i.i, label %if.then49.i.i.i.i, label %do.end40.i.i.i.i.bdx_tx_db_inc_rptr.exit.i.i_crit_edge, !prof !188

do.end40.i.i.i.i.bdx_tx_db_inc_rptr.exit.i.i_crit_edge: ; preds = %do.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit.i.i

if.then49.i.i.i.i:                                ; preds = %do.end40.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_db_inc_rptr.exit.i.i

bdx_tx_db_inc_rptr.exit.i.i:                      ; preds = %if.then49.i.i.i.i, %do.end40.i.i.i.i.bdx_tx_db_inc_rptr.exit.i.i_crit_edge
  %storemerge.i.i.i = phi ptr [ %84, %if.then49.i.i.i.i ], [ %incdec.ptr.i.i.i.i, %do.end40.i.i.i.i.bdx_tx_db_inc_rptr.exit.i.i_crit_edge ]
  %87 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %storemerge.i.i.i, ptr %rptr.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %storemerge.i.i.i, %82
  br i1 %cmp.not.i.i, label %bdx_tx_db_inc_rptr.exit.i.i.bdx_tx_free_skbs.exit.i_crit_edge, label %bdx_tx_db_inc_rptr.exit.i.i.while.body.i.i_crit_edge

bdx_tx_db_inc_rptr.exit.i.i.while.body.i.i_crit_edge: ; preds = %bdx_tx_db_inc_rptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

bdx_tx_db_inc_rptr.exit.i.i.bdx_tx_free_skbs.exit.i_crit_edge: ; preds = %bdx_tx_db_inc_rptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_free_skbs.exit.i

bdx_tx_free_skbs.exit.i:                          ; preds = %bdx_tx_db_inc_rptr.exit.i.i.bdx_tx_free_skbs.exit.i_crit_edge, %bdx_rx_free.exit.bdx_tx_free_skbs.exit.i_crit_edge
  %va.i.i11 = getelementptr i8, ptr %ndev, i32 2612
  %88 = ptrtoint ptr %va.i.i11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %va.i.i11, align 4
  %tobool.not.i7.i = icmp eq ptr %89, null
  br i1 %tobool.not.i7.i, label %bdx_tx_free_skbs.exit.i.bdx_fifo_free.exit.i16_crit_edge, label %if.then.i10.i

bdx_tx_free_skbs.exit.i.bdx_fifo_free.exit.i16_crit_edge: ; preds = %bdx_tx_free_skbs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_fifo_free.exit.i16

if.then.i10.i:                                    ; preds = %bdx_tx_free_skbs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %txd_fifo0.i = getelementptr i8, ptr %ndev, i32 2608
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 8
  %dev.i9.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %memsz.i.i12 = getelementptr i8, ptr %ndev, i32 2632
  %92 = ptrtoint ptr %memsz.i.i12 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %memsz.i.i12, align 4
  %conv.i.i13 = zext i16 %93 to i32
  %add.i.i14 = add nuw nsw i32 %conv.i.i13, 1024
  %94 = ptrtoint ptr %txd_fifo0.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %txd_fifo0.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i9.i, i32 noundef %add.i.i14, ptr noundef nonnull %89, i32 noundef %95, i32 noundef 0) #14
  %96 = ptrtoint ptr %va.i.i11 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %va.i.i11, align 4
  br label %bdx_fifo_free.exit.i16

bdx_fifo_free.exit.i16:                           ; preds = %if.then.i10.i, %bdx_tx_free_skbs.exit.i.bdx_fifo_free.exit.i16_crit_edge
  %va.i12.i = getelementptr i8, ptr %ndev, i32 2644
  %97 = ptrtoint ptr %va.i12.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %va.i12.i, align 4
  %tobool.not.i13.i15 = icmp eq ptr %98, null
  br i1 %tobool.not.i13.i15, label %bdx_fifo_free.exit.i16.bdx_tx_free.exit_crit_edge, label %if.then.i19.i

bdx_fifo_free.exit.i16.bdx_tx_free.exit_crit_edge: ; preds = %bdx_fifo_free.exit.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_tx_free.exit

if.then.i19.i:                                    ; preds = %bdx_fifo_free.exit.i16
  call void @__sanitizer_cov_trace_pc() #16
  %txf_fifo0.i = getelementptr i8, ptr %ndev, i32 2640
  %99 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i, align 8
  %dev.i15.i18 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %memsz.i16.i = getelementptr i8, ptr %ndev, i32 2664
  %101 = ptrtoint ptr %memsz.i16.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %memsz.i16.i, align 4
  %conv.i17.i = zext i16 %102 to i32
  %add.i18.i = add nuw nsw i32 %conv.i17.i, 1024
  %103 = ptrtoint ptr %txf_fifo0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %txf_fifo0.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i15.i18, i32 noundef %add.i18.i, ptr noundef nonnull %98, i32 noundef %104, i32 noundef 0) #14
  %105 = ptrtoint ptr %va.i12.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %va.i12.i, align 4
  br label %bdx_tx_free.exit

bdx_tx_free.exit:                                 ; preds = %if.then.i19.i, %bdx_fifo_free.exit.i16.bdx_tx_free.exit_crit_edge
  %106 = ptrtoint ptr %txdb.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %txdb.i.i, align 4
  tail call void @vfree(ptr noundef %107) #14
  %108 = ptrtoint ptr %txdb.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %txdb.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_tx_transmit(ptr noundef %skb, ptr noundef %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags2 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags2, align 2
  %conv = zext i8 %3 to i32
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !228
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end17_crit_edge

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.end17

do.end17:                                         ; preds = %if.then, %entry.do.end17_crit_edge
  %tx_lock = getelementptr i8, ptr %ndev, i32 2704
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #14
  %wptr = getelementptr i8, ptr %ndev, i32 2620
  %5 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wptr, align 4
  %memsz = getelementptr i8, ptr %ndev, i32 2632
  %7 = ptrtoint ptr %memsz to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %memsz, align 4
  %conv20 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv20)
  %cmp21.not = icmp ult i32 %6, %conv20
  br i1 %cmp21.not, label %do.end34, label %do.body26, !prof !186

do.body26:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1605, 0\0A.popsection", ""() #14, !srcloc !229
  unreachable

do.end34:                                         ; preds = %do.end17
  %va = getelementptr i8, ptr %ndev, i32 2612
  %9 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %va, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %6
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %ip_summed, align 8
  %12 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %12)
  %cmp39.not = icmp eq i16 %12, 1536
  br i1 %cmp39.not, label %do.end34.if.end48_crit_edge, label %if.then47, !prof !186

do.end34.if.end48_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then47:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %do.end34.if.end48_crit_edge
  %txd_checksum.0 = phi i32 [ 196608, %if.then47 ], [ 196832, %do.end34.if.end48_crit_edge ]
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool50.not = icmp eq i16 %16, 0
  %spec.select = select i1 %tobool50.not, i32 0, i32 512
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %17 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %bf.load59 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load59)
  %tobool62.not = icmp sgt i32 %bf.load59, -1
  br i1 %tobool62.not, label %if.end48.if.end65_crit_edge, label %if.then63

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then63:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %18 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_tci, align 2
  %conv64 = zext i16 %19 to i32
  %phi.bo = shl i32 %conv64, 20
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end48.if.end65_crit_edge
  %txd_vlan_id.0 = phi i32 [ %phi.bo, %if.then63 ], [ 0, %if.end48.if.end65_crit_edge ]
  %txd_vtag.0 = phi i32 [ 256, %if.then63 ], [ 0, %if.end48.if.end65_crit_edge ]
  %len66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len66, align 4
  %conv67 = trunc i32 %21 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv67)
  %length = getelementptr inbounds %struct.txd_desc, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %length, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %16)
  %mss = getelementptr inbounds %struct.txd_desc, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %mss to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %mss, align 1
  %arrayidx = getelementptr [18 x %struct.anon.152], ptr @txd_sizes, i32 0, i32 %conv
  %qwords = getelementptr [18 x %struct.anon.152], ptr @txd_sizes, i32 0, i32 %conv, i32 1
  %26 = ptrtoint ptr %qwords to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %qwords, align 2
  %conv69 = zext i16 %27 to i32
  %or71 = or i32 %txd_checksum.0, %spec.select
  %or73 = or i32 %or71, %txd_vlan_id.0
  %or74 = or i32 %or73, %txd_vtag.0
  %or76 = or i32 %or74, %conv69
  %28 = tail call i32 @llvm.bswap.i32(i32 %or76)
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %add.ptr, align 1
  %txdb.i = getelementptr i8, ptr %ndev, i32 2672
  %pbl1.i = getelementptr inbounds %struct.txd_desc, ptr %add.ptr, i32 0, i32 5
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags2.i, align 2
  %conv.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len66, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %35, %37
  %wptr.i = getelementptr i8, ptr %ndev, i32 2684
  %38 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wptr.i, align 4
  %len.i = getelementptr inbounds %struct.tx_map, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i.i, ptr %len.i, align 4
  %pdev.i = getelementptr i8, ptr %ndev, i32 2944
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = load ptr, ptr %wptr.i, align 4
  %len5.i = getelementptr inbounds %struct.tx_map, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len5.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %44) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end65
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !186

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #14
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %51, %if.end.i.i.i ], [ %49, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %44, i32 noundef %47) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %44 to i32
  %sub.i74.i = add i32 %53, 1073741824
  %shr.i.i = lshr i32 %sub.i74.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %52, i32 %shr.i.i
  %and.i.i = and i32 %53, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %47, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %54 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wptr.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i.i, ptr %55, align 4
  %57 = load ptr, ptr %wptr.i, align 4
  %len9.i = getelementptr inbounds %struct.tx_map, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len9.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  %len10.i = getelementptr inbounds %struct.txd_desc, ptr %add.ptr, i32 1, i32 3
  %61 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %len10.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wptr.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #14
  %67 = ptrtoint ptr %pbl1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %pbl1.i, align 4
  %pa_hi.i = getelementptr inbounds %struct.txd_desc, ptr %add.ptr, i32 1, i32 1
  %68 = ptrtoint ptr %pa_hi.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %pa_hi.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wptr.i, align 4
  %rptr.i.i.i = getelementptr i8, ptr %ndev, i32 2680
  %71 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rptr.i.i.i, align 4
  %73 = ptrtoint ptr %txdb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %txdb.i, align 4
  %cmp24.i.i.i = icmp ult ptr %70, %74
  br i1 %cmp24.i.i.i, label %dma_map_single_attrs.exit.i.do.body35.i.i.i_crit_edge, label %lor.rhs25.i.i.i, !prof !188

dma_map_single_attrs.exit.i.do.body35.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i

lor.rhs25.i.i.i:                                  ; preds = %dma_map_single_attrs.exit.i
  %end.i.i.i = getelementptr i8, ptr %ndev, i32 2676
  %75 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %end.i.i.i, align 4
  %cmp26.not.i.i.i = icmp ult ptr %70, %76
  br i1 %cmp26.not.i.i.i, label %do.end40.i.i.i, label %lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge, !prof !186

lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge:        ; preds = %lor.rhs25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i.i

do.body35.i.i.i:                                  ; preds = %lor.rhs25.i.i.i.do.body35.i.i.i_crit_edge, %dma_map_single_attrs.exit.i.do.body35.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i.i:                                   ; preds = %lor.rhs25.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.tx_map, ptr %70, i32 1
  %cmp42.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %76
  br i1 %cmp42.i.i.i, label %if.then49.i.i.i, label %do.end40.i.i.i.__bdx_tx_db_ptr_next.exit.i.i_crit_edge, !prof !188

do.end40.i.i.i.__bdx_tx_db_ptr_next.exit.i.i_crit_edge: ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i.i

if.then49.i.i.i:                                  ; preds = %do.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i.i

__bdx_tx_db_ptr_next.exit.i.i:                    ; preds = %if.then49.i.i.i, %do.end40.i.i.i.__bdx_tx_db_ptr_next.exit.i.i_crit_edge
  %storemerge.i.i = phi ptr [ %74, %if.then49.i.i.i ], [ %incdec.ptr.i.i.i, %do.end40.i.i.i.__bdx_tx_db_ptr_next.exit.i.i_crit_edge ]
  %77 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %storemerge.i.i, ptr %wptr.i, align 4
  %cmp.i.i = icmp eq ptr %72, %storemerge.i.i
  br i1 %cmp.i.i, label %do.body3.i.i, label %for.cond.preheader.i, !prof !188

for.cond.preheader.i:                             ; preds = %__bdx_tx_db_ptr_next.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp115.not.i = icmp eq i8 %33, 0
  br i1 %cmp115.not.i, label %for.cond.preheader.i.do.body7.i.i101.i_crit_edge, label %for.cond.preheader.i.do.body7.i.i82.i_crit_edge

for.cond.preheader.i.do.body7.i.i82.i_crit_edge:  ; preds = %for.cond.preheader.i
  br label %do.body7.i.i82.i

for.cond.preheader.i.do.body7.i.i101.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i.i101.i

do.body3.i.i:                                     ; preds = %__bdx_tx_db_ptr_next.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1398, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

for.cond.i:                                       ; preds = %__bdx_tx_db_ptr_next.exit.i93.i
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.do.body7.i.i101.i_crit_edge, label %for.cond.i.do.body7.i.i82.i_crit_edge

for.cond.i.do.body7.i.i82.i_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i.i82.i

for.cond.i.do.body7.i.i101.i_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i.i101.i

do.body7.i.i82.i:                                 ; preds = %for.cond.i.do.body7.i.i82.i_crit_edge, %for.cond.preheader.i.do.body7.i.i82.i_crit_edge
  %i.0117.i = phi i32 [ %inc.i, %for.cond.i.do.body7.i.i82.i_crit_edge ], [ 0, %for.cond.preheader.i.do.body7.i.i82.i_crit_edge ]
  %pbl.0116.i = phi ptr [ %incdec.ptr.i, %for.cond.i.do.body7.i.i82.i_crit_edge ], [ %pbl1.i, %for.cond.preheader.i.do.body7.i.i82.i_crit_edge ]
  %78 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i, align 4
  %arrayidx21.i = getelementptr %struct.skb_shared_info, ptr %79, i32 0, i32 12, i32 %i.0117.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %79, i32 0, i32 12, i32 %i.0117.i, i32 1
  %80 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bv_len.i.i, align 4
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wptr.i, align 4
  %len24.i = getelementptr inbounds %struct.tx_map, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %len24.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %len24.i, align 4
  %85 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = load i32, ptr %bv_len.i.i, align 4
  %88 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx21.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %79, i32 0, i32 12, i32 %i.0117.i, i32 2
  %90 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev26.i, ptr noundef %89, i32 noundef %91, i32 noundef %87, i32 noundef 1, i32 noundef 0) #14
  %92 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wptr.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call2.i.i, ptr %93, align 4
  %incdec.ptr.i = getelementptr %struct.pbl, ptr %pbl.0116.i, i32 1
  %95 = load ptr, ptr %wptr.i, align 4
  %len32.i = getelementptr inbounds %struct.tx_map, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len32.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #14
  %len33.i = getelementptr %struct.pbl, ptr %pbl.0116.i, i32 1, i32 2
  %99 = ptrtoint ptr %len33.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %len33.i, align 4
  %100 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wptr.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #14
  %105 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %incdec.ptr.i, align 4
  %pa_hi37.i = getelementptr %struct.pbl, ptr %pbl.0116.i, i32 1, i32 1
  %106 = ptrtoint ptr %pa_hi37.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %pa_hi37.i, align 4
  %107 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wptr.i, align 4
  %109 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rptr.i.i.i, align 4
  %111 = ptrtoint ptr %txdb.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %txdb.i, align 4
  %cmp24.i.i81.i = icmp ult ptr %108, %112
  br i1 %cmp24.i.i81.i, label %do.body7.i.i82.i.do.body35.i.i86.i_crit_edge, label %lor.rhs25.i.i85.i, !prof !188

do.body7.i.i82.i.do.body35.i.i86.i_crit_edge:     ; preds = %do.body7.i.i82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i86.i

lor.rhs25.i.i85.i:                                ; preds = %do.body7.i.i82.i
  %113 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i.i.i, align 4
  %cmp26.not.i.i84.i = icmp ult ptr %108, %114
  br i1 %cmp26.not.i.i84.i, label %do.end40.i.i89.i, label %lor.rhs25.i.i85.i.do.body35.i.i86.i_crit_edge, !prof !186

lor.rhs25.i.i85.i.do.body35.i.i86.i_crit_edge:    ; preds = %lor.rhs25.i.i85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i86.i

do.body35.i.i86.i:                                ; preds = %lor.rhs25.i.i85.i.do.body35.i.i86.i_crit_edge, %do.body7.i.i82.i.do.body35.i.i86.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i89.i:                                 ; preds = %lor.rhs25.i.i85.i
  %incdec.ptr.i.i87.i = getelementptr %struct.tx_map, ptr %108, i32 1
  %cmp42.i.i88.i = icmp eq ptr %incdec.ptr.i.i87.i, %114
  br i1 %cmp42.i.i88.i, label %if.then49.i.i90.i, label %do.end40.i.i89.i.__bdx_tx_db_ptr_next.exit.i93.i_crit_edge, !prof !188

do.end40.i.i89.i.__bdx_tx_db_ptr_next.exit.i93.i_crit_edge: ; preds = %do.end40.i.i89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i93.i

if.then49.i.i90.i:                                ; preds = %do.end40.i.i89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i93.i

__bdx_tx_db_ptr_next.exit.i93.i:                  ; preds = %if.then49.i.i90.i, %do.end40.i.i89.i.__bdx_tx_db_ptr_next.exit.i93.i_crit_edge
  %storemerge.i91.i = phi ptr [ %112, %if.then49.i.i90.i ], [ %incdec.ptr.i.i87.i, %do.end40.i.i89.i.__bdx_tx_db_ptr_next.exit.i93.i_crit_edge ]
  %115 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %storemerge.i91.i, ptr %wptr.i, align 4
  %cmp.i92.i = icmp eq ptr %110, %storemerge.i91.i
  br i1 %cmp.i92.i, label %do.body3.i94.i, label %for.cond.i, !prof !188

do.body3.i94.i:                                   ; preds = %__bdx_tx_db_ptr_next.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1398, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

do.body7.i.i101.i:                                ; preds = %for.cond.i.do.body7.i.i101.i_crit_edge, %for.cond.preheader.i.do.body7.i.i101.i_crit_edge
  %arrayidx38.i = getelementptr [18 x %struct.anon.152], ptr @txd_sizes, i32 0, i32 %conv.i
  %116 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx38.i, align 2
  %conv39.i = zext i16 %117 to i32
  %sub.i = sub nsw i32 0, %conv39.i
  %118 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wptr.i, align 4
  %len41.i = getelementptr inbounds %struct.tx_map, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %len41.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub.i, ptr %len41.i, align 4
  %121 = load ptr, ptr %wptr.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %skb, ptr %121, align 4
  %123 = load ptr, ptr %wptr.i, align 4
  %124 = ptrtoint ptr %rptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rptr.i.i.i, align 4
  %126 = ptrtoint ptr %txdb.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %txdb.i, align 4
  %cmp24.i.i100.i = icmp ult ptr %123, %127
  br i1 %cmp24.i.i100.i, label %do.body7.i.i101.i.do.body35.i.i105.i_crit_edge, label %lor.rhs25.i.i104.i, !prof !188

do.body7.i.i101.i.do.body35.i.i105.i_crit_edge:   ; preds = %do.body7.i.i101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i105.i

lor.rhs25.i.i104.i:                               ; preds = %do.body7.i.i101.i
  %128 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i.i.i, align 4
  %cmp26.not.i.i103.i = icmp ult ptr %123, %129
  br i1 %cmp26.not.i.i103.i, label %do.end40.i.i108.i, label %lor.rhs25.i.i104.i.do.body35.i.i105.i_crit_edge, !prof !186

lor.rhs25.i.i104.i.do.body35.i.i105.i_crit_edge:  ; preds = %lor.rhs25.i.i104.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body35.i.i105.i

do.body35.i.i105.i:                               ; preds = %lor.rhs25.i.i104.i.do.body35.i.i105.i_crit_edge, %do.body7.i.i101.i.do.body35.i.i105.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #14, !srcloc !192
  unreachable

do.end40.i.i108.i:                                ; preds = %lor.rhs25.i.i104.i
  %incdec.ptr.i.i106.i = getelementptr %struct.tx_map, ptr %123, i32 1
  %cmp42.i.i107.i = icmp eq ptr %incdec.ptr.i.i106.i, %129
  br i1 %cmp42.i.i107.i, label %if.then49.i.i109.i, label %do.end40.i.i108.i.__bdx_tx_db_ptr_next.exit.i112.i_crit_edge, !prof !188

do.end40.i.i108.i.__bdx_tx_db_ptr_next.exit.i112.i_crit_edge: ; preds = %do.end40.i.i108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i112.i

if.then49.i.i109.i:                               ; preds = %do.end40.i.i108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__bdx_tx_db_ptr_next.exit.i112.i

__bdx_tx_db_ptr_next.exit.i112.i:                 ; preds = %if.then49.i.i109.i, %do.end40.i.i108.i.__bdx_tx_db_ptr_next.exit.i112.i_crit_edge
  %storemerge.i110.i = phi ptr [ %127, %if.then49.i.i109.i ], [ %incdec.ptr.i.i106.i, %do.end40.i.i108.i.__bdx_tx_db_ptr_next.exit.i112.i_crit_edge ]
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %storemerge.i110.i, ptr %wptr.i, align 4
  %cmp.i111.i = icmp eq ptr %125, %storemerge.i110.i
  br i1 %cmp.i111.i, label %do.body3.i113.i, label %bdx_tx_map_skb.exit, !prof !188

do.body3.i113.i:                                  ; preds = %__bdx_tx_db_ptr_next.exit.i112.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1398, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

bdx_tx_map_skb.exit:                              ; preds = %__bdx_tx_db_ptr_next.exit.i112.i
  %131 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx, align 2
  %conv87 = zext i16 %132 to i32
  %133 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %wptr, align 4
  %add = add i32 %134, %conv87
  store i32 %add, ptr %wptr, align 4
  %135 = ptrtoint ptr %memsz to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %memsz, align 4
  %conv94 = zext i16 %136 to i32
  %sub = sub i32 %add, %conv94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp95 = icmp sgt i32 %sub, -1
  br i1 %cmp95, label %if.then103, label %bdx_tx_map_skb.exit.do.body141_crit_edge, !prof !188

bdx_tx_map_skb.exit.do.body141_crit_edge:         ; preds = %bdx_tx_map_skb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body141

if.then103:                                       ; preds = %bdx_tx_map_skb.exit
  %137 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub, ptr %wptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv94)
  %cmp106.not = icmp eq i32 %add, %conv94
  br i1 %cmp106.not, label %if.then103.do.body141_crit_edge, label %do.body109

if.then103.do.body141_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body141

do.body109:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv94)
  %cmp113 = icmp ugt i32 %sub, %conv94
  br i1 %cmp113, label %do.body122, label %do.end130, !prof !188

do.body122:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1643, 0\0A.popsection", ""() #14, !srcloc !231
  unreachable

do.end130:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #16
  %138 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %va, align 4
  %add.ptr138 = getelementptr i8, ptr %139, i32 %conv94
  %140 = call ptr @memcpy(ptr %139, ptr %add.ptr138, i32 %sub)
  br label %do.body141

do.body141:                                       ; preds = %do.end130, %if.then103.do.body141_crit_edge, %bdx_tx_map_skb.exit.do.body141_crit_edge
  %141 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %wptr, align 4
  %143 = ptrtoint ptr %memsz to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %memsz, align 4
  %conv146 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %conv146)
  %cmp147.not = icmp ult i32 %142, %conv146
  br i1 %cmp147.not, label %do.end164, label %do.body156, !prof !186

do.body156:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1647, 0\0A.popsection", ""() #14, !srcloc !232
  unreachable

do.end164:                                        ; preds = %do.body141
  %tx_level = getelementptr i8, ptr %ndev, i32 2692
  %145 = ptrtoint ptr %tx_level to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_level, align 4
  %sub168 = sub i32 %146, %conv87
  store i32 %sub168, ptr %tx_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub168)
  %cmp171 = icmp slt i32 %sub168, 1
  %sub178 = add nsw i32 %conv146, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub168, i32 %sub178)
  %cmp179 = icmp sgt i32 %sub168, %sub178
  %or.cond = select i1 %cmp171, i1 true, i1 %cmp179
  br i1 %or.cond, label %do.body188, label %do.end196, !prof !233

do.body188:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1650, 0\0A.popsection", ""() #14, !srcloc !234
  unreachable

do.end196:                                        ; preds = %do.end164
  %tx_update_mark = getelementptr i8, ptr %ndev, i32 2696
  %147 = ptrtoint ptr %tx_update_mark to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_update_mark, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub168, i32 %148)
  %cmp198 = icmp sgt i32 %sub168, %148
  br i1 %cmp198, label %do.body201, label %if.else

do.body201:                                       ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %149 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %wptr, align 4
  %and206 = and i32 %150, 32760
  %151 = tail call i32 @llvm.bswap.i32(i32 %and206)
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 8
  %reg_WPTR = getelementptr i8, ptr %ndev, i32 2630
  %154 = ptrtoint ptr %reg_WPTR to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %reg_WPTR, align 2
  %conv208 = zext i16 %155 to i32
  %add.ptr209 = getelementptr i8, ptr %153, i32 %conv208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %151) #14, !srcloc !173
  br label %if.end226

if.else:                                          ; preds = %do.end196
  %tx_noupd = getelementptr i8, ptr %ndev, i32 2700
  %156 = ptrtoint ptr %tx_noupd to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_noupd, align 4
  %inc = add i32 %157, 1
  store i32 %inc, ptr %tx_noupd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %157)
  %cmp210 = icmp sgt i32 %157, 40
  br i1 %cmp210, label %if.then212, label %if.else.if.end226_crit_edge

if.else.if.end226_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end226

if.then212:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %tx_noupd to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %tx_noupd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  tail call void @arm_heavy_mb() #14
  %159 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %wptr, align 4
  %and219 = and i32 %160, 32760
  %161 = tail call i32 @llvm.bswap.i32(i32 %and219)
  %162 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr.i, align 8
  %reg_WPTR222 = getelementptr i8, ptr %ndev, i32 2630
  %164 = ptrtoint ptr %reg_WPTR222 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %reg_WPTR222, align 2
  %conv223 = zext i16 %165 to i32
  %add.ptr224 = getelementptr i8, ptr %163, i32 %conv223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %161) #14, !srcloc !173
  br label %if.end226

if.end226:                                        ; preds = %if.then212, %if.else.if.end226_crit_edge, %do.body201
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %166 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %168 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %167, i32 0, i32 12
  %169 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %168)
  %cmp.not.i.i = icmp eq i32 %170, %168
  br i1 %cmp.not.i.i, label %if.end226.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end226.netif_trans_update.exit_crit_edge:      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #16
  %171 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 %168, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end226.netif_trans_update.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %172 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tx_packets, align 4
  %inc227 = add i32 %173, 1
  store i32 %inc227, ptr %tx_packets, align 4
  %174 = ptrtoint ptr %len66 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len66, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %176 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tx_bytes, align 4
  %add230 = add i32 %177, %175
  store i32 %add230, ptr %tx_bytes, align 4
  %178 = ptrtoint ptr %tx_level to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tx_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %179)
  %cmp232 = icmp slt i32 %179, 256
  br i1 %cmp232, label %do.end237, label %netif_trans_update.exit.if.end238_crit_edge

netif_trans_update.exit.if.end238_crit_edge:      ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end238

do.end237:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %180 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %181, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %if.end238

if.end238:                                        ; preds = %do.end237, %netif_trans_update.exit.if.end238_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdx_setmulti(ptr noundef readonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.body89_crit_edge

entry.do.body89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body89

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else9, label %do.body5.preheader

do.body5.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.1 = getelementptr i8, ptr %5, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.1, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.2 = getelementptr i8, ptr %7, i32 6664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.2, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.3 = getelementptr i8, ptr %9, i32 6668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.3, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.4 = getelementptr i8, ptr %11, i32 6672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.4, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.5 = getelementptr i8, ptr %13, i32 6676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.5, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.6 = getelementptr i8, ptr %15, i32 6680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.6, i32 -1) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr8.7 = getelementptr i8, ptr %17, i32 6684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.7, i32 -1) #14, !srcloc !173
  br label %do.body89

if.else9:                                         ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.else9.do.body89_crit_edge, label %do.body15.preheader

if.else9.do.body89_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body89

do.body15.preheader:                              ; preds = %if.else9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.1 = getelementptr i8, ptr %23, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.2 = getelementptr i8, ptr %25, i32 6664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.3 = getelementptr i8, ptr %27, i32 6668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.3, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.4 = getelementptr i8, ptr %29, i32 6672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.4, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.5 = getelementptr i8, ptr %31, i32 6676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.5, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.6 = getelementptr i8, ptr %33, i32 6680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.6, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr21.7 = getelementptr i8, ptr %35, i32 6684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.7, i32 0) #14, !srcloc !173
  br label %do.body28

for.cond47.preheader:                             ; preds = %do.body28
  %36 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %36)
  %ha.0132 = load ptr, ptr %mc, align 4
  %cmp51.not133 = icmp eq ptr %ha.0132, %mc
  br i1 %cmp51.not133, label %for.cond47.preheader.do.body89_crit_edge, label %for.cond47.preheader.for.cond53.preheader_crit_edge

for.cond47.preheader.for.cond53.preheader_crit_edge: ; preds = %for.cond47.preheader
  br label %for.cond53.preheader

for.cond47.preheader.do.body89_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body89

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %do.body15.preheader
  %i.2129 = phi i32 [ %inc43, %do.body28.do.body28_crit_edge ], [ 0, %do.body15.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @arm_heavy_mb() #14
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr32 = getelementptr i8, ptr %38, i32 6784
  %mul33 = shl i32 %i.2129, 3
  %add.ptr34 = getelementptr i8, ptr %add.ptr32, i32 %mul33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr39 = getelementptr i8, ptr %40, i32 6788
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 %mul33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #14, !srcloc !173
  %inc43 = add nuw nsw i32 %i.2129, 1
  %exitcond.not = icmp eq i32 %inc43, 15
  br i1 %exitcond.not, label %for.cond47.preheader, label %do.body28.do.body28_crit_edge

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body28

for.cond53.preheader:                             ; preds = %for.cond53.preheader.for.cond53.preheader_crit_edge, %for.cond47.preheader.for.cond53.preheader_crit_edge
  %ha.0134 = phi ptr [ %ha.0, %for.cond53.preheader.for.cond53.preheader_crit_edge ], [ %ha.0132, %for.cond47.preheader.for.cond53.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 0
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1, align 1
  %xor125.1 = xor i8 %44, %42
  %arrayidx.2 = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.2, align 1
  %xor125.2 = xor i8 %46, %xor125.1
  %arrayidx.3 = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.3, align 1
  %xor125.3 = xor i8 %48, %xor125.2
  %arrayidx.4 = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.4, align 1
  %xor125.4 = xor i8 %50, %xor125.3
  %arrayidx.5 = getelementptr %struct.netdev_hw_addr, ptr %ha.0134, i32 0, i32 2, i32 5
  %51 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.5, align 1
  %xor125.5 = xor i8 %52, %xor125.4
  %conv61 = zext i8 %xor125.5 to i32
  %53 = lshr i32 %conv61, 3
  %shl = and i32 %53, 28
  %add = or i32 %shl, 6656
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr63 = getelementptr i8, ptr %55, i32 %add
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #14, !srcloc !167
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  %rem = and i32 %conv61, 31
  %shl68 = shl nuw i32 1, %rem
  %or69 = or i32 %57, %shl68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr74 = getelementptr i8, ptr %60, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %58) #14, !srcloc !173
  %61 = ptrtoint ptr %ha.0134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %ha.0 = load ptr, ptr %ha.0134, align 4
  %cmp51.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp51.not, label %for.cond53.preheader.do.body89_crit_edge, label %for.cond53.preheader.for.cond53.preheader_crit_edge

for.cond53.preheader.for.cond53.preheader_crit_edge: ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond53.preheader

for.cond53.preheader.do.body89_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body89

do.body89:                                        ; preds = %for.cond53.preheader.do.body89_crit_edge, %for.cond47.preheader.do.body89_crit_edge, %if.else9.do.body89_crit_edge, %do.body5.preheader, %entry.do.body89_crit_edge
  %rxf_val.0 = phi i32 [ 4109, %entry.do.body89_crit_edge ], [ 4108, %if.else9.do.body89_crit_edge ], [ 4108, %for.cond47.preheader.do.body89_crit_edge ], [ 4108, %do.body5.preheader ], [ 4108, %for.cond53.preheader.do.body89_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  tail call void @arm_heavy_mb() #14
  %62 = tail call i32 @llvm.bswap.i32(i32 %rxf_val.0)
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr93 = getelementptr i8, ptr %64, i32 4672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %62) #14, !srcloc !173
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_set_mac(ptr noundef %ndev, ptr noundef %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx5.i = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %8, i32 4720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %6) #14, !srcloc !173
  %9 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx11.i = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %12 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx15.i = getelementptr i8, ptr %10, i32 3
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %14 to i32
  %or17.i = or i32 %shl13.i, %conv16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @arm_heavy_mb() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #14
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr22.i = getelementptr i8, ptr %17, i32 4704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %15) #14, !srcloc !173
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx24.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %21 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %arrayidx28.i = getelementptr i8, ptr %19, i32 5
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %23 to i32
  %or30.i = or i32 %shl26.i, %conv29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !223
  tail call void @arm_heavy_mb() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #14
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %26, i32 4688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %24) #14, !srcloc !173
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_siocdevprivate(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %ifr, ptr noundef %udata, i32 noundef %cmd) #5 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !244
  %1 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !244
  %3 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35312
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %udata, i32 12, i32 -1226833920) #20
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !186

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 12) #14
  %6 = call i32 @llvm.read_register.i32(metadata !157) #14
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !245
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %udata, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #14, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !186

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.then.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #18
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  %call14 = call zeroext i1 @capable(i32 noundef 17) #14
  br i1 %call14, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end16.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb35
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %nic.i = getelementptr i8, ptr %ndev, i32 2948
  %15 = ptrtoint ptr %nic.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nic.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %div.i = sdiv i32 4096, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %14)
  %cmp.i = icmp ult i32 %div.i, %14
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.then.i65

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i65:                                      ; preds = %sw.bb
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 %14
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !167
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %3, align 4
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #14
  %call.i.i64 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i64, label %if.then.i65.cleanup_crit_edge, label %copy_to_user.exit

if.then.i65.cleanup_crit_edge:                    ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i65
  %call.i.i.i69 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef 12) #14
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %udata, ptr noundef nonnull %data, i32 noundef 12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool32.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool32.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %nic.i71 = getelementptr i8, ptr %ndev, i32 2948
  %26 = ptrtoint ptr %nic.i71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nic.i71, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %div.i72 = sdiv i32 4096, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i72, i32 %25)
  %cmp.i73 = icmp ult i32 %div.i72, %25
  br i1 %cmp.i73, label %sw.bb35.cleanup_crit_edge, label %do.body41

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body41:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  call void @arm_heavy_mb() #14
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %add.ptr47 = getelementptr i8, ptr %34, i32 %36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %32) #14, !srcloc !173
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body41, %copy_to_user.exit.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb35.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then.i65.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ 0, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ -95, %if.end16.cleanup_crit_edge ], [ -14, %if.then.i65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @bdx_close(ptr noundef %ndev)
  %call2 = tail call i32 @bdx_open(ptr noundef %ndev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_vlan_rx_add_vid(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__bdx_vlan_rx_vid(ptr noundef %ndev, i16 noundef zeroext %vid, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_vlan_rx_kill_vid(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__bdx_vlan_rx_vid(ptr noundef %ndev, i16 noundef zeroext %vid, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdx_reset(ptr noundef readonly %priv) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12297, i16 %3)
  %cmp = icmp eq i16 %3, 12297
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %port.i = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then.i, label %cond.true.for.body.i.preheader_crit_edge

cond.true.for.body.i.preheader_crit_edge:         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 20480
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  tail call void @arm_heavy_mb() #14
  %9 = or i32 %8, 16777216
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %add.i = add i32 %10, 8
  %11 = tail call i32 @llvm.bswap.i32(i32 %add.i) #14
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %add.ptr7.i = getelementptr i8, ptr %13, i32 20480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %11) #14, !srcloc !173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 10737400) #14
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %add.ptr11.i = getelementptr i8, ptr %16, i32 20480
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  tail call void @arm_heavy_mb() #14
  %18 = and i32 %17, -16777217
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %add.ptr19.i = getelementptr i8, ptr %20, i32 20480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %18) #14, !srcloc !173
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %cond.true.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.056.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %add.ptr25.i = getelementptr i8, ptr %22, i32 20480
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !254
  %24 = and i32 %23, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %24)
  %cmp30.i = icmp eq i32 %24, 196608
  br i1 %cmp30.i, label %if.then32.i, label %for.inc.i

if.then32.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %add.ptr36.i = getelementptr i8, ptr %26, i32 16480
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  br label %cond.end

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #14
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 70
  br i1 %exitcond.not.i, label %do.end43.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end43.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #18
  br label %cond.end

cond.false:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void @arm_heavy_mb() #14
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %add.ptr.i1 = getelementptr i8, ptr %39, i32 4672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 0) #14, !srcloc !173
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %cond.false
  %__ms.03.i = phi i32 [ 100, %cond.false ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.03.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %add.ptr8.i = getelementptr i8, ptr %42, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !258
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %add.ptr13.i = getelementptr i8, ptr %44, i32 28720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #14, !srcloc !173
  br label %for.body.i2

for.body.i2:                                      ; preds = %while.body22.preheader.i.for.body.i2_crit_edge, %while.end.i
  %i.05.i = phi i32 [ 0, %while.end.i ], [ %inc.i3, %while.body22.preheader.i.for.body.i2_crit_edge ]
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %add.ptr15.i = getelementptr i8, ptr %46, i32 28672
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool17.not.i = icmp eq i32 %48, 0
  br i1 %tobool17.not.i, label %while.body22.preheader.i, label %for.body.i2.bdx_sw_reset.exit_crit_edge

for.body.i2.bdx_sw_reset.exit_crit_edge:          ; preds = %for.body.i2
  call void @__sanitizer_cov_trace_pc() #16
  br label %bdx_sw_reset.exit

while.body22.preheader.i:                         ; preds = %for.body.i2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #14
  %inc.i3 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i4 = icmp eq i32 %inc.i3, 50
  br i1 %exitcond.not.i4, label %if.then25.i, label %while.body22.preheader.i.for.body.i2_crit_edge

while.body22.preheader.i.for.body.i2_crit_edge:   ; preds = %while.body22.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i2

if.then25.i:                                      ; preds = %while.body22.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  %ndev.i = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 1
  %59 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.41) #18
  br label %bdx_sw_reset.exit

bdx_sw_reset.exit:                                ; preds = %if.then25.i, %for.body.i2.bdx_sw_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @arm_heavy_mb() #14
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %add.ptr31.i = getelementptr i8, ptr %62, i32 20768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  tail call void @arm_heavy_mb() #14
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %add.ptr36.i5 = getelementptr i8, ptr %64, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i5, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  tail call void @arm_heavy_mb() #14
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %add.ptr41.i = getelementptr i8, ptr %66, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 0) #14, !srcloc !173
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 8
  %add.ptr45.i = getelementptr i8, ptr %68, i32 20736
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  tail call void @arm_heavy_mb() #14
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %add.ptr53.i = getelementptr i8, ptr %71, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 16777216) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  tail call void @arm_heavy_mb() #14
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %add.ptr58.i = getelementptr i8, ptr %73, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 16777216) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %add.ptr74.i = getelementptr i8, ptr %75, i32 16512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %add.ptr74.1.i = getelementptr i8, ptr %77, i32 16528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.1.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %add.ptr74.2.i = getelementptr i8, ptr %79, i32 16544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.2.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %add.ptr74.3.i = getelementptr i8, ptr %81, i32 16560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.3.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  %add.ptr74.4.i = getelementptr i8, ptr %83, i32 16576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.4.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  %add.ptr74.5.i = getelementptr i8, ptr %85, i32 16592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.5.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %add.ptr74.6.i = getelementptr i8, ptr %87, i32 16608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.6.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %add.ptr74.7.i = getelementptr i8, ptr %89, i32 16624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.7.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !267
  tail call void @arm_heavy_mb() #14
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %add.ptr82.i = getelementptr i8, ptr %91, i32 28688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  tail call void @arm_heavy_mb() #14
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %add.ptr87.i = getelementptr i8, ptr %93, i32 28720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !269
  tail call void @arm_heavy_mb() #14
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %add.ptr92.i = getelementptr i8, ptr %95, i32 28704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 0) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @arm_heavy_mb() #14
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 8
  %add.ptr97.i = getelementptr i8, ptr %97, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 0) #14, !srcloc !173
  br label %cond.end

cond.end:                                         ; preds = %bdx_sw_reset.exit, %do.end43.i, %if.then32.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdx_rx_alloc_skbs(ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rxdb = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %rxdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxdb, align 8
  %top.i = getelementptr inbounds %struct.rxdb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %top.i, align 4
  %dno.094 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dno.094)
  %cmp95 = icmp sgt i32 %dno.094, 0
  br i1 %cmp95, label %while.body.lr.ph, label %entry.do.body48_crit_edge

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body48

while.body.lr.ph:                                 ; preds = %entry
  %ndev = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 1
  %pktsz = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 10
  %nelem.i = getelementptr inbounds %struct.rxdb, ptr %1, i32 0, i32 2
  %elems.i = getelementptr inbounds %struct.rxdb, ptr %1, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 18
  %va = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 1
  %wptr = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 3
  %memsz = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %dno.096 = phi i32 [ %dno.094, %while.body.lr.ph ], [ %dno.0, %if.end47.while.body_crit_edge ]
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %pktsz to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pktsz, align 4
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %5, i32 noundef %add, i32 noundef 2592) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.do.body48_crit_edge, label %if.end

while.body.do.body48_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body48

if.end:                                           ; preds = %while.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %12 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp slt i32 %13, 1
  br i1 %cmp.i, label %do.body2.i, label %bdx_rxdb_alloc_elem.exit, !prof !188

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 945, 0\0A.popsection", ""() #14, !srcloc !271
  unreachable

bdx_rxdb_alloc_elem.exit:                         ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dec.i = add nsw i32 %13, -1
  %16 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %top.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %dec.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i90 = icmp slt i32 %18, 0
  br i1 %cmp.i90, label %bdx_rxdb_alloc_elem.exit.do.body3.i_crit_edge, label %lor.rhs.i, !prof !188

bdx_rxdb_alloc_elem.exit.do.body3.i_crit_edge:    ; preds = %bdx_rxdb_alloc_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

lor.rhs.i:                                        ; preds = %bdx_rxdb_alloc_elem.exit
  %19 = ptrtoint ptr %nelem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nelem.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp1.not.i = icmp sgt i32 %20, %18
  br i1 %cmp1.not.i, label %bdx_rxdb_addr_elem.exit, label %lor.rhs.i.do.body3.i_crit_edge, !prof !186

lor.rhs.i.do.body3.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3.i

do.body3.i:                                       ; preds = %lor.rhs.i.do.body3.i_crit_edge, %bdx_rxdb_alloc_elem.exit.do.body3.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/tehuti/tehuti.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

bdx_rxdb_addr_elem.exit:                          ; preds = %lor.rhs.i
  %21 = ptrtoint ptr %elems.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %elems.i, align 4
  %add.ptr.i91 = getelementptr %struct.rx_map, ptr %22, i32 %18
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %pktsz to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pktsz, align 4
  %call.i92 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #14
  br i1 %call.i92, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %bdx_rxdb_addr_elem.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %bdx_rxdb_addr_elem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv6 = zext i16 %28 to i32
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %26, i32 noundef %conv6) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %26 to i32
  %sub.i = add i32 %34, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i93 = getelementptr %struct.page, ptr %33, i32 %shr.i
  %and.i = and i32 %34, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i93, i32 noundef %and.i, i32 noundef %conv6, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv8 = zext i32 %retval.0.i to i64
  %35 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv8, ptr %add.ptr.i91, align 8
  %skb9 = getelementptr %struct.rx_map, ptr %22, i32 %18, i32 1
  %36 = ptrtoint ptr %skb9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %skb9, align 8
  %37 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %va, align 4
  %39 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wptr, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 50331904, ptr %add.ptr, align 4
  %va_lo = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr, i32 0, i32 1
  %42 = ptrtoint ptr %va_lo to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %va_lo, align 4
  %43 = load i64, ptr %add.ptr.i91, align 8
  %conv13 = trunc i64 %43 to i32
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv13)
  %pa_lo = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr, i32 0, i32 3
  %45 = ptrtoint ptr %pa_lo to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pa_lo, align 4
  %pa_hi = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr, i32 0, i32 4
  %46 = ptrtoint ptr %pa_hi to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pa_hi, align 4
  %47 = ptrtoint ptr %pktsz to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pktsz, align 4
  %conv16 = zext i16 %48 to i32
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv16)
  %len = getelementptr inbounds %struct.rxf_desc, ptr %add.ptr, i32 0, i32 5
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %len, align 4
  %51 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr, align 4
  %add19 = add i32 %52, 24
  store i32 %add19, ptr %wptr, align 4
  %53 = ptrtoint ptr %memsz to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %memsz, align 4
  %conv23 = zext i16 %54 to i32
  %sub24 = sub i32 %add19, %conv23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub24)
  %cmp25 = icmp sgt i32 %sub24, -1
  br i1 %cmp25, label %if.then29, label %dma_map_single_attrs.exit.if.end47_crit_edge, !prof !188

dma_map_single_attrs.exit.if.end47_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then29:                                        ; preds = %dma_map_single_attrs.exit
  %55 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub24, ptr %wptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %conv23)
  %cmp32.not = icmp eq i32 %add19, %conv23
  br i1 %cmp32.not, label %if.then29.if.end47_crit_edge, label %if.then34

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %va, align 4
  %add.ptr42 = getelementptr i8, ptr %57, i32 %conv23
  %58 = call ptr @memcpy(ptr %57, ptr %add.ptr42, i32 %sub24)
  br label %if.end47

if.end47:                                         ; preds = %if.then34, %if.then29.if.end47_crit_edge, %dma_map_single_attrs.exit.if.end47_crit_edge
  %dno.0 = add i32 %dno.096, -1
  %cmp = icmp sgt i32 %dno.0, 0
  br i1 %cmp, label %if.end47.while.body_crit_edge, label %if.end47.do.body48_crit_edge

if.end47.do.body48_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body48

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

do.body48:                                        ; preds = %if.end47.do.body48_crit_edge, %while.body.do.body48_crit_edge, %entry.do.body48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !272
  tail call void @arm_heavy_mb() #14
  %wptr52 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 3
  %59 = ptrtoint ptr %wptr52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wptr52, align 4
  %and = and i32 %60, 32760
  %61 = tail call i32 @llvm.bswap.i32(i32 %and)
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %reg_WPTR = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 7
  %64 = ptrtoint ptr %reg_WPTR to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %reg_WPTR, align 2
  %conv54 = zext i16 %65 to i32
  %add.ptr55 = getelementptr i8, ptr %63, i32 %conv54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %61) #14, !srcloc !173
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdx_fifo_init(ptr nocapture noundef readonly %priv, ptr noundef %f, i32 noundef %fsz_type, i16 noundef zeroext %reg_CFG0, i16 noundef zeroext %reg_CFG1, i16 noundef zeroext %reg_RPTR, i16 noundef zeroext %reg_WPTR) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 4096, %fsz_type
  %0 = call ptr @memset(ptr %f, i32 0, i32 32)
  %pdev = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 18
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %conv1 = and i32 %mul, 61440
  %add = or i32 %conv1, 1024
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef %f, i32 noundef 2592, i32 noundef 0) #14
  %va = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %va, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i32 %mul to i16
  %reg_CFG04 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %reg_CFG04 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %reg_CFG0, ptr %reg_CFG04, align 4
  %reg_CFG15 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 5
  %5 = ptrtoint ptr %reg_CFG15 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %reg_CFG1, ptr %reg_CFG15, align 2
  %reg_RPTR6 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 6
  %6 = ptrtoint ptr %reg_RPTR6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %reg_RPTR, ptr %reg_RPTR6, align 4
  %reg_WPTR7 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 7
  %7 = ptrtoint ptr %reg_WPTR7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %reg_WPTR, ptr %reg_WPTR7, align 2
  %rptr = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rptr, align 4
  %wptr = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 3
  %9 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wptr, align 4
  %memsz8 = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 8
  %10 = ptrtoint ptr %memsz8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %memsz8, align 4
  %conv10 = add i16 %conv, -1
  %size_mask = getelementptr inbounds %struct.fifo, ptr %f, i32 0, i32 9
  %11 = ptrtoint ptr %size_mask to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv10, ptr %size_mask, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  %and = and i32 %13, -4096
  %or = or i32 %and, %fsz_type
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %conv15 = zext i16 %reg_CFG0 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %conv20 = zext i16 %reg_CFG1 to i32
  %add.ptr21 = getelementptr i8, ptr %18, i32 %conv20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #14, !srcloc !173
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdx_link_changed(ptr nocapture noundef readonly %priv) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %ndev = getelementptr inbounds %struct.bdx_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then3, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 4
  tail call void @netif_carrier_off(ptr noundef %12) #14
  br label %if.end14.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.if.end14_crit_edge, label %if.then9

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i25 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i25, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #14
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  tail call void @netif_carrier_on(ptr noundef %16) #14
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then9, %if.then3
  %.str.51.sink = phi ptr [ @.str.51, %if.then9 ], [ @.str.50, %if.then3 ]
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull %.str.51.sink) #18
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge, %if.then.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_isr_napi(i32 noundef %irq, ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20736
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !276
  %3 = and i32 %2, 1133250568
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body7, label %if.end, !prof !188

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !277
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr11 = getelementptr i8, ptr %6, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1133250568) #14, !srcloc !173
  br label %cleanup

if.end:                                           ; preds = %entry
  %and14 = and i32 %4, 134743107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %if.end
  %and.i = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %if.then.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %rxf_fifo0.i = getelementptr i8, ptr %dev, i32 2568
  tail call fastcc void @bdx_rx_alloc_skbs(ptr noundef %add.ptr.i, ptr noundef %rxf_fifo0.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then16.if.end.i_crit_edge
  %and1.i = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @bdx_link_changed(ptr noundef %add.ptr.i) #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %and5.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %ndev.i = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.52) #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %and9.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end17_crit_edge, label %if.then11.i

if.end8.i.if.end17_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %ndev12.i = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %ndev12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev12.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.53) #18
  br label %if.end17

if.end17:                                         ; preds = %if.then11.i, %if.end8.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %and18 = and i32 %4, 34816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.do.body47_crit_edge, label %if.then20

if.end17.do.body47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body47

if.then20:                                        ; preds = %if.end17
  %napi = getelementptr i8, ptr %dev, i32 2312
  %call21 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call21, label %if.then28, label %if.else, !prof !186

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %cleanup

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr33 = getelementptr i8, ptr %12, i32 16560
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !278
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr40 = getelementptr i8, ptr %15, i32 16544
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !279
  br label %do.body47

do.body47:                                        ; preds = %if.else, %if.end17.do.body47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !280
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr51 = getelementptr i8, ptr %18, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 1133250568) #14, !srcloc !173
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %if.then28, %do.body7
  %retval.0 = phi i32 [ 0, %do.body7 ], [ 1, %if.then28 ], [ 1, %do.body47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bdx_vlan_rx_vid(ptr nocapture noundef readonly %ndev, i16 noundef zeroext %vid, i32 noundef %enable) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 706, i32 noundef %conv, i32 noundef %enable) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vid)
  %cmp = icmp ugt i16 %vid, 4095
  br i1 %cmp, label %do.end10, label %if.end, !prof !188

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = lshr i32 %conv, 3
  %mul = and i32 %0, 8188
  %add = add nuw nsw i32 %mul, 6144
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !167
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !281
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef 714, i32 noundef %add, i32 noundef %4, i32 noundef %shl) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool24.not = icmp eq i32 %enable, 0
  %or = or i32 %4, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %val.0 = select i1 %tobool24.not, i32 %and, i32 %or
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.62, i32 noundef 719, i32 noundef %val.0) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !282
  tail call void @arm_heavy_mb() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr36 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %5) #14, !srcloc !173
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdx_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.5, i32 noundef 32) #14
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.72, i32 noundef 32) #14
  %pdev = getelementptr i8, ptr %netdev, i32 2944
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call8 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bdx_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ecoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rdintcm1 = getelementptr i8, ptr %netdev, i32 2956
  %0 = ptrtoint ptr %rdintcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rdintcm1, align 4
  %tdintcm2 = getelementptr i8, ptr %netdev, i32 2960
  %2 = ptrtoint ptr %tdintcm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tdintcm2, align 8
  %and = shl i32 %1, 1
  %mul = and i32 %and, 65534
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %rx_coalesce_usecs, align 4
  %5 = lshr i32 %1, 13
  %6 = trunc i32 %5 to i16
  %div.lhs.trunc = and i16 %6, 1920
  %div20 = udiv i16 %div.lhs.trunc, 24
  %div.zext = zext i16 %div20 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 2
  %7 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.zext, ptr %rx_max_coalesced_frames, align 4
  %and7 = shl i32 %3, 1
  %mul8 = and i32 %and7, 65534
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul8, ptr %tx_coalesce_usecs, align 4
  %9 = lshr i32 %3, 17
  %mul11 = and i32 %9, 120
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 6
  %10 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul11, ptr %tx_max_coalesced_frames, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ecoal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 2
  %4 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_max_coalesced_frames, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecoal, i32 0, i32 6
  %6 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_max_coalesced_frames, align 4
  %mul = mul i32 %5, 24
  %sub = add i32 %mul, 127
  %mul3 = shl i32 %7, 4
  %sub5 = add i32 %mul3, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %1)
  %cmp = icmp ugt i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp7 = icmp ugt i32 %3, 65535
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub)
  %cmp9 = icmp ugt i32 %sub, 2047
  %or.cond61 = select i1 %or.cond, i1 true, i1 %cmp9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %sub5)
  %cmp11 = icmp sgt i32 %sub5, 2047
  %or.cond62 = select i1 %or.cond61, i1 true, i1 %cmp11
  br i1 %or.cond62, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %div6 = sdiv i32 %sub5, 128
  %div159 = lshr i32 %3, 1
  %div58 = lshr i32 %1, 1
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rdintcm12 = getelementptr i8, ptr %netdev, i32 2956
  %8 = ptrtoint ptr %rdintcm12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdintcm12, align 4
  %and = and i32 %9, 32768
  %and15 = and i32 %9, 983040
  %10 = shl nuw nsw i32 %sub, 13
  %shl18 = and i32 %10, -1048576
  %or = or i32 %shl18, %div58
  %or17 = or i32 %or, %and
  %or19 = or i32 %or17, %and15
  %tdintcm20 = getelementptr i8, ptr %netdev, i32 2960
  %11 = ptrtoint ptr %tdintcm20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tdintcm20, align 8
  %and22 = and i32 %12, 32768
  %shl26 = shl i32 %div6, 20
  %or24 = or i32 %shl26, %div159
  %or27 = or i32 %or24, %and22
  store i32 %or19, ptr %rdintcm12, align 4
  store i32 %or27, ptr %tdintcm20, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !283
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 20768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #14, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr34 = getelementptr i8, ptr %18, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %16) #14, !srcloc !173
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bdx_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1365, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2048, ptr %tx_max_pending, align 4
  %rxf_size = getelementptr i8, ptr %netdev, i32 2955
  %2 = ptrtoint ptr %rxf_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rxf_size, align 1
  %conv = zext i8 %3 to i32
  %mul.i = shl i32 4096, %conv
  %div.i = udiv i32 %mul.i, 24
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div.i, ptr %rx_pending, align 4
  %txd_size = getelementptr i8, ptr %netdev, i32 2952
  %5 = ptrtoint ptr %txd_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %txd_size, align 8
  %conv4 = zext i8 %6 to i32
  %mul.i10 = shl i32 4096, %conv4
  %div.i11 = sdiv i32 %mul.i10, 16
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i11, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bdx_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %1)
  %cmp2.not = icmp ugt i32 %1, 170
  br i1 %cmp2.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 341, i32 %1)
  %cmp2.not.1 = icmp ugt i32 %1, 341
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 682, i32 %1)
  %cmp2.not.2 = icmp ugt i32 %1, 682
  %spec.select = select i1 %cmp2.not.2, i32 3, i32 2
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp28 = phi i1 [ false, %for.inc.for.end_crit_edge ], [ false, %entry.for.end_crit_edge ], [ true, %for.inc.1 ]
  %cmp3 = phi i32 [ 1, %for.inc.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.1 ]
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp10.not = icmp ugt i32 %3, 256
  br i1 %cmp10.not, label %for.inc13, label %for.end.for.end15_crit_edge

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end15

for.inc13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp10.not.1 = icmp ugt i32 %3, 512
  br i1 %cmp10.not.1, label %for.inc13.1, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end15

for.inc13.1:                                      ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp10.not.2 = icmp ugt i32 %3, 1024
  %spec.select72 = select i1 %cmp10.not.2, i32 3, i32 2
  br label %for.end15

for.end15:                                        ; preds = %for.inc13.1, %for.inc13.for.end15_crit_edge, %for.end.for.end15_crit_edge
  %cmp16 = phi i32 [ 1, %for.inc13.for.end15_crit_edge ], [ 0, %for.end.for.end15_crit_edge ], [ %spec.select72, %for.inc13.1 ]
  %rxf_size = getelementptr i8, ptr %netdev, i32 2955
  %4 = ptrtoint ptr %rxf_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rxf_size, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp3, i32 %conv)
  %cmp19 = icmp eq i32 %cmp3, %conv
  br i1 %cmp19, label %land.lhs.true, label %for.end15.if.end25_crit_edge

for.end15.if.end25_crit_edge:                     ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true:                                    ; preds = %for.end15
  %txd_size = getelementptr i8, ptr %netdev, i32 2952
  %6 = ptrtoint ptr %txd_size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txd_size, align 8
  %conv21 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp16, i32 %conv21)
  %cmp22 = icmp eq i32 %cmp16, %conv21
  br i1 %cmp22, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %for.end15.if.end25_crit_edge
  %conv26 = trunc i32 %cmp3 to i8
  %8 = ptrtoint ptr %rxf_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv26, ptr %rxf_size, align 1
  %conv31 = sext i1 %cmp28 to i8
  %spec.select73 = add nsw i8 %conv26, %conv31
  %9 = getelementptr i8, ptr %netdev, i32 2954
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select73, ptr %9, align 2
  %conv35 = trunc i32 %cmp16 to i8
  %txd_size36 = getelementptr i8, ptr %netdev, i32 2952
  %11 = ptrtoint ptr %txd_size36 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv35, ptr %txd_size36, align 8
  %txf_size = getelementptr i8, ptr %netdev, i32 2953
  %12 = ptrtoint ptr %txf_size to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv35, ptr %txf_size, align 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end25.cleanup_crit_edge, label %if.then38

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = tail call i32 @bdx_close(ptr noundef %netdev)
  %call40 = tail call i32 @bdx_open(ptr noundef %netdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bdx_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = call ptr @memcpy(ptr %data, ptr @bdx_stat_names, i32 736)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bdx_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats_flag = getelementptr i8, ptr %netdev, i32 2756
  %0 = ptrtoint ptr %stats_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %hw_stats.i = getelementptr i8, ptr %netdev, i32 2760
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %addr.0148.i = phi i32 [ 29184, %if.then ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.0147.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %addr.0148.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %6, i32 8
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %addr.0148.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #14
  %arrayidx.i = getelementptr i64, ptr %hw_stats.i, i32 %i.0147.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx.i, align 8
  %add.i = add nuw nsw i32 %addr.0148.i, 16
  %inc.i = add nuw nsw i32 %i.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %bdx_update_stats.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

bdx_update_stats.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i138.i = getelementptr i8, ptr %15, i32 29424
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i140.i = getelementptr i8, ptr %18, i32 29432
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i140.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %20 = zext i32 %19 to i64
  %21 = zext i32 %16 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #14
  %arrayidx13.i = getelementptr i8, ptr %netdev, i32 2856
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx13.i, align 8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i138.1.i = getelementptr i8, ptr %27, i32 29440
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i140.1.i = getelementptr i8, ptr %30, i32 29448
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i140.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %32 = zext i32 %31 to i64
  %33 = zext i32 %28 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #14
  %arrayidx13.1.i = getelementptr i8, ptr %netdev, i32 2864
  %37 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx13.1.i, align 8
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i138.2.i = getelementptr i8, ptr %39, i32 29456
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i140.2.i = getelementptr i8, ptr %42, i32 29464
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i140.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %44 = zext i32 %43 to i64
  %45 = zext i32 %40 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or i64 %46, %44
  %48 = tail call i64 @llvm.bswap.i64(i64 %47) #14
  %arrayidx13.2.i = getelementptr i8, ptr %netdev, i32 2872
  %49 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx13.2.i, align 8
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i138.3.i = getelementptr i8, ptr %51, i32 29472
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.3.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i140.3.i = getelementptr i8, ptr %54, i32 29480
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i140.3.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %56 = zext i32 %55 to i64
  %57 = zext i32 %52 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or i64 %58, %56
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #14
  %arrayidx13.3.i = getelementptr i8, ptr %netdev, i32 2880
  %61 = ptrtoint ptr %arrayidx13.3.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx13.3.i, align 8
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %63, i32 29552
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i143.i = getelementptr i8, ptr %66, i32 29560
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i143.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %68 = zext i32 %67 to i64
  %69 = zext i32 %64 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %68
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #14
  %arrayidx40.i = getelementptr i8, ptr %netdev, i32 2888
  %73 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %arrayidx40.i, align 8
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i141.1.i = getelementptr i8, ptr %75, i32 29568
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i143.1.i = getelementptr i8, ptr %78, i32 29576
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i143.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %80 = zext i32 %79 to i64
  %81 = zext i32 %76 to i64
  %82 = shl nuw i64 %81, 32
  %83 = or i64 %82, %80
  %84 = tail call i64 @llvm.bswap.i64(i64 %83) #14
  %arrayidx40.1.i = getelementptr i8, ptr %netdev, i32 2896
  %85 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx40.1.i, align 8
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i141.2.i = getelementptr i8, ptr %87, i32 29584
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i143.2.i = getelementptr i8, ptr %90, i32 29592
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i143.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %92 = zext i32 %91 to i64
  %93 = zext i32 %88 to i64
  %94 = shl nuw i64 %93, 32
  %95 = or i64 %94, %92
  %96 = tail call i64 @llvm.bswap.i64(i64 %95) #14
  %arrayidx40.2.i = getelementptr i8, ptr %netdev, i32 2904
  %97 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %arrayidx40.2.i, align 8
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i144.i = getelementptr i8, ptr %99, i32 29632
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i146.i = getelementptr i8, ptr %102, i32 29640
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i146.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %104 = zext i32 %103 to i64
  %105 = zext i32 %100 to i64
  %106 = shl nuw i64 %105, 32
  %107 = or i64 %106, %104
  %108 = tail call i64 @llvm.bswap.i64(i64 %107) #14
  %arrayidx67.i = getelementptr i8, ptr %netdev, i32 2912
  %109 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %arrayidx67.i, align 8
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i144.1.i = getelementptr i8, ptr %111, i32 29648
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i146.1.i = getelementptr i8, ptr %114, i32 29656
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i146.1.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %116 = zext i32 %115 to i64
  %117 = zext i32 %112 to i64
  %118 = shl nuw i64 %117, 32
  %119 = or i64 %118, %116
  %120 = tail call i64 @llvm.bswap.i64(i64 %119) #14
  %arrayidx67.1.i = getelementptr i8, ptr %netdev, i32 2920
  %121 = ptrtoint ptr %arrayidx67.1.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx67.1.i, align 8
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i144.2.i = getelementptr i8, ptr %123, i32 29664
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i146.2.i = getelementptr i8, ptr %126, i32 29672
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i146.2.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %128 = zext i32 %127 to i64
  %129 = zext i32 %124 to i64
  %130 = shl nuw i64 %129, 32
  %131 = or i64 %130, %128
  %132 = tail call i64 @llvm.bswap.i64(i64 %131) #14
  %arrayidx67.2.i = getelementptr i8, ptr %netdev, i32 2928
  %133 = ptrtoint ptr %arrayidx67.2.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %arrayidx67.2.i, align 8
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i144.3.i = getelementptr i8, ptr %135, i32 29680
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144.3.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6.i146.3.i = getelementptr i8, ptr %138, i32 29688
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i146.3.i) #14, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !286
  %140 = zext i32 %139 to i64
  %141 = zext i32 %136 to i64
  %142 = shl nuw i64 %141, 32
  %143 = or i64 %142, %140
  %144 = tail call i64 @llvm.bswap.i64(i64 %143) #14
  %arrayidx67.3.i = getelementptr i8, ptr %netdev, i32 2936
  %145 = ptrtoint ptr %arrayidx67.3.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %arrayidx67.3.i, align 8
  %146 = call ptr @memcpy(ptr %data, ptr %hw_stats.i, i32 184)
  br label %if.end

if.end:                                           ; preds = %bdx_update_stats.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bdx_get_sset_count(ptr nocapture noundef readonly %netdev, i32 noundef %stringset) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond1 = icmp eq i32 %stringset, 1
  br i1 %cond1, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %stats_flag = getelementptr i8, ptr %netdev, i32 2756
  %0 = ptrtoint ptr %stats_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 23
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bdx_get_link_ksettings(ptr nocapture noundef readnone %netdev, ptr nocapture noundef %ecmd) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5120, ptr %link_modes, align 4
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 4
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %advertising, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10000, ptr %speed, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_tehuti__480_2443_bdx_module_init6, !1, !"__initcall__kmod_tehuti__480_2443_bdx_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2443, i32 1}
!2 = !{ptr @__exitcall_bdx_module_exit, !3, !"__exitcall_bdx_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2452, i32 1}
!4 = !{ptr @__UNIQUE_ID_file481, !5, !"__UNIQUE_ID_file481", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2454, i32 1}
!6 = !{ptr @__UNIQUE_ID_license482, !5, !"__UNIQUE_ID_license482", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author483, !8, !"__UNIQUE_ID_author483", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2455, i32 1}
!9 = !{ptr @__UNIQUE_ID_description484, !10, !"__UNIQUE_ID_description484", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2456, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware485, !12, !"__UNIQUE_ID_firmware485", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2457, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2440, i32 2}
!15 = !{ptr @txd_sizes, !16, !"txd_sizes", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1453, i32 3}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2431, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @print_driver_id._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @print_driver_id._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2432, i32 2}
!27 = !{ptr @print_driver_id._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @print_driver_id._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bdx_pci_driver, !31, !"bdx_pci_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2419, i32 26}
!32 = !{ptr @bdx_pci_tbl, !33, !"bdx_pci_tbl", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 65, i32 35}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1905, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bdx_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bdx_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1918, i32 3}
!41 = !{ptr @bdx_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bdx_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1924, i32 3}
!45 = !{ptr @bdx_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bdx_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1931, i32 3}
!49 = !{ptr @bdx_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bdx_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1937, i32 3}
!53 = !{ptr @bdx_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bdx_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @bdx_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2028, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2032, i32 4}
!60 = !{ptr @bdx_probe._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bdx_probe._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2039, i32 4}
!64 = !{ptr @bdx_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @bdx_probe._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 106, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @print_hw_id._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @print_hw_id._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 108, i32 2}
!75 = !{ptr @print_hw_id._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @print_hw_id._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 471, i32 2}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bdx_hw_reset_direct._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @bdx_hw_reset_direct._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @bdx_netdev_ops, !83, !"bdx_netdev_ops", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1852, i32 36}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 495, i32 2}
!86 = !{ptr @bdx_hw_reset._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @bdx_hw_reset._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 519, i32 26}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1552, i32 25}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 163, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @bdx_fifo_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @bdx_fifo_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 1009, i32 25}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 330, i32 30}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 351, i32 26}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 208, i32 27}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 214, i32 27}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 230, i32 26}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 233, i32 26}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 117, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @print_fw_id._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @print_fw_id._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 653, i32 4}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bdx_siocdevprivate._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @bdx_siocdevprivate._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!127 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 706, i32 2}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__bdx_vlan_rx_vid._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @__bdx_vlan_rx_vid._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 708, i32 3}
!139 = !{ptr @__bdx_vlan_rx_vid._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @__bdx_vlan_rx_vid._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 714, i32 2}
!143 = !{ptr @__bdx_vlan_rx_vid._entry.66, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @__bdx_vlan_rx_vid._entry_ptr.68, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 719, i32 2}
!147 = !{ptr @__bdx_vlan_rx_vid._entry.69, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @__bdx_vlan_rx_vid._entry_ptr.71, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @bdx_set_ethtool_ops.bdx_ethtool_ops, !150, !"bdx_ethtool_ops", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2366, i32 34}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2138, i32 31}
!153 = !{ptr @bdx_stat_names, !154, !"bdx_stat_names", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 2066, i32 2}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/tehuti/tehuti.c", i32 122, i32 20}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 6790030}
!168 = !{i64 2157877337}
!169 = !{i64 2157877834}
!170 = !{i64 2157878331}
!171 = !{i64 2157931137}
!172 = !{i64 2157931379}
!173 = !{i64 6789612}
!174 = !{i64 2157932623}
!175 = !{i64 2157932858}
!176 = !{i64 2157934837}
!177 = !{i64 2157935402}
!178 = !{i64 2158114244}
!179 = !{i64 2157985967}
!180 = !{i64 2157986526}
!181 = !{i64 2157987085}
!182 = !{i64 2157987644}
!183 = !{i64 2157988203}
!184 = !{i64 2157988762}
!185 = !{i64 2158080105}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2158080540, i64 2158081042, i64 2158080577, i64 2158080633, i64 2158080667, i64 2158080691, i64 2158080732, i64 2158080753, i64 2158080781, i64 2158080815}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2158082218, i64 2158082720, i64 2158082255, i64 2158082311, i64 2158082345, i64 2158082369, i64 2158082410, i64 2158082431, i64 2158082459, i64 2158082493}
!190 = !{i64 2158083908, i64 2158084410, i64 2158083945, i64 2158084001, i64 2158084035, i64 2158084059, i64 2158084100, i64 2158084121, i64 2158084149, i64 2158084183}
!191 = !{i64 2158046269, i64 2158046771, i64 2158046306, i64 2158046362, i64 2158046396, i64 2158046420, i64 2158046461, i64 2158046482, i64 2158046510, i64 2158046544}
!192 = !{i64 2158044375, i64 2158044877, i64 2158044412, i64 2158044468, i64 2158044502, i64 2158044526, i64 2158044567, i64 2158044588, i64 2158044616, i64 2158044650}
!193 = !{i64 2158085741, i64 2158086243, i64 2158085778, i64 2158085834, i64 2158085868, i64 2158085892, i64 2158085933, i64 2158085954, i64 2158085982, i64 2158086016}
!194 = !{i64 2158087323}
!195 = !{i64 2158088157, i64 2158088659, i64 2158088194, i64 2158088250, i64 2158088284, i64 2158088308, i64 2158088349, i64 2158088370, i64 2158088398, i64 2158088432}
!196 = !{i64 2158093852}
!197 = !{i64 2158021519}
!198 = !{i64 2158022271, i64 2158022773, i64 2158022308, i64 2158022364, i64 2158022398, i64 2158022422, i64 2158022463, i64 2158022484, i64 2158022512, i64 2158022546}
!199 = !{i64 2158000750, i64 2158001251, i64 2158000787, i64 2158000843, i64 2158000877, i64 2158000901, i64 2158000942, i64 2158000963, i64 2158000991, i64 2158001025}
!200 = !{i64 2158002787, i64 2158003288, i64 2158002824, i64 2158002880, i64 2158002914, i64 2158002938, i64 2158002979, i64 2158003000, i64 2158003028, i64 2158003062}
!201 = !{i64 2158028014}
!202 = !{i64 2157894539}
!203 = !{i64 2157895628}
!204 = !{i64 2157896187}
!205 = !{i64 2158060476}
!206 = !{i64 2158096781}
!207 = !{i64 2157898054}
!208 = !{i64 2157899616}
!209 = !{i64 2157914983}
!210 = !{i64 2157915452}
!211 = !{i64 2157915923}
!212 = !{i64 2157916406}
!213 = !{i64 2157916875}
!214 = !{i64 2157917323}
!215 = !{i64 2157917909}
!216 = !{i64 2157918465}
!217 = !{i64 2157918982}
!218 = !{i64 2157925303}
!219 = !{i64 2157925787}
!220 = !{i64 2157927954}
!221 = !{i64 2157909768}
!222 = !{i64 2157910226}
!223 = !{i64 2157910684}
!224 = !{i64 2157928505}
!225 = !{i64 2157929577}
!226 = !{i64 2157880727}
!227 = !{i64 2157930454}
!228 = !{i64 824023, i64 824084}
!229 = !{i64 2158061591, i64 2158062093, i64 2158061628, i64 2158061684, i64 2158061718, i64 2158061742, i64 2158061783, i64 2158061804, i64 2158061832, i64 2158061866}
!230 = !{i64 2158048119, i64 2158048621, i64 2158048156, i64 2158048212, i64 2158048246, i64 2158048270, i64 2158048311, i64 2158048332, i64 2158048360, i64 2158048394}
!231 = !{i64 2158071630, i64 2158072132, i64 2158071667, i64 2158071723, i64 2158071757, i64 2158071781, i64 2158071822, i64 2158071843, i64 2158071871, i64 2158071905}
!232 = !{i64 2158073320, i64 2158073822, i64 2158073357, i64 2158073413, i64 2158073447, i64 2158073471, i64 2158073512, i64 2158073533, i64 2158073561, i64 2158073595}
!233 = !{!"branch_weights", i32 4001, i32 4000000}
!234 = !{i64 2158075182, i64 2158075684, i64 2158075219, i64 2158075275, i64 2158075309, i64 2158075333, i64 2158075374, i64 2158075395, i64 2158075423, i64 2158075457}
!235 = !{i64 2158076764}
!236 = !{i64 2158077321}
!237 = !{i64 2157976875}
!238 = !{i64 2157977472}
!239 = !{i64 2157977947}
!240 = !{i64 2157978419}
!241 = !{i64 2157982593}
!242 = !{i64 2157982856}
!243 = !{i64 2157985150}
!244 = !{!"auto-init"}
!245 = !{i64 5631760}
!246 = !{i64 5631957}
!247 = !{i64 2153117190}
!248 = !{i64 2157963937}
!249 = !{i64 2157966149}
!250 = !{i64 2157937559}
!251 = !{i64 2157937878}
!252 = !{i64 2157939215}
!253 = !{i64 2157939520}
!254 = !{i64 2157941592}
!255 = !{i64 2157942239}
!256 = !{i64 2157944109}
!257 = !{i64 2157945865}
!258 = !{i64 2157946313}
!259 = !{i64 2157947048}
!260 = !{i64 2157948618}
!261 = !{i64 2157949066}
!262 = !{i64 2157949522}
!263 = !{i64 2157950265}
!264 = !{i64 2157950537}
!265 = !{i64 2157950985}
!266 = !{i64 2157953728}
!267 = !{i64 2157954171}
!268 = !{i64 2157954619}
!269 = !{i64 2157955067}
!270 = !{i64 2157955515}
!271 = !{i64 2157998882, i64 2157999383, i64 2157998919, i64 2157998975, i64 2157999009, i64 2157999033, i64 2157999074, i64 2157999095, i64 2157999123, i64 2157999157}
!272 = !{i64 2158008841}
!273 = !{i64 2157882971}
!274 = !{i64 2157883537}
!275 = !{i64 2157884335}
!276 = !{i64 2157886580}
!277 = !{i64 2157887587}
!278 = !{i64 2157888900}
!279 = !{i64 2157889459}
!280 = !{i64 2157890222}
!281 = !{i64 2157972310}
!282 = !{i64 2157976289}
!283 = !{i64 2158121965}
!284 = !{i64 2158122443}
!285 = !{i64 2157989313}
!286 = !{i64 2157989870}
