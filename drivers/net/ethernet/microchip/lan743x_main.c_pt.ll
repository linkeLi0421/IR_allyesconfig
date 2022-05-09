; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan743x_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan743x_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lan743x_adapter = type { ptr, ptr, i32, i32, ptr, %struct.lan743x_csr, %struct.lan743x_intr, %struct.lan743x_gpio, %struct.lan743x_ptp, [6 x i8], %struct.lan743x_phy, [1 x %struct.lan743x_tx], [4 x %struct.lan743x_rx], i32 }
%struct.lan743x_csr = type { i32, ptr, i32, i32 }
%struct.lan743x_intr = type { i32, i32, [8 x %struct.lan743x_vector], i32, i8, i8, %struct.wait_queue_head }
%struct.lan743x_vector = type { i32, i32, ptr, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lan743x_gpio = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32 }
%struct.lan743x_ptp = type { i32, %struct.mutex, ptr, %struct.ptp_clock_info, [12 x %struct.ptp_pin_desc], i32, [2 x %struct.lan743x_ptp_perout], i8, [4 x i8], %struct.spinlock, i32, [4 x ptr], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.lan743x_ptp_perout = type { i32, i32 }
%struct.lan743x_phy = type { i8, i8 }
%struct.lan743x_tx = type { ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.napi_struct, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.lan743x_rx = type { ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, %struct.napi_struct, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msix_entry = type { i32, i16 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.lan743x_rx_descriptor = type { i32, i32, i32, i32, [112 x i8] }
%struct.lan743x_rx_buffer_info = type { i32, ptr, i32, i32 }
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
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.lan743x_tx_buffer_info = type { i32, ptr, i32, i32 }
%struct.lan743x_tx_descriptor = type { i32, i32, i32, i32, [112 x i8] }

@__initcall__kmod_lan743x__363_3075_lan743x_pcidev_driver_init6 = internal global ptr @lan743x_pcidev_driver_init, section ".initcall6.init", align 4
@lan743x_pcidev_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @lan743x_pcidev_tbl, ptr @lan743x_pcidev_probe, ptr @lan743x_pcidev_remove, ptr null, ptr null, ptr @lan743x_pcidev_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lan743x_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lan743x_pcidev_driver_exit = internal global ptr @lan743x_pcidev_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author364 = internal constant [63 x i8] c"lan743x.author=Bryan Whitehead <Bryan.Whitehead@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description365 = internal constant [57 x i8] c"lan743x.description=LAN743x PCIe Gigabit Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file366 = internal constant [52 x i8] c"lan743x.file=drivers/net/ethernet/microchip/lan743x\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [20 x i8] c"lan743x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lan743x\00", [24 x i8] zeroinitializer }, align 32
@lan743x_pcidev_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4181, i32 29744, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4181, i32 29745, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@lan743x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lan743x_pm_suspend, ptr @lan743x_pm_resume, ptr @lan743x_pm_suspend, ptr @lan743x_pm_resume, ptr @lan743x_pm_suspend, ptr @lan743x_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lan743x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lan743x_netdev_open, ptr @lan743x_netdev_close, ptr @lan743x_netdev_xmit_frame, ptr null, ptr null, ptr null, ptr @lan743x_netdev_set_multicast, ptr @lan743x_netdev_set_mac_address, ptr null, ptr null, ptr @lan743x_netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @lan743x_netdev_change_mtu, ptr null, ptr null, ptr @lan743x_netdev_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@lan743x_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@lan743x_pcidev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014Initialization failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan743x_pcidev_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/microchip/lan743x_main.c\00", [50 x i8] zeroinitializer }, align 32
@lan743x_pcidev_probe._entry_ptr = internal global ptr @lan743x_pcidev_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCI: Vendor ID = 0x%04X, Device ID = 0x%04X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ID_REV = 0x%08X, FPGA_REV = %d.%d\0A\00", [61 x i8] zeroinitializer }, align 32
@lan743x_hardware_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tx->ring_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC address set to %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lan743x-mdiobus\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci-%s\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error opening LAN743x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"using MSIX interrupts, number of vectors = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"using MSI interrupts, number of vectors = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using legacy interrupts\0A\00", [39 x i8] zeroinitializer }, align 32
@lan743x_intr_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&intr->software_isr_wq\00", [41 x i8] zeroinitializer }, align 32
@lan743x_rx_ring_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 2285, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"lan743x_: No suitable DMA available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan743x_rx_ring_init\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan743x_rx_ring_init._entry_ptr = internal global ptr @lan743x_rx_ring_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error allocating memory for LAN743x\0A\00", [59 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@lan743x_rx_process_buffer.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 2, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lan743x_rx_process_buffer\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s%schunk: %d/%d\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"first \00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"      \00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"last  \00", [25 x i8] zeroinitializer }, align 32
@lan743x_rx_process_buffer.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.27, i8 2, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drop buffer intended for dropped packet\00", [56 x i8] zeroinitializer }, align 32
@lan743x_rx_process_buffer.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.28, i8 2, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"process extension\00", [46 x i8] zeroinitializer }, align 32
@lan743x_rx_process_buffer.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.29, i8 2, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sending %d byte frame to OS\00", [36 x i8] zeroinitializer }, align 32
@lan743x_tx_ring_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.3, i32 1743, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lan743x_tx_ring_init\00", [43 x i8] zeroinitializer }, align 32
@lan743x_tx_ring_init._entry_ptr = internal global ptr @lan743x_tx_ring_init._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__const.lan743x_pm_set_wol.ipv4_multicast = private unnamed_addr constant [3 x i8] c"\01\00^", align 1
@__const.lan743x_pm_set_wol.ipv6_multicast = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lan743x_hardware_init returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"lan743x_pcidev_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 3064, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 3075, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"lan743x_pcidev_tbl\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 3056, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"lan743x_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 3051, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"lan743x_netdev_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2667, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2844, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 40, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 115, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2737, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 778, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2754, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2756, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2563, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 476, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 490, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 502, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 536, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2284, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2335, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 326, i32 6 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2108, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2149, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2166, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 2175, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1742, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [49 x i8] c"../drivers/net/ethernet/microchip/lan743x_main.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 3033, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_lan743x_pcidev_driver_exit, ptr @__initcall__kmod_lan743x__363_3075_lan743x_pcidev_driver_init6, ptr @lan743x_pcidev_driver_exit, ptr @lan743x_pcidev_probe._entry, ptr @lan743x_pcidev_probe._entry_ptr, ptr @lan743x_rx_ring_init._entry, ptr @lan743x_rx_ring_init._entry_ptr, ptr @lan743x_tx_ring_init._entry, ptr @lan743x_tx_ring_init._entry_ptr, ptr @lan743x_pcidev_driver, ptr @.str, ptr @lan743x_pcidev_tbl, ptr @lan743x_pm_ops, ptr @lan743x_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lan743x_hardware_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @lan743x_intr_open.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_pcidev_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_pcidev_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_pcidev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_hardware_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_intr_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_rx_ring_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan743x_tx_ring_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan743x_csr_read(ptr nocapture noundef readonly %adapter, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_address = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %csr_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan743x_csr_write(ptr nocapture noundef readonly %adapter, i32 noundef %offset, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_address = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %csr_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #10, !srcloc !96
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lan743x_tx_set_timestamping_mode(ptr nocapture noundef %tx, i1 noundef zeroext %enable_timestamping, i1 noundef zeroext %enable_onestep_sync) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_flags = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 1
  %0 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ts_flags, align 4
  %and = and i32 %1, -4
  %masksel = zext i1 %enable_timestamping to i32
  %and.sink = or i32 %and, %masksel
  %ts_flags5 = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 1
  %masksel14 = select i1 %enable_onestep_sync, i32 2, i32 0
  %and9.sink = or i32 %and.sink, %masksel14
  %2 = ptrtoint ptr %ts_flags5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and9.sink, ptr %ts_flags5, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_pcidev_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lan743x_pcidev_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_pcidev_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @lan743x_pcidev_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_pcidev_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %bars.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev, i32 noundef 3424, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %call, i32 2312
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 311, ptr %msg_enable, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %4 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9216, ptr %max_mtu, align 4
  %of_node = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %mac_address = getelementptr i8, ptr %call, i32 4216
  %call6 = tail call i32 @of_get_mac_address(ptr noundef %6, ptr noundef %mac_address) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bars.i)
  %pdev1.i = getelementptr i8, ptr %call, i32 2320
  %7 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev1.i, align 8
  %call.i = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %lan743x_pci_init.exit.thread88

lan743x_pci_init.exit.thread88:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bars.i)
  br label %do.end

do.body.i:                                        ; preds = %if.end
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then3.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %12 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor.i, align 8
  %conv.i = zext i16 %13 to i32
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i, align 2
  %conv4.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %conv4.i) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i.do.end.i_crit_edge
  %call6.i = tail call i32 @pci_select_bars(ptr noundef %pdev, i32 noundef 512) #10
  %16 = ptrtoint ptr %bars.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call6.i, ptr %bars.i, align 4
  %bars.i.0.bars.i.0.bars.0.bars.0..i = load volatile i32, ptr %bars.i, align 4
  %and1.i.i = and i32 %bars.i.0.bars.i.0.bars.0.bars.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool8.not.i, label %lan743x_pci_init.exit.thread91, label %if.end10.i

lan743x_pci_init.exit.thread91:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev1.i, align 8
  tail call void @pci_disable_device(ptr noundef %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bars.i)
  br label %if.end10

if.end10.i:                                       ; preds = %do.end.i
  %call11.i = tail call i32 @pci_request_selected_regions(ptr noundef %pdev, i32 noundef %bars.i.0.bars.i.0.bars.0.bars.0..i, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %lan743x_pci_init.exit.thread, label %lan743x_pci_init.exit

lan743x_pci_init.exit.thread:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_set_master(ptr noundef %pdev) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bars.i)
  br label %if.end10

lan743x_pci_init.exit:                            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev1.i, align 8
  tail call void @pci_disable_device(ptr noundef %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bars.i)
  br label %do.end

if.end10:                                         ; preds = %lan743x_pci_init.exit.thread, %lan743x_pci_init.exit.thread91
  %csr1.i = getelementptr i8, ptr %call, i32 2324
  %21 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev1.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %23 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47, i32 0, i32 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  %sub.i = sub i32 1, %24
  %add.i = add i32 %sub.i, %26
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i67 = tail call ptr @devm_ioremap(ptr noundef %dev.i, i32 noundef %24, i32 noundef %cond.i) #10
  %csr_address.i = getelementptr i8, ptr %call, i32 2328
  %27 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i67, ptr %csr_address.i, align 4
  %tobool.not.i68 = icmp eq ptr %call.i67, null
  br i1 %tobool.not.i68, label %if.end10.cleanup_pci_crit_edge, label %if.end.i

if.end10.cleanup_pci_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_pci

if.end.i:                                         ; preds = %if.end10
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i67) #10, !srcloc !93
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %id_rev.i = getelementptr i8, ptr %call, i32 2332
  %30 = ptrtoint ptr %id_rev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %id_rev.i, align 4
  %31 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %fpga_rev.i = getelementptr i8, ptr %call, i32 2336
  %35 = ptrtoint ptr %fpga_rev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fpga_rev.i, align 4
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 8
  %and.i70 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool17.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool17.not.i, label %if.end.i.do.end.i71_crit_edge, label %if.then18.i

if.end.i.do.end.i71_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i71

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %40 = ptrtoint ptr %id_rev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id_rev.i, align 4
  %and21.i = and i32 %34, 255
  %shr.i = lshr i32 %34, 8
  %and23.i = and i32 %shr.i, 255
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %41, i32 noundef %and21.i, i32 noundef %and23.i) #13
  br label %do.end.i71

do.end.i71:                                       ; preds = %if.then18.i, %if.end.i.do.end.i71_crit_edge
  %42 = ptrtoint ptr %id_rev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id_rev.i, align 4
  %and26.i = and i32 %43, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949302784, i32 %and26.i)
  %cmp27.i = icmp eq i32 %and26.i, 1949302784
  br i1 %cmp27.i, label %if.end29.i, label %do.end.i71.cleanup_pci_crit_edge

do.end.i71.cleanup_pci_crit_edge:                 ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_pci

if.end29.i:                                       ; preds = %do.end.i71
  %44 = ptrtoint ptr %csr1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 256, ptr %csr1.i, align 4
  %trunc.i = trunc i32 %43 to i16
  %45 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %if.end29.i.sw.epilog.i_crit_edge [
    i16 0, label %if.end29.i.sw.epilog.sink.split.i_crit_edge
    i16 16, label %sw.bb35.i
  ]

if.end29.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

if.end29.i.sw.epilog.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb35.i, %if.end29.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 258, %sw.bb35.i ], [ 1, %if.end29.i.sw.epilog.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %csr1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink.i, ptr %csr1.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end29.i.sw.epilog.i_crit_edge
  %47 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %48, i32 16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %50 = or i32 %49, 33554432
  %51 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i35.i.i = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i35.i.i, i32 %50) #10, !srcloc !96
  %call1.i.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call1.i.i, 10000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 83) #10
  %53 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i3741.i.i = getelementptr i8, ptr %54, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i3741.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %56 = and i32 %55, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not43.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not43.i.i, label %sw.epilog.i.if.end14_crit_edge, label %sw.epilog.i.land.lhs.true.i.i_crit_edge

sw.epilog.i.land.lhs.true.i.i_crit_edge:          ; preds = %sw.epilog.i
  br label %land.lhs.true.i.i

sw.epilog.i.if.end14_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true.i.i:                                ; preds = %if.then20.i.i.land.lhs.true.i.i_crit_edge, %sw.epilog.i.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #10
  %57 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i37.i.i = getelementptr i8, ptr %58, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i37.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %60 = and i32 %59, 33554432
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %if.then20.i.i.if.end14_crit_edge, label %if.then20.i.i.land.lhs.true.i.i_crit_edge

if.then20.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.then20.i.i.if.end14_crit_edge:                 ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %61 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i39.i.i = getelementptr i8, ptr %62, i32 16
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i39.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %64 = and i32 %63, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool23.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool23.not.i.i, label %for.end.i.i.if.end14_crit_edge, label %for.end.i.i.cleanup_pci_crit_edge

for.end.i.i.cleanup_pci_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_pci

for.end.i.i.if.end14_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %for.end.i.i.if.end14_crit_edge, %if.then20.i.i.if.end14_crit_edge, %sw.epilog.i.if.end14_crit_edge
  %call15 = tail call fastcc i32 @lan743x_hardware_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_pci_crit_edge

if.end14.cleanup_pci_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_pci

if.end18:                                         ; preds = %if.end14
  %65 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev1.i, align 8
  %dev.i74 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %call.i.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev.i74, i32 noundef 0) #10
  %mdiobus.i = getelementptr i8, ptr %call, i32 2308
  %67 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %mdiobus.i, align 4
  %tobool.not.i75 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i75, label %if.end18.cleanup_hardware_crit_edge, label %if.end.i76

if.end18.cleanup_hardware_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_hardware

if.end.i76:                                       ; preds = %if.end18
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i, ptr %priv.i, align 8
  %69 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdiobus.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @lan743x_mdiobus_read, ptr %read.i, align 4
  %72 = load ptr, ptr %mdiobus.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @lan743x_mdiobus_write, ptr %write.i, align 8
  %74 = load ptr, ptr %mdiobus.i, align 4
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.8, ptr %name.i, align 4
  %76 = load ptr, ptr %mdiobus.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev1.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44, i32 3
  %79 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i76.pci_name.exit.i_crit_edge

if.end.i76.pci_name.exit.i_crit_edge:             ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %81 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i76.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %82, %if.end.i.i.i ], [ %80, %if.end.i76.pci_name.exit.i_crit_edge ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i.i) #10
  %83 = ptrtoint ptr %id_rev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id_rev.i, align 4
  %and.i78 = and i32 %84, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1949302784, i32 %and.i78)
  %cmp.i79 = icmp eq i32 %and.i78, 1949302784
  br i1 %cmp.i79, label %if.then10.i, label %pci_name.exit.i.if.end12.i_crit_edge

pci_name.exit.i.if.end12.i_crit_edge:             ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdiobus.i, align 4
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -3, ptr %phy_mask.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %pci_name.exit.i.if.end12.i_crit_edge
  %88 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mdiobus.i, align 4
  %call14.i = tail call i32 @__mdiobus_register(ptr noundef %89, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.cleanup_hardware_crit_edge, label %if.end22

if.end12.i.cleanup_hardware_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_hardware

if.end22:                                         ; preds = %if.end12.i
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 16
  %92 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @lan743x_netdev_ops, ptr %netdev_ops, align 8
  %93 = load ptr, ptr %add.ptr.i, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 44
  %94 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @lan743x_ethtool_ops, ptr %ethtool_ops, align 16
  %95 = load ptr, ptr %add.ptr.i, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 23
  %96 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 65545, ptr %features, align 16
  %97 = load ptr, ptr %add.ptr.i, align 8
  %features27 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 23
  %98 = ptrtoint ptr %features27 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %features27, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 24
  %100 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %hw_features, align 8
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #10
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %call30 = tail call i32 @register_netdev(ptr noundef %102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %cleanup_mdiobus, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup_mdiobus:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mdiobus.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %104) #10
  br label %cleanup_hardware

cleanup_hardware:                                 ; preds = %cleanup_mdiobus, %if.end12.i.cleanup_hardware_crit_edge, %if.end18.cleanup_hardware_crit_edge
  %ret.0 = phi i32 [ %call30, %cleanup_mdiobus ], [ %call14.i, %if.end12.i.cleanup_hardware_crit_edge ], [ -12, %if.end18.cleanup_hardware_crit_edge ]
  %105 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i83 = getelementptr i8, ptr %106, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i83, i32 -1) #10, !srcloc !96
  br label %cleanup_pci

cleanup_pci:                                      ; preds = %cleanup_hardware, %if.end14.cleanup_pci_crit_edge, %for.end.i.i.cleanup_pci_crit_edge, %do.end.i71.cleanup_pci_crit_edge, %if.end10.cleanup_pci_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end14.cleanup_pci_crit_edge ], [ %ret.0, %cleanup_hardware ], [ -110, %for.end.i.i.cleanup_pci_crit_edge ], [ -19, %do.end.i71.cleanup_pci_crit_edge ], [ -12, %if.end10.cleanup_pci_crit_edge ]
  %107 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev1.i, align 8
  %call.i85 = tail call i32 @pci_select_bars(ptr noundef %108, i32 noundef 512) #10
  tail call void @pci_release_selected_regions(ptr noundef %108, i32 noundef %call.i85) #10
  %109 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev1.i, align 8
  tail call void @pci_disable_device(ptr noundef %110) #10
  br label %do.end

do.end:                                           ; preds = %cleanup_pci, %lan743x_pci_init.exit, %lan743x_pci_init.exit.thread88, %entry.do.end_crit_edge
  %ret.2 = phi i32 [ %call11.i, %lan743x_pci_init.exit ], [ %ret.1, %cleanup_pci ], [ -19, %entry.do.end_crit_edge ], [ %call.i, %lan743x_pci_init.exit.thread88 ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_pcidev_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void @unregister_netdev(ptr noundef %3) #10
  %mdiobus.i.i = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %mdiobus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdiobus.i.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %5) #10
  %csr_address.i.i.i = getelementptr i8, ptr %1, i32 2328
  %6 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %7, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 -1) #10, !srcloc !96
  %pdev.i.i = getelementptr i8, ptr %1, i32 2320
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 8
  %call.i.i = tail call i32 @pci_select_bars(ptr noundef %9, i32 noundef 512) #10
  tail call void @pci_release_selected_regions(ptr noundef %9, i32 noundef %call.i.i) #10
  %10 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i.i, align 8
  tail call void @pci_disable_device(ptr noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_pcidev_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #10
  tail call void @netif_device_detach(ptr noundef %1) #10
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @lan743x_netdev_close(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #10
  %call4 = tail call i32 @pci_save_state(ptr noundef %pdev) #10
  %csr_address.i.i = getelementptr i8, ptr %1, i32 2328
  %4 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 -1) #10, !srcloc !96
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan743x_hardware_init(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq2 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq2, align 4
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 -1) #10, !srcloc !96
  %call = tail call i32 @lan743x_gpio_init(ptr noundef %adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %9 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %10, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %12 = and i32 %11, -538443777
  %13 = or i32 %12, 536870912
  %14 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i2.i = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i2.i, i32 %13) #10, !srcloc !96
  %mac_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9
  %16 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_address.i, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end
  %add.ptr.i.i.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %or.i.i.i = or i32 %17, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.then.i_crit_edge, label %is_valid_ether_addr.exit.i.lan743x_mac_init.exit_crit_edge

is_valid_ether_addr.exit.i.lan743x_mac_init.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_mac_init.exit

is_valid_ether_addr.exit.i.if.then.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %is_valid_ether_addr.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %21 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i4.i = getelementptr i8, ptr %22, i32 280
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i4.i) #10, !srcloc !93
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %25 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i6.i = getelementptr i8, ptr %26, i32 284
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i6.i) #10, !srcloc !93
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %conv.i = trunc i32 %28 to i8
  %29 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %mac_address.i, align 8
  %shr.i = lshr i32 %28, 8
  %conv8.i = trunc i32 %shr.i to i8
  %arrayidx10.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv8.i, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %28, 16
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx15.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13.i, ptr %arrayidx15.i, align 2
  %shr16.i = lshr i32 %28, 24
  %conv18.i = trunc i32 %shr16.i to i8
  %arrayidx20.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %conv22.i = trunc i32 %24 to i8
  %arrayidx24.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv22.i, ptr %arrayidx24.i, align 4
  %shr25.i = lshr i32 %24, 8
  %conv27.i = trunc i32 %shr25.i to i8
  %arrayidx29.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %34 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv27.i, ptr %arrayidx29.i, align 1
  %and30.i = and i32 %24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and30.i)
  %cmp.i = icmp eq i32 %and30.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp32.i = icmp eq i32 %27, -1
  %or.cond.i = select i1 %cmp.i, i1 %cmp32.i, i1 false
  br i1 %or.cond.i, label %if.then.i.if.then40.i_crit_edge, label %if.else.i

if.then.i.if.then40.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i

if.else.i:                                        ; preds = %if.then.i
  %35 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mac_address.i, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i7.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i7.i, label %is_valid_ether_addr.exit13.i, label %if.else.i.if.then40.i_crit_edge

if.else.i.if.then40.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i

is_valid_ether_addr.exit13.i:                     ; preds = %if.else.i
  %38 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx24.i, align 2
  %conv.i.i9.i = zext i16 %39 to i32
  %or.i.i10.i = or i32 %36, %conv.i.i9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i10.i)
  %cmp.i.i11.not.i = icmp eq i32 %or.i.i10.i, 0
  br i1 %cmp.i.i11.not.i, label %is_valid_ether_addr.exit13.i.if.then40.i_crit_edge, label %is_valid_ether_addr.exit13.i.lan743x_mac_init.exit_crit_edge

is_valid_ether_addr.exit13.i.lan743x_mac_init.exit_crit_edge: ; preds = %is_valid_ether_addr.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_mac_init.exit

is_valid_ether_addr.exit13.i.if.then40.i_crit_edge: ; preds = %is_valid_ether_addr.exit13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40.i

if.then40.i:                                      ; preds = %is_valid_ether_addr.exit13.i.if.then40.i_crit_edge, %if.else.i.if.then40.i_crit_edge, %if.then.i.if.then40.i_crit_edge
  tail call void @get_random_bytes(ptr noundef %mac_address.i, i32 noundef 6) #10
  %40 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mac_address.i, align 1
  %42 = and i8 %41, -4
  %43 = or i8 %42, 2
  store i8 %43, ptr %mac_address.i, align 1
  br label %lan743x_mac_init.exit

lan743x_mac_init.exit:                            ; preds = %if.then40.i, %is_valid_ether_addr.exit13.i.lan743x_mac_init.exit_crit_edge, %is_valid_ether_addr.exit.i.lan743x_mac_init.exit_crit_edge
  tail call fastcc void @lan743x_mac_set_address(ptr noundef %adapter, ptr noundef %mac_address.i) #10
  tail call void @dev_addr_mod(ptr noundef %8, i32 noundef 0, ptr noundef %mac_address.i, i32 noundef 6) #10
  %44 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %45, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %47 = or i32 %46, 268435456
  %48 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i42.i.i = getelementptr i8, ptr %49, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i42.i.i, i32 %47) #10, !srcloc !96
  %call1.i.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call1.i.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 913) #10
  %50 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i4448.i.i = getelementptr i8, ptr %51, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i4448.i.i) #10, !srcloc !93
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %54 = and i32 %53, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %54)
  %.not49.i.i = icmp eq i32 %54, 128
  br i1 %.not49.i.i, label %lan743x_mac_init.exit.lan743x_phy_init.exit_crit_edge, label %lan743x_mac_init.exit.land.lhs.true15.i.i_crit_edge

lan743x_mac_init.exit.land.lhs.true15.i.i_crit_edge: ; preds = %lan743x_mac_init.exit
  br label %land.lhs.true15.i.i

lan743x_mac_init.exit.lan743x_phy_init.exit_crit_edge: ; preds = %lan743x_mac_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_phy_init.exit

land.lhs.true15.i.i:                              ; preds = %if.then23.i.i.land.lhs.true15.i.i_crit_edge, %lan743x_mac_init.exit.land.lhs.true15.i.i_crit_edge
  %call16.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call16.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then19.i.i, label %if.then23.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i46.i.i = getelementptr i8, ptr %56, i32 20
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i46.i.i) #10, !srcloc !93
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %lan743x_phy_init.exit

if.then23.i.i:                                    ; preds = %land.lhs.true15.i.i
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #10
  %59 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i44.i.i = getelementptr i8, ptr %60, i32 20
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i44.i.i) #10, !srcloc !93
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %63 = and i32 %62, 144
  %.not.i.i = icmp eq i32 %63, 128
  br i1 %.not.i.i, label %if.then23.i.i.lan743x_phy_init.exit_crit_edge, label %if.then23.i.i.land.lhs.true15.i.i_crit_edge

if.then23.i.i.land.lhs.true15.i.i_crit_edge:      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true15.i.i

if.then23.i.i.lan743x_phy_init.exit_crit_edge:    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_phy_init.exit

lan743x_phy_init.exit:                            ; preds = %if.then23.i.i.lan743x_phy_init.exit_crit_edge, %if.then19.i.i, %lan743x_mac_init.exit.lan743x_phy_init.exit_crit_edge
  %data.0.i.i = phi i32 [ %58, %if.then19.i.i ], [ %53, %lan743x_mac_init.exit.lan743x_phy_init.exit_crit_edge ], [ %62, %if.then23.i.i.lan743x_phy_init.exit_crit_edge ]
  %and25.i.i = and i32 %data.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  %and27.i.i = and i32 %data.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  %phi.sel.i.i = select i1 %tobool28.not.i.i, i32 -110, i32 0
  %64 = select i1 %tobool26.not.i.i, i32 %phi.sel.i.i, i32 -110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool8.not = icmp eq i32 %64, 0
  br i1 %tobool8.not, label %if.end10, label %lan743x_phy_init.exit.cleanup_crit_edge

lan743x_phy_init.exit.cleanup_crit_edge:          ; preds = %lan743x_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %lan743x_phy_init.exit
  %call11 = tail call i32 @lan743x_ptp_init(ptr noundef %adapter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mac_address.i, align 1
  %conv.i2 = zext i8 %66 to i32
  %arrayidx1.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %68 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i2
  %arrayidx4.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %69 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %70 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %71 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %72 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %or11.i = or i32 %or7.i, %shl10.i
  %arrayidx12.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %73 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i3 = zext i8 %74 to i32
  %arrayidx15.i4 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %75 = ptrtoint ptr %arrayidx15.i4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx15.i4, align 1
  %conv16.i = zext i8 %76 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %77 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i6 = getelementptr i8, ptr %78, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i6, i32 %79) #10, !srcloc !96
  %or18.i = or i32 %shl17.i, %conv13.i3
  %or19.i = or i32 %or18.i, -2147483648
  %80 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i28.i = getelementptr i8, ptr %81, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %82 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i28.i, i32 %82) #10, !srcloc !96
  %83 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i8 = getelementptr i8, ptr %84, i32 3084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i8, i32 128) #10, !srcloc !96
  %85 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %adapter, i32 noundef 3084, i32 noundef -2147483648, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %csr.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5
  %86 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %csr.i, align 4
  %and.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 65635, i32 99
  %88 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i2.i9 = getelementptr i8, ptr %89, i32 3072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %90 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i2.i9, i32 %90) #10, !srcloc !96
  %91 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i4.i10 = getelementptr i8, ptr %92, i32 3076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i4.i10, i32 201989888) #10, !srcloc !96
  %93 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i6.i11 = getelementptr i8, ptr %94, i32 3080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i6.i11, i32 168296448) #10, !srcloc !96
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 0
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %adapter, ptr %arrayidx, align 8
  %channel_number = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 0, i32 2
  %96 = ptrtoint ptr %channel_number to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %channel_number, align 8
  %arrayidx.1 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 1
  %97 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %adapter, ptr %arrayidx.1, align 8
  %channel_number.1 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 1, i32 2
  %98 = ptrtoint ptr %channel_number.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %channel_number.1, align 8
  %arrayidx.2 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 2
  %99 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %adapter, ptr %arrayidx.2, align 8
  %channel_number.2 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 2, i32 2
  %100 = ptrtoint ptr %channel_number.2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %channel_number.2, align 8
  %arrayidx.3 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 3
  %101 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %adapter, ptr %arrayidx.3, align 8
  %channel_number.3 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 12, i32 3, i32 2
  %102 = ptrtoint ptr %channel_number.3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %channel_number.3, align 8
  %tx22 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 11
  %103 = ptrtoint ptr %tx22 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %adapter, ptr %tx22, align 8
  %channel_number25 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 11, i32 0, i32 3
  %104 = ptrtoint ptr %channel_number25 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %channel_number25, align 4
  %ring_lock = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 11, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %ring_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @lan743x_hardware_init.__key, i16 noundef signext 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %lan743x_phy_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %64, %lan743x_phy_init.exit.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_select_bars(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_gpio_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_ptp_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_mac_set_address(ptr nocapture noundef %adapter, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %arrayidx11 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %arrayidx13 = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or10) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %14) #10, !srcloc !96
  %15 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i29 = getelementptr i8, ptr %16, i32 280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or16) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i29, i32 %17) #10, !srcloc !96
  %mac_address = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %mac_address to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mac_address, align 4
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx11, align 2
  %add.ptr1.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 2
  %msg_enable = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 2
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 8
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef %addr) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan743x_csr_wait_for_bit(ptr nocapture noundef readonly %adapter, i32 noundef %offset, i32 noundef %bit_mask, i32 noundef %target_value, i32 noundef %usleep_min, i32 noundef %usleep_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %usleep_min, 100
  %0 = zext i32 %mul to i64
  %call = tail call i64 @ktime_get() #10
  %mul.i = mul nuw nsw i64 %0, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 95) #10
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i5 = getelementptr i8, ptr %2, i32 %offset
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i5) #10, !srcloc !93
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and6 = and i32 %4, %bit_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not7 = icmp ne i32 %and6, 0
  %cond8 = zext i1 %tobool.not7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond8, i32 %target_value)
  %cmp109 = icmp eq i32 %cond8, %target_value
  br i1 %cmp109, label %entry.for.end_crit_edge, label %land.lhs.true.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true.lr.ph:                              ; preds = %entry
  %shr = lshr i32 %usleep_max, 2
  %add = add nuw nsw i32 %shr, 1
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %call15 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %if.then23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i2 = getelementptr i8, ptr %6, i32 %offset
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i2) #10, !srcloc !93
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %.pre = and i32 %8, %bit_mask
  br label %for.end

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef %add, i32 noundef %usleep_max, i32 noundef 2) #10
  %9 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 %offset
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and = and i32 %12, %bit_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  %cmp10 = icmp eq i32 %cond, %target_value
  br i1 %cmp10, label %if.then23.for.end_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.then23.for.end_crit_edge, %if.then19, %entry.for.end_crit_edge
  %and25.pre-phi = phi i32 [ %and6, %entry.for.end_crit_edge ], [ %.pre, %if.then19 ], [ %and, %if.then23.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.pre-phi)
  %tobool26.not = icmp ne i32 %and25.pre-phi, 0
  %cond27 = zext i1 %tobool26.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond27, i32 %target_value)
  %cmp28 = icmp eq i32 %cond27, %target_value
  %cond30 = select i1 %cmp28, i32 0, i32 -110
  ret i32 %cond30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_mdiobus_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 1000000000
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.cond.i.if.end_crit_edge, label %land.lhs.true.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #10
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i30.i = getelementptr i8, ptr %7, i32 288
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i30.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp.i = icmp eq i32 %9, 0
  br i1 %phi.cmp.i, label %if.then15.i.if.end_crit_edge, label %if.then15.i.cleanup_crit_edge

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.i.if.end_crit_edge:                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.then15.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %conv.i = shl i32 %phy_id, 11
  %and.i = and i32 %conv.i, 63488
  %conv1.i = shl i32 %index, 6
  %and3.i = and i32 %conv1.i, 1984
  %or.i = or i32 %and.i, %and3.i
  %or6.i = or i32 %or.i, 1
  %10 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %12) #10, !srcloc !96
  %call.i18 = tail call i64 @ktime_get() #10
  %add.i.i19 = add i64 %call.i18, 1000000000
  br label %for.cond.i23

for.cond.i23:                                     ; preds = %land.lhs.true.i26.for.cond.i23_crit_edge, %if.end
  %13 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i21 = getelementptr i8, ptr %14, i32 288
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i21) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i22 = icmp eq i32 %16, 0
  br i1 %tobool.not.i22, label %for.cond.i23.if.end7_crit_edge, label %land.lhs.true.i26

for.cond.i23.if.end7_crit_edge:                   ; preds = %for.cond.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true.i26:                                ; preds = %for.cond.i23
  %call12.i24 = tail call i64 @ktime_get() #10
  %cmp3.i.i25 = icmp sgt i64 %call12.i24, %add.i.i19
  br i1 %cmp3.i.i25, label %if.then15.i30, label %land.lhs.true.i26.for.cond.i23_crit_edge

land.lhs.true.i26.for.cond.i23_crit_edge:         ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i23

if.then15.i30:                                    ; preds = %land.lhs.true.i26
  %17 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i30.i27 = getelementptr i8, ptr %18, i32 288
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i30.i27) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp.i28 = icmp eq i32 %20, 0
  br i1 %phi.cmp.i28, label %if.then15.i30.if.end7_crit_edge, label %if.then15.i30.cleanup_crit_edge

if.then15.i30.cleanup_crit_edge:                  ; preds = %if.then15.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.i30.if.end7_crit_edge:                  ; preds = %if.then15.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then15.i30.if.end7_crit_edge, %for.cond.i23.if.end7_crit_edge
  %21 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i34 = getelementptr i8, ptr %22, i32 292
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i34) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %24 = and i32 %23, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then15.i30.cleanup_crit_edge, %if.then15.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %if.end7 ], [ -110, %if.then15.i.cleanup_crit_edge ], [ -110, %if.then15.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_mdiobus_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %index, i16 noundef zeroext %regval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 1000000000
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.cond.i.if.end_crit_edge, label %land.lhs.true.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = tail call i64 @ktime_get() #10
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i30.i = getelementptr i8, ptr %7, i32 288
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i30.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp.i = icmp eq i32 %9, 0
  br i1 %phi.cmp.i, label %if.then15.i.if.end_crit_edge, label %if.then15.i.cleanup_crit_edge

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.i.if.end_crit_edge:                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.then15.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %conv = zext i16 %regval to i32
  %10 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %12) #10, !srcloc !96
  %conv.i = shl i32 %phy_id, 11
  %and.i = and i32 %conv.i, 63488
  %conv1.i = shl i32 %index, 6
  %and3.i = and i32 %conv1.i, 1984
  %or.i = or i32 %and.i, %and3.i
  %or6.i = or i32 %or.i, 3
  %13 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i14 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i14, i32 %15) #10, !srcloc !96
  %call.i15 = tail call i64 @ktime_get() #10
  %add.i.i16 = add i64 %call.i15, 1000000000
  br label %for.cond.i20

for.cond.i20:                                     ; preds = %land.lhs.true.i23.for.cond.i20_crit_edge, %if.end
  %16 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i18 = getelementptr i8, ptr %17, i32 288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i18) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i19 = icmp eq i32 %19, 0
  br i1 %tobool.not.i19, label %for.cond.i20.cleanup_crit_edge, label %land.lhs.true.i23

for.cond.i20.cleanup_crit_edge:                   ; preds = %for.cond.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i23:                                ; preds = %for.cond.i20
  %call12.i21 = tail call i64 @ktime_get() #10
  %cmp3.i.i22 = icmp sgt i64 %call12.i21, %add.i.i16
  br i1 %cmp3.i.i22, label %if.then15.i27, label %land.lhs.true.i23.for.cond.i20_crit_edge

land.lhs.true.i23.for.cond.i20_crit_edge:         ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i20

if.then15.i27:                                    ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i30.i24 = getelementptr i8, ptr %21, i32 288
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i30.i24) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %phi.cmp.i25 = icmp eq i32 %23, 0
  %phi.sel.i26 = select i1 %phi.cmp.i25, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %if.then15.i27, %for.cond.i20.cleanup_crit_edge, %if.then15.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then15.i.cleanup_crit_edge ], [ %phi.sel.i26, %if.then15.i27 ], [ 0, %for.cond.i20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_open(ptr noundef %netdev) #0 align 64 {
entry:
  %dma_ptr.i.i88 = alloca i32, align 4
  %dma_ptr.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %msix_entries.i = alloca [8 x %struct.msix_entry], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msix_entries.i) #10
  %number_of_vectors.i = getelementptr i8, ptr %netdev, i32 2572
  %0 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %number_of_vectors.i, align 4
  %entry3.1.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 1, i32 1
  %1 = call ptr @memset(ptr %msix_entries.i, i32 0, i32 64)
  %2 = ptrtoint ptr %entry3.1.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %entry3.1.i, align 4
  %entry3.2.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %entry3.2.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %entry3.2.i, align 4
  %entry3.3.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %entry3.3.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %entry3.3.i, align 4
  %entry3.4.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %entry3.4.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %entry3.4.i, align 4
  %entry3.5.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %entry3.5.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5, ptr %entry3.5.i, align 4
  %entry3.6.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %entry3.6.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 6, ptr %entry3.6.i, align 4
  %entry3.7.i = getelementptr inbounds [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %entry3.7.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 7, ptr %entry3.7.i, align 4
  %intr1.i = getelementptr i8, ptr %netdev, i32 2340
  %pdev.i = getelementptr i8, ptr %netdev, i32 2320
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %call.i = call i32 @pci_enable_msix_range(ptr noundef %10, ptr noundef nonnull %msix_entries.i, i32 noundef 1, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, 0
  br i1 %cmp4.i, label %for.body12.preheader.i, label %entry.if.end20.i_crit_edge

entry.if.end20.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

for.body12.preheader.i:                           ; preds = %entry
  %11 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %intr1.i, align 4
  %or.i = or i32 %12, 512
  store i32 %or.i, ptr %intr1.i, align 4
  %13 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %number_of_vectors.i, align 4
  %using_vectors.i = getelementptr i8, ptr %netdev, i32 2576
  %14 = ptrtoint ptr %using_vectors.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %using_vectors.i, align 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.preheader.i
  %index.1446.i = phi i32 [ %inc16.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.body12.preheader.i ]
  %arrayidx13.i = getelementptr [8 x %struct.msix_entry], ptr %msix_entries.i, i32 0, i32 %index.1446.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %index.1446.i
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx14.i, align 4
  %inc16.i = add nuw nsw i32 %index.1446.i, 1
  %18 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number_of_vectors.i, align 4
  %cmp10.i = icmp slt i32 %inc16.i, %19
  br i1 %cmp10.i, label %for.body12.i.for.body12.i_crit_edge, label %do.body.i

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

do.body.i:                                        ; preds = %for.body12.i
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 2312
  %20 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end20.i_crit_edge, label %if.then18.i

do.body.i.if.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %19) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %do.body.i.if.end20.i_crit_edge, %entry.if.end20.i_crit_edge
  %24 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number_of_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not.i = icmp eq i32 %25, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.if.end72.i_crit_edge

if.end20.i.if.end72.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then23.i:                                      ; preds = %if.end20.i
  %csr.i = getelementptr i8, ptr %netdev, i32 2324
  %26 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %csr.i, align 4
  %and25.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.then23.i.if.end53.i_crit_edge

if.then23.i.if.end53.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then27.i:                                      ; preds = %if.then23.i
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 8
  %call29.i = call i32 @pci_enable_msi(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.then27.i.if.end53.i_crit_edge

if.then27.i.if.end53.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then31.i:                                      ; preds = %if.then27.i
  %30 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %intr1.i, align 4
  %or33.i = or i32 %31, 256
  store i32 %or33.i, ptr %intr1.i, align 4
  %32 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %number_of_vectors.i, align 4
  %using_vectors35.i = getelementptr i8, ptr %netdev, i32 2576
  %33 = ptrtoint ptr %using_vectors35.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %using_vectors35.i, align 4
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 8
  %irq37.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %irq37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq37.i, align 4
  %vector_list38.i = getelementptr i8, ptr %netdev, i32 2348
  %38 = ptrtoint ptr %vector_list38.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vector_list38.i, align 4
  %msg_enable42.i = getelementptr i8, ptr %netdev, i32 2312
  %39 = ptrtoint ptr %msg_enable42.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable42.i, align 8
  %and43.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.then31.i.if.end53.i_crit_edge, label %if.then45.i

if.then31.i.if.end53.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then45.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef 1) #13
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then45.i, %if.then31.i.if.end53.i_crit_edge, %if.then27.i.if.end53.i_crit_edge, %if.then23.i.if.end53.i_crit_edge
  %43 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i = load i32, ptr %number_of_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool55.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end53.i.if.end72.i_crit_edge

if.end53.i.if.end72.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then56.i:                                      ; preds = %if.end53.i
  %44 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %number_of_vectors.i, align 4
  %using_vectors58.i = getelementptr i8, ptr %netdev, i32 2576
  %45 = ptrtoint ptr %using_vectors58.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %using_vectors58.i, align 4
  %irq59.i = getelementptr i8, ptr %netdev, i32 2344
  %46 = ptrtoint ptr %irq59.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq59.i, align 4
  %vector_list60.i = getelementptr i8, ptr %netdev, i32 2348
  %48 = ptrtoint ptr %vector_list60.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %vector_list60.i, align 4
  %msg_enable64.i = getelementptr i8, ptr %netdev, i32 2312
  %49 = ptrtoint ptr %msg_enable64.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable64.i, align 8
  %and65.i = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.then56.i.if.end72.i_crit_edge, label %if.then67.i

if.then56.i.if.end72.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

if.then67.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.13) #13
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then67.i, %if.then56.i.if.end72.i_crit_edge, %if.end53.i.if.end72.i_crit_edge, %if.end20.i.if.end72.i_crit_edge
  %csr_address.i.i = getelementptr i8, ptr %netdev, i32 2328
  %53 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %54, i32 1944
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 -1) #10, !srcloc !96
  %55 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i370.i = getelementptr i8, ptr %56, i32 1952
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i370.i, i32 0) #10, !srcloc !96
  %57 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i372.i = getelementptr i8, ptr %58, i32 1956
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i372.i, i32 0) #10, !srcloc !96
  %59 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i374.i = getelementptr i8, ptr %60, i32 1960
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i374.i, i32 0) #10, !srcloc !96
  %using_vectors73.i = getelementptr i8, ptr %netdev, i32 2576
  %61 = ptrtoint ptr %using_vectors73.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %using_vectors73.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool74.not.i = icmp eq i8 %62, 0
  %..i = select i1 %tobool74.not.i, i32 443, i32 1594
  %csr79.i = getelementptr i8, ptr %netdev, i32 2324
  %63 = ptrtoint ptr %csr79.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %csr79.i, align 4
  %and81.i = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %and87.i = and i32 %..i, 1921
  %or89.i = or i32 %and87.i, 68
  %flags.1.i = select i1 %tobool82.not.i, i32 %..i, i32 %or89.i
  %software_isr_wq.i = getelementptr i8, ptr %netdev, i32 2580
  call void @__init_waitqueue_head(ptr noundef %software_isr_wq.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @lan743x_intr_open.__key) #10
  %arrayidx.i375.i = getelementptr i8, ptr %netdev, i32 2348
  %adapter1.i.i = getelementptr i8, ptr %netdev, i32 2356
  %65 = ptrtoint ptr %adapter1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i, ptr %adapter1.i.i, align 4
  %flags2.i.i = getelementptr i8, ptr %netdev, i32 2352
  %66 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %flags.1.i, ptr %flags2.i.i, align 4
  %vector_index3.i.i = getelementptr i8, ptr %netdev, i32 2360
  %67 = ptrtoint ptr %vector_index3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %vector_index3.i.i, align 4
  %int_mask4.i.i = getelementptr i8, ptr %netdev, i32 2364
  %68 = ptrtoint ptr %int_mask4.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 252641920, ptr %int_mask4.i.i, align 4
  %handler5.i.i = getelementptr i8, ptr %netdev, i32 2368
  %69 = ptrtoint ptr %handler5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @lan743x_intr_shared_isr, ptr %handler5.i.i, align 4
  %context6.i.i = getelementptr i8, ptr %netdev, i32 2372
  %70 = ptrtoint ptr %context6.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i, ptr %context6.i.i, align 4
  %71 = ptrtoint ptr %arrayidx.i375.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i375.i, align 4
  %and.i.i = shl nuw nsw i32 %flags.1.i, 7
  %73 = and i32 %and.i.i, 128
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %72, ptr noundef nonnull @lan743x_intr_entry_isr, ptr noundef null, i32 noundef %73, ptr noundef nonnull @.str, ptr noundef %arrayidx.i375.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end97.i, label %if.end72.i.clean_up.sink.split.i_crit_edge

if.end72.i.clean_up.sink.split.i_crit_edge:       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up.sink.split.i

if.end97.i:                                       ; preds = %if.end72.i
  %74 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %intr1.i, align 4
  %or99.i = or i32 %75, 1
  store i32 %or99.i, ptr %intr1.i, align 4
  %76 = ptrtoint ptr %using_vectors73.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %using_vectors73.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool101.not.i = icmp eq i8 %77, 0
  br i1 %tobool101.not.i, label %if.end97.i.if.end103.i_crit_edge, label %if.then102.i

if.end97.i.if.end103.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103.i

if.then102.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i377.i = getelementptr i8, ptr %79, i32 1940
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i377.i, i32 16777216) #10, !srcloc !96
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then102.i, %if.end97.i.if.end103.i_crit_edge
  %80 = ptrtoint ptr %csr79.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %csr79.i, align 4
  %and106.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.end103.i.if.end109.i_crit_edge

if.end103.i.if.end109.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109.i

if.then108.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i379.i = getelementptr i8, ptr %83, i32 1984
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i379.i, i32 -1878982656) #10, !srcloc !96
  %84 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i381.i = getelementptr i8, ptr %85, i32 1988
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i381.i, i32 -1878982656) #10, !srcloc !96
  %86 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i383.i = getelementptr i8, ptr %87, i32 1992
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i383.i, i32 -1878982656) #10, !srcloc !96
  %88 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i385.i = getelementptr i8, ptr %89, i32 1996
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i385.i, i32 -1878982656) #10, !srcloc !96
  %90 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i387.i = getelementptr i8, ptr %91, i32 2000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i387.i, i32 -1878982656) #10, !srcloc !96
  %92 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i389.i = getelementptr i8, ptr %93, i32 2004
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i389.i, i32 -1878982656) #10, !srcloc !96
  %94 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i391.i = getelementptr i8, ptr %95, i32 2008
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i391.i, i32 -1878982656) #10, !srcloc !96
  %96 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i393.i = getelementptr i8, ptr %97, i32 2012
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i393.i, i32 -1878982656) #10, !srcloc !96
  %98 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i395.i = getelementptr i8, ptr %99, i32 1968
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i395.i, i32 844365824) #10, !srcloc !96
  %100 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i397.i = getelementptr i8, ptr %101, i32 1972
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i397.i, i32 16777216) #10, !srcloc !96
  %102 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i399.i = getelementptr i8, ptr %103, i32 1976
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i399.i, i32 -256) #10, !srcloc !96
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then108.i, %if.end103.i.if.end109.i_crit_edge
  %104 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i401.i = getelementptr i8, ptr %105, i32 1928
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i401.i, i32 16777216) #10, !srcloc !96
  %software_isr_flag.i.i = getelementptr i8, ptr %netdev, i32 2577
  %106 = ptrtoint ptr %software_isr_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %software_isr_flag.i.i, align 1
  %107 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %108, i32 1928
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 131072) #10, !srcloc !96
  %109 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i57.i.i = getelementptr i8, ptr %110, i32 1924
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i57.i.i, i32 131072) #10, !srcloc !96
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 357) #10
  %111 = ptrtoint ptr %software_isr_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %software_isr_flag.i.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end109.i.lan743x_intr_test_isr.exit.i_crit_edge

if.end109.i.lan743x_intr_test_isr.exit.i_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_intr_test_isr.exit.i

if.then11.i.i:                                    ; preds = %if.end109.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  %113 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #10
  %call1464.i.i = call i32 @prepare_to_wait_event(ptr noundef %software_isr_wq.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  %114 = ptrtoint ptr %software_isr_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %software_isr_flag.i.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool17.not65.not.i.i = icmp eq i8 %115, 0
  br i1 %tobool17.not65.not.i.i, label %if.then11.i.i.cleanup.i.i_crit_edge, label %if.then11.i.i.for.end.i.i_crit_edge

if.then11.i.i.for.end.i.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then11.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then11.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then11.i.i.cleanup.i.i_crit_edge
  %__ret12.167.i.i = phi i32 [ %__ret12.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 20, %if.then11.i.i.cleanup.i.i_crit_edge ]
  %call34.i.i = call i32 @schedule_timeout(i32 noundef %__ret12.167.i.i) #10
  %call14.i.i = call i32 @prepare_to_wait_event(ptr noundef %software_isr_wq.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #10
  %116 = ptrtoint ptr %software_isr_flag.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %software_isr_flag.i.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool17.not.i.i = icmp eq i8 %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool21.not.i.i = icmp eq i32 %call34.i.i, 0
  %spec.store.select41.i.i = select i1 %tobool21.not.i.i, i32 1, i32 %call34.i.i
  %__ret12.1.i.i = select i1 %tobool17.not.i.i, i32 %call34.i.i, i32 %spec.store.select41.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i)
  %tobool27.not.i.i = icmp eq i32 %__ret12.1.i.i, 0
  %not.tobool17.not.i.i = xor i1 %tobool17.not.i.i, true
  %118 = select i1 %not.tobool17.not.i.i, i1 true, i1 %tobool27.not.i.i
  br i1 %118, label %for.end.loopexit.i.i, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

for.end.loopexit.i.i:                             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i)
  %phi.cmp70.i.i = icmp sgt i32 %__ret12.1.i.i, 0
  %phi.sel71.i.i = select i1 %phi.cmp70.i.i, i32 0, i32 -19
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %if.then11.i.i.for.end.i.i_crit_edge
  %__ret12.1.lcssa.i.i = phi i32 [ 0, %if.then11.i.i.for.end.i.i_crit_edge ], [ %phi.sel71.i.i, %for.end.loopexit.i.i ]
  call void @finish_wait(ptr noundef %software_isr_wq.i, ptr noundef nonnull %__wq_entry.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #10
  br label %lan743x_intr_test_isr.exit.i

lan743x_intr_test_isr.exit.i:                     ; preds = %for.end.i.i, %if.end109.i.lan743x_intr_test_isr.exit.i_crit_edge
  %__ret.1.i.i = phi i32 [ 0, %if.end109.i.lan743x_intr_test_isr.exit.i_crit_edge ], [ %__ret12.1.lcssa.i.i, %for.end.i.i ]
  %119 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i59.i.i = getelementptr i8, ptr %120, i32 1932
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i59.i.i, i32 131072) #10, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i.i)
  %tobool111.not.i = icmp eq i32 %__ret.1.i.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %lan743x_intr_test_isr.exit.i.lan743x_intr_open.exit_crit_edge

lan743x_intr_test_isr.exit.i.lan743x_intr_open.exit_crit_edge: ; preds = %lan743x_intr_test_isr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_intr_open.exit

if.end113.i:                                      ; preds = %lan743x_intr_test_isr.exit.i
  %121 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %number_of_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp115.i = icmp sgt i32 %122, 1
  br i1 %cmp115.i, label %for.body132.lr.ph.i, label %if.end113.i.if.end163.i_crit_edge

if.end113.i.if.end163.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163.i

for.body132.lr.ph.i:                              ; preds = %if.end113.i
  %123 = ptrtoint ptr %csr79.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %csr79.i, align 4
  %and125.i = and i32 %124, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  %spec.store.select239.i = select i1 %tobool126.not.i, i32 1594, i32 61440
  %125 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i403.i = getelementptr i8, ptr %126, i32 1956
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i403.i, i32 16777216) #10, !srcloc !96
  %127 = ptrtoint ptr %int_mask4.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %int_mask4.i.i, align 4
  %and140.i = and i32 %128, -65537
  store i32 %and140.i, ptr %int_mask4.i.i, align 4
  %arrayidx141.i = getelementptr i8, ptr %netdev, i32 4224
  %arrayidx.i404.i = getelementptr i8, ptr %netdev, i32 2376
  %adapter1.i405.i = getelementptr i8, ptr %netdev, i32 2384
  %129 = ptrtoint ptr %adapter1.i405.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %add.ptr.i, ptr %adapter1.i405.i, align 4
  %flags2.i406.i = getelementptr i8, ptr %netdev, i32 2380
  %130 = ptrtoint ptr %flags2.i406.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %spec.store.select239.i, ptr %flags2.i406.i, align 4
  %vector_index3.i407.i = getelementptr i8, ptr %netdev, i32 2388
  %131 = ptrtoint ptr %vector_index3.i407.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %vector_index3.i407.i, align 4
  %int_mask4.i408.i = getelementptr i8, ptr %netdev, i32 2392
  %132 = ptrtoint ptr %int_mask4.i408.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 65536, ptr %int_mask4.i408.i, align 4
  %handler5.i409.i = getelementptr i8, ptr %netdev, i32 2396
  %133 = ptrtoint ptr %handler5.i409.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @lan743x_tx_isr, ptr %handler5.i409.i, align 4
  %context6.i410.i = getelementptr i8, ptr %netdev, i32 2400
  %134 = ptrtoint ptr %context6.i410.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx141.i, ptr %context6.i410.i, align 4
  %135 = ptrtoint ptr %arrayidx.i404.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i404.i, align 4
  %call.i.i412.i = call i32 @request_threaded_irq(i32 noundef %136, ptr noundef nonnull @lan743x_intr_entry_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %arrayidx.i404.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i412.i)
  %tobool7.not.i413.i = icmp eq i32 %call.i.i412.i, 0
  br i1 %tobool7.not.i413.i, label %if.end145.i, label %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge

for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge: ; preds = %for.body132.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up.sink.split.i

if.end145.i:                                      ; preds = %for.body132.lr.ph.i
  %and150.i = and i32 %spec.store.select239.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  %137 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %intr1.i, align 4
  %or149.i = or i32 %138, 2
  store i32 %or149.i, ptr %intr1.i, align 4
  br i1 %tobool151.not.i, label %if.then152.i, label %if.end145.i.if.end163.i_crit_edge

if.end145.i.if.end163.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163.i

if.then152.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i417.i = getelementptr i8, ptr %140, i32 1940
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i417.i, i32 33554432) #10, !srcloc !96
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.then152.i, %if.end145.i.if.end163.i_crit_edge, %if.end113.i.if.end163.i_crit_edge
  %141 = ptrtoint ptr %number_of_vectors.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %number_of_vectors.i, align 4
  %sub165.i = add i32 %142, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub165.i)
  %cmp166.i = icmp sgt i32 %sub165.i, 1
  br i1 %cmp166.i, label %for.body185.lr.ph.i, label %if.end163.i.if.end_crit_edge

if.end163.i.if.end_crit_edge:                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body185.lr.ph.i:                              ; preds = %if.end163.i
  %sub171.i = add i32 %142, -2
  %143 = ptrtoint ptr %csr79.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %csr79.i, align 4
  %and178.i = and i32 %144, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i)
  %tobool179.not.i = icmp eq i32 %and178.i, 0
  %spec.store.select240.i = select i1 %tobool179.not.i, i32 1594, i32 63488
  %145 = call i32 @llvm.smin.i32(i32 %sub171.i, i32 4) #10
  %and195.i = and i32 %spec.store.select240.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br label %for.body185.i

for.body185.i:                                    ; preds = %cleanup218.i.for.body185.i_crit_edge, %for.body185.lr.ph.i
  %index.3453.i = phi i32 [ 0, %for.body185.lr.ph.i ], [ %add187.i, %cleanup218.i.for.body185.i_crit_edge ]
  %int_vec_map0.0452.i = phi i32 [ 0, %for.body185.lr.ph.i ], [ %or194.i, %cleanup218.i.for.body185.i_crit_edge ]
  %int_vec_en_auto_clr.0451.i = phi i32 [ 0, %for.body185.lr.ph.i ], [ %int_vec_en_auto_clr.1.i, %cleanup218.i.for.body185.i_crit_edge ]
  %add187.i = add nuw nsw i32 %index.3453.i, 1
  %add188.i = add nuw nsw i32 %index.3453.i, 2
  %shl191.i = shl i32 16777216, %index.3453.i
  %shl192.i = shl i32 %index.3453.i, 2
  %shl193.i = shl i32 %add188.i, %shl192.i
  %or194.i = or i32 %shl193.i, %int_vec_map0.0452.i
  %146 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i419.i = getelementptr i8, ptr %147, i32 1952
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %148 = call i32 @llvm.bswap.i32(i32 %or194.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i419.i, i32 %148) #10, !srcloc !96
  br i1 %tobool196.not.i, label %for.body185.i.if.end201.i_crit_edge, label %if.then197.i

for.body185.i.if.end201.i_crit_edge:              ; preds = %for.body185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201.i

if.then197.i:                                     ; preds = %for.body185.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl199.i = shl i32 4, %index.3453.i
  %or200.i = or i32 %int_vec_en_auto_clr.0451.i, %shl199.i
  %149 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i421.i = getelementptr i8, ptr %150, i32 1948
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %151 = call i32 @llvm.bswap.i32(i32 %or200.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i421.i, i32 %151) #10, !srcloc !96
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.then197.i, %for.body185.i.if.end201.i_crit_edge
  %int_vec_en_auto_clr.1.i = phi i32 [ %or200.i, %if.then197.i ], [ %int_vec_en_auto_clr.0451.i, %for.body185.i.if.end201.i_crit_edge ]
  %neg202.i = xor i32 %shl191.i, -1
  %152 = ptrtoint ptr %int_mask4.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %int_mask4.i.i, align 4
  %and206.i = and i32 %153, %neg202.i
  store i32 %and206.i, ptr %int_mask4.i.i, align 4
  %arrayidx207.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %index.3453.i
  %arrayidx.i422.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i
  %adapter1.i423.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 2
  %154 = ptrtoint ptr %adapter1.i423.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr.i, ptr %adapter1.i423.i, align 4
  %flags2.i424.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 1
  %155 = ptrtoint ptr %flags2.i424.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %spec.store.select240.i, ptr %flags2.i424.i, align 4
  %vector_index3.i425.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 3
  %156 = ptrtoint ptr %vector_index3.i425.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add188.i, ptr %vector_index3.i425.i, align 4
  %int_mask4.i426.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 4
  %157 = ptrtoint ptr %int_mask4.i426.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %shl191.i, ptr %int_mask4.i426.i, align 4
  %handler5.i427.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 5
  %158 = ptrtoint ptr %handler5.i427.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @lan743x_rx_isr, ptr %handler5.i427.i, align 4
  %context6.i428.i = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 6, i32 2, i32 %add188.i, i32 6
  %159 = ptrtoint ptr %context6.i428.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx207.i, ptr %context6.i428.i, align 4
  %160 = ptrtoint ptr %arrayidx.i422.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i422.i, align 4
  %call.i.i430.i = call i32 @request_threaded_irq(i32 noundef %161, ptr noundef nonnull @lan743x_intr_entry_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %arrayidx.i422.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i430.i)
  %tobool7.not.i431.i = icmp eq i32 %call.i.i430.i, 0
  br i1 %tobool7.not.i431.i, label %cleanup218.i, label %if.end201.i.clean_up.sink.split.i_crit_edge

if.end201.i.clean_up.sink.split.i_crit_edge:      ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clean_up.sink.split.i

cleanup218.i:                                     ; preds = %if.end201.i
  %shl213.i = shl i32 4, %index.3453.i
  %162 = ptrtoint ptr %intr1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %intr1.i, align 4
  %or215.i = or i32 %163, %shl213.i
  store i32 %or215.i, ptr %intr1.i, align 4
  %164 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i435.i = getelementptr i8, ptr %165, i32 1940
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %166 = call i32 @llvm.bswap.i32(i32 %shl213.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i435.i, i32 %166) #10, !srcloc !96
  %exitcond465.not.i = icmp eq i32 %add187.i, %145
  br i1 %exitcond465.not.i, label %cleanup218.i.if.end_crit_edge, label %cleanup218.i.for.body185.i_crit_edge

cleanup218.i.for.body185.i_crit_edge:             ; preds = %cleanup218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body185.i

cleanup218.i.if.end_crit_edge:                    ; preds = %cleanup218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clean_up.sink.split.i:                            ; preds = %if.end201.i.clean_up.sink.split.i_crit_edge, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge, %if.end72.i.clean_up.sink.split.i_crit_edge
  %handler5.i427.lcssa.sink.i = phi ptr [ %handler5.i.i, %if.end72.i.clean_up.sink.split.i_crit_edge ], [ %handler5.i409.i, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge ], [ %handler5.i427.i, %if.end201.i.clean_up.sink.split.i_crit_edge ]
  %context6.i428.lcssa.sink.i = phi ptr [ %context6.i.i, %if.end72.i.clean_up.sink.split.i_crit_edge ], [ %context6.i410.i, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge ], [ %context6.i428.i, %if.end201.i.clean_up.sink.split.i_crit_edge ]
  %int_mask4.i426.lcssa.sink.i = phi ptr [ %int_mask4.i.i, %if.end72.i.clean_up.sink.split.i_crit_edge ], [ %int_mask4.i408.i, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge ], [ %int_mask4.i426.i, %if.end201.i.clean_up.sink.split.i_crit_edge ]
  %flags2.i424.lcssa.sink.i = phi ptr [ %flags2.i.i, %if.end72.i.clean_up.sink.split.i_crit_edge ], [ %flags2.i406.i, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge ], [ %flags2.i424.i, %if.end201.i.clean_up.sink.split.i_crit_edge ]
  %ret.5.ph.i = phi i32 [ %call.i.i.i, %if.end72.i.clean_up.sink.split.i_crit_edge ], [ %call.i.i412.i, %for.body132.lr.ph.i.clean_up.sink.split.i_crit_edge ], [ %call.i.i430.i, %if.end201.i.clean_up.sink.split.i_crit_edge ]
  %167 = ptrtoint ptr %handler5.i427.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %handler5.i427.lcssa.sink.i, align 4
  %168 = ptrtoint ptr %context6.i428.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %context6.i428.lcssa.sink.i, align 4
  %169 = ptrtoint ptr %int_mask4.i426.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %int_mask4.i426.lcssa.sink.i, align 4
  %170 = ptrtoint ptr %flags2.i424.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %flags2.i424.lcssa.sink.i, align 4
  br label %lan743x_intr_open.exit

lan743x_intr_open.exit:                           ; preds = %clean_up.sink.split.i, %lan743x_intr_test_isr.exit.i.lan743x_intr_open.exit_crit_edge
  %ret.5.i = phi i32 [ %__ret.1.i.i, %lan743x_intr_test_isr.exit.i.lan743x_intr_open.exit_crit_edge ], [ %ret.5.ph.i, %clean_up.sink.split.i ]
  call fastcc void @lan743x_intr_close(ptr noundef %add.ptr.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msix_entries.i) #10
  br label %do.body

if.end:                                           ; preds = %cleanup218.i.if.end_crit_edge, %if.end163.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msix_entries.i) #10
  %171 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i69 = getelementptr i8, ptr %172, i32 260
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i69) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %174 = or i32 %173, 16777216
  %175 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i2.i = getelementptr i8, ptr %176, i32 260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i2.i, i32 %174) #10, !srcloc !96
  %177 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i4.i = getelementptr i8, ptr %178, i32 264
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i4.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %180 = or i32 %179, 16777216
  %181 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i6.i = getelementptr i8, ptr %182, i32 264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i6.i, i32 %180) #10, !srcloc !96
  %183 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %add.ptr.i, align 8
  %phy2.i = getelementptr i8, ptr %netdev, i32 4222
  %185 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pdev.i, align 8
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 44, i32 27
  %187 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %of_node.i, align 8
  %call.i71 = call ptr @of_phy_get_and_connect(ptr noundef %184, ptr noundef %188, ptr noundef nonnull @lan743x_phy_link_status_change) #10
  %tobool.not.i72 = icmp eq ptr %call.i71, null
  br i1 %tobool.not.i72, label %if.then.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then.i:                                        ; preds = %if.end
  %mdiobus.i = getelementptr i8, ptr %netdev, i32 2308
  %189 = ptrtoint ptr %mdiobus.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mdiobus.i, align 4
  %call3.i = call ptr @phy_find_first(ptr noundef %190) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.close_mac_crit_edge, label %if.end.i

if.then.i.close_mac_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %close_mac

if.end.i:                                         ; preds = %if.then.i
  %call6.i = call i32 @phy_connect_direct(ptr noundef %184, ptr noundef nonnull %call3.i, ptr noundef nonnull @lan743x_phy_link_status_change, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end9_crit_edge, label %if.end.i.close_mac_crit_edge

if.end.i.close_mac_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %close_mac

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %phydev.0.i = phi ptr [ %call.i71, %if.end.if.end9_crit_edge ], [ %call3.i, %if.end.i.if.end9_crit_edge ]
  call void @phy_remove_link_mode(ptr noundef nonnull %phydev.0.i, i32 noundef 4) #10
  call void @phy_support_asym_pause(ptr noundef nonnull %phydev.0.i) #10
  %fc_request_control.i = getelementptr i8, ptr %netdev, i32 4223
  %191 = ptrtoint ptr %fc_request_control.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 3, ptr %fc_request_control.i, align 1
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %phydev.0.i, i32 0, i32 4
  %192 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  %193 = trunc i16 %bf.load.i to i8
  %194 = lshr i8 %193, 3
  %195 = and i8 %194, 1
  %196 = ptrtoint ptr %phy2.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %phy2.i, align 1
  call void @phy_start(ptr noundef nonnull %phydev.0.i) #10
  %call12.i = call i32 @phy_start_aneg(ptr noundef nonnull %phydev.0.i) #10
  call void @phy_attached_info(ptr noundef nonnull %phydev.0.i) #10
  %call10 = call i32 @lan743x_ptp_open(ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.close_phy_crit_edge

if.end9.close_phy_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %close_phy

if.end13:                                         ; preds = %if.end9
  %197 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i76 = getelementptr i8, ptr %198, i32 1364
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i76, i32 -402718464) #10, !srcloc !96
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13
  %index.0222 = phi i32 [ 0, %if.end13 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %add.ptr.i, i32 0, i32 12, i32 %index.0222
  %199 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx, align 8
  %frame_count.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 13
  %201 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %frame_count.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_ptr.i.i) #10
  %202 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %dma_ptr.i.i, align 4
  %ring_size.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 3
  %203 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 128, ptr %ring_size.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %200, i32 0, i32 4
  %204 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %205, i32 0, i32 44
  %call.i.i.i77 = call i32 @dma_set_mask(ptr noundef %dev.i.i, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i77, 0
  br i1 %cmp.i.i.i, label %if.end10.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx, align 8
  %pdev8.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %pdev8.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pdev8.i.i, align 8
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %209, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i.i, ptr noundef nonnull @.str.15) #13
  br label %do.body44.i.i

if.end10.i.i:                                     ; preds = %for.body
  %call1.i.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i.i, i64 noundef -1) #10
  %210 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ring_size.i.i, align 4
  %mul.i.i = shl i32 %211, 7
  %add.i.i = add i32 %mul.i.i, 4095
  %and12.i.i = and i32 %add.i.i, -4096
  %212 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %dma_ptr.i.i, align 4
  %213 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx, align 8
  %pdev14.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %214, i32 0, i32 4
  %215 = ptrtoint ptr %pdev14.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pdev14.i.i, align 8
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 44
  %call.i88.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev15.i.i, i32 noundef %and12.i.i, ptr noundef nonnull %dma_ptr.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool17.not.i.i78 = icmp eq ptr %call.i88.i.i, null
  br i1 %tobool17.not.i.i78, label %if.end10.i.i.do.body44.i.i_crit_edge, label %if.end19.i.i

if.end10.i.i.do.body44.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

if.end19.i.i:                                     ; preds = %if.end10.i.i
  %ring_allocation_size20.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 4
  %217 = ptrtoint ptr %ring_allocation_size20.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %and12.i.i, ptr %ring_allocation_size20.i.i, align 8
  %ring_cpu_ptr.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 5
  %218 = ptrtoint ptr %ring_cpu_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i88.i.i, ptr %ring_cpu_ptr.i.i, align 4
  %219 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dma_ptr.i.i, align 4
  %ring_dma_ptr.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 6
  %221 = ptrtoint ptr %ring_dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %ring_dma_ptr.i.i, align 8
  %222 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ring_size.i.i, align 4
  %224 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %223, i32 16) #10
  %225 = extractvalue { i32, i1 } %224, 1
  br i1 %225, label %if.end19.i.i.do.body44.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !98

if.end19.i.i.do.body44.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end19.i.i
  %226 = extractvalue { i32, i1 } %224, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %226, i32 noundef 3520) #14
  %tobool23.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool23.not.i.i, label %if.end7.i.i.i.i.do.body44.i.i_crit_edge, label %if.end25.i.i

if.end7.i.i.i.i.do.body44.i.i_crit_edge:          ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

if.end25.i.i:                                     ; preds = %if.end7.i.i.i.i
  %buffer_info.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 7
  %227 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call8.i.i.i.i, ptr %buffer_info.i.i, align 4
  %228 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %dma_ptr.i.i, align 4
  %229 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx, align 8
  %pdev27.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %pdev27.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pdev27.i.i, align 8
  %dev28.i.i = getelementptr inbounds %struct.pci_dev, ptr %232, i32 0, i32 44
  %call.i89.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev28.i.i, i32 noundef 4, ptr noundef nonnull %dma_ptr.i.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool30.not.i.i = icmp eq ptr %call.i89.i.i, null
  br i1 %tobool30.not.i.i, label %if.end25.i.i.do.body44.i.i_crit_edge, label %if.end32.i.i

if.end25.i.i.do.body44.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

if.end32.i.i:                                     ; preds = %if.end25.i.i
  %head_cpu_ptr.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 8
  %233 = ptrtoint ptr %head_cpu_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i89.i.i, ptr %head_cpu_ptr.i.i, align 8
  %234 = ptrtoint ptr %dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %dma_ptr.i.i, align 4
  %head_dma_ptr.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 9
  %236 = ptrtoint ptr %head_dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %head_dma_ptr.i.i, align 4
  %and34.i.i = and i32 %235, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %if.end32.i.i.do.body44.i.i_crit_edge

if.end32.i.i.do.body44.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

if.end37.i.i:                                     ; preds = %if.end32.i.i
  %last_head.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 10
  %237 = ptrtoint ptr %last_head.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %last_head.i.i, align 8
  %238 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %ring_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp3996.i.i = icmp sgt i32 %239, 0
  br i1 %cmp3996.i.i, label %if.end37.i.i.for.body.i.i_crit_edge, label %if.end37.i.i.if.end.i85_crit_edge

if.end37.i.i.if.end.i85_crit_edge:                ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85

if.end37.i.i.for.body.i.i_crit_edge:              ; preds = %if.end37.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %index.097.i.i, 1
  %240 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %ring_size.i.i, align 4
  %cmp39.i.i = icmp slt i32 %inc.i.i, %241
  br i1 %cmp39.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end.i85_crit_edge

for.cond.i.i.if.end.i85_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end37.i.i.for.body.i.i_crit_edge
  %index.097.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end37.i.i.for.body.i.i_crit_edge ]
  %call40.i.i = call fastcc i32 @lan743x_rx_init_ring_element(ptr noundef %arrayidx, i32 noundef %index.097.i.i, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %for.cond.i.i, label %for.body.i.i.do.body44.i.i_crit_edge

for.body.i.i.do.body44.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

do.body44.i.i:                                    ; preds = %for.body.i.i.do.body44.i.i_crit_edge, %if.end32.i.i.do.body44.i.i_crit_edge, %if.end25.i.i.do.body44.i.i_crit_edge, %if.end7.i.i.i.i.do.body44.i.i_crit_edge, %if.end19.i.i.do.body44.i.i_crit_edge, %if.end10.i.i.do.body44.i.i_crit_edge, %do.end.i.i
  %ret.0.i.i = phi i32 [ -12, %do.end.i.i ], [ %call40.i.i, %for.body.i.i.do.body44.i.i_crit_edge ], [ -12, %if.end10.i.i.do.body44.i.i_crit_edge ], [ -12, %if.end19.i.i.do.body44.i.i_crit_edge ], [ -12, %if.end7.i.i.i.i.do.body44.i.i_crit_edge ], [ -12, %if.end25.i.i.do.body44.i.i_crit_edge ], [ -12, %if.end32.i.i.do.body44.i.i_crit_edge ]
  %242 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx, align 8
  %msg_enable.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %msg_enable.i.i, align 8
  %and46.i.i = and i32 %245, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %do.body44.i.i.lan743x_rx_ring_init.exit.i_crit_edge, label %if.then48.i.i

do.body44.i.i.lan743x_rx_ring_init.exit.i_crit_edge: ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rx_ring_init.exit.i

if.then48.i.i:                                    ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %246 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %243, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %247, ptr noundef nonnull @.str.19) #13
  br label %lan743x_rx_ring_init.exit.i

lan743x_rx_ring_init.exit.i:                      ; preds = %if.then48.i.i, %do.body44.i.i.lan743x_rx_ring_init.exit.i_crit_edge
  call fastcc void @lan743x_rx_ring_cleanup(ptr noundef %arrayidx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_ptr.i.i) #10
  br label %close_rx

if.end.i85:                                       ; preds = %for.cond.i.i.if.end.i85_crit_edge, %if.end37.i.i.if.end.i85_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_ptr.i.i) #10
  %248 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %200, align 8
  %napi.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 12
  call void @netif_napi_add(ptr noundef %249, ptr noundef %napi.i, ptr noundef nonnull @lan743x_rx_napi_poll, i32 noundef 64) #10
  %channel_number.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 2
  %250 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %channel_number.i, align 8
  %add.i = add i32 %251, 8
  %shl.i79 = shl nuw i32 1, %add.i
  %csr_address.i.i80 = getelementptr inbounds %struct.lan743x_adapter, ptr %200, i32 0, i32 5, i32 1
  %252 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i.i81 = getelementptr i8, ptr %253, i32 3084
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %254 = call i32 @llvm.bswap.i32(i32 %shl.i79) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i81, i32 %254) #10, !srcloc !96
  %255 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %channel_number.i, align 8
  %add3.i = add i32 %256, 8
  %shl4.i = shl nuw i32 1, %add3.i
  %257 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %200, i32 noundef 3084, i32 noundef %shl4.i, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %258 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %channel_number.i, align 8
  %shl7.i = shl i32 %259, 6
  %add8.i = add i32 %shl7.i, 3144
  %260 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i197.i = getelementptr i8, ptr %261, i32 %add8.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i197.i, i32 0) #10, !srcloc !96
  %262 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %channel_number.i, align 8
  %shl10.i = shl i32 %263, 6
  %add11.i = add i32 %shl10.i, 3148
  %264 = ptrtoint ptr %ring_dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %ring_dma_ptr.i.i, align 8
  %266 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i199.i = getelementptr i8, ptr %267, i32 %add11.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %268 = call i32 @llvm.bswap.i32(i32 %265) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i199.i, i32 %268) #10, !srcloc !96
  %269 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %channel_number.i, align 8
  %shl13.i = shl i32 %270, 6
  %add14.i = add i32 %shl13.i, 3152
  %271 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i201.i = getelementptr i8, ptr %272, i32 %add14.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i201.i, i32 0) #10, !srcloc !96
  %273 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %channel_number.i, align 8
  %shl16.i = shl i32 %274, 6
  %add17.i = add i32 %shl16.i, 3156
  %275 = ptrtoint ptr %head_dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %head_dma_ptr.i.i, align 4
  %277 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i203.i = getelementptr i8, ptr %278, i32 %add17.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %279 = call i32 @llvm.bswap.i32(i32 %276) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i203.i, i32 %279) #10, !srcloc !96
  %csr.i82 = getelementptr inbounds %struct.lan743x_adapter, ptr %200, i32 0, i32 5
  %280 = ptrtoint ptr %csr.i82 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %csr.i82, align 4
  %and19.i = and i32 %281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 1192231968, i32 32
  %282 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %channel_number.i, align 8
  %shl24.i = shl i32 %283, 6
  %add25.i = add i32 %shl24.i, 3136
  %284 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i205.i = getelementptr i8, ptr %285, i32 %add25.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %286 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i205.i, i32 %286) #10, !srcloc !96
  %287 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %channel_number.i, align 8
  %shl27.i = shl i32 %288, 6
  %add28.i = add i32 %shl27.i, 3140
  %289 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i207.i = getelementptr i8, ptr %290, i32 %add28.i
  %291 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i207.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %292 = and i32 %291, 65500
  %293 = call i32 @llvm.bswap.i32(i32 %292) #10
  %294 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %ring_size.i.i, align 4
  %and33.i = and i32 %295, 65535
  %or31.i = or i32 %and33.i, %293
  %296 = ptrtoint ptr %csr.i82 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %csr.i82, align 4
  %and38.i = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %data.1.v.i = select i1 %tobool39.not.i, i32 570687488, i32 570425344
  %data.1.i = or i32 %or31.i, %data.1.v.i
  %298 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %channel_number.i, align 8
  %shl44.i = shl i32 %299, 6
  %add45.i = add i32 %shl44.i, 3140
  %300 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i209.i = getelementptr i8, ptr %301, i32 %add45.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %302 = call i32 @llvm.bswap.i32(i32 %data.1.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i209.i, i32 %302) #10, !srcloc !96
  %303 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %channel_number.i, align 8
  %add47.i = add i32 %304, 24
  %shl48.i = shl nuw i32 1, %add47.i
  %int_mask1.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 0, i32 4
  %305 = ptrtoint ptr %int_mask1.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %int_mask1.i.i, align 4
  %and.i.i83 = and i32 %shl48.i, %306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %tobool.not.i.i84, label %for.inc.i.i, label %if.end.i85.if.then.i.i_crit_edge

if.end.i85.if.then.i.i_crit_edge:                 ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.6.i.i.if.then.i.i_crit_edge, %for.inc.5.i.i.if.then.i.i_crit_edge, %for.inc.4.i.i.if.then.i.i_crit_edge, %for.inc.3.i.i.if.then.i.i_crit_edge, %for.inc.2.i.i.if.then.i.i_crit_edge, %for.inc.1.i.i.if.then.i.i_crit_edge, %for.inc.i.i.if.then.i.i_crit_edge, %if.end.i85.if.then.i.i_crit_edge
  %index.010.lcssa.i.i = phi i32 [ 0, %if.end.i85.if.then.i.i_crit_edge ], [ 1, %for.inc.i.i.if.then.i.i_crit_edge ], [ 2, %for.inc.1.i.i.if.then.i.i_crit_edge ], [ 3, %for.inc.2.i.i.if.then.i.i_crit_edge ], [ 4, %for.inc.3.i.i.if.then.i.i_crit_edge ], [ 5, %for.inc.4.i.i.if.then.i.i_crit_edge ], [ 6, %for.inc.5.i.i.if.then.i.i_crit_edge ], [ 7, %for.inc.6.i.i.if.then.i.i_crit_edge ]
  %flags.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 %index.010.lcssa.i.i, i32 1
  %307 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %flags.i.i, align 4
  br label %lan743x_intr_get_vector_flags.exit.i

for.inc.i.i:                                      ; preds = %if.end.i85
  %int_mask1.1.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 1, i32 4
  %309 = ptrtoint ptr %int_mask1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %int_mask1.1.i.i, align 4
  %and.1.i.i = and i32 %310, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %int_mask1.2.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 2, i32 4
  %311 = ptrtoint ptr %int_mask1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %int_mask1.2.i.i, align 4
  %and.2.i.i = and i32 %312, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.if.then.i.i_crit_edge

for.inc.1.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %int_mask1.3.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 3, i32 4
  %313 = ptrtoint ptr %int_mask1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %int_mask1.3.i.i, align 4
  %and.3.i.i = and i32 %314, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.if.then.i.i_crit_edge

for.inc.2.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %int_mask1.4.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 4, i32 4
  %315 = ptrtoint ptr %int_mask1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %int_mask1.4.i.i, align 4
  %and.4.i.i = and i32 %316, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.if.then.i.i_crit_edge

for.inc.3.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %int_mask1.5.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 5, i32 4
  %317 = ptrtoint ptr %int_mask1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %int_mask1.5.i.i, align 4
  %and.5.i.i = and i32 %318, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.if.then.i.i_crit_edge

for.inc.4.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %int_mask1.6.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 6, i32 4
  %319 = ptrtoint ptr %int_mask1.6.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %int_mask1.6.i.i, align 4
  %and.6.i.i = and i32 %320, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.if.then.i.i_crit_edge

for.inc.5.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %int_mask1.7.i.i = getelementptr %struct.lan743x_adapter, ptr %200, i32 0, i32 6, i32 2, i32 7, i32 4
  %321 = ptrtoint ptr %int_mask1.7.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %int_mask1.7.i.i, align 4
  %and.7.i.i = and i32 %322, %shl48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.lan743x_intr_get_vector_flags.exit.i_crit_edge, label %for.inc.6.i.i.if.then.i.i_crit_edge

for.inc.6.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.6.i.i.lan743x_intr_get_vector_flags.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_intr_get_vector_flags.exit.i

lan743x_intr_get_vector_flags.exit.i:             ; preds = %for.inc.6.i.i.lan743x_intr_get_vector_flags.exit.i_crit_edge, %if.then.i.i
  %retval.0.i210.i = phi i32 [ %308, %if.then.i.i ], [ 0, %for.inc.6.i.i.lan743x_intr_get_vector_flags.exit.i_crit_edge ]
  %vector_flags.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 1
  %323 = ptrtoint ptr %vector_flags.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %retval.0.i210.i, ptr %vector_flags.i, align 4
  %and51.i = lshr i32 %retval.0.i210.i, 7
  %324 = and i32 %and51.i, 64
  %and57.i = lshr i32 %retval.0.i210.i, 12
  %325 = and i32 %and57.i, 8
  %326 = or i32 %325, %324
  %and63.i = and i32 %retval.0.i210.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  %or66.i = or i32 %326, 7
  %data.4.i = select i1 %tobool64.not.i, i32 %326, i32 %or66.i
  %and69.i = lshr i32 %retval.0.i210.i, 2
  %327 = and i32 %and69.i, 16
  %328 = or i32 %data.4.i, %327
  %shl75.i = shl i32 %304, 6
  %add76.i = add i32 %shl75.i, 3172
  %329 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i212.i = getelementptr i8, ptr %330, i32 %add76.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %331 = shl nuw nsw i32 %328, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i212.i, i32 %331) #10, !srcloc !96
  %332 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %ring_size.i.i, align 4
  %sub.i = add i32 %333, -1
  %last_tail.i = getelementptr inbounds %struct.lan743x_rx, ptr %arrayidx, i32 0, i32 11
  %334 = ptrtoint ptr %last_tail.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %sub.i, ptr %last_tail.i, align 4
  %335 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %channel_number.i, align 8
  %shl79.i = shl i32 %336, 6
  %add80.i = add i32 %shl79.i, 3164
  %337 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i214.i = getelementptr i8, ptr %338, i32 %add80.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %339 = call i32 @llvm.bswap.i32(i32 %sub.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i214.i, i32 %339) #10, !srcloc !96
  %340 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %channel_number.i, align 8
  %shl83.i = shl i32 %341, 6
  %add84.i = add i32 %shl83.i, 3160
  %342 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i216.i = getelementptr i8, ptr %343, i32 %add84.i
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i216.i) #10, !srcloc !93
  %345 = call i32 @llvm.bswap.i32(i32 %344) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %346 = ptrtoint ptr %last_head.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %last_head.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool87.not.i = icmp eq i32 %344, 0
  br i1 %tobool87.not.i, label %for.inc, label %if.then88.i

if.then88.i:                                      ; preds = %lan743x_intr_get_vector_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__netif_napi_del(ptr noundef %napi.i) #10
  call void @synchronize_net() #10
  call fastcc void @lan743x_rx_ring_cleanup(ptr noundef %arrayidx) #10
  br label %close_rx

for.inc:                                          ; preds = %lan743x_intr_get_vector_flags.exit.i
  call void @napi_enable(ptr noundef %napi.i) #10
  %347 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %channel_number.i, align 8
  %add92.i = add i32 %348, 24
  %shl93.i = shl nuw i32 1, %add92.i
  %349 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i218.i = getelementptr i8, ptr %350, i32 1928
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %351 = call i32 @llvm.bswap.i32(i32 %shl93.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i218.i, i32 %351) #10, !srcloc !96
  %352 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %channel_number.i, align 8
  %add95.i = add i32 %353, 16
  %shl96.i = shl nuw i32 1, %add95.i
  %354 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i220.i = getelementptr i8, ptr %355, i32 3088
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %356 = call i32 @llvm.bswap.i32(i32 %shl96.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i220.i, i32 %356) #10, !srcloc !96
  %357 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %channel_number.i, align 8
  %add98.i = add i32 %358, 16
  %shl99.i = shl nuw i32 1, %add98.i
  %359 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i222.i = getelementptr i8, ptr %360, i32 3092
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %361 = call i32 @llvm.bswap.i32(i32 %shl99.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i222.i, i32 %361) #10, !srcloc !96
  %362 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %channel_number.i, align 8
  %add101.i = add i32 %363, 4
  %shl102.i = shl nuw i32 1, %add101.i
  %364 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i224.i = getelementptr i8, ptr %365, i32 3084
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %366 = call i32 @llvm.bswap.i32(i32 %shl102.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i224.i, i32 %366) #10, !srcloc !96
  %367 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %channel_number.i, align 8
  %add104.i = add i32 %368, 20
  %shl105.i = shl nuw i32 1, %add104.i
  %369 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i226.i = getelementptr i8, ptr %370, i32 172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %371 = call i32 @llvm.bswap.i32(i32 %shl105.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i226.i, i32 %371) #10, !srcloc !96
  %372 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %channel_number.i, align 8
  %add107.i = add i32 %373, 20
  %shl108.i = shl nuw i32 1, %add107.i
  %374 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %200, i32 noundef 172, i32 noundef %shl108.i, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %375 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %channel_number.i, align 8
  %shl111.i = shl i32 %376, 2
  %add112.i = add i32 %shl111.i, 224
  %377 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i228.i = getelementptr i8, ptr %378, i32 %add112.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i228.i, i32 -1442185216) #10, !srcloc !96
  %379 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %channel_number.i, align 8
  %add114.i = add i32 %380, 28
  %shl115.i = shl nuw i32 1, %add114.i
  %381 = ptrtoint ptr %csr_address.i.i80 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %csr_address.i.i80, align 4
  %arrayidx.i230.i = getelementptr i8, ptr %382, i32 172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %383 = call i32 @llvm.bswap.i32(i32 %shl115.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i230.i, i32 %383) #10, !srcloc !96
  %inc = add nuw nsw i32 %index.0222, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tx = getelementptr i8, ptr %netdev, i32 4224
  %384 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %tx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_ptr.i.i88) #10
  %386 = ptrtoint ptr %dma_ptr.i.i88 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 -1, ptr %dma_ptr.i.i88, align 4, !annotation !99
  %ring_size.i.i89 = getelementptr i8, ptr %netdev, i32 4240
  %387 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 50, ptr %ring_size.i.i89, align 8
  %pdev.i.i90 = getelementptr inbounds %struct.lan743x_adapter, ptr %385, i32 0, i32 4
  %388 = ptrtoint ptr %pdev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %pdev.i.i90, align 8
  %dev.i.i91 = getelementptr inbounds %struct.pci_dev, ptr %389, i32 0, i32 44
  %call.i.i.i92 = call i32 @dma_set_mask(ptr noundef %dev.i.i91, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i92)
  %cmp.i.i.i93 = icmp eq i32 %call.i.i.i92, 0
  br i1 %cmp.i.i.i93, label %if.end7.i.i, label %do.end.i.i94

do.end.i.i94:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %390 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %tx, align 8
  %pdev5.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %391, i32 0, i32 4
  %392 = ptrtoint ptr %pdev5.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %pdev5.i.i, align 8
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %393, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.15) #13
  br label %cleanup.i.i137

if.end7.i.i:                                      ; preds = %for.end
  %call1.i.i.i95 = call i32 @dma_set_coherent_mask(ptr noundef %dev.i.i91, i64 noundef -1) #10
  %394 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %ring_size.i.i89, align 8
  %mul.i.i96 = shl i32 %395, 7
  %add.i.i97 = add i32 %mul.i.i96, 4095
  %and9.i.i = and i32 %add.i.i97, -4096
  %396 = ptrtoint ptr %dma_ptr.i.i88 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 0, ptr %dma_ptr.i.i88, align 4
  %397 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %tx, align 8
  %pdev11.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %398, i32 0, i32 4
  %399 = ptrtoint ptr %pdev11.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %pdev11.i.i, align 8
  %dev12.i.i = getelementptr inbounds %struct.pci_dev, ptr %400, i32 0, i32 44
  %call.i60.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev12.i.i, i32 noundef %and9.i.i, ptr noundef nonnull %dma_ptr.i.i88, i32 noundef 3264, i32 noundef 0) #10
  %tobool14.not.i.i = icmp eq ptr %call.i60.i.i, null
  br i1 %tobool14.not.i.i, label %if.end7.i.i.cleanup.i.i137_crit_edge, label %if.end16.i.i

if.end7.i.i.cleanup.i.i137_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i137

if.end16.i.i:                                     ; preds = %if.end7.i.i
  %ring_allocation_size17.i.i = getelementptr i8, ptr %netdev, i32 4244
  %401 = ptrtoint ptr %ring_allocation_size17.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %and9.i.i, ptr %ring_allocation_size17.i.i, align 4
  %ring_cpu_ptr.i.i98 = getelementptr i8, ptr %netdev, i32 4248
  %402 = ptrtoint ptr %ring_cpu_ptr.i.i98 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %call.i60.i.i, ptr %ring_cpu_ptr.i.i98, align 8
  %403 = ptrtoint ptr %dma_ptr.i.i88 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %dma_ptr.i.i88, align 4
  %ring_dma_ptr.i.i99 = getelementptr i8, ptr %netdev, i32 4252
  %405 = ptrtoint ptr %ring_dma_ptr.i.i99 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %ring_dma_ptr.i.i99, align 4
  %406 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %ring_size.i.i89, align 8
  %408 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %407, i32 16) #10
  %409 = extractvalue { i32, i1 } %408, 1
  br i1 %409, label %if.end16.i.i.cleanup.i.i137_crit_edge, label %if.end7.i.i.i.i130, !prof !98

if.end16.i.i.cleanup.i.i137_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i137

if.end7.i.i.i.i130:                               ; preds = %if.end16.i.i
  %410 = extractvalue { i32, i1 } %408, 0
  %call8.i.i.i.i129 = call noalias align 128 ptr @__kmalloc(i32 noundef %410, i32 noundef 3520) #14
  %tobool20.not.i.i = icmp eq ptr %call8.i.i.i.i129, null
  br i1 %tobool20.not.i.i, label %if.end7.i.i.i.i130.cleanup.i.i137_crit_edge, label %if.end22.i.i

if.end7.i.i.i.i130.cleanup.i.i137_crit_edge:      ; preds = %if.end7.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i137

if.end22.i.i:                                     ; preds = %if.end7.i.i.i.i130
  %buffer_info.i.i133 = getelementptr i8, ptr %netdev, i32 4316
  %411 = ptrtoint ptr %buffer_info.i.i133 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call8.i.i.i.i129, ptr %buffer_info.i.i133, align 4
  %412 = ptrtoint ptr %dma_ptr.i.i88 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %dma_ptr.i.i88, align 4
  %413 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %tx, align 8
  %pdev24.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %414, i32 0, i32 4
  %415 = ptrtoint ptr %pdev24.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %pdev24.i.i, align 8
  %dev25.i.i = getelementptr inbounds %struct.pci_dev, ptr %416, i32 0, i32 44
  %call.i61.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev25.i.i, i32 noundef 4, ptr noundef nonnull %dma_ptr.i.i88, i32 noundef 3264, i32 noundef 0) #10
  %tobool27.not.i.i134 = icmp eq ptr %call.i61.i.i, null
  br i1 %tobool27.not.i.i134, label %if.end22.i.i.cleanup.i.i137_crit_edge, label %if.end29.i.i

if.end22.i.i.cleanup.i.i137_crit_edge:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i137

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %head_cpu_ptr.i.i135 = getelementptr i8, ptr %netdev, i32 4320
  %417 = ptrtoint ptr %head_cpu_ptr.i.i135 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call.i61.i.i, ptr %head_cpu_ptr.i.i135, align 8
  %418 = ptrtoint ptr %dma_ptr.i.i88 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %dma_ptr.i.i88, align 4
  %head_dma_ptr.i.i136 = getelementptr i8, ptr %netdev, i32 4324
  %420 = ptrtoint ptr %head_dma_ptr.i.i136 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %419, ptr %head_dma_ptr.i.i136, align 4
  %and31.i.i = and i32 %419, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end.i154, label %if.end29.i.i.cleanup.i.i137_crit_edge

if.end29.i.i.cleanup.i.i137_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i137

cleanup.i.i137:                                   ; preds = %if.end29.i.i.cleanup.i.i137_crit_edge, %if.end22.i.i.cleanup.i.i137_crit_edge, %if.end7.i.i.i.i130.cleanup.i.i137_crit_edge, %if.end16.i.i.cleanup.i.i137_crit_edge, %if.end7.i.i.cleanup.i.i137_crit_edge, %do.end.i.i94
  %head_cpu_ptr.i.i.i = getelementptr i8, ptr %netdev, i32 4320
  %421 = ptrtoint ptr %head_cpu_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %head_cpu_ptr.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %422, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i137.if.end.i.i.i_crit_edge, label %if.then.i62.i.i

cleanup.i.i137.if.end.i.i.i_crit_edge:            ; preds = %cleanup.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i62.i.i:                                  ; preds = %cleanup.i.i137
  call void @__sanitizer_cov_trace_pc() #12
  %423 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %tx, align 8
  %pdev.i.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %424, i32 0, i32 4
  %425 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %426, i32 0, i32 44
  %head_dma_ptr.i.i.i = getelementptr i8, ptr %netdev, i32 4324
  %427 = ptrtoint ptr %head_dma_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %head_dma_ptr.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i.i.i, i32 noundef 4, ptr noundef nonnull %422, i32 noundef %428, i32 noundef 0) #10
  %429 = ptrtoint ptr %head_cpu_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr null, ptr %head_cpu_ptr.i.i.i, align 8
  %430 = ptrtoint ptr %head_dma_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 0, ptr %head_dma_ptr.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i62.i.i, %cleanup.i.i137.if.end.i.i.i_crit_edge
  %buffer_info.i.i.i = getelementptr i8, ptr %netdev, i32 4316
  %431 = ptrtoint ptr %buffer_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %buffer_info.i.i.i, align 4
  call void @kfree(ptr noundef %432) #10
  %433 = ptrtoint ptr %buffer_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr null, ptr %buffer_info.i.i.i, align 4
  %ring_cpu_ptr.i.i.i = getelementptr i8, ptr %netdev, i32 4248
  %434 = ptrtoint ptr %ring_cpu_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %ring_cpu_ptr.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %435, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.lan743x_tx_open.exit_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.lan743x_tx_open.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_open.exit

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %436 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %tx, align 8
  %pdev8.i.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %437, i32 0, i32 4
  %438 = ptrtoint ptr %pdev8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %pdev8.i.i.i, align 8
  %dev9.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %439, i32 0, i32 44
  %ring_allocation_size.i.i.i = getelementptr i8, ptr %netdev, i32 4244
  %440 = ptrtoint ptr %ring_allocation_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %ring_allocation_size.i.i.i, align 4
  %ring_dma_ptr.i.i.i = getelementptr i8, ptr %netdev, i32 4252
  %442 = ptrtoint ptr %ring_dma_ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %ring_dma_ptr.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev9.i.i.i, i32 noundef %441, ptr noundef nonnull %435, i32 noundef %443, i32 noundef 0) #10
  %444 = ptrtoint ptr %ring_allocation_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 0, ptr %ring_allocation_size.i.i.i, align 4
  %445 = ptrtoint ptr %ring_cpu_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr null, ptr %ring_cpu_ptr.i.i.i, align 8
  %446 = ptrtoint ptr %ring_dma_ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 0, ptr %ring_dma_ptr.i.i.i, align 4
  br label %lan743x_tx_open.exit

if.end.i154:                                      ; preds = %if.end29.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_ptr.i.i88) #10
  %channel_number.i138 = getelementptr i8, ptr %netdev, i32 4236
  %447 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %channel_number.i138, align 4
  %add.i139 = add i32 %448, 20
  %shl.i140 = shl nuw i32 1, %add.i139
  %csr_address.i.i141 = getelementptr inbounds %struct.lan743x_adapter, ptr %385, i32 0, i32 5, i32 1
  %449 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i.i142 = getelementptr i8, ptr %450, i32 196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %451 = call i32 @llvm.bswap.i32(i32 %shl.i140) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i142, i32 %451) #10, !srcloc !96
  %452 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %channel_number.i138, align 4
  %add3.i143 = add i32 %453, 20
  %shl4.i144 = shl nuw i32 1, %add3.i143
  %454 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %385, i32 noundef 196, i32 noundef %shl4.i144, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %455 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %channel_number.i138, align 4
  %add7.i = add i32 %456, 28
  %shl8.i = shl nuw i32 1, %add7.i
  %457 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i184.i = getelementptr i8, ptr %458, i32 196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %459 = call i32 @llvm.bswap.i32(i32 %shl8.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i184.i, i32 %459) #10, !srcloc !96
  %460 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %channel_number.i138, align 4
  %add10.i = add i32 %461, 24
  %shl11.i = shl nuw i32 1, %add10.i
  %462 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i186.i = getelementptr i8, ptr %463, i32 3084
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %464 = call i32 @llvm.bswap.i32(i32 %shl11.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i186.i, i32 %464) #10, !srcloc !96
  %465 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %channel_number.i138, align 4
  %add13.i = add i32 %466, 24
  %shl14.i = shl nuw i32 1, %add13.i
  %467 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %385, i32 noundef 3084, i32 noundef %shl14.i, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %468 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %channel_number.i138, align 4
  %shl17.i = shl i32 %469, 6
  %add18.i = add i32 %shl17.i, 3400
  %470 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i188.i = getelementptr i8, ptr %471, i32 %add18.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i188.i, i32 0) #10, !srcloc !96
  %472 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %channel_number.i138, align 4
  %shl20.i = shl i32 %473, 6
  %add21.i = add i32 %shl20.i, 3404
  %474 = ptrtoint ptr %ring_dma_ptr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %ring_dma_ptr.i.i99, align 4
  %476 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i190.i = getelementptr i8, ptr %477, i32 %add21.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %478 = call i32 @llvm.bswap.i32(i32 %475) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i190.i, i32 %478) #10, !srcloc !96
  %479 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %channel_number.i138, align 4
  %shl23.i = shl i32 %480, 6
  %add24.i = add i32 %shl23.i, 3396
  %481 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i192.i = getelementptr i8, ptr %482, i32 %add24.i
  %483 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i192.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %484 = and i32 %483, 65535
  %485 = call i32 @llvm.bswap.i32(i32 %484) #10
  %486 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %ring_size.i.i89, align 8
  %and27.i = and i32 %487, 65535
  %or.i145 = or i32 %and27.i, %485
  %csr.i146 = getelementptr inbounds %struct.lan743x_adapter, ptr %385, i32 0, i32 5
  %488 = ptrtoint ptr %csr.i146 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %csr.i146, align 4
  %and28.i = shl i32 %489, 18
  %490 = and i32 %and28.i, 262144
  %491 = xor i32 %490, 262144
  %492 = or i32 %or.i145, %491
  %493 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %channel_number.i138, align 4
  %shl34.i = shl i32 %494, 6
  %add35.i = add i32 %shl34.i, 3396
  %495 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i194.i = getelementptr i8, ptr %496, i32 %add35.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %497 = call i32 @llvm.bswap.i32(i32 %492) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i194.i, i32 %497) #10, !srcloc !96
  %498 = ptrtoint ptr %csr.i146 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %csr.i146, align 4
  %and38.i147 = and i32 %499, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i147)
  %tobool39.not.i148 = icmp eq i32 %and38.i147, 0
  %data.1.i149 = select i1 %tobool39.not.i148, i32 1343226919, i32 268435488
  %500 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %channel_number.i138, align 4
  %shl47.i = shl i32 %501, 6
  %add48.i = add i32 %shl47.i, 3392
  %502 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i196.i = getelementptr i8, ptr %503, i32 %add48.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %504 = call i32 @llvm.bswap.i32(i32 %data.1.i149) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i196.i, i32 %504) #10, !srcloc !96
  %505 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %channel_number.i138, align 4
  %shl50.i = shl i32 %506, 6
  %add51.i = add i32 %shl50.i, 3408
  %507 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i198.i = getelementptr i8, ptr %508, i32 %add51.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i198.i, i32 0) #10, !srcloc !96
  %509 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %channel_number.i138, align 4
  %shl53.i = shl i32 %510, 6
  %add54.i = add i32 %shl53.i, 3412
  %511 = ptrtoint ptr %head_dma_ptr.i.i136 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %head_dma_ptr.i.i136, align 4
  %513 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i200.i = getelementptr i8, ptr %514, i32 %add54.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %515 = call i32 @llvm.bswap.i32(i32 %512) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i200.i, i32 %515) #10, !srcloc !96
  %516 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %channel_number.i138, align 4
  %shl57.i = shl i32 %517, 6
  %add58.i = add i32 %shl57.i, 3416
  %518 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i202.i = getelementptr i8, ptr %519, i32 %add58.i
  %520 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i202.i) #10, !srcloc !93
  %521 = call i32 @llvm.bswap.i32(i32 %520) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %last_head.i = getelementptr i8, ptr %netdev, i32 4328
  %522 = ptrtoint ptr %last_head.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %521, ptr %last_head.i, align 8
  %last_tail.i150 = getelementptr i8, ptr %netdev, i32 4332
  %523 = ptrtoint ptr %last_tail.i150 to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 0, ptr %last_tail.i150, align 4
  %524 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %channel_number.i138, align 4
  %shl61.i = shl i32 %525, 6
  %add62.i = add i32 %shl61.i, 3420
  %526 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i204.i = getelementptr i8, ptr %527, i32 %add62.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i204.i, i32 0) #10, !srcloc !96
  %528 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %channel_number.i138, align 4
  %add65.i = add i32 %529, 16
  %shl66.i = shl nuw i32 1, %add65.i
  %int_mask1.i.i151 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 0, i32 4
  %530 = ptrtoint ptr %int_mask1.i.i151 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %int_mask1.i.i151, align 4
  %and.i.i152 = and i32 %shl66.i, %531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %and.i.i152, 0
  br i1 %tobool.not.i.i153, label %for.inc.i.i161, label %if.end.i154.if.then.i.i157_crit_edge

if.end.i154.if.then.i.i157_crit_edge:             ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

if.then.i.i157:                                   ; preds = %for.inc.6.i.i185.if.then.i.i157_crit_edge, %for.inc.5.i.i181.if.then.i.i157_crit_edge, %for.inc.4.i.i177.if.then.i.i157_crit_edge, %for.inc.3.i.i173.if.then.i.i157_crit_edge, %for.inc.2.i.i169.if.then.i.i157_crit_edge, %for.inc.1.i.i165.if.then.i.i157_crit_edge, %for.inc.i.i161.if.then.i.i157_crit_edge, %if.end.i154.if.then.i.i157_crit_edge
  %index.010.lcssa.i.i155 = phi i32 [ 0, %if.end.i154.if.then.i.i157_crit_edge ], [ 1, %for.inc.i.i161.if.then.i.i157_crit_edge ], [ 2, %for.inc.1.i.i165.if.then.i.i157_crit_edge ], [ 3, %for.inc.2.i.i169.if.then.i.i157_crit_edge ], [ 4, %for.inc.3.i.i173.if.then.i.i157_crit_edge ], [ 5, %for.inc.4.i.i177.if.then.i.i157_crit_edge ], [ 6, %for.inc.5.i.i181.if.then.i.i157_crit_edge ], [ 7, %for.inc.6.i.i185.if.then.i.i157_crit_edge ]
  %flags.i.i156 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 %index.010.lcssa.i.i155, i32 1
  %532 = ptrtoint ptr %flags.i.i156 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %flags.i.i156, align 4
  br label %lan743x_intr_get_vector_flags.exit.i190

for.inc.i.i161:                                   ; preds = %if.end.i154
  %int_mask1.1.i.i158 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 1, i32 4
  %534 = ptrtoint ptr %int_mask1.1.i.i158 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %int_mask1.1.i.i158, align 4
  %and.1.i.i159 = and i32 %535, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i159)
  %tobool.not.1.i.i160 = icmp eq i32 %and.1.i.i159, 0
  br i1 %tobool.not.1.i.i160, label %for.inc.1.i.i165, label %for.inc.i.i161.if.then.i.i157_crit_edge

for.inc.i.i161.if.then.i.i157_crit_edge:          ; preds = %for.inc.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.1.i.i165:                                 ; preds = %for.inc.i.i161
  %int_mask1.2.i.i162 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 2, i32 4
  %536 = ptrtoint ptr %int_mask1.2.i.i162 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %int_mask1.2.i.i162, align 4
  %and.2.i.i163 = and i32 %537, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i163)
  %tobool.not.2.i.i164 = icmp eq i32 %and.2.i.i163, 0
  br i1 %tobool.not.2.i.i164, label %for.inc.2.i.i169, label %for.inc.1.i.i165.if.then.i.i157_crit_edge

for.inc.1.i.i165.if.then.i.i157_crit_edge:        ; preds = %for.inc.1.i.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.2.i.i169:                                 ; preds = %for.inc.1.i.i165
  %int_mask1.3.i.i166 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 3, i32 4
  %538 = ptrtoint ptr %int_mask1.3.i.i166 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %int_mask1.3.i.i166, align 4
  %and.3.i.i167 = and i32 %539, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i167)
  %tobool.not.3.i.i168 = icmp eq i32 %and.3.i.i167, 0
  br i1 %tobool.not.3.i.i168, label %for.inc.3.i.i173, label %for.inc.2.i.i169.if.then.i.i157_crit_edge

for.inc.2.i.i169.if.then.i.i157_crit_edge:        ; preds = %for.inc.2.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.3.i.i173:                                 ; preds = %for.inc.2.i.i169
  %int_mask1.4.i.i170 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 4, i32 4
  %540 = ptrtoint ptr %int_mask1.4.i.i170 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %int_mask1.4.i.i170, align 4
  %and.4.i.i171 = and i32 %541, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i171)
  %tobool.not.4.i.i172 = icmp eq i32 %and.4.i.i171, 0
  br i1 %tobool.not.4.i.i172, label %for.inc.4.i.i177, label %for.inc.3.i.i173.if.then.i.i157_crit_edge

for.inc.3.i.i173.if.then.i.i157_crit_edge:        ; preds = %for.inc.3.i.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.4.i.i177:                                 ; preds = %for.inc.3.i.i173
  %int_mask1.5.i.i174 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 5, i32 4
  %542 = ptrtoint ptr %int_mask1.5.i.i174 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %int_mask1.5.i.i174, align 4
  %and.5.i.i175 = and i32 %543, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i175)
  %tobool.not.5.i.i176 = icmp eq i32 %and.5.i.i175, 0
  br i1 %tobool.not.5.i.i176, label %for.inc.5.i.i181, label %for.inc.4.i.i177.if.then.i.i157_crit_edge

for.inc.4.i.i177.if.then.i.i157_crit_edge:        ; preds = %for.inc.4.i.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.5.i.i181:                                 ; preds = %for.inc.4.i.i177
  %int_mask1.6.i.i178 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 6, i32 4
  %544 = ptrtoint ptr %int_mask1.6.i.i178 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %int_mask1.6.i.i178, align 4
  %and.6.i.i179 = and i32 %545, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i179)
  %tobool.not.6.i.i180 = icmp eq i32 %and.6.i.i179, 0
  br i1 %tobool.not.6.i.i180, label %for.inc.6.i.i185, label %for.inc.5.i.i181.if.then.i.i157_crit_edge

for.inc.5.i.i181.if.then.i.i157_crit_edge:        ; preds = %for.inc.5.i.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.6.i.i185:                                 ; preds = %for.inc.5.i.i181
  %int_mask1.7.i.i182 = getelementptr %struct.lan743x_adapter, ptr %385, i32 0, i32 6, i32 2, i32 7, i32 4
  %546 = ptrtoint ptr %int_mask1.7.i.i182 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %int_mask1.7.i.i182, align 4
  %and.7.i.i183 = and i32 %547, %shl66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i183)
  %tobool.not.7.i.i184 = icmp eq i32 %and.7.i.i183, 0
  br i1 %tobool.not.7.i.i184, label %for.inc.6.i.i185.lan743x_intr_get_vector_flags.exit.i190_crit_edge, label %for.inc.6.i.i185.if.then.i.i157_crit_edge

for.inc.6.i.i185.if.then.i.i157_crit_edge:        ; preds = %for.inc.6.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i157

for.inc.6.i.i185.lan743x_intr_get_vector_flags.exit.i190_crit_edge: ; preds = %for.inc.6.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_intr_get_vector_flags.exit.i190

lan743x_intr_get_vector_flags.exit.i190:          ; preds = %for.inc.6.i.i185.lan743x_intr_get_vector_flags.exit.i190_crit_edge, %if.then.i.i157
  %retval.0.i205.i = phi i32 [ %533, %if.then.i.i157 ], [ 0, %for.inc.6.i.i185.lan743x_intr_get_vector_flags.exit.i190_crit_edge ]
  %vector_flags.i186 = getelementptr i8, ptr %netdev, i32 4232
  %548 = ptrtoint ptr %vector_flags.i186 to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %retval.0.i205.i, ptr %vector_flags.i186, align 8
  %549 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %385, align 8
  %napi.i187 = getelementptr i8, ptr %netdev, i32 4336
  %551 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %ring_size.i.i89, align 8
  %sub.i188 = add i32 %552, -1
  %state.i.i = getelementptr i8, ptr %netdev, i32 4344
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i.i) #10
  call void @netif_napi_add(ptr noundef %550, ptr noundef %napi.i187, ptr noundef nonnull @lan743x_tx_napi_poll, i32 noundef %sub.i188) #10
  call void @napi_enable(ptr noundef %napi.i187) #10
  %553 = ptrtoint ptr %vector_flags.i186 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %vector_flags.i186, align 8
  %and71.i = lshr i32 %554, 7
  %555 = and i32 %and71.i, 64
  %and77.i = lshr i32 %554, 12
  %556 = and i32 %and77.i, 8
  %557 = or i32 %556, %555
  %and83.i = and i32 %554, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  %or86.i = or i32 %557, 7
  %data.4.i189 = select i1 %tobool84.not.i, i32 %557, i32 %or86.i
  %and89.i = lshr i32 %554, 2
  %558 = and i32 %and89.i, 16
  %559 = or i32 %data.4.i189, %558
  %560 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %channel_number.i138, align 4
  %shl95.i = shl i32 %561, 6
  %add96.i = add i32 %shl95.i, 3428
  %562 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i208.i = getelementptr i8, ptr %563, i32 %add96.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %564 = shl nuw nsw i32 %559, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i208.i, i32 %564) #10, !srcloc !96
  %565 = ptrtoint ptr %vector_flags.i186 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %vector_flags.i186, align 8
  %and98.i = and i32 %566, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.then100.i, label %lan743x_intr_get_vector_flags.exit.i190.lan743x_tx_open.exit.thread_crit_edge

lan743x_intr_get_vector_flags.exit.i190.lan743x_tx_open.exit.thread_crit_edge: ; preds = %lan743x_intr_get_vector_flags.exit.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_open.exit.thread

if.then100.i:                                     ; preds = %lan743x_intr_get_vector_flags.exit.i190
  call void @__sanitizer_cov_trace_pc() #12
  %567 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %channel_number.i138, align 4
  %add102.i = add i32 %568, 16
  %shl103.i = shl nuw i32 1, %add102.i
  %569 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i210.i = getelementptr i8, ptr %570, i32 1928
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %571 = call i32 @llvm.bswap.i32(i32 %shl103.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i210.i, i32 %571) #10, !srcloc !96
  br label %lan743x_tx_open.exit.thread

lan743x_tx_open.exit.thread:                      ; preds = %if.then100.i, %lan743x_intr_get_vector_flags.exit.i190.lan743x_tx_open.exit.thread_crit_edge
  %572 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %channel_number.i138, align 4
  %shl107.i = shl nuw i32 1, %573
  %574 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i212.i191 = getelementptr i8, ptr %575, i32 3092
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %576 = call i32 @llvm.bswap.i32(i32 %shl107.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i212.i191, i32 %576) #10, !srcloc !96
  %577 = ptrtoint ptr %channel_number.i138 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %channel_number.i138, align 4
  %add109.i = add i32 %578, 20
  %shl110.i = shl nuw i32 1, %add109.i
  %579 = ptrtoint ptr %csr_address.i.i141 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %csr_address.i.i141, align 4
  %arrayidx.i214.i192 = getelementptr i8, ptr %580, i32 3084
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %581 = call i32 @llvm.bswap.i32(i32 %shl110.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i214.i192, i32 %581) #10, !srcloc !96
  br label %cleanup

lan743x_tx_open.exit:                             ; preds = %if.then6.i.i.i, %if.end.i.i.i.lan743x_tx_open.exit_crit_edge
  %582 = ptrtoint ptr %ring_size.i.i89 to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 0, ptr %ring_size.i.i89, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_ptr.i.i88) #10
  br label %close_rx

close_rx:                                         ; preds = %lan743x_tx_open.exit, %if.then88.i, %lan743x_rx_ring_init.exit.i
  %ret.0 = phi i32 [ -12, %lan743x_tx_open.exit ], [ -5, %if.then88.i ], [ %ret.0.i.i, %lan743x_rx_ring_init.exit.i ]
  %ring_cpu_ptr = getelementptr i8, ptr %netdev, i32 4588
  %583 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %ring_cpu_ptr, align 4
  %tobool28.not = icmp eq ptr %584, null
  br i1 %tobool28.not, label %close_rx.for.inc33_crit_edge, label %if.then29

close_rx.for.inc33_crit_edge:                     ; preds = %close_rx
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

if.then29:                                        ; preds = %close_rx
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27 = getelementptr i8, ptr %netdev, i32 4568
  call fastcc void @lan743x_rx_close(ptr noundef %arrayidx27)
  br label %for.inc33

for.inc33:                                        ; preds = %if.then29, %close_rx.for.inc33_crit_edge
  %ring_cpu_ptr.1 = getelementptr i8, ptr %netdev, i32 4876
  %585 = ptrtoint ptr %ring_cpu_ptr.1 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %ring_cpu_ptr.1, align 4
  %tobool28.not.1 = icmp eq ptr %586, null
  br i1 %tobool28.not.1, label %for.inc33.for.inc33.1_crit_edge, label %if.then29.1

for.inc33.for.inc33.1_crit_edge:                  ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.1

if.then29.1:                                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.1 = getelementptr i8, ptr %netdev, i32 4856
  call fastcc void @lan743x_rx_close(ptr noundef %arrayidx27.1)
  br label %for.inc33.1

for.inc33.1:                                      ; preds = %if.then29.1, %for.inc33.for.inc33.1_crit_edge
  %ring_cpu_ptr.2 = getelementptr i8, ptr %netdev, i32 5164
  %587 = ptrtoint ptr %ring_cpu_ptr.2 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %ring_cpu_ptr.2, align 4
  %tobool28.not.2 = icmp eq ptr %588, null
  br i1 %tobool28.not.2, label %for.inc33.1.for.inc33.2_crit_edge, label %if.then29.2

for.inc33.1.for.inc33.2_crit_edge:                ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.2

if.then29.2:                                      ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.2 = getelementptr i8, ptr %netdev, i32 5144
  call fastcc void @lan743x_rx_close(ptr noundef %arrayidx27.2)
  br label %for.inc33.2

for.inc33.2:                                      ; preds = %if.then29.2, %for.inc33.1.for.inc33.2_crit_edge
  %ring_cpu_ptr.3 = getelementptr i8, ptr %netdev, i32 5452
  %589 = ptrtoint ptr %ring_cpu_ptr.3 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %ring_cpu_ptr.3, align 4
  %tobool28.not.3 = icmp eq ptr %590, null
  br i1 %tobool28.not.3, label %for.inc33.2.for.inc33.3_crit_edge, label %if.then29.3

for.inc33.2.for.inc33.3_crit_edge:                ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.3

if.then29.3:                                      ; preds = %for.inc33.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27.3 = getelementptr i8, ptr %netdev, i32 5432
  call fastcc void @lan743x_rx_close(ptr noundef %arrayidx27.3)
  br label %for.inc33.3

for.inc33.3:                                      ; preds = %if.then29.3, %for.inc33.2.for.inc33.3_crit_edge
  call void @lan743x_ptp_close(ptr noundef %add.ptr.i) #10
  br label %close_phy

close_phy:                                        ; preds = %for.inc33.3, %if.end9.close_phy_crit_edge
  %ret.1 = phi i32 [ %call10, %if.end9.close_phy_crit_edge ], [ %ret.0, %for.inc33.3 ]
  %591 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %add.ptr.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %592, i32 0, i32 145
  %593 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %phydev.i, align 16
  call void @phy_stop(ptr noundef %594) #10
  %595 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %phydev.i, align 16
  call void @phy_disconnect(ptr noundef %596) #10
  %597 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store ptr null, ptr %phydev.i, align 16
  br label %close_mac

close_mac:                                        ; preds = %close_phy, %if.end.i.close_mac_crit_edge, %if.then.i.close_mac_crit_edge
  %ret.2 = phi i32 [ %ret.1, %close_phy ], [ -5, %if.then.i.close_mac_crit_edge ], [ %call6.i, %if.end.i.close_mac_crit_edge ]
  %598 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i196 = getelementptr i8, ptr %599, i32 264
  %600 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i196) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %601 = and i32 %600, -16777217
  %602 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i14.i = getelementptr i8, ptr %603, i32 264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i14.i, i32 %601) #10, !srcloc !96
  %604 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 264, i32 noundef 2, i32 noundef 1, i32 noundef 1000, i32 noundef 20000) #10
  %605 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i16.i = getelementptr i8, ptr %606, i32 260
  %607 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i16.i) #10, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %608 = and i32 %607, -16777217
  %609 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i18.i = getelementptr i8, ptr %610, i32 260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i18.i, i32 %608) #10, !srcloc !96
  %611 = call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 260, i32 noundef 2, i32 noundef 1, i32 noundef 1000, i32 noundef 20000) #10
  call fastcc void @lan743x_intr_close(ptr noundef %add.ptr.i)
  br label %do.body

do.body:                                          ; preds = %close_mac, %lan743x_intr_open.exit
  %ret.4 = phi i32 [ %ret.5.i, %lan743x_intr_open.exit ], [ %ret.2, %close_mac ]
  %msg_enable = getelementptr i8, ptr %netdev, i32 2312
  %612 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %msg_enable, align 8
  %and = and i32 %613, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.body.cleanup_crit_edge, label %if.then37

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %614 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %615, ptr noundef nonnull @.str.10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body.cleanup_crit_edge, %lan743x_tx_open.exit.thread
  %retval.0 = phi i32 [ %ret.4, %if.then37 ], [ %ret.4, %do.body.cleanup_crit_edge ], [ 0, %lan743x_tx_open.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_close(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr i8, ptr %netdev, i32 4224
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 8
  %channel_number.i = getelementptr i8, ptr %netdev, i32 4236
  %2 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_number.i, align 4
  %add.i = add i32 %3, 16
  %shl.i = shl nuw i32 1, %add.i
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 3084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %6) #10, !srcloc !96
  %7 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_number.i, align 4
  %add.i.i.i = add i32 %8, 20
  %shl.i.i.i = shl nuw i32 1, %add.i.i.i
  %add1.i.i.i = add i32 %8, 16
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %entry
  %timeout.01.i.i = phi i32 [ 100, %entry ], [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %9 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %10, i32 3084
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i.i) #10, !srcloc !93
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and.i.i.i = and i32 %12, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 2
  %13 = lshr i32 %12, %add1.i.i.i
  %14 = and i32 %13, 1
  %or.i.i.i = or i32 %cond.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i.i, 3
  br i1 %cmp.i.i, label %while.body.i.i, label %land.rhs.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge

land.rhs.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_dmac_tx_wait_till_stopped.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #10
  %dec.i.i = add nsw i32 %timeout.01.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_dmac_tx_wait_till_stopped.exit.i

lan743x_dmac_tx_wait_till_stopped.exit.i:         ; preds = %while.body.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge, %land.rhs.i.i.lan743x_dmac_tx_wait_till_stopped.exit.i_crit_edge
  %15 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_number.i, align 4
  %shl5.i = shl nuw i32 1, %16
  %17 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i38.i = getelementptr i8, ptr %18, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl5.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i38.i, i32 %19) #10, !srcloc !96
  %20 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_number.i, align 4
  %add7.i = add i32 %21, 16
  %shl8.i = shl nuw i32 1, %add7.i
  %22 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i40.i = getelementptr i8, ptr %23, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl8.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i40.i, i32 %24) #10, !srcloc !96
  %napi.i = getelementptr i8, ptr %netdev, i32 4336
  tail call void @napi_disable(ptr noundef %napi.i) #10
  tail call void @__netif_napi_del(ptr noundef %napi.i) #10
  tail call void @synchronize_net() #10
  %25 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_number.i, align 4
  %add11.i = add i32 %26, 24
  %shl12.i = shl nuw i32 1, %add11.i
  %27 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i42.i = getelementptr i8, ptr %28, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl12.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i42.i, i32 %29) #10, !srcloc !96
  %30 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel_number.i, align 4
  %add14.i = add i32 %31, 28
  %shl15.i = shl nuw i32 1, %add14.i
  %32 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %1, i32 noundef 196, i32 noundef %shl15.i, i32 noundef 0, i32 noundef 1000, i32 noundef 20000) #10
  %last_head.i.i = getelementptr i8, ptr %netdev, i32 4328
  %33 = ptrtoint ptr %last_head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_head.i.i, align 8
  %ring_size.i.i.i = getelementptr i8, ptr %netdev, i32 4240
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %lan743x_dmac_tx_wait_till_stopped.exit.i
  %35 = ptrtoint ptr %last_head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_head.i.i, align 8
  tail call fastcc void @lan743x_tx_release_desc(ptr noundef %tx, i32 noundef %36, i1 noundef zeroext true) #10
  %37 = ptrtoint ptr %last_head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_head.i.i, align 8
  %inc.i.i.i = add i32 %38, 1
  %39 = ptrtoint ptr %ring_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ring_size.i.i.i, align 8
  %rem.i.i.i = srem i32 %inc.i.i.i, %40
  store i32 %rem.i.i.i, ptr %last_head.i.i, align 8
  %cmp.not.i.i = icmp eq i32 %rem.i.i.i, %34
  br i1 %cmp.not.i.i, label %lan743x_tx_release_all_descriptors.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

lan743x_tx_release_all_descriptors.exit.i:        ; preds = %do.body.i.i
  %ring_cpu_ptr.i.i = getelementptr i8, ptr %netdev, i32 4248
  %41 = ptrtoint ptr %ring_cpu_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring_cpu_ptr.i.i, align 8
  %mul.i.i = shl i32 %40, 7
  %43 = call ptr @memset(ptr %42, i32 0, i32 %mul.i.i)
  %buffer_info.i.i = getelementptr i8, ptr %netdev, i32 4316
  %44 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer_info.i.i, align 4
  %46 = ptrtoint ptr %ring_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ring_size.i.i.i, align 8
  %mul6.i.i = shl i32 %47, 4
  %48 = call ptr @memset(ptr %45, i32 0, i32 %mul6.i.i)
  %overflow_skb.i = getelementptr i8, ptr %netdev, i32 4560
  %49 = ptrtoint ptr %overflow_skb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %overflow_skb.i, align 8
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %lan743x_tx_release_all_descriptors.exit.i.if.end.i_crit_edge, label %if.then.i

lan743x_tx_release_all_descriptors.exit.i.if.end.i_crit_edge: ; preds = %lan743x_tx_release_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %lan743x_tx_release_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %50) #10
  %51 = ptrtoint ptr %overflow_skb.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %overflow_skb.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lan743x_tx_release_all_descriptors.exit.i.if.end.i_crit_edge
  %head_cpu_ptr.i.i = getelementptr i8, ptr %netdev, i32 4320
  %52 = ptrtoint ptr %head_cpu_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head_cpu_ptr.i.i, align 8
  %tobool.not.i43.i = icmp eq ptr %53, null
  br i1 %tobool.not.i43.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx, align 8
  %pdev.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %head_dma_ptr.i.i = getelementptr i8, ptr %netdev, i32 4324
  %58 = ptrtoint ptr %head_dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %head_dma_ptr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 4, ptr noundef nonnull %53, i32 noundef %59, i32 noundef 0) #10
  %60 = ptrtoint ptr %head_cpu_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %head_cpu_ptr.i.i, align 8
  %61 = ptrtoint ptr %head_dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %head_dma_ptr.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %62 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer_info.i.i, align 4
  tail call void @kfree(ptr noundef %63) #10
  %64 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %buffer_info.i.i, align 4
  %65 = ptrtoint ptr %ring_cpu_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring_cpu_ptr.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %66, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.lan743x_tx_close.exit_crit_edge, label %if.then6.i.i

if.end.i.i.lan743x_tx_close.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_close.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx, align 8
  %pdev8.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %pdev8.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev8.i.i, align 8
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %ring_allocation_size.i.i = getelementptr i8, ptr %netdev, i32 4244
  %71 = ptrtoint ptr %ring_allocation_size.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ring_allocation_size.i.i, align 4
  %ring_dma_ptr.i.i = getelementptr i8, ptr %netdev, i32 4252
  %73 = ptrtoint ptr %ring_dma_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ring_dma_ptr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9.i.i, i32 noundef %72, ptr noundef nonnull %66, i32 noundef %74, i32 noundef 0) #10
  %75 = ptrtoint ptr %ring_allocation_size.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ring_allocation_size.i.i, align 4
  %76 = ptrtoint ptr %ring_cpu_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ring_cpu_ptr.i.i, align 8
  %77 = ptrtoint ptr %ring_dma_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %ring_dma_ptr.i.i, align 4
  br label %lan743x_tx_close.exit

lan743x_tx_close.exit:                            ; preds = %if.then6.i.i, %if.end.i.i.lan743x_tx_close.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %78 = ptrtoint ptr %ring_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %ring_size.i.i.i, align 8
  %arrayidx1 = getelementptr i8, ptr %netdev, i32 4568
  tail call fastcc void @lan743x_rx_close(ptr noundef %arrayidx1)
  %arrayidx1.1 = getelementptr i8, ptr %netdev, i32 4856
  tail call fastcc void @lan743x_rx_close(ptr noundef %arrayidx1.1)
  %arrayidx1.2 = getelementptr i8, ptr %netdev, i32 5144
  tail call fastcc void @lan743x_rx_close(ptr noundef %arrayidx1.2)
  %arrayidx1.3 = getelementptr i8, ptr %netdev, i32 5432
  tail call fastcc void @lan743x_rx_close(ptr noundef %arrayidx1.3)
  tail call void @lan743x_ptp_close(ptr noundef %add.ptr.i) #10
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 145
  %81 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %82) #10
  %83 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_disconnect(ptr noundef %84) #10
  %85 = ptrtoint ptr %phydev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %phydev.i, align 16
  %csr_address.i.i9 = getelementptr i8, ptr %netdev, i32 2328
  %86 = ptrtoint ptr %csr_address.i.i9 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %csr_address.i.i9, align 4
  %arrayidx.i.i10 = getelementptr i8, ptr %87, i32 264
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i10) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %89 = and i32 %88, -16777217
  %90 = ptrtoint ptr %csr_address.i.i9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %csr_address.i.i9, align 4
  %arrayidx.i14.i = getelementptr i8, ptr %91, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i14.i, i32 %89) #10, !srcloc !96
  %92 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 264, i32 noundef 2, i32 noundef 1, i32 noundef 1000, i32 noundef 20000) #10
  %93 = ptrtoint ptr %csr_address.i.i9 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csr_address.i.i9, align 4
  %arrayidx.i16.i = getelementptr i8, ptr %94, i32 260
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i16.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %96 = and i32 %95, -16777217
  %97 = ptrtoint ptr %csr_address.i.i9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %csr_address.i.i9, align 4
  %arrayidx.i18.i = getelementptr i8, ptr %98, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i18.i, i32 %96) #10, !srcloc !96
  %99 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 260, i32 noundef 2, i32 noundef 1, i32 noundef 1000, i32 noundef 20000) #10
  tail call fastcc void @lan743x_intr_close(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr i8, ptr %netdev, i32 4224
  tail call fastcc void @lan743x_tx_xmit_frame(ptr noundef %tx, ptr noundef %skb)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_netdev_set_multicast(ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  %hash_table.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_table.i) #10
  %csr_address.i.i = getelementptr i8, ptr %netdev, i32 2328
  %2 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 1288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %5 = and i32 %4, -168230913
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and2.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %or3.i = or i32 %6, 1792
  %and5.i = and i32 %8, 512
  %9 = or i32 %6, %and5.i
  %spec.select.i = or i32 %9, 1024
  %rfctl.0.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or3.i
  %10 = call ptr @memset(ptr %hash_table.i, i32 0, i32 64)
  %mc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i, label %entry.if.end87.i_crit_edge, label %if.then11.i

entry.if.end87.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then11.i:                                      ; preds = %entry
  %or12.i = or i32 %rfctl.0.i, 2
  %13 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0147.i = load ptr, ptr %mc.i, align 4
  %cmp.not148.i = icmp eq ptr %ha.0147.i, %mc.i
  br i1 %cmp.not148.i, label %if.then11.i.if.end87.i_crit_edge, label %if.then11.i.for.body.i_crit_edge

if.then11.i.for.body.i_crit_edge:                 ; preds = %if.then11.i
  br label %for.body.i

if.then11.i.if.end87.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

for.body.i:                                       ; preds = %if.end81.i.for.body.i_crit_edge, %if.then11.i.for.body.i_crit_edge
  %ha.0152.i = phi ptr [ %ha.0.i, %if.end81.i.for.body.i_crit_edge ], [ %ha.0147.i, %if.then11.i.for.body.i_crit_edge ]
  %rfctl.1151.i = phi i32 [ %rfctl.2.i, %if.end81.i.for.body.i_crit_edge ], [ %or12.i, %if.then11.i.for.body.i_crit_edge ]
  %i.0149.i = phi i32 [ %inc.i, %if.end81.i.for.body.i_crit_edge ], [ 1, %if.then11.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %i.0149.i)
  %cmp17.i = icmp slt i32 %i.0149.i, 33
  br i1 %cmp17.i, label %if.then18.i, label %cond.end.i

if.then18.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %i.0149.i, 3
  %add.i = add i32 %mul.i, 1024
  %14 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i139.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i139.i, i32 0) #10, !srcloc !96
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  %arrayidx20.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20.i, align 2
  %conv21.i = zext i8 %19 to i32
  %arrayidx24.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %21 to i32
  %22 = shl nuw nsw i32 %conv.i, 16
  %23 = shl nuw nsw i32 %conv21.i, 8
  %shl26.i = or i32 %23, %22
  %or27.i = or i32 %shl26.i, %conv25.i
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr.i, align 4
  %conv30.i = zext i8 %25 to i32
  %shl31.i = shl nuw i32 %or27.i, 8
  %or32.i = or i32 %shl31.i, %conv30.i
  %add34.i = add i32 %mul.i, 1028
  %26 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i141.i = getelementptr i8, ptr %27, i32 %add34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i141.i, i32 %28) #10, !srcloc !96
  %arrayidx36.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %30 to i32
  %arrayidx39.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx39.i, align 4
  %conv40.i = zext i8 %32 to i32
  %shl41.i = shl nuw nsw i32 %conv37.i, 8
  %or42.i = or i32 %shl41.i, %conv40.i
  %or43.i = or i32 %or42.i, -2147483648
  %33 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i143.i = getelementptr i8, ptr %34, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or43.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i143.i, i32 %35) #10, !srcloc !96
  br label %if.end81.i

cond.end.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr47.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0152.i, i32 0, i32 2
  %call49.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr47.i, i32 noundef 6) #15
  %36 = lshr i32 %call49.i, 8
  %conv4.i.i.i = and i32 %36, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %37 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %38 to i32
  %39 = shl nuw nsw i32 %conv6.i.i.i, 16
  %40 = and i32 %call49.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %42 to i32
  %43 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %39, %43
  %shr75.i = lshr i32 %or.i13.i.i, 23
  %rem.i = and i32 %shr75.i, 31
  %shl77.i = shl nuw i32 1, %rem.i
  %div137.i = lshr i32 %conv2.i.i.i, 4
  %arrayidx78.i = getelementptr [16 x i32], ptr %hash_table.i, i32 0, i32 %div137.i
  %44 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx78.i, align 4
  %or79.i = or i32 %shl77.i, %45
  store i32 %or79.i, ptr %arrayidx78.i, align 4
  %or80.i = or i32 %rfctl.1151.i, 8
  br label %if.end81.i

if.end81.i:                                       ; preds = %cond.end.i, %if.then18.i
  %rfctl.2.i = phi i32 [ %rfctl.1151.i, %if.then18.i ], [ %or80.i, %cond.end.i ]
  %inc.i = add i32 %i.0149.i, 1
  %46 = ptrtoint ptr %ha.0152.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %ha.0.i = load ptr, ptr %ha.0152.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp.not.i, label %if.end81.i.if.end87.i_crit_edge, label %if.end81.i.for.body.i_crit_edge

if.end81.i.for.body.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end81.i.if.end87.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end81.i.if.end87.i_crit_edge, %if.then11.i.if.end87.i_crit_edge, %entry.if.end87.i_crit_edge
  %rfctl.3.i = phi i32 [ %rfctl.0.i, %entry.if.end87.i_crit_edge ], [ %or12.i, %if.then11.i.if.end87.i_crit_edge ], [ %rfctl.2.i, %if.end81.i.if.end87.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef -2147483648, i32 noundef 1, i32 noundef 40, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end87.i.lan743x_rfe_set_multicast.exit_crit_edge

if.end87.i.lan743x_rfe_set_multicast.exit_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rfe_set_multicast.exit

if.end.i.i:                                       ; preds = %if.end87.i
  %47 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %48, i32 36
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %50 = and i32 %49, -520093697
  %51 = or i32 %50, 16777216
  %52 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i2.i.i = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i2.i.i, i32 %51) #10, !srcloc !96
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %i.09.i.i = phi i32 [ 0, %if.end.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.09.i.i, 128
  %54 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i4.i.i = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %56 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i4.i.i, i32 %56) #10, !srcloc !96
  %arrayidx.i144.i = getelementptr i32, ptr %hash_table.i, i32 %i.09.i.i
  %57 = ptrtoint ptr %arrayidx.i144.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i144.i, align 4
  %59 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i6.i.i = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i6.i.i, i32 %61) #10, !srcloc !96
  %62 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i8, ptr %63, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 16777216) #10, !srcloc !96
  %call2.i.i = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 36, i32 noundef -2147483648, i32 noundef 1, i32 noundef 40, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp ne i32 %call2.i.i, 0
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.lan743x_rfe_set_multicast.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.lan743x_rfe_set_multicast.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rfe_set_multicast.exit

lan743x_rfe_set_multicast.exit:                   ; preds = %for.body.i.i.lan743x_rfe_set_multicast.exit_crit_edge, %if.end87.i.lan743x_rfe_set_multicast.exit_crit_edge
  %64 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i146.i = getelementptr i8, ptr %65, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %rfctl.3.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i146.i, i32 %66) #10, !srcloc !96
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_table.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @eth_prepare_mac_addr_change(ptr noundef %netdev, ptr noundef %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  tail call fastcc void @lan743x_mac_set_address(ptr noundef %add.ptr.i, ptr noundef %sa_data)
  %mac_address.i = getelementptr i8, ptr %netdev, i32 4216
  %0 = ptrtoint ptr %mac_address.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_address.i, align 1
  %conv.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr i8, ptr %netdev, i32 4217
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %3 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  %arrayidx4.i = getelementptr i8, ptr %netdev, i32 4218
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx8.i = getelementptr i8, ptr %netdev, i32 4219
  %6 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %7 to i32
  %shl10.i = shl nuw i32 %conv9.i, 24
  %or11.i = or i32 %or7.i, %shl10.i
  %arrayidx12.i = getelementptr i8, ptr %netdev, i32 4220
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %9 to i32
  %arrayidx15.i = getelementptr i8, ptr %netdev, i32 4221
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %11 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %csr_address.i.i = getelementptr i8, ptr %netdev, i32 2328
  %12 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %13, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %14) #10, !srcloc !96
  %or18.i = or i32 %shl17.i, %conv13.i
  %or19.i = or i32 %or18.i, -2147483648
  %15 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i28.i = getelementptr i8, ptr %16, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i28.i, i32 %17) #10, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35248
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @lan743x_ptp_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef 35248) #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %call4 = tail call i32 @phy_mii_ioctl(ptr noundef %3, ptr noundef %ifr, i32 noundef %cmd) #10
  br label %return

return:                                           ; preds = %if.end3, %if.then1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_netdev_change_mtu(ptr nocapture noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %csr_address.i.i = getelementptr i8, ptr %netdev, i32 2328
  %0 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #10, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end7.i_crit_edge, label %if.then.i

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i2.i = getelementptr i8, ptr %5, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i2.i, i32 %2) #10, !srcloc !96
  %and4.i = and i32 %3, -3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %mac_rx.0.i = phi i32 [ %and4.i, %if.then3.i ], [ %3, %if.then.i.if.end.i_crit_edge ]
  %and5.i = and i32 %mac_rx.0.i, -2
  %6 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i4.i = getelementptr i8, ptr %7, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i4.i, i32 %8) #10, !srcloc !96
  %9 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %add.ptr.i, i32 noundef 260, i32 noundef 2, i32 noundef 1, i32 noundef 1000, i32 noundef 20000) #10
  %or.i = or i32 %and5.i, 2
  %10 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i6.i = getelementptr i8, ptr %11, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i6.i, i32 %12) #10, !srcloc !96
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7.i_crit_edge
  %mac_rx.1.i = phi i32 [ %and5.i, %if.end.i ], [ %3, %entry.if.end7.i_crit_edge ]
  %and8.i = and i32 %mac_rx.1.i, -1073676289
  %add9.i = shl i32 %new_mtu, 16
  %shl.i = add i32 %add9.i, 1179648
  %and10.i = and i32 %shl.i, 1073676288
  %or11.i = or i32 %and8.i, %and10.i
  %13 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i8.i = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 %15) #10, !srcloc !96
  br i1 %tobool.not.i, label %if.end7.i.lan743x_mac_set_mtu.exit_crit_edge, label %if.then13.i

if.end7.i.lan743x_mac_set_mtu.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_mac_set_mtu.exit

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %or14.i = or i32 %or11.i, 1
  %16 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i10.i = getelementptr i8, ptr %17, i32 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i10.i, i32 %18) #10, !srcloc !96
  br label %lan743x_mac_set_mtu.exit

lan743x_mac_set_mtu.exit:                         ; preds = %if.then13.i, %if.end7.i.lan743x_mac_set_mtu.exit_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new_mtu, ptr %mtu, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_netdev_get_stats64(ptr noundef readonly %netdev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %csr_address.i = getelementptr i8, ptr %netdev, i32 2328
  %0 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 4692
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %stats, align 8
  %5 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i77 = getelementptr i8, ptr %6, i32 4824
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i77) #10, !srcloc !93
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %conv3 = zext i32 %8 to i64
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %9 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv3, ptr %tx_packets, align 8
  %10 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i79 = getelementptr i8, ptr %11, i32 4636
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i79) #10, !srcloc !93
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %14 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i81 = getelementptr i8, ptr %15, i32 4640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i81) #10, !srcloc !93
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add = add i32 %17, %13
  %18 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i83 = getelementptr i8, ptr %19, i32 4644
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i83) #10, !srcloc !93
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add7 = add i32 %add, %21
  %conv8 = zext i32 %add7 to i64
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv8, ptr %rx_bytes, align 8
  %23 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i85 = getelementptr i8, ptr %24, i32 4768
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i85) #10, !srcloc !93
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %27 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i87 = getelementptr i8, ptr %28, i32 4772
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i87) #10, !srcloc !93
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add11 = add i32 %30, %26
  %31 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i89 = getelementptr i8, ptr %32, i32 4776
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i89) #10, !srcloc !93
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add13 = add i32 %add11, %34
  %conv14 = zext i32 %add13 to i64
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %35 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv14, ptr %tx_bytes, align 8
  %36 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i91 = getelementptr i8, ptr %37, i32 4608
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i91) #10, !srcloc !93
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %40 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i93 = getelementptr i8, ptr %41, i32 4612
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i93) #10, !srcloc !93
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add17 = add i32 %43, %39
  %44 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i95 = getelementptr i8, ptr %45, i32 4620
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i95) #10, !srcloc !93
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add19 = add i32 %add17, %47
  %48 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i97 = getelementptr i8, ptr %49, i32 4624
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i97) #10, !srcloc !93
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add21 = add i32 %add19, %51
  %52 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i99 = getelementptr i8, ptr %53, i32 4628
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i99) #10, !srcloc !93
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add23 = add i32 %add21, %55
  %conv24 = zext i32 %add23 to i64
  %rx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %56 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv24, ptr %rx_errors, align 8
  %57 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i101 = getelementptr i8, ptr %58, i32 4736
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i101) #10, !srcloc !93
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %61 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i103 = getelementptr i8, ptr %62, i32 4740
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i103) #10, !srcloc !93
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add27 = add i32 %64, %60
  %65 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i105 = getelementptr i8, ptr %66, i32 4744
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i105) #10, !srcloc !93
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add29 = add i32 %add27, %68
  %conv30 = zext i32 %add29 to i64
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %69 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv30, ptr %tx_errors, align 8
  %70 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i107 = getelementptr i8, ptr %71, i32 4632
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i107) #10, !srcloc !93
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %conv32 = zext i32 %73 to i64
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %74 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv32, ptr %rx_dropped, align 8
  %75 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i109 = getelementptr i8, ptr %76, i32 4760
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i109) #10, !srcloc !93
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %conv34 = zext i32 %78 to i64
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %79 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv34, ptr %tx_dropped, align 8
  %80 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i111 = getelementptr i8, ptr %81, i32 4656
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i111) #10, !srcloc !93
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %84 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i113 = getelementptr i8, ptr %85, i32 4788
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i113) #10, !srcloc !93
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add37 = add i32 %87, %83
  %conv38 = zext i32 %add37 to i64
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %88 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv38, ptr %multicast, align 8
  %89 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i115 = getelementptr i8, ptr %90, i32 4752
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i115) #10, !srcloc !93
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %93 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i117 = getelementptr i8, ptr %94, i32 4756
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i117) #10, !srcloc !93
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add41 = add i32 %96, %92
  %97 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i119 = getelementptr i8, ptr %98, i32 4764
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i119) #10, !srcloc !93
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %add43 = add i32 %add41, %100
  %conv44 = zext i32 %add43 to i64
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %101 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %conv44, ptr %collisions, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_ptp_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_rx_close(ptr noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 8
  %channel_number = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 2
  %2 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_number, align 8
  %add = add i32 %3, 24
  %shl = shl nuw i32 1, %add
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %6) #10, !srcloc !96
  %7 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_number, align 8
  %add3 = add i32 %8, 28
  %shl4 = shl nuw i32 1, %add3
  %9 = tail call fastcc i32 @lan743x_csr_wait_for_bit(ptr noundef %1, i32 noundef 172, i32 noundef %shl4, i32 noundef 0, i32 noundef 1000, i32 noundef 20000)
  %10 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_number, align 8
  %shl7 = shl nuw i32 1, %11
  %12 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i32 = getelementptr i8, ptr %13, i32 3084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl7) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i32, i32 %14) #10, !srcloc !96
  %15 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel_number, align 8
  %add.i.i = add i32 %16, 4
  %shl.i.i = shl nuw i32 1, %add.i.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry
  %timeout.01.i = phi i32 [ 100, %entry ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %17 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %18, i32 3084
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #10, !srcloc !93
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and.i.i = and i32 %20, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  %21 = lshr i32 %20, %16
  %22 = and i32 %21, 1
  %or.i.i = or i32 %cond.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i.i)
  %cmp.i = icmp eq i32 %or.i.i, 3
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge

land.rhs.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_dmac_rx_wait_till_stopped.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 20000, i32 noundef 2) #10
  %dec.i = add nsw i32 %timeout.01.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_dmac_rx_wait_till_stopped.exit

lan743x_dmac_rx_wait_till_stopped.exit:           ; preds = %while.body.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge, %land.rhs.i.lan743x_dmac_rx_wait_till_stopped.exit_crit_edge
  %23 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel_number, align 8
  %add11 = add i32 %24, 16
  %shl12 = shl nuw i32 1, %add11
  %25 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i34 = getelementptr i8, ptr %26, i32 3096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl12) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i34, i32 %27) #10, !srcloc !96
  %28 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel_number, align 8
  %add14 = add i32 %29, 24
  %shl15 = shl nuw i32 1, %add14
  %30 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i36 = getelementptr i8, ptr %31, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i36, i32 %32) #10, !srcloc !96
  %napi = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 12
  tail call void @napi_disable(ptr noundef %napi) #10
  tail call void @__netif_napi_del(ptr noundef %napi) #10
  tail call void @synchronize_net() #10
  tail call fastcc void @lan743x_rx_ring_cleanup(ptr noundef %rx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_ptp_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_intr_close(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr1 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 16777216) #10, !srcloc !96
  %2 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i36 = getelementptr i8, ptr %3, i32 1944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i36, i32 -16777216) #10, !srcloc !96
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %index.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr1, align 4
  %shl = shl nuw nsw i32 1, %index.038
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i37 = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 2, i32 %index.038
  %6 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i37, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %arrayidx.i37) #10
  %handler.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 2, i32 %index.038, i32 5
  %8 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %handler.i, align 4
  %context.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 2, i32 %index.038, i32 6
  %9 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %context.i, align 4
  %int_mask.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 2, i32 %index.038, i32 4
  %10 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %int_mask.i, align 4
  %flags.i = getelementptr %struct.lan743x_adapter, ptr %adapter, i32 0, i32 6, i32 2, i32 %index.038, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags.i, align 4
  %neg = xor i32 %shl, -1
  %12 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr1, align 4
  %and5 = and i32 %13, %neg
  store i32 %and5, ptr %intr1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.038, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %14 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intr1, align 4
  %and7 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.end.if.end12_crit_edge, label %if.then9

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 4
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msi(ptr noundef %17) #10
  %18 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intr1, align 4
  %and11 = and i32 %19, -257
  store i32 %and11, ptr %intr1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %for.end.if.end12_crit_edge
  %20 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr1, align 4
  %and14 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %if.then16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %pdev17 = getelementptr inbounds %struct.lan743x_adapter, ptr %adapter, i32 0, i32 4
  %22 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev17, align 8
  tail call void @pci_disable_msix(ptr noundef %23) #10
  %24 = ptrtoint ptr %intr1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intr1, align 4
  %and19 = and i32 %25, -513
  store i32 %and19, ptr %intr1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end12.if.end20_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_intr_shared_isr(ptr noundef %context, i32 noundef %int_sts, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %int_sts, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %for.body.preheader

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body.preheader:                               ; preds = %entry
  %and1 = and i32 %int_sts, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %for.body.preheader.if.end_crit_edge, label %if.then3

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.lan743x_adapter, ptr %context, i32 0, i32 12, i32 0
  tail call void @lan743x_rx_isr(ptr noundef %arrayidx, i32 noundef 16777216, i32 noundef %flags)
  %and4 = and i32 %int_sts, -16777217
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body.preheader.if.end_crit_edge
  %int_sts.addr.1 = phi i32 [ %and4, %if.then3 ], [ %int_sts, %for.body.preheader.if.end_crit_edge ]
  %and1.1 = and i32 %int_sts.addr.1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.1)
  %tobool2.not.1 = icmp eq i32 %and1.1, 0
  br i1 %tobool2.not.1, label %if.end.if.end.1_crit_edge, label %if.then3.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.then3.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.lan743x_adapter, ptr %context, i32 0, i32 12, i32 1
  tail call void @lan743x_rx_isr(ptr noundef %arrayidx.1, i32 noundef 33554432, i32 noundef %flags)
  %and4.1 = and i32 %int_sts.addr.1, -33554433
  br label %if.end.1

if.end.1:                                         ; preds = %if.then3.1, %if.end.if.end.1_crit_edge
  %int_sts.addr.1.1 = phi i32 [ %and4.1, %if.then3.1 ], [ %int_sts.addr.1, %if.end.if.end.1_crit_edge ]
  %and1.2 = and i32 %int_sts.addr.1.1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.2)
  %tobool2.not.2 = icmp eq i32 %and1.2, 0
  br i1 %tobool2.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then3.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.then3.2:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.lan743x_adapter, ptr %context, i32 0, i32 12, i32 2
  tail call void @lan743x_rx_isr(ptr noundef %arrayidx.2, i32 noundef 67108864, i32 noundef %flags)
  %and4.2 = and i32 %int_sts.addr.1.1, -67108865
  br label %if.end.2

if.end.2:                                         ; preds = %if.then3.2, %if.end.1.if.end.2_crit_edge
  %int_sts.addr.1.2 = phi i32 [ %and4.2, %if.then3.2 ], [ %int_sts.addr.1.1, %if.end.1.if.end.2_crit_edge ]
  %and1.3 = and i32 %int_sts.addr.1.2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.3)
  %tobool2.not.3 = icmp eq i32 %and1.3, 0
  br i1 %tobool2.not.3, label %if.end.2.if.end5_crit_edge, label %if.then3.3

if.end.2.if.end5_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3.3:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.lan743x_adapter, ptr %context, i32 0, i32 12, i32 3
  tail call void @lan743x_rx_isr(ptr noundef %arrayidx.3, i32 noundef 134217728, i32 noundef %flags)
  %and4.3 = and i32 %int_sts.addr.1.2, -134217729
  br label %if.end5

if.end5:                                          ; preds = %if.then3.3, %if.end.2.if.end5_crit_edge, %entry.if.end5_crit_edge
  %int_sts.addr.2 = phi i32 [ %int_sts, %entry.if.end5_crit_edge ], [ %and4.3, %if.then3.3 ], [ %int_sts.addr.1.2, %if.end.2.if.end5_crit_edge ]
  %and15 = and i32 %int_sts.addr.2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end5.if.end25_crit_edge, label %if.then17

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %tx = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 11
  tail call void @lan743x_tx_isr(ptr noundef %tx, i32 noundef 65536, i32 noundef %flags)
  %and20 = and i32 %int_sts.addr.2, -65537
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end5.if.end25_crit_edge
  %int_sts.addr.5 = phi i32 [ %int_sts.addr.2, %if.end5.if.end25_crit_edge ], [ %and20, %if.then17 ]
  %and26 = and i32 %int_sts.addr.5, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end39_crit_edge, label %if.then28

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then28:                                        ; preds = %if.end25
  %and29 = and i32 %int_sts.addr.5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then31

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 131072) #10, !srcloc !96
  %software_isr_flag.i = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %software_isr_flag.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %software_isr_flag.i, align 1
  %software_isr_wq.i = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 6, i32 6
  tail call void @__wake_up(ptr noundef %software_isr_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %and32 = and i32 %int_sts.addr.5, -513
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28.if.end33_crit_edge
  %int_sts.addr.6 = phi i32 [ %and32, %if.then31 ], [ %int_sts.addr.5, %if.then28.if.end33_crit_edge ]
  %and34 = and i32 %int_sts.addr.6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lan743x_ptp_isr(ptr noundef %context) #10
  %and37 = and i32 %int_sts.addr.6, -129
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge, %if.end25.if.end39_crit_edge
  %int_sts.addr.7 = phi i32 [ %and37, %if.then36 ], [ %int_sts.addr.6, %if.end33.if.end39_crit_edge ], [ %int_sts.addr.5, %if.end25.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %int_sts.addr.7)
  %tobool40.not = icmp eq i32 %int_sts.addr.7, 0
  br i1 %tobool40.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %context, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %4, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %int_sts.addr.7) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %5) #10, !srcloc !96
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_tx_isr(ptr noundef %context, i32 noundef %int_sts, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 1928
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_number = getelementptr inbounds %struct.lan743x_tx, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_number, align 4
  %add = add i32 %6, 16
  %shl = shl nuw i32 1, %add
  %7 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i53 = getelementptr i8, ptr %8, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i53, i32 %9) #10, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %channel_number2 = getelementptr inbounds %struct.lan743x_tx, ptr %context, i32 0, i32 3
  %10 = ptrtoint ptr %channel_number2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_number2, align 4
  %add3 = add i32 %11, 16
  %shl4 = shl nuw i32 1, %add3
  %and5 = and i32 %shl4, %int_sts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.then30_crit_edge, label %if.then7

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then7:                                         ; preds = %if.end
  %shl10 = shl nuw i32 1, %11
  %and11 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then7.if.end15_crit_edge, label %if.then13

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i55 = getelementptr i8, ptr %13, i32 3088
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i55) #10, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then7.if.end15_crit_edge
  %dmac_int_sts.0 = phi i32 [ %15, %if.then13 ], [ %shl10, %if.then7.if.end15_crit_edge ]
  %and16 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i57 = getelementptr i8, ptr %17, i32 3092
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i57) #10, !srcloc !93
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %dmac_int_en.0 = phi i32 [ %19, %if.then18 ], [ %shl10, %if.end15.if.end21_crit_edge ]
  %and22 = and i32 %dmac_int_sts.0, %shl10
  %and23 = and i32 %and22, %dmac_int_en.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool25.not = icmp eq i32 %and23, 0
  br i1 %tobool25.not, label %if.end21.if.then30_crit_edge, label %if.then26

if.end21.if.then30_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then26:                                        ; preds = %if.end21
  %napi = getelementptr inbounds %struct.lan743x_tx, ptr %context, i32 0, i32 18
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %if.then26.if.end34_crit_edge

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end34

if.then30:                                        ; preds = %if.end21.if.then30_crit_edge, %if.end.if.then30_crit_edge
  %20 = ptrtoint ptr %channel_number2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_number2, align 4
  %add32 = add i32 %21, 16
  %shl33 = shl nuw i32 1, %add32
  %22 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i59 = getelementptr i8, ptr %23, i32 1928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl33) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i59, i32 %24) #10, !srcloc !96
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then.i, %if.then26.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_rx_isr(ptr noundef %context, i32 noundef %int_sts, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_number = getelementptr inbounds %struct.lan743x_rx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_number, align 8
  %add = add i32 %3, 24
  %shl = shl nuw i32 1, %add
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %6) #10, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %channel_number2 = getelementptr inbounds %struct.lan743x_rx, ptr %context, i32 0, i32 2
  %7 = ptrtoint ptr %channel_number2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_number2, align 8
  %add3 = add i32 %8, 24
  %shl4 = shl nuw i32 1, %add3
  %and5 = and i32 %shl4, %int_sts
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.then29_crit_edge, label %if.then7

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then7:                                         ; preds = %if.end
  %add9 = add i32 %8, 16
  %shl10 = shl nuw i32 1, %add9
  %and11 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then7.if.end14_crit_edge, label %if.then13

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i50 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %csr_address.i50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_address.i50, align 4
  %arrayidx.i51 = getelementptr i8, ptr %10, i32 3088
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i51) #10, !srcloc !93
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then7.if.end14_crit_edge
  %dmac_int_sts.0 = phi i32 [ %12, %if.then13 ], [ %shl10, %if.then7.if.end14_crit_edge ]
  %and15 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i52 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %csr_address.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr_address.i52, align 4
  %arrayidx.i53 = getelementptr i8, ptr %14, i32 3092
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i53) #10, !srcloc !93
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %dmac_int_en.0 = phi i32 [ %16, %if.then17 ], [ %shl10, %if.end14.if.end20_crit_edge ]
  %and21 = and i32 %dmac_int_sts.0, %shl10
  %and22 = and i32 %and21, %dmac_int_en.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool24.not = icmp eq i32 %and22, 0
  br i1 %tobool24.not, label %if.end20.if.then29_crit_edge, label %if.then25

if.end20.if.then29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then25:                                        ; preds = %if.end20
  %napi = getelementptr inbounds %struct.lan743x_rx, ptr %context, i32 0, i32 12
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %if.then25.if.end33_crit_edge

if.then25.if.end33_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end33

if.then29:                                        ; preds = %if.end20.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %17 = ptrtoint ptr %channel_number2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel_number2, align 8
  %add31 = add i32 %18, 24
  %shl32 = shl nuw i32 1, %add31
  %csr_address.i54 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %csr_address.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_address.i54, align 4
  %arrayidx.i55 = getelementptr i8, ptr %20, i32 1928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i55, i32 %21) #10, !srcloc !96
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then.i, %if.then25.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_intr_entry_isr(i32 noundef %irq, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %flags = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 1920
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end8

if.else:                                          ; preds = %entry
  %and3 = and i32 %3, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i85 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %csr_address.i85 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr_address.i85, align 4
  %arrayidx.i86 = getelementptr i8, ptr %9, i32 1936
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i86) #10, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end8

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %int_mask = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 4
  %12 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_mask, align 4
  %or = or i32 %13, 1
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then5, %if.then
  %int_sts.0 = phi i32 [ %7, %if.then ], [ %11, %if.then5 ], [ %or, %if.else7 ]
  %and9 = and i32 %int_sts.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.irq_done_crit_edge, label %if.end12

if.end8.irq_done_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_done

if.end12:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and14 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end17_crit_edge, label %if.then16

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %vector_index = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 3
  %16 = ptrtoint ptr %vector_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vector_index, align 4
  %shl = shl nuw i32 1, %17
  %csr_address.i87 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %csr_address.i87 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_address.i87, align 4
  %arrayidx.i88 = getelementptr i8, ptr %19, i32 1944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i88, i32 %20) #10, !srcloc !96
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and19 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i89 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %csr_address.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr_address.i89, align 4
  %arrayidx.i90 = getelementptr i8, ptr %24, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i90, i32 16777216) #10, !srcloc !96
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and24 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i91 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %csr_address.i91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr_address.i91, align 4
  %arrayidx.i92 = getelementptr i8, ptr %28, i32 1928
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i92) #10, !srcloc !93
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %if.end30

if.else28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %int_mask29 = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 4
  %31 = ptrtoint ptr %int_mask29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_mask29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %int_enables.0 = phi i32 [ %30, %if.then26 ], [ %32, %if.else28 ]
  %and31 = and i32 %int_enables.0, %int_sts.0
  %int_mask32 = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 4
  %33 = ptrtoint ptr %int_mask32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_mask32, align 4
  %and33 = and i32 %and31, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end30.if.end43_crit_edge, label %if.then35

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then35:                                        ; preds = %if.end30
  %handler = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 5
  %35 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handler, align 4
  %tobool36.not = icmp eq ptr %36, null
  br i1 %tobool36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %context = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 6
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  tail call void %36(ptr noundef %38, i32 noundef %and33, i32 noundef %40) #10
  br label %if.end43

if.else40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i93 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %csr_address.i93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr_address.i93, align 4
  %arrayidx.i94 = getelementptr i8, ptr %42, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i94, i32 %43) #10, !srcloc !96
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.then37, %if.end30.if.end43_crit_edge
  %result.0 = phi i32 [ 0, %if.end30.if.end43_crit_edge ], [ 1, %if.else40 ], [ 1, %if.then37 ]
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and45 = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end48_crit_edge, label %if.then47

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %csr_address.i95 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %csr_address.i95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr_address.i95, align 4
  %arrayidx.i96 = getelementptr i8, ptr %47, i32 1928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i96, i32 16777216) #10, !srcloc !96
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43.if.end48_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and50 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.irq_done_crit_edge, label %if.then52

if.end48.irq_done_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_done

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %vector_index53 = getelementptr inbounds %struct.lan743x_vector, ptr %ptr, i32 0, i32 3
  %50 = ptrtoint ptr %vector_index53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vector_index53, align 4
  %shl55 = shl nuw i32 1, %51
  %csr_address.i97 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %csr_address.i97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_address.i97, align 4
  %arrayidx.i98 = getelementptr i8, ptr %53, i32 1940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %shl55) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i98, i32 %54) #10, !srcloc !96
  br label %irq_done

irq_done:                                         ; preds = %if.then52, %if.end48.irq_done_crit_edge, %if.end8.irq_done_crit_edge
  %result.1 = phi i32 [ %result.0, %if.then52 ], [ %result.0, %if.end48.irq_done_crit_edge ], [ 0, %if.end8.irq_done_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_ptp_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan743x_phy_link_status_change(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  tail call void @phy_print_status(ptr noundef %1) #10
  %state = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %entry
  %csr_address.i = getelementptr i8, ptr %netdev, i32 2328
  %4 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interface.i, align 4
  %9 = add i32 %8, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  %masksel = select i1 %10, i32 0, i32 524288
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %13 = and i32 %6, -134219777
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and8 = or i32 %masksel, %14
  %masksel48 = select i1 %tobool.not, i32 0, i32 8
  %data.1 = or i32 %and8, %masksel48
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %16, label %if.then.sw.epilog_crit_edge [
    i32 10, label %sw.bb
    i32 100, label %sw.bb12
    i32 1000, label %sw.bb15
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and11 = and i32 %data.1, -7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and13 = and i32 %data.1, -7
  %or14 = or i32 %and13, 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or16 = and i32 %data.1, -7
  %and17 = or i32 %or16, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb12, %sw.bb, %if.then.sw.epilog_crit_edge
  %data.2 = phi i32 [ %data.1, %if.then.sw.epilog_crit_edge ], [ %and17, %sw.bb15 ], [ %or14, %sw.bb12 ], [ %and11, %sw.bb ]
  %18 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i46 = getelementptr i8, ptr %19, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %data.2) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i46, i32 %20) #10, !srcloc !96
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17
  %21 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %advertising, align 4
  %23 = load volatile i32, ptr %advertising, align 4
  %24 = load volatile i32, ptr %advertising, align 4
  %25 = load volatile i32, ptr %advertising, align 4
  %26 = load volatile i32, ptr %advertising, align 4
  %27 = load volatile i32, ptr %advertising, align 4
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %lp_advertising to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %lp_advertising, align 4
  %30 = load volatile i32, ptr %lp_advertising, align 4
  %31 = load volatile i32, ptr %lp_advertising, align 4
  %32 = load volatile i32, ptr %lp_advertising, align 4
  %33 = load volatile i32, ptr %lp_advertising, align 4
  %34 = lshr i32 %33, 3
  %35 = and i32 %34, 1024
  %36 = load volatile i32, ptr %lp_advertising, align 4
  %conv21 = trunc i32 %35 to i16
  %phy1.i = getelementptr i8, ptr %netdev, i32 4222
  %37 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %phy1.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  %39 = lshr i32 %26, 3
  %and2.i.i = and i32 %39, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.lan743x_phy_update_flowcontrol.exit_crit_edge

if.then.i.lan743x_phy_update_flowcontrol.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_phy_update_flowcontrol.exit

if.else.i.i:                                      ; preds = %if.then.i
  %40 = lshr i32 %36, 3
  %41 = and i32 %40, 2048
  %42 = lshr i32 %27, 3
  %and6.i.i = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge, label %if.then8.i.i

if.else.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_phy_update_flowcontrol.exit

if.then8.i.i:                                     ; preds = %if.else.i.i
  %43 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool11.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then8.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge

if.then8.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_phy_update_flowcontrol.exit

if.else13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = lshr exact i16 %conv21, 10
  %45 = trunc i16 %44 to i8
  br label %lan743x_phy_update_flowcontrol.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %fc_request_control.i = getelementptr i8, ptr %netdev, i32 4223
  %46 = ptrtoint ptr %fc_request_control.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fc_request_control.i, align 1
  br label %lan743x_phy_update_flowcontrol.exit

lan743x_phy_update_flowcontrol.exit:              ; preds = %if.else.i, %if.else13.i.i, %if.then8.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge, %if.else.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge, %if.then.i.lan743x_phy_update_flowcontrol.exit_crit_edge
  %cap.0.i = phi i8 [ %47, %if.else.i ], [ 0, %if.else.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge ], [ 3, %if.then.i.lan743x_phy_update_flowcontrol.exit_crit_edge ], [ 2, %if.then8.i.i.lan743x_phy_update_flowcontrol.exit_crit_edge ], [ %45, %if.else13.i.i ]
  %conv.i = zext i8 %cap.0.i to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %spec.select.i.i = select i1 %tobool2.not.i, i32 65535, i32 1073807359
  %and4.i = shl i32 %conv.i, 28
  %48 = and i32 %and4.i, 536870912
  %49 = or i32 %spec.select.i.i, %48
  %50 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %51, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 %52) #10, !srcloc !96
  %53 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %speed, align 8
  tail call void @lan743x_ptp_update_latency(ptr noundef %add.ptr.i, i32 noundef %54) #10
  br label %if.end23

if.end23:                                         ; preds = %lan743x_phy_update_flowcontrol.exit, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_remove_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_ptp_update_latency(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_rx_napi_poll(ptr noundef %napi, i32 noundef %weight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %vector_flags = getelementptr i8, ptr %napi, i32 -44
  %2 = ptrtoint ptr %vector_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vector_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_number = getelementptr i8, ptr %napi, i32 -40
  %4 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_number, align 8
  %add = add i32 %5, 16
  %shl = shl nuw i32 1, %add
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 3088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %8) #10, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %weight)
  %cmp69 = icmp sgt i32 %weight, 0
  br i1 %cmp69, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %count.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @lan743x_rx_process_buffer(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %count.070, 1
  %exitcond.not = icmp eq i32 %inc, %weight
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %frame_count76 = getelementptr i8, ptr %napi, i32 224
  %9 = ptrtoint ptr %frame_count76 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_count76, align 8
  %add577 = add i32 %10, %weight
  store i32 %add577, ptr %frame_count76, align 8
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %count.070, %for.body.for.end_crit_edge ]
  %frame_count = getelementptr i8, ptr %napi, i32 224
  %11 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_count, align 8
  %add5 = add i32 %12, %count.0.lcssa
  store i32 %add5, ptr %frame_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %weight)
  %cmp6 = icmp eq i32 %count.0.lcssa, %weight
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %call10 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0.lcssa) #10
  br i1 %call10, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %vector_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vector_flags, align 4
  %and14 = shl i32 %14, 17
  %15 = and i32 %and14, 536870912
  %and19 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end26, label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %or22 = or i32 %15, 1073741824
  br label %if.then28

if.end26:                                         ; preds = %if.end12
  %channel_number23 = getelementptr i8, ptr %napi, i32 -40
  %16 = ptrtoint ptr %channel_number23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_number23, align 8
  %add24 = add i32 %17, 24
  %shl25 = shl nuw i32 1, %add24
  %csr_address.i62 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %csr_address.i62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_address.i62, align 4
  %arrayidx.i63 = getelementptr i8, ptr %19, i32 1928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl25) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i63, i32 %20) #10, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end26.thread
  %rx_tail_flags.168 = phi i32 [ %or22, %if.end26.thread ], [ 536870912, %if.end26.if.then28_crit_edge ]
  %channel_number29 = getelementptr i8, ptr %napi, i32 -40
  %21 = ptrtoint ptr %channel_number29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel_number29, align 8
  %shl30 = shl i32 %22, 6
  %add31 = add i32 %shl30, 3164
  %last_tail = getelementptr i8, ptr %napi, i32 -4
  %23 = ptrtoint ptr %last_tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_tail, align 4
  %or32 = or i32 %24, %rx_tail_flags.168
  %csr_address.i64 = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %csr_address.i64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_address.i64, align 4
  %arrayidx.i65 = getelementptr i8, ptr %26, i32 %add31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i65, i32 %27) #10, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %weight, %for.end.cleanup_crit_edge ], [ %count.0.lcssa, %if.end9.cleanup_crit_edge ], [ %count.0.lcssa, %if.then28 ], [ %count.0.lcssa, %if.end26.cleanup_crit_edge ], [ %weight, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_rx_ring_cleanup(ptr nocapture noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_info = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 7
  %0 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ring_cpu_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 5
  %2 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_cpu_ptr, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %for.cond.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true
  %ring_size = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 3
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp46 = icmp sgt i32 %5, 0
  br i1 %cmp46, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %lan743x_rx_release_ring_element.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %index.047 = phi i32 [ %inc, %lan743x_rx_release_ring_element.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_cpu_ptr, align 4
  %arrayidx.i = getelementptr %struct.lan743x_rx_descriptor, ptr %7, i32 %index.047
  %8 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_info, align 4
  %10 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 128)
  %dma_ptr.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %9, i32 %index.047, i32 2
  %11 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx, align 8
  %pdev.i = getelementptr inbounds %struct.lan743x_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %buffer_length.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %9, i32 %index.047, i32 3
  %17 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_length.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %12, i32 noundef %18, i32 noundef 2, i32 noundef 0) #10
  %19 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %skb.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %9, i32 %index.047, i32 1
  %20 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.end.i.lan743x_rx_release_ring_element.exit_crit_edge, label %if.then6.i

if.end.i.lan743x_rx_release_ring_element.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rx_release_ring_element.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %21) #10
  br label %lan743x_rx_release_ring_element.exit

lan743x_rx_release_ring_element.exit:             ; preds = %if.then6.i, %if.end.i.lan743x_rx_release_ring_element.exit_crit_edge
  %arrayidx2.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %9, i32 %index.047
  %22 = call ptr @memset(ptr %arrayidx2.i, i32 0, i32 16)
  %inc = add nuw nsw i32 %index.047, 1
  %23 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_size, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %lan743x_rx_release_ring_element.exit.for.body_crit_edge, label %lan743x_rx_release_ring_element.exit.if.end_crit_edge

lan743x_rx_release_ring_element.exit.if.end_crit_edge: ; preds = %lan743x_rx_release_ring_element.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lan743x_rx_release_ring_element.exit.for.body_crit_edge: ; preds = %lan743x_rx_release_ring_element.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end:                                           ; preds = %lan743x_rx_release_ring_element.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %head_cpu_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 8
  %25 = ptrtoint ptr %head_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head_cpu_ptr, align 8
  %tobool2.not = icmp eq ptr %26, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx, align 8
  %pdev = getelementptr inbounds %struct.lan743x_adapter, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %head_dma_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 9
  %31 = ptrtoint ptr %head_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head_dma_ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #10
  %33 = ptrtoint ptr %head_cpu_ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %head_cpu_ptr, align 8
  %34 = ptrtoint ptr %head_dma_ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %head_dma_ptr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %35 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer_info, align 4
  tail call void @kfree(ptr noundef %36) #10
  %37 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buffer_info, align 4
  %ring_cpu_ptr10 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 5
  %38 = ptrtoint ptr %ring_cpu_ptr10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring_cpu_ptr10, align 4
  %tobool11.not = icmp eq ptr %39, null
  br i1 %tobool11.not, label %if.end7.if.end20_crit_edge, label %if.then12

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx, align 8
  %pdev14 = getelementptr inbounds %struct.lan743x_adapter, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %ring_allocation_size = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 4
  %44 = ptrtoint ptr %ring_allocation_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ring_allocation_size, align 8
  %ring_dma_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 6
  %46 = ptrtoint ptr %ring_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ring_dma_ptr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev15, i32 noundef %45, ptr noundef nonnull %39, i32 noundef %47, i32 noundef 0) #10
  %48 = ptrtoint ptr %ring_allocation_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %ring_allocation_size, align 8
  %49 = ptrtoint ptr %ring_cpu_ptr10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %ring_cpu_ptr10, align 4
  %50 = ptrtoint ptr %ring_dma_ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ring_dma_ptr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end7.if.end20_crit_edge
  %ring_size21 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 3
  %51 = ptrtoint ptr %ring_size21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %ring_size21, align 4
  %last_head = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 10
  %52 = ptrtoint ptr %last_head to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %last_head, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan743x_rx_init_ring_element(ptr nocapture noundef readonly %rx, i32 noundef %index, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pdev = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  %add5 = add i32 %7, 20
  %ring_cpu_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 5
  %8 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_cpu_ptr, align 4
  %arrayidx = getelementptr %struct.lan743x_rx_descriptor, ptr %9, i32 %index
  %buffer_info6 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 7
  %10 = ptrtoint ptr %buffer_info6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer_info6, align 4
  %call = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add5, i32 noundef %gfp) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !100

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef -1) #10
  br label %if.then11

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %13, i32 noundef %add5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %13 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %add5, i32 noundef 2, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then11_crit_edge, label %if.end12

dma_map_single_attrs.exit.if.then11_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %dma_map_single_attrs.exit.if.then11_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #10
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %dma_ptr13 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 2
  %20 = ptrtoint ptr %dma_ptr13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_ptr13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end12.if.end26_crit_edge, label %if.then15

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then15:                                        ; preds = %if.end12
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 128
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %and19 = lshr i32 %24, 16
  %shr = and i32 %and19, 16383
  %buffer_length20 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 3
  %25 = ptrtoint ptr %buffer_length20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_length20, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %26)
  br label %if.end22

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_length21 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 3
  %28 = ptrtoint ptr %buffer_length21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_length21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %used_length.0 = phi i32 [ %27, %if.then17 ], [ %29, %if.else ]
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev3, i32 noundef %21, i32 noundef %used_length.0, i32 noundef 2) #10
  %30 = ptrtoint ptr %dma_ptr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_ptr13, align 4
  %buffer_length25 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 3
  %32 = ptrtoint ptr %buffer_length25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_length25, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3, i32 noundef %31, i32 noundef %33, i32 noundef 2, i32 noundef 32) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.end12.if.end26_crit_edge
  %skb27 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 1
  %34 = ptrtoint ptr %skb27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call, ptr %skb27, align 4
  %35 = ptrtoint ptr %dma_ptr13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call41.i, ptr %dma_ptr13, align 4
  %buffer_length29 = getelementptr %struct.lan743x_rx_buffer_info, ptr %11, i32 %index, i32 3
  %36 = ptrtoint ptr %buffer_length29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add5, ptr %buffer_length29, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %data1 = getelementptr %struct.lan743x_rx_descriptor, ptr %9, i32 %index, i32 1
  %38 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %data1, align 4
  %data2 = getelementptr %struct.lan743x_rx_descriptor, ptr %9, i32 %index, i32 2
  %39 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data2, align 8
  %data3 = getelementptr %struct.lan743x_rx_descriptor, ptr %9, i32 %index, i32 3
  %40 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data3, align 4
  %and32 = and i32 %add5, 16383
  %or = or i32 %and32, 32768
  %41 = tail call i32 @llvm.bswap.i32(i32 %or)
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx, align 128
  %and.i74 = and i32 %index, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i74)
  %cmp.i75 = icmp eq i32 %and.i74, 7
  br i1 %cmp.i75, label %if.then.i76, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i76:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx, align 8
  %channel_number.i = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 2
  %45 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel_number.i, align 8
  %shl.i = shl i32 %46, 6
  %add.i = add i32 %shl.i, 3164
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %44, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %48, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %index) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %49) #10, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.then.i76, %if.end26.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.then.i76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan743x_rx_process_buffer(ptr noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head_cpu_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 8
  %0 = ptrtoint ptr %head_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head_cpu_ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %entry.cleanup207_crit_edge, label %lor.lhs.false

entry.cleanup207_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

lor.lhs.false:                                    ; preds = %entry
  %ring_size = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 3
  %9 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp2.not = icmp slt i32 %4, %10
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup207_crit_edge

lor.lhs.false.cleanup207_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end:                                           ; preds = %lor.lhs.false
  %last_head = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 10
  %11 = ptrtoint ptr %last_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp7.not = icmp uge i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %4)
  %cmp11 = icmp eq i32 %12, %4
  %or.cond = select i1 %cmp7.not, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.end.cleanup207_crit_edge, label %if.end13

if.end.cleanup207_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end13:                                         ; preds = %if.end
  %ring_cpu_ptr = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 5
  %13 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring_cpu_ptr, align 4
  %arrayidx = getelementptr %struct.lan743x_rx_descriptor, ptr %14, i32 %12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 128
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end16, label %if.end13.cleanup207_crit_edge

if.end13.cleanup207_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end16:                                         ; preds = %if.end13
  %buffer_info17 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 7
  %18 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_info17, align 4
  %and21 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool25.not = icmp sgt i32 %17, -1
  %20 = and i32 %17, 1073758208
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073758208, i32 %20)
  %.not = icmp eq i32 %20, 1073758208
  br i1 %.not, label %if.then31, label %if.end16.if.end48_crit_edge

if.end16.if.end48_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then31:                                        ; preds = %if.end16
  %inc.i = add nuw i32 %12, 1
  %rem.i = srem i32 %inc.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %4)
  %cmp33 = icmp eq i32 %rem.i, %4
  br i1 %cmp33, label %if.then31.cleanup207_crit_edge, label %if.end35

if.then31.cleanup207_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end35:                                         ; preds = %if.then31
  %arrayidx37 = getelementptr %struct.lan743x_rx_descriptor, ptr %14, i32 %rem.i
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37, align 128
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %and39 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup207_crit_edge

if.end35.cleanup207_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup207

if.end42:                                         ; preds = %if.end35
  %and44 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.move_forward_crit_edge, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end42.move_forward_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_forward

if.end48:                                         ; preds = %if.end42.if.end48_crit_edge, %if.end16.if.end48_crit_edge
  %extension_index.1 = phi i32 [ -1, %if.end16.if.end48_crit_edge ], [ %rem.i, %if.end42.if.end48_crit_edge ]
  %desc_ext.1 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end16.if.end48_crit_edge ], [ %arrayidx37, %if.end42.if.end48_crit_edge ]
  %24 = and i32 %16, 65343
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %shr = lshr exact i32 %25, 16
  %buffer_length51 = getelementptr %struct.lan743x_rx_buffer_info, ptr %19, i32 %12, i32 3
  %26 = ptrtoint ptr %buffer_length51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_length51, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan743x_rx_process_buffer, %if.then58)) #10
          to label %do.end64 [label %if.then58], !srcloc !101

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %tobool25.not, ptr @.str.25, ptr @.str.24
  %cond61 = select i1 %tobool22.not, ptr @.str.25, ptr @.str.26
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug359, ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, ptr noundef nonnull %cond61, i32 noundef %shr, i32 noundef %27) #10
  br label %do.end64

do.end64:                                         ; preds = %if.then58, %if.end48
  %skb65 = getelementptr %struct.lan743x_rx_buffer_info, ptr %19, i32 %12, i32 1
  %28 = ptrtoint ptr %skb65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb65, align 4
  %30 = ptrtoint ptr %last_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_head, align 8
  %call67 = tail call fastcc i32 @lan743x_rx_init_ring_element(ptr noundef %rx, i32 noundef %31, i32 noundef 2593)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end72, label %if.then69

if.then69:                                        ; preds = %do.end64
  %32 = ptrtoint ptr %last_head to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_head, align 8
  %34 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring_cpu_ptr, align 4
  %arrayidx.i = getelementptr %struct.lan743x_rx_descriptor, ptr %35, i32 %33
  %36 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer_info17, align 4
  %dma_ptr.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %37, i32 %33, i32 2
  %38 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_ptr.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %data1.i = getelementptr %struct.lan743x_rx_descriptor, ptr %35, i32 %33, i32 1
  %41 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data1.i, align 4
  %data2.i = getelementptr %struct.lan743x_rx_descriptor, ptr %35, i32 %33, i32 2
  %42 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %data2.i, align 8
  %data3.i = getelementptr %struct.lan743x_rx_descriptor, ptr %35, i32 %33, i32 3
  %43 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data3.i, align 4
  %buffer_length.i = getelementptr %struct.lan743x_rx_buffer_info, ptr %37, i32 %33, i32 3
  %44 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_length.i, align 4
  %and3.i = and i32 %45, 16383
  %or.i = or i32 %and3.i, 32768
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.i, align 128
  %and.i.i = and i32 %33, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 7
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then69.lan743x_rx_reuse_ring_element.exit_crit_edge

if.then69.lan743x_rx_reuse_ring_element.exit_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rx_reuse_ring_element.exit

if.then.i.i:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx, align 8
  %channel_number.i.i = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 2
  %50 = ptrtoint ptr %channel_number.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channel_number.i.i, align 8
  %shl.i.i = shl i32 %51, 6
  %add.i.i = add i32 %shl.i.i, 3164
  %csr_address.i.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %49, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %53, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 %54) #10, !srcloc !96
  br label %lan743x_rx_reuse_ring_element.exit

lan743x_rx_reuse_ring_element.exit:               ; preds = %if.then.i.i, %if.then69.lan743x_rx_reuse_ring_element.exit_crit_edge
  %skb_head = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 14
  %55 = ptrtoint ptr %skb_head to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skb_head, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %56, i32 noundef 1) #10
  %57 = ptrtoint ptr %skb_head to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %skb_head, align 4
  br label %process_extension

if.end72:                                         ; preds = %do.end64
  br i1 %tobool25.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end72
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %61, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub = add i32 %27, -2
  %call75 = tail call ptr @skb_put(ptr noundef %29, i32 noundef %sub) #10
  %skb_head76 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 14
  %62 = ptrtoint ptr %skb_head76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb_head76, align 4
  %tobool77.not = icmp eq ptr %63, null
  br i1 %tobool77.not, label %if.then74.if.end80_crit_edge, label %if.then78

if.then74.if.end80_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then78:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %63, i32 noundef 1) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then74.if.end80_crit_edge
  %64 = ptrtoint ptr %skb_head76 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %29, ptr %skb_head76, align 4
  br label %process_extension

if.else:                                          ; preds = %if.end72
  %skb_head82 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 14
  %65 = ptrtoint ptr %skb_head82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skb_head82, align 4
  %tobool83.not = icmp eq ptr %66, null
  br i1 %tobool83.not, label %do.body106, label %if.then84

if.then84:                                        ; preds = %if.else
  %call85 = tail call ptr @skb_put(ptr noundef %29, i32 noundef %27) #10
  %67 = ptrtoint ptr %skb_head82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb_head82, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 17
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %frag_list, align 8
  %tobool88.not = icmp eq ptr %72, null
  br i1 %tobool88.not, label %if.then84.if.end94_crit_edge, label %if.then89

if.then84.if.end94_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %skb_tail = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 15
  %73 = ptrtoint ptr %skb_tail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %skb_tail, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %if.then84.if.end94_crit_edge
  %frag_list.sink = phi ptr [ %74, %if.then89 ], [ %frag_list, %if.then84.if.end94_crit_edge ]
  %75 = ptrtoint ptr %frag_list.sink to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %29, ptr %frag_list.sink, align 8
  %skb_tail95 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 15
  %76 = ptrtoint ptr %skb_tail95 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %29, ptr %skb_tail95, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %79 = ptrtoint ptr %skb_head82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %skb_head82, align 4
  %len97 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %len97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len97, align 4
  %add = add i32 %82, %78
  store i32 %add, ptr %len97, align 4
  %83 = load i32, ptr %len, align 4
  %84 = load ptr, ptr %skb_head82, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len, align 8
  %add100 = add i32 %86, %83
  store i32 %add100, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 20
  %87 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %truesize, align 8
  %89 = load ptr, ptr %skb_head82, align 4
  %truesize102 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 20
  %90 = ptrtoint ptr %truesize102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %truesize102, align 8
  %add103 = add i32 %91, %88
  store i32 %add103, ptr %truesize102, align 8
  br label %process_extension

do.body106:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan743x_rx_process_buffer, %if.then118)) #10
          to label %do.end123 [label %if.then118], !srcloc !101

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug360, ptr noundef %8, ptr noundef nonnull @.str.27) #10
  br label %do.end123

do.end123:                                        ; preds = %if.then118, %do.body106
  tail call void @__dev_kfree_skb_irq(ptr noundef %29, i32 noundef 1) #10
  br label %process_extension

process_extension:                                ; preds = %do.end123, %if.end94, %if.end80, %lan743x_rx_reuse_ring_element.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %extension_index.1)
  %cmp126 = icmp sgt i32 %extension_index.1, -1
  br i1 %cmp126, label %if.then127, label %process_extension.if.end156_crit_edge

process_extension.if.end156_crit_edge:            ; preds = %process_extension
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then127:                                       ; preds = %process_extension
  %skb_head129 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 14
  %92 = ptrtoint ptr %skb_head129 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb_head129, align 4
  %tobool130.not = icmp eq ptr %93, null
  br i1 %tobool130.not, label %if.then127.if.end135_crit_edge, label %if.then131

if.then127.if.end135_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then131:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %data2 = getelementptr inbounds %struct.lan743x_rx_descriptor, ptr %desc_ext.1, i32 0, i32 2
  %94 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data2, align 8
  %96 = and i32 %95, -193
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %data1 = getelementptr inbounds %struct.lan743x_rx_descriptor, ptr %desc_ext.1, i32 0, i32 1
  %98 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data1, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %conv = zext i32 %100 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  %conv.i = zext i32 %97 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 17
  %101 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add.i, ptr %hwtstamps.i, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.then127.if.end135_crit_edge
  %104 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ring_cpu_ptr, align 4
  %arrayidx.i322 = getelementptr %struct.lan743x_rx_descriptor, ptr %105, i32 %extension_index.1
  %106 = ptrtoint ptr %buffer_info17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buffer_info17, align 4
  %dma_ptr.i324 = getelementptr %struct.lan743x_rx_buffer_info, ptr %107, i32 %extension_index.1, i32 2
  %108 = ptrtoint ptr %dma_ptr.i324 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_ptr.i324, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #10
  %data1.i325 = getelementptr %struct.lan743x_rx_descriptor, ptr %105, i32 %extension_index.1, i32 1
  %111 = ptrtoint ptr %data1.i325 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %data1.i325, align 4
  %data2.i326 = getelementptr %struct.lan743x_rx_descriptor, ptr %105, i32 %extension_index.1, i32 2
  %112 = ptrtoint ptr %data2.i326 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %data2.i326, align 8
  %data3.i327 = getelementptr %struct.lan743x_rx_descriptor, ptr %105, i32 %extension_index.1, i32 3
  %113 = ptrtoint ptr %data3.i327 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %data3.i327, align 4
  %buffer_length.i328 = getelementptr %struct.lan743x_rx_buffer_info, ptr %107, i32 %extension_index.1, i32 3
  %114 = ptrtoint ptr %buffer_length.i328 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %buffer_length.i328, align 4
  %and3.i329 = and i32 %115, 16383
  %or.i330 = or i32 %and3.i329, 32768
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i330) #10
  %117 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx.i322, align 128
  %and.i.i331 = and i32 %extension_index.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i.i331)
  %cmp.i.i332 = icmp eq i32 %and.i.i331, 7
  br i1 %cmp.i.i332, label %if.then.i.i338, label %if.end135.lan743x_rx_reuse_ring_element.exit339_crit_edge

if.end135.lan743x_rx_reuse_ring_element.exit339_crit_edge: ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_rx_reuse_ring_element.exit339

if.then.i.i338:                                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx, align 8
  %channel_number.i.i333 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 2
  %120 = ptrtoint ptr %channel_number.i.i333 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %channel_number.i.i333, align 8
  %shl.i.i334 = shl i32 %121, 6
  %add.i.i335 = add i32 %shl.i.i334, 3164
  %csr_address.i.i.i336 = getelementptr inbounds %struct.lan743x_adapter, ptr %119, i32 0, i32 5, i32 1
  %122 = ptrtoint ptr %csr_address.i.i.i336 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %csr_address.i.i.i336, align 4
  %arrayidx.i.i.i337 = getelementptr i8, ptr %123, i32 %add.i.i335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %124 = tail call i32 @llvm.bswap.i32(i32 %extension_index.1) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i337, i32 %124) #10, !srcloc !96
  br label %lan743x_rx_reuse_ring_element.exit339

lan743x_rx_reuse_ring_element.exit339:            ; preds = %if.then.i.i338, %if.end135.lan743x_rx_reuse_ring_element.exit339_crit_edge
  %125 = ptrtoint ptr %last_head to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %extension_index.1, ptr %last_head, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan743x_rx_process_buffer, %if.then150)) #10
          to label %if.end156 [label %if.then150], !srcloc !101

if.then150:                                       ; preds = %lan743x_rx_reuse_ring_element.exit339
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug361, ptr noundef %8, ptr noundef nonnull @.str.28) #10
  br label %if.end156

if.end156:                                        ; preds = %if.then150, %lan743x_rx_reuse_ring_element.exit339, %process_extension.if.end156_crit_edge
  br i1 %tobool22.not, label %if.end156.move_forward_crit_edge, label %land.lhs.true159

if.end156.move_forward_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_forward

land.lhs.true159:                                 ; preds = %if.end156
  %skb_head160 = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 14
  %126 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %skb_head160, align 4
  %tobool161.not = icmp eq ptr %127, null
  br i1 %tobool161.not, label %land.lhs.true159.move_forward_crit_edge, label %land.lhs.true169

land.lhs.true159.move_forward_crit_edge:          ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_forward

land.lhs.true169:                                 ; preds = %land.lhs.true159
  %call164 = tail call fastcc ptr @lan743x_rx_trim_skb(ptr noundef nonnull %127, i32 noundef %shr)
  %128 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call164, ptr %skb_head160, align 4
  %tobool171.not = icmp eq ptr %call164, null
  br i1 %tobool171.not, label %land.lhs.true169.move_forward_crit_edge, label %if.then172

land.lhs.true169.move_forward_crit_edge:          ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #12
  br label %move_forward

if.then172:                                       ; preds = %land.lhs.true169
  %129 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rx, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %call176 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call164, ptr noundef %132) #10
  %133 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %skb_head160, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %134, i32 0, i32 15, i32 0, i32 18
  %135 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %call176, ptr %protocol, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lan743x_rx_process_buffer, %if.then191)) #10
          to label %do.end198 [label %if.then191], !srcloc !101

if.then191:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %skb_head160, align 4
  %len193 = getelementptr inbounds %struct.sk_buff, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %len193 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len193, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug362, ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef %139) #10
  br label %do.end198

do.end198:                                        ; preds = %if.then191, %if.then172
  %napi = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 12
  %140 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %skb_head160, align 4
  %call200 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %141) #10
  %142 = ptrtoint ptr %skb_head160 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %skb_head160, align 4
  br label %move_forward

move_forward:                                     ; preds = %do.end198, %land.lhs.true169.move_forward_crit_edge, %land.lhs.true159.move_forward_crit_edge, %if.end156.move_forward_crit_edge, %if.end42.move_forward_crit_edge
  %143 = ptrtoint ptr %last_head to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %last_head, align 8
  %last_tail = getelementptr inbounds %struct.lan743x_rx, ptr %rx, i32 0, i32 11
  %145 = ptrtoint ptr %last_tail to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %last_tail, align 4
  %inc.i340 = add i32 %144, 1
  %146 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ring_size, align 4
  %rem.i342 = srem i32 %inc.i340, %147
  store i32 %rem.i342, ptr %last_head, align 8
  br label %cleanup207

cleanup207:                                       ; preds = %move_forward, %if.end35.cleanup207_crit_edge, %if.then31.cleanup207_crit_edge, %if.end13.cleanup207_crit_edge, %if.end.cleanup207_crit_edge, %lor.lhs.false.cleanup207_crit_edge, %entry.cleanup207_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup207_crit_edge ], [ 0, %lor.lhs.false.cleanup207_crit_edge ], [ 0, %if.end.cleanup207_crit_edge ], [ 0, %if.end13.cleanup207_crit_edge ], [ 1, %move_forward ], [ 0, %if.then31.cleanup207_crit_edge ], [ 0, %if.end35.cleanup207_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lan743x_rx_trim_skb(ptr noundef %skb, i32 noundef %frame_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cond.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %1) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #10
  br label %return

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sub = add i32 %frame_length, -4
  %2 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub4.neg = sub i32 %2, %4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 %sub4.neg
  store ptr %add.ptr, ptr %tail, align 8
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %len, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %skb, %if.then2 ], [ %skb, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_tx_napi_poll(ptr noundef %napi, i32 noundef %weight) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %channel_number = getelementptr i8, ptr %napi, i32 -100
  %2 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_number, align 4
  %csr_address.i = getelementptr inbounds %struct.lan743x_adapter, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 3088
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %vector_flags = getelementptr i8, ptr %napi, i32 -104
  %7 = ptrtoint ptr %vector_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vector_flags, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %3
  %9 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i59 = getelementptr i8, ptr %10, i32 3088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i59, i32 %11) #10, !srcloc !96
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %ring_lock = getelementptr i8, ptr %napi, i32 -80
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #10
  %head_cpu_ptr.i = getelementptr i8, ptr %napi, i32 -16
  %last_head.i = getelementptr i8, ptr %napi, i32 -8
  %12 = ptrtoint ptr %head_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head_cpu_ptr.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %17 = ptrtoint ptr %last_head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_head.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not10.i = icmp eq i32 %16, %18
  br i1 %cmp.not10.i, label %do.body2.lan743x_tx_release_completed_descriptors.exit_crit_edge, label %while.body.lr.ph.i

do.body2.lan743x_tx_release_completed_descriptors.exit_crit_edge: ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_release_completed_descriptors.exit

while.body.lr.ph.i:                               ; preds = %do.body2
  %ring_size.i.i = getelementptr i8, ptr %napi, i32 -96
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi i32 [ %18, %while.body.lr.ph.i ], [ %rem.i.i, %while.body.i.while.body.i_crit_edge ]
  tail call fastcc void @lan743x_tx_release_desc(ptr noundef %add.ptr, i32 noundef %19, i1 noundef zeroext false) #10
  %20 = ptrtoint ptr %last_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_head.i, align 8
  %inc.i.i = add i32 %21, 1
  %22 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_size.i.i, align 8
  %rem.i.i = srem i32 %inc.i.i, %23
  store i32 %rem.i.i, ptr %last_head.i, align 8
  %24 = ptrtoint ptr %head_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head_cpu_ptr.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %cmp.not.i = icmp eq i32 %28, %rem.i.i
  br i1 %cmp.not.i, label %while.body.i.lan743x_tx_release_completed_descriptors.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.lan743x_tx_release_completed_descriptors.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_release_completed_descriptors.exit

lan743x_tx_release_completed_descriptors.exit:    ; preds = %while.body.i.lan743x_tx_release_completed_descriptors.exit_crit_edge, %do.body2.lan743x_tx_release_completed_descriptors.exit_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end29.critedge57, label %if.then9

if.then9:                                         ; preds = %lan743x_tx_release_completed_descriptors.exit
  %overflow_skb = getelementptr i8, ptr %napi, i32 224
  %35 = ptrtoint ptr %overflow_skb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %overflow_skb, align 8
  %tobool10.not = icmp eq ptr %36, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i.not.i = icmp eq i16 %40, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 1, i32 2
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nr_frags2.i, align 2
  %conv.i = zext i8 %42 to i32
  %add.i = add nuw nsw i32 %spec.select.i, %conv.i
  %43 = ptrtoint ptr %last_head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_head.i, align 8
  %last_tail2.i = getelementptr i8, ptr %napi, i32 -4
  %45 = ptrtoint ptr %last_tail2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_tail2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp.not.i60 = icmp sgt i32 %44, %46
  br i1 %cmp.not.i60, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %ring_size.i = getelementptr i8, ptr %napi, i32 -96
  %47 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_size.i, align 8
  %49 = xor i32 %46, -1
  %add.i61 = add i32 %44, %49
  %sub3.i = add i32 %add.i61, %48
  br label %lan743x_tx_get_avail_desc.exit

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %50 = xor i32 %46, -1
  %sub5.i = add i32 %44, %50
  br label %lan743x_tx_get_avail_desc.exit

lan743x_tx_get_avail_desc.exit:                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %sub5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i)
  %cmp15.not.not = icmp sgt i32 %add.i, %retval.0.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call5) #10
  br i1 %cmp15.not.not, label %lan743x_tx_get_avail_desc.exit.if.end29_crit_edge, label %if.then24

lan743x_tx_get_avail_desc.exit.if.end29_crit_edge: ; preds = %lan743x_tx_get_avail_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_tx_wake_queue(ptr noundef %32) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call5) #10
  br label %if.end29

if.then24:                                        ; preds = %lan743x_tx_get_avail_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %overflow_skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %overflow_skb, align 8
  tail call fastcc void @lan743x_tx_xmit_frame(ptr noundef %add.ptr, ptr noundef %52)
  %53 = ptrtoint ptr %overflow_skb to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %overflow_skb, align 8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %_tx.i.i63 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i63, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %57) #10
  br label %if.end29

if.end29.critedge57:                              ; preds = %lan743x_tx_release_completed_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call5) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end29.critedge57, %if.then24, %if.else, %lan743x_tx_get_avail_desc.exit.if.end29_crit_edge
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #10
  br i1 %call.i, label %if.end32, label %if.end29.done_crit_edge

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %channel_number to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel_number, align 4
  %add34 = add i32 %59, 16
  %shl35 = shl nuw i32 1, %add34
  %60 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i65 = getelementptr i8, ptr %61, i32 1928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %62 = tail call i32 @llvm.bswap.i32(i32 %shl35) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i65, i32 %62) #10, !srcloc !96
  %63 = ptrtoint ptr %csr_address.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csr_address.i, align 4
  %arrayidx.i67 = getelementptr i8, ptr %64, i32 1920
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i67) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  br label %done

done:                                             ; preds = %if.end32, %if.end29.done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_tx_xmit_frame(ptr noundef %tx, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not.i = icmp eq i16 %3, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 1, i32 2
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags2.i, align 2
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %spec.select.i, %conv.i
  %ring_lock = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #10
  %last_head1.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 16
  %6 = ptrtoint ptr %last_head1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_head1.i, align 8
  %last_tail2.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 17
  %8 = ptrtoint ptr %last_tail2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_tail2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp sgt i32 %7, %9
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ring_size.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 4
  %10 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_size.i, align 8
  %12 = xor i32 %9, -1
  %add.i1 = add i32 %7, %12
  %sub3.i = add i32 %add.i1, %11
  br label %lan743x_tx_get_avail_desc.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = xor i32 %9, -1
  %sub5.i = add i32 %7, %13
  br label %lan743x_tx_get_avail_desc.exit

lan743x_tx_get_avail_desc.exit:                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %sub3.i, %if.then.i ], [ %sub5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i)
  %cmp7 = icmp sgt i32 %add.i, %retval.0.i
  br i1 %cmp7, label %if.then, label %if.end12

if.then:                                          ; preds = %lan743x_tx_get_avail_desc.exit
  %ring_size = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 4
  %14 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_size, align 8
  %sub = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp9 = icmp sgt i32 %add.i, %sub
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup74

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %overflow_skb = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 19
  %16 = ptrtoint ptr %overflow_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %skb, ptr %overflow_skb, align 8
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup74

if.end12:                                         ; preds = %lan743x_tx_get_avail_desc.exit
  %23 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_flags, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end12.if.end31_crit_edge, label %land.lhs.true

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end12
  %ts_flags = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 1
  %28 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ts_flags, align 4
  %and15 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true17

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true17:                                  ; preds = %land.lhs.true
  %30 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx, align 8
  %call19 = tail call zeroext i1 @lan743x_ptp_request_tx_timestamp(ptr noundef %31) #10
  br i1 %call19, label %if.then21, label %land.lhs.true17.if.end31_crit_edge

land.lhs.true17.if.end31_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then21:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i.i, align 4
  %tx_flags23 = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %tx_flags23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_flags23, align 1
  %36 = or i8 %35, 4
  store i8 %36, ptr %tx_flags23, align 1
  %37 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ts_flags, align 4
  %and27 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %land.lhs.true17.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end12.if.end31_crit_edge
  %do_timestamp.0.off0 = phi i1 [ false, %land.lhs.true17.if.end31_crit_edge ], [ false, %land.lhs.true.if.end31_crit_edge ], [ false, %if.end12.if.end31_crit_edge ], [ true, %if.then21 ]
  %ignore_sync.0.off0 = phi i1 [ false, %land.lhs.true17.if.end31_crit_edge ], [ false, %land.lhs.true.if.end31_crit_edge ], [ false, %if.end12.if.end31_crit_edge ], [ %tobool28.not, %if.then21 ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %40, %42
  %43 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp10.not.i.i = icmp eq i8 %46, 0
  br i1 %cmp10.not.i.i, label %if.end31.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

if.end31.skb_pagelen.exit_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %if.end31
  %conv.i.i = zext i8 %46 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %44, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %47 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %48, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %if.end31.skb_pagelen.exit_crit_edge
  %conv36.pre-phi = phi i32 [ 0, %if.end31.skb_pagelen.exit_crit_edge ], [ %conv.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  %len.0.lcssa.i.i = phi i32 [ 0, %if.end31.skb_pagelen.exit_crit_edge ], [ %add.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  %add.i4 = add i32 %len.0.lcssa.i.i, %sub.i
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 4
  %49 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not = icmp eq i16 %50, 0
  %51 = tail call i16 @llvm.umax.i16(i16 %50, i16 8)
  %cond = zext i16 %51 to i32
  %start_frame_length.0 = select i1 %tobool.i.not, i32 %add.i4, i32 %cond
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %54 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %ip_summed, align 8
  %55 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %55)
  %cmp51 = icmp eq i16 %55, 1536
  %56 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx, align 8
  %pdev.i = getelementptr inbounds %struct.lan743x_adapter, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %frame_flags.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 9
  %60 = ptrtoint ptr %frame_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frame_flags.i, align 4
  %or.i = or i32 %61, 1
  store i32 %or.i, ptr %frame_flags.i, align 4
  %62 = ptrtoint ptr %last_tail2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %last_tail2.i, align 4
  %frame_first.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 10
  %64 = ptrtoint ptr %frame_first.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %frame_first.i, align 8
  %frame_tail.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 12
  %65 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %frame_tail.i, align 8
  %ring_cpu_ptr.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 6
  %66 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %buffer_info6.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 13
  %68 = ptrtoint ptr %buffer_info6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer_info6.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %53) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %skb_pagelen.exit
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !100

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev3.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44, i32 3
  %70 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev3.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %73, %if.end.i.i.i ], [ %71, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev3.i, i32 noundef -1) #10
  br label %if.then55

dma_map_single_attrs.exit.i:                      ; preds = %skb_pagelen.exit
  tail call void @debug_dma_map_single(ptr noundef %dev3.i, ptr noundef %53, i32 noundef %sub.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %53 to i32
  %sub.i.i7 = add i32 %75, 1073741824
  %shr.i.i = lshr i32 %sub.i.i7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %74, i32 %shr.i.i
  %and.i.i = and i32 %75, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev3.i, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i8 = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i8, label %dma_map_single_attrs.exit.i.if.then55_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then55_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then55

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %arrayidx8.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %69, i32 %63
  %76 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #10
  %data1.i = getelementptr %struct.lan743x_tx_descriptor, ptr %67, i32 %63, i32 1
  %77 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %data1.i, align 4
  %data2.i = getelementptr %struct.lan743x_tx_descriptor, ptr %67, i32 %63, i32 2
  %78 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %data2.i, align 8
  %shl.i = shl i32 %start_frame_length.0, 16
  %and10.i = and i32 %shl.i, 1073676288
  %79 = tail call i32 @llvm.bswap.i32(i32 %and10.i) #10
  %data3.i = getelementptr %struct.lan743x_tx_descriptor, ptr %67, i32 %63, i32 3
  %80 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %data3.i, align 4
  %skb.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %69, i32 %63, i32 1
  %81 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %skb.i, align 4
  %dma_ptr11.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %69, i32 %63, i32 2
  %82 = ptrtoint ptr %dma_ptr11.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call41.i.i, ptr %dma_ptr11.i, align 4
  %buffer_length.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %69, i32 %63, i32 3
  %83 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub.i, ptr %buffer_length.i, align 4
  %84 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx8.i, align 4
  %or12.i = or i32 %85, 1
  store i32 %or12.i, ptr %arrayidx8.i, align 4
  %and13.i = and i32 %sub.i, 65535
  %frame_data0.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 11
  %spec.select.v.i = select i1 %do_timestamp.0.off0, i32 537067520, i32 537001984
  %spec.select.i9 = or i32 %and13.i, %spec.select.v.i
  %or25.i = or i32 %spec.select.i9, 7340032
  %spec.select = select i1 %cmp51, i32 %or25.i, i32 %spec.select.i9
  %86 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select, ptr %frame_data0.i, align 4
  br i1 %tobool.i.not, label %if.end.i.if.end59_crit_edge, label %if.then58

if.end.i.if.end59_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then55:                                        ; preds = %dma_map_single_attrs.exit.i.if.then55_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup74

if.then58:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame_data0.i, align 4
  %spec.select.v.i12 = select i1 %cmp10.not.i.i, i32 469762048, i32 134217728
  %spec.select.i13 = or i32 %88, %spec.select.v.i12
  store i32 %spec.select.i13, ptr %frame_data0.i, align 4
  %89 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %91 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frame_tail.i, align 8
  %arrayidx.i = getelementptr %struct.lan743x_tx_descriptor, ptr %90, i32 %92
  %93 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i13) #10
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx.i, align 128
  %95 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %frame_tail.i, align 8
  %inc.i.i = add i32 %96, 1
  %ring_size.i.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 4
  %97 = ptrtoint ptr %ring_size.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ring_size.i.i, align 8
  %rem.i.i = srem i32 %inc.i.i, %98
  store i32 %rem.i.i, ptr %frame_tail.i, align 8
  %99 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %101 = ptrtoint ptr %buffer_info6.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buffer_info6.i, align 4
  %arrayidx13.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %102, i32 %rem.i.i
  %data1.i16 = getelementptr %struct.lan743x_tx_descriptor, ptr %100, i32 %rem.i.i, i32 1
  %103 = ptrtoint ptr %data1.i16 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %data1.i16, align 4
  %data2.i17 = getelementptr %struct.lan743x_tx_descriptor, ptr %100, i32 %rem.i.i, i32 2
  %104 = ptrtoint ptr %data2.i17 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %data2.i17, align 8
  %data3.i18 = getelementptr %struct.lan743x_tx_descriptor, ptr %100, i32 %rem.i.i, i32 3
  %105 = ptrtoint ptr %data3.i18 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %data3.i18, align 4
  %skb.i19 = getelementptr %struct.lan743x_tx_buffer_info, ptr %102, i32 %rem.i.i, i32 1
  %106 = ptrtoint ptr %skb.i19 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %skb.i19, align 4
  %dma_ptr.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %102, i32 %rem.i.i, i32 2
  %107 = ptrtoint ptr %dma_ptr.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %dma_ptr.i, align 4
  %buffer_length.i20 = getelementptr %struct.lan743x_tx_buffer_info, ptr %102, i32 %rem.i.i, i32 3
  %108 = ptrtoint ptr %buffer_length.i20 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %buffer_length.i20, align 4
  %109 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx13.i, align 4
  %or14.i = or i32 %110, 1
  store i32 %or14.i, ptr %arrayidx13.i, align 4
  %and.i = and i32 %add.i4, 1048575
  %or16.i = or i32 %and.i, 1075838976
  %111 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or16.i, ptr %frame_data0.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end.i.if.end59_crit_edge
  br i1 %cmp10.not.i.i, label %if.end59.finish_crit_edge, label %for.body.lr.ph

if.end59.finish_crit_edge:                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

for.body.lr.ph:                                   ; preds = %if.end59
  %ring_size.i.i28 = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 4
  %shl.i37 = shl i32 %add.i4, 16
  %and23.i = and i32 %shl.i37, 1073676288
  %112 = tail call i32 @llvm.bswap.i32(i32 %and23.i) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %113 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %j.065, i32 1
  %115 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end.i30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i30:                                       ; preds = %for.body
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %j.065
  %117 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx, align 8
  %pdev.i22 = getelementptr inbounds %struct.lan743x_adapter, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %pdev.i22 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev.i22, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %121 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %123 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %frame_tail.i, align 8
  %arrayidx.i25 = getelementptr %struct.lan743x_tx_descriptor, ptr %122, i32 %124
  %125 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %frame_data0.i, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #10
  %128 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx.i25, align 128
  %129 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %frame_tail.i, align 8
  %inc.i.i27 = add i32 %130, 1
  %131 = ptrtoint ptr %ring_size.i.i28 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ring_size.i.i28, align 8
  %rem.i.i29 = srem i32 %inc.i.i27, %132
  store i32 %rem.i.i29, ptr %frame_tail.i, align 8
  %133 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %135 = ptrtoint ptr %buffer_info6.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %buffer_info6.i, align 4
  %137 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %j.065, i32 2
  %139 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2.i, ptr noundef %138, i32 noundef %140, i32 noundef %116, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev2.i, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i, label %if.then15.i, label %if.end21.i

if.then15.i:                                      ; preds = %if.end.i30
  %141 = ptrtoint ptr %frame_first.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %frame_first.i, align 8
  %143 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %frame_tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp.not74.i = icmp eq i32 %142, %144
  br i1 %cmp.not74.i, label %if.then15.i.cleanup_crit_edge, label %if.then15.i.while.body.i_crit_edge

if.then15.i.while.body.i_crit_edge:               ; preds = %if.then15.i
  br label %while.body.i

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then15.i.while.body.i_crit_edge
  %desc_index.075.i = phi i32 [ %rem.i73.i, %while.body.i.while.body.i_crit_edge ], [ %142, %if.then15.i.while.body.i_crit_edge ]
  tail call fastcc void @lan743x_tx_release_desc(ptr noundef %tx, i32 noundef %desc_index.075.i, i1 noundef zeroext true) #10
  %inc.i71.i = add i32 %desc_index.075.i, 1
  %145 = ptrtoint ptr %ring_size.i.i28 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ring_size.i.i28, align 8
  %rem.i73.i = srem i32 %inc.i71.i, %146
  %147 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %frame_tail.i, align 8
  %cmp.not.i32 = icmp eq i32 %rem.i73.i, %148
  br i1 %cmp.not.i32, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx11.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %136, i32 %rem.i.i29
  %149 = tail call i32 @llvm.bswap.i32(i32 %call2.i.i) #10
  %data1.i35 = getelementptr %struct.lan743x_tx_descriptor, ptr %134, i32 %rem.i.i29, i32 1
  %150 = ptrtoint ptr %data1.i35 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %data1.i35, align 4
  %data2.i36 = getelementptr %struct.lan743x_tx_descriptor, ptr %134, i32 %rem.i.i29, i32 2
  %151 = ptrtoint ptr %data2.i36 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %data2.i36, align 8
  %data3.i38 = getelementptr %struct.lan743x_tx_descriptor, ptr %134, i32 %rem.i.i29, i32 3
  %152 = ptrtoint ptr %data3.i38 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %112, ptr %data3.i38, align 4
  %skb.i39 = getelementptr %struct.lan743x_tx_buffer_info, ptr %136, i32 %rem.i.i29, i32 1
  %153 = ptrtoint ptr %skb.i39 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %skb.i39, align 4
  %dma_ptr24.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %136, i32 %rem.i.i29, i32 2
  %154 = ptrtoint ptr %dma_ptr24.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call2.i.i, ptr %dma_ptr24.i, align 4
  %buffer_length.i40 = getelementptr %struct.lan743x_tx_buffer_info, ptr %136, i32 %rem.i.i29, i32 3
  %155 = ptrtoint ptr %buffer_length.i40 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %116, ptr %buffer_length.i40, align 4
  %156 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx11.i, align 4
  %or26.i = or i32 %157, 9
  store i32 %or26.i, ptr %arrayidx11.i, align 4
  %and27.i = and i32 %116, 65535
  %or29.i = or i32 %and27.i, 131072
  %158 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %or29.i, ptr %frame_data0.i, align 4
  br label %for.inc

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.then15.i.cleanup_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %159 = ptrtoint ptr %frame_flags.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %frame_flags.i, align 4
  %and.i34 = and i32 %160, -2
  store i32 %and.i34, ptr %frame_flags.i, align 4
  %161 = ptrtoint ptr %frame_first.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %frame_first.i, align 8
  %162 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %frame_data0.i, align 4
  %163 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %frame_tail.i, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup74

for.inc:                                          ; preds = %if.end21.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.065, 1
  %exitcond.not = icmp eq i32 %inc, %conv36.pre-phi
  br i1 %exitcond.not, label %for.inc.finish_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.finish_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

finish:                                           ; preds = %for.inc.finish_crit_edge, %if.end59.finish_crit_edge
  %164 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tx, align 8
  %166 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %frame_data0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %167)
  %cmp.i43 = icmp ult i32 %167, 1073741824
  br i1 %cmp.i43, label %if.then.i44, label %finish.if.end.i49_crit_edge

finish.if.end.i49_crit_edge:                      ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i49

if.then.i44:                                      ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #12
  %or5.i = or i32 %167, 335544320
  %168 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or5.i, ptr %frame_data0.i, align 4
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i44, %finish.if.end.i49_crit_edge
  %169 = ptrtoint ptr %ring_cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ring_cpu_ptr.i, align 8
  %171 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %frame_tail.i, align 8
  %173 = ptrtoint ptr %buffer_info6.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %buffer_info6.i, align 4
  %arrayidx8.i48 = getelementptr %struct.lan743x_tx_buffer_info, ptr %174, i32 %172
  %skb9.i = getelementptr %struct.lan743x_tx_buffer_info, ptr %174, i32 %172, i32 1
  %175 = ptrtoint ptr %skb9.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %skb, ptr %skb9.i, align 4
  br i1 %do_timestamp.0.off0, label %if.then10.i, label %if.end.i49.if.end12.i_crit_edge

if.end.i49.if.end12.i_crit_edge:                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %arrayidx8.i48 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx8.i48, align 4
  %or11.i = or i32 %177, 2
  store i32 %or11.i, ptr %arrayidx8.i48, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i49.if.end12.i_crit_edge
  br i1 %ignore_sync.0.off0, label %if.then14.i, label %if.end12.i.lan743x_tx_frame_end.exit_crit_edge

if.end12.i.lan743x_tx_frame_end.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_tx_frame_end.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %arrayidx8.i48 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx8.i48, align 4
  %or16.i50 = or i32 %179, 4
  store i32 %or16.i50, ptr %arrayidx8.i48, align 4
  br label %lan743x_tx_frame_end.exit

lan743x_tx_frame_end.exit:                        ; preds = %if.then14.i, %if.end12.i.lan743x_tx_frame_end.exit_crit_edge
  %arrayidx.i51 = getelementptr %struct.lan743x_tx_descriptor, ptr %170, i32 %172
  %180 = ptrtoint ptr %frame_data0.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %frame_data0.i, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #10
  %183 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx.i51, align 128
  %184 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %frame_tail.i, align 8
  %inc.i.i52 = add i32 %185, 1
  %ring_size.i.i53 = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 4
  %186 = ptrtoint ptr %ring_size.i.i53 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ring_size.i.i53, align 8
  %rem.i.i54 = srem i32 %inc.i.i52, %187
  store i32 %rem.i.i54, ptr %frame_tail.i, align 8
  %188 = ptrtoint ptr %last_tail2.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %rem.i.i54, ptr %last_tail2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  %vector_flags.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 2
  %189 = ptrtoint ptr %vector_flags.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vector_flags.i, align 8
  %and22.i = shl i32 %190, 17
  %191 = and i32 %and22.i, 536870912
  %and28.i = and i32 %190, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %or31.i = or i32 %191, -1073741824
  %tx_tail_flags.1.i = select i1 %tobool29.not.i, i32 %191, i32 %or31.i
  %channel_number.i = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 3
  %192 = ptrtoint ptr %channel_number.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %channel_number.i, align 4
  %shl.i56 = shl i32 %193, 6
  %add.i57 = add i32 %shl.i56, 3420
  %194 = ptrtoint ptr %frame_tail.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %frame_tail.i, align 8
  %or34.i = or i32 %tx_tail_flags.1.i, %195
  %csr_address.i.i = getelementptr inbounds %struct.lan743x_adapter, ptr %165, i32 0, i32 5, i32 1
  %196 = ptrtoint ptr %csr_address.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %csr_address.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %197, i32 %add.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %198 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %198) #10, !srcloc !96
  %199 = ptrtoint ptr %frame_flags.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %frame_flags.i, align 4
  %and35.i = and i32 %200, -2
  store i32 %and35.i, ptr %frame_flags.i, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %lan743x_tx_frame_end.exit, %cleanup, %if.then55, %if.else, %if.then11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan743x_tx_release_desc(ptr nocapture noundef readonly %tx, i32 noundef %descriptor_index, i1 noundef zeroext %cleanup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_cpu_ptr = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 6
  %0 = ptrtoint ptr %ring_cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_cpu_ptr, align 8
  %arrayidx = getelementptr %struct.lan743x_tx_descriptor, ptr %1, i32 %descriptor_index
  %buffer_info1 = getelementptr inbounds %struct.lan743x_tx, ptr %tx, i32 0, i32 13
  %2 = ptrtoint ptr %buffer_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info1, align 4
  %arrayidx2 = getelementptr %struct.lan743x_tx_buffer_info, ptr %3, i32 %descriptor_index
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 128
  %8 = and i32 %7, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %clean_up_data_descriptor, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

clean_up_data_descriptor:                         ; preds = %if.end
  %dma_ptr = getelementptr %struct.lan743x_tx_buffer_info, ptr %3, i32 %descriptor_index, i32 2
  %9 = ptrtoint ptr %dma_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %clean_up_data_descriptor.if.end21_crit_edge, label %if.then6

clean_up_data_descriptor.if.end21_crit_edge:      ; preds = %clean_up_data_descriptor
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then6:                                         ; preds = %clean_up_data_descriptor
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 8
  %pdev14 = getelementptr inbounds %struct.lan743x_adapter, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %buffer_length17 = getelementptr %struct.lan743x_tx_buffer_info, ptr %3, i32 %descriptor_index, i32 3
  %15 = ptrtoint ptr %buffer_length17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_length17, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev15, i32 noundef %10, i32 noundef %16, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %dma_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dma_ptr, align 4
  %buffer_length20 = getelementptr %struct.lan743x_tx_buffer_info, ptr %3, i32 %descriptor_index, i32 3
  %18 = ptrtoint ptr %buffer_length20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffer_length20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then6, %clean_up_data_descriptor.if.end21_crit_edge
  %skb = getelementptr %struct.lan743x_tx_buffer_info, ptr %3, i32 %descriptor_index, i32 1
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %if.end21.done_crit_edge, label %if.end24

if.end21.done_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end24:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2, align 4
  %and26 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %20, i32 noundef 1) #10
  br label %clear_skb

if.end30:                                         ; preds = %if.end24
  br i1 %cleanup, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx, align 8
  tail call void @lan743x_ptp_unrequest_tx_timestamp(ptr noundef %24) #10
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %26, i32 noundef 1) #10
  br label %clear_skb

if.else35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %and37 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp ne i32 %and37, 0
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx, align 8
  tail call void @lan743x_ptp_tx_timestamp_skb(ptr noundef %28, ptr noundef nonnull %20, i1 noundef zeroext %cmp38) #10
  br label %clear_skb

clear_skb:                                        ; preds = %if.else35, %if.then32, %if.then28
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %skb, align 4
  br label %done

done:                                             ; preds = %clear_skb, %if.end21.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %30 = call ptr @memset(ptr %arrayidx2, i32 0, i32 16)
  %31 = call ptr @memset(ptr %arrayidx, i32 0, i32 128)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_ptp_unrequest_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan743x_ptp_tx_timestamp_skb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lan743x_ptp_request_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_prepare_mac_addr_change(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan743x_ptp_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %ipv4_multicast.i = alloca [3 x i8], align 1
  %ipv6_multicast.i = alloca [3 x i8], align 1
  %arp_type.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #10
  tail call void @netif_device_detach(ptr noundef %1) #10
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.lan743x_pcidev_shutdown.exit_crit_edge, label %if.then.i

entry.lan743x_pcidev_shutdown.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_pcidev_shutdown.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @lan743x_netdev_close(ptr noundef %1) #10
  br label %lan743x_pcidev_shutdown.exit

lan743x_pcidev_shutdown.exit:                     ; preds = %if.then.i, %entry.lan743x_pcidev_shutdown.exit_crit_edge
  tail call void @rtnl_unlock() #10
  %call4.i = tail call i32 @pci_save_state(ptr noundef %add.ptr) #10
  %csr_address.i.i.i = getelementptr i8, ptr %1, i32 2328
  %4 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 1932
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i.i, i32 -1) #10, !srcloc !96
  %6 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 0) #10, !srcloc !96
  %8 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i10 = getelementptr i8, ptr %9, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i10, i32 0) #10, !srcloc !96
  %10 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i12 = getelementptr i8, ptr %11, i32 324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12, i32 -1) #10, !srcloc !96
  %wolopts = getelementptr i8, ptr %1, i32 2316
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lan743x_pcidev_shutdown.exit.if.end_crit_edge, label %if.then

lan743x_pcidev_shutdown.exit.if.end_crit_edge:    ; preds = %lan743x_pcidev_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lan743x_pcidev_shutdown.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ipv4_multicast.i) #10
  %14 = call ptr @memcpy(ptr %ipv4_multicast.i, ptr @__const.lan743x_pm_set_wol.ipv4_multicast, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ipv6_multicast.i) #10
  %15 = call ptr @memcpy(ptr %ipv6_multicast.i, ptr @__const.lan743x_pm_set_wol.ipv6_multicast, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %arp_type.i) #10
  %16 = ptrtoint ptr %arp_type.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2054, ptr %arp_type.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %mask_index.0236.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %mask_index.0236.i, 2
  %add.i = add nuw nsw i32 %mul.i, 336
  %17 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 0) #10, !srcloc !96
  %inc.i = add nuw nsw i32 %mask_index.0236.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i169.i = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i169.i) #10, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %22 = and i32 %21, -262177803
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i171.i = getelementptr i8, ptr %25, i32 260
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i171.i) #10, !srcloc !93
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  %28 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wolopts, align 4
  %and3.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 142606339, i32 159383559
  %spec.select.i = or i32 %spec.select.v.i, %23
  %and7.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or12.i = or i32 %spec.select.i, 33554440
  %pmtctl.1.i = select i1 %tobool8.not.i, i32 %spec.select.i, i32 %or12.i
  %30 = lshr exact i32 %and7.i, 4
  %and15.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %or18.i = or i32 %30, 16392
  %or21.i = or i32 %pmtctl.1.i, 33816584
  %wucsr.1.i = select i1 %tobool16.not.i, i32 %30, i32 %or18.i
  %and24.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %or27.i = or i32 %wucsr.1.i, 16385
  %31 = and i32 %29, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  %pmtctl.3.i = select i1 %32, i32 %pmtctl.1.i, i32 %or21.i
  %wucsr.2.i = select i1 %tobool25.not.i, i32 %wucsr.1.i, i32 %or27.i
  %33 = and i32 %29, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp ne i32 %33, 0
  %or11.i = zext i1 %34 to i32
  %macrx.2.i = or i32 %27, %or11.i
  %and33.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %for.end.i.if.end70.i_crit_edge, label %if.then35.i

for.end.i.if.end70.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %ipv4_multicast.i, i32 noundef 3) #10
  %35 = and i16 %call.i.i, 255
  %idxprom.i.i.i.i = zext i16 %35 to i32
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %37 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %38 = lshr i16 %call.i.i, 8
  %conv4.i.i.i = zext i16 %38 to i32
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %39 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %40 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv6.i.i.i
  %or40.i = or i32 %or.i.i.i, -2113929216
  %41 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i173.i = getelementptr i8, ptr %42, i32 336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %43 = call i32 @llvm.bswap.i32(i32 %or40.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i173.i, i32 %43) #10, !srcloc !96
  %44 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i175.i = getelementptr i8, ptr %45, i32 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i175.i, i32 117440512) #10, !srcloc !96
  %46 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i177.i = getelementptr i8, ptr %47, i32 516
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i177.i, i32 0) #10, !srcloc !96
  %48 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i179.i = getelementptr i8, ptr %49, i32 520
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i179.i, i32 0) #10, !srcloc !96
  %50 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i181.i = getelementptr i8, ptr %51, i32 524
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i181.i, i32 0) #10, !srcloc !96
  %call.i182.i = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %ipv6_multicast.i, i32 noundef 2) #10
  %52 = and i16 %call.i182.i, 255
  %idxprom.i.i.i185.i = zext i16 %52 to i32
  %arrayidx.i.i.i186.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i185.i
  %53 = ptrtoint ptr %arrayidx.i.i.i186.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.i186.i, align 1
  %conv2.i.i187.i = zext i8 %54 to i32
  %shl.i.i188.i = shl nuw nsw i32 %conv2.i.i187.i, 8
  %55 = lshr i16 %call.i182.i, 8
  %conv4.i.i189.i = zext i16 %55 to i32
  %arrayidx.i10.i.i190.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i189.i
  %56 = ptrtoint ptr %arrayidx.i10.i.i190.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i10.i.i190.i, align 1
  %conv6.i.i191.i = zext i8 %57 to i32
  %or.i.i192.i = or i32 %shl.i.i188.i, %conv6.i.i191.i
  %or56.i = or i32 %or.i.i192.i, -2113929216
  %58 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i197.i = getelementptr i8, ptr %59, i32 340
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %60 = call i32 @llvm.bswap.i32(i32 %or56.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i197.i, i32 %60) #10, !srcloc !96
  %61 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i199.i = getelementptr i8, ptr %62, i32 528
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i199.i, i32 50331648) #10, !srcloc !96
  %63 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i201.i = getelementptr i8, ptr %64, i32 532
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i201.i, i32 0) #10, !srcloc !96
  %65 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i203.i = getelementptr i8, ptr %66, i32 536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i203.i, i32 0) #10, !srcloc !96
  %67 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i205.i = getelementptr i8, ptr %68, i32 540
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i205.i, i32 0) #10, !srcloc !96
  %or66.i = or i32 %wucsr.2.i, 16388
  %or67.i = or i32 %27, 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then35.i, %for.end.i.if.end70.i_crit_edge
  %mask_index.1.i = phi i32 [ 2, %if.then35.i ], [ 0, %for.end.i.if.end70.i_crit_edge ]
  %pmtctl.4.i = phi i32 [ %or21.i, %if.then35.i ], [ %pmtctl.3.i, %for.end.i.if.end70.i_crit_edge ]
  %wucsr.3.i = phi i32 [ %or66.i, %if.then35.i ], [ %wucsr.2.i, %for.end.i.if.end70.i_crit_edge ]
  %macrx.3.i = phi i32 [ %or67.i, %if.then35.i ], [ %macrx.2.i, %for.end.i.if.end70.i_crit_edge ]
  %69 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wolopts, align 4
  %and72.i = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.lan743x_pm_set_wol.exit_crit_edge, label %if.then74.i

if.end70.i.lan743x_pm_set_wol.exit_crit_edge:     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lan743x_pm_set_wol.exit

if.then74.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i206.i = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef nonnull %arp_type.i, i32 noundef 2) #10
  %71 = and i16 %call.i206.i, 255
  %idxprom.i.i.i209.i = zext i16 %71 to i32
  %arrayidx.i.i.i210.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i209.i
  %72 = ptrtoint ptr %arrayidx.i.i.i210.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.i210.i, align 1
  %conv2.i.i211.i = zext i8 %73 to i32
  %shl.i.i212.i = shl nuw nsw i32 %conv2.i.i211.i, 8
  %74 = lshr i16 %call.i206.i, 8
  %conv4.i.i213.i = zext i16 %74 to i32
  %arrayidx.i10.i.i214.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i213.i
  %75 = ptrtoint ptr %arrayidx.i10.i.i214.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i10.i.i214.i, align 1
  %conv6.i.i215.i = zext i8 %76 to i32
  %or.i.i216.i = or i32 %shl.i.i212.i, %conv6.i.i215.i
  %mul77.i = shl nuw nsw i32 %mask_index.1.i, 2
  %add78.i = or i32 %mul77.i, 336
  %or81.i = or i32 %or.i.i216.i, -2130706432
  %77 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i221.i = getelementptr i8, ptr %78, i32 %add78.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %79 = call i32 @llvm.bswap.i32(i32 %or81.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i221.i, i32 %79) #10, !srcloc !96
  %mul82.i = shl nuw nsw i32 %mask_index.1.i, 4
  %add83.i = or i32 %mul82.i, 512
  %80 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i223.i = getelementptr i8, ptr %81, i32 %add83.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i223.i, i32 3145728) #10, !srcloc !96
  %add85.i = or i32 %mul82.i, 516
  %82 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i225.i = getelementptr i8, ptr %83, i32 %add85.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i225.i, i32 0) #10, !srcloc !96
  %add87.i = or i32 %mul82.i, 520
  %84 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i227.i = getelementptr i8, ptr %85, i32 %add87.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i227.i, i32 0) #10, !srcloc !96
  %add89.i = or i32 %mul82.i, 524
  %86 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i229.i = getelementptr i8, ptr %87, i32 %add89.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i229.i, i32 0) #10, !srcloc !96
  %or91.i = or i32 %wucsr.3.i, 16388
  %or92.i = or i32 %macrx.3.i, 1
  br label %lan743x_pm_set_wol.exit

lan743x_pm_set_wol.exit:                          ; preds = %if.then74.i, %if.end70.i.lan743x_pm_set_wol.exit_crit_edge
  %pmtctl.5.i = phi i32 [ %or21.i, %if.then74.i ], [ %pmtctl.4.i, %if.end70.i.lan743x_pm_set_wol.exit_crit_edge ]
  %wucsr.4.i = phi i32 [ %or91.i, %if.then74.i ], [ %wucsr.3.i, %if.end70.i.lan743x_pm_set_wol.exit_crit_edge ]
  %macrx.4.i = phi i32 [ %or92.i, %if.then74.i ], [ %macrx.3.i, %if.end70.i.lan743x_pm_set_wol.exit_crit_edge ]
  %88 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i231.i = getelementptr i8, ptr %89, i32 320
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %90 = call i32 @llvm.bswap.i32(i32 %wucsr.4.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i231.i, i32 %90) #10, !srcloc !96
  %91 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i233.i = getelementptr i8, ptr %92, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %93 = call i32 @llvm.bswap.i32(i32 %pmtctl.5.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i233.i, i32 %93) #10, !srcloc !96
  %94 = ptrtoint ptr %csr_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %csr_address.i.i.i, align 4
  %arrayidx.i235.i = getelementptr i8, ptr %95, i32 260
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @arm_heavy_mb() #10
  %96 = call i32 @llvm.bswap.i32(i32 %macrx.4.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i235.i, i32 %96) #10, !srcloc !96
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %arp_type.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ipv6_multicast.i) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ipv4_multicast.i) #10
  br label %if.end

if.end:                                           ; preds = %lan743x_pm_set_wol.exit, %lan743x_pcidev_shutdown.exit.if.end_crit_edge
  %call2 = call i32 @pci_prepare_to_sleep(ptr noundef %add.ptr) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lan743x_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #10
  tail call void @pci_restore_state(ptr noundef %add.ptr) #10
  %call3 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #10
  %call4 = tail call fastcc i32 @lan743x_hardware_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %call4) #13
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %pdev.i = getelementptr i8, ptr %1, i32 2320
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %call.i = tail call i32 @pci_select_bars(ptr noundef %7, i32 noundef 512) #10
  tail call void @pci_release_selected_regions(ptr noundef %7, i32 noundef %call.i) #10
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_device(ptr noundef %9) #10
  br label %cleanup

if.end8:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @lan743x_netdev_open(ptr noundef %1)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_lan743x__363_3075_lan743x_pcidev_driver_init6, !1, !"__initcall__kmod_lan743x__363_3075_lan743x_pcidev_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3075, i32 1}
!2 = !{ptr @__exitcall_lan743x_pcidev_driver_exit, !1, !"__exitcall_lan743x_pcidev_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author364, !4, !"__UNIQUE_ID_author364", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3077, i32 1}
!5 = !{ptr @__UNIQUE_ID_description365, !6, !"__UNIQUE_ID_description365", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3078, i32 1}
!7 = !{ptr @__UNIQUE_ID_file366, !8, !"__UNIQUE_ID_file366", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3079, i32 1}
!9 = !{ptr @__UNIQUE_ID_license367, !8, !"__UNIQUE_ID_license367", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lan743x_pcidev_driver, !12, !"lan743x_pcidev_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3064, i32 26}
!13 = !{ptr @lan743x_pcidev_tbl, !14, !"lan743x_pcidev_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3056, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2844, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lan743x_pcidev_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @lan743x_pcidev_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 40, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 115, i32 2}
!25 = !{ptr @lan743x_hardware_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2737, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 778, i32 2}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2754, i32 27}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2756, i32 4}
!34 = !{ptr @lan743x_netdev_ops, !35, !"lan743x_netdev_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2667, i32 36}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2563, i32 2}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 476, i32 3}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 490, i32 5}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 502, i32 3}
!44 = !{ptr @lan743x_intr_open.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 536, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2284, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lan743x_rx_ring_init._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @lan743x_rx_ring_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2335, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2108, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug359, !61, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!64 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2149, i32 3}
!69 = !{ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug360, !68, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2166, i32 3}
!72 = !{ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug361, !71, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 2175, i32 3}
!75 = !{ptr @lan743x_rx_process_buffer.__UNIQUE_ID_ddebug362, !74, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 1742, i32 3}
!78 = !{ptr @lan743x_tx_ring_init._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lan743x_tx_ring_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @lan743x_pm_ops, !81, !"lan743x_pm_ops", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3051, i32 32}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/microchip/lan743x_main.c", i32 3033, i32 3}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 5065333}
!94 = !{i64 2152605682}
!95 = !{i64 2152607037}
!96 = !{i64 5064915}
!97 = !{i8 0, i8 2}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2149038485, i64 2149038490, i64 2149038503, i64 2149038547, i64 2149038581, i64 2149038602}
!102 = !{i64 2157061007}
!103 = !{i64 2157062250}
