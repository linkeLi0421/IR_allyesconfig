; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/agere/et131x.c_pt.bc'
source_filename = "../drivers/net/ethernet/agere/et131x.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.global_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.address_map = type { %struct.global_regs, [4036 x i8], %struct.txdma_regs, [3992 x i8], %struct.rxdma_regs, [3980 x i8], %struct.txmac_regs, [4060 x i8], %struct.rxmac_regs, [3936 x i8], %struct.mac_regs, [4024 x i8], %struct.macstat_regs, [3776 x i8], %struct.mmc_regs, [4072 x i8], [1015808 x i8], [4096 x i8], [524288 x i8] }
%struct.txdma_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rxdma_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.txmac_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rxmac_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macstat_regs = type { [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.tcb = type { ptr, i32, i32, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.et131x_adapter = type { ptr, ptr, ptr, %struct.napi_struct, i32, i32, [6 x i8], [6 x i8], i8, [2 x i8], %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, [128 x [6 x i8]], ptr, i8, i32, i8, %struct.timer_list, i8, %struct.tx_ring, %struct.rx_ring, %struct.ce_stats }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.tx_ring = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.rx_ring = type { [2 x ptr], ptr, i32, i32, i32, ptr, i32, %struct.list_head, i32, i32, i8 }
%struct.ce_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fbr_lookup = type { [1024 x ptr], [1024 x i32], [1024 x i32], ptr, i32, [32 x ptr], [32 x i32], i32, i32, i32 }
%struct.rfd = type { %struct.list_head, ptr, i32, i16, i8 }
%struct.rx_status_block = type { i32, i32 }
%struct.pkt_stat_desc = type { i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.fbr_desc = type { i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_desc = type { i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_author355 = internal constant [51 x i8] c"et131x.author=Victor Soriano <vjsoriano@agere.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [48 x i8] c"et131x.author=Mark Einon <mark.einon@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [46 x i8] c"et131x.file=drivers/net/ethernet/agere/et131x\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [28 x i8] c"et131x.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [86 x i8] c"et131x.description=10/100/1000 Base-T Ethernet Driver for the ET1310 by Agere Systems\00", section ".modinfo", align 1
@__initcall__kmod_et131x__361_4059_et131x_driver_init6 = internal global ptr @et131x_driver_init, section ".initcall6.init", align 4
@et131x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @et131x_pci_table, ptr @et131x_pci_setup, ptr @et131x_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @et131x_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_et131x_driver_exit = internal global ptr @et131x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"et131x\00", [25 x i8] zeroinitializer }, align 32
@et131x_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4545, i32 60672, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4545, i32 60673, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@et131x_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @et131x_suspend, ptr @et131x_resume, ptr @et131x_suspend, ptr @et131x_resume, ptr @et131x_suspend, ptr @et131x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_enable_device() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"et131x_pci_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/agere/et131x.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr = internal global ptr @et131x_pci_setup._entry, section ".printk_index", align 4
@et131x_pci_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 3903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't find PCI device's base address\0A\00", [58 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.8 = internal global ptr @et131x_pci_setup._entry.6, section ".printk_index", align 4
@et131x_pci_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 3910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get PCI resources\0A\00", [39 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.11 = internal global ptr @et131x_pci_setup._entry.9, section ".printk_index", align 4
@et131x_pci_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 3919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No usable DMA addressing method\0A\00", [63 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.14 = internal global ptr @et131x_pci_setup._entry.12, section ".printk_index", align 4
@et131x_pci_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 3925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't alloc netdev struct\0A\00", [34 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.17 = internal global ptr @et131x_pci_setup._entry.15, section ".printk_index", align 4
@et131x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @et131x_open, ptr @et131x_close, ptr @et131x_tx, ptr null, ptr null, ptr null, ptr @et131x_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @et131x_change_mtu, ptr null, ptr @et131x_tx_timeout, ptr null, ptr null, ptr null, ptr @et131x_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@et131x_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @et131x_get_drvinfo, ptr @et131x_get_regs_len, ptr @et131x_get_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 3947, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.20 = internal global ptr @et131x_pci_setup._entry.18, section ".printk_index", align 4
@et131x_pci_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 3960, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not alloc adapter memory (DMA)\0A\00", [58 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.23 = internal global ptr @et131x_pci_setup._entry.21, section ".printk_index", align 4
@et131x_pci_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 3974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Alloc of mii_bus struct failed\0A\00", [32 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.26 = internal global ptr @et131x_pci_setup._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"et131x_eth_mii\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 3987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register MII bus\0A\00", [36 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.31 = internal global ptr @et131x_pci_setup._entry.29, section ".printk_index", align 4
@et131x_pci_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 3993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to probe MII bus\0A\00", [39 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.34 = internal global ptr @et131x_pci_setup._entry.32, section ".printk_index", align 4
@et131x_pci_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 4012, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_netdev() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@et131x_pci_setup._entry_ptr.37 = internal global ptr @et131x_pci_setup._entry.35, section ".printk_index", align 4
@et131x_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&adapter->error_timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@et131x_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 3619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not register IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"et131x_open\00", [20 x i8] zeroinitializer }, align 32
@et131x_open._entry_ptr = internal global ptr @et131x_open._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@et131x_rx_dma_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RX Dma failed to enter halt state. CSR 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"et131x_rx_dma_disable\00", [42 x i8] zeroinitializer }, align 32
@et131x_rx_dma_disable._entry_ptr = internal global ptr @et131x_rx_dma_disable._entry, section ".printk_index", align 4
@et131x_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 3422, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TXDMA_ERR interrupt, error = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"et131x_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr = internal global ptr @et131x_isr._entry, section ".printk_index", align 4
@et131x_isr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.3, i32 3479, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RxDMA_ERR interrupt, error %x\0A\00", [33 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr.48 = internal global ptr @et131x_isr._entry.46, section ".printk_index", align 4
@et131x_isr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.3, i32 3488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WAKE_ON_LAN interrupt\0A\00", [41 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr.51 = internal global ptr @et131x_isr._entry.49, section ".printk_index", align 4
@et131x_isr._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.3, i32 3503, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TXMAC interrupt, error 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr.54 = internal global ptr @et131x_isr._entry.52, section ".printk_index", align 4
@et131x_isr._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.3, i32 3517, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RXMAC interrupt, error 0x%08x.  Requesting reset\0A\00", [46 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr.57 = internal global ptr @et131x_isr._entry.55, section ".printk_index", align 4
@et131x_isr._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.44, ptr @.str.3, i32 3522, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enable 0x%08x, Diag 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@et131x_isr._entry_ptr.60 = internal global ptr @et131x_isr._entry.58, section ".printk_index", align 4
@et131x_rx_dma_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RX Dma failed to exit halt state. CSR 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"et131x_rx_dma_enable\00", [43 x i8] zeroinitializer }, align 32
@et131x_rx_dma_enable._entry_ptr = internal global ptr @et131x_rx_dma_enable._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@et131x_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 3860, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Change MTU failed; couldn't re-alloc DMA memory\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"et131x_change_mtu\00", [46 x i8] zeroinitializer }, align 32
@et131x_change_mtu._entry_ptr = internal global ptr @et131x_change_mtu._entry, section ".printk_index", align 4
@et131x_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 3816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hardware error - reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"et131x_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@et131x_tx_timeout._entry_ptr = internal global ptr @et131x_tx_timeout._entry, section ".printk_index", align 4
@et131x_tx_timeout._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 3831, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Send stuck - reset. tcb->WrIndex %x\0A\00", [59 x i8] zeroinitializer }, align 32
@et131x_tx_timeout._entry_ptr.71 = internal global ptr @et131x_tx_timeout._entry.69, section ".printk_index", align 4
@et131x_phy_mii_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1202, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg 0x%08x could not be read\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"et131x_phy_mii_read\00", [44 x i8] zeroinitializer }, align 32
@et131x_phy_mii_read._entry_ptr = internal global ptr @et131x_phy_mii_read._entry, section ".printk_index", align 4
@et131x_phy_mii_read._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 1204, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status is  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@et131x_phy_mii_read._entry_ptr.76 = internal global ptr @et131x_phy_mii_read._entry.74, section ".printk_index", align 4
@et131x_adapter_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&adapter->tcb_send_qlock\00", [39 x i8] zeroinitializer }, align 32
@et131x_adapter_init.__key.78 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&adapter->tcb_ready_qlock\00", [38 x i8] zeroinitializer }, align 32
@et131x_adapter_init.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&adapter->rcv_lock\00", [45 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 3008, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Missing PCIe capabilities\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"et131x_pci_init\00", [16 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr = internal global ptr @et131x_pci_init._entry, section ".printk_index", align 4
@et131x_pci_init.acknak = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 118, i16 208], [28 x i8] zeroinitializer }, align 32
@et131x_pci_init.replay = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 480, i16 749], [28 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 3022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not write PCI config space for ACK/NAK\0A\00", [50 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr.86 = internal global ptr @et131x_pci_init._entry.84, section ".printk_index", align 4
@et131x_pci_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.3, i32 3028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not write PCI config space for Replay Timer\0A\00", [45 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr.89 = internal global ptr @et131x_pci_init._entry.87, section ".printk_index", align 4
@et131x_pci_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.3, i32 3038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Could not write PCI config space for Latency Timers\0A\00", [43 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr.92 = internal global ptr @et131x_pci_init._entry.90, section ".printk_index", align 4
@et131x_pci_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.3, i32 3045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't change PCI config space for Max read size\0A\00", [44 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr.95 = internal global ptr @et131x_pci_init._entry.93, section ".printk_index", align 4
@et131x_pci_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.3, i32 3060, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Could not read PCI config space for MAC address\0A\00", [47 x i8] zeroinitializer }, align 32
@et131x_pci_init._entry_ptr.98 = internal global ptr @et131x_pci_init._entry.96, section ".printk_index", align 4
@et131x_init_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not read PCI config space for EEPROM Status\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"et131x_init_eeprom\00", [45 x i8] zeroinitializer }, align 32
@et131x_init_eeprom._entry_ptr = internal global ptr @et131x_init_eeprom._entry, section ".printk_index", align 4
@et131x_init_eeprom.eedata = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\FE\13\10\FF", [28 x i8] zeroinitializer }, align 32
@et131x_init_eeprom._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fatal EEPROM Status Error - 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@et131x_init_eeprom._entry_ptr.103 = internal global ptr @et131x_init_eeprom._entry.101, section ".printk_index", align 4
@et131x_adapter_memory_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 3127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"et131x_tx_dma_memory_alloc FAILED\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"et131x_adapter_memory_alloc\00", [36 x i8] zeroinitializer }, align 32
@et131x_adapter_memory_alloc._entry_ptr = internal global ptr @et131x_adapter_memory_alloc._entry, section ".printk_index", align 4
@et131x_adapter_memory_alloc._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 3135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"et131x_rx_dma_memory_alloc FAILED\0A\00", [61 x i8] zeroinitializer }, align 32
@et131x_adapter_memory_alloc._entry_ptr.108 = internal global ptr @et131x_adapter_memory_alloc._entry.106, section ".printk_index", align 4
@et131x_adapter_memory_alloc._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.3, i32 3142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"et131x_init_recv FAILED\0A\00", [39 x i8] zeroinitializer }, align 32
@et131x_adapter_memory_alloc._entry_ptr.111 = internal global ptr @et131x_adapter_memory_alloc._entry.109, section ".printk_index", align 4
@et131x_tx_dma_memory_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 2372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot alloc memory for Tx Ring\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"et131x_tx_dma_memory_alloc\00", [37 x i8] zeroinitializer }, align 32
@et131x_tx_dma_memory_alloc._entry_ptr = internal global ptr @et131x_tx_dma_memory_alloc._entry, section ".printk_index", align 4
@et131x_tx_dma_memory_alloc._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 2382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot alloc memory for Tx status block\0A\00", [55 x i8] zeroinitializer }, align 32
@et131x_tx_dma_memory_alloc._entry_ptr.116 = internal global ptr @et131x_tx_dma_memory_alloc._entry.114, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@et131x_rx_dma_memory_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 1924, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot alloc memory for Free Buffer Ring %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"et131x_rx_dma_memory_alloc\00", [37 x i8] zeroinitializer }, align 32
@et131x_rx_dma_memory_alloc._entry_ptr = internal global ptr @et131x_rx_dma_memory_alloc._entry, section ".printk_index", align 4
@et131x_rx_dma_memory_alloc._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 1943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not alloc memory\0A\00", [40 x i8] zeroinitializer }, align 32
@et131x_rx_dma_memory_alloc._entry_ptr.121 = internal global ptr @et131x_rx_dma_memory_alloc._entry.119, section ".printk_index", align 4
@et131x_rx_dma_memory_alloc._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.3, i32 1979, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot alloc memory for Packet Status Ring\0A\00", [52 x i8] zeroinitializer }, align 32
@et131x_rx_dma_memory_alloc._entry_ptr.124 = internal global ptr @et131x_rx_dma_memory_alloc._entry.122, section ".printk_index", align 4
@et131x_rx_dma_memory_alloc._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.3, i32 1990, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot alloc memory for Status Block\0A\00", [58 x i8] zeroinitializer }, align 32
@et131x_rx_dma_memory_alloc._entry_ptr.127 = internal global ptr @et131x_rx_dma_memory_alloc._entry.125, section ".printk_index", align 4
@et131x_handle_recv_pkts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 2329, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RFD's are running out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"et131x_handle_recv_pkts\00", [40 x i8] zeroinitializer }, align 32
@et131x_handle_recv_pkts._entry_ptr = internal global ptr @et131x_handle_recv_pkts._entry, section ".printk_index", align 4
@nic_rx_pkts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 2237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"NICRxPkts PSR Entry %d indicates length of %d and/or bad bi(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nic_rx_pkts\00", [20 x i8] zeroinitializer }, align 32
@nic_rx_pkts._entry_ptr = internal global ptr @nic_rx_pkts._entry, section ".printk_index", align 4
@nic_return_rfd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 2161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s illegal Buffer Index returned\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nic_return_rfd\00", [17 x i8] zeroinitializer }, align 32
@nic_return_rfd._entry_ptr = internal global ptr @nic_return_rfd._entry, section ".printk_index", align 4
@et131x_mii_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 1274, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reg 0x%08x could not be written\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"et131x_mii_write\00", [47 x i8] zeroinitializer }, align 32
@et131x_mii_write._entry_ptr = internal global ptr @et131x_mii_write._entry, section ".printk_index", align 4
@et131x_mii_write._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.135, ptr @.str.3, i32 1276, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@et131x_mii_write._entry_ptr.137 = internal global ptr @et131x_mii_write._entry.136, section ".printk_index", align 4
@et131x_mii_write._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.135, ptr @.str.3, i32 1278, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"command is  0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@et131x_mii_write._entry_ptr.140 = internal global ptr @et131x_mii_write._entry.138, section ".printk_index", align 4
@et131x_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.3, i32 3244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"et131x_mii_probe\00", [47 x i8] zeroinitializer }, align 32
@et131x_mii_probe._entry_ptr = internal global ptr @et131x_mii_probe._entry, section ".printk_index", align 4
@et131x_mii_probe._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.3, i32 3252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@et131x_mii_probe._entry_ptr.145 = internal global ptr @et131x_mii_probe._entry.143, section ".printk_index", align 4
@et1310_config_mac_regs2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 927, ptr @.str.45, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Syncd bits did not respond correctly cfg1 word 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"et1310_config_mac_regs2\00", [40 x i8] zeroinitializer }, align 32
@et1310_config_mac_regs2._entry_ptr = internal global ptr @et1310_config_mac_regs2._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 512]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"et131x_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 4051, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 4059, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"et131x_pci_table\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 4044, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"et131x_pm_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3355, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3897, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3903, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3910, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3919, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3925, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"et131x_netdev_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3875, i32 36 }
@___asan_gen_.209 = private unnamed_addr constant [19 x i8] c"et131x_ethtool_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2961, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3947, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3960, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3974, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3978, i32 27 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3979, i32 50 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3987, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3993, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 4012, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3611, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3619, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 781, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3420, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3478, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3488, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3502, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3515, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3519, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 763, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 326, i32 6 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3859, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3816, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3829, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1201, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1203, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3279, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3280, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3281, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3008, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [7 x i8] c"acknak\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3016, i32 20 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3017, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3021, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3027, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3037, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3044, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3060, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 683, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [7 x i8] c"eedata\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 696, i32 20 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 707, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3126, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3134, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3142, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2371, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2381, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1922, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1942, i32 5 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1978, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1989, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2329, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2235, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2160, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1273, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1275, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1277, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3244, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 3252, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.585 = private constant [39 x i8] c"../drivers/net/ethernet/agere/et131x.c\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 925, i32 3 }
@llvm.compiler.used = appending global [204 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_et131x_driver_exit, ptr @__initcall__kmod_et131x__361_4059_et131x_driver_init6, ptr @et1310_config_mac_regs2._entry, ptr @et1310_config_mac_regs2._entry_ptr, ptr @et131x_adapter_memory_alloc._entry, ptr @et131x_adapter_memory_alloc._entry.106, ptr @et131x_adapter_memory_alloc._entry.109, ptr @et131x_adapter_memory_alloc._entry_ptr, ptr @et131x_adapter_memory_alloc._entry_ptr.108, ptr @et131x_adapter_memory_alloc._entry_ptr.111, ptr @et131x_change_mtu._entry, ptr @et131x_change_mtu._entry_ptr, ptr @et131x_driver_exit, ptr @et131x_handle_recv_pkts._entry, ptr @et131x_handle_recv_pkts._entry_ptr, ptr @et131x_init_eeprom._entry, ptr @et131x_init_eeprom._entry.101, ptr @et131x_init_eeprom._entry_ptr, ptr @et131x_init_eeprom._entry_ptr.103, ptr @et131x_isr._entry, ptr @et131x_isr._entry.46, ptr @et131x_isr._entry.49, ptr @et131x_isr._entry.52, ptr @et131x_isr._entry.55, ptr @et131x_isr._entry.58, ptr @et131x_isr._entry_ptr, ptr @et131x_isr._entry_ptr.48, ptr @et131x_isr._entry_ptr.51, ptr @et131x_isr._entry_ptr.54, ptr @et131x_isr._entry_ptr.57, ptr @et131x_isr._entry_ptr.60, ptr @et131x_mii_probe._entry, ptr @et131x_mii_probe._entry.143, ptr @et131x_mii_probe._entry_ptr, ptr @et131x_mii_probe._entry_ptr.145, ptr @et131x_mii_write._entry, ptr @et131x_mii_write._entry.136, ptr @et131x_mii_write._entry.138, ptr @et131x_mii_write._entry_ptr, ptr @et131x_mii_write._entry_ptr.137, ptr @et131x_mii_write._entry_ptr.140, ptr @et131x_open._entry, ptr @et131x_open._entry_ptr, ptr @et131x_pci_init._entry, ptr @et131x_pci_init._entry.84, ptr @et131x_pci_init._entry.87, ptr @et131x_pci_init._entry.90, ptr @et131x_pci_init._entry.93, ptr @et131x_pci_init._entry.96, ptr @et131x_pci_init._entry_ptr, ptr @et131x_pci_init._entry_ptr.86, ptr @et131x_pci_init._entry_ptr.89, ptr @et131x_pci_init._entry_ptr.92, ptr @et131x_pci_init._entry_ptr.95, ptr @et131x_pci_init._entry_ptr.98, ptr @et131x_pci_setup._entry, ptr @et131x_pci_setup._entry.12, ptr @et131x_pci_setup._entry.15, ptr @et131x_pci_setup._entry.18, ptr @et131x_pci_setup._entry.21, ptr @et131x_pci_setup._entry.24, ptr @et131x_pci_setup._entry.29, ptr @et131x_pci_setup._entry.32, ptr @et131x_pci_setup._entry.35, ptr @et131x_pci_setup._entry.6, ptr @et131x_pci_setup._entry.9, ptr @et131x_pci_setup._entry_ptr, ptr @et131x_pci_setup._entry_ptr.11, ptr @et131x_pci_setup._entry_ptr.14, ptr @et131x_pci_setup._entry_ptr.17, ptr @et131x_pci_setup._entry_ptr.20, ptr @et131x_pci_setup._entry_ptr.23, ptr @et131x_pci_setup._entry_ptr.26, ptr @et131x_pci_setup._entry_ptr.31, ptr @et131x_pci_setup._entry_ptr.34, ptr @et131x_pci_setup._entry_ptr.37, ptr @et131x_pci_setup._entry_ptr.8, ptr @et131x_phy_mii_read._entry, ptr @et131x_phy_mii_read._entry.74, ptr @et131x_phy_mii_read._entry_ptr, ptr @et131x_phy_mii_read._entry_ptr.76, ptr @et131x_rx_dma_disable._entry, ptr @et131x_rx_dma_disable._entry_ptr, ptr @et131x_rx_dma_enable._entry, ptr @et131x_rx_dma_enable._entry_ptr, ptr @et131x_rx_dma_memory_alloc._entry, ptr @et131x_rx_dma_memory_alloc._entry.119, ptr @et131x_rx_dma_memory_alloc._entry.122, ptr @et131x_rx_dma_memory_alloc._entry.125, ptr @et131x_rx_dma_memory_alloc._entry_ptr, ptr @et131x_rx_dma_memory_alloc._entry_ptr.121, ptr @et131x_rx_dma_memory_alloc._entry_ptr.124, ptr @et131x_rx_dma_memory_alloc._entry_ptr.127, ptr @et131x_tx_dma_memory_alloc._entry, ptr @et131x_tx_dma_memory_alloc._entry.114, ptr @et131x_tx_dma_memory_alloc._entry_ptr, ptr @et131x_tx_dma_memory_alloc._entry_ptr.116, ptr @et131x_tx_timeout._entry, ptr @et131x_tx_timeout._entry.69, ptr @et131x_tx_timeout._entry_ptr, ptr @et131x_tx_timeout._entry_ptr.71, ptr @nic_return_rfd._entry, ptr @nic_return_rfd._entry_ptr, ptr @nic_rx_pkts._entry, ptr @nic_rx_pkts._entry_ptr, ptr @et131x_driver, ptr @.str, ptr @et131x_pci_table, ptr @et131x_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @et131x_netdev_ops, ptr @et131x_ethtool_ops, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @et131x_open.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @et131x_adapter_init.__key, ptr @.str.77, ptr @et131x_adapter_init.__key.78, ptr @.str.79, ptr @et131x_adapter_init.__key.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @et131x_pci_init.acknak, ptr @et131x_pci_init.replay, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @et131x_init_eeprom.eedata, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_isr._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_tx_timeout._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_phy_mii_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_phy_mii_read._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_init.__key.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_init.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init.acknak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init.replay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_pci_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_init_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_init_eeprom.eedata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_init_eeprom._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_memory_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_memory_alloc._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_adapter_memory_alloc._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_tx_dma_memory_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_tx_dma_memory_alloc._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_memory_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_memory_alloc._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_memory_alloc._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_rx_dma_memory_alloc._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_handle_recv_pkts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_rx_pkts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_return_rfd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_mii_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_mii_write._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_mii_write._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et131x_mii_probe._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et1310_config_mac_regs2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @et131x_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @et131x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @et131x_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_pci_setup(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %reg.i70.i.i.i = alloca i32, align 4
  %reg.i.i.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %eestatus.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #18
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7) #18
  br label %err_disable

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.10) #18
  br label %err_disable

if.end14:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev15, i64 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.13) #18
  br label %err_release_res

if.end23:                                         ; preds = %if.end14
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev15, i64 noundef -1) #15
  %call24 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1408, i32 noundef 1, i32 noundef 1) #15
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.16) #18
  br label %err_release_res

if.end31:                                         ; preds = %if.end23
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %watchdog_timeo, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @et131x_netdev_ops, ptr %netdev_ops, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9216, ptr %max_mtu, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev15, ptr %parent, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @et131x_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i.i = getelementptr i8, ptr %call24, i32 2304
  %call1.i181 = tail call ptr @pci_dev_get(ptr noundef %pdev) #15
  %pdev2.i = getelementptr i8, ptr %call24, i32 2308
  %8 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i181, ptr %pdev2.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call24, ptr %add.ptr.i.i, align 8
  %tcb_send_qlock.i = getelementptr i8, ptr %call24, i32 2568
  tail call void @__raw_spin_lock_init(ptr noundef %tcb_send_qlock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @et131x_adapter_init.__key, i16 noundef signext 3) #15
  %tcb_ready_qlock.i = getelementptr i8, ptr %call24, i32 2612
  tail call void @__raw_spin_lock_init(ptr noundef %tcb_ready_qlock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @et131x_adapter_init.__key.78, i16 noundef signext 3) #15
  %rcv_lock.i = getelementptr i8, ptr %call24, i32 2656
  tail call void @__raw_spin_lock_init(ptr noundef %rcv_lock.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @et131x_adapter_init.__key.80, i16 noundef signext 3) #15
  %registry_jumbo_packet.i = getelementptr i8, ptr %call24, i32 3484
  %10 = ptrtoint ptr %registry_jumbo_packet.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1514, ptr %registry_jumbo_packet.i, align 4
  %addr.i = getelementptr i8, ptr %call24, i32 2558
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 343296, ptr %addr.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %call24, i32 2562
  %12 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 512, ptr %add.ptr1.i.i, align 2
  %13 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eestatus.i.i) #15
  %15 = ptrtoint ptr %eestatus.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %eestatus.i.i, align 1, !annotation !286
  %call.i.i = call i32 @pci_read_config_byte(ptr noundef %14, i32 noundef 178, ptr noundef nonnull %eestatus.i.i) #15
  %call2.i.i = call i32 @pci_read_config_byte(ptr noundef %14, i32 noundef 178, ptr noundef nonnull %eestatus.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.99) #18
  br label %et131x_init_eeprom.exit.thread.i

if.end.i.i:                                       ; preds = %if.end31
  %16 = ptrtoint ptr %eestatus.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %eestatus.i.i, align 1
  %18 = and i8 %17, 76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %if.then4.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 12
  %19 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 1
  br i1 %cmp.i.i, label %if.then4.i.i.for.body.i.i_crit_edge, label %if.then4.i.i.if.end15.i.i_crit_edge

if.then4.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

if.then4.i.i.for.body.i.i_crit_edge:              ; preds = %if.then4.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then4.i.i.for.body.i.i_crit_edge
  %i.069.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.i.for.body.i.i_crit_edge ]
  %write_failed.068.i.i = phi i32 [ %48, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i8], ptr @et131x_init_eeprom.eedata, i32 0, i32 %i.069.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  %23 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #15
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i.i) #15
  %26 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %reg.i.i.i.i, align 4, !annotation !286
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.011.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 1000
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit.thread.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.i
  %i.011.i.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 176, ptr noundef nonnull %reg.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge

for.body.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit.thread.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  %27 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %28, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i.i.i.i)
  %cmp1.i.i.i.i = icmp eq i32 %and.i.i.i.i, 12288
  br i1 %cmp1.i.i.i.i, label %eeprom_wait_ready.exit.i.i.i, label %for.cond.i.i.i.i

eeprom_wait_ready.exit.thread.i.i.i:              ; preds = %for.body.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge, %for.cond.i.i.i.i.eeprom_wait_ready.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i.i) #15
  br label %select.unfold.i.i

eeprom_wait_ready.exit.i.i.i:                     ; preds = %if.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i.i) #15
  %call2.i.i.i = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 177, i8 noundef zeroext -64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.preheader.i.i.i, label %eeprom_wait_ready.exit.i.i.i.select.unfold.i.i_crit_edge

eeprom_wait_ready.exit.i.i.i.select.unfold.i.i_crit_edge: ; preds = %eeprom_wait_ready.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %select.unfold.i.i

for.body.preheader.i.i.i:                         ; preds = %eeprom_wait_ready.exit.i.i.i
  %call6.i.i.i = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 172, i32 noundef %i.069.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %for.body.preheader.i.i.i.for.end.i.i.i_crit_edge

for.body.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end9.i.i.i:                                    ; preds = %for.body.preheader.i.i.i
  %call10.i.i.i = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 176, i8 noundef zeroext %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end13.i.i.i, label %if.end9.i.i.i.for.end.i.i.i_crit_edge

if.end9.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i70.i.i.i) #15
  %29 = ptrtoint ptr %reg.i70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg.i70.i.i.i, align 4, !annotation !286
  br label %for.body.i77.i.i.i

for.cond.i73.i.i.i:                               ; preds = %if.end.i80.i.i.i
  %inc.i71.i.i.i = add nuw nsw i32 %i.011.i74.i.i.i, 1
  %exitcond.not.i72.i.i.i = icmp eq i32 %inc.i71.i.i.i, 1000
  br i1 %exitcond.not.i72.i.i.i, label %for.cond.i73.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge, label %for.cond.i73.i.i.i.for.body.i77.i.i.i_crit_edge

for.cond.i73.i.i.i.for.body.i77.i.i.i_crit_edge:  ; preds = %for.cond.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i77.i.i.i

for.cond.i73.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge: ; preds = %for.cond.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit84.thread.i.i.i

for.body.i77.i.i.i:                               ; preds = %for.cond.i73.i.i.i.for.body.i77.i.i.i_crit_edge, %if.end13.i.i.i
  %i.011.i74.i.i.i = phi i32 [ 0, %if.end13.i.i.i ], [ %inc.i71.i.i.i, %for.cond.i73.i.i.i.for.body.i77.i.i.i_crit_edge ]
  %call.i75.i.i.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 176, ptr noundef nonnull %reg.i70.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i.i)
  %tobool.not.i76.i.i.i = icmp eq i32 %call.i75.i.i.i, 0
  br i1 %tobool.not.i76.i.i.i, label %if.end.i80.i.i.i, label %for.body.i77.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge

for.body.i77.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge: ; preds = %for.body.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit84.thread.i.i.i

if.end.i80.i.i.i:                                 ; preds = %for.body.i77.i.i.i
  %30 = ptrtoint ptr %reg.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg.i70.i.i.i, align 4
  %and.i78.i.i.i = and i32 %31, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i78.i.i.i)
  %cmp1.i79.i.i.i = icmp eq i32 %and.i78.i.i.i, 12288
  br i1 %cmp1.i79.i.i.i, label %eeprom_wait_ready.exit84.i.i.i, label %for.cond.i73.i.i.i

eeprom_wait_ready.exit84.thread.i.i.i:            ; preds = %for.cond.i73.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge, %for.body.i77.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge, %for.body.i77.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge, %for.cond.i73.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i70.i.i.i) #15
  br label %eeprom_write.exit.i.i

eeprom_wait_ready.exit84.i.i.i:                   ; preds = %if.end.i80.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i70.i.i.i) #15
  %and.i.i.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %eeprom_wait_ready.exit84.i.i.i.if.end23.i.i.i_crit_edge, label %land.lhs.true.i.i.i

eeprom_wait_ready.exit84.i.i.i.if.end23.i.i.i_crit_edge: ; preds = %eeprom_wait_ready.exit84.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i.i.i

land.lhs.true.i.i.i:                              ; preds = %eeprom_wait_ready.exit84.i.i.i
  %32 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev2.i, align 4
  %revision.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp20.i.i.i = icmp eq i8 %35, 0
  br i1 %cmp20.i.i.i, label %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i.i.i

land.lhs.true.i.i.i.for.end.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end23.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end23.i.i.i_crit_edge, %eeprom_wait_ready.exit84.i.i.i.if.end23.i.i.i_crit_edge
  %and24.i.i.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %and24.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %if.end23.i.i.i.for.end.i.i.i_crit_edge, label %if.then26.i.i.i

if.end23.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end23.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 2147480) #15
  %call6.1.i.i.i = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 172, i32 noundef %i.069.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i.i.i)
  %tobool7.not.1.i.i.i = icmp eq i32 %call6.1.i.i.i, 0
  br i1 %tobool7.not.1.i.i.i, label %if.end9.1.i.i.i, label %if.then26.i.i.i.for.end.i.i.i_crit_edge

if.then26.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end9.1.i.i.i:                                  ; preds = %if.then26.i.i.i
  %call10.1.i.i.i = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 176, i8 noundef zeroext %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i.i.i)
  %tobool11.not.1.i.i.i = icmp eq i32 %call10.1.i.i.i, 0
  br i1 %tobool11.not.1.i.i.i, label %if.end13.1.i.i.i, label %if.end9.1.i.i.i.for.end.i.i.i_crit_edge

if.end9.1.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.end9.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end13.1.i.i.i:                                 ; preds = %if.end9.1.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i70.i.i.i) #15
  %37 = ptrtoint ptr %reg.i70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %reg.i70.i.i.i, align 4, !annotation !286
  br label %for.body.i77.1.i.i.i

for.body.i77.1.i.i.i:                             ; preds = %for.cond.i73.1.i.i.i.for.body.i77.1.i.i.i_crit_edge, %if.end13.1.i.i.i
  %i.011.i74.1.i.i.i = phi i32 [ 0, %if.end13.1.i.i.i ], [ %inc.i71.1.i.i.i, %for.cond.i73.1.i.i.i.for.body.i77.1.i.i.i_crit_edge ]
  %call.i75.1.i.i.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 176, ptr noundef nonnull %reg.i70.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.1.i.i.i)
  %tobool.not.i76.1.i.i.i = icmp eq i32 %call.i75.1.i.i.i, 0
  br i1 %tobool.not.i76.1.i.i.i, label %if.end.i80.1.i.i.i, label %for.body.i77.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge

for.body.i77.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge: ; preds = %for.body.i77.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit84.thread.i.i.i

if.end.i80.1.i.i.i:                               ; preds = %for.body.i77.1.i.i.i
  %38 = ptrtoint ptr %reg.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg.i70.i.i.i, align 4
  %and.i78.1.i.i.i = and i32 %39, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i78.1.i.i.i)
  %cmp1.i79.1.i.i.i = icmp eq i32 %and.i78.1.i.i.i, 12288
  br i1 %cmp1.i79.1.i.i.i, label %eeprom_wait_ready.exit84.1.i.i.i, label %for.cond.i73.1.i.i.i

for.cond.i73.1.i.i.i:                             ; preds = %if.end.i80.1.i.i.i
  %inc.i71.1.i.i.i = add nuw nsw i32 %i.011.i74.1.i.i.i, 1
  %exitcond.not.i72.1.i.i.i = icmp eq i32 %inc.i71.1.i.i.i, 1000
  br i1 %exitcond.not.i72.1.i.i.i, label %for.cond.i73.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge, label %for.cond.i73.1.i.i.i.for.body.i77.1.i.i.i_crit_edge

for.cond.i73.1.i.i.i.for.body.i77.1.i.i.i_crit_edge: ; preds = %for.cond.i73.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i77.1.i.i.i

for.cond.i73.1.i.i.i.eeprom_wait_ready.exit84.thread.i.i.i_crit_edge: ; preds = %for.cond.i73.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit84.thread.i.i.i

eeprom_wait_ready.exit84.1.i.i.i:                 ; preds = %if.end.i80.1.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i70.i.i.i) #15
  %and.1.i.i.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %tobool18.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  br i1 %tobool18.not.1.i.i.i, label %eeprom_wait_ready.exit84.1.i.i.i.if.end23.1.i.i.i_crit_edge, label %land.lhs.true.1.i.i.i

eeprom_wait_ready.exit84.1.i.i.i.if.end23.1.i.i.i_crit_edge: ; preds = %eeprom_wait_ready.exit84.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.1.i.i.i

land.lhs.true.1.i.i.i:                            ; preds = %eeprom_wait_ready.exit84.1.i.i.i
  %40 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev2.i, align 4
  %revision.1.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %revision.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %revision.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp20.1.i.i.i = icmp eq i8 %43, 0
  br i1 %cmp20.1.i.i.i, label %land.lhs.true.1.i.i.i.for.end.i.i.i_crit_edge, label %land.lhs.true.1.i.i.i.if.end23.1.i.i.i_crit_edge

land.lhs.true.1.i.i.i.if.end23.1.i.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.1.i.i.i

land.lhs.true.1.i.i.i.for.end.i.i.i_crit_edge:    ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.end23.1.i.i.i:                                 ; preds = %land.lhs.true.1.i.i.i.if.end23.1.i.i.i_crit_edge, %eeprom_wait_ready.exit84.1.i.i.i.if.end23.1.i.i.i_crit_edge
  %and24.1.i.i.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.1.i.i.i)
  %tobool25.not.1.i.i.i = icmp eq i32 %and24.1.i.i.i, 0
  br i1 %tobool25.not.1.i.i.i, label %if.end23.1.i.i.i.for.end.i.i.i_crit_edge, label %if.then26.1.i.i.i

if.end23.1.i.i.i.for.end.i.i.i_crit_edge:         ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i.i

if.then26.1.i.i.i:                                ; preds = %if.end23.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 2147480) #15
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.then26.1.i.i.i, %if.end23.1.i.i.i.for.end.i.i.i_crit_edge, %land.lhs.true.1.i.i.i.for.end.i.i.i_crit_edge, %if.end9.1.i.i.i.for.end.i.i.i_crit_edge, %if.then26.i.i.i.for.end.i.i.i_crit_edge, %if.end23.i.i.i.for.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge, %if.end9.i.i.i.for.end.i.i.i_crit_edge, %for.body.preheader.i.i.i.for.end.i.i.i_crit_edge
  %writeok.0.i.i.i = phi i32 [ 0, %for.body.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %if.end9.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.for.end.i.i.i_crit_edge ], [ 1, %if.end23.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %if.then26.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %if.end9.1.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %land.lhs.true.1.i.i.i.for.end.i.i.i_crit_edge ], [ 1, %if.end23.1.i.i.i.for.end.i.i.i_crit_edge ], [ 0, %if.then26.1.i.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 2147480) #15
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.end41.i.i.i.while.cond.i.i.i_crit_edge, %for.end.i.i.i
  %index.0.i.i.i = phi i32 [ 0, %for.end.i.i.i ], [ %inc49.i.i.i, %do.end41.i.i.i.while.cond.i.i.i_crit_edge ]
  %writeok.1.i.i.i = phi i32 [ %writeok.0.i.i.i, %for.end.i.i.i ], [ %spec.select.i.i.i, %do.end41.i.i.i.while.cond.i.i.i_crit_edge ]
  %call28.i.i.i = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 177, i8 noundef zeroext -128) #15
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond38.i.i.i.do.body.i.i.i_crit_edge, %while.cond.i.i.i
  %call32.i.i.i = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 172, i32 noundef %i.069.i.i) #15
  br label %do.body33.i.i.i

do.body33.i.i.i:                                  ; preds = %do.body33.i.i.i.do.body33.i.i.i_crit_edge, %do.body.i.i.i
  %call34.i.i.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 176, ptr noundef nonnull %val.i.i.i) #15
  %46 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i.i.i, align 4
  %and35.i.i.i = and i32 %47, 65536
  %cmp36.i.i.i = icmp eq i32 %and35.i.i.i, 0
  br i1 %cmp36.i.i.i, label %do.body33.i.i.i.do.body33.i.i.i_crit_edge, label %do.cond38.i.i.i

do.body33.i.i.i.do.body33.i.i.i_crit_edge:        ; preds = %do.body33.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33.i.i.i

do.cond38.i.i.i:                                  ; preds = %do.body33.i.i.i
  %and39.i.i.i = and i32 %47, 262144
  %tobool40.not.i.i.i = icmp eq i32 %and39.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %do.end41.i.i.i, label %do.cond38.i.i.i.do.body.i.i.i_crit_edge

do.cond38.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %do.cond38.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

do.end41.i.i.i:                                   ; preds = %do.cond38.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %call28.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool29.not.i.i.i, i32 %writeok.1.i.i.i, i32 0
  %and42.i.i.i = and i32 %47, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and42.i.i.i)
  %cmp43.not.i.i.i = icmp ne i32 %and42.i.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %index.0.i.i.i)
  %cmp45.i.i.i = icmp eq i32 %index.0.i.i.i, 10000
  %or.cond.i.i.i = select i1 %cmp43.not.i.i.i, i1 true, i1 %cmp45.i.i.i
  %inc49.i.i.i = add nuw nsw i32 %index.0.i.i.i, 1
  br i1 %or.cond.i.i.i, label %while.end.i.i.i, label %do.end41.i.i.i.while.cond.i.i.i_crit_edge

do.end41.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i.i

while.end.i.i.i:                                  ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool50.not.i.i.i = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %tobool50.not.i.i.i, label %while.end.i.i.i.select.unfold.i.i_crit_edge, label %while.end.i.i.i.eeprom_write.exit.i.i_crit_edge

while.end.i.i.i.eeprom_write.exit.i.i_crit_edge:  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_write.exit.i.i

while.end.i.i.i.select.unfold.i.i_crit_edge:      ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %select.unfold.i.i

eeprom_write.exit.i.i:                            ; preds = %while.end.i.i.i.eeprom_write.exit.i.i_crit_edge, %eeprom_wait_ready.exit84.thread.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #15
  br label %for.cond.i.i

select.unfold.i.i:                                ; preds = %while.end.i.i.i.select.unfold.i.i_crit_edge, %eeprom_wait_ready.exit.i.i.i.select.unfold.i.i_crit_edge, %eeprom_wait_ready.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #15
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %select.unfold.i.i, %eeprom_write.exit.i.i
  %48 = phi i32 [ 1, %select.unfold.i.i ], [ %write_failed.068.i.i, %eeprom_write.exit.i.i ]
  %inc.i.i = add nuw nsw i32 %i.069.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end15.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.cond.i.i.if.end15.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %for.cond.i.i.if.end15.i.i_crit_edge, %if.then4.i.i.if.end15.i.i_crit_edge
  %write_failed.2.i.i = phi i32 [ 0, %if.then4.i.i.if.end15.i.i_crit_edge ], [ %48, %for.cond.i.i.if.end15.i.i_crit_edge ]
  %49 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp18.not.i.i = icmp eq i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_failed.2.i.i)
  %tobool20.not.i.i = icmp eq i32 %write_failed.2.i.i, 0
  %or.cond.i.i = select i1 %cmp18.not.i.i, i1 %tobool20.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end15.i.i.if.end28.i.i_crit_edge, label %do.end24.i.i

if.end15.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i

do.end24.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev25.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %51 = ptrtoint ptr %eestatus.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %eestatus.i.i, align 1
  %conv26.i.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i.i, ptr noundef nonnull @.str.102, i32 noundef %conv26.i.i) #18
  %has_eeprom.i.i = getelementptr i8, ptr %call24, i32 2564
  %53 = ptrtoint ptr %has_eeprom.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %has_eeprom.i.i, align 4
  br label %et131x_init_eeprom.exit.thread.i

if.end28.i.i:                                     ; preds = %if.end15.i.i.if.end28.i.i_crit_edge, %if.end.i.i.if.end28.i.i_crit_edge
  %has_eeprom29.i.i = getelementptr i8, ptr %call24, i32 2564
  %54 = ptrtoint ptr %has_eeprom29.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %has_eeprom29.i.i, align 4
  %eeprom_data.i.i = getelementptr i8, ptr %call24, i32 2565
  call fastcc void @eeprom_read(ptr noundef %add.ptr.i.i, i32 noundef 112, ptr noundef %eeprom_data.i.i) #15
  %arrayidx33.i.i = getelementptr i8, ptr %call24, i32 2566
  call fastcc void @eeprom_read(ptr noundef %add.ptr.i.i, i32 noundef 113, ptr noundef %arrayidx33.i.i) #15
  %55 = ptrtoint ptr %eeprom_data.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %eeprom_data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -51, i8 %56)
  %cmp38.not.i.i = icmp eq i8 %56, -51
  br i1 %cmp38.not.i.i, label %if.end28.i.i.if.end.i_crit_edge, label %if.then40.i.i

if.end28.i.i.if.end.i_crit_edge:                  ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then40.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx33.i.i, align 1
  br label %if.end.i

et131x_init_eeprom.exit.thread.i:                 ; preds = %do.end24.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eestatus.i.i) #15
  br label %err_free_dev

if.end.i:                                         ; preds = %if.then40.i.i, %if.end28.i.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eestatus.i.i) #15
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 19
  %58 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.i.not.i = icmp eq i8 %59, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.82) #18
  br label %err_free_dev

if.end3.i:                                        ; preds = %if.end.i
  %pcie_mpss.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 22
  %60 = ptrtoint ptr %pcie_mpss.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %pcie_mpss.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %conv4.i = zext i8 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %cmp5.i = icmp ult i8 %bf.load.i, 64
  br i1 %cmp5.i, label %if.then7.i, label %if.end3.i.if.end25.i_crit_edge

if.end3.i.if.end25.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then7.i:                                       ; preds = %if.end3.i
  %arrayidx.i = getelementptr [2 x i16], ptr @et131x_pci_init.acknak, i32 0, i32 %conv4.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i, align 2
  %call8.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 192, i16 noundef zeroext %62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.85) #18
  br label %err_free_dev

if.end14.i:                                       ; preds = %if.then7.i
  %arrayidx16.i = getelementptr [2 x i16], ptr @et131x_pci_init.replay, i32 0, i32 %conv4.i
  %63 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx16.i, align 2
  %call17.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 194, i16 noundef zeroext %64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end14.i.if.end25.i_crit_edge, label %do.end22.i

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

do.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.88) #18
  br label %err_free_dev

if.end25.i:                                       ; preds = %if.end14.i.if.end25.i_crit_edge, %if.end3.i.if.end25.i_crit_edge
  %call26.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 207, i8 noundef zeroext 17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.91) #18
  br label %err_free_dev

if.end33.i:                                       ; preds = %if.end25.i
  %call34.i = call i32 @pcie_set_readrq(ptr noundef %pdev, i32 noundef 2048) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.94) #18
  br label %err_free_dev

if.end41.i:                                       ; preds = %if.end33.i
  %65 = ptrtoint ptr %has_eeprom29.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %has_eeprom29.i.i, align 4, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool42.not.i = icmp eq i8 %66, 0
  %rom_addr.i.i = getelementptr i8, ptr %call24, i32 2552
  br i1 %tobool42.not.i, label %if.then43.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end41.i
  %call47.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 164, ptr noundef %rom_addr.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %for.cond.i, label %for.cond.preheader.i.do.end52.i_crit_edge

for.cond.preheader.i.do.end52.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

if.then43.i:                                      ; preds = %if.end41.i
  %67 = ptrtoint ptr %rom_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rom_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call24, i32 2556
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %70 to i32
  %or.i.i.i = or i32 %68, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i83.i = getelementptr i8, ptr %call24, i32 2563
  call void @get_random_bytes(ptr noundef %arrayidx.i83.i, i32 noundef 1) #15
  %71 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr.i, align 4
  %73 = ptrtoint ptr %rom_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %rom_addr.i.i, align 4
  %74 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr1.i.i, align 2
  %76 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %add.ptr.i.i.i, align 2
  br label %if.end38

if.else.i.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %68, ptr %addr.i, align 4
  %78 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %70, ptr %add.ptr1.i.i, align 2
  br label %if.end38

for.cond.i:                                       ; preds = %for.cond.preheader.i
  %add.ptr.1.i = getelementptr i8, ptr %call24, i32 2553
  %call47.1.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 165, ptr noundef %add.ptr.1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.1.i)
  %tobool48.not.1.i = icmp eq i32 %call47.1.i, 0
  br i1 %tobool48.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end52.i_crit_edge

for.cond.i.do.end52.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %add.ptr.2.i = getelementptr i8, ptr %call24, i32 2554
  %call47.2.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 166, ptr noundef %add.ptr.2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.2.i)
  %tobool48.not.2.i = icmp eq i32 %call47.2.i, 0
  br i1 %tobool48.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end52.i_crit_edge

for.cond.1.i.do.end52.i_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %add.ptr.3.i = getelementptr i8, ptr %call24, i32 2555
  %call47.3.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 167, ptr noundef %add.ptr.3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.3.i)
  %tobool48.not.3.i = icmp eq i32 %call47.3.i, 0
  br i1 %tobool48.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end52.i_crit_edge

for.cond.2.i.do.end52.i_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %add.ptr.4.i = getelementptr i8, ptr %call24, i32 2556
  %call47.4.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 168, ptr noundef %add.ptr.4.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.4.i)
  %tobool48.not.4.i = icmp eq i32 %call47.4.i, 0
  br i1 %tobool48.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.end52.i_crit_edge

for.cond.3.i.do.end52.i_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %add.ptr.5.i = getelementptr i8, ptr %call24, i32 2557
  %call47.5.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 169, ptr noundef %add.ptr.5.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.5.i)
  %tobool48.not.5.i = icmp eq i32 %call47.5.i, 0
  br i1 %tobool48.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.end52.i_crit_edge

for.cond.4.i.do.end52.i_crit_edge:                ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end52.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %rom_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rom_addr.i.i, align 4
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %addr.i, align 4
  %82 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr.4.i, align 2
  %84 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %add.ptr1.i.i, align 2
  br label %if.end38

do.end52.i:                                       ; preds = %for.cond.4.i.do.end52.i_crit_edge, %for.cond.3.i.do.end52.i_crit_edge, %for.cond.2.i.do.end52.i_crit_edge, %for.cond.1.i.do.end52.i_crit_edge, %for.cond.i.do.end52.i_crit_edge, %for.cond.preheader.i.do.end52.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.97) #18
  br label %err_free_dev

if.end38:                                         ; preds = %for.cond.5.i, %if.else.i.i, %if.then.i.i
  %call39 = call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #15
  %regs = getelementptr i8, ptr %call24, i32 3476
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call39, ptr %regs, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end45, label %do.body48

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.19) #18
  br label %err_free_dev

do.body48:                                        ; preds = %if.end38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  call void @arm_heavy_mb() #15
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %pm_csr = getelementptr inbounds %struct.global_regs, ptr %87, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm_csr, i32 939524096) #15, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  call void @arm_heavy_mb() #15
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %mac.i = getelementptr inbounds %struct.address_map, ptr %89, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 4032) #15, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  call void @arm_heavy_mb() #15
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  %sw_reset.i = getelementptr inbounds %struct.global_regs, ptr %91, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_reset.i, i32 2130706432) #15, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  call void @arm_heavy_mb() #15
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %mac9.i = getelementptr inbounds %struct.address_map, ptr %93, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac9.i, i32 3840) #15, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  call void @arm_heavy_mb() #15
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  %mac15.i = getelementptr inbounds %struct.address_map, ptr %95, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac15.i, i32 0) #15, !srcloc !289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  call void @arm_heavy_mb() #15
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %97, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 -1) #15, !srcloc !289
  %call52 = call fastcc i32 @et131x_adapter_memory_alloc(ptr noundef %add.ptr.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.22) #18
  br label %err_iounmap

if.end59:                                         ; preds = %do.body48
  %tx_ring1.i = getelementptr i8, ptr %call24, i32 3544
  %98 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_ring1.i, align 4
  %tcb_qhead.i = getelementptr i8, ptr %call24, i32 3548
  %100 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %tcb_qhead.i, align 4
  %101 = call ptr @memset(ptr %99, i32 0, i32 1536)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end59
  %tcb.017.i = phi ptr [ %99, %if.end59 ], [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %if.end59 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tcb, ptr %tcb.017.i, i32 1
  %102 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i, ptr %tcb.017.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %et131x_init_send.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

et131x_init_send.exit:                            ; preds = %for.body.i
  %tcb_qtail.i = getelementptr i8, ptr %call24, i32 3552
  %103 = ptrtoint ptr %tcb_qtail.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %tcb.017.i, ptr %tcb_qtail.i, align 4
  %104 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %tcb.017.i, align 4
  %send_head.i = getelementptr i8, ptr %call24, i32 3556
  %105 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %send_head.i, align 4
  %send_tail.i = getelementptr i8, ptr %call24, i32 3560
  %106 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %send_tail.i, align 4
  %napi = getelementptr i8, ptr %call24, i32 2320
  call void @netif_napi_add(ptr noundef nonnull %call24, ptr noundef %napi, ptr noundef nonnull @et131x_poll, i32 noundef 64) #15
  call void @dev_addr_mod(ptr noundef %call24, i32 noundef 0, ptr noundef %addr.i, i32 noundef 6) #15
  %call.i186 = call ptr @mdiobus_alloc_size(i32 noundef 0) #15
  %mii_bus = getelementptr i8, ptr %call24, i32 2312
  %107 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i186, ptr %mii_bus, align 8
  %tobool62.not = icmp eq ptr %call.i186, null
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.25) #18
  br label %err_mem_free

if.end68:                                         ; preds = %et131x_init_send.exit
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i186, i32 0, i32 1
  %108 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.27, ptr %name, align 4
  %109 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mii_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pdev2.i, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %number, align 4
  %conv = zext i8 %116 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 6
  %117 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %118
  %call74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.28, i32 noundef %or)
  %119 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mii_bus, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call24, ptr %priv, align 8
  %122 = load ptr, ptr %mii_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @et131x_mdio_read, ptr %read, align 4
  %124 = load ptr, ptr %mii_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @et131x_mdio_write, ptr %write, align 8
  %126 = load ptr, ptr %mii_bus, align 8
  %call79 = call i32 @__mdiobus_register(ptr noundef %126, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.30) #18
  br label %err_mdio_free

if.end87:                                         ; preds = %if.end68
  %127 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mii_bus, align 8
  %call1.i187 = call ptr @phy_find_first(ptr noundef %128) #15
  %tobool.not.i188 = icmp eq ptr %call1.i187, null
  br i1 %tobool.not.i188, label %et131x_mii_probe.exit.thread, label %if.end.i192

et131x_mii_probe.exit.thread:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  %129 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev2.i, align 4
  %dev.i189 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i189, ptr noundef nonnull @.str.141) #18
  br label %do.end94

if.end.i192:                                      ; preds = %if.end87
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i187, i32 0, i32 3
  %131 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i191 = icmp eq ptr %132, null
  br i1 %tobool.not.i.i.i191, label %if.end.i.i.i, label %if.end.i192.phydev_name.exit.i_crit_edge

if.end.i192.phydev_name.exit.i_crit_edge:         ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %phydev_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %call1.i187 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call1.i187, align 4
  br label %phydev_name.exit.i

phydev_name.exit.i:                               ; preds = %if.end.i.i.i, %if.end.i192.phydev_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %134, %if.end.i.i.i ], [ %132, %if.end.i192.phydev_name.exit.i_crit_edge ]
  %call3.i = call ptr @phy_connect(ptr noundef %call24, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @et131x_adjust_link, i32 noundef 2) #15
  %cmp.i.i193 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i193, label %et131x_mii_probe.exit, label %if.end12.i

if.end12.i:                                       ; preds = %phydev_name.exit.i
  %call13.i = call i32 @phy_set_max_speed(ptr noundef %call3.i, i32 noundef 100) #15
  %135 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev2.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4863, i16 %138)
  %cmp.not.i = icmp eq i16 %138, -4863
  br i1 %cmp.not.i, label %if.end12.i.et131x_mii_probe.exit.thread202_crit_edge, label %if.then16.i

if.end12.i.et131x_mii_probe.exit.thread202_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_probe.exit.thread202

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %call17.i194 = call i32 @phy_set_max_speed(ptr noundef %call3.i, i32 noundef 1000) #15
  br label %et131x_mii_probe.exit.thread202

et131x_mii_probe.exit.thread202:                  ; preds = %if.then16.i, %if.end12.i.et131x_mii_probe.exit.thread202_crit_edge
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %call3.i, i32 0, i32 4
  %139 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load.i195 = load i16, ptr %autoneg.i, align 8
  %bf.set.i = or i16 %bf.load.i195, 8
  store i16 %bf.set.i, ptr %autoneg.i, align 8
  call void @phy_attached_info(ptr noundef %call3.i) #15
  br label %if.end96

et131x_mii_probe.exit:                            ; preds = %phydev_name.exit.i
  %140 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev2.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.144) #18
  %142 = ptrtoint ptr %call3.i to i32
  %cmp89 = icmp slt ptr %call3.i, null
  br i1 %cmp89, label %et131x_mii_probe.exit.do.end94_crit_edge, label %et131x_mii_probe.exit.if.end96_crit_edge

et131x_mii_probe.exit.if.end96_crit_edge:         ; preds = %et131x_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

et131x_mii_probe.exit.do.end94_crit_edge:         ; preds = %et131x_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end94

do.end94:                                         ; preds = %et131x_mii_probe.exit.do.end94_crit_edge, %et131x_mii_probe.exit.thread
  %retval.0.i196201 = phi i32 [ -19, %et131x_mii_probe.exit.thread ], [ %142, %et131x_mii_probe.exit.do.end94_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.33) #18
  br label %err_mdio_unregister

if.end96:                                         ; preds = %et131x_mii_probe.exit.if.end96_crit_edge, %et131x_mii_probe.exit.thread202
  call fastcc void @et131x_adapter_setup(ptr noundef %add.ptr.i.i)
  %boot_coma = getelementptr i8, ptr %call24, i32 3540
  %143 = ptrtoint ptr %boot_coma to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %boot_coma, align 4
  call fastcc void @et1310_disable_phy_coma(ptr noundef %add.ptr.i.i)
  %call97 = call i32 @register_netdev(ptr noundef nonnull %call24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end103, label %if.end105

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.36) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 145
  %144 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phydev, align 16
  call void @phy_disconnect(ptr noundef %145) #15
  br label %err_mdio_unregister

if.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call24, ptr %driver_data.i.i, align 4
  br label %out

out:                                              ; preds = %err_disable, %if.end105, %do.end
  %rc.0 = phi i32 [ %call, %do.end ], [ %rc.7, %err_disable ], [ %call97, %if.end105 ]
  ret i32 %rc.0

err_mdio_unregister:                              ; preds = %do.end103, %do.end94
  %rc.1 = phi i32 [ %retval.0.i196201, %do.end94 ], [ %call97, %do.end103 ]
  %147 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mii_bus, align 8
  call void @mdiobus_unregister(ptr noundef %148) #15
  br label %err_mdio_free

err_mdio_free:                                    ; preds = %err_mdio_unregister, %do.end85
  %rc.2 = phi i32 [ %call79, %do.end85 ], [ %rc.1, %err_mdio_unregister ]
  %149 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mii_bus, align 8
  call void @mdiobus_free(ptr noundef %150) #15
  br label %err_mem_free

err_mem_free:                                     ; preds = %err_mdio_free, %do.end66
  %rc.3 = phi i32 [ %rc.2, %err_mdio_free ], [ -12, %do.end66 ]
  call fastcc void @et131x_adapter_memory_free(ptr noundef %add.ptr.i.i)
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_mem_free, %do.end57
  %rc.4 = phi i32 [ %call52, %do.end57 ], [ %rc.3, %err_mem_free ]
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  call void @iounmap(ptr noundef %152) #15
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_iounmap, %do.end45, %do.end52.i, %do.end39.i, %do.end31.i, %do.end22.i, %do.end12.i, %do.end.i, %et131x_init_eeprom.exit.thread.i
  %rc.5 = phi i32 [ %rc.4, %err_iounmap ], [ -12, %do.end45 ], [ -5, %do.end52.i ], [ -5, %do.end39.i ], [ -5, %do.end31.i ], [ -5, %do.end22.i ], [ -5, %do.end12.i ], [ -5, %do.end.i ], [ -5, %et131x_init_eeprom.exit.thread.i ]
  call void @pci_dev_put(ptr noundef %pdev) #15
  call void @free_netdev(ptr noundef nonnull %call24) #15
  br label %err_release_res

err_release_res:                                  ; preds = %err_free_dev, %do.end29, %do.end21
  %rc.6 = phi i32 [ %call.i, %do.end21 ], [ %rc.5, %err_free_dev ], [ -12, %do.end29 ]
  call void @pci_release_regions(ptr noundef %pdev) #15
  br label %err_disable

err_disable:                                      ; preds = %err_release_res, %do.end12, %do.end4
  %rc.7 = phi i32 [ %call7, %do.end12 ], [ %rc.6, %err_release_res ], [ -19, %do.end4 ]
  call void @pci_disable_device(ptr noundef %pdev) #15
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #15
  %napi = getelementptr i8, ptr %1, i32 2320
  tail call void @__netif_napi_del(ptr noundef %napi) #15
  tail call void @synchronize_net() #15
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %3) #15
  %mii_bus = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %5) #15
  %6 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %7) #15
  tail call fastcc void @et131x_adapter_memory_free(ptr noundef %add.ptr.i)
  %regs = getelementptr i8, ptr %1, i32 3476
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %9) #15
  tail call void @pci_dev_put(ptr noundef %pdev) #15
  tail call void @free_netdev(ptr noundef %1) #15
  tail call void @pci_release_regions(ptr noundef %pdev) #15
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et131x_adapter_memory_alloc(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3521, i32 noundef 1536) #19
  %1 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i.i, ptr %tx_ring1.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %tx_desc_ring_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 7
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef %tx_desc_ring_pa.i, i32 noundef 3264, i32 noundef 0) #15
  %tx_desc_ring.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 6
  %4 = ptrtoint ptr %tx_desc_ring.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %tx_desc_ring.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  br i1 %tobool5.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.112) #18
  br label %do.end

if.end9.i:                                        ; preds = %if.end.i
  %tx_status_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 10
  %call.i34.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.i, i32 noundef 4, ptr noundef %tx_status_pa.i, i32 noundef 3264, i32 noundef 0) #15
  %tx_status.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 9
  %7 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i34.i, ptr %tx_status.i, align 4
  %tobool14.not.i = icmp eq ptr %call.i34.i, null
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end

do.end18.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.115) #18
  br label %do.end

do.end:                                           ; preds = %do.end18.i, %do.end.i, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104) #18
  %tx_desc_ring.i32 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 6
  %12 = ptrtoint ptr %tx_desc_ring.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_desc_ring.i32, align 4
  %tobool.not.i33 = icmp eq ptr %13, null
  br i1 %tobool.not.i33, label %do.end.if.end.i38_crit_edge, label %if.then.i

do.end.if.end.i38_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i38

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev.i35 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %tx_desc_ring_pa.i36 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 7
  %16 = ptrtoint ptr %tx_desc_ring_pa.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_desc_ring_pa.i36, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i35, i32 noundef 8192, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #15
  %18 = ptrtoint ptr %tx_desc_ring.i32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_desc_ring.i32, align 4
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i, %do.end.if.end.i38_crit_edge
  %tx_status.i37 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 9
  %19 = ptrtoint ptr %tx_status.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_status.i37, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %if.end.i38.et131x_tx_dma_memory_free.exit_crit_edge, label %if.then5.i

if.end.i38.et131x_tx_dma_memory_free.exit_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_tx_dma_memory_free.exit

if.then5.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %tx_status_pa.i39 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 10
  %23 = ptrtoint ptr %tx_status_pa.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_status_pa.i39, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef 4, ptr noundef nonnull %20, i32 noundef %24, i32 noundef 0) #15
  %25 = ptrtoint ptr %tx_status.i37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %tx_status.i37, align 4
  br label %et131x_tx_dma_memory_free.exit

et131x_tx_dma_memory_free.exit:                   ; preds = %if.then5.i, %if.end.i38.et131x_tx_dma_memory_free.exit_crit_edge
  %26 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring1.i, align 4
  tail call void @kfree(ptr noundef %27) #15
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  %rx_ring1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12564, i32 noundef 3520, i32 noundef 2) #20
  %28 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i.i.i.i, ptr %rx_ring1.i, align 4
  %cmp.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp.i, label %if.end.do.end6_crit_edge, label %if.end.i41

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

if.end.i41:                                       ; preds = %if.end
  %call1.i.i.i239.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12564, i32 noundef 3520, i32 noundef 2) #20
  %arrayidx7.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i.i.i239.i, ptr %arrayidx7.i, align 4
  %cmp10.i = icmp eq ptr %call1.i.i.i239.i, null
  br i1 %cmp10.i, label %if.end.i41.do.end6_crit_edge, label %if.end12.i

if.end.i41.do.end6_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end6

if.end12.i:                                       ; preds = %if.end.i41
  %registry_jumbo_packet.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 18
  %30 = ptrtoint ptr %registry_jumbo_packet.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %registry_jumbo_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %cmp13.i = icmp ult i32 %31, 2048
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_ring1.i, align 4
  %buffsize.i = getelementptr inbounds %struct.fbr_lookup, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %buffsize.i, align 4
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %31)
  %cmp26.i = icmp ult i32 %31, 4096
  %35 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_ring1.i, align 4
  %buffsize30.i = getelementptr inbounds %struct.fbr_lookup, ptr %36, i32 0, i32 9
  br i1 %cmp26.i, label %if.then27.i, label %if.else40.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %buffsize30.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 512, ptr %buffsize30.i, align 4
  br label %if.end54.i

if.else40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %buffsize30.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1024, ptr %buffsize30.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else40.i, %if.then27.i, %if.then14.i
  %.sink259.i = phi i32 [ 1024, %if.then27.i ], [ 768, %if.else40.i ], [ 512, %if.then14.i ]
  %.sink257.i = phi i32 [ 4096, %if.then27.i ], [ 16384, %if.else40.i ], [ 2048, %if.then14.i ]
  %.sink.i = phi i32 [ 512, %if.then27.i ], [ 128, %if.else40.i ], [ 512, %if.then14.i ]
  %39 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_ring1.i, align 4
  %num_entries33.i = getelementptr inbounds %struct.fbr_lookup, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %num_entries33.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink259.i, ptr %num_entries33.i, align 4
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.i, align 4
  %buffsize36.i = getelementptr inbounds %struct.fbr_lookup, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %buffsize36.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink257.i, ptr %buffsize36.i, align 4
  %45 = load ptr, ptr %arrayidx7.i, align 4
  %num_entries39.i = getelementptr inbounds %struct.fbr_lookup, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %num_entries39.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink.i, ptr %num_entries39.i, align 4
  %47 = load ptr, ptr %rx_ring1.i, align 4
  %num_entries57.i = getelementptr inbounds %struct.fbr_lookup, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %num_entries57.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_entries57.i, align 4
  %50 = load ptr, ptr %arrayidx7.i, align 4
  %num_entries60.i = getelementptr inbounds %struct.fbr_lookup, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %num_entries60.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_entries60.i, align 4
  %add.i = add i32 %52, %49
  %psr_entries.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 4
  %53 = ptrtoint ptr %psr_entries.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %psr_entries.i, align 4
  %54 = load i32, ptr %num_entries57.i, align 4
  %mul.i = mul i32 %54, 12
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 4
  %dev.i43 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %ring_physaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %47, i32 0, i32 4
  %call.i.i44 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i43, i32 noundef %mul.i, ptr noundef %ring_physaddr.i, i32 noundef 3264, i32 noundef 0) #15
  %ring_virtaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %47, i32 0, i32 3
  %57 = ptrtoint ptr %ring_virtaddr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i44, ptr %ring_virtaddr.i, align 4
  %tobool.not.i45 = icmp eq ptr %call.i.i44, null
  br i1 %tobool.not.i45, label %if.end54.i.do.end.i46_crit_edge, label %for.cond.i

if.end54.i.do.end.i46_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i46

for.cond.i:                                       ; preds = %if.end54.i
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx7.i, align 4
  %num_entries65.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %num_entries65.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_entries65.1.i, align 4
  %mul.1.i = mul i32 %61, 12
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %ring_physaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 4
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.1.i, i32 noundef %mul.1.i, ptr noundef %ring_physaddr.1.i, i32 noundef 3264, i32 noundef 0) #15
  %ring_virtaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 3
  %64 = ptrtoint ptr %ring_virtaddr.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.1.i, ptr %ring_virtaddr.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.i.do.end.i46_crit_edge, label %for.cond.1.i

for.cond.i.do.end.i46_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i46

for.cond.1.i:                                     ; preds = %for.cond.i
  %65 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_ring1.i, align 4
  %buffsize81.i = getelementptr inbounds %struct.fbr_lookup, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %buffsize81.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buffsize81.i, align 4
  %mul82.i = shl i32 %68, 5
  %num_entries84.i = getelementptr inbounds %struct.fbr_lookup, ptr %66, i32 0, i32 8
  %69 = ptrtoint ptr %num_entries84.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_entries84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %70)
  %cmp85249.not.i = icmp ult i32 %70, 32
  br i1 %cmp85249.not.i, label %for.cond.1.i.for.inc127.i_crit_edge, label %for.cond.1.i.for.body87.i_crit_edge

for.cond.1.i.for.body87.i_crit_edge:              ; preds = %for.cond.1.i
  br label %for.body87.i

for.cond.1.i.for.inc127.i_crit_edge:              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc127.i

do.end.i46:                                       ; preds = %for.cond.i.do.end.i46_crit_edge, %if.end54.i.do.end.i46_crit_edge
  %conv245.lcssa.i = phi i32 [ 0, %if.end54.i.do.end.i46_crit_edge ], [ 1, %for.cond.i.do.end.i46_crit_edge ]
  %71 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i, align 4
  %dev70.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70.i, ptr noundef nonnull @.str.117, i32 noundef %conv245.lcssa.i) #18
  br label %do.end6

for.body87.i:                                     ; preds = %for.inc124.i.for.body87.i_crit_edge, %for.cond.1.i.for.body87.i_crit_edge
  %i.0250.i = phi i32 [ %inc125.i, %for.inc124.i.for.body87.i_crit_edge ], [ 0, %for.cond.1.i.for.body87.i_crit_edge ]
  %73 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i, align 4
  %dev89.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %arrayidx90.i = getelementptr %struct.fbr_lookup, ptr %66, i32 0, i32 6, i32 %i.0250.i
  %call.i240.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev89.i, i32 noundef %mul82.i, ptr noundef %arrayidx90.i, i32 noundef 3264, i32 noundef 0) #15
  %arrayidx92.i = getelementptr %struct.fbr_lookup, ptr %66, i32 0, i32 5, i32 %i.0250.i
  %75 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i240.i, ptr %arrayidx92.i, align 4
  %tobool95.not.i = icmp eq ptr %call.i240.i, null
  br i1 %tobool95.not.i, label %for.body87.i.do.end99.i_crit_edge, label %if.end102.i

for.body87.i.do.end99.i_crit_edge:                ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end99.i

do.end99.i:                                       ; preds = %for.body87.1.i.do.end99.i_crit_edge, %for.body87.i.do.end99.i_crit_edge
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 4
  %dev101.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101.i, ptr noundef nonnull @.str.120) #18
  br label %do.end6

if.end102.i:                                      ; preds = %for.body87.i
  %78 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx90.i, align 4
  %mul109.i = shl i32 %i.0250.i, 5
  br label %for.body108.i

for.body108.i:                                    ; preds = %for.body108.i.for.body108.i_crit_edge, %if.end102.i
  %fbr_physaddr.0247.i = phi i32 [ %79, %if.end102.i ], [ %add120.i, %for.body108.i.for.body108.i_crit_edge ]
  %j.0246.i = phi i32 [ 0, %if.end102.i ], [ %inc122.i, %for.body108.i.for.body108.i_crit_edge ]
  %add110.i = add nuw nsw i32 %j.0246.i, %mul109.i
  %80 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx92.i, align 4
  %82 = ptrtoint ptr %buffsize81.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buffsize81.i, align 4
  %mul114.i = mul i32 %83, %j.0246.i
  %add.ptr.i = getelementptr i8, ptr %81, i32 %mul114.i
  %arrayidx115.i = getelementptr [1024 x ptr], ptr %66, i32 0, i32 %add110.i
  %84 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i, ptr %arrayidx115.i, align 4
  %arrayidx117.i = getelementptr %struct.fbr_lookup, ptr %66, i32 0, i32 1, i32 %add110.i
  %85 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx117.i, align 4
  %arrayidx118.i = getelementptr %struct.fbr_lookup, ptr %66, i32 0, i32 2, i32 %add110.i
  %86 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %fbr_physaddr.0247.i, ptr %arrayidx118.i, align 4
  %87 = load i32, ptr %buffsize81.i, align 4
  %add120.i = add i32 %87, %fbr_physaddr.0247.i
  %inc122.i = add nuw nsw i32 %j.0246.i, 1
  %exitcond.not.i = icmp eq i32 %inc122.i, 32
  br i1 %exitcond.not.i, label %for.inc124.i, label %for.body108.i.for.body108.i_crit_edge

for.body108.i.for.body108.i_crit_edge:            ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body108.i

for.inc124.i:                                     ; preds = %for.body108.i
  %inc125.i = add nuw nsw i32 %i.0250.i, 1
  %88 = ptrtoint ptr %num_entries84.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_entries84.i, align 4
  %div238.i = lshr i32 %89, 5
  %cmp85.i = icmp ult i32 %inc125.i, %div238.i
  br i1 %cmp85.i, label %for.inc124.i.for.body87.i_crit_edge, label %for.inc124.i.for.inc127.i_crit_edge

for.inc124.i.for.inc127.i_crit_edge:              ; preds = %for.inc124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc127.i

for.inc124.i.for.body87.i_crit_edge:              ; preds = %for.inc124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body87.i

for.inc127.i:                                     ; preds = %for.inc124.i.for.inc127.i_crit_edge, %for.cond.1.i.for.inc127.i_crit_edge
  %90 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx7.i, align 4
  %buffsize81.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %buffsize81.1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buffsize81.1.i, align 4
  %mul82.1.i = shl i32 %93, 5
  %num_entries84.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 8
  %94 = ptrtoint ptr %num_entries84.1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_entries84.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %95)
  %cmp85249.not.1.i = icmp ult i32 %95, 32
  br i1 %cmp85249.not.1.i, label %for.inc127.i.for.inc127.1.i_crit_edge, label %for.inc127.i.for.body87.1.i_crit_edge

for.inc127.i.for.body87.1.i_crit_edge:            ; preds = %for.inc127.i
  br label %for.body87.1.i

for.inc127.i.for.inc127.1.i_crit_edge:            ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc127.1.i

for.body87.1.i:                                   ; preds = %for.inc124.1.i.for.body87.1.i_crit_edge, %for.inc127.i.for.body87.1.i_crit_edge
  %i.0250.1.i = phi i32 [ %inc125.1.i, %for.inc124.1.i.for.body87.1.i_crit_edge ], [ 0, %for.inc127.i.for.body87.1.i_crit_edge ]
  %96 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i, align 4
  %dev89.1.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %arrayidx90.1.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 6, i32 %i.0250.1.i
  %call.i240.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev89.1.i, i32 noundef %mul82.1.i, ptr noundef %arrayidx90.1.i, i32 noundef 3264, i32 noundef 0) #15
  %arrayidx92.1.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 5, i32 %i.0250.1.i
  %98 = ptrtoint ptr %arrayidx92.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i240.1.i, ptr %arrayidx92.1.i, align 4
  %tobool95.not.1.i = icmp eq ptr %call.i240.1.i, null
  br i1 %tobool95.not.1.i, label %for.body87.1.i.do.end99.i_crit_edge, label %if.end102.1.i

for.body87.1.i.do.end99.i_crit_edge:              ; preds = %for.body87.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end99.i

if.end102.1.i:                                    ; preds = %for.body87.1.i
  %99 = ptrtoint ptr %arrayidx90.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx90.1.i, align 4
  %mul109.1.i = shl i32 %i.0250.1.i, 5
  br label %for.body108.1.i

for.body108.1.i:                                  ; preds = %for.body108.1.i.for.body108.1.i_crit_edge, %if.end102.1.i
  %fbr_physaddr.0247.1.i = phi i32 [ %100, %if.end102.1.i ], [ %add120.1.i, %for.body108.1.i.for.body108.1.i_crit_edge ]
  %j.0246.1.i = phi i32 [ 0, %if.end102.1.i ], [ %inc122.1.i, %for.body108.1.i.for.body108.1.i_crit_edge ]
  %add110.1.i = add nuw nsw i32 %j.0246.1.i, %mul109.1.i
  %101 = ptrtoint ptr %arrayidx92.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx92.1.i, align 4
  %103 = ptrtoint ptr %buffsize81.1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buffsize81.1.i, align 4
  %mul114.1.i = mul i32 %104, %j.0246.1.i
  %add.ptr.1.i = getelementptr i8, ptr %102, i32 %mul114.1.i
  %arrayidx115.1.i = getelementptr [1024 x ptr], ptr %91, i32 0, i32 %add110.1.i
  %105 = ptrtoint ptr %arrayidx115.1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.1.i, ptr %arrayidx115.1.i, align 4
  %arrayidx117.1.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 1, i32 %add110.1.i
  %106 = ptrtoint ptr %arrayidx117.1.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx117.1.i, align 4
  %arrayidx118.1.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 2, i32 %add110.1.i
  %107 = ptrtoint ptr %arrayidx118.1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %fbr_physaddr.0247.1.i, ptr %arrayidx118.1.i, align 4
  %108 = load i32, ptr %buffsize81.1.i, align 4
  %add120.1.i = add i32 %108, %fbr_physaddr.0247.1.i
  %inc122.1.i = add nuw nsw i32 %j.0246.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc122.1.i, 32
  br i1 %exitcond.1.not.i, label %for.inc124.1.i, label %for.body108.1.i.for.body108.1.i_crit_edge

for.body108.1.i.for.body108.1.i_crit_edge:        ; preds = %for.body108.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body108.1.i

for.inc124.1.i:                                   ; preds = %for.body108.1.i
  %inc125.1.i = add nuw nsw i32 %i.0250.1.i, 1
  %109 = ptrtoint ptr %num_entries84.1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_entries84.1.i, align 4
  %div238.1.i = lshr i32 %110, 5
  %cmp85.1.i = icmp ult i32 %inc125.1.i, %div238.1.i
  br i1 %cmp85.1.i, label %for.inc124.1.i.for.body87.1.i_crit_edge, label %for.inc124.1.i.for.inc127.1.i_crit_edge

for.inc124.1.i.for.inc127.1.i_crit_edge:          ; preds = %for.inc124.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc127.1.i

for.inc124.1.i.for.body87.1.i_crit_edge:          ; preds = %for.inc124.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body87.1.i

for.inc127.1.i:                                   ; preds = %for.inc124.1.i.for.inc127.1.i_crit_edge, %for.inc127.i.for.inc127.1.i_crit_edge
  %111 = ptrtoint ptr %psr_entries.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %psr_entries.i, align 4
  %mul131.i = shl i32 %112, 3
  %113 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i, align 4
  %dev133.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %ps_ring_physaddr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 2
  %call.i241.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev133.i, i32 noundef %mul131.i, ptr noundef %ps_ring_physaddr.i, i32 noundef 3264, i32 noundef 0) #15
  %ps_ring_virtaddr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 1
  %115 = ptrtoint ptr %ps_ring_virtaddr.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i241.i, ptr %ps_ring_virtaddr.i, align 4
  %tobool136.not.i = icmp eq ptr %call.i241.i, null
  %116 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i, align 4
  %dev142.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  br i1 %tobool136.not.i, label %do.end140.i, label %if.end143.i

do.end140.i:                                      ; preds = %for.inc127.1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142.i, ptr noundef nonnull @.str.123) #18
  br label %do.end6

if.end143.i:                                      ; preds = %for.inc127.1.i
  %rx_status_bus.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 6
  %call.i242.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev142.i, i32 noundef 8, ptr noundef %rx_status_bus.i, i32 noundef 3264, i32 noundef 0) #15
  %rx_status_block.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 5
  %118 = ptrtoint ptr %rx_status_block.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i242.i, ptr %rx_status_block.i, align 4
  %tobool148.not.i = icmp eq ptr %call.i242.i, null
  br i1 %tobool148.not.i, label %do.end152.i, label %if.end9

do.end152.i:                                      ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #17
  %119 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev.i, align 4
  %dev154.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154.i, ptr noundef nonnull @.str.126) #18
  br label %do.end6

do.end6:                                          ; preds = %do.end152.i, %do.end140.i, %do.end99.i, %do.end.i46, %if.end.i41.do.end6_crit_edge, %if.end.do.end6_crit_edge
  %121 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev.i, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %122, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.107) #18
  tail call fastcc void @et131x_adapter_memory_free(ptr noundef %adapter)
  br label %cleanup

if.end9:                                          ; preds = %if.end143.i
  %num_rfd.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 9
  %123 = ptrtoint ptr %num_rfd.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1024, ptr %num_rfd.i, align 4
  %recv_list.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 7
  %124 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %recv_list.i, ptr %recv_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 7, i32 1
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %recv_list.i, ptr %prev.i.i, align 4
  %num_ready_recv.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end9
  %rfdct.011.i = phi i32 [ 0, %if.end9 ], [ %inc2.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %126 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %126, i32 noundef 2849, i32 noundef 20) #19
  %tobool.not.i50 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i50, label %do.end15, label %if.end.i51

if.end.i51:                                       ; preds = %for.body.i
  %skb.i = getelementptr inbounds %struct.rfd, ptr %call7.i.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %skb.i, align 8
  %128 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %129, ptr noundef %recv_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i51.list_add_tail.exit.i_crit_edge

if.end.i51.list_add_tail.exit.i_crit_edge:        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %recv_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev3.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %call7.i.i.i, ptr %129, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i51.list_add_tail.exit.i_crit_edge
  %134 = ptrtoint ptr %num_ready_recv.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_ready_recv.i, align 4
  %inc.i = add i32 %135, 1
  store i32 %inc.i, ptr %num_ready_recv.i, align 4
  %inc2.i = add nuw i32 %rfdct.011.i, 1
  %136 = ptrtoint ptr %num_rfd.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_rfd.i, align 4
  %cmp.i52 = icmp ult i32 %inc2.i, %137
  br i1 %cmp.i52, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end15:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.110) #18
  tail call fastcc void @et131x_adapter_memory_free(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %list_add_tail.exit.i.cleanup_crit_edge, %do.end6, %et131x_tx_dma_memory_free.exit
  %retval.0 = phi i32 [ -12, %et131x_tx_dma_memory_free.exit ], [ -12, %do.end6 ], [ -12, %do.end15 ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %0 = tail call i32 @llvm.smin.i32(i32 %budget, i32 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp298.i = icmp sgt i32 %budget, 0
  br i1 %cmp298.i, label %while.body.lr.ph.lr.ph.i, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.lr.ph.i:                         ; preds = %entry
  %recv_list.i = getelementptr i8, ptr %napi, i32 1304
  %rx_status_block.i.i = getelementptr i8, ptr %napi, i32 1296
  %local_psr_full.i.i = getelementptr i8, ptr %napi, i32 1288
  %rx_ring.i.i = getelementptr i8, ptr %napi, i32 1272
  %ps_ring_virtaddr.i.i = getelementptr i8, ptr %napi, i32 1280
  %psr_entries.i.i = getelementptr i8, ptr %napi, i32 1292
  %regs.i.i = getelementptr i8, ptr %napi, i32 1156
  %rcv_lock.i.i = getelementptr i8, ptr %napi, i32 336
  %num_ready_recv.i.i = getelementptr i8, ptr %napi, i32 1312
  %stats67.i.i = getelementptr i8, ptr %napi, i32 1324
  %rx_other_errs.i.i = getelementptr i8, ptr %napi, i32 1380
  %pdev.i.i.i = getelementptr i8, ptr %napi, i32 -12
  %prev.i.i151.i.i = getelementptr i8, ptr %napi, i32 1308
  %num_rfd.i.i.i = getelementptr i8, ptr %napi, i32 1316
  %packet_filter.i = getelementptr i8, ptr %napi, i32 380
  %smax.i = tail call i32 @llvm.smax.i32(i32 %0, i32 1) #15
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end44.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %cmp2100.i = phi i1 [ true, %while.body.lr.ph.lr.ph.i ], [ %cmp2.i, %if.end44.i.while.body.lr.ph.i_crit_edge ]
  %count.0.ph99.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %inc45.i, %if.end44.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.then35.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %1 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %recv_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, %recv_list.i
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.end26.i

if.then3.i:                                       ; preds = %while.body.i
  %3 = ptrtoint ptr %num_ready_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ready_recv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not.i = icmp eq i32 %4, 0
  br i1 %cmp4.not.i, label %if.then3.i.if.then49.i_crit_edge, label %do.end.i, !prof !295

if.then3.i.if.then49.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2306, i32 noundef 9, ptr noundef null) #15
  br label %if.then49.i

if.end26.i:                                       ; preds = %while.body.i
  %5 = ptrtoint ptr %rx_status_block.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_status_block.i.i, align 4
  %word11.i.i = getelementptr inbounds %struct.rx_status_block, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %word11.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %word11.i.i, align 4
  %shr.i.i = lshr i32 %8, 16
  %9 = ptrtoint ptr %local_psr_full.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %local_psr_full.i.i, align 4
  %11 = xor i32 %shr.i.i, %10
  %12 = and i32 %11, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i72.i = icmp eq i32 %12, 0
  br i1 %cmp.i72.i, label %if.end26.i.while.end.i_crit_edge, label %if.end.i.i

if.end26.i.while.end.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end.i.i:                                       ; preds = %if.end26.i
  %13 = ptrtoint ptr %ps_ring_virtaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps_ring_virtaddr.i.i, align 4
  %and4.i.i = and i32 %10, 4095
  %add.ptr.i.i = getelementptr %struct.pkt_stat_desc, ptr %14, i32 %and4.i.i
  %word15.i.i = getelementptr %struct.pkt_stat_desc, ptr %14, i32 %and4.i.i, i32 1
  %15 = ptrtoint ptr %word15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %word15.i.i, align 4
  %and6.i.i = and i32 %16, 65535
  %shr8.i.i = lshr i32 %16, 26
  %17 = trunc i32 %shr8.i.i to i8
  %conv.i73.i = and i8 %17, 3
  %idxprom.i.i = zext i8 %conv.i73.i to i32
  %arrayidx.i.i = getelementptr [2 x ptr], ptr %rx_ring.i.i, i32 0, i32 %idxprom.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %shr12.i.i = lshr i32 %16, 16
  %20 = trunc i32 %shr12.i.i to i16
  %conv14.i.i = and i16 %20, 1023
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  %and.i.i.i = and i32 %add.i.i.i, 4095
  %and1.i.i.i = and i32 %10, 4096
  %or.i.i.i = or i32 %and.i.i.i, %and1.i.i.i
  %23 = ptrtoint ptr %local_psr_full.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i.i, ptr %local_psr_full.i.i, align 4
  %24 = ptrtoint ptr %psr_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %psr_entries.i.i, align 4
  %sub.i.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %sub.i.i)
  %cmp19.i.i = icmp ugt i32 %and.i.i.i, %sub.i.i
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %xor.i.i = xor i32 %and1.i.i.i, 4096
  %26 = ptrtoint ptr %local_psr_full.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %xor.i.i, ptr %local_psr_full.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then21.i.i, %if.end.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !296
  tail call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %local_psr_full.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %local_psr_full.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %psr_full_offset.i.i = getelementptr inbounds %struct.address_map, ptr %31, i32 0, i32 4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_full_offset.i.i, i32 %29) #15, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i73.i)
  %cmp28.i.i = icmp ugt i8 %conv.i73.i, 1
  %.pre.i.i = zext i16 %conv14.i.i to i32
  br i1 %cmp28.i.i, label %do.body.i.i.do.end37.i.i_crit_edge, label %lor.lhs.false.i.i

do.body.i.i.do.end37.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37.i.i

lor.lhs.false.i.i:                                ; preds = %do.body.i.i
  %num_entries.i.i = getelementptr inbounds %struct.fbr_lookup, ptr %19, i32 0, i32 8
  %32 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_entries.i.i, align 4
  %sub31.i.i = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub31.i.i, i32 %.pre.i.i)
  %cmp32.i.i = icmp ult i32 %sub31.i.i, %.pre.i.i
  br i1 %cmp32.i.i, label %lor.lhs.false.i.i.do.end37.i.i_crit_edge, label %do.body43.i.i

lor.lhs.false.i.i.do.end37.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end37.i.i

do.end37.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end37.i.i_crit_edge, %do.body.i.i.do.end37.i.i_crit_edge
  %34 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %local_psr_full.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %local_psr_full.i.i, align 4
  %and39.i.i = and i32 %37, 4095
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.130, i32 noundef %and39.i.i, i32 noundef %and6.i.i, i32 noundef %.pre.i.i) #18
  br label %while.end.i

do.body43.i.i:                                    ; preds = %lor.lhs.false.i.i
  %call46.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rcv_lock.i.i) #15
  %38 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %recv_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.then53.i.i, label %if.end55.i.i

if.then53.i.i:                                    ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_lock.i.i, i32 noundef %call46.i.i) #15
  br label %while.end.i

if.end55.i.i:                                     ; preds = %do.body43.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %39) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end55.i.i.list_del.exit.i.i_crit_edge

if.end55.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end55.i.i.list_del.exit.i.i_crit_edge
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %num_ready_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_ready_recv.i.i, align 4
  %dec.i.i = add i32 %49, -1
  store i32 %dec.i.i, ptr %num_ready_recv.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_lock.i.i, i32 noundef %call46.i.i) #15
  %bufferindex.i.i = getelementptr inbounds %struct.rfd, ptr %39, i32 0, i32 3
  %50 = ptrtoint ptr %bufferindex.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv14.i.i, ptr %bufferindex.i.i, align 4
  %ringindex.i.i = getelementptr inbounds %struct.rfd, ptr %39, i32 0, i32 4
  %51 = ptrtoint ptr %ringindex.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i73.i, ptr %ringindex.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and6.i.i)
  %cmp57.i.i = icmp ult i32 %and6.i.i, 64
  br i1 %cmp57.i.i, label %if.then59.i.i, label %if.end61.i.i

if.then59.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %52 = ptrtoint ptr %rx_other_errs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_other_errs.i.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %rx_other_errs.i.i, align 4
  %len60.i.i = getelementptr inbounds %struct.rfd, ptr %39, i32 0, i32 2
  %54 = ptrtoint ptr %len60.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %len60.i.i, align 4
  br label %out.i.i

if.end61.i.i:                                     ; preds = %list_del.exit.i.i
  %55 = and i32 %22, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %55)
  %56 = icmp eq i32 %55, 16777216
  br i1 %56, label %if.then66.i.i, label %if.end61.i.i.if.end69.i.i_crit_edge

if.end61.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69.i.i

if.then66.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %stats67.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stats67.i.i, align 4
  %inc68.i.i = add i32 %58, 1
  store i32 %inc68.i.i, ptr %stats67.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then66.i.i, %if.end61.i.i.if.end69.i.i_crit_edge
  %len70.i.i = getelementptr inbounds %struct.rfd, ptr %39, i32 0, i32 2
  %59 = ptrtoint ptr %len70.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and6.i.i, ptr %len70.i.i, align 4
  %add.i.i = add nuw nsw i32 %and6.i.i, 2
  %call.i.i149.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i, i32 noundef 2592) #15
  %tobool73.not.i.i = icmp eq ptr %call.i.i149.i.i, null
  br i1 %tobool73.not.i.i, label %if.end69.i.i.while.end.i_crit_edge, label %if.end75.i.i

if.end69.i.i.while.end.i_crit_edge:               ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end75.i.i:                                     ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %len70.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len70.i.i, align 4
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 8
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 36, i32 2
  %64 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_bytes.i.i, align 8
  %add78.i.i = add i32 %65, %61
  store i32 %add78.i.i, ptr %rx_bytes.i.i, align 8
  %arrayidx80.i.i = getelementptr [1024 x ptr], ptr %19, i32 0, i32 %.pre.i.i
  %66 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx80.i.i, align 4
  %68 = load i32, ptr %len70.i.i, align 4
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i149.i.i, i32 noundef %68) #15
  %69 = call ptr @memcpy(ptr %call.i.i.i, ptr %67, i32 %68)
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 8
  %call84.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i149.i.i, ptr noundef %71) #15
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i149.i.i, i32 0, i32 15, i32 0, i32 18
  %72 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %call84.i.i, ptr %protocol.i.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i149.i.i, i32 0, i32 15
  %73 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  store i16 %bf.clear.i.i, ptr %ip_summed.i.i, align 8
  %call85.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i149.i.i) #15
  br label %out.i.i

out.i.i:                                          ; preds = %if.end75.i.i, %if.then59.i.i
  %74 = ptrtoint ptr %bufferindex.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bufferindex.i.i, align 4
  %76 = ptrtoint ptr %ringindex.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ringindex.i.i, align 2
  %idxprom.i.i.i = zext i8 %77 to i32
  %arrayidx.i.i.i = getelementptr [2 x ptr], ptr %rx_ring.i.i, i32 0, i32 %idxprom.i.i.i
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i, align 4
  %conv.i.i.i = zext i16 %75 to i32
  %num_entries.i.i.i = getelementptr inbounds %struct.fbr_lookup, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_entries.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %81, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end17.i.i.i

if.then.i.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp4.i.i.i = icmp eq i8 %77, 0
  %fbr0_full_offset.i.i.i = getelementptr inbounds %struct.address_map, ptr %83, i32 0, i32 4, i32 19
  %fbr1_full_offset.i.i.i = getelementptr inbounds %struct.address_map, ptr %83, i32 0, i32 4, i32 26
  %offset.0.i.i.i = select i1 %cmp4.i.i.i, ptr %fbr0_full_offset.i.i.i, ptr %fbr1_full_offset.i.i.i
  %ring_virtaddr.i.i.i = getelementptr inbounds %struct.fbr_lookup, ptr %79, i32 0, i32 3
  %84 = ptrtoint ptr %ring_virtaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ring_virtaddr.i.i.i, align 4
  %local_full.i.i.i = getelementptr inbounds %struct.fbr_lookup, ptr %79, i32 0, i32 7
  %86 = ptrtoint ptr %local_full.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %local_full.i.i.i, align 4
  %and.i150.i.i = and i32 %87, 1023
  %add.ptr.i.i.i = getelementptr %struct.fbr_desc, ptr %85, i32 %and.i150.i.i
  %arrayidx8.i.i.i = getelementptr %struct.fbr_lookup, ptr %79, i32 0, i32 1, i32 %conv.i.i.i
  %88 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx8.i.i.i, align 4
  %addr_hi.i.i.i = getelementptr %struct.fbr_desc, ptr %85, i32 %and.i150.i.i, i32 1
  %90 = ptrtoint ptr %addr_hi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %addr_hi.i.i.i, align 4
  %arrayidx10.i.i.i = getelementptr %struct.fbr_lookup, ptr %79, i32 0, i32 2, i32 %conv.i.i.i
  %91 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx10.i.i.i, align 4
  %93 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %add.ptr.i.i.i, align 4
  %word2.i.i.i = getelementptr %struct.fbr_desc, ptr %85, i32 %and.i150.i.i, i32 2
  %94 = ptrtoint ptr %word2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i.i.i, ptr %word2.i.i.i, align 4
  %95 = ptrtoint ptr %num_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_entries.i.i.i, align 4
  %sub.i.i.i = add i32 %96, -1
  %97 = load i32, ptr %local_full.i.i.i, align 4
  %inc.i.i.i.i = add i32 %97, 1
  %and.i.i.i.i = and i32 %inc.i.i.i.i, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i.i, i32 %sub.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %and.i.i.i.i, %sub.i.i.i
  %and1.i.i.i.i = and i32 %inc.i.i.i.i, 1024
  %xor.i.i.i.i = xor i32 %and1.i.i.i.i, 1024
  %tmp_free_buff_ring.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %xor.i.i.i.i, i32 %inc.i.i.i.i
  %and2.i.i.i.i = and i32 %tmp_free_buff_ring.0.i.i.i.i, 2047
  %98 = ptrtoint ptr %local_full.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and2.i.i.i.i, ptr %local_full.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !297
  tail call void @arm_heavy_mb() #15
  %99 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %offset.0.i.i.i, i32 %99) #15, !srcloc !289
  br label %do.body20.i.i.i

do.end17.i.i.i:                                   ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #18
  br label %do.body20.i.i.i

do.body20.i.i.i:                                  ; preds = %do.end17.i.i.i, %if.then.i.i.i
  %call24.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rcv_lock.i.i) #15
  %102 = ptrtoint ptr %prev.i.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i151.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %39, ptr noundef %103, ptr noundef %recv_list.i) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.body20.i.i.i.list_add_tail.exit.i.i.i_crit_edge

do.body20.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %prev.i.i151.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %39, ptr %prev.i.i151.i.i, align 4
  %105 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %recv_list.i, ptr %39, align 4
  %106 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %39, ptr %103, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %do.body20.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %108 = ptrtoint ptr %num_ready_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_ready_recv.i.i, align 4
  %inc.i.i.i = add i32 %109, 1
  store i32 %inc.i.i.i, ptr %num_ready_recv.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_lock.i.i, i32 noundef %call24.i.i.i) #15
  %110 = ptrtoint ptr %num_ready_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_ready_recv.i.i, align 4
  %112 = ptrtoint ptr %num_rfd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_rfd.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %113)
  %cmp31.i.i.i = icmp ugt i32 %111, %113
  br i1 %cmp31.i.i.i, label %do.end43.i.i.i, label %list_add_tail.exit.i.i.i.if.end30.i_crit_edge, !prof !298

list_add_tail.exit.i.i.i.if.end30.i_crit_edge:    ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

do.end43.i.i.i:                                   ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2172, i32 noundef 9, ptr noundef null) #15
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end43.i.i.i, %list_add_tail.exit.i.i.i.if.end30.i_crit_edge
  %114 = ptrtoint ptr %packet_filter.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %packet_filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool31.not.i = icmp eq i32 %115, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.then35.i_crit_edge, label %lor.lhs.false.i

if.end30.i.if.then35.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

lor.lhs.false.i:                                  ; preds = %if.end30.i
  %116 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %state.i.i, align 4
  %120 = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i74.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i74.i, label %lor.lhs.false33.i, label %lor.lhs.false.i.if.then35.i_crit_edge

lor.lhs.false.i.if.then35.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

lor.lhs.false33.i:                                ; preds = %lor.lhs.false.i
  %len.i = getelementptr inbounds %struct.rfd, ptr %39, i32 0, i32 2
  %121 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp34.i = icmp eq i32 %122, 0
  br i1 %cmp34.i, label %lor.lhs.false33.i.if.then35.i_crit_edge, label %if.end36.i

lor.lhs.false33.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false33.i.if.then35.i_crit_edge, %lor.lhs.false.i.if.then35.i_crit_edge, %if.end30.i.if.then35.i_crit_edge
  br i1 %cmp2100.i, label %if.then35.i.while.body.i_crit_edge, label %if.then35.i.while.end.i_crit_edge

if.then35.i.while.end.i_crit_edge:                ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.then35.i.while.body.i_crit_edge:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end36.i:                                       ; preds = %lor.lhs.false33.i
  %stats.i = getelementptr inbounds %struct.net_device, ptr %117, i32 0, i32 36
  %123 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %124, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %125 = ptrtoint ptr %num_ready_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num_ready_recv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %126)
  %cmp39.i = icmp ult i32 %126, 40
  br i1 %cmp39.i, label %do.end43.i, label %if.end36.i.if.end44.i_crit_edge

if.end36.i.if.end44.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.128) #18
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end43.i, %if.end36.i.if.end44.i_crit_edge
  %inc45.i = add nuw nsw i32 %count.0.ph99.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc45.i, i32 %0)
  %cmp2.i = icmp slt i32 %inc45.i, %0
  %exitcond.not.i = icmp eq i32 %inc45.i, %smax.i
  br i1 %exitcond.not.i, label %if.end44.i.while.end.i_crit_edge, label %if.end44.i.while.body.lr.ph.i_crit_edge

if.end44.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.lr.ph.i

if.end44.i.while.end.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end44.i.while.end.i_crit_edge, %if.then35.i.while.end.i_crit_edge, %if.end69.i.i.while.end.i_crit_edge, %if.then53.i.i, %do.end37.i.i, %if.end26.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %count.0.ph92.i = phi i32 [ %count.0.ph99.i, %if.then53.i.i ], [ %count.0.ph99.i, %do.end37.i.i ], [ 0, %entry.while.end.i_crit_edge ], [ %count.0.ph99.i, %if.end26.i.while.end.i_crit_edge ], [ %count.0.ph99.i, %if.end69.i.i.while.end.i_crit_edge ], [ %count.0.ph99.i, %if.then35.i.while.end.i_crit_edge ], [ %smax.i, %if.end44.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.ph92.i, i32 %0)
  %cmp46.i = icmp eq i32 %count.0.ph92.i, %0
  br i1 %cmp46.i, label %while.end.i.if.then49.i_crit_edge, label %if.else.i

while.end.i.if.then49.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49.i

if.then49.i:                                      ; preds = %while.end.i.if.then49.i_crit_edge, %do.end.i, %if.then3.i.if.then49.i_crit_edge
  %count.0.ph94.i = phi i32 [ %count.0.ph99.i, %if.then3.i.if.then49.i_crit_edge ], [ %count.0.ph99.i, %do.end.i ], [ %0, %while.end.i.if.then49.i_crit_edge ]
  %unfinished_receives.i = getelementptr i8, ptr %napi, i32 1320
  %129 = ptrtoint ptr %unfinished_receives.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %unfinished_receives.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !299
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %napi, i32 1156
  %130 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i, align 4
  %watchdog_timer.i = getelementptr inbounds %struct.global_regs, ptr %131, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %watchdog_timer.i, i32 1083965440) #15, !srcloc !289
  br label %et131x_handle_recv_pkts.exit

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %unfinished_receives53.i = getelementptr i8, ptr %napi, i32 1320
  %132 = ptrtoint ptr %unfinished_receives53.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %unfinished_receives53.i, align 4
  br label %et131x_handle_recv_pkts.exit

et131x_handle_recv_pkts.exit:                     ; preds = %if.else.i, %if.then49.i
  %count.0.ph93.i = phi i32 [ %count.0.ph92.i, %if.else.i ], [ %count.0.ph94.i, %if.then49.i ]
  %regs.i9 = getelementptr i8, ptr %napi, i32 1156
  %133 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i9, align 4
  %new_service_complete.i = getelementptr inbounds %struct.address_map, ptr %134, i32 0, i32 2, i32 24
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %new_service_complete.i) #15, !srcloc !300
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !301
  %and.i = and i32 %136, 1023
  %tcb_send_qlock.i = getelementptr i8, ptr %napi, i32 248
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock.i) #15
  %send_head.i = getelementptr i8, ptr %napi, i32 1236
  %137 = ptrtoint ptr %send_head.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %tcb.0121.i = load ptr, ptr %send_head.i, align 4
  %tobool.not122.i = icmp eq ptr %tcb.0121.i, null
  br i1 %tobool.not122.i, label %et131x_handle_recv_pkts.exit.while.end76.i_crit_edge, label %land.lhs.true.lr.ph.i

et131x_handle_recv_pkts.exit.while.end76.i_crit_edge: ; preds = %et131x_handle_recv_pkts.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end76.i

land.lhs.true.lr.ph.i:                            ; preds = %et131x_handle_recv_pkts.exit
  %used.i = getelementptr i8, ptr %napi, i32 1244
  %send_tail.i = getelementptr i8, ptr %napi, i32 1240
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %land.lhs.true.lr.ph.i
  %tcb.0124.i = phi ptr [ %tcb.0121.i, %land.lhs.true.lr.ph.i ], [ %tcb.0.i, %if.end.i.land.lhs.true.i_crit_edge ]
  %flags.0123.i = phi i32 [ %call6.i, %land.lhs.true.lr.ph.i ], [ %call30.i, %if.end.i.land.lhs.true.i_crit_edge ]
  %index9.i = getelementptr inbounds %struct.tcb, ptr %tcb.0124.i, i32 0, i32 4
  %138 = ptrtoint ptr %index9.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %index9.i, align 4
  %xor.i = xor i32 %139, %136
  %and10.i = and i32 %xor.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp ne i32 %and10.i, 0
  %and13.i = and i32 %139, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and13.i)
  %cmp14.i = icmp ult i32 %and.i, %and13.i
  %or.cond.i = select i1 %tobool11.not.i, i1 %cmp14.i, i1 false
  br i1 %or.cond.i, label %while.body.i10, label %land.lhs.true.i.land.lhs.true38.i_crit_edge

land.lhs.true.i.land.lhs.true38.i_crit_edge:      ; preds = %land.lhs.true.i
  br label %land.lhs.true38.i

while.body.i10:                                   ; preds = %land.lhs.true.i
  %140 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %141, -1
  store i32 %dec.i, ptr %used.i, align 4
  %142 = ptrtoint ptr %tcb.0124.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tcb.0124.i, align 4
  %144 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %send_head.i, align 4
  %145 = load ptr, ptr %tcb.0124.i, align 4
  %cmp18.i = icmp eq ptr %145, null
  br i1 %cmp18.i, label %if.then.i, label %while.body.i10.if.end.i_crit_edge

while.body.i10.if.end.i_crit_edge:                ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i10
  call void @__sanitizer_cov_trace_pc() #17
  %146 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %send_tail.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i10.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock.i, i32 noundef %flags.0123.i) #15
  tail call fastcc void @free_send_packet(ptr noundef %add.ptr, ptr noundef nonnull %tcb.0124.i) #15
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock.i) #15
  %147 = ptrtoint ptr %send_head.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %tcb.0.i = load ptr, ptr %send_head.i, align 4
  %tobool.not.i = icmp eq ptr %tcb.0.i, null
  br i1 %tobool.not.i, label %if.end.i.while.end76.i_crit_edge, label %if.end.i.land.lhs.true.i_crit_edge

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

if.end.i.while.end76.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end76.i

land.lhs.true38.i:                                ; preds = %if.end59.i.land.lhs.true38.i_crit_edge, %land.lhs.true.i.land.lhs.true38.i_crit_edge
  %flags.1130.i = phi i32 [ %call70.i, %if.end59.i.land.lhs.true38.i_crit_edge ], [ %flags.0123.i, %land.lhs.true.i.land.lhs.true38.i_crit_edge ]
  %tcb.1129.i = phi ptr [ %158, %if.end59.i.land.lhs.true38.i_crit_edge ], [ %tcb.0124.i, %land.lhs.true.i.land.lhs.true38.i_crit_edge ]
  %index39.i = getelementptr inbounds %struct.tcb, ptr %tcb.1129.i, i32 0, i32 4
  %148 = ptrtoint ptr %index39.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %index39.i, align 4
  %xor40.i = xor i32 %149, %136
  %and41.i = and i32 %xor40.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %and45.i = and i32 %149, 1023
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and45.i)
  %cmp46.i11 = icmp ugt i32 %and.i, %and45.i
  %or.cond120.i = select i1 %tobool42.not.i, i1 %cmp46.i11, i1 false
  br i1 %or.cond120.i, label %while.body49.i, label %land.lhs.true38.i.while.end76.i_crit_edge

land.lhs.true38.i.while.end76.i_crit_edge:        ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end76.i

while.body49.i:                                   ; preds = %land.lhs.true38.i
  %150 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %used.i, align 4
  %dec51.i = add i32 %151, -1
  store i32 %dec51.i, ptr %used.i, align 4
  %152 = ptrtoint ptr %tcb.1129.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tcb.1129.i, align 4
  %154 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %153, ptr %send_head.i, align 4
  %155 = load ptr, ptr %tcb.1129.i, align 4
  %cmp55.i = icmp eq ptr %155, null
  br i1 %cmp55.i, label %if.then57.i, label %while.body49.i.if.end59.i_crit_edge

while.body49.i.if.end59.i_crit_edge:              ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.i

if.then57.i:                                      ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  %156 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %send_tail.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then57.i, %while.body49.i.if.end59.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock.i, i32 noundef %flags.1130.i) #15
  tail call fastcc void @free_send_packet(ptr noundef %add.ptr, ptr noundef nonnull %tcb.1129.i) #15
  %call70.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock.i) #15
  %157 = ptrtoint ptr %send_head.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %send_head.i, align 4
  %tobool37.not.i = icmp eq ptr %158, null
  br i1 %tobool37.not.i, label %if.end59.i.while.end76.i_crit_edge, label %if.end59.i.land.lhs.true38.i_crit_edge

if.end59.i.land.lhs.true38.i_crit_edge:           ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true38.i

if.end59.i.while.end76.i_crit_edge:               ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end76.i

while.end76.i:                                    ; preds = %if.end59.i.while.end76.i_crit_edge, %land.lhs.true38.i.while.end76.i_crit_edge, %if.end.i.while.end76.i_crit_edge, %et131x_handle_recv_pkts.exit.while.end76.i_crit_edge
  %flags.1.lcssa.i = phi i32 [ %call6.i, %et131x_handle_recv_pkts.exit.while.end76.i_crit_edge ], [ %flags.1130.i, %land.lhs.true38.i.while.end76.i_crit_edge ], [ %call70.i, %if.end59.i.while.end76.i_crit_edge ], [ %call30.i, %if.end.i.while.end76.i_crit_edge ]
  %used77.i = getelementptr i8, ptr %napi, i32 1244
  %159 = ptrtoint ptr %used77.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %used77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %160)
  %cmp78.i = icmp slt i32 %160, 22
  br i1 %cmp78.i, label %if.then80.i, label %while.end76.i.et131x_handle_send_pkts.exit_crit_edge

while.end76.i.et131x_handle_send_pkts.exit_crit_edge: ; preds = %while.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_handle_send_pkts.exit

if.then80.i:                                      ; preds = %while.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  %161 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %162, i32 0, i32 103
  %163 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %164) #15
  br label %et131x_handle_send_pkts.exit

et131x_handle_send_pkts.exit:                     ; preds = %if.then80.i, %while.end76.i.et131x_handle_send_pkts.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock.i, i32 noundef %flags.1.lcssa.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.ph93.i, i32 %budget)
  %cmp = icmp slt i32 %count.0.ph93.i, %budget
  br i1 %cmp, label %if.then, label %et131x_handle_send_pkts.exit.if.end_crit_edge

et131x_handle_send_pkts.exit.if.end_crit_edge:    ; preds = %et131x_handle_send_pkts.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %et131x_handle_send_pkts.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0.ph93.i) #15
  %flow.i = getelementptr i8, ptr %napi, i32 1168
  %165 = ptrtoint ptr %flow.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %flow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %166)
  %switch.i = icmp ult i8 %166, 2
  %spec.select.i = select i1 %switch.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %167 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %168 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i9, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %169, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 %167) #15, !srcloc !289
  br label %if.end

if.end:                                           ; preds = %if.then, %et131x_handle_send_pkts.exit.if.end_crit_edge
  ret i32 %count.0.ph93.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg) #2 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #15
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %value, align 2, !annotation !286
  %conv = trunc i32 %phy_addr to i8
  %conv1 = trunc i32 %reg to i8
  %call2 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value, align 2
  %conv4 = zext i16 %4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %conv = trunc i32 %phy_addr to i8
  %conv1 = trunc i32 %reg to i8
  %call2 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, i16 noundef zeroext %value)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_adapter_setup(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  %lcr2.i = alloca i16, align 2
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !303
  tail call void @arm_heavy_mb() #15
  %rxq_start_addr.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxq_start_addr.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !304
  tail call void @arm_heavy_mb() #15
  %txq_end_addr.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txq_end_addr.i, i32 -16580608) #15, !srcloc !289
  %registry_jumbo_packet.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 18
  %2 = ptrtoint ptr %registry_jumbo_packet.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %registry_jumbo_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp.i = icmp ult i32 %3, 2048
  br i1 %cmp.i, label %do.body5.i, label %if.else.i

do.body5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !305
  tail call void @arm_heavy_mb() #15
  %rxq_end_addr.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxq_end_addr.i, i32 -1140719616) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !306
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -1123942400) #15, !srcloc !289
  br label %et131x_configure_global_regs.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %3)
  %cmp12.i = icmp ult i32 %3, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %rxq_end_addr17.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 3
  br i1 %cmp12.i, label %do.body14.i, label %do.body23.i

do.body14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxq_end_addr17.i, i32 -16711680) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 131072) #15, !srcloc !289
  br label %et131x_configure_global_regs.exit

do.body23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxq_end_addr17.i, i32 -1291780096) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -1275002880) #15, !srcloc !289
  br label %et131x_configure_global_regs.exit

et131x_configure_global_regs.exit:                ; preds = %do.body23.i, %do.body14.i, %do.body5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  tail call void @arm_heavy_mb() #15
  %loopback.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %loopback.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !310
  tail call void @arm_heavy_mb() #15
  %msi_config.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %msi_config.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !311
  tail call void @arm_heavy_mb() #15
  %watchdog_timer.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %watchdog_timer.i, i32 0) #15, !srcloc !289
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 4
  %mac.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !312
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 4032) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !313
  tail call void @arm_heavy_mb() #15
  %ipg4.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ipg4.i, i32 1616379960) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !314
  tail call void @arm_heavy_mb() #15
  %hfdp.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hfdp.i, i32 938516736) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @arm_heavy_mb() #15
  %if_ctrl.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %if_ctrl.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !316
  tail call void @arm_heavy_mb() #15
  %mii_mgmt_cfg.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cfg.i, i32 117440512) #15, !srcloc !289
  %addr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 7
  %arrayidx.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr.i, align 2
  %conv16.i = zext i8 %9 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 16
  %or18.i = or i32 %shl17.i, %shl.i
  %arrayidx20.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %11 to i32
  %shl22.i = shl nuw i32 %conv21.i, 24
  %arrayidx24.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24.i, align 2
  %conv25.i = zext i8 %13 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 16
  %or27.i = or i32 %shl26.i, %shl22.i
  %arrayidx29.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %15 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 8
  %or32.i = or i32 %or27.i, %shl31.i
  %arrayidx34.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx34.i, align 2
  %conv35.i = zext i8 %17 to i32
  %or36.i = or i32 %or32.i, %conv35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  tail call void @arm_heavy_mb() #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #15
  %station_addr_1.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %station_addr_1.i, i32 %18) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #15
  %station_addr_2.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %station_addr_2.i, i32 %19) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !319
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %registry_jumbo_packet.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %registry_jumbo_packet.i, align 4
  %add.i = add i32 %21, 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %add.i) #15
  %max_fm_len.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %max_fm_len.i, i32 %22) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !320
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !321
  tail call void @arm_heavy_mb() #15
  %23 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs1.i, align 4
  %mmc = getelementptr inbounds %struct.address_map, ptr %24, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmc, i32 16777216) #15, !srcloc !289
  %25 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1.i, align 4
  %rxmac1.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 145
  %29 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phydev2.i, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !322
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac1.i, i32 134217728) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !323
  tail call void @arm_heavy_mb() #15
  %crc0.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %crc0.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !324
  tail call void @arm_heavy_mb() #15
  %crc12.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %crc12.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !325
  tail call void @arm_heavy_mb() #15
  %crc34.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %crc34.i, i32 0) #15, !srcloc !289
  %mask0_word0.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 6
  %mask4_word3.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 25
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %et131x_configure_global_regs.exit
  %wolw.0148.i = phi ptr [ %mask0_word0.i, %et131x_configure_global_regs.exit ], [ %incdec.ptr.i, %do.body12.i.do.body12.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !326
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wolw.0148.i, i32 0) #15, !srcloc !289
  %incdec.ptr.i = getelementptr i32, ptr %wolw.0148.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %mask4_word3.i
  br i1 %cmp.not.i, label %for.end.i, label %do.body12.i.do.body12.i_crit_edge

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12.i

for.end.i:                                        ; preds = %do.body12.i
  %31 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx34.i, align 2
  %conv.i14 = zext i8 %32 to i32
  %shl.i15 = shl nuw i32 %conv.i14, 24
  %33 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx29.i, align 1
  %conv17.i = zext i8 %34 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or.i = or i32 %shl18.i, %shl.i15
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx24.i, align 2
  %conv21.i17 = zext i8 %36 to i32
  %shl22.i18 = shl nuw nsw i32 %conv21.i17, 8
  %or23.i = or i32 %or.i, %shl22.i18
  %37 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20.i, align 1
  %conv26.i = zext i8 %38 to i32
  %or27.i19 = or i32 %or23.i, %conv26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !327
  tail call void @arm_heavy_mb() #15
  %39 = tail call i32 @llvm.bswap.i32(i32 %or27.i19) #15
  %sa_lo31.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sa_lo31.i, i32 %39) #15, !srcloc !289
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr.i, align 2
  %conv34.i = zext i8 %41 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 8
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv38.i = zext i8 %43 to i32
  %or39.i = or i32 %shl35.i, %conv38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  tail call void @arm_heavy_mb() #15
  %44 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #15
  %sa_hi43.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sa_hi43.i, i32 %44) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %pf_ctrl47.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pf_ctrl47.i, i32 0) #15, !srcloc !289
  %packet_filter.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 13
  %45 = ptrtoint ptr %packet_filter.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %packet_filter.i, align 4
  %and.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body49.i, label %if.then.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et1310_setup_device_for_unicast(ptr noundef %adapter) #15
  br label %if.end.i

do.body49.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !330
  tail call void @arm_heavy_mb() #15
  %uni_pf_addr1.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr1.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !331
  tail call void @arm_heavy_mb() #15
  %uni_pf_addr2.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr2.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !332
  tail call void @arm_heavy_mb() #15
  %uni_pf_addr3.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr3.i, i32 0) #15, !srcloc !289
  br label %if.end.i

if.end.i:                                         ; preds = %do.body49.i, %if.then.i
  %pf_ctrl.0.i = phi i32 [ 4, %if.then.i ], [ 0, %do.body49.i ]
  %47 = ptrtoint ptr %packet_filter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %packet_filter.i, align 4
  %and59.i = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.then61.i, label %if.end.i.if.end63.i_crit_edge

if.end.i.if.end63.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %or62.i = or i32 %pf_ctrl.0.i, 2
  tail call fastcc void @et1310_setup_device_for_multicast(ptr noundef %adapter) #15
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end.i.if.end63.i_crit_edge
  %pf_ctrl.1.i = phi i32 [ %pf_ctrl.0.i, %if.end.i.if.end63.i_crit_edge ], [ %or62.i, %if.then61.i ]
  %49 = ptrtoint ptr %registry_jumbo_packet.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %registry_jumbo_packet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %50)
  %cmp66.i = icmp ugt i32 %50, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %mcif_ctrl_max_seg.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 34
  br i1 %cmp66.i, label %do.body69.i, label %do.body73.i

do.body69.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcif_ctrl_max_seg.i, i32 1090519040) #15, !srcloc !289
  br label %do.body78.i

do.body73.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcif_ctrl_max_seg.i, i32 0) #15, !srcloc !289
  br label %do.body78.i

do.body78.i:                                      ; preds = %do.body73.i, %do.body69.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !333
  tail call void @arm_heavy_mb() #15
  %mcif_water_mark.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcif_water_mark.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @arm_heavy_mb() #15
  %mif_ctrl.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mif_ctrl.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !335
  tail call void @arm_heavy_mb() #15
  %space_avail.i = getelementptr inbounds %struct.address_map, ptr %26, i32 0, i32 8, i32 37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %space_avail.i, i32 0) #15, !srcloc !289
  %tobool87.not.i = icmp eq ptr %30, null
  br i1 %tobool87.not.i, label %do.body78.i.do.body96.i_crit_edge, label %land.lhs.true.i

do.body78.i.do.body96.i_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body96.i

land.lhs.true.i:                                  ; preds = %do.body78.i
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %30, i32 0, i32 8
  %51 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %52)
  %cmp88.i = icmp eq i32 %52, 100
  br i1 %cmp88.i, label %do.body91.i, label %land.lhs.true.i.do.body96.i_crit_edge

land.lhs.true.i.do.body96.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body96.i

do.body91.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mif_ctrl.i, i32 939524864) #15, !srcloc !289
  br label %et1310_config_rxmac_regs.exit

do.body96.i:                                      ; preds = %land.lhs.true.i.do.body96.i_crit_edge, %do.body78.i.do.body96.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mif_ctrl.i, i32 805307136) #15, !srcloc !289
  br label %et1310_config_rxmac_regs.exit

et1310_config_rxmac_regs.exit:                    ; preds = %do.body96.i, %do.body91.i
  %or65.i = or i32 %pf_ctrl.1.i, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !338
  tail call void @arm_heavy_mb() #15
  %53 = tail call i32 @llvm.bswap.i32(i32 %or65.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pf_ctrl47.i, i32 %53) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !339
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac1.i, i32 150994944) #15, !srcloc !289
  %54 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs1.i, align 4
  %flow.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 19
  %56 = ptrtoint ptr %flow.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %cmp.i22 = icmp eq i8 %57, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %cf_param.i = getelementptr inbounds %struct.address_map, ptr %55, i32 0, i32 6, i32 4
  br i1 %cmp.i22, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %et1310_config_rxmac_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cf_param.i, i32 0) #15, !srcloc !289
  br label %et1310_config_txmac_regs.exit

do.body3.i:                                       ; preds = %et1310_config_rxmac_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cf_param.i, i32 1073741824) #15, !srcloc !289
  br label %et1310_config_txmac_regs.exit

et1310_config_txmac_regs.exit:                    ; preds = %do.body3.i, %do.body.i
  %58 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs1.i, align 4
  %rx_ring.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !340
  tail call void @arm_heavy_mb() #15
  %60 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs1.i, align 4
  %rxdma.i.i = getelementptr inbounds %struct.address_map, ptr %61, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxdma.i.i, i32 18874368) #15, !srcloc !289
  %62 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs1.i, align 4
  %rxdma3.i.i = getelementptr inbounds %struct.address_map, ptr %63, i32 0, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma3.i.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !341
  %65 = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %et1310_config_txmac_regs.exit.et131x_rx_dma_disable.exit.i_crit_edge

et1310_config_txmac_regs.exit.et131x_rx_dma_disable.exit.i_crit_edge: ; preds = %et1310_config_txmac_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_rx_dma_disable.exit.i

if.then.i.i:                                      ; preds = %et1310_config_txmac_regs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 1073740) #15
  %67 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs1.i, align 4
  %rxdma9.i.i = getelementptr inbounds %struct.address_map, ptr %68, i32 0, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma9.i.i) #15, !srcloc !300
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !342
  %and14.i.i = and i32 %70, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.end19.i.i, label %if.then.i.i.et131x_rx_dma_disable.exit.i_crit_edge

if.then.i.i.et131x_rx_dma_disable.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_rx_dma_disable.exit.i

do.end19.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %71 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.41, i32 noundef %70) #18
  br label %et131x_rx_dma_disable.exit.i

et131x_rx_dma_disable.exit.i:                     ; preds = %do.end19.i.i, %if.then.i.i.et131x_rx_dma_disable.exit.i_crit_edge, %et1310_config_txmac_regs.exit.et131x_rx_dma_disable.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !343
  tail call void @arm_heavy_mb() #15
  %rx_status_bus.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 6
  %dma_wb_base_hi.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_wb_base_hi.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !344
  tail call void @arm_heavy_mb() #15
  %73 = ptrtoint ptr %rx_status_bus.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_status_bus.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  %dma_wb_base_lo.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_wb_base_lo.i, i32 %75) #15, !srcloc !289
  %rx_status_block.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 5
  %76 = ptrtoint ptr %rx_status_block.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_status_block.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !345
  tail call void @arm_heavy_mb() #15
  %ps_ring_physaddr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 2
  %psr_base_hi.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_base_hi.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !346
  tail call void @arm_heavy_mb() #15
  %79 = ptrtoint ptr %ps_ring_physaddr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ps_ring_physaddr.i, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #15
  %psr_base_lo.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_base_lo.i, i32 %81) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !347
  tail call void @arm_heavy_mb() #15
  %psr_entries.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 4
  %82 = ptrtoint ptr %psr_entries.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %psr_entries.i, align 4
  %sub.i = add i32 %83, -1
  %84 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #15
  %psr_num_des20.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_num_des20.i, i32 %84) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !348
  tail call void @arm_heavy_mb() #15
  %psr_full_offset.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_full_offset.i, i32 0) #15, !srcloc !289
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_num_des20.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !349
  %86 = and i32 %85, -15794176
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !350
  tail call void @arm_heavy_mb() #15
  %mul.i = mul nuw nsw i32 %87, 15
  %div.i = udiv i32 %mul.i, 100
  %88 = tail call i32 @llvm.bswap.i32(i32 %div.i) #15
  %psr_min_des.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %psr_min_des.i, i32 %88) #15, !srcloc !289
  %rcv_lock.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 12
  %call34.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rcv_lock.i) #15
  %local_psr_full.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 3
  %89 = ptrtoint ptr %local_psr_full.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %local_psr_full.i, align 4
  %fbr0_num_des.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 17
  %fbr0_full_offset.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 19
  %fbr0_min_des.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 21
  %fbr0_base_hi.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 16
  %fbr0_base_lo.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 15
  %90 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_ring.i, align 4
  %num_entries.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp47135.not.i = icmp eq i32 %93, 0
  br i1 %cmp47135.not.i, label %et131x_rx_dma_disable.exit.i.do.body52.i_crit_edge, label %for.body49.preheader.i

et131x_rx_dma_disable.exit.i.do.body52.i_crit_edge: ; preds = %et131x_rx_dma_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52.i

for.body49.preheader.i:                           ; preds = %et131x_rx_dma_disable.exit.i
  %ring_virtaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %ring_virtaddr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ring_virtaddr.i, align 4
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.body49.i.for.body49.i_crit_edge, %for.body49.preheader.i
  %fbr_entry.0137.i = phi ptr [ %incdec.ptr.i25, %for.body49.i.for.body49.i_crit_edge ], [ %95, %for.body49.preheader.i ]
  %entry1.0136.i = phi i32 [ %inc.i, %for.body49.i.for.body49.i_crit_edge ], [ 0, %for.body49.preheader.i ]
  %arrayidx50.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 1, i32 %entry1.0136.i
  %96 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx50.i, align 4
  %addr_hi.i = getelementptr inbounds %struct.fbr_desc, ptr %fbr_entry.0137.i, i32 0, i32 1
  %98 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %addr_hi.i, align 4
  %arrayidx51.i = getelementptr %struct.fbr_lookup, ptr %91, i32 0, i32 2, i32 %entry1.0136.i
  %99 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx51.i, align 4
  %101 = ptrtoint ptr %fbr_entry.0137.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %fbr_entry.0137.i, align 4
  %word2.i = getelementptr inbounds %struct.fbr_desc, ptr %fbr_entry.0137.i, i32 0, i32 2
  %102 = ptrtoint ptr %word2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %entry1.0136.i, ptr %word2.i, align 4
  %incdec.ptr.i25 = getelementptr %struct.fbr_desc, ptr %fbr_entry.0137.i, i32 1
  %inc.i = add nuw i32 %entry1.0136.i, 1
  %103 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_entries.i, align 4
  %cmp47.i = icmp ult i32 %inc.i, %104
  br i1 %cmp47.i, label %for.body49.i.for.body49.i_crit_edge, label %for.body49.i.do.body52.i_crit_edge

for.body49.i.do.body52.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body52.i

for.body49.i.for.body49.i_crit_edge:              ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49.i

do.body52.i:                                      ; preds = %for.body49.i.do.body52.i_crit_edge, %et131x_rx_dma_disable.exit.i.do.body52.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !351
  tail call void @arm_heavy_mb() #15
  %ring_physaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr0_base_hi.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !352
  tail call void @arm_heavy_mb() #15
  %105 = ptrtoint ptr %ring_physaddr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ring_physaddr.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr0_base_lo.i, i32 %107) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !353
  tail call void @arm_heavy_mb() #15
  %108 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_entries.i, align 4
  %sub66.i = add i32 %109, -1
  %110 = tail call i32 @llvm.bswap.i32(i32 %sub66.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr0_num_des.i, i32 %110) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !354
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr0_full_offset.i, i32 262144) #15, !srcloc !289
  %local_full.i = getelementptr inbounds %struct.fbr_lookup, ptr %91, i32 0, i32 7
  %111 = ptrtoint ptr %local_full.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1024, ptr %local_full.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !355
  tail call void @arm_heavy_mb() #15
  %112 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %num_entries.i, align 4
  %mul74.i = mul i32 %113, 15
  %div75.i = udiv i32 %mul74.i, 100
  %sub76.i = add nsw i32 %div75.i, -1
  %114 = tail call i32 @llvm.bswap.i32(i32 %sub76.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr0_min_des.i, i32 %114) #15, !srcloc !289
  %arrayidx.1.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.1.i, align 4
  %num_entries.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_entries.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp47135.not.1.i = icmp eq i32 %118, 0
  br i1 %cmp47135.not.1.i, label %do.body52.i.et131x_config_rx_dma_regs.exit_crit_edge, label %for.body49.preheader.1.i

do.body52.i.et131x_config_rx_dma_regs.exit_crit_edge: ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_config_rx_dma_regs.exit

for.body49.preheader.1.i:                         ; preds = %do.body52.i
  %ring_virtaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %116, i32 0, i32 3
  %119 = ptrtoint ptr %ring_virtaddr.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ring_virtaddr.1.i, align 4
  br label %for.body49.1.i

for.body49.1.i:                                   ; preds = %for.body49.1.i.for.body49.1.i_crit_edge, %for.body49.preheader.1.i
  %fbr_entry.0137.1.i = phi ptr [ %incdec.ptr.1.i, %for.body49.1.i.for.body49.1.i_crit_edge ], [ %120, %for.body49.preheader.1.i ]
  %entry1.0136.1.i = phi i32 [ %inc.1.i, %for.body49.1.i.for.body49.1.i_crit_edge ], [ 0, %for.body49.preheader.1.i ]
  %arrayidx50.1.i = getelementptr %struct.fbr_lookup, ptr %116, i32 0, i32 1, i32 %entry1.0136.1.i
  %121 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx50.1.i, align 4
  %addr_hi.1.i = getelementptr inbounds %struct.fbr_desc, ptr %fbr_entry.0137.1.i, i32 0, i32 1
  %123 = ptrtoint ptr %addr_hi.1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %addr_hi.1.i, align 4
  %arrayidx51.1.i = getelementptr %struct.fbr_lookup, ptr %116, i32 0, i32 2, i32 %entry1.0136.1.i
  %124 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx51.1.i, align 4
  %126 = ptrtoint ptr %fbr_entry.0137.1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %fbr_entry.0137.1.i, align 4
  %word2.1.i = getelementptr inbounds %struct.fbr_desc, ptr %fbr_entry.0137.1.i, i32 0, i32 2
  %127 = ptrtoint ptr %word2.1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %entry1.0136.1.i, ptr %word2.1.i, align 4
  %incdec.ptr.1.i = getelementptr %struct.fbr_desc, ptr %fbr_entry.0137.1.i, i32 1
  %inc.1.i = add nuw i32 %entry1.0136.1.i, 1
  %128 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_entries.1.i, align 4
  %cmp47.1.i = icmp ult i32 %inc.1.i, %129
  br i1 %cmp47.1.i, label %for.body49.1.i.for.body49.1.i_crit_edge, label %for.body49.1.i.et131x_config_rx_dma_regs.exit_crit_edge

for.body49.1.i.et131x_config_rx_dma_regs.exit_crit_edge: ; preds = %for.body49.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_config_rx_dma_regs.exit

for.body49.1.i.for.body49.1.i_crit_edge:          ; preds = %for.body49.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49.1.i

et131x_config_rx_dma_regs.exit:                   ; preds = %for.body49.1.i.et131x_config_rx_dma_regs.exit_crit_edge, %do.body52.i.et131x_config_rx_dma_regs.exit_crit_edge
  %fbr1_base_lo.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 22
  %fbr1_base_hi.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 23
  %fbr1_min_des.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 28
  %fbr1_full_offset.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 26
  %fbr1_num_des.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !351
  tail call void @arm_heavy_mb() #15
  %ring_physaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %116, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr1_base_hi.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !352
  tail call void @arm_heavy_mb() #15
  %130 = ptrtoint ptr %ring_physaddr.1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ring_physaddr.1.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr1_base_lo.i, i32 %132) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !353
  tail call void @arm_heavy_mb() #15
  %133 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_entries.1.i, align 4
  %sub66.1.i = add i32 %134, -1
  %135 = tail call i32 @llvm.bswap.i32(i32 %sub66.1.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr1_num_des.i, i32 %135) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !354
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr1_full_offset.i, i32 262144) #15, !srcloc !289
  %local_full.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %116, i32 0, i32 7
  %136 = ptrtoint ptr %local_full.1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1024, ptr %local_full.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !355
  tail call void @arm_heavy_mb() #15
  %137 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_entries.1.i, align 4
  %mul74.1.i = mul i32 %138, 15
  %div75.1.i = udiv i32 %mul74.1.i, 100
  %sub76.1.i = add nsw i32 %div75.1.i, -1
  %139 = tail call i32 @llvm.bswap.i32(i32 %sub76.1.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fbr1_min_des.i, i32 %139) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !356
  tail call void @arm_heavy_mb() #15
  %num_pkt_done.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %num_pkt_done.i, i32 67108864) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !357
  tail call void @arm_heavy_mb() #15
  %max_pkt_time.i = getelementptr inbounds %struct.address_map, ptr %59, i32 0, i32 4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %max_pkt_time.i, i32 167772160) #15, !srcloc !289
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rcv_lock.i, i32 noundef %call34.i) #15
  %140 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !358
  tail call void @arm_heavy_mb() #15
  %tx_desc_ring_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 7
  %pr_base_hi.i = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pr_base_hi.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !359
  tail call void @arm_heavy_mb() #15
  %142 = ptrtoint ptr %tx_desc_ring_pa.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_desc_ring_pa.i, align 4
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #15
  %pr_base_lo.i = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pr_base_lo.i, i32 %144) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !360
  tail call void @arm_heavy_mb() #15
  %pr_num_des.i = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pr_num_des.i, i32 -16711680) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !361
  tail call void @arm_heavy_mb() #15
  %tx_status_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 10
  %dma_wb_base_hi.i27 = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_wb_base_hi.i27, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !362
  tail call void @arm_heavy_mb() #15
  %145 = ptrtoint ptr %tx_status_pa.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_status_pa.i, align 4
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #15
  %dma_wb_base_lo.i28 = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma_wb_base_lo.i28, i32 %147) #15, !srcloc !289
  %tx_status.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 9
  %148 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tx_status.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %149, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !363
  tail call void @arm_heavy_mb() #15
  %service_request.i = getelementptr inbounds %struct.address_map, ptr %141, i32 0, i32 2, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %service_request.i, i32 0) #15, !srcloc !289
  %send_idx.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 8
  %151 = ptrtoint ptr %send_idx.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %send_idx.i, align 4
  %152 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs1.i, align 4
  %txrx_0_64_byte_frames.i = getelementptr inbounds %struct.address_map, ptr %153, i32 0, i32 12, i32 1
  %carry_reg2.i = getelementptr inbounds %struct.address_map, ptr %153, i32 0, i32 12, i32 46
  br label %do.body.i32

do.body.i32:                                      ; preds = %do.body.i32.do.body.i32_crit_edge, %et131x_config_rx_dma_regs.exit
  %reg.013.i = phi ptr [ %txrx_0_64_byte_frames.i, %et131x_config_rx_dma_regs.exit ], [ %incdec.ptr.i30, %do.body.i32.do.body.i32_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !364
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.013.i, i32 0) #15, !srcloc !289
  %incdec.ptr.i30 = getelementptr i32, ptr %reg.013.i, i32 1
  %cmp.not.i31 = icmp ugt ptr %incdec.ptr.i30, %carry_reg2.i
  br i1 %cmp.not.i31, label %et1310_config_macstat_regs.exit, label %do.body.i32.do.body.i32_crit_edge

do.body.i32.do.body.i32_crit_edge:                ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i32

et1310_config_macstat_regs.exit:                  ; preds = %do.body.i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  tail call void @arm_heavy_mb() #15
  %carry_reg1_mask.i = getelementptr inbounds %struct.address_map, ptr %153, i32 0, i32 12, i32 47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %carry_reg1_mask.i, i32 851378175) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !366
  tail call void @arm_heavy_mb() #15
  %carry_reg2_mask.i = getelementptr inbounds %struct.address_map, ptr %153, i32 0, i32 12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %carry_reg2_mask.i, i32 -1954611457) #15, !srcloc !289
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #15
  %154 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -1, ptr %data.i, align 2, !annotation !286
  %155 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 145
  %157 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i.i33 = icmp eq ptr %158, null
  br i1 %tobool.not.i.i33, label %et1310_config_macstat_regs.exit.et1310_phy_power_switch.exit_crit_edge, label %if.end.i.i

et1310_config_macstat_regs.exit.et1310_phy_power_switch.exit_crit_edge: ; preds = %et1310_config_macstat_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et1310_phy_power_switch.exit

if.end.i.i:                                       ; preds = %et1310_config_macstat_regs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr.i.i, align 8
  %conv.i.i = trunc i32 %160 to i8
  %call.i.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %adapter, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #15
  br label %et1310_phy_power_switch.exit

et1310_phy_power_switch.exit:                     ; preds = %if.end.i.i, %et1310_config_macstat_regs.exit.et1310_phy_power_switch.exit_crit_edge
  %161 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %data.i, align 2
  %163 = and i16 %162, -2049
  %addr.i34 = getelementptr inbounds %struct.mdio_device, ptr %158, i32 0, i32 6
  %164 = ptrtoint ptr %addr.i34 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %addr.i34, align 8
  %conv5.i = trunc i32 %165 to i8
  %call6.i = tail call fastcc i32 @et131x_mii_write(ptr noundef %adapter, i8 noundef zeroext %conv5.i, i8 noundef zeroext 0, i16 noundef zeroext %163) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lcr2.i) #15
  %166 = ptrtoint ptr %lcr2.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 -1, ptr %lcr2.i, align 2, !annotation !286
  %167 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %adapter, align 8
  %phydev1.i35 = getelementptr inbounds %struct.net_device, ptr %168, i32 0, i32 145
  %169 = ptrtoint ptr %phydev1.i35 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %phydev1.i35, align 16
  %arrayidx.i36 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %171 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i36, align 1
  %173 = and i8 %172, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp.i37 = icmp eq i8 %173, 0
  br i1 %cmp.i37, label %if.then.i39, label %et1310_phy_power_switch.exit.et131x_xcvr_init.exit_crit_edge

et1310_phy_power_switch.exit.et131x_xcvr_init.exit_crit_edge: ; preds = %et1310_phy_power_switch.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_xcvr_init.exit

if.then.i39:                                      ; preds = %et1310_phy_power_switch.exit
  %tobool.not.i.i38 = icmp eq ptr %170, null
  br i1 %tobool.not.i.i38, label %if.then.i39.et131x_mii_read.exit.i_crit_edge, label %if.end.i.i43

if.then.i39.et131x_mii_read.exit.i_crit_edge:     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit.i

if.end.i.i43:                                     ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i.i40 = getelementptr inbounds %struct.mdio_device, ptr %170, i32 0, i32 6
  %174 = ptrtoint ptr %addr.i.i40 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %addr.i.i40, align 8
  %conv.i.i41 = trunc i32 %175 to i8
  %call.i.i42 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %adapter, i8 noundef zeroext %conv.i.i41, i8 noundef zeroext 28, ptr noundef nonnull %lcr2.i) #15
  br label %et131x_mii_read.exit.i

et131x_mii_read.exit.i:                           ; preds = %if.end.i.i43, %if.then.i39.et131x_mii_read.exit.i_crit_edge
  %176 = ptrtoint ptr %lcr2.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %lcr2.i, align 2
  %178 = and i16 %177, 255
  %179 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i36, align 1
  %181 = and i8 %180, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp12.i44 = icmp eq i8 %181, 0
  %storemerge.v.i = select i1 %cmp12.i44, i16 -23808, i16 -23552
  %storemerge.i = or i16 %storemerge.v.i, %178
  %addr.i45 = getelementptr inbounds %struct.mdio_device, ptr %170, i32 0, i32 6
  %182 = ptrtoint ptr %addr.i45 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %addr.i45, align 8
  %conv21.i46 = trunc i32 %183 to i8
  %call22.i = tail call fastcc i32 @et131x_mii_write(ptr noundef %adapter, i8 noundef zeroext %conv21.i46, i8 noundef zeroext 28, i16 noundef zeroext %storemerge.i) #15
  br label %et131x_xcvr_init.exit

et131x_xcvr_init.exit:                            ; preds = %et131x_mii_read.exit.i, %et1310_phy_power_switch.exit.et131x_xcvr_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lcr2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et1310_disable_phy_coma(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %pm_csr = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %3 = and i32 %2, -2013265921
  %4 = or i32 %3, 939524096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !368
  tail call void @arm_heavy_mb() #15
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %pm_csr4 = getelementptr inbounds %struct.global_regs, ptr %6, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm_csr4, i32 %4) #15, !srcloc !289
  %tx_ring1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22
  %7 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring1.i, align 4
  %tcb_qhead.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 1
  %9 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tcb_qhead.i, align 4
  %10 = call ptr @memset(ptr %8, i32 0, i32 1536)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %tcb.017.i = phi ptr [ %8, %entry ], [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.tcb, ptr %tcb.017.i, i32 1
  %11 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %tcb.017.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %et131x_init_send.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

et131x_init_send.exit:                            ; preds = %for.body.i
  %tcb_qtail.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 2
  %12 = ptrtoint ptr %tcb_qtail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tcb.017.i, ptr %tcb_qtail.i, align 4
  %13 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tcb.017.i, align 4
  %send_head.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %send_head.i, align 4
  %send_tail.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 4
  %15 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %send_tail.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %mac.i = getelementptr inbounds %struct.address_map, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 4032) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %sw_reset.i = getelementptr inbounds %struct.global_regs, ptr %19, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_reset.i, i32 2130706432) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %mac9.i = getelementptr inbounds %struct.address_map, ptr %21, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac9.i, i32 3840) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %mac15.i = getelementptr inbounds %struct.address_map, ptr %23, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac15.i, i32 0) #15, !srcloc !289
  tail call fastcc void @et131x_adapter_setup(ptr noundef %adapter)
  %flags = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and5 = and i32 %25, -2097153
  store i32 %and5, ptr %flags, align 8
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 2304
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %regs.i.i = getelementptr i8, ptr %27, i32 3476
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %txdma.i.i = getelementptr inbounds %struct.address_map, ptr %29, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i.i, i32 65536) #15, !srcloc !289
  %flags.i = getelementptr i8, ptr %27, i32 2544
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge, label %if.then.i

et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge: ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_enable_txrx.exit

if.then.i:                                        ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i.i = getelementptr i8, ptr %27, i32 3488
  %32 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch.i.i = icmp ult i8 %33, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %34 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %int_mask.i.i = getelementptr inbounds %struct.global_regs, ptr %36, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i.i, i32 %34) #15, !srcloc !289
  br label %et131x_enable_txrx.exit

et131x_enable_txrx.exit:                          ; preds = %if.then.i, %et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_adapter_memory_free(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_desc_ring.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 6
  %0 = ptrtoint ptr %tx_desc_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_desc_ring.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %tx_desc_ring_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %tx_desc_ring_pa.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_desc_ring_pa.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 8192, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #15
  %6 = ptrtoint ptr %tx_desc_ring.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_desc_ring.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %tx_status.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 9
  %7 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_status.i, align 4
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.end.i.et131x_tx_dma_memory_free.exit_crit_edge, label %if.then5.i

if.end.i.et131x_tx_dma_memory_free.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_tx_dma_memory_free.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev6.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %9 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev6.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %tx_status_pa.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 10
  %11 = ptrtoint ptr %tx_status_pa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_status_pa.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef 4, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #15
  %13 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tx_status.i, align 4
  br label %et131x_tx_dma_memory_free.exit

et131x_tx_dma_memory_free.exit:                   ; preds = %if.then5.i, %if.end.i.et131x_tx_dma_memory_free.exit_crit_edge
  %tx_ring1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22
  %14 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring1.i, align 4
  tail call void @kfree(ptr noundef %15) #15
  %rx_ring1.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23
  %num_ready_recv.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 8
  %16 = ptrtoint ptr %num_ready_recv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ready_recv.i, align 4
  %num_rfd.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 9
  %18 = ptrtoint ptr %num_rfd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_rfd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i = icmp eq i32 %17, %19
  br i1 %cmp.not.i, label %et131x_tx_dma_memory_free.exit.if.end.i2_crit_edge, label %do.end.i, !prof !295

et131x_tx_dma_memory_free.exit.if.end.i2_crit_edge: ; preds = %et131x_tx_dma_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i2

do.end.i:                                         ; preds = %et131x_tx_dma_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2013, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i2

if.end.i2:                                        ; preds = %do.end.i, %et131x_tx_dma_memory_free.exit.if.end.i2_crit_edge
  %recv_list.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 7
  %20 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %recv_list.i, align 4
  %cmp.i.not120.i = icmp eq ptr %21, %recv_list.i
  br i1 %cmp.i.not120.i, label %if.end.i2.for.cond.preheader.i_crit_edge, label %if.end.i2.while.body.i_crit_edge

if.end.i2.while.body.i_crit_edge:                 ; preds = %if.end.i2
  br label %while.body.i

if.end.i2.for.cond.preheader.i_crit_edge:         ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %list_del.exit.i.for.cond.preheader.i_crit_edge, %if.end.i2.for.cond.preheader.i_crit_edge
  %pdev.i3 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %22 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring1.i, align 4
  %tobool28.not.i = icmp eq ptr %23, null
  br i1 %tobool28.not.i, label %for.cond.preheader.i.for.inc51.i_crit_edge, label %lor.lhs.false.i

for.cond.preheader.i.for.inc51.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.i2.while.body.i_crit_edge
  %24 = phi ptr [ %35, %list_del.exit.i.while.body.i_crit_edge ], [ %21, %if.end.i2.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr inbounds %struct.rfd, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %skb.i, align 4
  tail call void @kfree(ptr noundef %24) #15
  %34 = ptrtoint ptr %recv_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %recv_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %recv_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.for.cond.preheader.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

list_del.exit.i.for.cond.preheader.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i

lor.lhs.false.i:                                  ; preds = %for.cond.preheader.i
  %ring_virtaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %23, i32 0, i32 3
  %36 = ptrtoint ptr %ring_virtaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring_virtaddr.i, align 4
  %tobool29.not.i = icmp eq ptr %37, null
  br i1 %tobool29.not.i, label %lor.lhs.false.i.for.inc51.i_crit_edge, label %for.cond32.preheader.i

lor.lhs.false.i.for.inc51.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.i

for.cond32.preheader.i:                           ; preds = %lor.lhs.false.i
  %num_entries.i = getelementptr inbounds %struct.fbr_lookup, ptr %23, i32 0, i32 8
  %38 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %39)
  %cmp33122.not.i = icmp ult i32 %39, 32
  br i1 %cmp33122.not.i, label %for.cond32.preheader.i.for.end.i_crit_edge, label %for.body35.lr.ph.i

for.cond32.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body35.lr.ph.i:                               ; preds = %for.cond32.preheader.i
  %buffsize.i = getelementptr inbounds %struct.fbr_lookup, ptr %23, i32 0, i32 9
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.inc.i.for.body35.i_crit_edge, %for.body35.lr.ph.i
  %ii.0123.i = phi i32 [ 0, %for.body35.lr.ph.i ], [ %inc.i, %for.inc.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.fbr_lookup, ptr %23, i32 0, i32 5, i32 %ii.0123.i
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %41, null
  br i1 %tobool37.not.i, label %for.body35.i.for.inc.i_crit_edge, label %if.then38.i

for.body35.i.for.inc.i_crit_edge:                 ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then38.i:                                      ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffsize.i, align 4
  %mul.i = shl i32 %43, 5
  %44 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i3, align 4
  %dev.i4 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %arrayidx41.i = getelementptr %struct.fbr_lookup, ptr %23, i32 0, i32 6, i32 %ii.0123.i
  %46 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx41.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i4, i32 noundef %mul.i, ptr noundef nonnull %41, i32 noundef %47, i32 noundef 0) #15
  %48 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx36.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %for.body35.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %ii.0123.i, 1
  %49 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_entries.i, align 4
  %div119.i = lshr i32 %50, 5
  %cmp33.i = icmp ult i32 %inc.i, %div119.i
  br i1 %cmp33.i, label %for.inc.i.for.body35.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body35.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body35.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond32.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %39, %for.cond32.preheader.i.for.end.i_crit_edge ], [ %50, %for.inc.i.for.end.i_crit_edge ]
  %mul46.i = mul i32 %.lcssa.i, 12
  %51 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i3, align 4
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %ring_virtaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring_virtaddr.i, align 4
  %ring_physaddr.i = getelementptr inbounds %struct.fbr_lookup, ptr %23, i32 0, i32 4
  %55 = ptrtoint ptr %ring_physaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ring_physaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev48.i, i32 noundef %mul46.i, ptr noundef %54, i32 noundef %56, i32 noundef 0) #15
  %57 = ptrtoint ptr %ring_virtaddr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ring_virtaddr.i, align 4
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %for.end.i, %lor.lhs.false.i.for.inc51.i_crit_edge, %for.cond.preheader.i.for.inc51.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool28.not.1.i = icmp eq ptr %59, null
  br i1 %tobool28.not.1.i, label %for.inc51.i.for.inc51.1.i_crit_edge, label %lor.lhs.false.1.i

for.inc51.i.for.inc51.1.i_crit_edge:              ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc51.i
  %ring_virtaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %ring_virtaddr.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring_virtaddr.1.i, align 4
  %tobool29.not.1.i = icmp eq ptr %61, null
  br i1 %tobool29.not.1.i, label %lor.lhs.false.1.i.for.inc51.1.i_crit_edge, label %for.cond32.preheader.1.i

lor.lhs.false.1.i.for.inc51.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.1.i

for.cond32.preheader.1.i:                         ; preds = %lor.lhs.false.1.i
  %num_entries.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 8
  %62 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_entries.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %63)
  %cmp33122.not.1.i = icmp ult i32 %63, 32
  br i1 %cmp33122.not.1.i, label %for.cond32.preheader.1.i.for.end.1.i_crit_edge, label %for.body35.lr.ph.1.i

for.cond32.preheader.1.i.for.end.1.i_crit_edge:   ; preds = %for.cond32.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.1.i

for.body35.lr.ph.1.i:                             ; preds = %for.cond32.preheader.1.i
  %buffsize.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 9
  br label %for.body35.1.i

for.body35.1.i:                                   ; preds = %for.inc.1.i.for.body35.1.i_crit_edge, %for.body35.lr.ph.1.i
  %ii.0123.1.i = phi i32 [ 0, %for.body35.lr.ph.1.i ], [ %inc.1.i, %for.inc.1.i.for.body35.1.i_crit_edge ]
  %arrayidx36.1.i = getelementptr %struct.fbr_lookup, ptr %59, i32 0, i32 5, i32 %ii.0123.1.i
  %64 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx36.1.i, align 4
  %tobool37.not.1.i = icmp eq ptr %65, null
  br i1 %tobool37.not.1.i, label %for.body35.1.i.for.inc.1.i_crit_edge, label %if.then38.1.i

for.body35.1.i.for.inc.1.i_crit_edge:             ; preds = %for.body35.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.then38.1.i:                                    ; preds = %for.body35.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %buffsize.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffsize.1.i, align 4
  %mul.1.i = shl i32 %67, 5
  %68 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i3, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %arrayidx41.1.i = getelementptr %struct.fbr_lookup, ptr %59, i32 0, i32 6, i32 %ii.0123.1.i
  %70 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx41.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1.i, i32 noundef %mul.1.i, ptr noundef nonnull %65, i32 noundef %71, i32 noundef 0) #15
  %72 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx36.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then38.1.i, %for.body35.1.i.for.inc.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %ii.0123.1.i, 1
  %73 = ptrtoint ptr %num_entries.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_entries.1.i, align 4
  %div119.1.i = lshr i32 %74, 5
  %cmp33.1.i = icmp ult i32 %inc.1.i, %div119.1.i
  br i1 %cmp33.1.i, label %for.inc.1.i.for.body35.1.i_crit_edge, label %for.inc.1.i.for.end.1.i_crit_edge

for.inc.1.i.for.end.1.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.1.i

for.inc.1.i.for.body35.1.i_crit_edge:             ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body35.1.i

for.end.1.i:                                      ; preds = %for.inc.1.i.for.end.1.i_crit_edge, %for.cond32.preheader.1.i.for.end.1.i_crit_edge
  %.lcssa.1.i = phi i32 [ %63, %for.cond32.preheader.1.i.for.end.1.i_crit_edge ], [ %74, %for.inc.1.i.for.end.1.i_crit_edge ]
  %mul46.1.i = mul i32 %.lcssa.1.i, 12
  %75 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev.i3, align 4
  %dev48.1.i = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  %77 = ptrtoint ptr %ring_virtaddr.1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ring_virtaddr.1.i, align 4
  %ring_physaddr.1.i = getelementptr inbounds %struct.fbr_lookup, ptr %59, i32 0, i32 4
  %79 = ptrtoint ptr %ring_physaddr.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ring_physaddr.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev48.1.i, i32 noundef %mul46.1.i, ptr noundef %78, i32 noundef %80, i32 noundef 0) #15
  %81 = ptrtoint ptr %ring_virtaddr.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %ring_virtaddr.1.i, align 4
  br label %for.inc51.1.i

for.inc51.1.i:                                    ; preds = %for.end.1.i, %lor.lhs.false.1.i.for.inc51.1.i_crit_edge, %for.inc51.i.for.inc51.1.i_crit_edge
  %ps_ring_virtaddr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 1
  %82 = ptrtoint ptr %ps_ring_virtaddr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ps_ring_virtaddr.i, align 4
  %tobool54.not.i = icmp eq ptr %83, null
  br i1 %tobool54.not.i, label %for.inc51.1.i.if.end61.i_crit_edge, label %if.then55.i

for.inc51.1.i.if.end61.i_crit_edge:               ; preds = %for.inc51.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61.i

if.then55.i:                                      ; preds = %for.inc51.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %psr_entries.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 4
  %84 = ptrtoint ptr %psr_entries.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %psr_entries.i, align 4
  %mul56.i = shl i32 %85, 3
  %86 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i3, align 4
  %dev58.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %ps_ring_physaddr.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 2
  %88 = ptrtoint ptr %ps_ring_physaddr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ps_ring_physaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev58.i, i32 noundef %mul56.i, ptr noundef nonnull %83, i32 noundef %89, i32 noundef 0) #15
  %90 = ptrtoint ptr %ps_ring_virtaddr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %ps_ring_virtaddr.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then55.i, %for.inc51.1.i.if.end61.i_crit_edge
  %rx_status_block.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 5
  %91 = ptrtoint ptr %rx_status_block.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rx_status_block.i, align 4
  %tobool62.not.i = icmp eq ptr %92, null
  br i1 %tobool62.not.i, label %if.end61.i.et131x_rx_dma_memory_free.exit_crit_edge, label %if.then63.i

if.end61.i.et131x_rx_dma_memory_free.exit_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_rx_dma_memory_free.exit

if.then63.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %pdev.i3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i3, align 4
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %rx_status_bus.i = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 6
  %95 = ptrtoint ptr %rx_status_bus.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_status_bus.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev65.i, i32 noundef 8, ptr noundef nonnull %92, i32 noundef %96, i32 noundef 0) #15
  %97 = ptrtoint ptr %rx_status_block.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %rx_status_block.i, align 4
  br label %et131x_rx_dma_memory_free.exit

et131x_rx_dma_memory_free.exit:                   ; preds = %if.then63.i, %if.end61.i.et131x_rx_dma_memory_free.exit_crit_edge
  %98 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_ring1.i, align 4
  tail call void @kfree(ptr noundef %99) #15
  %100 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %101) #15
  %102 = ptrtoint ptr %num_ready_recv.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %num_ready_recv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq2, align 4
  %error_timer = getelementptr i8, ptr %netdev, i32 3492
  tail call void @init_timer_key(ptr noundef %error_timer, ptr noundef nonnull @et131x_error_timer_handler, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @et131x_open.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %expires = getelementptr i8, ptr %netdev, i32 3500
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %error_timer) #15
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @et131x_isr, ptr noundef null, i32 noundef 128, ptr noundef %netdev, ptr noundef %netdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end9

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %3) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr i8, ptr %netdev, i32 2544
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %or = or i32 %7, 8
  store i32 %or, ptr %flags, align 8
  %napi = getelementptr i8, ptr %netdev, i32 2320
  tail call void @napi_enable(ptr noundef %napi) #15
  tail call fastcc void @et131x_up(ptr noundef %netdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i.i.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i.i.i, label %entry.et131x_down.exit_crit_edge, label %do.body5.i.i.i

entry.et131x_down.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_down.exit

do.body5.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %2, ptr %trans_start.i.i.i, align 16
  br label %et131x_down.exit

et131x_down.exit:                                 ; preds = %do.body5.i.i.i, %entry.et131x_down.exit_crit_edge
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %7) #15
  tail call fastcc void @et131x_disable_txrx(ptr noundef %netdev) #15
  %napi = getelementptr i8, ptr %netdev, i32 2320
  tail call void @napi_disable(ptr noundef %napi) #15
  %flags = getelementptr i8, ptr %netdev, i32 2544
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, -9
  store i32 %and, ptr %flags, align 8
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %netdev) #15
  %error_timer = getelementptr i8, ptr %netdev, i32 3492
  %call2 = tail call i32 @del_timer_sync(ptr noundef %error_timer) #15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_tx(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %desc.i.i = alloca [24 x %struct.tx_desc], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %used = getelementptr i8, ptr %netdev, i32 3564
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %1)
  %cmp = icmp sgt i32 %1, 62
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %_tx.i.i27 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i27, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %if.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end.netif_trans_update.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end.netif_trans_update.exit_crit_edge
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %13)
  %cmp4 = icmp sgt i32 %13, 63
  br i1 %cmp4, label %netif_trans_update.exit.drop_err_crit_edge, label %if.end6

netif_trans_update.exit.drop_err_crit_edge:       ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_err

if.end6:                                          ; preds = %netif_trans_update.exit
  %flags = getelementptr i8, ptr %netdev, i32 2544
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 1072693248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end6.drop_err_crit_edge

if.end6.drop_err_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_err

lor.lhs.false:                                    ; preds = %if.end6
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end9, label %lor.lhs.false.drop_err_crit_edge

lor.lhs.false.drop_err_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_err

if.end9:                                          ; preds = %lor.lhs.false
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp.i = icmp ult i32 %20, 14
  br i1 %cmp.i, label %if.end9.drop_err_crit_edge, label %do.body2.i

if.end9.drop_err_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_err

do.body2.i:                                       ; preds = %if.end9
  %tcb_ready_qlock.i = getelementptr i8, ptr %netdev, i32 2612
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_ready_qlock.i) #15
  %tcb_qhead.i = getelementptr i8, ptr %netdev, i32 3548
  %21 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcb_qhead.i, align 4
  %cmp7.i = icmp eq ptr %22, null
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_ready_qlock.i, i32 noundef %call4.i) #15
  br label %drop_err

if.end11.i:                                       ; preds = %do.body2.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %tcb_qhead.i, align 4
  %cmp14.i = icmp eq ptr %24, null
  br i1 %cmp14.i, label %if.then16.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %tcb_qtail.i = getelementptr i8, ptr %netdev, i32 3552
  %26 = ptrtoint ptr %tcb_qtail.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tcb_qtail.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end11.i.if.end17.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_ready_qlock.i, i32 noundef %call4.i) #15
  %skb19.i = getelementptr inbounds %struct.tcb, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %skb19.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb, ptr %skb19.i, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %desc.i.i) #15
  %29 = call ptr @memset(ptr %desc.i.i, i32 255, i32 384)
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %30 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nr_frags2.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags2.i.i, align 2
  %conv.i.i = zext i8 %33 to i32
  %frags4.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 12
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %phydev5.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 145
  %36 = ptrtoint ptr %phydev5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phydev5.i.i, align 16
  %add7.i.i = shl nuw nsw i32 %conv.i.i, 4
  %mul.i.i = add nuw nsw i32 %add7.i.i, 32
  %38 = call ptr @memset(ptr %desc.i.i, i32 0, i32 %mul.i.i)
  %pdev64.i.i = getelementptr i8, ptr %netdev, i32 2308
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data27.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end17.i
  %i.071.i.i = phi i32 [ 0, %if.end17.i ], [ %inc80.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %frag.070.i.i = phi i32 [ 0, %if.end17.i ], [ %frag.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.071.i.i)
  %cmp9.i.i = icmp eq i32 %i.071.i.i, 0
  br i1 %cmp9.i.i, label %if.then.i.i, label %if.else59.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %41 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %40, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1515, i32 %sub.i.i.i)
  %cmp12.i.i = icmp ult i32 %sub.i.i.i, 1515
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.then.i.i
  %arrayidx16.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i
  %len_vlan.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i, i32 2
  %43 = ptrtoint ptr %len_vlan.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i.i.i, ptr %len_vlan.i.i, align 4
  %44 = ptrtoint ptr %pdev64.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev64.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %data27.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data27.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %47) #15
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then14.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.i, !prof !295

land.rhs.i.i.i.for.inc.i.i_crit_edge:             ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #15
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %51, %if.end.i.i.i.i ], [ %49, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #15
  br label %for.inc.i.i

if.end39.i.i.i:                                   ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %47, i32 noundef %sub.i.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %47 to i32
  %sub.i13.i.i = add i32 %53, 1073741824
  %shr.i.i.i = lshr i32 %sub.i13.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %52, i32 %shr.i.i.i
  %and.i.i.i = and i32 %53, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #15
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %div1.i.i = lshr i32 %sub.i.i.i, 1
  %arrayidx23.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i
  %len_vlan24.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i, i32 2
  %54 = ptrtoint ptr %len_vlan24.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div1.i.i, ptr %len_vlan24.i.i, align 4
  %55 = ptrtoint ptr %pdev64.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev64.i.i, align 4
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %data27.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data27.i.i, align 4
  %call.i20.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %58) #15
  br i1 %call.i20.i.i, label %land.rhs.i22.i.i, label %if.end39.i35.i.i

land.rhs.i22.i.i:                                 ; preds = %if.else.i.i
  %.b1.i21.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i21.i.i, label %land.rhs.i22.i.i.dma_map_single_attrs.exit37.i.i_crit_edge, label %if.then.i26.i.i, !prof !295

land.rhs.i22.i.i.dma_map_single_attrs.exit37.i.i_crit_edge: ; preds = %land.rhs.i22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit37.i.i

if.then.i26.i.i:                                  ; preds = %land.rhs.i22.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i23.i.i = tail call ptr @dev_driver_string(ptr noundef %dev26.i.i) #15
  %init_name.i.i24.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44, i32 3
  %59 = ptrtoint ptr %init_name.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i24.i.i, align 8
  %tobool.not.i.i25.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i25.i.i, label %if.end.i.i27.i.i, label %if.then.i26.i.i.dev_name.exit.i29.i.i_crit_edge

if.then.i26.i.i.dev_name.exit.i29.i.i_crit_edge:  ; preds = %if.then.i26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i29.i.i

if.end.i.i27.i.i:                                 ; preds = %if.then.i26.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %dev26.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev26.i.i, align 4
  br label %dev_name.exit.i29.i.i

dev_name.exit.i29.i.i:                            ; preds = %if.end.i.i27.i.i, %if.then.i26.i.i.dev_name.exit.i29.i.i_crit_edge
  %retval.0.i.i28.i.i = phi ptr [ %62, %if.end.i.i27.i.i ], [ %60, %if.then.i26.i.i.dev_name.exit.i29.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i23.i.i, ptr noundef %retval.0.i.i28.i.i) #15
  br label %dma_map_single_attrs.exit37.i.i

if.end39.i35.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev26.i.i, ptr noundef %58, i32 noundef %div1.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %58 to i32
  %sub.i30.i.i = add i32 %64, 1073741824
  %shr.i31.i.i = lshr i32 %sub.i30.i.i, 12
  %add.ptr.i32.i.i = getelementptr %struct.page, ptr %63, i32 %shr.i31.i.i
  %and.i33.i.i = and i32 %64, 4095
  %call41.i34.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev26.i.i, ptr noundef %add.ptr.i32.i.i, i32 noundef %and.i33.i.i, i32 noundef %div1.i.i, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit37.i.i

dma_map_single_attrs.exit37.i.i:                  ; preds = %if.end39.i35.i.i, %dev_name.exit.i29.i.i, %land.rhs.i22.i.i.dma_map_single_attrs.exit37.i.i_crit_edge
  %retval.0.i36.i.i = phi i32 [ %call41.i34.i.i, %if.end39.i35.i.i ], [ -1, %dev_name.exit.i29.i.i ], [ -1, %land.rhs.i22.i.i.dma_map_single_attrs.exit37.i.i_crit_edge ]
  %addr_lo33.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i, i32 1
  %65 = ptrtoint ptr %addr_lo33.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i36.i.i, ptr %addr_lo33.i.i, align 4
  %66 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx23.i.i, align 4
  %inc38.i.i = add i32 %frag.070.i.i, 1
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i, align 4
  %69 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i40.i.i = sub i32 %68, %70
  %div403.i.i = lshr i32 %sub.i40.i.i, 1
  %arrayidx41.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %inc38.i.i
  %len_vlan42.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %inc38.i.i, i32 2
  %71 = ptrtoint ptr %len_vlan42.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div403.i.i, ptr %len_vlan42.i.i, align 4
  %72 = ptrtoint ptr %pdev64.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev64.i.i, align 4
  %dev44.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %data27.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data27.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 %div403.i.i
  %call.i47.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i) #15
  br i1 %call.i47.i.i, label %land.rhs.i49.i.i, label %if.end39.i62.i.i

land.rhs.i49.i.i:                                 ; preds = %dma_map_single_attrs.exit37.i.i
  %.b1.i48.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i48.i.i, label %land.rhs.i49.i.i.for.inc.i.i_crit_edge, label %if.then.i53.i.i, !prof !295

land.rhs.i49.i.i.for.inc.i.i_crit_edge:           ; preds = %land.rhs.i49.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then.i53.i.i:                                  ; preds = %land.rhs.i49.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i50.i.i = tail call ptr @dev_driver_string(ptr noundef %dev44.i.i) #15
  %init_name.i.i51.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44, i32 3
  %76 = ptrtoint ptr %init_name.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i51.i.i, align 8
  %tobool.not.i.i52.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i52.i.i, label %if.end.i.i54.i.i, label %if.then.i53.i.i.dev_name.exit.i56.i.i_crit_edge

if.then.i53.i.i.dev_name.exit.i56.i.i_crit_edge:  ; preds = %if.then.i53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i56.i.i

if.end.i.i54.i.i:                                 ; preds = %if.then.i53.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %dev44.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev44.i.i, align 4
  br label %dev_name.exit.i56.i.i

dev_name.exit.i56.i.i:                            ; preds = %if.end.i.i54.i.i, %if.then.i53.i.i.dev_name.exit.i56.i.i_crit_edge
  %retval.0.i.i55.i.i = phi ptr [ %79, %if.end.i.i54.i.i ], [ %77, %if.then.i53.i.i.dev_name.exit.i56.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i50.i.i, ptr noundef %retval.0.i.i55.i.i) #15
  br label %for.inc.i.i

if.end39.i62.i.i:                                 ; preds = %dma_map_single_attrs.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev44.i.i, ptr noundef %add.ptr.i.i, i32 noundef %div403.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.i57.i.i = add i32 %81, 1073741824
  %shr.i58.i.i = lshr i32 %sub.i57.i.i, 12
  %add.ptr.i59.i.i = getelementptr %struct.page, ptr %80, i32 %shr.i58.i.i
  %and.i60.i.i = and i32 %81, 4095
  %call41.i61.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev44.i.i, ptr noundef %add.ptr.i59.i.i, i32 noundef %and.i60.i.i, i32 noundef %div403.i.i, i32 noundef 1, i32 noundef 0) #15
  br label %for.inc.i.i

if.else59.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add nsw i32 %i.071.i.i, -1
  %arrayidx60.i.i = getelementptr %struct.bio_vec, ptr %frags4.i.i, i32 %sub.i.i
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %frags4.i.i, i32 %sub.i.i, i32 1
  %82 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bv_len.i.i.i, align 4
  %arrayidx62.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i
  %len_vlan63.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.i.i, i32 2
  %84 = ptrtoint ptr %len_vlan63.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %len_vlan63.i.i, align 4
  %85 = ptrtoint ptr %pdev64.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev64.i.i, align 4
  %dev65.i.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx60.i.i, align 4
  %bv_offset.i.i.i.i = getelementptr %struct.bio_vec, ptr %frags4.i.i, i32 %sub.i.i, i32 2
  %89 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev65.i.i, ptr noundef %88, i32 noundef %90, i32 noundef %83, i32 noundef 1, i32 noundef 0) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else59.i.i, %if.end39.i62.i.i, %dev_name.exit.i56.i.i, %land.rhs.i49.i.i.for.inc.i.i_crit_edge, %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.for.inc.i.i_crit_edge
  %frag.070.sink.i.i = phi i32 [ %frag.070.i.i, %if.else59.i.i ], [ %frag.070.i.i, %land.rhs.i.i.i.for.inc.i.i_crit_edge ], [ %frag.070.i.i, %dev_name.exit.i.i.i ], [ %frag.070.i.i, %if.end39.i.i.i ], [ %inc38.i.i, %land.rhs.i49.i.i.for.inc.i.i_crit_edge ], [ %inc38.i.i, %dev_name.exit.i56.i.i ], [ %inc38.i.i, %if.end39.i62.i.i ]
  %call2.i.sink.i.i = phi i32 [ %call2.i.i.i, %if.else59.i.i ], [ -1, %land.rhs.i.i.i.for.inc.i.i_crit_edge ], [ -1, %dev_name.exit.i.i.i ], [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %land.rhs.i49.i.i.for.inc.i.i_crit_edge ], [ -1, %dev_name.exit.i56.i.i ], [ %call41.i61.i.i, %if.end39.i62.i.i ]
  %arrayidx62.sink.i.i = phi ptr [ %arrayidx62.i.i, %if.else59.i.i ], [ %arrayidx16.i.i, %land.rhs.i.i.i.for.inc.i.i_crit_edge ], [ %arrayidx16.i.i, %dev_name.exit.i.i.i ], [ %arrayidx16.i.i, %if.end39.i.i.i ], [ %arrayidx41.i.i, %land.rhs.i49.i.i.for.inc.i.i_crit_edge ], [ %arrayidx41.i.i, %dev_name.exit.i56.i.i ], [ %arrayidx41.i.i, %if.end39.i62.i.i ]
  %addr_lo73.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.sink.i.i, i32 1
  %91 = ptrtoint ptr %addr_lo73.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call2.i.sink.i.i, ptr %addr_lo73.i.i, align 4
  %92 = ptrtoint ptr %arrayidx62.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx62.sink.i.i, align 4
  %frag.1.i.i = add i32 %frag.070.sink.i.i, 1
  %inc80.i.i = add nuw nsw i32 %i.071.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.071.i.i, %conv.i.i
  br i1 %exitcond.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.end.i.i.if.else96.i.i_crit_edge, label %land.lhs.true.i.i

for.end.i.i.if.else96.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else96.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %speed.i.i = getelementptr inbounds %struct.phy_device, ptr %37, i32 0, i32 8
  %93 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %speed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %94)
  %cmp81.i.i = icmp eq i32 %94, 1000
  br i1 %cmp81.i.i, label %if.then83.i.i, label %land.lhs.true.i.i.if.else96.i.i_crit_edge

land.lhs.true.i.i.if.else96.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else96.i.i

if.then83.i.i:                                    ; preds = %land.lhs.true.i.i
  %since_irq.i.i = getelementptr i8, ptr %netdev, i32 3588
  %95 = ptrtoint ptr %since_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %since_irq.i.i, align 4
  %inc84.i.i = add i32 %96, 1
  store i32 %inc84.i.i, ptr %since_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc84.i.i)
  %cmp85.i.i = icmp eq i32 %inc84.i.i, 4
  %flags.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.sink.i.i, i32 3
  br i1 %cmp85.i.i, label %if.then87.i.i, label %if.else91.i.i

if.then87.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 5, ptr %flags.i.i, align 4
  %98 = ptrtoint ptr %since_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %since_irq.i.i, align 4
  br label %if.end100.i.i

if.else91.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %flags.i.i, align 4
  br label %if.end100.i.i

if.else96.i.i:                                    ; preds = %land.lhs.true.i.i.if.else96.i.i_crit_edge, %for.end.i.i.if.else96.i.i_crit_edge
  %flags99.i.i = getelementptr [24 x %struct.tx_desc], ptr %desc.i.i, i32 0, i32 %frag.070.sink.i.i, i32 3
  %100 = ptrtoint ptr %flags99.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 5, ptr %flags99.i.i, align 4
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.else96.i.i, %if.else91.i.i, %if.then87.i.i
  %flags102.i.i = getelementptr inbounds %struct.tx_desc, ptr %desc.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %flags102.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags102.i.i, align 4
  %or.i.i = or i32 %102, 2
  store i32 %or.i.i, ptr %flags102.i.i, align 4
  %send_idx.i.i = getelementptr i8, ptr %netdev, i32 3576
  %103 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %send_idx.i.i, align 4
  %index_start.i.i = getelementptr inbounds %struct.tcb, ptr %22, i32 0, i32 5
  %105 = ptrtoint ptr %index_start.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %index_start.i.i, align 4
  %stale.i.i = getelementptr inbounds %struct.tcb, ptr %22, i32 0, i32 2
  %106 = ptrtoint ptr %stale.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %stale.i.i, align 4
  %107 = load i32, ptr %send_idx.i.i, align 4
  %and104.i.i = and i32 %107, 1023
  %sub105.i.i = sub nsw i32 512, %and104.i.i
  %108 = tail call i32 @llvm.umin.i32(i32 %frag.1.i.i, i32 %sub105.i.i) #15
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %frag.1.i.i, i32 %sub105.i.i) #15
  %tx_desc_ring.i.i = getelementptr i8, ptr %netdev, i32 3568
  %110 = ptrtoint ptr %tx_desc_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_desc_ring.i.i, align 4
  %add.ptr114.i.i = getelementptr %struct.tx_desc, ptr %111, i32 %and104.i.i
  %mul116.i.i = shl i32 %108, 4
  %112 = call ptr @memcpy(ptr %add.ptr114.i.i, ptr %desc.i.i, i32 %mul116.i.i)
  %113 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %send_idx.i.i, align 4
  %add.i.i.i = add i32 %114, %108
  %and.i65.i.i = and i32 %add.i.i.i, 1023
  %and1.i.i.i28 = and i32 %114, 1024
  %or.i.i.i = or i32 %and.i65.i.i, %and1.i.i.i28
  store i32 %or.i.i.i, ptr %send_idx.i.i, align 4
  %115 = zext i32 %and.i65.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i65.i.i, label %if.end100.i.i.if.end130.i.i_crit_edge [
    i32 0, label %if.end100.i.i.if.then126.i.i_crit_edge
    i32 512, label %if.end100.i.i.if.then126.i.i_crit_edge31
  ]

if.end100.i.i.if.then126.i.i_crit_edge31:         ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126.i.i

if.end100.i.i.if.then126.i.i_crit_edge:           ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then126.i.i

if.end100.i.i.if.end130.i.i_crit_edge:            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130.i.i

if.then126.i.i:                                   ; preds = %if.end100.i.i.if.then126.i.i_crit_edge, %if.end100.i.i.if.then126.i.i_crit_edge31
  %xor.i.i = xor i32 %and1.i.i.i28, 1024
  %116 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %xor.i.i, ptr %send_idx.i.i, align 4
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %if.then126.i.i, %if.end100.i.i.if.end130.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.1.i.i, i32 %sub105.i.i)
  %tobool131.not.not.i.i = icmp ugt i32 %frag.1.i.i, %sub105.i.i
  br i1 %tobool131.not.not.i.i, label %if.then132.i.i, label %if.end138thread-pre-split.i.i

if.then132.i.i:                                   ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %tx_desc_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_desc_ring.i.i, align 4
  %add.ptr135.i.i = getelementptr %struct.tx_desc, ptr %desc.i.i, i32 %108
  %mul136.i.i = shl i32 %109, 4
  %119 = call ptr @memcpy(ptr %118, ptr %add.ptr135.i.i, i32 %mul136.i.i)
  %120 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %send_idx.i.i, align 4
  %add.i66.i.i = add i32 %121, %109
  %and.i67.i.i = and i32 %add.i66.i.i, 1023
  %and1.i68.i.i = and i32 %121, 1024
  %or.i69.i.i = or i32 %and.i67.i.i, %and1.i68.i.i
  store i32 %or.i69.i.i, ptr %send_idx.i.i, align 4
  br label %if.end138.i.i

if.end138thread-pre-split.i.i:                    ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr.i.i = load i32, ptr %send_idx.i.i, align 4
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %if.end138thread-pre-split.i.i, %if.then132.i.i
  %123 = phi i32 [ %.pr.i.i, %if.end138thread-pre-split.i.i ], [ %or.i69.i.i, %if.then132.i.i ]
  %and140.i.i = and i32 %123, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i.i)
  %cmp141.i.i = icmp eq i32 %and140.i.i, 0
  br i1 %cmp141.i.i, label %if.then143.i.i, label %if.else150.i.i

if.then143.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool145.not.i.i = icmp eq i32 %123, 0
  %index148.i.i = getelementptr inbounds %struct.tcb, ptr %22, i32 0, i32 4
  br i1 %tobool145.not.i.i, label %if.else147.i.i, label %if.then146.i.i

if.then146.i.i:                                   ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %index148.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 511, ptr %index148.i.i, align 4
  br label %if.end154.i.i

if.else147.i.i:                                   ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %125 = ptrtoint ptr %index148.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1535, ptr %index148.i.i, align 4
  br label %if.end154.i.i

if.else150.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub152.i.i = add i32 %123, -1
  %index153.i.i = getelementptr inbounds %struct.tcb, ptr %22, i32 0, i32 4
  %126 = ptrtoint ptr %index153.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub152.i.i, ptr %index153.i.i, align 4
  br label %if.end154.i.i

if.end154.i.i:                                    ; preds = %if.else150.i.i, %if.else147.i.i, %if.then146.i.i
  %tcb_send_qlock.i.i = getelementptr i8, ptr %netdev, i32 2568
  tail call void @_raw_spin_lock(ptr noundef %tcb_send_qlock.i.i) #15
  %send_tail.i.i = getelementptr i8, ptr %netdev, i32 3560
  %127 = ptrtoint ptr %send_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %send_tail.i.i, align 4
  %tobool155.not.i.i = icmp eq ptr %128, null
  %send_head.i.i = getelementptr i8, ptr %netdev, i32 3556
  %send_head.sink.i.i = select i1 %tobool155.not.i.i, ptr %send_head.i.i, ptr %128
  %129 = ptrtoint ptr %send_head.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %22, ptr %send_head.sink.i.i, align 4
  store ptr %22, ptr %send_tail.i.i, align 4
  %130 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %22, align 4
  %cmp162.not.i.i = icmp eq ptr %131, null
  br i1 %cmp162.not.i.i, label %if.end154.i.i.if.end181.i.i_crit_edge, label %do.end175.i.i, !prof !295

if.end154.i.i.if.end181.i.i_crit_edge:            ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end181.i.i

do.end175.i.i:                                    ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2565, i32 noundef 9, ptr noundef null) #15
  br label %if.end181.i.i

if.end181.i.i:                                    ; preds = %do.end175.i.i, %if.end154.i.i.if.end181.i.i_crit_edge
  %132 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %used, align 4
  %inc188.i.i = add i32 %133, 1
  store i32 %inc188.i.i, ptr %used, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcb_send_qlock.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !370
  tail call void @arm_heavy_mb() #15
  %134 = ptrtoint ptr %send_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %send_idx.i.i, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #15
  %regs.i.i = getelementptr i8, ptr %netdev, i32 3476
  %137 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i.i, align 4
  %service_request.i.i = getelementptr inbounds %struct.address_map, ptr %138, i32 0, i32 2, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %service_request.i.i, i32 %136) #15, !srcloc !289
  br i1 %tobool.not.i.i, label %if.end181.i.i.nic_send_packet.exit.i_crit_edge, label %land.lhs.true195.i.i

if.end181.i.i.nic_send_packet.exit.i_crit_edge:   ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nic_send_packet.exit.i

land.lhs.true195.i.i:                             ; preds = %if.end181.i.i
  %speed196.i.i = getelementptr inbounds %struct.phy_device, ptr %37, i32 0, i32 8
  %139 = ptrtoint ptr %speed196.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %speed196.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %140)
  %cmp197.i.i = icmp eq i32 %140, 1000
  br i1 %cmp197.i.i, label %do.body200.i.i, label %land.lhs.true195.i.i.nic_send_packet.exit.i_crit_edge

land.lhs.true195.i.i.nic_send_packet.exit.i_crit_edge: ; preds = %land.lhs.true195.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nic_send_packet.exit.i

do.body200.i.i:                                   ; preds = %land.lhs.true195.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !371
  tail call void @arm_heavy_mb() #15
  %141 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i.i, align 4
  %watchdog_timer.i.i = getelementptr inbounds %struct.global_regs, ptr %142, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %watchdog_timer.i.i, i32 1083965440) #15, !srcloc !289
  br label %nic_send_packet.exit.i

nic_send_packet.exit.i:                           ; preds = %do.body200.i.i, %land.lhs.true195.i.i.nic_send_packet.exit.i_crit_edge, %if.end181.i.i.nic_send_packet.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %desc.i.i) #15
  %143 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %144)
  %cmp48.i = icmp sgt i32 %144, 64
  br i1 %cmp48.i, label %do.end61.i, label %nic_send_packet.exit.i.cleanup_crit_edge, !prof !298

nic_send_packet.exit.i.cleanup_crit_edge:         ; preds = %nic_send_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end61.i:                                       ; preds = %nic_send_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2629, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

drop_err:                                         ; preds = %if.then9.i, %if.end9.drop_err_crit_edge, %lor.lhs.false.drop_err_crit_edge, %if.end6.drop_err_crit_edge, %netif_trans_update.exit.drop_err_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %146, i32 0, i32 36, i32 7
  %147 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %148, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop_err, %do.end61.i, %nic_send_packet.exit.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_multicast(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %packet_filter1 = getelementptr i8, ptr %netdev, i32 2700
  %0 = ptrtoint ptr %packet_filter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %packet_filter1, align 4
  %and = and i32 %1, -3
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and5 = and i32 %1, -9
  %and2 = lshr i32 %3, 5
  %4 = and i32 %and2, 8
  %storemerge = or i32 %4, %and5
  store i32 %storemerge, ptr %packet_filter1, align 4
  %and7 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %entry.if.then9_crit_edge

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %6)
  %cmp = icmp sgt i32 %6, 128
  br i1 %cmp, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %entry.if.then9_crit_edge
  %or11 = or i32 %storemerge, 16
  %7 = ptrtoint ptr %packet_filter1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or11, ptr %packet_filter1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false.if.end12_crit_edge
  %mc13 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count14 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %8 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp15 = icmp slt i32 %9, 1
  %10 = ptrtoint ptr %packet_filter1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_filter1, align 4
  %or23 = or i32 %11, 2
  %and20 = and i32 %11, -19
  %storemerge65 = select i1 %cmp15, i32 %and20, i32 %or23
  store i32 %storemerge65, ptr %packet_filter1, align 4
  %12 = ptrtoint ptr %mc13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.067 = load ptr, ptr %mc13, align 4
  %cmp29.not68 = icmp eq ptr %ha.067, %mc13
  br i1 %cmp29.not68, label %if.end12.for.end_crit_edge, label %if.end12.if.end32_crit_edge

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  br label %if.end32

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end32:                                         ; preds = %if.end32.if.end32_crit_edge, %if.end12.if.end32_crit_edge
  %ha.070 = phi ptr [ %ha.0, %if.end32.if.end32_crit_edge ], [ %ha.067, %if.end12.if.end32_crit_edge ]
  %i.069 = phi i32 [ %inc, %if.end32.if.end32_crit_edge ], [ 0, %if.end12.if.end32_crit_edge ]
  %inc = add nuw nsw i32 %i.069, 1
  %arrayidx = getelementptr %struct.et131x_adapter, ptr %add.ptr.i, i32 0, i32 15, i32 %i.069
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.070, i32 0, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %add.ptr.i66 = getelementptr %struct.netdev_hw_addr, ptr %ha.070, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i66, align 2
  %add.ptr1.i = getelementptr i8, ptr %arrayidx, i32 4
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i, align 2
  %19 = ptrtoint ptr %ha.070 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0 = load ptr, ptr %ha.070, align 4
  %cmp29.not = icmp eq ptr %ha.0, %mc13
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %inc)
  %cmp30 = icmp eq i32 %inc, 128
  %or.cond = select i1 %cmp29.not, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.end32.for.end_crit_edge, label %if.end32.if.end32_crit_edge

if.end32.if.end32_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %if.end12.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %inc, %if.end32.for.end_crit_edge ]
  %multicast_addr_count = getelementptr i8, ptr %netdev, i32 2704
  %20 = ptrtoint ptr %multicast_addr_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0.lcssa, ptr %multicast_addr_count, align 8
  %21 = ptrtoint ptr %packet_filter1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %packet_filter1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %22)
  %cmp40.not = icmp eq i32 %and, %22
  br i1 %cmp40.not, label %for.end.if.end43_crit_edge, label %if.then41

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then41:                                        ; preds = %for.end
  %regs.i = getelementptr i8, ptr %netdev, i32 3476
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %rxmac.i = getelementptr inbounds %struct.address_map, ptr %24, i32 0, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !372
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %pf_ctrl7.i = getelementptr inbounds %struct.address_map, ptr %27, i32 0, i32 8, i32 33
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pf_ctrl7.i) #15, !srcloc !300
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !373
  %30 = or i32 %25, 67108864
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then41.if.end43_crit_edge, label %if.else.i

if.then41.if.end43_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.else.i:                                        ; preds = %if.then41
  %and12.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %and15.i = and i32 %29, -3
  br label %if.end.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et1310_setup_device_for_multicast(ptr noundef %add.ptr.i) #15
  %or17.i = or i32 %29, 2
  %and18.i = and i32 %31, -5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else16.i, %if.then14.i
  %pf_ctrl.0.i = phi i32 [ %and15.i, %if.then14.i ], [ %or17.i, %if.else16.i ]
  %ctrl.0.i = phi i32 [ %31, %if.then14.i ], [ %and18.i, %if.else16.i ]
  %and19.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then21.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et1310_setup_device_for_unicast(ptr noundef %add.ptr.i) #15
  %or22.i = or i32 %pf_ctrl.0.i, 4
  %and23.i = and i32 %ctrl.0.i, -5
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end.i.if.end24.i_crit_edge
  %pf_ctrl.1.i = phi i32 [ %or22.i, %if.then21.i ], [ %pf_ctrl.0.i, %if.end.i.if.end24.i_crit_edge ]
  %ctrl.1.i = phi i32 [ %and23.i, %if.then21.i ], [ %ctrl.0.i, %if.end.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %and29.i = and i32 %ctrl.1.i, -5
  %and31.i = and i32 %pf_ctrl.1.i, -2
  %not.tobool26.not.i = xor i1 %tobool26.not.i, true
  %masksel.i = zext i1 %not.tobool26.not.i to i32
  %pf_ctrl.2.i = or i32 %and31.i, %masksel.i
  %ctrl.2.i = select i1 %tobool26.not.i, i32 %ctrl.1.i, i32 %and29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @arm_heavy_mb() #15
  %32 = tail call i32 @llvm.bswap.i32(i32 %pf_ctrl.2.i) #15
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %pf_ctrl35.i = getelementptr inbounds %struct.address_map, ptr %34, i32 0, i32 8, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pf_ctrl35.i, i32 %32) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !375
  tail call void @arm_heavy_mb() #15
  %35 = tail call i32 @llvm.bswap.i32(i32 %ctrl.2.i) #15
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %rxmac40.i = getelementptr inbounds %struct.address_map, ptr %37, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmac40.i, i32 %35) #15, !srcloc !289
  br label %if.end43

if.end43:                                         ; preds = %if.end24.i, %if.then41.if.end43_crit_edge, %for.end.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @et131x_disable_txrx(ptr noundef %netdev)
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  tail call fastcc void @et131x_adapter_memory_free(ptr noundef %add.ptr.i)
  %add = add i32 %new_mtu, 14
  %registry_jumbo_packet = getelementptr i8, ptr %netdev, i32 3484
  %1 = ptrtoint ptr %registry_jumbo_packet to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %registry_jumbo_packet, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %netdev, i32 3476
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %mac.i = getelementptr inbounds %struct.address_map, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 4032) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %sw_reset.i = getelementptr inbounds %struct.global_regs, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_reset.i, i32 2130706432) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %mac9.i = getelementptr inbounds %struct.address_map, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac9.i, i32 3840) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %mac15.i = getelementptr inbounds %struct.address_map, ptr %9, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac15.i, i32 0) #15, !srcloc !289
  %call1 = tail call fastcc i32 @et131x_adapter_memory_alloc(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring1.i = getelementptr i8, ptr %netdev, i32 3544
  %12 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring1.i, align 4
  %tcb_qhead.i = getelementptr i8, ptr %netdev, i32 3548
  %14 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %tcb_qhead.i, align 4
  %15 = call ptr @memset(ptr %13, i32 0, i32 1536)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %tcb.017.i = phi ptr [ %13, %if.end ], [ %add.ptr.i18, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i18 = getelementptr %struct.tcb, ptr %tcb.017.i, i32 1
  %16 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i18, ptr %tcb.017.i, align 4
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %et131x_init_send.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

et131x_init_send.exit:                            ; preds = %for.body.i
  %tcb_qtail.i = getelementptr i8, ptr %netdev, i32 3552
  %17 = ptrtoint ptr %tcb_qtail.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tcb.017.i, ptr %tcb_qtail.i, align 4
  %18 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tcb.017.i, align 4
  %send_head.i = getelementptr i8, ptr %netdev, i32 3556
  %19 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %send_head.i, align 4
  %send_tail.i = getelementptr i8, ptr %netdev, i32 3560
  %20 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %send_tail.i, align 4
  %rom_addr.i = getelementptr i8, ptr %netdev, i32 2552
  %21 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rom_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2556
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %or.i.i = or i32 %22, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  %addr.i = getelementptr i8, ptr %netdev, i32 2558
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 2563
  tail call void @get_random_bytes(ptr noundef %arrayidx.i, i32 noundef 1) #15
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i, align 4
  %27 = ptrtoint ptr %rom_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rom_addr.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %netdev, i32 2562
  %28 = ptrtoint ptr %add.ptr.i14.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i14.i, align 2
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %add.ptr.i.i, align 2
  br label %et131x_hwaddr_init.exit

if.else.i:                                        ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %22, ptr %addr.i, align 4
  %add.ptr1.i16.i = getelementptr i8, ptr %netdev, i32 2562
  %32 = ptrtoint ptr %add.ptr1.i16.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %24, ptr %add.ptr1.i16.i, align 2
  br label %et131x_hwaddr_init.exit

et131x_hwaddr_init.exit:                          ; preds = %if.else.i, %if.then.i
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %addr.i, i32 noundef 6) #15
  tail call fastcc void @et131x_adapter_setup(ptr noundef %add.ptr.i)
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %txdma.i.i = getelementptr inbounds %struct.address_map, ptr %34, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i.i, i32 65536) #15, !srcloc !289
  %flags.i = getelementptr i8, ptr %netdev, i32 2544
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %et131x_hwaddr_init.exit.et131x_enable_txrx.exit_crit_edge, label %if.then.i20

et131x_hwaddr_init.exit.et131x_enable_txrx.exit_crit_edge: ; preds = %et131x_hwaddr_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_enable_txrx.exit

if.then.i20:                                      ; preds = %et131x_hwaddr_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i.i = getelementptr i8, ptr %netdev, i32 3488
  %37 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %switch.i.i = icmp ult i8 %38, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %39 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %int_mask.i.i = getelementptr inbounds %struct.global_regs, ptr %41, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i.i, i32 %39) #15, !srcloc !289
  br label %et131x_enable_txrx.exit

et131x_enable_txrx.exit:                          ; preds = %if.then.i20, %et131x_hwaddr_init.exit.et131x_enable_txrx.exit_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %et131x_enable_txrx.exit, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags2 = getelementptr i8, ptr %netdev, i32 2544
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 8
  %2 = and i32 %1, 8388616
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %3 = icmp eq i32 %2, 8
  br i1 %3, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %entry
  %and9 = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body14, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67) #18
  br label %cleanup

do.body14:                                        ; preds = %if.end7
  %tcb_send_qlock = getelementptr i8, ptr %netdev, i32 2568
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock) #15
  %send_head = getelementptr i8, ptr %netdev, i32 3556
  %6 = ptrtoint ptr %send_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_head, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock, i32 noundef %call16) #15
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %do.body14.cleanup_crit_edge, label %if.then23

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then23:                                        ; preds = %do.body14
  %count = getelementptr inbounds %struct.tcb, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp25.not = icmp eq i32 %inc, 0
  br i1 %cmp25.not, label %if.then23.cleanup_crit_edge, label %do.end30

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %pdev31 = getelementptr i8, ptr %netdev, i32 2308
  %10 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev31, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %index = getelementptr inbounds %struct.tcb, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.70, i32 noundef %13) #18
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_errors, align 4
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %tx_errors, align 4
  tail call fastcc void @et131x_disable_txrx(ptr noundef %netdev)
  tail call fastcc void @et131x_enable_txrx(ptr noundef %netdev)
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.then23.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @et131x_stats(ptr nocapture noundef readonly %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %stats2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %stats3 = getelementptr i8, ptr %netdev, i32 3644
  %rx_length_errs = getelementptr i8, ptr %netdev, i32 3684
  %2 = ptrtoint ptr %rx_length_errs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_length_errs, align 4
  %rx_align_errs = getelementptr i8, ptr %netdev, i32 3688
  %4 = ptrtoint ptr %rx_align_errs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_align_errs, align 4
  %add = add i32 %5, %3
  %rx_crc_errs = getelementptr i8, ptr %netdev, i32 3692
  %6 = ptrtoint ptr %rx_crc_errs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_crc_errs, align 4
  %add4 = add i32 %add, %7
  %rx_code_violations = getelementptr i8, ptr %netdev, i32 3696
  %8 = ptrtoint ptr %rx_code_violations to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_code_violations, align 4
  %add5 = add i32 %add4, %9
  %rx_other_errs = getelementptr i8, ptr %netdev, i32 3700
  %10 = ptrtoint ptr %rx_other_errs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_other_errs, align 4
  %add6 = add i32 %add5, %11
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add6, ptr %rx_errors, align 4
  %tx_max_pkt_errs = getelementptr i8, ptr %netdev, i32 3672
  %13 = ptrtoint ptr %tx_max_pkt_errs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_max_pkt_errs, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %15 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_errors, align 4
  %16 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats3, align 4
  %multicast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %18 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %multicast, align 4
  %tx_collisions = getelementptr i8, ptr %netdev, i32 3656
  %19 = ptrtoint ptr %tx_collisions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_collisions, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %21 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %collisions, align 4
  %22 = load i32, ptr %rx_length_errs, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %23 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_length_errors, align 4
  %rx_overflows = getelementptr i8, ptr %netdev, i32 3680
  %24 = ptrtoint ptr %rx_overflows to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_overflows, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %26 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_over_errors, align 4
  %27 = load i32, ptr %rx_crc_errs, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %28 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_crc_errors, align 4
  %rcvd_pkts_dropped = getelementptr i8, ptr %netdev, i32 3648
  %29 = ptrtoint ptr %rcvd_pkts_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rcvd_pkts_dropped, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %31 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rx_dropped, align 4
  ret ptr %stats2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_error_timer_handler(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1188
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 16
  %regs.i = getelementptr i8, ptr %t, i32 -16
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %pm_csr.i = getelementptr inbounds %struct.global_regs, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %7 = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et1310_disable_phy_coma(ptr noundef %add.ptr)
  %boot_coma = getelementptr i8, ptr %t, i32 48
  %8 = ptrtoint ptr %boot_coma to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 20, ptr %boot_coma, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %tx_total_collisions.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_total_collisions.i) #15, !srcloc !300
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  %tx_collisions.i = getelementptr i8, ptr %t, i32 164
  %13 = ptrtoint ptr %tx_collisions.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_collisions.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %tx_collisions.i, align 4
  %tx_single_collisions.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_single_collisions.i) #15, !srcloc !300
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %tx_first_collisions.i = getelementptr i8, ptr %t, i32 172
  %17 = ptrtoint ptr %tx_first_collisions.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_first_collisions.i, align 4
  %add9.i = add i32 %18, %16
  store i32 %add9.i, ptr %tx_first_collisions.i, align 4
  %tx_deferred.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 30
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_deferred.i) #15, !srcloc !300
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !379
  %tx_deferred15.i = getelementptr i8, ptr %t, i32 184
  %21 = ptrtoint ptr %tx_deferred15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_deferred15.i, align 4
  %add16.i = add i32 %22, %20
  store i32 %add16.i, ptr %tx_deferred15.i, align 4
  %tx_multiple_collisions.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 33
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_multiple_collisions.i) #15, !srcloc !300
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !380
  %tx_excessive_collisions.i = getelementptr i8, ptr %t, i32 168
  %25 = ptrtoint ptr %tx_excessive_collisions.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_excessive_collisions.i, align 4
  %add22.i = add i32 %26, %24
  store i32 %add22.i, ptr %tx_excessive_collisions.i, align 4
  %tx_late_collisions.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 34
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_late_collisions.i) #15, !srcloc !300
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !381
  %tx_late_collisions28.i = getelementptr i8, ptr %t, i32 176
  %29 = ptrtoint ptr %tx_late_collisions28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_late_collisions28.i, align 4
  %add29.i = add i32 %30, %28
  store i32 %add29.i, ptr %tx_late_collisions28.i, align 4
  %tx_undersize_frames.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 43
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_undersize_frames.i) #15, !srcloc !300
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  %tx_underflows.i = getelementptr i8, ptr %t, i32 160
  %33 = ptrtoint ptr %tx_underflows.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_underflows.i, align 4
  %add35.i = add i32 %34, %32
  store i32 %add35.i, ptr %tx_underflows.i, align 4
  %tx_oversize_frames.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 42
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_oversize_frames.i) #15, !srcloc !300
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !383
  %tx_max_pkt_errs.i = getelementptr i8, ptr %t, i32 180
  %37 = ptrtoint ptr %tx_max_pkt_errs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_max_pkt_errs.i, align 4
  %add41.i = add i32 %38, %36
  store i32 %add41.i, ptr %tx_max_pkt_errs.i, align 4
  %rx_align_errs.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_align_errs.i) #15, !srcloc !300
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !384
  %rx_align_errs47.i = getelementptr i8, ptr %t, i32 196
  %41 = ptrtoint ptr %rx_align_errs47.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_align_errs47.i, align 4
  %add48.i = add i32 %42, %40
  store i32 %add48.i, ptr %rx_align_errs47.i, align 4
  %rx_code_errs.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 18
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_code_errs.i) #15, !srcloc !300
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %rx_crc_errs.i = getelementptr i8, ptr %t, i32 200
  %45 = ptrtoint ptr %rx_crc_errs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_crc_errs.i, align 4
  %add54.i = add i32 %46, %44
  store i32 %add54.i, ptr %rx_crc_errs.i, align 4
  %rx_drops.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_drops.i) #15, !srcloc !300
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !386
  %rcvd_pkts_dropped.i = getelementptr i8, ptr %t, i32 156
  %49 = ptrtoint ptr %rcvd_pkts_dropped.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rcvd_pkts_dropped.i, align 4
  %add60.i = add i32 %50, %48
  store i32 %add60.i, ptr %rcvd_pkts_dropped.i, align 4
  %rx_oversize_packets.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 21
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_oversize_packets.i) #15, !srcloc !300
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !387
  %rx_overflows.i = getelementptr i8, ptr %t, i32 188
  %53 = ptrtoint ptr %rx_overflows.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_overflows.i, align 4
  %add66.i = add i32 %54, %52
  store i32 %add66.i, ptr %rx_overflows.i, align 4
  %rx_fcs_errs.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 10
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_fcs_errs.i) #15, !srcloc !300
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !388
  %rx_code_violations.i = getelementptr i8, ptr %t, i32 204
  %57 = ptrtoint ptr %rx_code_violations.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_code_violations.i, align 4
  %add72.i = add i32 %58, %56
  store i32 %add72.i, ptr %rx_code_violations.i, align 4
  %rx_frame_len_errs.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 17
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_frame_len_errs.i) #15, !srcloc !300
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !389
  %rx_length_errs.i = getelementptr i8, ptr %t, i32 192
  %61 = ptrtoint ptr %rx_length_errs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_length_errs.i, align 4
  %add78.i = add i32 %62, %60
  store i32 %add78.i, ptr %rx_length_errs.i, align 4
  %rx_fragment_packets.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 12, i32 22
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rx_fragment_packets.i) #15, !srcloc !300
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !390
  %rx_other_errs.i = getelementptr i8, ptr %t, i32 208
  %65 = ptrtoint ptr %rx_other_errs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_other_errs.i, align 4
  %add84.i = add i32 %66, %64
  store i32 %add84.i, ptr %rx_other_errs.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %link = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %67 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load = load i16, ptr %link, align 8
  %68 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool2.not = icmp eq i16 %68, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %boot_coma3 = getelementptr i8, ptr %t, i32 48
  %69 = ptrtoint ptr %boot_coma3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %boot_coma3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %70)
  %cmp = icmp ult i8 %70, 11
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add nuw nsw i8 %70, 1
  %71 = ptrtoint ptr %boot_coma3 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %inc, ptr %boot_coma3, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %boot_coma8 = getelementptr i8, ptr %t, i32 48
  %72 = ptrtoint ptr %boot_coma8 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %boot_coma8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %73)
  %cmp10 = icmp eq i8 %73, 10
  br i1 %cmp10, label %if.then12, label %if.end7.if.end25_crit_edge

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then12:                                        ; preds = %if.end7
  %74 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load14 = load i16, ptr %link, align 8
  %75 = and i16 %bf.load14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool18.not = icmp eq i16 %75, 0
  br i1 %tobool18.not, label %if.then19, label %if.then12.if.end25_crit_edge

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then19:                                        ; preds = %if.then12
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %pm_csr.i42 = getelementptr inbounds %struct.global_regs, ptr %77, i32 0, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i42) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %79 = and i32 %78, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool21.not = icmp eq i32 %79, 0
  br i1 %tobool21.not, label %if.then22, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i = getelementptr i8, ptr %t, i32 -4
  %80 = ptrtoint ptr %flow.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %switch.i = icmp ult i8 %81, 2
  %spec.select.i = select i1 %switch.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %82 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %84, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 %82) #15, !srcloc !289
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %pm_csr.i46 = getelementptr inbounds %struct.global_regs, ptr %86, i32 0, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i46) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !391
  %flags.i = getelementptr i8, ptr %t, i32 -948
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %89, 2097152
  store i32 %or.i, ptr %flags.i, align 8
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @et131x_disable_txrx(ptr noundef %91) #15
  %92 = and i32 %87, -939524097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !392
  tail call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %pm_csr4.i = getelementptr inbounds %struct.global_regs, ptr %94, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm_csr4.i, i32 %92) #15, !srcloc !289
  %95 = or i32 %92, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !393
  tail call void @arm_heavy_mb() #15
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 4
  %pm_csr11.i = getelementptr inbounds %struct.global_regs, ptr %97, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm_csr11.i, i32 %95) #15, !srcloc !289
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then19.if.end25_crit_edge, %if.then12.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %98, 100
  %call27 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %dev_id, i32 3476
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.if.end167_crit_edge, label %if.end

entry.if.end167_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  tail call void @arm_heavy_mb() #15
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %6, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 -1) #15, !srcloc !289
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %int_status = getelementptr inbounds %struct.global_regs, ptr %8, i32 0, i32 6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_status) #15, !srcloc !300
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !394
  %flow = getelementptr i8, ptr %dev_id, i32 3488
  %11 = ptrtoint ptr %flow to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp ult i8 %12, 2
  %status.0.v = select i1 %switch, i32 82152, i32 81960
  %status.0 = and i32 %status.0.v, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool.not = icmp eq i32 %status.0, 0
  br i1 %tobool.not, label %out.thread, label %if.end16

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %spec.select.i = select i1 %switch, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %13 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %int_mask.i220 = getelementptr inbounds %struct.global_regs, ptr %15, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i220, i32 %13) #15, !srcloc !289
  br label %if.then166

if.end16:                                         ; preds = %if.end
  %and17 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end39_crit_edge, label %if.then19

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then19:                                        ; preds = %if.end16
  %send_head = getelementptr i8, ptr %dev_id, i32 3556
  %16 = ptrtoint ptr %send_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_head, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end26, label %if.end26.thread

if.end26:                                         ; preds = %if.then19
  %unfinished_receives = getelementptr i8, ptr %dev_id, i32 3640
  %18 = ptrtoint ptr %unfinished_receives to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %unfinished_receives, align 4, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %do.body, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

if.end26.thread:                                  ; preds = %if.then19
  %stale = getelementptr inbounds %struct.tcb, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stale, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp22 = icmp ugt i32 %inc, 1
  %or = or i32 %status.0, 8
  %spec.select = select i1 %cmp22, i32 %or, i32 %status.0
  %unfinished_receives230 = getelementptr i8, ptr %dev_id, i32 3640
  %22 = ptrtoint ptr %unfinished_receives230 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %unfinished_receives230, align 4, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool27.not231 = icmp eq i8 %23, 0
  br i1 %tobool27.not231, label %if.end26.thread.if.end37_crit_edge, label %if.end26.thread.if.then28_crit_edge

if.end26.thread.if.then28_crit_edge:              ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

if.end26.thread.if.end37_crit_edge:               ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then28:                                        ; preds = %if.end26.thread.if.then28_crit_edge, %if.end26.if.then28_crit_edge
  %status.1232 = phi i32 [ %spec.select, %if.end26.thread.if.then28_crit_edge ], [ %status.0, %if.end26.if.then28_crit_edge ]
  %or29 = or i32 %status.1232, 32
  br label %if.end37

do.body:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !395
  tail call void @arm_heavy_mb() #15
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %watchdog_timer = getelementptr inbounds %struct.global_regs, ptr %25, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %watchdog_timer, i32 0) #15, !srcloc !289
  br label %if.end37

if.end37:                                         ; preds = %do.body, %if.then28, %if.end26.thread.if.end37_crit_edge
  %status.2 = phi i32 [ %or29, %if.then28 ], [ %status.0, %do.body ], [ %spec.select, %if.end26.thread.if.end37_crit_edge ]
  %and38 = and i32 %status.2, -16385
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end16.if.end39_crit_edge
  %status.3 = phi i32 [ %and38, %if.end37 ], [ %status.0, %if.end16.if.end39_crit_edge ]
  %and40 = and i32 %status.3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end43_crit_edge, label %if.then42

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then42:                                        ; preds = %if.end39
  %napi = getelementptr i8, ptr %dev_id, i32 2320
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %if.then42.if.end43_crit_edge

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then.i, %if.then42.if.end43_crit_edge, %if.end39.if.end43_crit_edge
  %and44 = and i32 %status.3, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.out_crit_edge, label %if.end47

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end47:                                         ; preds = %if.end43
  %and48 = and i32 %status.3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end59_crit_edge, label %if.then50

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %tx_dma_error = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_dma_error) #15, !srcloc !300
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !396
  %pdev = getelementptr i8, ptr %dev_id, i32 2308
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %27) #18
  br label %if.end59

if.end59:                                         ; preds = %if.then50, %if.end47.if.end59_crit_edge
  %and60 = and i32 %status.3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end81_crit_edge, label %if.then62

if.end59.if.end81_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then62:                                        ; preds = %if.end59
  %30 = ptrtoint ptr %flow to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %switch218 = icmp ult i8 %31, 2
  br i1 %switch218, label %if.then72, label %if.then62.if.end81_crit_edge

if.then62.if.end81_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.then72:                                        ; preds = %if.then62
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %pm_csr.i = getelementptr inbounds %struct.global_regs, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %35 = and i32 %34, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool74.not = icmp eq i32 %35, 0
  br i1 %tobool74.not, label %do.body76, label %if.then72.if.end81_crit_edge

if.then72.if.end81_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

do.body76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !397
  tail call void @arm_heavy_mb() #15
  %bp_ctrl = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bp_ctrl, i32 50331648) #15, !srcloc !289
  br label %if.end81

if.end81:                                         ; preds = %do.body76, %if.then72.if.end81_crit_edge, %if.then62.if.end81_crit_edge, %if.end59.if.end81_crit_edge
  %and86 = and i32 %status.3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end81.if.end100_crit_edge, label %do.end91

if.end81.if.end100_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #17
  %pdev92 = getelementptr i8, ptr %dev_id, i32 2308
  %36 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev92, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %tx_test = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 6, i32 5
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_test) #15, !srcloc !300
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !398
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93, ptr noundef nonnull @.str.47, i32 noundef %39) #18
  br label %if.end100

if.end100:                                        ; preds = %do.end91, %if.end81.if.end100_crit_edge
  %and101 = and i32 %status.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end109_crit_edge, label %do.end106

if.end100.if.end109_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #17
  %pdev107 = getelementptr i8, ptr %dev_id, i32 2308
  %40 = ptrtoint ptr %pdev107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev107, align 4
  %dev108 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.50) #18
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.end100.if.end109_crit_edge
  %and110 = and i32 %status.3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end125_crit_edge, label %if.then112

if.end109.if.end125_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  %err116 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 6, i32 6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %err116) #15, !srcloc !300
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !399
  %pdev123 = getelementptr i8, ptr %dev_id, i32 2308
  %44 = ptrtoint ptr %pdev123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev123, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev124, ptr noundef nonnull @.str.53, i32 noundef %43) #18
  br label %if.end125

if.end125:                                        ; preds = %if.then112, %if.end109.if.end125_crit_edge
  %and126 = and i32 %status.3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end156_crit_edge, label %do.end131

if.end125.if.end156_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

do.end131:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  %pdev132 = getelementptr i8, ptr %dev_id, i32 2308
  %46 = ptrtoint ptr %pdev132 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev132, align 4
  %dev133 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %rxmac = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8
  %err_reg = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 39
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %err_reg) #15, !srcloc !300
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev133, ptr noundef nonnull @.str.56, i32 noundef %49) #18
  %50 = ptrtoint ptr %pdev132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev132, align 4
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxmac) #15, !srcloc !300
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  %rxq_diag = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 36
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_diag) #15, !srcloc !300
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !402
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev143, ptr noundef nonnull @.str.59, i32 noundef %53, i32 noundef %55) #18
  br label %if.end156

if.end156:                                        ; preds = %do.end131, %if.end125.if.end156_crit_edge
  %and157 = and i32 %status.3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end156.out_crit_edge, label %if.then159

if.end156.out_crit_edge:                          ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then159:                                       ; preds = %if.end156
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %carry_reg11.i = getelementptr inbounds %struct.address_map, ptr %57, i32 0, i32 12, i32 45
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %carry_reg11.i) #15, !srcloc !300
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !403
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %carry_reg27.i = getelementptr inbounds %struct.address_map, ptr %61, i32 0, i32 12, i32 46
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %carry_reg27.i) #15, !srcloc !300
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !405
  tail call void @arm_heavy_mb() #15
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %carry_reg113.i = getelementptr inbounds %struct.address_map, ptr %65, i32 0, i32 12, i32 45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %carry_reg113.i, i32 %58) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !406
  tail call void @arm_heavy_mb() #15
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %carry_reg219.i = getelementptr inbounds %struct.address_map, ptr %67, i32 0, i32 12, i32 46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %carry_reg219.i, i32 %62) #15, !srcloc !289
  %and.i = and i32 %59, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then159.if.end.i_crit_edge, label %if.then.i223

if.then159.if.end.i_crit_edge:                    ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i223:                                     ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #17
  %rx_code_violations.i = getelementptr i8, ptr %dev_id, i32 3696
  %68 = ptrtoint ptr %rx_code_violations.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_code_violations.i, align 4
  %add.i = add i32 %69, 65536
  store i32 %add.i, ptr %rx_code_violations.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i223, %if.then159.if.end.i_crit_edge
  %and20.i = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then22.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_align_errs.i = getelementptr i8, ptr %dev_id, i32 3688
  %70 = ptrtoint ptr %rx_align_errs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_align_errs.i, align 4
  %add24.i = add i32 %71, 4096
  store i32 %add24.i, ptr %rx_align_errs.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end.i.if.end25.i_crit_edge
  %and26.i = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end31.i_crit_edge, label %if.then28.i

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_length_errs.i = getelementptr i8, ptr %dev_id, i32 3684
  %72 = ptrtoint ptr %rx_length_errs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_length_errs.i, align 4
  %add30.i = add i32 %73, 65536
  store i32 %add30.i, ptr %rx_length_errs.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end31.i_crit_edge
  %and32.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end37.i_crit_edge, label %if.then34.i

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_other_errs.i = getelementptr i8, ptr %dev_id, i32 3700
  %74 = ptrtoint ptr %rx_other_errs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_other_errs.i, align 4
  %add36.i = add i32 %75, 65536
  store i32 %add36.i, ptr %rx_other_errs.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end37.i_crit_edge
  %and38.i = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end43.i_crit_edge, label %if.then40.i

if.end37.i.if.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_crc_errs.i = getelementptr i8, ptr %dev_id, i32 3692
  %76 = ptrtoint ptr %rx_crc_errs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_crc_errs.i, align 4
  %add42.i = add i32 %77, 65536
  store i32 %add42.i, ptr %rx_crc_errs.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end43.i_crit_edge
  %and44.i = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end49.i_crit_edge, label %if.then46.i

if.end43.i.if.end49.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  %rx_overflows.i = getelementptr i8, ptr %dev_id, i32 3680
  %78 = ptrtoint ptr %rx_overflows.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_overflows.i, align 4
  %add48.i = add i32 %79, 65536
  store i32 %add48.i, ptr %rx_overflows.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end49.i_crit_edge
  %and50.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end49.i.if.end55.i_crit_edge, label %if.then52.i

if.end49.i.if.end55.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  %rcvd_pkts_dropped.i = getelementptr i8, ptr %dev_id, i32 3648
  %80 = ptrtoint ptr %rcvd_pkts_dropped.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rcvd_pkts_dropped.i, align 4
  %add54.i = add i32 %81, 65536
  store i32 %add54.i, ptr %rcvd_pkts_dropped.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end55.i_crit_edge
  %and56.i = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end61.i_crit_edge, label %if.then58.i

if.end55.i.if.end61.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_max_pkt_errs.i = getelementptr i8, ptr %dev_id, i32 3672
  %82 = ptrtoint ptr %tx_max_pkt_errs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_max_pkt_errs.i, align 4
  %add60.i = add i32 %83, 4096
  store i32 %add60.i, ptr %tx_max_pkt_errs.i, align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end61.i_crit_edge
  %and62.i = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end67.i_crit_edge, label %if.then64.i

if.end61.i.if.end67.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_underflows.i = getelementptr i8, ptr %dev_id, i32 3652
  %84 = ptrtoint ptr %tx_underflows.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_underflows.i, align 4
  %add66.i = add i32 %85, 4096
  store i32 %add66.i, ptr %tx_underflows.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end61.i.if.end67.i_crit_edge
  %and68.i = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.if.end73.i_crit_edge, label %if.then70.i

if.end67.i.if.end73.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_first_collisions.i = getelementptr i8, ptr %dev_id, i32 3664
  %86 = ptrtoint ptr %tx_first_collisions.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_first_collisions.i, align 4
  %add72.i = add i32 %87, 4096
  store i32 %add72.i, ptr %tx_first_collisions.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.end67.i.if.end73.i_crit_edge
  %and74.i = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end79.i_crit_edge, label %if.then76.i

if.end73.i.if.end79.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_deferred.i = getelementptr i8, ptr %dev_id, i32 3676
  %88 = ptrtoint ptr %tx_deferred.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_deferred.i, align 4
  %add78.i = add i32 %89, 4096
  store i32 %add78.i, ptr %tx_deferred.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end79.i_crit_edge
  %and80.i = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end85.i_crit_edge, label %if.then82.i

if.end79.i.if.end85.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end85.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_excessive_collisions.i = getelementptr i8, ptr %dev_id, i32 3660
  %90 = ptrtoint ptr %tx_excessive_collisions.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_excessive_collisions.i, align 4
  %add84.i = add i32 %91, 4096
  store i32 %add84.i, ptr %tx_excessive_collisions.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then82.i, %if.end79.i.if.end85.i_crit_edge
  %and86.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end85.i.if.end91.i_crit_edge, label %if.then88.i

if.end85.i.if.end91.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91.i

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_late_collisions.i = getelementptr i8, ptr %dev_id, i32 3668
  %92 = ptrtoint ptr %tx_late_collisions.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_late_collisions.i, align 4
  %add90.i = add i32 %93, 4096
  store i32 %add90.i, ptr %tx_late_collisions.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then88.i, %if.end85.i.if.end91.i_crit_edge
  %and92.i = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end91.i.out_crit_edge, label %if.then94.i

if.end91.i.out_crit_edge:                         ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then94.i:                                      ; preds = %if.end91.i
  %tx_collisions.i = getelementptr i8, ptr %dev_id, i32 3656
  %94 = ptrtoint ptr %tx_collisions.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_collisions.i, align 4
  %add96.i = add i32 %95, 4096
  store i32 %add96.i, ptr %tx_collisions.i, align 4
  br i1 %tobool41.not, label %if.then94.i.if.then166_crit_edge, label %if.then94.i.if.end167_crit_edge

if.then94.i.if.end167_crit_edge:                  ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167

if.then94.i.if.then166_crit_edge:                 ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then166

out:                                              ; preds = %if.end91.i.out_crit_edge, %if.end156.out_crit_edge, %if.end43.out_crit_edge
  br i1 %tobool41.not, label %out.if.then166_crit_edge, label %out.if.end167_crit_edge

out.if.end167_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end167

out.if.then166_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then166

if.then166:                                       ; preds = %out.if.then166_crit_edge, %if.then94.i.if.then166_crit_edge, %out.thread
  %handled.0.off0238 = phi i32 [ 0, %out.thread ], [ 1, %out.if.then166_crit_edge ], [ 1, %if.then94.i.if.then166_crit_edge ]
  %96 = ptrtoint ptr %flow to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %flow, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %97)
  %switch.i225 = icmp ult i8 %97, 2
  %spec.select.i226 = select i1 %switch.i225, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %98 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i226) #15
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %int_mask.i228 = getelementptr inbounds %struct.global_regs, ptr %100, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i228, i32 %98) #15, !srcloc !289
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %out.if.end167_crit_edge, %if.then94.i.if.end167_crit_edge, %entry.if.end167_crit_edge
  %handled.0.off0237 = phi i32 [ %handled.0.off0238, %if.then166 ], [ 1, %out.if.end167_crit_edge ], [ 1, %if.then94.i.if.end167_crit_edge ], [ 0, %entry.if.end167_crit_edge ]
  ret i32 %handled.0.off0237
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_up(ptr nocapture noundef readonly %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %regs.i.i = getelementptr i8, ptr %netdev, i32 3476
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %txdma.i.i = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i.i, i32 65536) #15, !srcloc !289
  %flags.i = getelementptr i8, ptr %netdev, i32 2544
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.et131x_enable_txrx.exit_crit_edge, label %if.then.i

entry.et131x_enable_txrx.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_enable_txrx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i.i = getelementptr i8, ptr %netdev, i32 3488
  %4 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.i.i = icmp ult i8 %5, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %int_mask.i.i = getelementptr inbounds %struct.global_regs, ptr %8, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i.i, i32 %6) #15, !srcloc !289
  br label %et131x_enable_txrx.exit

et131x_enable_txrx.exit:                          ; preds = %if.then.i, %entry.et131x_enable_txrx.exit_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %11 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %12) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_disable_txrx(ptr nocapture noundef readonly %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !340
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %netdev, i32 3476
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %rxdma.i = getelementptr inbounds %struct.address_map, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxdma.i, i32 18874368) #15, !srcloc !289
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %rxdma3.i = getelementptr inbounds %struct.address_map, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma3.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !341
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.et131x_rx_dma_disable.exit_crit_edge

entry.et131x_rx_dma_disable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_rx_dma_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #15
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %rxdma9.i = getelementptr inbounds %struct.address_map, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma9.i) #15, !srcloc !300
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !342
  %and14.i = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.end19.i, label %if.then.i.et131x_rx_dma_disable.exit_crit_edge

if.then.i.et131x_rx_dma_disable.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_rx_dma_disable.exit

do.end19.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %12) #18
  br label %et131x_rx_dma_disable.exit

et131x_rx_dma_disable.exit:                       ; preds = %do.end19.i, %if.then.i.et131x_rx_dma_disable.exit_crit_edge, %entry.et131x_rx_dma_disable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !407
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %txdma.i = getelementptr inbounds %struct.address_map, ptr %16, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i, i32 16842752) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %18, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 -1) #15, !srcloc !289
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_enable_txrx(ptr nocapture noundef readonly %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %netdev, i32 3476
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %txdma.i = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i, i32 65536) #15, !srcloc !289
  %flags = getelementptr i8, ptr %netdev, i32 2544
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i = getelementptr i8, ptr %netdev, i32 3488
  %4 = ptrtoint ptr %flow.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flow.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.i = icmp ult i8 %5, 2
  %spec.select.i = select i1 %switch.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %int_mask.i = getelementptr inbounds %struct.global_regs, ptr %8, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 %6) #15, !srcloc !289
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et131x_rx_dma_enable(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 23
  %arrayidx = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 23, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %buffsize = getelementptr inbounds %struct.fbr_lookup, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %buffsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffsize, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %3, label %if.end16.fold.split [
    i32 4096, label %entry.if.end16_crit_edge
    i32 8192, label %if.then6
    i32 16384, label %if.then13
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end16.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end16:                                         ; preds = %if.end16.fold.split, %if.then13, %if.then6, %entry.if.end16_crit_edge
  %csr.0 = phi i32 [ 13312, %if.then6 ], [ 15360, %if.then13 ], [ 11264, %entry.if.end16_crit_edge ], [ 9216, %if.end16.fold.split ]
  %5 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ring1, align 4
  %buffsize20 = getelementptr inbounds %struct.fbr_lookup, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %buffsize20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffsize20, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %8, label %if.end16.do.body_crit_edge [
    i32 256, label %if.then22
    i32 512, label %if.then29
    i32 1024, label %if.then36
  ]

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %or23 = or i32 %csr.0, 256
  br label %do.body

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %or30 = or i32 %csr.0, 512
  br label %do.body

if.then36:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %or37 = or i32 %csr.0, 768
  br label %do.body

do.body:                                          ; preds = %if.then36, %if.then29, %if.then22, %if.end16.do.body_crit_edge
  %csr.1 = phi i32 [ %or23, %if.then22 ], [ %or30, %if.then29 ], [ %or37, %if.then36 ], [ %csr.0, %if.end16.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !408
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %csr.1)
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %rxdma = getelementptr inbounds %struct.address_map, ptr %12, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxdma, i32 %10) #15, !srcloc !289
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %rxdma43 = getelementptr inbounds %struct.address_map, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma43) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !409
  %16 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.body.if.end62_crit_edge, label %if.then46

do.body.if.end62_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then46:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #15
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %rxdma50 = getelementptr inbounds %struct.address_map, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma50) #15, !srcloc !300
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !410
  %and55 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then46.if.end62_crit_edge, label %do.end60

if.then46.if.end62_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

do.end60:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %21) #18
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.then46.if.end62_crit_edge, %do.body.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et1310_setup_device_for_multicast(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %packet_filter = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %packet_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packet_filter, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %for.cond.preheader

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

for.cond.preheader:                               ; preds = %entry
  %multicast_addr_count = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 14
  %4 = ptrtoint ptr %multicast_addr_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %multicast_addr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp100.not = icmp eq i32 %5, 0
  br i1 %cmp100.not, label %for.cond.preheader.if.end49_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.if.end49_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

cond.end:                                         ; preds = %if.end48.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %hash1.0105 = phi i32 [ %hash1.1, %if.end48.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %hash2.0104 = phi i32 [ %hash2.1, %if.end48.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %i.0103 = phi i32 [ %inc, %if.end48.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %hash4.0102 = phi i32 [ %hash4.1, %if.end48.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %hash3.0101 = phi i32 [ %hash3.1, %if.end48.cond.end_crit_edge ], [ 0, %for.cond.preheader.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 15, i32 %i.0103
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %arrayidx, i32 noundef 6) #21
  %6 = lshr i32 %call, 8
  %conv4.i.i = and i32 %6, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %7 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %conv6.i.i, 16
  %10 = and i32 %call, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %12 to i32
  %13 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %9, %13
  %and24 = lshr i32 %or.i13.i, 23
  %shr25 = and i32 %and24, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %shr25)
  %cmp26 = icmp ult i32 %shr25, 32
  br i1 %cmp26, label %if.then27, label %land.lhs.true

if.then27:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %shl28 = shl nuw i32 1, %shr25
  %or29 = or i32 %shl28, %hash1.0105
  br label %if.end48

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %shr25)
  %cmp31 = icmp ult i32 %shr25, 64
  br i1 %cmp31, label %if.then32, label %land.lhs.true37

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sub = add nsw i32 %shr25, -32
  %shl33 = shl nuw i32 1, %sub
  %or34 = or i32 %shl33, %hash2.0104
  br label %if.end48

land.lhs.true37:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %shr25)
  %cmp38 = icmp ult i32 %shr25, 96
  br i1 %cmp38, label %if.then39, label %if.else43

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  %sub40 = add nsw i32 %shr25, -64
  %shl41 = shl nuw i32 1, %sub40
  %or42 = or i32 %shl41, %hash3.0101
  br label %if.end48

if.else43:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  %sub44 = add nsw i32 %shr25, -96
  %shl45 = shl nuw i32 1, %sub44
  %or46 = or i32 %shl45, %hash4.0102
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %if.then39, %if.then32, %if.then27
  %hash3.1 = phi i32 [ %hash3.0101, %if.then27 ], [ %hash3.0101, %if.then32 ], [ %or42, %if.then39 ], [ %hash3.0101, %if.else43 ]
  %hash4.1 = phi i32 [ %hash4.0102, %if.then27 ], [ %hash4.0102, %if.then32 ], [ %hash4.0102, %if.then39 ], [ %or46, %if.else43 ]
  %hash2.1 = phi i32 [ %hash2.0104, %if.then27 ], [ %or34, %if.then32 ], [ %hash2.0104, %if.then39 ], [ %hash2.0104, %if.else43 ]
  %hash1.1 = phi i32 [ %or29, %if.then27 ], [ %hash1.0105, %if.then32 ], [ %hash1.0105, %if.then39 ], [ %hash1.0105, %if.else43 ]
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %if.end48.if.end49_crit_edge, label %if.end48.cond.end_crit_edge

if.end48.cond.end_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end48.if.end49_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49

if.end49:                                         ; preds = %if.end48.if.end49_crit_edge, %for.cond.preheader.if.end49_crit_edge, %entry.if.end49_crit_edge
  %hash3.2 = phi i32 [ 0, %entry.if.end49_crit_edge ], [ 0, %for.cond.preheader.if.end49_crit_edge ], [ %hash3.1, %if.end48.if.end49_crit_edge ]
  %hash4.2 = phi i32 [ 0, %entry.if.end49_crit_edge ], [ 0, %for.cond.preheader.if.end49_crit_edge ], [ %hash4.1, %if.end48.if.end49_crit_edge ]
  %hash2.2 = phi i32 [ 0, %entry.if.end49_crit_edge ], [ 0, %for.cond.preheader.if.end49_crit_edge ], [ %hash2.1, %if.end48.if.end49_crit_edge ]
  %hash1.2 = phi i32 [ 0, %entry.if.end49_crit_edge ], [ 0, %for.cond.preheader.if.end49_crit_edge ], [ %hash1.1, %if.end48.if.end49_crit_edge ]
  %pm_csr.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %15 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool51.not = icmp eq i32 %15, 0
  br i1 %tobool51.not, label %do.body, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

do.body:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @arm_heavy_mb() #15
  %16 = tail call i32 @llvm.bswap.i32(i32 %hash1.2)
  %multi_hash1 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %multi_hash1, i32 %16) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %hash2.2)
  %multi_hash2 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %multi_hash2, i32 %17) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !413
  tail call void @arm_heavy_mb() #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %hash3.2)
  %multi_hash3 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %multi_hash3, i32 %18) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !414
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %hash4.2)
  %multi_hash4 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %multi_hash4, i32 %19) #15, !srcloc !289
  br label %if.end62

if.end62:                                         ; preds = %do.body, %if.end49.if.end62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et1310_setup_device_for_unicast(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %addr = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 2
  %arrayidx3 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx16 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx16, align 2
  %arrayidx20 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %arrayidx25 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25, align 2
  %arrayidx30 = getelementptr %struct.et131x_adapter, ptr %adapter, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx30, align 1
  %pm_csr.i = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %15 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv17 = zext i8 %7 to i32
  %shl18 = shl nuw i32 %conv17, 24
  %conv21 = zext i8 %9 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %shl22, %shl18
  %conv26 = zext i8 %11 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %or28 = or i32 %or23, %shl27
  %conv31 = zext i8 %13 to i32
  %or32 = or i32 %or28, %conv31
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 %conv, 24
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %shl9 = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl9, %shl
  %or10 = or i32 %or, %conv4
  %or14 = or i32 %or10, %shl5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !415
  tail call void @arm_heavy_mb() #15
  %16 = tail call i32 @llvm.bswap.i32(i32 %or32)
  %uni_pf_addr1 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr1, i32 %16) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !416
  tail call void @arm_heavy_mb() #15
  %uni_pf_addr2 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr2, i32 %16) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !417
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %uni_pf_addr3 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %uni_pf_addr3, i32 %17) #15, !srcloc !289
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #15
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @et131x_get_regs_len(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1024
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_get_regs(ptr noundef readonly %netdev, ptr nocapture noundef writeonly %regs, ptr noundef writeonly %regs_data) #2 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %regs1 = getelementptr i8, ptr %netdev, i32 3476
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #15
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp, align 2, !annotation !286
  %3 = call ptr @memset(ptr %regs_data, i32 0, i32 1024)
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv4 = zext i16 %9 to i32
  %or = or i32 %shl, %conv4
  %or5 = or i32 %or, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or5, ptr %version, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 145
  %13 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.et131x_mii_read.exit_crit_edge, label %if.end.i

entry.et131x_mii_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 8
  %conv.i = trunc i32 %16 to i8
  %call.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i, i8 noundef zeroext 0, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit

et131x_mii_read.exit:                             ; preds = %if.end.i, %entry.et131x_mii_read.exit_crit_edge
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tmp, align 2
  %conv7 = zext i16 %18 to i32
  %19 = ptrtoint ptr %regs_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv7, ptr %regs_data, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i959 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 145
  %22 = ptrtoint ptr %phydev1.i959 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phydev1.i959, align 16
  %tobool.not.i960 = icmp eq ptr %23, null
  br i1 %tobool.not.i960, label %et131x_mii_read.exit.et131x_mii_read.exit965_crit_edge, label %if.end.i964

et131x_mii_read.exit.et131x_mii_read.exit965_crit_edge: ; preds = %et131x_mii_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit965

if.end.i964:                                      ; preds = %et131x_mii_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i961 = getelementptr inbounds %struct.mdio_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %addr.i961 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i961, align 8
  %conv.i962 = trunc i32 %25 to i8
  %call.i963 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i962, i8 noundef zeroext 1, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit965

et131x_mii_read.exit965:                          ; preds = %if.end.i964, %et131x_mii_read.exit.et131x_mii_read.exit965_crit_edge
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tmp, align 2
  %conv9 = zext i16 %27 to i32
  %arrayidx11 = getelementptr i32, ptr %regs_data, i32 1
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv9, ptr %arrayidx11, align 4
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i966 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 145
  %31 = ptrtoint ptr %phydev1.i966 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phydev1.i966, align 16
  %tobool.not.i967 = icmp eq ptr %32, null
  br i1 %tobool.not.i967, label %et131x_mii_read.exit965.et131x_mii_read.exit972_crit_edge, label %if.end.i971

et131x_mii_read.exit965.et131x_mii_read.exit972_crit_edge: ; preds = %et131x_mii_read.exit965
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit972

if.end.i971:                                      ; preds = %et131x_mii_read.exit965
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i968 = getelementptr inbounds %struct.mdio_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %addr.i968 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i968, align 8
  %conv.i969 = trunc i32 %34 to i8
  %call.i970 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i969, i8 noundef zeroext 2, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit972

et131x_mii_read.exit972:                          ; preds = %if.end.i971, %et131x_mii_read.exit965.et131x_mii_read.exit972_crit_edge
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tmp, align 2
  %conv13 = zext i16 %36 to i32
  %arrayidx15 = getelementptr i32, ptr %regs_data, i32 2
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv13, ptr %arrayidx15, align 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i973 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 145
  %40 = ptrtoint ptr %phydev1.i973 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phydev1.i973, align 16
  %tobool.not.i974 = icmp eq ptr %41, null
  br i1 %tobool.not.i974, label %et131x_mii_read.exit972.et131x_mii_read.exit979_crit_edge, label %if.end.i978

et131x_mii_read.exit972.et131x_mii_read.exit979_crit_edge: ; preds = %et131x_mii_read.exit972
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit979

if.end.i978:                                      ; preds = %et131x_mii_read.exit972
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i975 = getelementptr inbounds %struct.mdio_device, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %addr.i975 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i975, align 8
  %conv.i976 = trunc i32 %43 to i8
  %call.i977 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i976, i8 noundef zeroext 3, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit979

et131x_mii_read.exit979:                          ; preds = %if.end.i978, %et131x_mii_read.exit972.et131x_mii_read.exit979_crit_edge
  %44 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tmp, align 2
  %conv17 = zext i16 %45 to i32
  %arrayidx19 = getelementptr i32, ptr %regs_data, i32 3
  %46 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv17, ptr %arrayidx19, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i980 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 145
  %49 = ptrtoint ptr %phydev1.i980 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phydev1.i980, align 16
  %tobool.not.i981 = icmp eq ptr %50, null
  br i1 %tobool.not.i981, label %et131x_mii_read.exit979.et131x_mii_read.exit986_crit_edge, label %if.end.i985

et131x_mii_read.exit979.et131x_mii_read.exit986_crit_edge: ; preds = %et131x_mii_read.exit979
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit986

if.end.i985:                                      ; preds = %et131x_mii_read.exit979
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i982 = getelementptr inbounds %struct.mdio_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %addr.i982 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.i982, align 8
  %conv.i983 = trunc i32 %52 to i8
  %call.i984 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i983, i8 noundef zeroext 4, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit986

et131x_mii_read.exit986:                          ; preds = %if.end.i985, %et131x_mii_read.exit979.et131x_mii_read.exit986_crit_edge
  %53 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tmp, align 2
  %conv21 = zext i16 %54 to i32
  %arrayidx23 = getelementptr i32, ptr %regs_data, i32 4
  %55 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv21, ptr %arrayidx23, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i987 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 145
  %58 = ptrtoint ptr %phydev1.i987 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phydev1.i987, align 16
  %tobool.not.i988 = icmp eq ptr %59, null
  br i1 %tobool.not.i988, label %et131x_mii_read.exit986.et131x_mii_read.exit993_crit_edge, label %if.end.i992

et131x_mii_read.exit986.et131x_mii_read.exit993_crit_edge: ; preds = %et131x_mii_read.exit986
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit993

if.end.i992:                                      ; preds = %et131x_mii_read.exit986
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i989 = getelementptr inbounds %struct.mdio_device, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %addr.i989 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr.i989, align 8
  %conv.i990 = trunc i32 %61 to i8
  %call.i991 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i990, i8 noundef zeroext 5, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit993

et131x_mii_read.exit993:                          ; preds = %if.end.i992, %et131x_mii_read.exit986.et131x_mii_read.exit993_crit_edge
  %62 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tmp, align 2
  %conv25 = zext i16 %63 to i32
  %arrayidx27 = getelementptr i32, ptr %regs_data, i32 5
  %64 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv25, ptr %arrayidx27, align 4
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i994 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 145
  %67 = ptrtoint ptr %phydev1.i994 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phydev1.i994, align 16
  %tobool.not.i995 = icmp eq ptr %68, null
  br i1 %tobool.not.i995, label %et131x_mii_read.exit993.et131x_mii_read.exit1000_crit_edge, label %if.end.i999

et131x_mii_read.exit993.et131x_mii_read.exit1000_crit_edge: ; preds = %et131x_mii_read.exit993
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1000

if.end.i999:                                      ; preds = %et131x_mii_read.exit993
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i996 = getelementptr inbounds %struct.mdio_device, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %addr.i996 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr.i996, align 8
  %conv.i997 = trunc i32 %70 to i8
  %call.i998 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i997, i8 noundef zeroext 6, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1000

et131x_mii_read.exit1000:                         ; preds = %if.end.i999, %et131x_mii_read.exit993.et131x_mii_read.exit1000_crit_edge
  %71 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %tmp, align 2
  %conv29 = zext i16 %72 to i32
  %arrayidx31 = getelementptr i32, ptr %regs_data, i32 6
  %73 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv29, ptr %arrayidx31, align 4
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1001 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 145
  %76 = ptrtoint ptr %phydev1.i1001 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phydev1.i1001, align 16
  %tobool.not.i1002 = icmp eq ptr %77, null
  br i1 %tobool.not.i1002, label %et131x_mii_read.exit1000.et131x_mii_read.exit1007_crit_edge, label %if.end.i1006

et131x_mii_read.exit1000.et131x_mii_read.exit1007_crit_edge: ; preds = %et131x_mii_read.exit1000
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1007

if.end.i1006:                                     ; preds = %et131x_mii_read.exit1000
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1003 = getelementptr inbounds %struct.mdio_device, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %addr.i1003 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i1003, align 8
  %conv.i1004 = trunc i32 %79 to i8
  %call.i1005 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1004, i8 noundef zeroext 7, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1007

et131x_mii_read.exit1007:                         ; preds = %if.end.i1006, %et131x_mii_read.exit1000.et131x_mii_read.exit1007_crit_edge
  %80 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %tmp, align 2
  %conv33 = zext i16 %81 to i32
  %arrayidx35 = getelementptr i32, ptr %regs_data, i32 7
  %82 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv33, ptr %arrayidx35, align 4
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1008 = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 145
  %85 = ptrtoint ptr %phydev1.i1008 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %phydev1.i1008, align 16
  %tobool.not.i1009 = icmp eq ptr %86, null
  br i1 %tobool.not.i1009, label %et131x_mii_read.exit1007.et131x_mii_read.exit1014_crit_edge, label %if.end.i1013

et131x_mii_read.exit1007.et131x_mii_read.exit1014_crit_edge: ; preds = %et131x_mii_read.exit1007
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1014

if.end.i1013:                                     ; preds = %et131x_mii_read.exit1007
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1010 = getelementptr inbounds %struct.mdio_device, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %addr.i1010 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i1010, align 8
  %conv.i1011 = trunc i32 %88 to i8
  %call.i1012 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1011, i8 noundef zeroext 8, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1014

et131x_mii_read.exit1014:                         ; preds = %if.end.i1013, %et131x_mii_read.exit1007.et131x_mii_read.exit1014_crit_edge
  %89 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %tmp, align 2
  %conv37 = zext i16 %90 to i32
  %arrayidx39 = getelementptr i32, ptr %regs_data, i32 8
  %91 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv37, ptr %arrayidx39, align 4
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1015 = getelementptr inbounds %struct.net_device, ptr %93, i32 0, i32 145
  %94 = ptrtoint ptr %phydev1.i1015 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phydev1.i1015, align 16
  %tobool.not.i1016 = icmp eq ptr %95, null
  br i1 %tobool.not.i1016, label %et131x_mii_read.exit1014.et131x_mii_read.exit1021_crit_edge, label %if.end.i1020

et131x_mii_read.exit1014.et131x_mii_read.exit1021_crit_edge: ; preds = %et131x_mii_read.exit1014
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1021

if.end.i1020:                                     ; preds = %et131x_mii_read.exit1014
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1017 = getelementptr inbounds %struct.mdio_device, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %addr.i1017 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr.i1017, align 8
  %conv.i1018 = trunc i32 %97 to i8
  %call.i1019 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1018, i8 noundef zeroext 9, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1021

et131x_mii_read.exit1021:                         ; preds = %if.end.i1020, %et131x_mii_read.exit1014.et131x_mii_read.exit1021_crit_edge
  %98 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %tmp, align 2
  %conv41 = zext i16 %99 to i32
  %arrayidx43 = getelementptr i32, ptr %regs_data, i32 9
  %100 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv41, ptr %arrayidx43, align 4
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1022 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 145
  %103 = ptrtoint ptr %phydev1.i1022 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phydev1.i1022, align 16
  %tobool.not.i1023 = icmp eq ptr %104, null
  br i1 %tobool.not.i1023, label %et131x_mii_read.exit1021.et131x_mii_read.exit1028_crit_edge, label %if.end.i1027

et131x_mii_read.exit1021.et131x_mii_read.exit1028_crit_edge: ; preds = %et131x_mii_read.exit1021
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1028

if.end.i1027:                                     ; preds = %et131x_mii_read.exit1021
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1024 = getelementptr inbounds %struct.mdio_device, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %addr.i1024 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr.i1024, align 8
  %conv.i1025 = trunc i32 %106 to i8
  %call.i1026 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1025, i8 noundef zeroext 10, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1028

et131x_mii_read.exit1028:                         ; preds = %if.end.i1027, %et131x_mii_read.exit1021.et131x_mii_read.exit1028_crit_edge
  %107 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %tmp, align 2
  %conv45 = zext i16 %108 to i32
  %arrayidx47 = getelementptr i32, ptr %regs_data, i32 10
  %109 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv45, ptr %arrayidx47, align 4
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1029 = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 145
  %112 = ptrtoint ptr %phydev1.i1029 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phydev1.i1029, align 16
  %tobool.not.i1030 = icmp eq ptr %113, null
  br i1 %tobool.not.i1030, label %et131x_mii_read.exit1028.et131x_mii_read.exit1035_crit_edge, label %if.end.i1034

et131x_mii_read.exit1028.et131x_mii_read.exit1035_crit_edge: ; preds = %et131x_mii_read.exit1028
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1035

if.end.i1034:                                     ; preds = %et131x_mii_read.exit1028
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1031 = getelementptr inbounds %struct.mdio_device, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %addr.i1031 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i1031, align 8
  %conv.i1032 = trunc i32 %115 to i8
  %call.i1033 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1032, i8 noundef zeroext 11, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1035

et131x_mii_read.exit1035:                         ; preds = %if.end.i1034, %et131x_mii_read.exit1028.et131x_mii_read.exit1035_crit_edge
  %116 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %tmp, align 2
  %conv49 = zext i16 %117 to i32
  %arrayidx51 = getelementptr i32, ptr %regs_data, i32 11
  %118 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv49, ptr %arrayidx51, align 4
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1036 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 145
  %121 = ptrtoint ptr %phydev1.i1036 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %phydev1.i1036, align 16
  %tobool.not.i1037 = icmp eq ptr %122, null
  br i1 %tobool.not.i1037, label %et131x_mii_read.exit1035.et131x_mii_read.exit1042_crit_edge, label %if.end.i1041

et131x_mii_read.exit1035.et131x_mii_read.exit1042_crit_edge: ; preds = %et131x_mii_read.exit1035
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1042

if.end.i1041:                                     ; preds = %et131x_mii_read.exit1035
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1038 = getelementptr inbounds %struct.mdio_device, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %addr.i1038 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr.i1038, align 8
  %conv.i1039 = trunc i32 %124 to i8
  %call.i1040 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1039, i8 noundef zeroext 12, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1042

et131x_mii_read.exit1042:                         ; preds = %if.end.i1041, %et131x_mii_read.exit1035.et131x_mii_read.exit1042_crit_edge
  %125 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %tmp, align 2
  %conv53 = zext i16 %126 to i32
  %arrayidx55 = getelementptr i32, ptr %regs_data, i32 12
  %127 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv53, ptr %arrayidx55, align 4
  %128 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1043 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 145
  %130 = ptrtoint ptr %phydev1.i1043 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phydev1.i1043, align 16
  %tobool.not.i1044 = icmp eq ptr %131, null
  br i1 %tobool.not.i1044, label %et131x_mii_read.exit1042.et131x_mii_read.exit1049_crit_edge, label %if.end.i1048

et131x_mii_read.exit1042.et131x_mii_read.exit1049_crit_edge: ; preds = %et131x_mii_read.exit1042
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1049

if.end.i1048:                                     ; preds = %et131x_mii_read.exit1042
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1045 = getelementptr inbounds %struct.mdio_device, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %addr.i1045 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addr.i1045, align 8
  %conv.i1046 = trunc i32 %133 to i8
  %call.i1047 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1046, i8 noundef zeroext 13, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1049

et131x_mii_read.exit1049:                         ; preds = %if.end.i1048, %et131x_mii_read.exit1042.et131x_mii_read.exit1049_crit_edge
  %134 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %tmp, align 2
  %conv57 = zext i16 %135 to i32
  %arrayidx59 = getelementptr i32, ptr %regs_data, i32 13
  %136 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv57, ptr %arrayidx59, align 4
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1050 = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 145
  %139 = ptrtoint ptr %phydev1.i1050 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %phydev1.i1050, align 16
  %tobool.not.i1051 = icmp eq ptr %140, null
  br i1 %tobool.not.i1051, label %et131x_mii_read.exit1049.et131x_mii_read.exit1056_crit_edge, label %if.end.i1055

et131x_mii_read.exit1049.et131x_mii_read.exit1056_crit_edge: ; preds = %et131x_mii_read.exit1049
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1056

if.end.i1055:                                     ; preds = %et131x_mii_read.exit1049
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1052 = getelementptr inbounds %struct.mdio_device, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %addr.i1052 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %addr.i1052, align 8
  %conv.i1053 = trunc i32 %142 to i8
  %call.i1054 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1053, i8 noundef zeroext 14, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1056

et131x_mii_read.exit1056:                         ; preds = %if.end.i1055, %et131x_mii_read.exit1049.et131x_mii_read.exit1056_crit_edge
  %143 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %tmp, align 2
  %conv61 = zext i16 %144 to i32
  %arrayidx63 = getelementptr i32, ptr %regs_data, i32 14
  %145 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv61, ptr %arrayidx63, align 4
  %146 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1057 = getelementptr inbounds %struct.net_device, ptr %147, i32 0, i32 145
  %148 = ptrtoint ptr %phydev1.i1057 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phydev1.i1057, align 16
  %tobool.not.i1058 = icmp eq ptr %149, null
  br i1 %tobool.not.i1058, label %et131x_mii_read.exit1056.et131x_mii_read.exit1063_crit_edge, label %if.end.i1062

et131x_mii_read.exit1056.et131x_mii_read.exit1063_crit_edge: ; preds = %et131x_mii_read.exit1056
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1063

if.end.i1062:                                     ; preds = %et131x_mii_read.exit1056
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1059 = getelementptr inbounds %struct.mdio_device, ptr %149, i32 0, i32 6
  %150 = ptrtoint ptr %addr.i1059 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr.i1059, align 8
  %conv.i1060 = trunc i32 %151 to i8
  %call.i1061 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1060, i8 noundef zeroext 15, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1063

et131x_mii_read.exit1063:                         ; preds = %if.end.i1062, %et131x_mii_read.exit1056.et131x_mii_read.exit1063_crit_edge
  %152 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %tmp, align 2
  %conv65 = zext i16 %153 to i32
  %arrayidx67 = getelementptr i32, ptr %regs_data, i32 15
  %154 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv65, ptr %arrayidx67, align 4
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1064 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 145
  %157 = ptrtoint ptr %phydev1.i1064 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %phydev1.i1064, align 16
  %tobool.not.i1065 = icmp eq ptr %158, null
  br i1 %tobool.not.i1065, label %et131x_mii_read.exit1063.et131x_mii_read.exit1070_crit_edge, label %if.end.i1069

et131x_mii_read.exit1063.et131x_mii_read.exit1070_crit_edge: ; preds = %et131x_mii_read.exit1063
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1070

if.end.i1069:                                     ; preds = %et131x_mii_read.exit1063
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1066 = getelementptr inbounds %struct.mdio_device, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %addr.i1066 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr.i1066, align 8
  %conv.i1067 = trunc i32 %160 to i8
  %call.i1068 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1067, i8 noundef zeroext 16, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1070

et131x_mii_read.exit1070:                         ; preds = %if.end.i1069, %et131x_mii_read.exit1063.et131x_mii_read.exit1070_crit_edge
  %161 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %tmp, align 2
  %conv69 = zext i16 %162 to i32
  %arrayidx71 = getelementptr i32, ptr %regs_data, i32 16
  %163 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv69, ptr %arrayidx71, align 4
  %164 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1071 = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 145
  %166 = ptrtoint ptr %phydev1.i1071 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %phydev1.i1071, align 16
  %tobool.not.i1072 = icmp eq ptr %167, null
  br i1 %tobool.not.i1072, label %et131x_mii_read.exit1070.et131x_mii_read.exit1077_crit_edge, label %if.end.i1076

et131x_mii_read.exit1070.et131x_mii_read.exit1077_crit_edge: ; preds = %et131x_mii_read.exit1070
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1077

if.end.i1076:                                     ; preds = %et131x_mii_read.exit1070
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1073 = getelementptr inbounds %struct.mdio_device, ptr %167, i32 0, i32 6
  %168 = ptrtoint ptr %addr.i1073 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %addr.i1073, align 8
  %conv.i1074 = trunc i32 %169 to i8
  %call.i1075 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1074, i8 noundef zeroext 17, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1077

et131x_mii_read.exit1077:                         ; preds = %if.end.i1076, %et131x_mii_read.exit1070.et131x_mii_read.exit1077_crit_edge
  %170 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %tmp, align 2
  %conv73 = zext i16 %171 to i32
  %arrayidx75 = getelementptr i32, ptr %regs_data, i32 17
  %172 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv73, ptr %arrayidx75, align 4
  %173 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1078 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 145
  %175 = ptrtoint ptr %phydev1.i1078 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %phydev1.i1078, align 16
  %tobool.not.i1079 = icmp eq ptr %176, null
  br i1 %tobool.not.i1079, label %et131x_mii_read.exit1077.et131x_mii_read.exit1084_crit_edge, label %if.end.i1083

et131x_mii_read.exit1077.et131x_mii_read.exit1084_crit_edge: ; preds = %et131x_mii_read.exit1077
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1084

if.end.i1083:                                     ; preds = %et131x_mii_read.exit1077
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1080 = getelementptr inbounds %struct.mdio_device, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %addr.i1080 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %addr.i1080, align 8
  %conv.i1081 = trunc i32 %178 to i8
  %call.i1082 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1081, i8 noundef zeroext 18, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1084

et131x_mii_read.exit1084:                         ; preds = %if.end.i1083, %et131x_mii_read.exit1077.et131x_mii_read.exit1084_crit_edge
  %179 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %tmp, align 2
  %conv77 = zext i16 %180 to i32
  %arrayidx79 = getelementptr i32, ptr %regs_data, i32 18
  %181 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %conv77, ptr %arrayidx79, align 4
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1085 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 145
  %184 = ptrtoint ptr %phydev1.i1085 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %phydev1.i1085, align 16
  %tobool.not.i1086 = icmp eq ptr %185, null
  br i1 %tobool.not.i1086, label %et131x_mii_read.exit1084.et131x_mii_read.exit1091_crit_edge, label %if.end.i1090

et131x_mii_read.exit1084.et131x_mii_read.exit1091_crit_edge: ; preds = %et131x_mii_read.exit1084
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1091

if.end.i1090:                                     ; preds = %et131x_mii_read.exit1084
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1087 = getelementptr inbounds %struct.mdio_device, ptr %185, i32 0, i32 6
  %186 = ptrtoint ptr %addr.i1087 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %addr.i1087, align 8
  %conv.i1088 = trunc i32 %187 to i8
  %call.i1089 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1088, i8 noundef zeroext 19, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1091

et131x_mii_read.exit1091:                         ; preds = %if.end.i1090, %et131x_mii_read.exit1084.et131x_mii_read.exit1091_crit_edge
  %188 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %tmp, align 2
  %conv81 = zext i16 %189 to i32
  %arrayidx83 = getelementptr i32, ptr %regs_data, i32 19
  %190 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %conv81, ptr %arrayidx83, align 4
  %191 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1092 = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 145
  %193 = ptrtoint ptr %phydev1.i1092 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %phydev1.i1092, align 16
  %tobool.not.i1093 = icmp eq ptr %194, null
  br i1 %tobool.not.i1093, label %et131x_mii_read.exit1091.et131x_mii_read.exit1098_crit_edge, label %if.end.i1097

et131x_mii_read.exit1091.et131x_mii_read.exit1098_crit_edge: ; preds = %et131x_mii_read.exit1091
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1098

if.end.i1097:                                     ; preds = %et131x_mii_read.exit1091
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1094 = getelementptr inbounds %struct.mdio_device, ptr %194, i32 0, i32 6
  %195 = ptrtoint ptr %addr.i1094 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %addr.i1094, align 8
  %conv.i1095 = trunc i32 %196 to i8
  %call.i1096 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1095, i8 noundef zeroext 20, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1098

et131x_mii_read.exit1098:                         ; preds = %if.end.i1097, %et131x_mii_read.exit1091.et131x_mii_read.exit1098_crit_edge
  %197 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %tmp, align 2
  %conv85 = zext i16 %198 to i32
  %arrayidx87 = getelementptr i32, ptr %regs_data, i32 20
  %199 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv85, ptr %arrayidx87, align 4
  %200 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1099 = getelementptr inbounds %struct.net_device, ptr %201, i32 0, i32 145
  %202 = ptrtoint ptr %phydev1.i1099 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %phydev1.i1099, align 16
  %tobool.not.i1100 = icmp eq ptr %203, null
  br i1 %tobool.not.i1100, label %et131x_mii_read.exit1098.et131x_mii_read.exit1105_crit_edge, label %if.end.i1104

et131x_mii_read.exit1098.et131x_mii_read.exit1105_crit_edge: ; preds = %et131x_mii_read.exit1098
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1105

if.end.i1104:                                     ; preds = %et131x_mii_read.exit1098
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1101 = getelementptr inbounds %struct.mdio_device, ptr %203, i32 0, i32 6
  %204 = ptrtoint ptr %addr.i1101 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %addr.i1101, align 8
  %conv.i1102 = trunc i32 %205 to i8
  %call.i1103 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1102, i8 noundef zeroext 21, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1105

et131x_mii_read.exit1105:                         ; preds = %if.end.i1104, %et131x_mii_read.exit1098.et131x_mii_read.exit1105_crit_edge
  %206 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %tmp, align 2
  %conv89 = zext i16 %207 to i32
  %arrayidx91 = getelementptr i32, ptr %regs_data, i32 21
  %208 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv89, ptr %arrayidx91, align 4
  %209 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1106 = getelementptr inbounds %struct.net_device, ptr %210, i32 0, i32 145
  %211 = ptrtoint ptr %phydev1.i1106 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %phydev1.i1106, align 16
  %tobool.not.i1107 = icmp eq ptr %212, null
  br i1 %tobool.not.i1107, label %et131x_mii_read.exit1105.et131x_mii_read.exit1112_crit_edge, label %if.end.i1111

et131x_mii_read.exit1105.et131x_mii_read.exit1112_crit_edge: ; preds = %et131x_mii_read.exit1105
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1112

if.end.i1111:                                     ; preds = %et131x_mii_read.exit1105
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1108 = getelementptr inbounds %struct.mdio_device, ptr %212, i32 0, i32 6
  %213 = ptrtoint ptr %addr.i1108 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %addr.i1108, align 8
  %conv.i1109 = trunc i32 %214 to i8
  %call.i1110 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1109, i8 noundef zeroext 22, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1112

et131x_mii_read.exit1112:                         ; preds = %if.end.i1111, %et131x_mii_read.exit1105.et131x_mii_read.exit1112_crit_edge
  %215 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %tmp, align 2
  %conv93 = zext i16 %216 to i32
  %arrayidx95 = getelementptr i32, ptr %regs_data, i32 22
  %217 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %conv93, ptr %arrayidx95, align 4
  %218 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1113 = getelementptr inbounds %struct.net_device, ptr %219, i32 0, i32 145
  %220 = ptrtoint ptr %phydev1.i1113 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %phydev1.i1113, align 16
  %tobool.not.i1114 = icmp eq ptr %221, null
  br i1 %tobool.not.i1114, label %et131x_mii_read.exit1112.et131x_mii_read.exit1119_crit_edge, label %if.end.i1118

et131x_mii_read.exit1112.et131x_mii_read.exit1119_crit_edge: ; preds = %et131x_mii_read.exit1112
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1119

if.end.i1118:                                     ; preds = %et131x_mii_read.exit1112
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1115 = getelementptr inbounds %struct.mdio_device, ptr %221, i32 0, i32 6
  %222 = ptrtoint ptr %addr.i1115 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %addr.i1115, align 8
  %conv.i1116 = trunc i32 %223 to i8
  %call.i1117 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1116, i8 noundef zeroext 23, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1119

et131x_mii_read.exit1119:                         ; preds = %if.end.i1118, %et131x_mii_read.exit1112.et131x_mii_read.exit1119_crit_edge
  %224 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %tmp, align 2
  %conv97 = zext i16 %225 to i32
  %arrayidx99 = getelementptr i32, ptr %regs_data, i32 23
  %226 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %conv97, ptr %arrayidx99, align 4
  %227 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1120 = getelementptr inbounds %struct.net_device, ptr %228, i32 0, i32 145
  %229 = ptrtoint ptr %phydev1.i1120 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %phydev1.i1120, align 16
  %tobool.not.i1121 = icmp eq ptr %230, null
  br i1 %tobool.not.i1121, label %et131x_mii_read.exit1119.et131x_mii_read.exit1126_crit_edge, label %if.end.i1125

et131x_mii_read.exit1119.et131x_mii_read.exit1126_crit_edge: ; preds = %et131x_mii_read.exit1119
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1126

if.end.i1125:                                     ; preds = %et131x_mii_read.exit1119
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1122 = getelementptr inbounds %struct.mdio_device, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %addr.i1122 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %addr.i1122, align 8
  %conv.i1123 = trunc i32 %232 to i8
  %call.i1124 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1123, i8 noundef zeroext 24, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1126

et131x_mii_read.exit1126:                         ; preds = %if.end.i1125, %et131x_mii_read.exit1119.et131x_mii_read.exit1126_crit_edge
  %233 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %tmp, align 2
  %conv101 = zext i16 %234 to i32
  %arrayidx103 = getelementptr i32, ptr %regs_data, i32 24
  %235 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %conv101, ptr %arrayidx103, align 4
  %236 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1127 = getelementptr inbounds %struct.net_device, ptr %237, i32 0, i32 145
  %238 = ptrtoint ptr %phydev1.i1127 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %phydev1.i1127, align 16
  %tobool.not.i1128 = icmp eq ptr %239, null
  br i1 %tobool.not.i1128, label %et131x_mii_read.exit1126.et131x_mii_read.exit1133_crit_edge, label %if.end.i1132

et131x_mii_read.exit1126.et131x_mii_read.exit1133_crit_edge: ; preds = %et131x_mii_read.exit1126
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1133

if.end.i1132:                                     ; preds = %et131x_mii_read.exit1126
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1129 = getelementptr inbounds %struct.mdio_device, ptr %239, i32 0, i32 6
  %240 = ptrtoint ptr %addr.i1129 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %addr.i1129, align 8
  %conv.i1130 = trunc i32 %241 to i8
  %call.i1131 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1130, i8 noundef zeroext 25, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1133

et131x_mii_read.exit1133:                         ; preds = %if.end.i1132, %et131x_mii_read.exit1126.et131x_mii_read.exit1133_crit_edge
  %242 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %tmp, align 2
  %conv105 = zext i16 %243 to i32
  %arrayidx107 = getelementptr i32, ptr %regs_data, i32 25
  %244 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %conv105, ptr %arrayidx107, align 4
  %245 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1134 = getelementptr inbounds %struct.net_device, ptr %246, i32 0, i32 145
  %247 = ptrtoint ptr %phydev1.i1134 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %phydev1.i1134, align 16
  %tobool.not.i1135 = icmp eq ptr %248, null
  br i1 %tobool.not.i1135, label %et131x_mii_read.exit1133.et131x_mii_read.exit1140_crit_edge, label %if.end.i1139

et131x_mii_read.exit1133.et131x_mii_read.exit1140_crit_edge: ; preds = %et131x_mii_read.exit1133
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1140

if.end.i1139:                                     ; preds = %et131x_mii_read.exit1133
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1136 = getelementptr inbounds %struct.mdio_device, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %addr.i1136 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %addr.i1136, align 8
  %conv.i1137 = trunc i32 %250 to i8
  %call.i1138 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1137, i8 noundef zeroext 26, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1140

et131x_mii_read.exit1140:                         ; preds = %if.end.i1139, %et131x_mii_read.exit1133.et131x_mii_read.exit1140_crit_edge
  %251 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %tmp, align 2
  %conv109 = zext i16 %252 to i32
  %arrayidx111 = getelementptr i32, ptr %regs_data, i32 26
  %253 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %conv109, ptr %arrayidx111, align 4
  %254 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1141 = getelementptr inbounds %struct.net_device, ptr %255, i32 0, i32 145
  %256 = ptrtoint ptr %phydev1.i1141 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %phydev1.i1141, align 16
  %tobool.not.i1142 = icmp eq ptr %257, null
  br i1 %tobool.not.i1142, label %et131x_mii_read.exit1140.et131x_mii_read.exit1147_crit_edge, label %if.end.i1146

et131x_mii_read.exit1140.et131x_mii_read.exit1147_crit_edge: ; preds = %et131x_mii_read.exit1140
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1147

if.end.i1146:                                     ; preds = %et131x_mii_read.exit1140
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1143 = getelementptr inbounds %struct.mdio_device, ptr %257, i32 0, i32 6
  %258 = ptrtoint ptr %addr.i1143 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %addr.i1143, align 8
  %conv.i1144 = trunc i32 %259 to i8
  %call.i1145 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1144, i8 noundef zeroext 27, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1147

et131x_mii_read.exit1147:                         ; preds = %if.end.i1146, %et131x_mii_read.exit1140.et131x_mii_read.exit1147_crit_edge
  %260 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %tmp, align 2
  %conv113 = zext i16 %261 to i32
  %arrayidx115 = getelementptr i32, ptr %regs_data, i32 27
  %262 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %conv113, ptr %arrayidx115, align 4
  %263 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i1148 = getelementptr inbounds %struct.net_device, ptr %264, i32 0, i32 145
  %265 = ptrtoint ptr %phydev1.i1148 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %phydev1.i1148, align 16
  %tobool.not.i1149 = icmp eq ptr %266, null
  br i1 %tobool.not.i1149, label %et131x_mii_read.exit1147.et131x_mii_read.exit1154_crit_edge, label %if.end.i1153

et131x_mii_read.exit1147.et131x_mii_read.exit1154_crit_edge: ; preds = %et131x_mii_read.exit1147
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit1154

if.end.i1153:                                     ; preds = %et131x_mii_read.exit1147
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i1150 = getelementptr inbounds %struct.mdio_device, ptr %266, i32 0, i32 6
  %267 = ptrtoint ptr %addr.i1150 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %addr.i1150, align 8
  %conv.i1151 = trunc i32 %268 to i8
  %call.i1152 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i1151, i8 noundef zeroext 28, ptr noundef nonnull %tmp) #15
  br label %et131x_mii_read.exit1154

et131x_mii_read.exit1154:                         ; preds = %if.end.i1153, %et131x_mii_read.exit1147.et131x_mii_read.exit1154_crit_edge
  %269 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %tmp, align 2
  %conv117 = zext i16 %270 to i32
  %arrayidx119 = getelementptr i32, ptr %regs_data, i32 28
  %271 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %conv117, ptr %arrayidx119, align 4
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !300
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !418
  %arrayidx124 = getelementptr i32, ptr %regs_data, i32 29
  %274 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %arrayidx124, align 4
  %txq_end_addr = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 1
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txq_end_addr) #15, !srcloc !300
  %276 = tail call i32 @llvm.bswap.i32(i32 %275)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !419
  %arrayidx132 = getelementptr i32, ptr %regs_data, i32 30
  %277 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %arrayidx132, align 4
  %rxq_start_addr = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 2
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_start_addr) #15, !srcloc !300
  %279 = tail call i32 @llvm.bswap.i32(i32 %278)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !420
  %arrayidx140 = getelementptr i32, ptr %regs_data, i32 31
  %280 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %279, ptr %arrayidx140, align 4
  %rxq_end_addr = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 3
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_end_addr) #15, !srcloc !300
  %282 = tail call i32 @llvm.bswap.i32(i32 %281)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  %arrayidx148 = getelementptr i32, ptr %regs_data, i32 32
  %283 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %arrayidx148, align 4
  %pm_csr = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 4
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr) #15, !srcloc !300
  %285 = tail call i32 @llvm.bswap.i32(i32 %284)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !422
  %arrayidx156 = getelementptr i32, ptr %regs_data, i32 33
  %286 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %arrayidx156, align 4
  %interrupt_status = getelementptr i8, ptr %netdev, i32 3704
  %287 = ptrtoint ptr %interrupt_status to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %interrupt_status, align 4
  %arrayidx158 = getelementptr i32, ptr %regs_data, i32 34
  %289 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx158, align 4
  %int_mask = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 7
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_mask) #15, !srcloc !300
  %291 = tail call i32 @llvm.bswap.i32(i32 %290)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !423
  %arrayidx166 = getelementptr i32, ptr %regs_data, i32 35
  %292 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %arrayidx166, align 4
  %int_alias_clr_en = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 8
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_alias_clr_en) #15, !srcloc !300
  %294 = tail call i32 @llvm.bswap.i32(i32 %293)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !424
  %arrayidx174 = getelementptr i32, ptr %regs_data, i32 36
  %295 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %arrayidx174, align 4
  %int_status_alias = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 9
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_status_alias) #15, !srcloc !300
  %297 = tail call i32 @llvm.bswap.i32(i32 %296)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !425
  %arrayidx182 = getelementptr i32, ptr %regs_data, i32 37
  %298 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %arrayidx182, align 4
  %sw_reset = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 10
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sw_reset) #15, !srcloc !300
  %300 = tail call i32 @llvm.bswap.i32(i32 %299)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !426
  %arrayidx190 = getelementptr i32, ptr %regs_data, i32 38
  %301 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %arrayidx190, align 4
  %slv_timer = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 11
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %slv_timer) #15, !srcloc !300
  %303 = tail call i32 @llvm.bswap.i32(i32 %302)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !427
  %arrayidx198 = getelementptr i32, ptr %regs_data, i32 39
  %304 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %arrayidx198, align 4
  %msi_config = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 12
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %msi_config) #15, !srcloc !300
  %306 = tail call i32 @llvm.bswap.i32(i32 %305)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !428
  %arrayidx206 = getelementptr i32, ptr %regs_data, i32 40
  %307 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %arrayidx206, align 4
  %loopback = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 13
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %loopback) #15, !srcloc !300
  %309 = tail call i32 @llvm.bswap.i32(i32 %308)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  %arrayidx214 = getelementptr i32, ptr %regs_data, i32 41
  %310 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %arrayidx214, align 4
  %watchdog_timer = getelementptr inbounds %struct.global_regs, ptr %1, i32 0, i32 14
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %watchdog_timer) #15, !srcloc !300
  %312 = tail call i32 @llvm.bswap.i32(i32 %311)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !430
  %arrayidx222 = getelementptr i32, ptr %regs_data, i32 42
  %313 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %312, ptr %arrayidx222, align 4
  %txdma = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txdma) #15, !srcloc !300
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !431
  %arrayidx229 = getelementptr i32, ptr %regs_data, i32 43
  %316 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %arrayidx229, align 4
  %pr_base_hi = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 1
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pr_base_hi) #15, !srcloc !300
  %318 = tail call i32 @llvm.bswap.i32(i32 %317)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !432
  %arrayidx237 = getelementptr i32, ptr %regs_data, i32 44
  %319 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %arrayidx237, align 4
  %pr_base_lo = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 2
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pr_base_lo) #15, !srcloc !300
  %321 = tail call i32 @llvm.bswap.i32(i32 %320)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !433
  %arrayidx245 = getelementptr i32, ptr %regs_data, i32 45
  %322 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %arrayidx245, align 4
  %pr_num_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 3
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pr_num_des) #15, !srcloc !300
  %324 = tail call i32 @llvm.bswap.i32(i32 %323)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !434
  %arrayidx253 = getelementptr i32, ptr %regs_data, i32 46
  %325 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %arrayidx253, align 4
  %txq_wr_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 4
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txq_wr_addr) #15, !srcloc !300
  %327 = tail call i32 @llvm.bswap.i32(i32 %326)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !435
  %arrayidx261 = getelementptr i32, ptr %regs_data, i32 47
  %328 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %327, ptr %arrayidx261, align 4
  %txq_wr_addr_ext = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 5
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txq_wr_addr_ext) #15, !srcloc !300
  %330 = tail call i32 @llvm.bswap.i32(i32 %329)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !436
  %arrayidx269 = getelementptr i32, ptr %regs_data, i32 48
  %331 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %arrayidx269, align 4
  %txq_rd_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 6
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txq_rd_addr) #15, !srcloc !300
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !437
  %arrayidx277 = getelementptr i32, ptr %regs_data, i32 49
  %334 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %arrayidx277, align 4
  %dma_wb_base_hi = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 7
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_wb_base_hi) #15, !srcloc !300
  %336 = tail call i32 @llvm.bswap.i32(i32 %335)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !438
  %arrayidx285 = getelementptr i32, ptr %regs_data, i32 50
  %337 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %336, ptr %arrayidx285, align 4
  %dma_wb_base_lo = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 8
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_wb_base_lo) #15, !srcloc !300
  %339 = tail call i32 @llvm.bswap.i32(i32 %338)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !439
  %arrayidx293 = getelementptr i32, ptr %regs_data, i32 51
  %340 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %arrayidx293, align 4
  %service_request = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 9
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %service_request) #15, !srcloc !300
  %342 = tail call i32 @llvm.bswap.i32(i32 %341)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  %arrayidx301 = getelementptr i32, ptr %regs_data, i32 52
  %343 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %arrayidx301, align 4
  %service_complete = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 10
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %service_complete) #15, !srcloc !300
  %345 = tail call i32 @llvm.bswap.i32(i32 %344)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  %arrayidx309 = getelementptr i32, ptr %regs_data, i32 53
  %346 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %345, ptr %arrayidx309, align 4
  %cache_rd_index = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 11
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cache_rd_index) #15, !srcloc !300
  %348 = tail call i32 @llvm.bswap.i32(i32 %347)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  %arrayidx317 = getelementptr i32, ptr %regs_data, i32 54
  %349 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx317, align 4
  %cache_wr_index = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 12
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cache_wr_index) #15, !srcloc !300
  %351 = tail call i32 @llvm.bswap.i32(i32 %350)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %arrayidx325 = getelementptr i32, ptr %regs_data, i32 55
  %352 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %351, ptr %arrayidx325, align 4
  %tx_dma_error = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 13
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_dma_error) #15, !srcloc !300
  %354 = tail call i32 @llvm.bswap.i32(i32 %353)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  %arrayidx333 = getelementptr i32, ptr %regs_data, i32 56
  %355 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %arrayidx333, align 4
  %desc_abort_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 14
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc_abort_cnt) #15, !srcloc !300
  %357 = tail call i32 @llvm.bswap.i32(i32 %356)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  %arrayidx341 = getelementptr i32, ptr %regs_data, i32 57
  %358 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %arrayidx341, align 4
  %payload_abort_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 15
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %payload_abort_cnt) #15, !srcloc !300
  %360 = tail call i32 @llvm.bswap.i32(i32 %359)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  %arrayidx349 = getelementptr i32, ptr %regs_data, i32 58
  %361 = ptrtoint ptr %arrayidx349 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %360, ptr %arrayidx349, align 4
  %writeback_abort_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 16
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %writeback_abort_cnt) #15, !srcloc !300
  %363 = tail call i32 @llvm.bswap.i32(i32 %362)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  %arrayidx357 = getelementptr i32, ptr %regs_data, i32 59
  %364 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %363, ptr %arrayidx357, align 4
  %desc_timeout_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 17
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc_timeout_cnt) #15, !srcloc !300
  %366 = tail call i32 @llvm.bswap.i32(i32 %365)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  %arrayidx365 = getelementptr i32, ptr %regs_data, i32 60
  %367 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %arrayidx365, align 4
  %payload_timeout_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 18
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %payload_timeout_cnt) #15, !srcloc !300
  %369 = tail call i32 @llvm.bswap.i32(i32 %368)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  %arrayidx373 = getelementptr i32, ptr %regs_data, i32 61
  %370 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %arrayidx373, align 4
  %writeback_timeout_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 19
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %writeback_timeout_cnt) #15, !srcloc !300
  %372 = tail call i32 @llvm.bswap.i32(i32 %371)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !450
  %arrayidx381 = getelementptr i32, ptr %regs_data, i32 62
  %373 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %372, ptr %arrayidx381, align 4
  %desc_error_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 20
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc_error_cnt) #15, !srcloc !300
  %375 = tail call i32 @llvm.bswap.i32(i32 %374)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !451
  %arrayidx389 = getelementptr i32, ptr %regs_data, i32 63
  %376 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %375, ptr %arrayidx389, align 4
  %payload_error_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 21
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %payload_error_cnt) #15, !srcloc !300
  %378 = tail call i32 @llvm.bswap.i32(i32 %377)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  %arrayidx397 = getelementptr i32, ptr %regs_data, i32 64
  %379 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %arrayidx397, align 4
  %writeback_error_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 22
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %writeback_error_cnt) #15, !srcloc !300
  %381 = tail call i32 @llvm.bswap.i32(i32 %380)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !453
  %arrayidx405 = getelementptr i32, ptr %regs_data, i32 65
  %382 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %arrayidx405, align 4
  %dropped_tlp_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 23
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dropped_tlp_cnt) #15, !srcloc !300
  %384 = tail call i32 @llvm.bswap.i32(i32 %383)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !454
  %arrayidx413 = getelementptr i32, ptr %regs_data, i32 66
  %385 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %arrayidx413, align 4
  %new_service_complete = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 24
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %new_service_complete) #15, !srcloc !300
  %387 = tail call i32 @llvm.bswap.i32(i32 %386)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !455
  %arrayidx421 = getelementptr i32, ptr %regs_data, i32 67
  %388 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %387, ptr %arrayidx421, align 4
  %ethernet_packet_cnt = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 2, i32 25
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ethernet_packet_cnt) #15, !srcloc !300
  %390 = tail call i32 @llvm.bswap.i32(i32 %389)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !456
  %arrayidx429 = getelementptr i32, ptr %regs_data, i32 68
  %391 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %arrayidx429, align 4
  %rxdma = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxdma) #15, !srcloc !300
  %393 = tail call i32 @llvm.bswap.i32(i32 %392)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !457
  %arrayidx437 = getelementptr i32, ptr %regs_data, i32 69
  %394 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %arrayidx437, align 4
  %dma_wb_base_hi441 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 2
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_wb_base_hi441) #15, !srcloc !300
  %396 = tail call i32 @llvm.bswap.i32(i32 %395)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !458
  %arrayidx446 = getelementptr i32, ptr %regs_data, i32 70
  %397 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %396, ptr %arrayidx446, align 4
  %dma_wb_base_lo450 = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 1
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma_wb_base_lo450) #15, !srcloc !300
  %399 = tail call i32 @llvm.bswap.i32(i32 %398)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !459
  %arrayidx455 = getelementptr i32, ptr %regs_data, i32 71
  %400 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %399, ptr %arrayidx455, align 4
  %num_pkt_done = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 3
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %num_pkt_done) #15, !srcloc !300
  %402 = tail call i32 @llvm.bswap.i32(i32 %401)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  %arrayidx463 = getelementptr i32, ptr %regs_data, i32 72
  %403 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %402, ptr %arrayidx463, align 4
  %max_pkt_time = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 4
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %max_pkt_time) #15, !srcloc !300
  %405 = tail call i32 @llvm.bswap.i32(i32 %404)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !461
  %arrayidx471 = getelementptr i32, ptr %regs_data, i32 73
  %406 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %arrayidx471, align 4
  %rxq_rd_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 5
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_rd_addr) #15, !srcloc !300
  %408 = tail call i32 @llvm.bswap.i32(i32 %407)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !462
  %arrayidx479 = getelementptr i32, ptr %regs_data, i32 74
  %409 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %arrayidx479, align 4
  %rxq_rd_addr_ext = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 6
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_rd_addr_ext) #15, !srcloc !300
  %411 = tail call i32 @llvm.bswap.i32(i32 %410)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %arrayidx487 = getelementptr i32, ptr %regs_data, i32 75
  %412 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %arrayidx487, align 4
  %rxq_wr_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 7
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxq_wr_addr) #15, !srcloc !300
  %414 = tail call i32 @llvm.bswap.i32(i32 %413)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !464
  %arrayidx495 = getelementptr i32, ptr %regs_data, i32 76
  %415 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %414, ptr %arrayidx495, align 4
  %psr_base_hi = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 9
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_base_hi) #15, !srcloc !300
  %417 = tail call i32 @llvm.bswap.i32(i32 %416)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !465
  %arrayidx503 = getelementptr i32, ptr %regs_data, i32 77
  %418 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 %417, ptr %arrayidx503, align 4
  %psr_base_lo = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 8
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_base_lo) #15, !srcloc !300
  %420 = tail call i32 @llvm.bswap.i32(i32 %419)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !466
  %arrayidx511 = getelementptr i32, ptr %regs_data, i32 78
  %421 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %420, ptr %arrayidx511, align 4
  %psr_num_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 10
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_num_des) #15, !srcloc !300
  %423 = tail call i32 @llvm.bswap.i32(i32 %422)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !467
  %arrayidx519 = getelementptr i32, ptr %regs_data, i32 79
  %424 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %423, ptr %arrayidx519, align 4
  %psr_avail_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 11
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_avail_offset) #15, !srcloc !300
  %426 = tail call i32 @llvm.bswap.i32(i32 %425)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !468
  %arrayidx527 = getelementptr i32, ptr %regs_data, i32 80
  %427 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %426, ptr %arrayidx527, align 4
  %psr_full_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 12
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_full_offset) #15, !srcloc !300
  %429 = tail call i32 @llvm.bswap.i32(i32 %428)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !469
  %arrayidx535 = getelementptr i32, ptr %regs_data, i32 81
  %430 = ptrtoint ptr %arrayidx535 to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %429, ptr %arrayidx535, align 4
  %psr_access_index = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 13
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_access_index) #15, !srcloc !300
  %432 = tail call i32 @llvm.bswap.i32(i32 %431)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !470
  %arrayidx543 = getelementptr i32, ptr %regs_data, i32 82
  %433 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %432, ptr %arrayidx543, align 4
  %psr_min_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 14
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %psr_min_des) #15, !srcloc !300
  %435 = tail call i32 @llvm.bswap.i32(i32 %434)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !471
  %arrayidx551 = getelementptr i32, ptr %regs_data, i32 83
  %436 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %435, ptr %arrayidx551, align 4
  %fbr0_base_lo = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 15
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_base_lo) #15, !srcloc !300
  %438 = tail call i32 @llvm.bswap.i32(i32 %437)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !472
  %arrayidx559 = getelementptr i32, ptr %regs_data, i32 84
  %439 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %438, ptr %arrayidx559, align 4
  %fbr0_base_hi = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 16
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_base_hi) #15, !srcloc !300
  %441 = tail call i32 @llvm.bswap.i32(i32 %440)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !473
  %arrayidx567 = getelementptr i32, ptr %regs_data, i32 85
  %442 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %441, ptr %arrayidx567, align 4
  %fbr0_num_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 17
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_num_des) #15, !srcloc !300
  %444 = tail call i32 @llvm.bswap.i32(i32 %443)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !474
  %arrayidx575 = getelementptr i32, ptr %regs_data, i32 86
  %445 = ptrtoint ptr %arrayidx575 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %444, ptr %arrayidx575, align 4
  %fbr0_avail_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 18
  %446 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_avail_offset) #15, !srcloc !300
  %447 = tail call i32 @llvm.bswap.i32(i32 %446)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !475
  %arrayidx583 = getelementptr i32, ptr %regs_data, i32 87
  %448 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %447, ptr %arrayidx583, align 4
  %fbr0_full_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 19
  %449 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_full_offset) #15, !srcloc !300
  %450 = tail call i32 @llvm.bswap.i32(i32 %449)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  %arrayidx591 = getelementptr i32, ptr %regs_data, i32 88
  %451 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %450, ptr %arrayidx591, align 4
  %fbr0_rd_index = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 20
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_rd_index) #15, !srcloc !300
  %453 = tail call i32 @llvm.bswap.i32(i32 %452)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !477
  %arrayidx599 = getelementptr i32, ptr %regs_data, i32 89
  %454 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %453, ptr %arrayidx599, align 4
  %fbr0_min_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 21
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr0_min_des) #15, !srcloc !300
  %456 = tail call i32 @llvm.bswap.i32(i32 %455)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !478
  %arrayidx607 = getelementptr i32, ptr %regs_data, i32 90
  %457 = ptrtoint ptr %arrayidx607 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %arrayidx607, align 4
  %fbr1_base_lo = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 22
  %458 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_base_lo) #15, !srcloc !300
  %459 = tail call i32 @llvm.bswap.i32(i32 %458)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !479
  %arrayidx615 = getelementptr i32, ptr %regs_data, i32 91
  %460 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %459, ptr %arrayidx615, align 4
  %fbr1_base_hi = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 23
  %461 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_base_hi) #15, !srcloc !300
  %462 = tail call i32 @llvm.bswap.i32(i32 %461)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !480
  %arrayidx623 = getelementptr i32, ptr %regs_data, i32 92
  %463 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %462, ptr %arrayidx623, align 4
  %fbr1_num_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 24
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_num_des) #15, !srcloc !300
  %465 = tail call i32 @llvm.bswap.i32(i32 %464)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !481
  %arrayidx631 = getelementptr i32, ptr %regs_data, i32 93
  %466 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %arrayidx631, align 4
  %fbr1_avail_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 25
  %467 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_avail_offset) #15, !srcloc !300
  %468 = tail call i32 @llvm.bswap.i32(i32 %467)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !482
  %arrayidx639 = getelementptr i32, ptr %regs_data, i32 94
  %469 = ptrtoint ptr %arrayidx639 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %468, ptr %arrayidx639, align 4
  %fbr1_full_offset = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 26
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_full_offset) #15, !srcloc !300
  %471 = tail call i32 @llvm.bswap.i32(i32 %470)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !483
  %arrayidx647 = getelementptr i32, ptr %regs_data, i32 95
  %472 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %471, ptr %arrayidx647, align 4
  %fbr1_rd_index = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 27
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_rd_index) #15, !srcloc !300
  %474 = tail call i32 @llvm.bswap.i32(i32 %473)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !484
  %arrayidx655 = getelementptr i32, ptr %regs_data, i32 96
  %475 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %474, ptr %arrayidx655, align 4
  %fbr1_min_des = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 4, i32 28
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fbr1_min_des) #15, !srcloc !300
  %477 = tail call i32 @llvm.bswap.i32(i32 %476)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !485
  %arrayidx663 = getelementptr i32, ptr %regs_data, i32 97
  %478 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %477, ptr %arrayidx663, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et131x_phy_mii_read(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %addr, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mii_mgmt_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_addr) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  %mii_mgmt_cmd = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 9
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_cmd) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !488
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !489
  tail call void @arm_heavy_mb() #15
  %conv = zext i8 %addr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv12 = zext i8 %reg to i32
  %or = or i32 %shl, %conv12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_addr, i32 %4) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 16777216) #15, !srcloc !289
  %mii_mgmt_indicator = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 13
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %entry
  %delay.0 = phi i32 [ 0, %entry ], [ %inc, %do.body18.do.body18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 10737400) #15
  %inc = add nuw nsw i32 %delay.0, 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_indicator) #15, !srcloc !300
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !491
  %and = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %delay.0)
  %cmp = icmp ult i32 %delay.0, 49
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body18.do.body18_crit_edge, label %do.end26

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

do.end26:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp27 = icmp eq i32 %inc, 50
  br i1 %cmp27, label %do.end31, label %if.end

do.end31:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv12) #18
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.75, i32 noundef %7) #18
  br label %do.body45

if.end:                                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  %mii_mgmt_stat = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_stat) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !492
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %conv44 = trunc i32 %14 to i16
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv44, ptr %value, align 2
  br label %do.body45

do.body45:                                        ; preds = %if.end, %do.end31
  %status.0 = phi i32 [ -5, %do.end31 ], [ 0, %if.end ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !493
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !494
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_addr, i32 %2) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !495
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 %3) #15, !srcloc !289
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eeprom_read(ptr nocapture noundef readonly %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %pdata) unnamed_addr #2 align 64 {
entry:
  %reg.i1 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #15
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !286
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %for.cond.i.eeprom_wait_ready.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.i.eeprom_wait_ready.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 176, ptr noundef nonnull %reg.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.eeprom_wait_ready.exit.thread_crit_edge

for.body.i.eeprom_wait_ready.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %4, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 12288
  br i1 %cmp1.i, label %eeprom_wait_ready.exit, label %for.cond.i

eeprom_wait_ready.exit.thread:                    ; preds = %for.body.i.eeprom_wait_ready.exit.thread_crit_edge, %for.cond.i.eeprom_wait_ready.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #15
  br label %cleanup

eeprom_wait_ready.exit:                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #15
  %call2 = call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 177, i8 noundef zeroext -128) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %eeprom_wait_ready.exit.cleanup_crit_edge

eeprom_wait_ready.exit.cleanup_crit_edge:         ; preds = %eeprom_wait_ready.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %eeprom_wait_ready.exit
  %call5 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 172, i32 noundef %addr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i1) #15
  %5 = ptrtoint ptr %reg.i1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i1, align 4, !annotation !286
  br label %for.body.i8

for.cond.i4:                                      ; preds = %if.end.i11
  %inc.i2 = add nuw nsw i32 %i.011.i5, 1
  %exitcond.not.i3 = icmp eq i32 %inc.i2, 1000
  br i1 %exitcond.not.i3, label %for.cond.i4.eeprom_wait_ready.exit15.thread_crit_edge, label %for.cond.i4.for.body.i8_crit_edge

for.cond.i4.for.body.i8_crit_edge:                ; preds = %for.cond.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i8

for.cond.i4.eeprom_wait_ready.exit15.thread_crit_edge: ; preds = %for.cond.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit15.thread

for.body.i8:                                      ; preds = %for.cond.i4.for.body.i8_crit_edge, %if.end8
  %i.011.i5 = phi i32 [ 0, %if.end8 ], [ %inc.i2, %for.cond.i4.for.body.i8_crit_edge ]
  %call.i6 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 176, ptr noundef nonnull %reg.i1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %if.end.i11, label %for.body.i8.eeprom_wait_ready.exit15.thread_crit_edge

for.body.i8.eeprom_wait_ready.exit15.thread_crit_edge: ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #17
  br label %eeprom_wait_ready.exit15.thread

if.end.i11:                                       ; preds = %for.body.i8
  %6 = ptrtoint ptr %reg.i1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i1, align 4
  %and.i9 = and i32 %7, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i9)
  %cmp1.i10 = icmp eq i32 %and.i9, 12288
  br i1 %cmp1.i10, label %eeprom_wait_ready.exit15, label %for.cond.i4

eeprom_wait_ready.exit15.thread:                  ; preds = %for.body.i8.eeprom_wait_ready.exit15.thread_crit_edge, %for.cond.i4.eeprom_wait_ready.exit15.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1) #15
  br label %cleanup

eeprom_wait_ready.exit15:                         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i1) #15
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %pdata, align 1
  br label %cleanup

cleanup:                                          ; preds = %eeprom_wait_ready.exit15, %eeprom_wait_ready.exit15.thread, %if.end4.cleanup_crit_edge, %eeprom_wait_ready.exit.cleanup_crit_edge, %eeprom_wait_ready.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_send_packet(ptr noundef %adapter, ptr noundef %tcb) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %skb = getelementptr inbounds %struct.tcb, ptr %tcb, i32 0, i32 3
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %tx_bytes, align 4
  %tx_desc_ring = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 6
  %index_start = getelementptr inbounds %struct.tcb, ptr %tcb, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %index = getelementptr inbounds %struct.tcb, ptr %tcb, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %8 = ptrtoint ptr %tx_desc_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_desc_ring, align 4
  %10 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index_start, align 4
  %and = and i32 %11, 1023
  %add.ptr = getelementptr %struct.tx_desc, ptr %9, i32 %and
  %addr_lo = getelementptr %struct.tx_desc, ptr %9, i32 %and, i32 1
  %12 = ptrtoint ptr %addr_lo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_lo, align 4
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %len_vlan = getelementptr %struct.tx_desc, ptr %9, i32 %and, i32 2
  %16 = ptrtoint ptr %len_vlan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len_vlan, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %13, i32 noundef %17, i32 noundef 1, i32 noundef 0) #15
  %18 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index_start, align 4
  %add.i = add i32 %19, 1
  %and.i = and i32 %add.i, 1023
  %and1.i = and i32 %19, 1024
  %or.i = or i32 %and.i, %and1.i
  %and8 = and i32 %add.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp.not = icmp eq i32 %and8, 0
  %xor = xor i32 %and1.i, 1024
  %spec.select = select i1 %cmp.not, i32 %or.i, i32 %xor
  %20 = ptrtoint ptr %index_start to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %index_start, align 4
  %21 = ptrtoint ptr %tx_desc_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_desc_ring, align 4
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %and15 = and i32 %24, 1023
  %add.ptr16 = getelementptr %struct.tx_desc, ptr %22, i32 %and15
  %cmp17.not = icmp eq ptr %add.ptr, %add.ptr16
  br i1 %cmp17.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %26, i32 noundef 1) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %entry.if.end20_crit_edge
  %27 = call ptr @memset(ptr %tcb, i32 0, i32 24)
  %tcb_ready_qlock = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 11
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_ready_qlock) #15
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tcb_qtail = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 2
  %30 = ptrtoint ptr %tcb_qtail to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tcb_qtail, align 4
  %tobool30.not = icmp eq ptr %31, null
  %tcb_qhead = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 1
  %tcb_qhead.sink = select i1 %tobool30.not, ptr %tcb_qhead, ptr %31
  %32 = ptrtoint ptr %tcb_qhead.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tcb, ptr %tcb_qhead.sink, align 4
  store ptr %tcb, ptr %tcb_qtail, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_ready_qlock, i32 noundef %call25) #15
  %used = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 22, i32 5
  %33 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp36 = icmp slt i32 %34, 0
  br i1 %cmp36, label %do.end49, label %if.end20.if.end55_crit_edge, !prof !298

if.end20.if.end55_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

do.end49:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2687, i32 noundef 9, ptr noundef null) #15
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end20.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @et131x_mii_write(ptr nocapture noundef readonly %adapter, i8 noundef zeroext %addr, i8 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %tmp29 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mii_mgmt_addr = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_addr) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !496
  %mii_mgmt_cmd = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 9
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_cmd) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !499
  tail call void @arm_heavy_mb() #15
  %conv = zext i8 %addr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv12 = zext i8 %reg to i32
  %or = or i32 %shl, %conv12
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_addr, i32 %4) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !500
  tail call void @arm_heavy_mb() #15
  %conv17 = zext i16 %value to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  %mii_mgmt_ctrl = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_ctrl, i32 %5) #15, !srcloc !289
  %mii_mgmt_indicator = getelementptr inbounds %struct.address_map, ptr %1, i32 0, i32 10, i32 13
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %entry
  %delay.0 = phi i32 [ 0, %entry ], [ %inc, %do.body18.do.body18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #15
  %inc = add nuw nsw i32 %delay.0, 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_indicator) #15, !srcloc !300
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !501
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay.0)
  %cmp = icmp ult i32 %delay.0, 99
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %do.body18.do.body18_crit_edge, label %do.end26

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

do.end26:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %cmp27 = icmp eq i32 %inc, 100
  br i1 %cmp27, label %if.then, label %do.end26.do.body51_crit_edge

do.end26.do.body51_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body51

if.then:                                          ; preds = %do.end26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp29) #15
  %pdev = getelementptr inbounds %struct.et131x_adapter, ptr %adapter, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %conv12) #18
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38, ptr noundef nonnull @.str.75, i32 noundef %8) #18
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mii_mgmt_cmd) #15, !srcloc !300
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !502
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev43, ptr noundef nonnull @.str.139, i32 noundef %16) #18
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 145
  %19 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then.et131x_mii_read.exit_crit_edge, label %if.end.i

if.then.et131x_mii_read.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 8
  %conv.i = trunc i32 %22 to i8
  %call.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %adapter, i8 noundef zeroext %conv.i, i8 noundef zeroext %reg, ptr noundef nonnull %tmp29) #15
  br label %et131x_mii_read.exit

et131x_mii_read.exit:                             ; preds = %if.end.i, %if.then.et131x_mii_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp29) #15
  br label %do.body51

do.body51:                                        ; preds = %et131x_mii_read.exit, %do.end26.do.body51_crit_edge
  %status.0 = phi i32 [ -5, %et131x_mii_read.exit ], [ 0, %do.end26.do.body51_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !503
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_addr, i32 %2) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mii_mgmt_cmd, i32 %3) #15, !srcloc !289
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @et131x_adjust_link(ptr noundef %netdev) #2 align 64 {
entry:
  %reg.i52.i = alloca i16, align 2
  %reg.i.i = alloca i16, align 2
  %register18 = alloca i16, align 2
  %reg = alloca i16, align 2
  %register1869 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %link2 = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %link2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %link2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bf.cast)
  %cmp = icmp eq i32 %4, %bf.cast
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %regs.i = getelementptr i8, ptr %netdev, i32 3476
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %pm_csr.i = getelementptr inbounds %struct.global_regs, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm_csr.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %8 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et1310_disable_phy_coma(ptr noundef %add.ptr.i)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load10 = load i16, ptr %link, align 8
  %bf.lshr11 = lshr i16 %bf.load10, 2
  %bf.clear12 = and i16 %bf.lshr11, 1
  %bf.cast13 = zext i16 %bf.clear12 to i32
  %10 = ptrtoint ptr %link2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast13, ptr %link2, align 4
  tail call void @phy_print_status(ptr noundef nonnull %1) #15
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load16 = load i16, ptr %link, align 8
  %12 = and i16 %bf.load16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool20.not = icmp eq i16 %12, 0
  %boot_coma64 = getelementptr i8, ptr %netdev, i32 3540
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end8
  %13 = ptrtoint ptr %boot_coma64 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 20, ptr %boot_coma64, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp22 = icmp eq i32 %15, 10
  br i1 %cmp22, label %if.then23, label %if.then21.if.end46_crit_edge

if.then21.if.end46_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then23:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %register18) #15
  %16 = ptrtoint ptr %register18 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %register18, align 2, !annotation !286
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 145
  %19 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then23.et131x_mii_read.exit_crit_edge, label %if.end.i

if.then23.et131x_mii_read.exit_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit

if.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 8
  %conv.i = trunc i32 %22 to i8
  %call.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i, i8 noundef zeroext 18, ptr noundef nonnull %register18) #15
  br label %et131x_mii_read.exit

et131x_mii_read.exit:                             ; preds = %if.end.i, %if.then23.et131x_mii_read.exit_crit_edge
  %addr = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 8
  %conv = trunc i32 %24 to i8
  %25 = ptrtoint ptr %register18 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %register18, align 2
  %27 = or i16 %26, 4
  %call27 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext 18, i16 noundef zeroext %27)
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr, align 8
  %conv30 = trunc i32 %29 to i8
  %30 = or i16 %26, -31742
  %call34 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv30, i8 noundef zeroext 16, i16 noundef zeroext %30)
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 8
  %conv37 = trunc i32 %32 to i8
  %33 = or i16 %26, 511
  %call41 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv37, i8 noundef zeroext 17, i16 noundef zeroext %33)
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr, align 8
  %conv44 = trunc i32 %35 to i8
  %call45 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv44, i8 noundef zeroext 18, i16 noundef zeroext %26)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %register18) #15
  br label %if.end46

if.end46:                                         ; preds = %et131x_mii_read.exit, %if.then21.if.end46_crit_edge
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i143 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 145
  %38 = ptrtoint ptr %phydev1.i143 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phydev1.i143, align 16
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp eq i32 %41, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i = getelementptr i8, ptr %netdev, i32 3488
  %42 = ptrtoint ptr %flow.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %flow.i, align 8
  br label %et1310_config_flow_control.exit

if.else.i:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i.i) #15
  %43 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %reg.i.i, align 2, !annotation !286
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.else.i.et1310_phy_read_mii_bit.exit.i_crit_edge, label %if.end.i.i.i

if.else.i.et1310_phy_read_mii_bit.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et1310_phy_read_mii_bit.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %39, i32 0, i32 6
  %44 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i.i.i, align 8
  %conv.i.i.i = trunc i32 %45 to i8
  %call.i.i.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext 5, ptr noundef nonnull %reg.i.i) #15
  br label %et1310_phy_read_mii_bit.exit.i

et1310_phy_read_mii_bit.exit.i:                   ; preds = %if.end.i.i.i, %if.else.i.et1310_phy_read_mii_bit.exit.i_crit_edge
  %46 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %reg.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i52.i) #15
  %48 = ptrtoint ptr %reg.i52.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %reg.i52.i, align 2, !annotation !286
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i.i53.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 145
  %51 = ptrtoint ptr %phydev1.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phydev1.i.i53.i, align 16
  %tobool.not.i.i54.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i54.i, label %et1310_phy_read_mii_bit.exit.i.et1310_phy_read_mii_bit.exit63.i_crit_edge, label %if.end.i.i58.i

et1310_phy_read_mii_bit.exit.i.et1310_phy_read_mii_bit.exit63.i_crit_edge: ; preds = %et1310_phy_read_mii_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et1310_phy_read_mii_bit.exit63.i

if.end.i.i58.i:                                   ; preds = %et1310_phy_read_mii_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i.i55.i = getelementptr inbounds %struct.mdio_device, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %addr.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr.i.i55.i, align 8
  %conv.i.i56.i = trunc i32 %54 to i8
  %call.i.i57.i = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i.i56.i, i8 noundef zeroext 5, ptr noundef nonnull %reg.i52.i) #15
  br label %et1310_phy_read_mii_bit.exit63.i

et1310_phy_read_mii_bit.exit63.i:                 ; preds = %if.end.i.i58.i, %et1310_phy_read_mii_bit.exit.i.et1310_phy_read_mii_bit.exit63.i_crit_edge
  %55 = ptrtoint ptr %reg.i52.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %reg.i52.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i52.i) #15
  %57 = and i16 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i144 = icmp eq i16 %57, 0
  %58 = and i16 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool23.not.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i144, label %land.lhs.true22.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %et1310_phy_read_mii_bit.exit63.i
  %wanted_flow12.i = getelementptr i8, ptr %netdev, i32 3480
  %59 = ptrtoint ptr %wanted_flow12.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %wanted_flow12.i, align 8
  br i1 %tobool23.not.i, label %if.then11.i, label %if.then4.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %flow5.i = getelementptr i8, ptr %netdev, i32 3488
  %61 = ptrtoint ptr %flow5.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %flow5.i, align 8
  br label %et1310_config_flow_control.exit

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp14.i = icmp eq i8 %60, 0
  %flow17.i = getelementptr i8, ptr %netdev, i32 3488
  br i1 %cmp14.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %flow17.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %flow17.i, align 8
  br label %et1310_config_flow_control.exit

if.else18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %flow17.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %flow17.i, align 8
  br label %et1310_config_flow_control.exit

land.lhs.true22.i:                                ; preds = %et1310_phy_read_mii_bit.exit63.i
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else26.i

if.then24.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #17
  %flow25.i = getelementptr i8, ptr %netdev, i32 3488
  %64 = ptrtoint ptr %flow25.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %flow25.i, align 8
  br label %et1310_config_flow_control.exit

if.else26.i:                                      ; preds = %land.lhs.true22.i
  %wanted_flow27.i = getelementptr i8, ptr %netdev, i32 3480
  %65 = ptrtoint ptr %wanted_flow27.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wanted_flow27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp29.i = icmp eq i8 %66, 0
  %flow32.i = getelementptr i8, ptr %netdev, i32 3488
  br i1 %cmp29.i, label %if.then31.i, label %if.else33.i

if.then31.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %flow32.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %flow32.i, align 8
  br label %et1310_config_flow_control.exit

if.else33.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %flow32.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %flow32.i, align 8
  br label %et1310_config_flow_control.exit

et1310_config_flow_control.exit:                  ; preds = %if.else33.i, %if.then31.i, %if.then24.i, %if.else18.i, %if.then16.i, %if.then4.i, %if.then.i
  %69 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %70)
  %cmp48 = icmp eq i32 %70, 1000
  br i1 %cmp48, label %land.lhs.true, label %et1310_config_flow_control.exit.if.end63_crit_edge

et1310_config_flow_control.exit.if.end63_crit_edge: ; preds = %et1310_config_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

land.lhs.true:                                    ; preds = %et1310_config_flow_control.exit
  %registry_jumbo_packet = getelementptr i8, ptr %netdev, i32 3484
  %71 = ptrtoint ptr %registry_jumbo_packet to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %registry_jumbo_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %72)
  %cmp50 = icmp ugt i32 %72, 2048
  br i1 %cmp50, label %if.then52, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then52:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #15
  %73 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %reg, align 2, !annotation !286
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i145 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 145
  %76 = ptrtoint ptr %phydev1.i145 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phydev1.i145, align 16
  %tobool.not.i146 = icmp eq ptr %77, null
  br i1 %tobool.not.i146, label %if.then52.et131x_mii_read.exit151_crit_edge, label %if.end.i150

if.then52.et131x_mii_read.exit151_crit_edge:      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit151

if.end.i150:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i147 = getelementptr inbounds %struct.mdio_device, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %addr.i147 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i147, align 8
  %conv.i148 = trunc i32 %79 to i8
  %call.i149 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i148, i8 noundef zeroext 22, ptr noundef nonnull %reg) #15
  br label %et131x_mii_read.exit151

et131x_mii_read.exit151:                          ; preds = %if.end.i150, %if.then52.et131x_mii_read.exit151_crit_edge
  %80 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %reg, align 2
  %82 = and i16 %81, -12289
  %83 = or i16 %82, 8192
  %addr60 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %addr60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr60, align 8
  %conv61 = trunc i32 %85 to i8
  %call62 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv61, i8 noundef zeroext 22, i16 noundef zeroext %83)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #15
  br label %if.end63

if.end63:                                         ; preds = %et131x_mii_read.exit151, %land.lhs.true.if.end63_crit_edge, %et1310_config_flow_control.exit.if.end63_crit_edge
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i152 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 145
  %88 = ptrtoint ptr %phydev1.i152 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %phydev1.i152, align 16
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %speed.i, align 8
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %91, label %if.end63.et131x_set_rx_dma_timer.exit_crit_edge [
    i32 100, label %if.end63.do.body.i_crit_edge
    i32 10, label %if.end63.do.body.i_crit_edge183
  ]

if.end63.do.body.i_crit_edge183:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end63.do.body.i_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end63.et131x_set_rx_dma_timer.exit_crit_edge:  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_set_rx_dma_timer.exit

do.body.i:                                        ; preds = %if.end63.do.body.i_crit_edge, %if.end63.do.body.i_crit_edge183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !506
  tail call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %max_pkt_time.i = getelementptr inbounds %struct.address_map, ptr %94, i32 0, i32 4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %max_pkt_time.i, i32 0) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !507
  tail call void @arm_heavy_mb() #15
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %num_pkt_done.i = getelementptr inbounds %struct.address_map, ptr %96, i32 0, i32 4, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %num_pkt_done.i, i32 16777216) #15, !srcloc !289
  br label %et131x_set_rx_dma_timer.exit

et131x_set_rx_dma_timer.exit:                     ; preds = %do.body.i, %if.end63.et131x_set_rx_dma_timer.exit_crit_edge
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  %mac1.i = getelementptr inbounds %struct.address_map, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 8
  %phydev2.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 145
  %101 = ptrtoint ptr %phydev2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phydev2.i, align 16
  %txmac.i = getelementptr inbounds %struct.address_map, ptr %98, i32 0, i32 6
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txmac.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !508
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !509
  %cfg214.i = getelementptr inbounds %struct.address_map, ptr %98, i32 0, i32 10, i32 1
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cfg214.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !510
  %if_ctrl.i = getelementptr inbounds %struct.address_map, ptr %98, i32 0, i32 10, i32 14
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %if_ctrl.i) #15, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !511
  %speed.i156 = getelementptr inbounds %struct.phy_device, ptr %102, i32 0, i32 8
  %107 = ptrtoint ptr %speed.i156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %speed.i156, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %108)
  %cmp.i157 = icmp eq i32 %108, 1000
  %masksel.i = select i1 %cmp.i157, i32 0, i32 16777216
  %cfg2.0.v.i = select i1 %cmp.i157, i32 512, i32 256
  %109 = and i32 %104, -889257985
  %110 = or i32 %109, 352321536
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #15
  %flow.i158 = getelementptr i8, ptr %netdev, i32 3488
  %112 = ptrtoint ptr %flow.i158 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %flow.i158, align 8
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %113, label %et131x_set_rx_dma_timer.exit.do.body.i160_crit_edge [
    i8 2, label %et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge
    i8 0, label %et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge184
  ]

et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge184: ; preds = %et131x_set_rx_dma_timer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i

et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge: ; preds = %et131x_set_rx_dma_timer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i

et131x_set_rx_dma_timer.exit.do.body.i160_crit_edge: ; preds = %et131x_set_rx_dma_timer.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i160

if.then34.i:                                      ; preds = %et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge, %et131x_set_rx_dma_timer.exit.if.then34.i_crit_edge184
  %or35.i = or i32 %111, 32
  br label %do.body.i160

do.body.i160:                                     ; preds = %if.then34.i, %et131x_set_rx_dma_timer.exit.do.body.i160_crit_edge
  %cfg1.0.i = phi i32 [ %or35.i, %if.then34.i ], [ %111, %et131x_set_rx_dma_timer.exit.do.body.i160_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !512
  tail call void @arm_heavy_mb() #15
  %115 = tail call i32 @llvm.bswap.i32(i32 %cfg1.0.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac1.i, i32 %115) #15, !srcloc !289
  %116 = and i32 %105, -930283521
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #15
  %or41.i = or i32 %cfg2.0.v.i, %117
  %duplex.i159 = getelementptr inbounds %struct.phy_device, ptr %102, i32 0, i32 9
  %118 = ptrtoint ptr %duplex.i159 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %duplex.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp44.i = icmp eq i32 %119, 1
  %spec.select.v.i = select i1 %cmp44.i, i32 28695, i32 28694
  %spec.select.i = or i32 %or41.i, %spec.select.v.i
  %120 = and i32 %106, -6
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #15
  %and49.i = or i32 %masksel.i, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp51.i = icmp eq i32 %119, 0
  %masksel134.i = select i1 %cmp51.i, i32 67108864, i32 0
  %ifctrl.1.i = or i32 %and49.i, %masksel134.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !513
  tail call void @arm_heavy_mb() #15
  %122 = tail call i32 @llvm.bswap.i32(i32 %ifctrl.1.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %if_ctrl.i, i32 %122) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !514
  tail call void @arm_heavy_mb() #15
  %123 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cfg214.i, i32 %123) #15, !srcloc !289
  br label %do.body64.i

do.body64.i:                                      ; preds = %do.body64.i.do.body64.i_crit_edge, %do.body.i160
  %delay.0.i = phi i32 [ 0, %do.body.i160 ], [ %inc.i, %do.body64.i.do.body64.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 2147480) #15
  %inc.i = add nuw nsw i32 %delay.0.i, 1
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mac1.i) #15, !srcloc !300
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !515
  %and72.i = and i32 %126, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and72.i)
  %cmp73.not.i = icmp ne i32 %and72.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay.0.i)
  %cmp75.i = icmp ult i32 %delay.0.i, 99
  %or.cond.i = select i1 %cmp73.not.i, i1 %cmp75.i, i1 false
  br i1 %or.cond.i, label %do.body64.i.do.body64.i_crit_edge, label %do.end77.i

do.body64.i.do.body64.i_crit_edge:                ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body64.i

do.end77.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %cmp78.i = icmp eq i32 %inc.i, 100
  br i1 %cmp78.i, label %do.end83.i, label %do.end77.i.if.end84.i_crit_edge

do.end77.i.if.end84.i_crit_edge:                  ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84.i

do.end83.i:                                       ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %127 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.146, i32 noundef %126) #18
  br label %if.end84.i

if.end84.i:                                       ; preds = %do.end83.i, %do.end77.i.if.end84.i_crit_edge
  %129 = or i32 %103, 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !516
  tail call void @arm_heavy_mb() #15
  %130 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i, align 4
  %txmac90.i = getelementptr inbounds %struct.address_map, ptr %131, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txmac90.i, i32 %129) #15, !srcloc !289
  %flags.i = getelementptr i8, ptr %netdev, i32 2544
  %132 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i, align 8
  %and92.i = and i32 %133, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool.not.i161 = icmp eq i32 %and92.i, 0
  br i1 %tobool.not.i161, label %if.end84.i.cleanup_crit_edge, label %if.then93.i

if.end84.i.cleanup_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then93.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %134 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i, align 4
  %txdma.i.i = getelementptr inbounds %struct.address_map, ptr %135, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i.i, i32 65536) #15, !srcloc !289
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %136 = ptrtoint ptr %boot_coma64 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %boot_coma64, align 4
  %speed65 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %137 = ptrtoint ptr %speed65 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %speed65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %138)
  %cmp66 = icmp eq i32 %138, 10
  br i1 %cmp66, label %if.then68, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then68:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %register1869) #15
  %139 = ptrtoint ptr %register1869 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -1, ptr %register1869, align 2, !annotation !286
  %140 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr.i, align 8
  %phydev1.i162 = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 145
  %142 = ptrtoint ptr %phydev1.i162 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %phydev1.i162, align 16
  %tobool.not.i163 = icmp eq ptr %143, null
  br i1 %tobool.not.i163, label %if.then68.et131x_mii_read.exit168_crit_edge, label %if.end.i167

if.then68.et131x_mii_read.exit168_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_mii_read.exit168

if.end.i167:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  %addr.i164 = getelementptr inbounds %struct.mdio_device, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %addr.i164 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %addr.i164, align 8
  %conv.i165 = trunc i32 %145 to i8
  %call.i166 = call fastcc i32 @et131x_phy_mii_read(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i165, i8 noundef zeroext 18, ptr noundef nonnull %register1869) #15
  br label %et131x_mii_read.exit168

et131x_mii_read.exit168:                          ; preds = %if.end.i167, %if.then68.et131x_mii_read.exit168_crit_edge
  %addr72 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %146 = ptrtoint ptr %addr72 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %addr72, align 8
  %conv73 = trunc i32 %147 to i8
  %148 = ptrtoint ptr %register1869 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %register1869, align 2
  %150 = or i16 %149, 4
  %call77 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv73, i8 noundef zeroext 18, i16 noundef zeroext %150)
  %151 = ptrtoint ptr %addr72 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %addr72, align 8
  %conv80 = trunc i32 %152 to i8
  %153 = or i16 %149, -31742
  %call84 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv80, i8 noundef zeroext 16, i16 noundef zeroext %153)
  %154 = ptrtoint ptr %addr72 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %addr72, align 8
  %conv87 = trunc i32 %155 to i8
  %156 = or i16 %149, 511
  %call91 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv87, i8 noundef zeroext 17, i16 noundef zeroext %156)
  %157 = ptrtoint ptr %addr72 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %addr72, align 8
  %conv94 = trunc i32 %158 to i8
  %call95 = tail call fastcc i32 @et131x_mii_write(ptr noundef %add.ptr.i, i8 noundef zeroext %conv94, i8 noundef zeroext 18, i16 noundef zeroext %149)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %register1869) #15
  br label %if.end96

if.end96:                                         ; preds = %et131x_mii_read.exit168, %if.else.if.end96_crit_edge
  %tcb_send_qlock.i = getelementptr i8, ptr %netdev, i32 2568
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock.i) #15
  %send_head.i = getelementptr i8, ptr %netdev, i32 3556
  %159 = ptrtoint ptr %send_head.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %tcb.075.i = load ptr, ptr %send_head.i, align 4
  %cmp6.not76.not.i = icmp eq ptr %tcb.075.i, null
  br i1 %cmp6.not76.not.i, label %if.end96.et131x_free_busy_send_packets.exit_crit_edge, label %while.body.lr.ph.i

if.end96.et131x_free_busy_send_packets.exit_crit_edge: ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_free_busy_send_packets.exit

while.body.lr.ph.i:                               ; preds = %if.end96
  %send_tail.i = getelementptr i8, ptr %netdev, i32 3560
  %used.i = getelementptr i8, ptr %netdev, i32 3564
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i172.while.body.i_crit_edge, %while.body.lr.ph.i
  %tcb.079.i = phi ptr [ %tcb.075.i, %while.body.lr.ph.i ], [ %tcb.0.i, %if.end.i172.while.body.i_crit_edge ]
  %flags.078.i = phi i32 [ %call3.i, %while.body.lr.ph.i ], [ %call24.i, %if.end.i172.while.body.i_crit_edge ]
  %freed.077.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i170, %if.end.i172.while.body.i_crit_edge ]
  %160 = ptrtoint ptr %tcb.079.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tcb.079.i, align 4
  %162 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %send_head.i, align 4
  %cmp12.i = icmp eq ptr %161, null
  br i1 %cmp12.i, label %if.then.i169, label %while.body.i.if.end.i172_crit_edge

while.body.i.if.end.i172_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i172

if.then.i169:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %163 = ptrtoint ptr %send_tail.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %send_tail.i, align 4
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i169, %while.body.i.if.end.i172_crit_edge
  %164 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %used.i, align 4
  %dec.i = add i32 %165, -1
  store i32 %dec.i, ptr %used.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock.i, i32 noundef %flags.078.i) #15
  %inc.i170 = add nuw nsw i32 %freed.077.i, 1
  tail call fastcc void @free_send_packet(ptr noundef %add.ptr.i, ptr noundef nonnull %tcb.079.i) #15
  %call24.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tcb_send_qlock.i) #15
  %166 = ptrtoint ptr %send_head.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %tcb.0.i = load ptr, ptr %send_head.i, align 4
  %cmp6.not.i = icmp ne ptr %tcb.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %freed.077.i)
  %cmp8.i = icmp ult i32 %freed.077.i, 63
  %or.cond.i171 = select i1 %cmp6.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i171, label %if.end.i172.while.body.i_crit_edge, label %while.end.i

if.end.i172.while.body.i_crit_edge:               ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i170)
  %phi.cmp.i = icmp eq i32 %inc.i170, 64
  br i1 %phi.cmp.i, label %do.end42.i, label %while.end.i.et131x_free_busy_send_packets.exit_crit_edge, !prof !298

while.end.i.et131x_free_busy_send_packets.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_free_busy_send_packets.exit

do.end42.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2723, i32 noundef 9, ptr noundef null) #15
  br label %et131x_free_busy_send_packets.exit

et131x_free_busy_send_packets.exit:               ; preds = %do.end42.i, %while.end.i.et131x_free_busy_send_packets.exit_crit_edge, %if.end96.et131x_free_busy_send_packets.exit_crit_edge
  %flags.0.lcssa83.i = phi i32 [ %call24.i, %do.end42.i ], [ %call24.i, %while.end.i.et131x_free_busy_send_packets.exit_crit_edge ], [ %call3.i, %if.end96.et131x_free_busy_send_packets.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tcb_send_qlock.i, i32 noundef %flags.0.lcssa83.i) #15
  %used57.i = getelementptr i8, ptr %netdev, i32 3564
  %167 = ptrtoint ptr %used57.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %used57.i, align 4
  %tx_ring1.i = getelementptr i8, ptr %netdev, i32 3544
  %168 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %tx_ring1.i, align 4
  %tcb_qhead.i = getelementptr i8, ptr %netdev, i32 3548
  %170 = ptrtoint ptr %tcb_qhead.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %tcb_qhead.i, align 4
  %171 = call ptr @memset(ptr %169, i32 0, i32 1536)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %et131x_free_busy_send_packets.exit
  %tcb.017.i = phi ptr [ %169, %et131x_free_busy_send_packets.exit ], [ %add.ptr.i173, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %et131x_free_busy_send_packets.exit ], [ %inc.i174, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i173 = getelementptr %struct.tcb, ptr %tcb.017.i, i32 1
  %172 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr.i173, ptr %tcb.017.i, align 4
  %inc.i174 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i174, 64
  br i1 %exitcond.not.i, label %et131x_init_send.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

et131x_init_send.exit:                            ; preds = %for.body.i
  %tcb_qtail.i = getelementptr i8, ptr %netdev, i32 3552
  %173 = ptrtoint ptr %tcb_qtail.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %tcb.017.i, ptr %tcb_qtail.i, align 4
  %174 = ptrtoint ptr %tcb.017.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %tcb.017.i, align 4
  %175 = ptrtoint ptr %send_head.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %send_head.i, align 4
  %send_tail.i176 = getelementptr i8, ptr %netdev, i32 3560
  %176 = ptrtoint ptr %send_tail.i176 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %send_tail.i176, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  tail call void @arm_heavy_mb() #15
  %177 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i, align 4
  %mac.i = getelementptr inbounds %struct.address_map, ptr %178, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac.i, i32 4032) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  tail call void @arm_heavy_mb() #15
  %179 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i, align 4
  %sw_reset.i = getelementptr inbounds %struct.global_regs, ptr %180, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_reset.i, i32 2130706432) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  tail call void @arm_heavy_mb() #15
  %181 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i, align 4
  %mac9.i = getelementptr inbounds %struct.address_map, ptr %182, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac9.i, i32 3840) #15, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %183 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i, align 4
  %mac15.i = getelementptr inbounds %struct.address_map, ptr %184, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac15.i, i32 0) #15, !srcloc !289
  tail call fastcc void @et131x_adapter_setup(ptr noundef %add.ptr.i)
  tail call fastcc void @et131x_disable_txrx(ptr noundef %netdev)
  tail call fastcc void @et131x_rx_dma_enable(ptr noundef %add.ptr.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %185 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i, align 4
  %txdma.i.i178 = getelementptr inbounds %struct.address_map, ptr %186, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txdma.i.i178, i32 65536) #15, !srcloc !289
  %flags.i179 = getelementptr i8, ptr %netdev, i32 2544
  %187 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags.i179, align 8
  %and.i = and i32 %188, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i180 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i180, label %et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge, label %if.then.i181

et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge: ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_enable_txrx.exit

if.then.i181:                                     ; preds = %et131x_init_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  %flow.i.i = getelementptr i8, ptr %netdev, i32 3488
  %189 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %flow.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %190)
  %switch.i.i = icmp ult i8 %190, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 -82153, i32 -81961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @arm_heavy_mb() #15
  %191 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %192 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i, align 4
  %int_mask.i.i = getelementptr inbounds %struct.global_regs, ptr %193, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i.i, i32 %191) #15, !srcloc !289
  br label %et131x_enable_txrx.exit

et131x_enable_txrx.exit:                          ; preds = %if.then.i181, %et131x_init_send.exit.et131x_enable_txrx.exit_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %194 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %195, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %et131x_enable_txrx.exit, %if.then93.i, %if.end84.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %1) #15
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.not.i.i.i = icmp eq i32 %8, %6
  br i1 %cmp.not.i.i.i, label %if.then.et131x_down.exit_crit_edge, label %do.body5.i.i.i

if.then.et131x_down.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %et131x_down.exit

do.body5.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %6, ptr %trans_start.i.i.i, align 16
  br label %et131x_down.exit

et131x_down.exit:                                 ; preds = %do.body5.i.i.i, %if.then.et131x_down.exit_crit_edge
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %10 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_stop(ptr noundef %11) #15
  tail call fastcc void @et131x_disable_txrx(ptr noundef %1) #15
  %call2 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #15
  br label %if.end

if.end:                                           ; preds = %et131x_down.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @et131x_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_restore_state(ptr noundef %add.ptr) #15
  tail call fastcc void @et131x_up(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !275}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @__UNIQUE_ID_author355, !1, !"__UNIQUE_ID_author355", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 84, i32 1}
!2 = !{ptr @__UNIQUE_ID_author356, !3, !"__UNIQUE_ID_author356", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 85, i32 1}
!4 = !{ptr @__UNIQUE_ID_file357, !5, !"__UNIQUE_ID_file357", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 86, i32 1}
!6 = !{ptr @__UNIQUE_ID_license358, !5, !"__UNIQUE_ID_license358", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description359, !8, !"__UNIQUE_ID_description359", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 87, i32 1}
!9 = !{ptr @__initcall__kmod_et131x__361_4059_et131x_driver_init6, !10, !"__initcall__kmod_et131x__361_4059_et131x_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 4059, i32 1}
!11 = !{ptr @__exitcall_et131x_driver_exit, !10, !"__exitcall_et131x_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @et131x_driver, !14, !"et131x_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 4051, i32 26}
!15 = !{ptr @et131x_pci_table, !16, !"et131x_pci_table", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 4044, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3897, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @et131x_pci_setup._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @et131x_pci_setup._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3903, i32 3}
!27 = !{ptr @et131x_pci_setup._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @et131x_pci_setup._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3910, i32 3}
!31 = !{ptr @et131x_pci_setup._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @et131x_pci_setup._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3919, i32 3}
!35 = !{ptr @et131x_pci_setup._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @et131x_pci_setup._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3925, i32 3}
!39 = !{ptr @et131x_pci_setup._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @et131x_pci_setup._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3947, i32 3}
!43 = !{ptr @et131x_pci_setup._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @et131x_pci_setup._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3960, i32 3}
!47 = !{ptr @et131x_pci_setup._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @et131x_pci_setup._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3974, i32 3}
!51 = !{ptr @et131x_pci_setup._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @et131x_pci_setup._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3978, i32 27}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3979, i32 50}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3987, i32 3}
!59 = !{ptr @et131x_pci_setup._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @et131x_pci_setup._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3993, i32 3}
!63 = !{ptr @et131x_pci_setup._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @et131x_pci_setup._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 4012, i32 3}
!67 = !{ptr @et131x_pci_setup._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @et131x_pci_setup._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @et131x_netdev_ops, !70, !"et131x_netdev_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3875, i32 36}
!71 = !{ptr @et131x_open.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3611, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3619, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @et131x_open._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @et131x_open._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 781, i32 4}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @et131x_rx_dma_disable._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @et131x_rx_dma_disable._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3420, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @et131x_isr._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @et131x_isr._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3478, i32 3}
!92 = !{ptr @et131x_isr._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @et131x_isr._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3488, i32 3}
!96 = !{ptr @et131x_isr._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @et131x_isr._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3502, i32 3}
!100 = !{ptr @et131x_isr._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @et131x_isr._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3515, i32 3}
!104 = !{ptr @et131x_isr._entry.55, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @et131x_isr._entry_ptr.57, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3519, i32 3}
!108 = !{ptr @et131x_isr._entry.58, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @et131x_isr._entry_ptr.60, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 763, i32 4}
!112 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @et131x_rx_dma_enable._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @et131x_rx_dma_enable._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3859, i32 3}
!121 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @et131x_change_mtu._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @et131x_change_mtu._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3816, i32 3}
!126 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @et131x_tx_timeout._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @et131x_tx_timeout._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3829, i32 4}
!131 = !{ptr @et131x_tx_timeout._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @et131x_tx_timeout._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @et131x_ethtool_ops, !134, !"et131x_ethtool_ops", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2961, i32 33}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1201, i32 3}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @et131x_phy_mii_read._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @et131x_phy_mii_read._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1203, i32 3}
!142 = !{ptr @et131x_phy_mii_read._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @et131x_phy_mii_read._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"default_mac", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3271, i32 18}
!146 = !{ptr @et131x_adapter_init.__key, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3279, i32 2}
!148 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @et131x_adapter_init.__key.78, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3280, i32 2}
!151 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @et131x_adapter_init.__key.80, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3281, i32 2}
!154 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3008, i32 3}
!157 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @et131x_pci_init._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @et131x_pci_init._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @et131x_pci_init.acknak, !161, !"acknak", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3016, i32 20}
!162 = !{ptr @et131x_pci_init.replay, !163, !"replay", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3017, i32 20}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3021, i32 4}
!166 = !{ptr @et131x_pci_init._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @et131x_pci_init._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3027, i32 4}
!170 = !{ptr @et131x_pci_init._entry.87, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @et131x_pci_init._entry_ptr.89, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.91, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3037, i32 3}
!174 = !{ptr @et131x_pci_init._entry.90, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @et131x_pci_init._entry_ptr.92, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.94, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3044, i32 3}
!178 = !{ptr @et131x_pci_init._entry.93, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @et131x_pci_init._entry_ptr.95, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3060, i32 4}
!182 = !{ptr @et131x_pci_init._entry.96, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @et131x_pci_init._entry_ptr.98, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 683, i32 3}
!186 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @et131x_init_eeprom._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @et131x_init_eeprom._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @et131x_init_eeprom.eedata, !190, !"eedata", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 696, i32 20}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 707, i32 4}
!193 = !{ptr @et131x_init_eeprom._entry.101, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @et131x_init_eeprom._entry_ptr.103, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3126, i32 3}
!197 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @et131x_adapter_memory_alloc._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @et131x_adapter_memory_alloc._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3134, i32 3}
!202 = !{ptr @et131x_adapter_memory_alloc._entry.106, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @et131x_adapter_memory_alloc._entry_ptr.108, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.110, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3142, i32 3}
!206 = !{ptr @et131x_adapter_memory_alloc._entry.109, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @et131x_adapter_memory_alloc._entry_ptr.111, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2371, i32 3}
!210 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @et131x_tx_dma_memory_alloc._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @et131x_tx_dma_memory_alloc._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.115, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2381, i32 3}
!215 = !{ptr @et131x_tx_dma_memory_alloc._entry.114, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @et131x_tx_dma_memory_alloc._entry_ptr.116, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1922, i32 4}
!219 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @et131x_rx_dma_memory_alloc._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @et131x_rx_dma_memory_alloc._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1942, i32 5}
!224 = !{ptr @et131x_rx_dma_memory_alloc._entry.119, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @et131x_rx_dma_memory_alloc._entry_ptr.121, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.123, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1978, i32 3}
!228 = !{ptr @et131x_rx_dma_memory_alloc._entry.122, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @et131x_rx_dma_memory_alloc._entry_ptr.124, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1989, i32 3}
!232 = !{ptr @et131x_rx_dma_memory_alloc._entry.125, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @et131x_rx_dma_memory_alloc._entry_ptr.127, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.128, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2329, i32 4}
!236 = !{ptr @.str.129, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @et131x_handle_recv_pkts._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @et131x_handle_recv_pkts._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2235, i32 3}
!241 = !{ptr @.str.131, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @nic_rx_pkts._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @nic_rx_pkts._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.132, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 2160, i32 3}
!246 = !{ptr @.str.133, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @nic_return_rfd._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @nic_return_rfd._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.134, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1273, i32 3}
!251 = !{ptr @.str.135, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @et131x_mii_write._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @et131x_mii_write._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @et131x_mii_write._entry.136, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1275, i32 3}
!256 = !{ptr @et131x_mii_write._entry_ptr.137, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 1277, i32 3}
!259 = !{ptr @et131x_mii_write._entry.138, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @et131x_mii_write._entry_ptr.140, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.141, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3244, i32 3}
!263 = !{ptr @.str.142, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @et131x_mii_probe._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @et131x_mii_probe._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.144, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3252, i32 3}
!268 = !{ptr @et131x_mii_probe._entry.143, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @et131x_mii_probe._entry_ptr.145, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.146, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 925, i32 3}
!272 = !{ptr @.str.147, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @et1310_config_mac_regs2._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @et1310_config_mac_regs2._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @et131x_pm_ops, !276, !"et131x_pm_ops", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/agere/et131x.c", i32 3355, i32 8}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"auto-init"}
!287 = !{i8 0, i8 2}
!288 = !{i64 2157183679}
!289 = !{i64 5097520}
!290 = !{i64 2157034835}
!291 = !{i64 2157035252}
!292 = !{i64 2157035706}
!293 = !{i64 2157036107}
!294 = !{i64 2157036976}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{i64 2157054998}
!297 = !{i64 2157051892}
!298 = !{!"branch_weights", i32 1, i32 2000}
!299 = !{i64 2157061436}
!300 = !{i64 5097938}
!301 = !{i64 2157074199}
!302 = !{i64 2157036538}
!303 = !{i64 2157018500}
!304 = !{i64 2157018901}
!305 = !{i64 2157019320}
!306 = !{i64 2157019733}
!307 = !{i64 2157020567}
!308 = !{i64 2157021390}
!309 = !{i64 2157021788}
!310 = !{i64 2157022167}
!311 = !{i64 2157022552}
!312 = !{i64 2156966206}
!313 = !{i64 2156966804}
!314 = !{i64 2156967193}
!315 = !{i64 2156967598}
!316 = !{i64 2156967996}
!317 = !{i64 2156968425}
!318 = !{i64 2156968848}
!319 = !{i64 2156969293}
!320 = !{i64 2156969773}
!321 = !{i64 2157034368}
!322 = !{i64 2156980811}
!323 = !{i64 2156981188}
!324 = !{i64 2156981560}
!325 = !{i64 2156981933}
!326 = !{i64 2156982297}
!327 = !{i64 2156982673}
!328 = !{i64 2156983064}
!329 = !{i64 2156983451}
!330 = !{i64 2156983847}
!331 = !{i64 2156984234}
!332 = !{i64 2156984621}
!333 = !{i64 2156985844}
!334 = !{i64 2156986230}
!335 = !{i64 2156986612}
!336 = !{i64 2156987004}
!337 = !{i64 2156987407}
!338 = !{i64 2156987809}
!339 = !{i64 2156988229}
!340 = !{i64 2156961284}
!341 = !{i64 2156962021}
!342 = !{i64 2156963086}
!343 = !{i64 2157023043}
!344 = !{i64 2157023681}
!345 = !{i64 2157024321}
!346 = !{i64 2157024968}
!347 = !{i64 2157025532}
!348 = !{i64 2157025995}
!349 = !{i64 2157026669}
!350 = !{i64 2157026917}
!351 = !{i64 2157027823}
!352 = !{i64 2157028404}
!353 = !{i64 2157028913}
!354 = !{i64 2157029347}
!355 = !{i64 2157029772}
!356 = !{i64 2157030254}
!357 = !{i64 2157030647}
!358 = !{i64 2157031138}
!359 = !{i64 2157031771}
!360 = !{i64 2157032311}
!361 = !{i64 2157032812}
!362 = !{i64 2157033438}
!363 = !{i64 2157033968}
!364 = !{i64 2156989405}
!365 = !{i64 2156989789}
!366 = !{i64 2156990222}
!367 = !{i64 2157039677}
!368 = !{i64 2157039915}
!369 = !{i64 2156965190}
!370 = !{i64 2157068930}
!371 = !{i64 2157069420}
!372 = !{i64 2157158290}
!373 = !{i64 2157158824}
!374 = !{i64 2157159082}
!375 = !{i64 2157159505}
!376 = !{i64 2156977087}
!377 = !{i64 2157009321}
!378 = !{i64 2157009859}
!379 = !{i64 2157010361}
!380 = !{i64 2157010907}
!381 = !{i64 2157011437}
!382 = !{i64 2157011971}
!383 = !{i64 2157012501}
!384 = !{i64 2157013011}
!385 = !{i64 2157013517}
!386 = !{i64 2157014007}
!387 = !{i64 2157014541}
!388 = !{i64 2157015043}
!389 = !{i64 2157015569}
!390 = !{i64 2157016103}
!391 = !{i64 2157038280}
!392 = !{i64 2157038524}
!393 = !{i64 2157038950}
!394 = !{i64 2157139990}
!395 = !{i64 2157140293}
!396 = !{i64 2157141070}
!397 = !{i64 2157143041}
!398 = !{i64 2157145487}
!399 = !{i64 2157147608}
!400 = !{i64 2157151740}
!401 = !{i64 2157154016}
!402 = !{i64 2157154522}
!403 = !{i64 2157016657}
!404 = !{i64 2157017211}
!405 = !{i64 2157017449}
!406 = !{i64 2157017900}
!407 = !{i64 2157037450}
!408 = !{i64 2156957432}
!409 = !{i64 2156958133}
!410 = !{i64 2156959198}
!411 = !{i64 2156977959}
!412 = !{i64 2156978360}
!413 = !{i64 2156978761}
!414 = !{i64 2156979162}
!415 = !{i64 2156979590}
!416 = !{i64 2156980001}
!417 = !{i64 2156980412}
!418 = !{i64 2157076152}
!419 = !{i64 2157076678}
!420 = !{i64 2157077212}
!421 = !{i64 2157077738}
!422 = !{i64 2157078240}
!423 = !{i64 2157078750}
!424 = !{i64 2157079292}
!425 = !{i64 2157079834}
!426 = !{i64 2157080344}
!427 = !{i64 2157080858}
!428 = !{i64 2157081376}
!429 = !{i64 2157081886}
!430 = !{i64 2157082420}
!431 = !{i64 2157082906}
!432 = !{i64 2157083420}
!433 = !{i64 2157083934}
!434 = !{i64 2157084448}
!435 = !{i64 2157084966}
!436 = !{i64 2157085500}
!437 = !{i64 2157086018}
!438 = !{i64 2157086548}
!439 = !{i64 2157087078}
!440 = !{i64 2157087612}
!441 = !{i64 2157088150}
!442 = !{i64 2157088680}
!443 = !{i64 2157089210}
!444 = !{i64 2157089732}
!445 = !{i64 2157090262}
!446 = !{i64 2157090804}
!447 = !{i64 2157091354}
!448 = !{i64 2157091892}
!449 = !{i64 2157092442}
!450 = !{i64 2157093000}
!451 = !{i64 2157093530}
!452 = !{i64 2157094072}
!453 = !{i64 2157094622}
!454 = !{i64 2157095156}
!455 = !{i64 2157095710}
!456 = !{i64 2157096260}
!457 = !{i64 2157096746}
!458 = !{i64 2157097276}
!459 = !{i64 2157097806}
!460 = !{i64 2157098328}
!461 = !{i64 2157098850}
!462 = !{i64 2157099368}
!463 = !{i64 2157099902}
!464 = !{i64 2157100420}
!465 = !{i64 2157100938}
!466 = !{i64 2157101456}
!467 = !{i64 2157101974}
!468 = !{i64 2157102512}
!469 = !{i64 2157103046}
!470 = !{i64 2157103584}
!471 = !{i64 2157104102}
!472 = !{i64 2157104624}
!473 = !{i64 2157105146}
!474 = !{i64 2157105668}
!475 = !{i64 2157106210}
!476 = !{i64 2157106748}
!477 = !{i64 2157107274}
!478 = !{i64 2157107796}
!479 = !{i64 2157108318}
!480 = !{i64 2157108840}
!481 = !{i64 2157109362}
!482 = !{i64 2157109904}
!483 = !{i64 2157110442}
!484 = !{i64 2157110968}
!485 = !{i64 2157111490}
!486 = !{i64 2156990920}
!487 = !{i64 2156991410}
!488 = !{i64 2156991623}
!489 = !{i64 2156992061}
!490 = !{i64 2156992519}
!491 = !{i64 2156993751}
!492 = !{i64 2156997559}
!493 = !{i64 2156997779}
!494 = !{i64 2156998170}
!495 = !{i64 2156998581}
!496 = !{i64 2156999265}
!497 = !{i64 2156999755}
!498 = !{i64 2156999968}
!499 = !{i64 2157000406}
!500 = !{i64 2157000867}
!501 = !{i64 2157002106}
!502 = !{i64 2157007561}
!503 = !{i64 2157007776}
!504 = !{i64 2157008167}
!505 = !{i64 2157008578}
!506 = !{i64 2157051032}
!507 = !{i64 2157051447}
!508 = !{i64 2156970457}
!509 = !{i64 2156970915}
!510 = !{i64 2156971373}
!511 = !{i64 2156971843}
!512 = !{i64 2156972167}
!513 = !{i64 2156972626}
!514 = !{i64 2156973014}
!515 = !{i64 2156974185}
!516 = !{i64 2156976359}
