; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sun/sungem.c_pt.bc'
source_filename = "../drivers/net/ethernet/sun/sungem.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mii_phy_def = type { i32, i32, i32, i32, ptr, ptr }
%struct.mii_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gem = type { ptr, i32, i32, i32, i32, i8, i32, i32, i32, %struct.napi_struct, i32, i32, i32, i32, i32, i64, i16, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, %struct.work_struct, i32, i32, %struct.mii_phy, i32, ptr, [128 x ptr], [128 x ptr], i32, ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_phy = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.gem_txd = type { i64, i64 }
%struct.gem_init_block = type { [128 x %struct.gem_txd], [128 x %struct.gem_rxd] }
%struct.gem_rxd = type { i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.120, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.120 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.anon.53 = type { i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.105, %union.anon.106 }
%union.anon.105 = type { [16 x i8] }
%union.anon.106 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author343 = internal constant [49 x i8] c"sungem.author=David S. Miller <davem@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [48 x i8] c"sungem.description=Sun GEM Gbit ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [44 x i8] c"sungem.file=drivers/net/ethernet/sun/sungem\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [19 x i8] c"sungem.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sungem__349_3047_gem_driver_init6 = internal global ptr @gem_driver_init, section ".initcall6.init", align 4
@gem_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @gem_pci_tbl, ptr @gem_init_one, ptr @gem_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gem_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gem_driver_exit = internal global ptr @gem_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sungem\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gem\00", [28 x i8] zeroinitializer }, align 32
@gem_pci_tbl = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4238, i32 11181, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4238, i32 4353, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 36, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 50, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 76, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 81, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4203, i32 107, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@gem_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gem_suspend, ptr @gem_resume, ptr @gem_suspend, ptr @gem_resume, ptr @gem_suspend, ptr @gem_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gem_init_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gem_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gem_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/sun/sungem.c\00", [62 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr = internal global ptr @gem_init_one._entry, section ".printk_index", align 4
@version = internal global { [50 x i8], [46 x i8] } { [50 x i8] c"sungem.c:v1.0 David S. Miller <davem@redhat.com>\0A\00", [46 x i8] zeroinitializer }, align 32
@gem_init_one._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sungem: Cannot enable MMIO operation, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.7 = internal global ptr @gem_init_one._entry.5, section ".printk_index", align 4
@gem_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sungem: No usable DMA configuration, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.10 = internal global ptr @gem_init_one._entry.8, section ".printk_index", align 4
@gem_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013sungem: Cannot find proper PCI device base address, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.13 = internal global ptr @gem_init_one._entry.11, section ".printk_index", align 4
@gem_init_one._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 2911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sungem: Cannot obtain PCI resources, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.16 = internal global ptr @gem_init_one._entry.14, section ".printk_index", align 4
@gem_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&gp->link_timer)\00", [46 x i8] zeroinitializer }, align 32
@gem_init_one.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&gp->reset_task)\00", [61 x i8] zeroinitializer }, align 32
@gem_init_one._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 2930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sungem: Cannot map device registers, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.22 = internal global ptr @gem_init_one._entry.20, section ".printk_index", align 4
@gem_init_one._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 2974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013sungem: Cannot allocate init block, aborting\0A\00", [48 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.25 = internal global ptr @gem_init_one._entry.23, section ".printk_index", align 4
@gem_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gem_open, ptr @gem_close, ptr @gem_start_xmit, ptr null, ptr null, ptr null, ptr @gem_set_multicast, ptr @gem_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @gem_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @gem_change_mtu, ptr null, ptr @gem_tx_timeout, ptr null, ptr null, ptr null, ptr @gem_get_stats, ptr null, ptr null, ptr @gem_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gem_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @gem_get_drvinfo, ptr null, ptr null, ptr @gem_get_wol, ptr @gem_set_wol, ptr @gem_get_msglevel, ptr @gem_set_msglevel, ptr @gem_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gem_get_link_ksettings, ptr @gem_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@gem_init_one._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 3004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013sungem: Cannot register net device, aborting\0A\00", [48 x i8] zeroinitializer }, align 32
@gem_init_one._entry_ptr.28 = internal global ptr @gem_init_one._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Sun GEM (PCI) 10/100/1000BaseT Ethernet %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Got link after fallback, retrying autoneg once...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link down\0A\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link is up at %d Mbps, %s-duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Pause is enabled (rxfifo: %d off: %d on: %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pause is disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Autoneg failed again, keeping forced mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switching to forced 100bt\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"switching to forced 10bt\0A\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SW reset is ghetto\0A\00", [44 x i8] zeroinitializer }, align 32
@gem_check_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013sungem: RIO GEM lacks MII phy, mif_cfg[%08x]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gem_check_invariants\00", [43 x i8] zeroinitializer }, align 32
@gem_check_invariants._entry_ptr = internal global ptr @gem_check_invariants._entry, section ".printk_index", align 4
@gem_check_invariants._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sungem: RIO MII phy will not respond\0A\00", [56 x i8] zeroinitializer }, align 32
@gem_check_invariants._entry_ptr.45 = internal global ptr @gem_check_invariants._entry.43, section ".printk_index", align 4
@gem_check_invariants._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.4, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sungem: GEM has bogus fifo sizes tx(%d) rx(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@gem_check_invariants._entry_ptr.48 = internal global ptr @gem_check_invariants._entry.46, section ".printk_index", align 4
@gem_check_invariants._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.4, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013sungem: RIO GEM has bogus fifo sizes tx(%d) rx(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@gem_check_invariants._entry_ptr.51 = internal global ptr @gem_check_invariants._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable chip on PCI bus !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to request irq !\0A\00", [39 x i8] zeroinitializer }, align 32
@gem_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: gem_interrupt() gem_status: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gem_interrupt\00", [18 x i8] zeroinitializer }, align 32
@gem_interrupt._entry_ptr = internal global ptr @gem_interrupt._entry, section ".printk_index", align 4
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"GMAC PHY not responding !\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Found %s PHY\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCS reset bit would not clear\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@gem_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: tx queued, slot %d, skblen %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gem_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@gem_start_xmit._entry_ptr = internal global ptr @gem_start_xmit._entry, section ".printk_index", align 4
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"transmit timed out, resetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX_STATE[%08x:%08x:%08x]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX_STATE[%08x:%08x:%08x]\0A\00", [38 x i8] zeroinitializer }, align 32
@gem_abnormal_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: no buffer for rx frame\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gem_abnormal_irq\00", [47 x i8] zeroinitializer }, align 32
@gem_abnormal_irq._entry_ptr = internal global ptr @gem_abnormal_irq._entry, section ".printk_index", align 4
@gem_abnormal_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: corrupt rx tag framing\0A\00", [34 x i8] zeroinitializer }, align 32
@gem_abnormal_irq._entry_ptr.70 = internal global ptr @gem_abnormal_irq._entry.68, section ".printk_index", align 4
@gem_pcs_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: pcs interrupt, pcs_istat: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gem_pcs_interrupt\00", [46 x i8] zeroinitializer }, align 32
@gem_pcs_interrupt._entry_ptr = internal global ptr @gem_pcs_interrupt._entry, section ".printk_index", align 4
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCS irq but no link status change???\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCS AutoNEG complete, RemoteFault\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCS AutoNEG complete\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCS link is now up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCS link is now down\0A\00", [42 x i8] zeroinitializer }, align 32
@gem_txmac_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: txmac interrupt, txmac_stat: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gem_txmac_interrupt\00", [44 x i8] zeroinitializer }, align 32
@gem_txmac_interrupt._entry_ptr = internal global ptr @gem_txmac_interrupt._entry, section ".printk_index", align 4
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX MAC xmit underrun\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TX MAC max packet size error\0A\00", [34 x i8] zeroinitializer }, align 32
@gem_rxmac_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: rxmac interrupt, rxmac_stat: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gem_rxmac_interrupt\00", [44 x i8] zeroinitializer }, align 32
@gem_rxmac_interrupt._entry_ptr = internal global ptr @gem_rxmac_interrupt._entry, section ".printk_index", align 4
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RX MAC fifo overflow smac[%08x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RX MAC will not reset, resetting whole chip\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RX MAC will not disable, resetting whole chip\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RX DMA will not disable, resetting whole chip\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RX reset command will not execute, resetting whole chip\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Parts of RX ring empty, resetting whole chip\0A\00", [50 x i8] zeroinitializer }, align 32
@gem_mac_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: mac interrupt, mac_cstat: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gem_mac_interrupt\00", [46 x i8] zeroinitializer }, align 32
@gem_mac_interrupt._entry_ptr = internal global ptr @gem_mac_interrupt._entry, section ".printk_index", align 4
@gem_handle_mif_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: mif interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gem_handle_mif_event\00", [43 x i8] zeroinitializer }, align 32
@gem_handle_mif_event._entry_ptr = internal global ptr @gem_handle_mif_event._entry, section ".printk_index", align 4
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI error [%04x]\00", [47 x i8] zeroinitializer }, align 32
@gem_pci_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\01c <No ACK64# during ABS64 cycle>\00", [62 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gem_pci_interrupt\00", [46 x i8] zeroinitializer }, align 32
@gem_pci_interrupt._entry_ptr = internal global ptr @gem_pci_interrupt._entry, section ".printk_index", align 4
@gem_pci_interrupt._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.4, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\01c <Delayed transaction timeout>\00", [63 x i8] zeroinitializer }, align 32
@gem_pci_interrupt._entry_ptr.99 = internal global ptr @gem_pci_interrupt._entry.97, section ".printk_index", align 4
@gem_pci_interrupt._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.4, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c <other>\00", [21 x i8] zeroinitializer }, align 32
@gem_pci_interrupt._entry_ptr.102 = internal global ptr @gem_pci_interrupt._entry.100, section ".printk_index", align 4
@gem_pci_interrupt._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.4, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@gem_pci_interrupt._entry_ptr.105 = internal global ptr @gem_pci_interrupt._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCI error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCI status errors[%04x]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI parity error detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI target abort\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCI master acks target abort\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI master abort\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI system error SERR#\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCI parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@gem_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: tx done, slot %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gem_tx\00", [25 x i8] zeroinitializer }, align 32
@gem_tx._entry_ptr = internal global ptr @gem_tx._entry, section ".printk_index", align 4
@gem_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.4, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: rx interrupt, done: %d, rx_new: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gem_rx\00", [25 x i8] zeroinitializer }, align 32
@gem_rx._entry_ptr = internal global ptr @gem_rx._entry, section ".printk_index", align 4
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Memory squeeze, deferring packet\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"suspending, WakeOnLan %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@switch.table.gem_do_start = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 67108864, i32 67108864, i32 150994944], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"gem_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3039, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3047, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3040, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"gem_pci_tbl\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 87, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"gem_pm_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3037, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2854, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 78, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2864, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2885, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2895, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2911, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2920, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2922, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2930, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2974, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"gem_netdev_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2831, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"gem_ethtool_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2689, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3004, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 3016, i32 19 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1532, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1546, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1363, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1437, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1442, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1453, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1467, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1483, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1196, i32 23 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1979, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2019, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2034, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2042, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2286, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2154, i32 19 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 937, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1694, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1736, i32 24 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1737, i32 50 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1126, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1011, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 1101, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 967, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 969, i32 18 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 973, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 583, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 591, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 262, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 266, i32 19 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 285, i32 21 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 287, i32 21 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 291, i32 20 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 294, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 311, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 322, i32 19 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 327, i32 19 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 465, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 471, i32 19 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 374, i32 19 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 386, i32 19 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 398, i32 19 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 413, i32 19 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 422, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 498, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 253, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 533, i32 19 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 536, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 538, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 540, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 541, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 544, i32 19 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 554, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 556, i32 20 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 558, i32 20 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 560, i32 20 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 562, i32 20 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 564, i32 20 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 566, i32 20 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 645, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 753, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 869, i32 24 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2526, i32 25 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2335, i32 19 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2337, i32 7 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.512 = private constant [37 x i8] c"../drivers/net/ethernet/sun/sungem.c\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 2337, i32 19 }
@___asan_gen_.514 = private unnamed_addr constant [26 x i8] c"switch.table.gem_do_start\00", align 1
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__exitcall_gem_driver_exit, ptr @__initcall__kmod_sungem__349_3047_gem_driver_init6, ptr @gem_abnormal_irq._entry, ptr @gem_abnormal_irq._entry.68, ptr @gem_abnormal_irq._entry_ptr, ptr @gem_abnormal_irq._entry_ptr.70, ptr @gem_check_invariants._entry, ptr @gem_check_invariants._entry.43, ptr @gem_check_invariants._entry.46, ptr @gem_check_invariants._entry.49, ptr @gem_check_invariants._entry_ptr, ptr @gem_check_invariants._entry_ptr.45, ptr @gem_check_invariants._entry_ptr.48, ptr @gem_check_invariants._entry_ptr.51, ptr @gem_driver_exit, ptr @gem_handle_mif_event._entry, ptr @gem_handle_mif_event._entry_ptr, ptr @gem_init_one._entry, ptr @gem_init_one._entry.11, ptr @gem_init_one._entry.14, ptr @gem_init_one._entry.20, ptr @gem_init_one._entry.23, ptr @gem_init_one._entry.26, ptr @gem_init_one._entry.5, ptr @gem_init_one._entry.8, ptr @gem_init_one._entry_ptr, ptr @gem_init_one._entry_ptr.10, ptr @gem_init_one._entry_ptr.13, ptr @gem_init_one._entry_ptr.16, ptr @gem_init_one._entry_ptr.22, ptr @gem_init_one._entry_ptr.25, ptr @gem_init_one._entry_ptr.28, ptr @gem_init_one._entry_ptr.7, ptr @gem_interrupt._entry, ptr @gem_interrupt._entry_ptr, ptr @gem_mac_interrupt._entry, ptr @gem_mac_interrupt._entry_ptr, ptr @gem_pci_interrupt._entry, ptr @gem_pci_interrupt._entry.100, ptr @gem_pci_interrupt._entry.103, ptr @gem_pci_interrupt._entry.97, ptr @gem_pci_interrupt._entry_ptr, ptr @gem_pci_interrupt._entry_ptr.102, ptr @gem_pci_interrupt._entry_ptr.105, ptr @gem_pci_interrupt._entry_ptr.99, ptr @gem_pcs_interrupt._entry, ptr @gem_pcs_interrupt._entry_ptr, ptr @gem_rx._entry, ptr @gem_rx._entry_ptr, ptr @gem_rxmac_interrupt._entry, ptr @gem_rxmac_interrupt._entry_ptr, ptr @gem_start_xmit._entry, ptr @gem_start_xmit._entry_ptr, ptr @gem_tx._entry, ptr @gem_tx._entry_ptr, ptr @gem_txmac_interrupt._entry, ptr @gem_txmac_interrupt._entry_ptr, ptr @gem_driver, ptr @.str, ptr @.str.1, ptr @gem_pci_tbl, ptr @gem_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @version, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @gem_init_one.__key, ptr @.str.17, ptr @gem_init_one.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @gem_netdev_ops, ptr @gem_ethtool_ops, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @switch.table.gem_do_start], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pci_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_init_one._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_check_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_check_invariants._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_check_invariants._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_check_invariants._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_abnormal_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_abnormal_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pcs_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_txmac_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_rxmac_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_mac_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_handle_mif_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pci_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pci_interrupt._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pci_interrupt._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_pci_interrupt._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gem_do_start to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @gem_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @gem_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b223 = load i1, ptr @gem_init_one.__already_done, align 1
  br i1 %.b223, label %entry.if.end_crit_edge, label %if.then, !prof !260

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @gem_init_one.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @version) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call12 = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #17
  br label %cleanup

if.end20:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %1)
  %cmp = icmp eq i16 %1, 4238
  br i1 %cmp, label %land.lhs.true, label %if.end20.if.else_crit_edge

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11181, i16 %3)
  %cmp23 = icmp eq i16 %3, 11181
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true25:                                  ; preds = %land.lhs.true
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call27 = tail call i32 @dma_set_mask(ptr noundef %dev26, i64 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true25.if.end40_crit_edge, label %land.lhs.true25.if.else_crit_edge

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true25.if.end40_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call31 = tail call i32 @dma_set_mask(ptr noundef %dev30, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else.if.end40_crit_edge, label %do.end36

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  br label %err_disable_device

if.end40:                                         ; preds = %if.else.if.end40_crit_edge, %land.lhs.true25.if.end40_crit_edge
  %tobool130.not = phi i64 [ 1099511627817, %land.lhs.true25.if.end40_crit_edge ], [ 1099511627785, %if.else.if.end40_crit_edge ]
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43 = icmp eq i32 %7, 0
  %sub = sub i32 1, %5
  %add = add i32 %sub, %7
  %cond = select i1 %cmp43, i32 0, i32 %add
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp53.not = icmp eq i32 %and, 0
  br i1 %cmp53.not, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #17
  br label %err_disable_device

if.end61:                                         ; preds = %if.end40
  %call62 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1520, i32 noundef 1, i32 noundef 1) #14
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end61.err_disable_device_crit_edge, label %if.end65

if.end61.err_disable_device_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_disable_device

if.end65:                                         ; preds = %if.end61
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev66, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call62, i32 2304
  %call69 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #17
  br label %err_out_free_netdev

if.end77:                                         ; preds = %if.end65
  %pdev78 = getelementptr i8, ptr %call62, i32 3812
  %11 = ptrtoint ptr %pdev78 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pdev, ptr %pdev78, align 4
  %dev79 = getelementptr i8, ptr %call62, i32 3816
  %12 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call62, ptr %dev79, align 8
  %msg_enable = getelementptr i8, ptr %call62, i32 2332
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %msg_enable, align 4
  %link_timer = getelementptr i8, ptr %call62, i32 2624
  tail call void @init_timer_key(ptr noundef %link_timer, ptr noundef nonnull @gem_link_timer, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @gem_init_one.__key) #14
  %reset_task = getelementptr i8, ptr %call62, i32 2680
  tail call void @__init_work(ptr noundef %reset_task, i32 noundef 0) #14
  %14 = ptrtoint ptr %reset_task to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %reset_task, align 8
  %lockdep_map = getelementptr i8, ptr %call62, i32 2696
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @gem_init_one.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry87 = getelementptr i8, ptr %call62, i32 2684
  %15 = ptrtoint ptr %entry87 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry87, ptr %entry87, align 4
  %prev.i = getelementptr i8, ptr %call62, i32 2688
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry87, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call62, i32 2692
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gem_reset_task, ptr %func, align 4
  %lstate = getelementptr i8, ptr %call62, i32 2620
  %18 = ptrtoint ptr %lstate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lstate, align 4
  %timer_ticks = getelementptr i8, ptr %call62, i32 2672
  %19 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timer_ticks, align 8
  tail call void @netif_carrier_off(ptr noundef nonnull %call62) #14
  %call91 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond) #14
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call91, ptr %add.ptr.i, align 8
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %do.end97, label %if.end100

do.end97:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  br label %err_out_free_res

if.end100:                                        ; preds = %if.end77
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %22)
  %cmp103 = icmp eq i16 %22, 4203
  br i1 %cmp103, label %if.then105, label %if.end100.if.end106_crit_edge

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end106

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %has_wol = getelementptr i8, ptr %call62, i32 2324
  %23 = ptrtoint ptr %has_wol to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %has_wol, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %has_wol, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end100.if.end106_crit_edge
  %cell_enabled.i = getelementptr i8, ptr %call62, i32 2328
  %24 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp slt i32 %25, 0
  br i1 %cmp.i, label %do.body2.i, label %gem_get_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #14, !srcloc !262
  unreachable

gem_get_cell.exit:                                ; preds = %if.end106
  %inc.i = add nuw i32 %25, 1
  %26 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i, ptr %cell_enabled.i, align 8
  tail call fastcc void @gem_reset(ptr noundef %add.ptr.i)
  %dev107 = getelementptr i8, ptr %call62, i32 2760
  %27 = ptrtoint ptr %dev107 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call62, ptr %dev107, align 4
  %mdio_read = getelementptr i8, ptr %call62, i32 2764
  %28 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @_sungem_phy_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call62, i32 2768
  %29 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @_sungem_phy_write, ptr %mdio_write, align 4
  %want_autoneg = getelementptr i8, ptr %call62, i32 2612
  %30 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %want_autoneg, align 4
  %31 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev78, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %34)
  %cmp.i224 = icmp eq i16 %34, 4203
  br i1 %cmp.i224, label %if.then.i, label %if.end37.i

if.then.i:                                        ; preds = %gem_get_cell.exit
  %phy_type.i = getelementptr i8, ptr %call62, i32 2728
  %35 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %phy_type.i, align 8
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i225 = getelementptr i8, ptr %37, i32 8472
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #14, !srcloc !263
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  %mul.i = shl i32 %39, 6
  %tx_fifo_sz.i = getelementptr i8, ptr %call62, i32 2568
  %40 = ptrtoint ptr %tx_fifo_sz.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i, ptr %tx_fifo_sz.i, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %42, i32 16672
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !263
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  %mul11.i = shl i32 %44, 6
  %rx_fifo_sz.i = getelementptr i8, ptr %call62, i32 2572
  %45 = ptrtoint ptr %rx_fifo_sz.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul11.i, ptr %rx_fifo_sz.i, align 4
  %swrst_base.i = getelementptr i8, ptr %call62, i32 2608
  %46 = ptrtoint ptr %swrst_base.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %swrst_base.i, align 8
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %48, i32 25104
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  %50 = and i32 %49, -117637121
  %51 = or i32 %50, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !267
  tail call void @arm_heavy_mb() #14
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %53, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %51) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !269
  tail call void @arm_heavy_mb() #14
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %55, i32 36944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 67108864) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @arm_heavy_mb() #14
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %57, i32 24636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 16777216) #14, !srcloc !268
  %58 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev78, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %61)
  %cmp33.i = icmp eq i16 %61, 76
  %mii_phy_addr.i = getelementptr i8, ptr %call62, i32 2776
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %mii_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %mii_phy_addr.i, align 8
  br label %if.end113

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %mii_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %mii_phy_addr.i, align 8
  br label %if.end113

if.end37.i:                                       ; preds = %gem_get_cell.exit
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr41.i = getelementptr i8, ptr %65, i32 25104
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #14, !srcloc !263
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !271
  %68 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %69)
  %cmp47.i = icmp eq i16 %69, 4238
  br i1 %cmp47.i, label %land.lhs.true.i, label %if.end37.i.if.end64.i_crit_edge

if.end37.i.if.end64.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  %device49.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 8
  %70 = ptrtoint ptr %device49.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %device49.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4353, i16 %71)
  %cmp51.i = icmp eq i16 %71, 4353
  %and54.i = and i32 %67, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %cmp55.i = icmp eq i32 %and54.i, 0
  %or.cond.i = select i1 %cmp51.i, i1 %cmp55.i, i1 false
  br i1 %or.cond.i, label %do.end60.i, label %land.lhs.true.i.if.end64.i_crit_edge

land.lhs.true.i.if.end64.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i

do.end60.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %67) #17
  br label %err_out_iounmap

if.end64.i:                                       ; preds = %land.lhs.true.i.if.end64.i_crit_edge, %if.end37.i.if.end64.i_crit_edge
  %and65.i = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool.not.i, label %if.else74.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #16
  %phy_type67.i = getelementptr i8, ptr %call62, i32 2728
  %72 = ptrtoint ptr %phy_type67.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %phy_type67.i, align 8
  %or68.i = or i32 %67, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !272
  tail call void @arm_heavy_mb() #14
  %73 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #14
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr73.i = getelementptr i8, ptr %75, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %73) #14, !srcloc !268
  br label %if.end88.i

if.else74.i:                                      ; preds = %if.end64.i
  %and75.i = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  %phy_type86.i = getelementptr i8, ptr %call62, i32 2728
  br i1 %tobool76.not.i, label %if.else85.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %phy_type86.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %phy_type86.i, align 8
  %and79.i = and i32 %67, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @arm_heavy_mb() #14
  %77 = tail call i32 @llvm.bswap.i32(i32 %and79.i) #14
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr84.i = getelementptr i8, ptr %79, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %77) #14, !srcloc !268
  br label %if.end88.i

if.else85.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %phy_type86.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %phy_type86.i, align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else85.i, %if.then77.i, %if.then66.i
  %phy_type89.i = getelementptr i8, ptr %call62, i32 2728
  %81 = ptrtoint ptr %phy_type89.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %phy_type89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %switch.i = icmp ult i32 %82, 2
  br i1 %switch.i, label %for.cond.preheader.i, label %if.end88.i.if.end121.i_crit_edge

if.end88.i.if.end121.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

for.cond.preheader.i:                             ; preds = %if.end88.i
  %mii_phy_addr98.i = getelementptr i8, ptr %call62, i32 2776
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0251.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i226, %for.inc.i.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %mii_phy_addr98.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %i.0251.i, ptr %mii_phy_addr98.i, align 8
  %shl.i.i.i = shl i32 %i.0251.i, 23
  %or5.i.i.i = or i32 %shl.i.i.i, 1610743808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %84 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i.i) #14
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %84) #14, !srcloc !268
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %for.body.i
  %dec23.i.i.i = phi i32 [ 9999, %for.body.i ], [ %dec.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i.i.i = getelementptr i8, ptr %88, i32 25100
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #14, !srcloc !263
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %and9.i.i.i = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end.i.i.i, label %sungem_phy_read.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 2147480) #14
  %dec.i.i.i = add nsw i32 %dec23.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.for.inc.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

if.end.i.i.i.for.inc.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

sungem_phy_read.exit.i:                           ; preds = %while.body.i.i.i
  %conv.i.i.i = trunc i32 %90 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i.i.i)
  %cmp101.not.i = icmp eq i16 %conv.i.i.i, -1
  br i1 %cmp101.not.i, label %sungem_phy_read.exit.i.for.inc.i_crit_edge, label %for.end.i

sungem_phy_read.exit.i.for.inc.i_crit_edge:       ; preds = %sungem_phy_read.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %sungem_phy_read.exit.i.for.inc.i_crit_edge, %if.end.i.i.i.for.inc.i_crit_edge
  %inc.i226 = add nuw nsw i32 %i.0251.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i226, 32
  br i1 %exitcond.not.i, label %for.inc.i.if.then107.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then107.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107.i

for.end.i:                                        ; preds = %sungem_phy_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0251.i)
  %cmp105.i = icmp eq i32 %i.0251.i, 32
  br i1 %cmp105.i, label %for.end.i.if.then107.i_crit_edge, label %for.end.i.if.end121.i_crit_edge

for.end.i.if.end121.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121.i

for.end.i.if.then107.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107.i

if.then107.i:                                     ; preds = %for.end.i.if.then107.i_crit_edge, %for.inc.i.if.then107.i_crit_edge
  %device108.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 8
  %92 = ptrtoint ptr %device108.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device108.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11181, i16 %93)
  %cmp110.not.i = icmp eq i16 %93, 11181
  br i1 %cmp110.not.i, label %if.end118.i, label %do.end115.i

do.end115.i:                                      ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #16
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #17
  br label %err_out_iounmap

if.end118.i:                                      ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %phy_type89.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %phy_type89.i, align 8
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end118.i, %for.end.i.if.end121.i_crit_edge, %if.end88.i.if.end121.i_crit_edge
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr125.i = getelementptr i8, ptr %96, i32 8472
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125.i) #14, !srcloc !263
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !276
  %mul129.i = shl i32 %98, 6
  %tx_fifo_sz130.i = getelementptr i8, ptr %call62, i32 2568
  %99 = ptrtoint ptr %tx_fifo_sz130.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul129.i, ptr %tx_fifo_sz130.i, align 8
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr134.i = getelementptr i8, ptr %101, i32 16672
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134.i) #14, !srcloc !263
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !277
  %mul138.i = shl i32 %103, 6
  %rx_fifo_sz139.i = getelementptr i8, ptr %call62, i32 2572
  %104 = ptrtoint ptr %rx_fifo_sz139.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul138.i, ptr %rx_fifo_sz139.i, align 4
  %105 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %106)
  %cmp142.i = icmp eq i16 %106, 4238
  br i1 %cmp142.i, label %if.then144.i, label %if.end121.i.if.end113_crit_edge

if.end121.i.if.end113_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then144.i:                                     ; preds = %if.end121.i
  %device145.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 8
  %107 = ptrtoint ptr %device145.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %device145.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11181, i16 %108)
  %cmp147.i = icmp eq i16 %108, 11181
  %109 = ptrtoint ptr %tx_fifo_sz130.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_fifo_sz130.i, align 8
  br i1 %cmp147.i, label %if.then149.i, label %if.else167.i

if.then149.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9216, i32 %110)
  %cmp151.not.i = icmp eq i32 %110, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %mul138.i)
  %cmp155.not.i = icmp eq i32 %mul138.i, 20480
  %or.cond245.i = select i1 %cmp151.not.i, i1 %cmp155.not.i, i1 false
  br i1 %or.cond245.i, label %if.end165.i, label %do.end160.i

do.end160.i:                                      ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #16
  %call164.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %110, i32 noundef %mul138.i) #17
  br label %err_out_iounmap

if.end165.i:                                      ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #16
  %swrst_base166.i = getelementptr i8, ptr %call62, i32 2608
  %111 = ptrtoint ptr %swrst_base166.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %swrst_base166.i, align 8
  br label %if.end113

if.else167.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %110)
  %cmp169.not.i = icmp eq i32 %110, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul138.i)
  %cmp173.not.i = icmp eq i32 %mul138.i, 2048
  %or.cond246.i = select i1 %cmp169.not.i, i1 %cmp173.not.i, i1 false
  br i1 %or.cond246.i, label %if.end183.i, label %do.end178.i

do.end178.i:                                      ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #16
  %call182.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %110, i32 noundef %mul138.i) #17
  br label %err_out_iounmap

if.end183.i:                                      ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #16
  %swrst_base184.i = getelementptr i8, ptr %call62, i32 2608
  %112 = ptrtoint ptr %swrst_base184.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1048576, ptr %swrst_base184.i, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.end183.i, %if.end165.i, %if.end121.i.if.end113_crit_edge, %if.else.i, %if.then35.i
  %gblock_dvma = getelementptr i8, ptr %call62, i32 3808
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev66, i32 noundef 4096, ptr noundef %gblock_dvma, i32 noundef 3264, i32 noundef 0) #14
  %init_block = getelementptr i8, ptr %call62, i32 2780
  %113 = ptrtoint ptr %init_block to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i, ptr %init_block, align 4
  %tobool117.not = icmp eq ptr %call.i, null
  br i1 %tobool117.not, label %do.end121, label %if.end124

do.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #17
  br label %err_out_iounmap

if.end124:                                        ; preds = %if.end113
  tail call fastcc void @gem_get_device_address(ptr noundef %add.ptr.i)
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 16
  %114 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @gem_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call62, i32 2344
  tail call void @netif_napi_add(ptr noundef nonnull %call62, ptr noundef %napi, ptr noundef nonnull @gem_poll, i32 noundef 64) #14
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 44
  %115 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @gem_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 115
  %116 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 500, ptr %watchdog_timeo, align 4
  %dma = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 53
  %117 = ptrtoint ptr %dma to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %dma, align 1
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call62, ptr %driver_data.i.i, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 24
  %119 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1099511627785, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 23
  %120 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %tobool130.not, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 30
  %121 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 31
  %122 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1500, ptr %max_mtu, align 4
  %call134 = tail call i32 @register_netdev(ptr noundef nonnull %call62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end142, label %do.end139

do.end139:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  tail call void @gem_remove_one(ptr noundef %pdev)
  br label %err_out_iounmap

if.end142:                                        ; preds = %if.end124
  tail call void @rtnl_lock() #14
  %123 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp.i228 = icmp slt i32 %124, 1
  br i1 %cmp.i228, label %do.body2.i229, label %gem_put_cell.exit, !prof !261

do.body2.i229:                                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %124, -1
  %125 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  tail call void @rtnl_unlock() #14
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call62, i32 0, i32 86
  %126 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call62, ptr noundef nonnull @.str.29, ptr noundef %127) #17
  br label %cleanup

err_out_iounmap:                                  ; preds = %do.end139, %do.end121, %do.end178.i, %do.end160.i, %do.end115.i, %do.end60.i
  %err.1 = phi i32 [ -12, %do.end139 ], [ -12, %do.end121 ], [ -19, %do.end60.i ], [ -19, %do.end115.i ], [ -19, %do.end160.i ], [ -19, %do.end178.i ]
  %128 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp.i231 = icmp slt i32 %129, 1
  br i1 %cmp.i231, label %do.body2.i232, label %gem_put_cell.exit234, !prof !261

do.body2.i232:                                    ; preds = %err_out_iounmap
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit234:                             ; preds = %err_out_iounmap
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i233 = add nsw i32 %129, -1
  %130 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %dec.i233, ptr %cell_enabled.i, align 8
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 8
  tail call void @iounmap(ptr noundef %132) #14
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %gem_put_cell.exit234, %do.end97
  %err.2 = phi i32 [ %err.1, %gem_put_cell.exit234 ], [ -5, %do.end97 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_free_res, %do.end74
  %err.3 = phi i32 [ %call69, %do.end74 ], [ %err.2, %err_out_free_res ]
  tail call void @free_netdev(ptr noundef nonnull %call62) #14
  br label %err_disable_device

err_disable_device:                               ; preds = %err_out_free_netdev, %if.end61.err_disable_device_crit_edge, %do.end58, %do.end36
  %err.4 = phi i32 [ %call31, %do.end36 ], [ -19, %do.end58 ], [ %err.3, %err_out_free_netdev ], [ -12, %if.end61.err_disable_device_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  br label %cleanup

cleanup:                                          ; preds = %err_disable_device, %gem_put_cell.exit, %do.end17
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ %err.4, %err_disable_device ], [ 0, %gem_put_cell.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #14
  %reset_task = getelementptr i8, ptr %1, i32 2680
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_task) #14
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %init_block = getelementptr i8, ptr %1, i32 2780
  %2 = ptrtoint ptr %init_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_block, align 4
  %gblock_dvma = getelementptr i8, ptr %1, i32 3808
  %4 = ptrtoint ptr %gblock_dvma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gblock_dvma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void @iounmap(ptr noundef %7) #14
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @free_netdev(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_link_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -320
  %dev1 = getelementptr i8, ptr %t, i32 1192
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %reset_task_pending = getelementptr i8, ptr %t, i32 100
  %2 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %reset_task_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup112_crit_edge

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup112

if.end:                                           ; preds = %entry
  %phy_type = getelementptr i8, ptr %t, i32 104
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.if.else73_crit_edge [
    i32 2, label %if.end.if.then4_crit_edge
    i32 3, label %if.end.if.then4_crit_edge171
    i32 0, label %if.end.land.lhs.true_crit_edge
    i32 1, label %if.end.land.lhs.true_crit_edge172
  ]

if.end.land.lhs.true_crit_edge172:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end.if.then4_crit_edge171:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end.if.else73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else73

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge171
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 36868
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !279
  %10 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end17, label %if.then4.if.then20_crit_edge

if.then4.if.then20_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.end17:                                         ; preds = %if.then4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %add.ptr13 = getelementptr i8, ptr %12, i32 36868
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !280
  %14 = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19.not = icmp eq i32 %14, 0
  br i1 %cmp19.not, label %if.end17.restart_crit_edge, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

if.end17.restart_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %if.then4.if.then20_crit_edge
  %lstate = getelementptr i8, ptr %t, i32 -4
  %15 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp21 = icmp eq i32 %16, 5
  br i1 %cmp21, label %if.then20.restart_crit_edge, label %if.end23

if.then20.restart_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.end23:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %lstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %lstate, align 4
  tail call void @netif_carrier_on(ptr noundef %1) #14
  %call25 = tail call fastcc i32 @gem_set_link_modes(ptr noundef %add.ptr)
  br label %restart

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge172
  %phy_mii = getelementptr i8, ptr %t, i32 108
  %18 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_mii, align 4
  %tobool33.not = icmp eq ptr %19, null
  br i1 %tobool33.not, label %land.lhs.true.if.else73_crit_edge, label %land.lhs.true34

land.lhs.true.if.else73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else73

land.lhs.true34:                                  ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.mii_phy_def, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true34.if.else73_crit_edge, label %land.lhs.true38

land.lhs.true34.if.else73_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else73

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %poll_link = getelementptr inbounds %struct.mii_phy_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %poll_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %poll_link, align 4
  %call43 = tail call i32 %23(ptr noundef %phy_mii) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true38.if.else73_crit_edge, label %if.then45

land.lhs.true38.if.else73_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else73

if.then45:                                        ; preds = %land.lhs.true38
  %lstate46 = getelementptr i8, ptr %t, i32 -4
  %24 = ptrtoint ptr %lstate46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lstate46, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %25, label %if.then45.if.end107_crit_edge [
    i32 2, label %land.lhs.true48
    i32 5, label %if.then45.restart_crit_edge
  ]

if.then45.restart_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.then45.if.end107_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

land.lhs.true48:                                  ; preds = %if.then45
  %want_autoneg = getelementptr i8, ptr %t, i32 -12
  %27 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %want_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %land.lhs.true48.if.end107_crit_edge, label %if.then50

land.lhs.true48.if.end107_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then50:                                        ; preds = %land.lhs.true48
  %29 = ptrtoint ptr %lstate46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %lstate46, align 4
  %speed = getelementptr i8, ptr %t, i32 124
  %30 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed, align 4
  %last_forced_speed = getelementptr i8, ptr %t, i32 -8
  %32 = ptrtoint ptr %last_forced_speed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_forced_speed, align 8
  %timer_ticks = getelementptr i8, ptr %t, i32 48
  %33 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %timer_ticks, align 8
  %msg_enable = getelementptr i8, ptr %t, i32 -292
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then50.if.end56_crit_edge, label %if.then55

if.then50.if.end56_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.30) #17
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.then50.if.end56_crit_edge
  %36 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_mii, align 4
  %ops59 = getelementptr inbounds %struct.mii_phy_def, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ops59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops59, align 4
  %setup_aneg = getelementptr inbounds %struct.mii_phy_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %setup_aneg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %setup_aneg, align 4
  %advertising = getelementptr i8, ptr %t, i32 112
  %42 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %advertising, align 4
  %call62 = tail call i32 %41(ptr noundef %phy_mii, i32 noundef %43) #14
  br label %restart

if.else73:                                        ; preds = %land.lhs.true38.if.else73_crit_edge, %land.lhs.true34.if.else73_crit_edge, %land.lhs.true.if.else73_crit_edge, %if.end.if.else73_crit_edge
  %lstate74 = getelementptr i8, ptr %t, i32 -4
  %44 = ptrtoint ptr %lstate74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lstate74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp75 = icmp eq i32 %45, 5
  br i1 %cmp75, label %if.then76, label %if.else83

if.then76:                                        ; preds = %if.else73
  %46 = ptrtoint ptr %lstate74 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %lstate74, align 4
  %msg_enable78 = getelementptr i8, ptr %t, i32 -292
  %47 = ptrtoint ptr %msg_enable78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable78, align 4
  %and79 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then76.do.end_crit_edge, label %if.then81

if.then76.do.end_crit_edge:                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.31) #17
  br label %do.end

do.end:                                           ; preds = %if.then81, %if.then76.do.end_crit_edge
  tail call void @netif_carrier_off(ptr noundef %1) #14
  %49 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %reset_task_pending, align 4
  %reset_task.i = getelementptr i8, ptr %t, i32 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %reset_task.i) #14
  br label %cleanup112

if.else83:                                        ; preds = %if.else73
  %timer_ticks84 = getelementptr i8, ptr %t, i32 48
  %51 = ptrtoint ptr %timer_ticks84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %timer_ticks84, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %timer_ticks84, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp85 = icmp sgt i32 %inc, 10
  br i1 %cmp85, label %if.then86, label %if.else83.restart_crit_edge

if.else83.restart_crit_edge:                      ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.then86:                                        ; preds = %if.else83
  %53 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %switch = icmp ult i32 %54, 2
  br i1 %switch, label %land.lhs.true92, label %if.then86.if.then109_crit_edge

if.then86.if.then109_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

land.lhs.true92:                                  ; preds = %if.then86
  %phy_mii93 = getelementptr i8, ptr %t, i32 108
  %55 = ptrtoint ptr %phy_mii93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_mii93, align 4
  %tobool95.not = icmp eq ptr %56, null
  br i1 %tobool95.not, label %land.lhs.true92.if.then109_crit_edge, label %land.lhs.true96

land.lhs.true92.if.then109_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

land.lhs.true96:                                  ; preds = %land.lhs.true92
  %ops99 = getelementptr inbounds %struct.mii_phy_def, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %ops99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops99, align 4
  %tobool100.not = icmp eq ptr %58, null
  br i1 %tobool100.not, label %land.lhs.true96.if.then109_crit_edge, label %if.then101

land.lhs.true96.if.then109_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

if.then101:                                       ; preds = %land.lhs.true96
  %call102 = tail call fastcc i32 @gem_mdio_link_not_up(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %phi.cmp = icmp eq i32 %call102, 0
  br i1 %phi.cmp, label %if.then101.restart_crit_edge, label %if.then101.if.then109_crit_edge

if.then101.if.then109_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

if.then101.restart_crit_edge:                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.end107:                                        ; preds = %land.lhs.true48.if.end107_crit_edge, %if.then45.if.end107_crit_edge
  %59 = ptrtoint ptr %lstate46 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %lstate46, align 4
  tail call void @netif_carrier_on(ptr noundef %1) #14
  %call67 = tail call fastcc i32 @gem_set_link_modes(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end107.restart_crit_edge, label %if.end107.if.then109_crit_edge

if.end107.if.then109_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

if.end107.restart_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.then109:                                       ; preds = %if.end107.if.then109_crit_edge, %if.then101.if.then109_crit_edge, %land.lhs.true96.if.then109_crit_edge, %land.lhs.true92.if.then109_crit_edge, %if.then86.if.then109_crit_edge
  tail call fastcc void @gem_begin_auto_negotiation(ptr noundef %add.ptr, ptr noundef null)
  br label %cleanup112

restart:                                          ; preds = %if.end107.restart_crit_edge, %if.then101.restart_crit_edge, %if.else83.restart_crit_edge, %if.end56, %if.then45.restart_crit_edge, %if.end23, %if.then20.restart_crit_edge, %if.end17.restart_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %60, 120
  %call111 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  br label %cleanup112

cleanup112:                                       ; preds = %restart, %if.then109, %do.end, %entry.cleanup112_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_reset_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -376
  tail call void @rtnl_lock() #14
  %dev = getelementptr i8, ptr %work, i32 1136
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i28.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i28.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %reset_task_pending = getelementptr i8, ptr %work, i32 44
  %7 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %reset_task_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %link_timer = getelementptr i8, ptr %work, i32 -56
  %call4 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #14
  tail call fastcc void @gem_netif_stop(ptr noundef %add.ptr)
  tail call fastcc void @gem_reinit_chip(ptr noundef %add.ptr)
  %lstate = getelementptr i8, ptr %work, i32 -60
  %9 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp = icmp eq i32 %10, 5
  br i1 %cmp, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call fastcc i32 @gem_set_link_modes(ptr noundef %add.ptr)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #14
  %napi.i = getelementptr i8, ptr %work, i32 -336
  tail call void @napi_enable(ptr noundef %napi.i) #14
  %15 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %reset_task_pending, align 4
  %16 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp10.not = icmp eq i32 %17, 5
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @gem_begin_auto_negotiation(ptr noundef %add.ptr, ptr noundef null)
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 120
  %call13 = tail call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @rtnl_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_reset(ptr nocapture noundef readonly %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !281
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gp, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !282
  tail call void @arm_heavy_mb() #14
  %swrst_base = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 18
  %2 = ptrtoint ptr %swrst_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swrst_base, align 8
  %or4 = or i32 %3, 3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %5 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gp, align 8
  %add.ptr6 = getelementptr i8, ptr %6, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #14, !srcloc !268
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %entry
  %limit.0 = phi i32 [ 32, %entry ], [ %dec, %do.body7.do.body7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4294960) #14
  %8 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gp, align 8
  %add.ptr9 = getelementptr i8, ptr %9, i32 4112
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !283
  %dec = add nsw i32 %limit.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0)
  %cmp = icmp eq i32 %limit.0, 0
  %11 = and i32 %10, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end12, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit.0)
  %cmp13 = icmp slt i32 %limit.0, 1
  br i1 %cmp13, label %if.then14, label %do.end12.if.end15_crit_edge

do.end12.if.end15_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.40) #17
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end12.if.end15_crit_edge
  %phy_type = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 27
  %14 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_type, align 8
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch = icmp eq i32 %16, 2
  br i1 %switch, label %if.then19, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @gem_pcs_reinit_adv(ptr noundef %gp)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_sungem_phy_read(ptr nocapture noundef readonly %dev, i32 noundef %mii_id, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %shl.i = shl i32 %mii_id, 23
  %and.i = and i32 %shl.i, 260046848
  %shl2.i = shl i32 %reg, 18
  %and3.i = and i32 %shl2.i, 8126464
  %or1.i = or i32 %and.i, %and3.i
  %or5.i = or i32 %or1.i, 1610743808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #14
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %2, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %0) #14, !srcloc !268
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec23.i = phi i32 [ 9999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %4, i32 25100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !263
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %and9.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i, label %while.body.i.__sungem_phy_read.exit_crit_edge

while.body.i.__sungem_phy_read.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_read.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #14
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.__sungem_phy_read.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i.__sungem_phy_read.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_read.exit

__sungem_phy_read.exit:                           ; preds = %if.end.i.__sungem_phy_read.exit_crit_edge, %while.body.i.__sungem_phy_read.exit_crit_edge
  %spec.select.i = phi i32 [ %6, %while.body.i.__sungem_phy_read.exit_crit_edge ], [ 65535, %if.end.i.__sungem_phy_read.exit_crit_edge ]
  %conv = and i32 %spec.select.i, 65535
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_sungem_phy_write(ptr nocapture noundef readonly %dev, i32 noundef %mii_id, i32 noundef %reg, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %shl.i = shl i32 %mii_id, 23
  %and.i = and i32 %shl.i, 260046848
  %shl2.i = shl i32 %reg, 18
  %and3.i = and i32 %shl2.i, 8126464
  %conv.i = and i32 %val, 65535
  %or1.i = or i32 %and.i, %and3.i
  %or5.i = or i32 %or1.i, %conv.i
  %or7.i = or i32 %or5.i, 1342308352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #14
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i1 = getelementptr i8, ptr %2, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %0) #14, !srcloc !268
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec20.i = phi i32 [ 9999, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %4, i32 25100
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not.i = icmp eq i32 %6, 0
  br i1 %tobool12.not.i, label %if.end.i, label %while.body.i.__sungem_phy_write.exit_crit_edge

while.body.i.__sungem_phy_write.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_write.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #14
  %dec.i = add nsw i32 %dec20.i, -1
  %tobool.not.i = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i, label %if.end.i.__sungem_phy_write.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i.__sungem_phy_write.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_write.exit

__sungem_phy_write.exit:                          ; preds = %if.end.i.__sungem_phy_write.exit_crit_edge, %while.body.i.__sungem_phy_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_get_device_address(ptr nocapture noundef readonly %gp) unnamed_addr #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %pdev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 34
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #14
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %size.i, align 4, !annotation !286
  %call.i = call ptr @pci_map_rom(ptr noundef %7, ptr noundef nonnull %size.i) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end16.i_crit_edge, label %if.then.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then.i:                                        ; preds = %entry
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %9)
  %cmp.i = icmp eq i8 %9, 85
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end16.sink.split.i_crit_edge

if.then.i.if.end16.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.sink.split.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %10)
  %cmp10.i = icmp eq i8 %10, -86
  br i1 %cmp10.i, label %land.lhs.true.i.for.body.i.i_crit_edge, label %land.lhs.true.i.if.end16.sink.split.i_crit_edge

land.lhs.true.i.if.end16.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.sink.split.i

land.lhs.true.i.for.body.i.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc66.i.i.for.body.i.i_crit_edge, %land.lhs.true.i.for.body.i.i_crit_edge
  %this_offset.05.i.i = phi i32 [ %inc67.i.i, %for.inc66.i.i.for.body.i.i_crit_edge ], [ 32, %land.lhs.true.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %this_offset.05.i.i
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %11)
  %cmp3.not.i.i = icmp eq i8 %11, -112
  br i1 %cmp3.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.for.inc66.i.i_crit_edge

for.body.i.i.for.inc66.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %12 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp12.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp12.not.i.i, label %lor.lhs.false14.i.i, label %lor.lhs.false.i.i.for.inc66.i.i_crit_edge

lor.lhs.false.i.i.for.inc66.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %13)
  %cmp22.not.i.i = icmp eq i8 %13, 9
  br i1 %cmp22.not.i.i, label %lor.lhs.false24.i.i, label %lor.lhs.false14.i.i.for.inc66.i.i_crit_edge

lor.lhs.false14.i.i.for.inc66.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false14.i.i
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %14 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %14)
  %cmp32.not.i.i = icmp eq i8 %14, 78
  br i1 %cmp32.not.i.i, label %lor.lhs.false34.i.i, label %lor.lhs.false24.i.i.for.inc66.i.i_crit_edge

lor.lhs.false24.i.i.for.inc66.i.i_crit_edge:      ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

lor.lhs.false34.i.i:                              ; preds = %lor.lhs.false24.i.i
  %add.ptr37.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %15)
  %cmp42.not.i.i = icmp eq i8 %15, 65
  br i1 %cmp42.not.i.i, label %lor.lhs.false44.i.i, label %lor.lhs.false34.i.i.for.inc66.i.i_crit_edge

lor.lhs.false34.i.i.for.inc66.i.i_crit_edge:      ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

lor.lhs.false44.i.i:                              ; preds = %lor.lhs.false34.i.i
  %add.ptr47.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp52.not.i.i = icmp eq i8 %16, 6
  br i1 %cmp52.not.i.i, label %find_eth_addr_in_vpd.exit.thread.i, label %lor.lhs.false44.i.i.for.inc66.i.i_crit_edge

lor.lhs.false44.i.i.for.inc66.i.i_crit_edge:      ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc66.i.i

find_eth_addr_in_vpd.exit.thread.i:               ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr54.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %addr, align 1
  %add.ptr61.1.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 1
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61.1.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %0, align 1
  %add.ptr61.2.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 2
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61.2.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %1, align 1
  %add.ptr61.3.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 3
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61.3.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %2, align 1
  %add.ptr61.4.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 4
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61.4.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %3, align 1
  %add.ptr61.5.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 5
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61.5.i.i) #14, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !296
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %4, align 1
  call void @pci_unmap_rom(ptr noundef %7, ptr noundef nonnull %call.i) #14
  br label %get_gem_mac_nonobp.exit

for.inc66.i.i:                                    ; preds = %lor.lhs.false44.i.i.for.inc66.i.i_crit_edge, %lor.lhs.false34.i.i.for.inc66.i.i_crit_edge, %lor.lhs.false24.i.i.for.inc66.i.i_crit_edge, %lor.lhs.false14.i.i.for.inc66.i.i_crit_edge, %lor.lhs.false.i.i.for.inc66.i.i_crit_edge, %for.body.i.i.for.inc66.i.i_crit_edge
  %inc67.i.i = add nuw nsw i32 %this_offset.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc67.i.i, 65536
  br i1 %exitcond.not.i.i, label %for.inc66.i.i.if.end16.sink.split.i_crit_edge, label %for.inc66.i.i.for.body.i.i_crit_edge

for.inc66.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc66.i.i.if.end16.sink.split.i_crit_edge:    ; preds = %for.inc66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %for.inc66.i.i.if.end16.sink.split.i_crit_edge, %land.lhs.true.i.if.end16.sink.split.i_crit_edge, %if.then.i.if.end16.sink.split.i_crit_edge
  call void @pci_unmap_rom(ptr noundef %7, ptr noundef nonnull %call.i) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %entry.if.end16.i_crit_edge
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %addr, align 1
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %0, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 32, ptr %1, align 1
  call void @get_random_bytes(ptr noundef %2, i32 noundef 3) #14
  br label %get_gem_mac_nonobp.exit

get_gem_mac_nonobp.exit:                          ; preds = %if.end16.i, %find_eth_addr_in_vpd.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #14
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  call void @dev_addr_mod(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -40
  %dev1 = getelementptr i8, ptr %napi, i32 1472
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %status = getelementptr i8, ptr %napi, i32 -8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %tx_old.i = getelementptr i8, ptr %napi, i32 -24
  %msg_enable.i = getelementptr i8, ptr %napi, i32 -12
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %init_block.i = getelementptr i8, ptr %napi, i32 436
  %pdev.i = getelementptr i8, ptr %napi, i32 1468
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_new.i = getelementptr i8, ptr %napi, i32 -28
  %rx_new.i = getelementptr i8, ptr %napi, i32 -36
  %rx_buf_sz.i = getelementptr i8, ptr %napi, i32 240
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %add, %if.end15.do.body_crit_edge ]
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 516192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end11_crit_edge, label %if.then, !prof !260

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %do.body
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %6 = tail call i32 @llvm.read_register.i32(metadata !250) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #14
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %xmit_lock_owner.i, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 8
  %call6 = tail call fastcc i32 @gem_abnormal_irq(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %12)
  %13 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end11_crit_edge, label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %reset_task_pending.i = getelementptr i8, ptr %napi, i32 380
  %14 = ptrtoint ptr %reset_task_pending.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %reset_task_pending.i, align 4
  %reset_task.i = getelementptr i8, ptr %napi, i32 336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %reset_task.i) #14
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #14
  br label %cleanup25

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %do.body.if.end11_crit_edge
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 8
  %18 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_old.i, align 8
  %shr.i = lshr i32 %17, 19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr.i)
  %cmp.not.i76 = icmp eq i32 %19, %shr.i
  br i1 %cmp.not.i76, label %if.end11.while.end.i_crit_edge, label %if.end11.while.body.i_crit_edge

if.end11.while.body.i_crit_edge:                  ; preds = %if.end11
  br label %while.body.i

if.end11.while.end.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup46.i.while.body.i_crit_edge, %if.end11.while.body.i_crit_edge
  %entry1.0.i77 = phi i32 [ %and42.i, %cleanup46.i.while.body.i_crit_edge ], [ %19, %if.end11.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable.i, align 4
  %and2.i = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %do.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 8
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %23, i32 noundef %entry1.0.i77) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.gem, ptr %add.ptr, i32 0, i32 32, i32 %entry1.0.i77
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp eq i8 %29, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end25.i_crit_edge, label %if.then6.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then6.i:                                       ; preds = %if.end.i
  %conv.i = zext i8 %29 to i32
  %add.i = add i32 %entry1.0.i77, %conv.i
  %and9.i = and i32 %add.i, 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then6.i
  %walk.0.i = phi i32 [ %entry1.0.i77, %if.then6.i ], [ %and11.i, %for.cond.i.for.cond.i_crit_edge ]
  %incomplete.0.i = phi i32 [ 0, %if.then6.i ], [ %spec.select.i, %for.cond.i.for.cond.i_crit_edge ]
  %add10.i = add i32 %walk.0.i, 1
  %and11.i = and i32 %add10.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i, i32 %shr.i)
  %cmp12.i = icmp eq i32 %and11.i, %shr.i
  %spec.select.i = select i1 %cmp12.i, i32 1, i32 %incomplete.0.i
  %cmp16.i = icmp eq i32 %and11.i, %and9.i
  br i1 %cmp16.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool20.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool20.not.i, label %for.end.i.if.end25.i_crit_edge, label %for.end.i.while.end.i_crit_edge

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.end25.i:                                       ; preds = %for.end.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_bytes.i, align 4
  %add28.i = add i32 %34, %32
  store i32 %add28.i, ptr %tx_bytes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25.i
  %entry1.1166.i = phi i32 [ %entry1.0.i77, %if.end25.i ], [ %and42.i, %for.body.i.for.body.i_crit_edge ]
  %frag.0165.i = phi i32 [ 0, %if.end25.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %init_block.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_block.i, align 4
  %arrayidx36.i = getelementptr [128 x %struct.gem_txd], ptr %36, i32 0, i32 %entry1.1166.i
  %buffer.i = getelementptr [128 x %struct.gem_txd], ptr %36, i32 0, i32 %entry1.1166.i, i32 1
  %37 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %buffer.i, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #14
  %conv37.i = trunc i64 %39 to i32
  %40 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx36.i, align 8
  %42 = and i64 %41, -36310271995674624
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #14
  %conv39.i = trunc i64 %43 to i32
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 4
  %dev40.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev40.i, i32 noundef %conv37.i, i32 noundef %conv39.i, i32 noundef 1, i32 noundef 0) #14
  %add41.i = add i32 %entry1.1166.i, 1
  %and42.i = and i32 %add41.i, 127
  %inc.i = add nuw nsw i32 %frag.0165.i, 1
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i, align 4
  %nr_frags31.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %nr_frags31.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nr_frags31.i, align 2
  %conv32.i = zext i8 %49 to i32
  %cmp33.not.not.i = icmp ult i32 %frag.0165.i, %conv32.i
  br i1 %cmp33.not.not.i, label %for.body.i.for.body.i_crit_edge, label %cleanup46.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup46.i:                                      ; preds = %for.body.i
  %50 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_packets.i, align 4
  %inc45.i = add i32 %51, 1
  store i32 %inc45.i, ptr %tx_packets.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %25, i32 noundef 0) #14
  %cmp.not.i = icmp eq i32 %and42.i, %shr.i
  br i1 %cmp.not.i, label %cleanup46.i.while.end.i_crit_edge, label %cleanup46.i.while.body.i_crit_edge

cleanup46.i.while.body.i_crit_edge:               ; preds = %cleanup46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup46.i.while.end.i_crit_edge:                ; preds = %cleanup46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup46.i.while.end.i_crit_edge, %for.end.i.while.end.i_crit_edge, %if.end11.while.end.i_crit_edge
  %entry1.3.i = phi i32 [ %19, %if.end11.while.end.i_crit_edge ], [ %entry1.0.i77, %for.end.i.while.end.i_crit_edge ], [ %shr.i, %cleanup46.i.while.end.i_crit_edge ]
  %52 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %entry1.3.i, ptr %tx_old.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !297
  %53 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %while.end.i.gem_tx.exit_crit_edge, label %land.rhs.i

while.end.i.gem_tx.exit_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_tx.exit

land.rhs.i:                                       ; preds = %while.end.i
  %57 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_old.i, align 8
  %59 = ptrtoint ptr %tx_new.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_new.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp63.not.i = icmp sgt i32 %58, %60
  %add66.i = add i32 %58, 127
  %sub.i = sub i32 %add66.i, %60
  %61 = xor i32 %60, -1
  %sub71.i = add i32 %58, %61
  %cond.i = select i1 %cmp63.not.i, i32 %sub71.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond.i)
  %cmp72.i = icmp ugt i32 %cond.i, 18
  br i1 %cmp72.i, label %if.then76.i, label %land.rhs.i.gem_tx.exit_crit_edge, !prof !261

land.rhs.i.gem_tx.exit_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_tx.exit

if.then76.i:                                      ; preds = %land.rhs.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !250) #14
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i, align 4
  %_xmit_lock.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #14
  %xmit_lock_owner.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 11
  %66 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %65, ptr %xmit_lock_owner.i.i, align 4
  %67 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i, align 128
  %state.i.i156.i = getelementptr inbounds %struct.netdev_queue, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %state.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %state.i.i156.i, align 4
  %and1.i.i.i157.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i157.i)
  %tobool.i.i158.not.i = icmp eq i32 %and1.i.i.i157.i, 0
  br i1 %tobool.i.i158.not.i, label %if.then76.i.if.end100.i_crit_edge, label %land.lhs.true.i

if.then76.i.if.end100.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

land.lhs.true.i:                                  ; preds = %if.then76.i
  %71 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_old.i, align 8
  %73 = ptrtoint ptr %tx_new.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_new.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp83.not.i = icmp sgt i32 %72, %74
  %add87.i = add i32 %72, 127
  %sub89.i = sub i32 %add87.i, %74
  %75 = xor i32 %74, -1
  %sub94.i = add i32 %72, %75
  %cond96.i = select i1 %cmp83.not.i, i32 %sub94.i, i32 %sub89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond96.i)
  %cmp97.i = icmp ugt i32 %cond96.i, 18
  br i1 %cmp97.i, label %if.then99.i, label %land.lhs.true.i.if.end100.i_crit_edge

land.lhs.true.i.if.end100.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100.i

if.then99.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %68) #14
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then99.i, %land.lhs.true.i.if.end100.i_crit_edge, %if.then76.i.if.end100.i_crit_edge
  %76 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #14
  br label %gem_tx.exit

gem_tx.exit:                                      ; preds = %if.end100.i, %land.rhs.i.gem_tx.exit_crit_edge, %while.end.i.gem_tx.exit_crit_edge
  %sub = sub i32 %budget, %work_done.0
  %77 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1, align 8
  %79 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_enable.i, align 4
  %and.i55 = and i32 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %gem_tx.exit.if.end.i59_crit_edge, label %do.end.i57

gem_tx.exit.if.end.i59_crit_edge:                 ; preds = %gem_tx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i59

do.end.i57:                                       ; preds = %gem_tx.exit
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %82, i32 16644
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !263
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !298
  %85 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_new.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %78, i32 noundef %84, i32 noundef %86) #17
  br label %if.end.i59

if.end.i59:                                       ; preds = %do.end.i57, %gem_tx.exit.if.end.i59_crit_edge
  %87 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_new.i, align 4
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %add.ptr11.i = getelementptr i8, ptr %90, i32 16644
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !299
  %92 = ptrtoint ptr %init_block.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %init_block.i, align 4
  %arrayidx258.i = getelementptr %struct.gem_init_block, ptr %93, i32 0, i32 1, i32 %88
  %94 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx258.i, align 8
  %96 = tail call i64 @llvm.bswap.i64(i64 %95) #14
  %and16259.i = and i64 %96, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16259.i)
  %cmp.not260.i = icmp eq i64 %and16259.i, 0
  br i1 %cmp.not260.i, label %if.end18.lr.ph.i, label %if.end.i59.for.end.i69_crit_edge

if.end.i59.for.end.i69_crit_edge:                 ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.end18.lr.ph.i:                                 ; preds = %if.end.i59
  %97 = tail call i32 @llvm.bswap.i32(i32 %91) #14
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 10
  %features.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 23
  %stats127.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 6
  %smax.i = tail call i32 @llvm.smax.i32(i32 %sub, i32 0) #14
  %umin.i = tail call i32 @llvm.umin.i32(i32 %smax.i, i32 128) #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %cleanup133.i.if.end18.i_crit_edge, %if.end18.lr.ph.i
  %98 = phi i64 [ %96, %if.end18.lr.ph.i ], [ %172, %cleanup133.i.if.end18.i_crit_edge ]
  %99 = phi ptr [ %93, %if.end18.lr.ph.i ], [ %169, %cleanup133.i.if.end18.i_crit_edge ]
  %entry2.0266.i = phi i32 [ %88, %if.end18.lr.ph.i ], [ %and132.i, %cleanup133.i.if.end18.i_crit_edge ]
  %drops.0264.i = phi i32 [ 0, %if.end18.lr.ph.i ], [ %drops.5.i, %cleanup133.i.if.end18.i_crit_edge ]
  %work_done.0262.i = phi i32 [ 0, %if.end18.lr.ph.i ], [ %inc.i60, %cleanup133.i.if.end18.i_crit_edge ]
  %done.0261.i = phi i32 [ %97, %if.end18.lr.ph.i ], [ %done.1.i, %cleanup133.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0262.i, i32 %umin.i)
  %exitcond.not.i = icmp eq i32 %work_done.0262.i, %umin.i
  br i1 %exitcond.not.i, label %if.end18.i.for.end.i69_crit_edge, label %if.end22.i

if.end18.i.for.end.i69_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.end22.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %entry2.0266.i, i32 %done.0261.i)
  %cmp23.i = icmp eq i32 %entry2.0266.i, %done.0261.i
  br i1 %cmp23.i, label %if.then24.i, label %if.end22.i.if.end35.i_crit_edge

if.end22.i.if.end35.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then24.i:                                      ; preds = %if.end22.i
  %100 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr, align 8
  %add.ptr28.i = getelementptr i8, ptr %101, i32 16644
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #14, !srcloc !263
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !300
  call void @__sanitizer_cov_trace_cmp4(i32 %entry2.0266.i, i32 %103)
  %cmp32.i = icmp eq i32 %entry2.0266.i, %103
  br i1 %cmp32.i, label %if.then24.i.for.end.i69_crit_edge, label %if.then24.i.if.end35.i_crit_edge

if.then24.i.if.end35.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then24.i.for.end.i69_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.end35.i:                                       ; preds = %if.then24.i.if.end35.i_crit_edge, %if.end22.i.if.end35.i_crit_edge
  %done.1.i = phi i32 [ %103, %if.then24.i.if.end35.i_crit_edge ], [ %done.0261.i, %if.end22.i.if.end35.i_crit_edge ]
  %inc.i60 = add nuw nsw i32 %work_done.0262.i, 1
  %arrayidx36.i61 = getelementptr %struct.gem, ptr %add.ptr, i32 0, i32 31, i32 %entry2.0266.i
  %104 = ptrtoint ptr %arrayidx36.i61 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx36.i61, align 4
  %106 = trunc i64 %98 to i32
  %107 = lshr i32 %106, 16
  %conv.i62 = and i32 %107, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv.i62)
  %cmp38.i = icmp ult i32 %conv.i62, 60
  %cmp38.not.i = xor i1 %cmp38.i, true
  %and41.i = and i64 %98, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41.i)
  %tobool42.not.i = icmp eq i64 %and41.i, 0
  %or.cond228.i = select i1 %cmp38.not.i, i1 %tobool42.not.i, i1 false
  br i1 %or.cond228.i, label %if.end60.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end35.i
  %108 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_errors.i, align 8
  %inc44.i = add i32 %109, 1
  store i32 %inc44.i, ptr %rx_errors.i, align 8
  br i1 %cmp38.i, label %if.then47.i, label %if.then43.i.cleanup133.i_crit_edge

if.then43.i.cleanup133.i_crit_edge:               ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup133.i

if.then47.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #16
  %110 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_length_errors.i, align 8
  %inc49.i = add i32 %111, 1
  store i32 %inc49.i, ptr %rx_length_errors.i, align 8
  br label %cleanup133.i

if.end60.i:                                       ; preds = %if.end35.i
  %buffer.i63 = getelementptr %struct.gem_init_block, ptr %99, i32 0, i32 1, i32 %entry2.0266.i, i32 1
  %112 = ptrtoint ptr %buffer.i63 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %buffer.i63, align 8
  %114 = tail call i64 @llvm.bswap.i64(i64 %113) #14
  %conv61.i = trunc i64 %114 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %conv.i62)
  %cmp62.i = icmp ugt i32 %conv.i62, 256
  br i1 %cmp62.i, label %if.then64.i, label %if.else.i

if.then64.i:                                      ; preds = %if.end60.i
  %115 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_buf_sz.i, align 8
  %add.i.i = add i32 %116, 158
  %call.i.i.i64 = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i.i64, null
  br i1 %tobool.not.i.i, label %cleanup.i, label %cleanup.thread.i, !prof !261

cleanup.thread.i:                                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i64, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  %add3.i.i = add i32 %119, 63
  %and.i.i65 = and i32 %add3.i.i, -64
  %sub.i.i = sub i32 %and.i.i65, %119
  %add.ptr.i.i.i = getelementptr i8, ptr %118, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i64, i32 0, i32 16
  %120 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %121, i32 %sub.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %122 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev.i, align 4
  %dev73.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_buf_sz.i, align 8
  %add77.i = add i32 %125, 94
  tail call void @dma_unmap_page_attrs(ptr noundef %dev73.i, i32 noundef %conv61.i, i32 noundef %add77.i, i32 noundef 2, i32 noundef 0) #14
  %126 = ptrtoint ptr %arrayidx36.i61 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i.i64, ptr %arrayidx36.i61, align 4
  %127 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_buf_sz.i, align 8
  %add81.i = add i32 %128, 2
  %call82.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i64, i32 noundef %add81.i) #14
  %129 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdev.i, align 4
  %dev84.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %131 = load ptr, ptr @mem_map, align 4
  %132 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i, align 4
  %134 = ptrtoint ptr %133 to i32
  %sub.i66 = add i32 %134, 1073741824
  %shr85.i = lshr i32 %sub.i66, 12
  %add.ptr88.i = getelementptr %struct.page, ptr %131, i32 %shr85.i
  %and90.i = and i32 %134, 4095
  %135 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_buf_sz.i, align 8
  %add94.i = add i32 %136, 94
  %call95.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev84.i, ptr noundef %add.ptr88.i, i32 noundef %and90.i, i32 noundef %add94.i, i32 noundef 2, i32 noundef 0) #14
  %conv96.i = zext i32 %call95.i to i64
  %137 = tail call i64 @llvm.bswap.i64(i64 %conv96.i) #14
  %138 = ptrtoint ptr %buffer.i63 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %buffer.i63, align 8
  %139 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %140, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %141 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %142, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i.i, align 8
  tail call void @skb_trim(ptr noundef %105, i32 noundef %conv.i62) #14
  br label %if.end114.i

cleanup.i:                                        ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc71.i = add i32 %drops.0264.i, 1
  br label %cleanup133.i

if.else.i:                                        ; preds = %if.end60.i
  %add98.i = add nuw nsw i32 %conv.i62, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %78, i32 noundef %add98.i, i32 noundef 2592) #14
  %cmp100.i = icmp eq ptr %call.i.i, null
  br i1 %cmp100.i, label %cleanup111.i, label %cleanup111.thread.i

cleanup111.thread.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i232.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %143 = ptrtoint ptr %data.i232.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %data.i232.i, align 4
  %add.ptr.i233.i = getelementptr i8, ptr %144, i32 2
  store ptr %add.ptr.i233.i, ptr %data.i232.i, align 4
  %tail.i234.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %145 = ptrtoint ptr %tail.i234.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tail.i234.i, align 8
  %add.ptr1.i235.i = getelementptr i8, ptr %146, i32 2
  store ptr %add.ptr1.i235.i, ptr %tail.i234.i, align 8
  %call105.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv.i62) #14
  %147 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev.i, align 4
  %dev107.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev107.i, i32 noundef %conv61.i, i32 noundef %conv.i62, i32 noundef 2) #14
  %149 = ptrtoint ptr %data.i232.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i232.i, align 4
  %data.i236.i = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 19
  %151 = ptrtoint ptr %data.i236.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i236.i, align 4
  %153 = call ptr @memcpy(ptr %150, ptr %152, i32 %conv.i62)
  %154 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i, align 4
  %dev110.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev110.i, i32 noundef %conv61.i, i32 noundef %conv.i62, i32 noundef 2) #14
  br label %if.end114.i

cleanup111.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc103.i = add i32 %drops.0264.i, 1
  br label %cleanup133.i

if.end114.i:                                      ; preds = %cleanup111.thread.i, %cleanup.thread.i
  %skb.1.i = phi ptr [ %105, %cleanup.thread.i ], [ %call.i.i, %cleanup111.thread.i ]
  %156 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %features.i, align 16
  %and115.i = and i64 %157, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and115.i)
  %tobool116.not.i = icmp eq i64 %and115.i, 0
  br i1 %tobool116.not.i, label %if.end114.i.if.end123.i_crit_edge, label %if.then119.i, !prof !261

if.end114.i.if.end123.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.then119.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv121.i = and i32 %106, 65535
  %conv.i.i = xor i32 %conv121.i, 65535
  %158 = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 5
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv.i.i, ptr %158, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15
  %160 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then119.i, %if.end114.i.if.end123.i_crit_edge
  %161 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev1, align 8
  %call125.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1.i, ptr noundef %162) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %163 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %call125.i, ptr %protocol.i, align 8
  %call126.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %skb.1.i) #14
  %164 = ptrtoint ptr %stats127.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %stats127.i, align 8
  %inc128.i = add i32 %165, 1
  store i32 %inc128.i, ptr %stats127.i, align 8
  br label %cleanup133.i

cleanup133.i:                                     ; preds = %if.end123.i, %cleanup111.i, %cleanup.i, %if.then47.i, %if.then43.i.cleanup133.i_crit_edge
  %rx_dropped.sink279.i = phi ptr [ %rx_bytes.i, %if.end123.i ], [ %rx_dropped.i, %cleanup111.i ], [ %rx_dropped.i, %cleanup.i ], [ %rx_dropped.i, %if.then43.i.cleanup133.i_crit_edge ], [ %rx_dropped.i, %if.then47.i ]
  %.sink278.i = phi i32 [ %conv.i62, %if.end123.i ], [ 1, %cleanup111.i ], [ 1, %cleanup.i ], [ 1, %if.then43.i.cleanup133.i_crit_edge ], [ 1, %if.then47.i ]
  %drops.5.i = phi i32 [ %drops.0264.i, %if.end123.i ], [ %inc103.i, %cleanup111.i ], [ %inc71.i, %cleanup.i ], [ %drops.0264.i, %if.then43.i.cleanup133.i_crit_edge ], [ %drops.0264.i, %if.then47.i ]
  %166 = ptrtoint ptr %rx_dropped.sink279.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rx_dropped.sink279.i, align 8
  %inc59.i = add i32 %167, %.sink278.i
  store i32 %inc59.i, ptr %rx_dropped.sink279.i, align 8
  %add131.i = add i32 %entry2.0266.i, 1
  %and132.i = and i32 %add131.i, 127
  %168 = ptrtoint ptr %init_block.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %init_block.i, align 4
  %arrayidx.i67 = getelementptr %struct.gem_init_block, ptr %169, i32 0, i32 1, i32 %and132.i
  %170 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx.i67, align 8
  %172 = tail call i64 @llvm.bswap.i64(i64 %171) #14
  %and16.i = and i64 %172, 2147483648
  %cmp.not.i68 = icmp eq i64 %and16.i, 0
  br i1 %cmp.not.i68, label %cleanup133.i.if.end18.i_crit_edge, label %cleanup133.i.for.end.i69_crit_edge

cleanup133.i.for.end.i69_crit_edge:               ; preds = %cleanup133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

cleanup133.i.if.end18.i_crit_edge:                ; preds = %cleanup133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

for.end.i69:                                      ; preds = %cleanup133.i.for.end.i69_crit_edge, %if.then24.i.for.end.i69_crit_edge, %if.end18.i.for.end.i69_crit_edge, %if.end.i59.for.end.i69_crit_edge
  %work_done.0.lcssa.i = phi i32 [ 0, %if.end.i59.for.end.i69_crit_edge ], [ %work_done.0262.i, %if.then24.i.for.end.i69_crit_edge ], [ %umin.i, %if.end18.i.for.end.i69_crit_edge ], [ %inc.i60, %cleanup133.i.for.end.i69_crit_edge ]
  %drops.0.lcssa.i = phi i32 [ 0, %if.end.i59.for.end.i69_crit_edge ], [ %drops.0264.i, %if.then24.i.for.end.i69_crit_edge ], [ %drops.0264.i, %if.end18.i.for.end.i69_crit_edge ], [ %drops.5.i, %cleanup133.i.for.end.i69_crit_edge ]
  %entry2.0.lcssa.i = phi i32 [ %88, %if.end.i59.for.end.i69_crit_edge ], [ %entry2.0266.i, %if.then24.i.for.end.i69_crit_edge ], [ %entry2.0266.i, %if.end18.i.for.end.i69_crit_edge ], [ %and132.i, %cleanup133.i.for.end.i69_crit_edge ]
  %173 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rx_new.i, align 4
  %and.i237.i = and i32 %174, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !301
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i237.i, i32 %entry2.0.lcssa.i)
  %cmp.not32.i.i = icmp eq i32 %and.i237.i, %entry2.0.lcssa.i
  br i1 %cmp.not32.i.i, label %for.end.i69.gem_post_rxds.exit.i_crit_edge, label %for.end.i69.while.body.i.i_crit_edge

for.end.i69.while.body.i.i_crit_edge:             ; preds = %for.end.i69
  br label %while.body.i.i

for.end.i69.gem_post_rxds.exit.i_crit_edge:       ; preds = %for.end.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_post_rxds.exit.i

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %for.end.i69.while.body.i.i_crit_edge
  %kick.036.i.i = phi i32 [ %kick.1.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ -1, %for.end.i69.while.body.i.i_crit_edge ]
  %count.035.i.i = phi i32 [ %count.1.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ 0, %for.end.i69.while.body.i.i_crit_edge ]
  %curr.034.i.i = phi i32 [ %and1.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %and.i237.i, %for.end.i69.while.body.i.i_crit_edge ]
  %cluster_start.033.i.i = phi i32 [ %cluster_start.2.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %and.i237.i, %for.end.i69.while.body.i.i_crit_edge ]
  %add.i238.i = add nsw i32 %curr.034.i.i, 1
  %and1.i.i = and i32 %add.i238.i, 127
  %inc.i.i = add i32 %count.035.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i.i)
  %cmp2.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %cmp2.i.i, label %if.then.i239.i, label %while.body.i.i.if.end13.i.i_crit_edge

while.body.i.i.if.end13.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i.i

if.then.i239.i:                                   ; preds = %while.body.i.i
  %175 = ptrtoint ptr %init_block.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %init_block.i, align 4
  %arrayidx.i.i = getelementptr %struct.gem_init_block, ptr %176, i32 0, i32 1, i32 %cluster_start.033.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then.i239.i
  %cluster_start.1.i.i = phi i32 [ %cluster_start.033.i.i, %if.then.i239.i ], [ %and9.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %rxd.0.i.i = phi ptr [ %arrayidx.i.i, %if.then.i239.i ], [ %incdec.ptr.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %177 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rx_buf_sz.i, align 8
  %sub.i240.i = shl i32 %178, 16
  %shl.i.i = add i32 %sub.i240.i, 6029312
  %179 = or i32 %shl.i.i, -2147483648
  %or.i.i = zext i32 %179 to i64
  %180 = tail call i64 @llvm.bswap.i64(i64 %or.i.i) #14
  %181 = ptrtoint ptr %rxd.0.i.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %rxd.0.i.i, align 8
  %incdec.ptr.i.i = getelementptr %struct.gem_rxd, ptr %rxd.0.i.i, i32 1
  %add8.i.i = add i32 %cluster_start.1.i.i, 1
  %and9.i.i = and i32 %add8.i.i, 127
  %cmp10.i.i = icmp eq i32 %and9.i.i, %and1.i.i
  br i1 %cmp10.i.i, label %for.cond.i.i.if.end13.i.i_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

for.cond.i.i.if.end13.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %for.cond.i.i.if.end13.i.i_crit_edge, %while.body.i.i.if.end13.i.i_crit_edge
  %cluster_start.2.i.i = phi i32 [ %cluster_start.033.i.i, %while.body.i.i.if.end13.i.i_crit_edge ], [ %and1.i.i, %for.cond.i.i.if.end13.i.i_crit_edge ]
  %count.1.i.i = phi i32 [ %inc.i.i, %while.body.i.i.if.end13.i.i_crit_edge ], [ 0, %for.cond.i.i.if.end13.i.i_crit_edge ]
  %kick.1.i.i = phi i32 [ %kick.036.i.i, %while.body.i.i.if.end13.i.i_crit_edge ], [ %and1.i.i, %for.cond.i.i.if.end13.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq i32 %and1.i.i, %entry2.0.lcssa.i
  br i1 %cmp.not.i.i, label %while.end.i.i, label %if.end13.i.i.while.body.i.i_crit_edge

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %kick.1.i.i)
  %cmp14.i.i = icmp sgt i32 %kick.1.i.i, -1
  br i1 %cmp14.i.i, label %do.body.i.i, label %while.end.i.i.gem_post_rxds.exit.i_crit_edge

while.end.i.i.gem_post_rxds.exit.i_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_post_rxds.exit.i

do.body.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !302
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !303
  tail call void @arm_heavy_mb() #14
  %182 = tail call i32 @llvm.bswap.i32(i32 %kick.1.i.i) #14
  %183 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i241.i = getelementptr i8, ptr %184, i32 16640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241.i, i32 %182) #14, !srcloc !268
  br label %gem_post_rxds.exit.i

gem_post_rxds.exit.i:                             ; preds = %do.body.i.i, %while.end.i.i.gem_post_rxds.exit.i_crit_edge, %for.end.i69.gem_post_rxds.exit.i_crit_edge
  %185 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %entry2.0.lcssa.i, ptr %rx_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drops.0.lcssa.i)
  %tobool141.not.i = icmp eq i32 %drops.0.lcssa.i, 0
  br i1 %tobool141.not.i, label %gem_post_rxds.exit.i.gem_rx.exit_crit_edge, label %if.then142.i

gem_post_rxds.exit.i.gem_rx.exit_crit_edge:       ; preds = %gem_post_rxds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_rx.exit

if.then142.i:                                     ; preds = %gem_post_rxds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %186 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %187, ptr noundef nonnull @.str.118) #17
  br label %gem_rx.exit

gem_rx.exit:                                      ; preds = %if.then142.i, %gem_post_rxds.exit.i.gem_rx.exit_crit_edge
  %add = add i32 %work_done.0.lcssa.i, %work_done.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp.not = icmp slt i32 %add, %budget
  br i1 %cmp.not, label %if.end15, label %gem_rx.exit.cleanup25_crit_edge

gem_rx.exit.cleanup25_crit_edge:                  ; preds = %gem_rx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

if.end15:                                         ; preds = %gem_rx.exit
  %188 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %add.ptr, align 8
  %add.ptr16 = getelementptr i8, ptr %189, i32 12
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #14, !srcloc !263
  %191 = tail call i32 @llvm.bswap.i32(i32 %190)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !304
  %192 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %status, align 8
  %and22 = and i32 %191, 516211
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.end, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %add) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !305
  tail call void @arm_heavy_mb() #14
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i70 = getelementptr i8, ptr %194, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 67108864) #14, !srcloc !268
  br label %cleanup25

cleanup25:                                        ; preds = %do.end, %gem_rx.exit.cleanup25_crit_edge, %cleanup
  %retval.3 = phi i32 [ %add, %do.end ], [ %work_done.0, %cleanup ], [ %add, %gem_rx.exit.cleanup25_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gem_set_link_modes(ptr noundef %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %phy_type = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 27
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %phy_mii = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28
  %6 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_mii, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true3

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.mii_phy_def, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true3.do.body_crit_edge, label %if.then

land.lhs.true3.do.body_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %land.lhs.true3
  %read_link = getelementptr inbounds %struct.mii_phy_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %read_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_link, align 4
  %call11 = tail call i32 %11(ptr noundef %phy_mii) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %duplex = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp15 = icmp eq i32 %13, 1
  %conv = zext i1 %cmp15 to i32
  %speed17 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 4
  %14 = ptrtoint ptr %speed17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed17, align 4
  %pause19 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %pause19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pause19, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %18 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch279 = icmp eq i32 %18, 2
  br i1 %switch279, label %if.then27, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then27:                                        ; preds = %if.else
  %19 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gp, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 36876
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !306
  %22 = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not = icmp eq i32 %22, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.then27.if.then35_crit_edge

if.then27.if.then35_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

lor.lhs.false31:                                  ; preds = %if.then27
  %23 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp33 = icmp eq i32 %24, 3
  br i1 %cmp33, label %lor.lhs.false31.if.then35_crit_edge, label %lor.lhs.false31.do.body_crit_edge

lor.lhs.false31.do.body_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false31.if.then35_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false31.if.then35_crit_edge, %if.then27.if.then35_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.then35, %lor.lhs.false31.do.body_crit_edge, %if.else.do.body_crit_edge, %if.end, %land.lhs.true3.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %pause.0 = phi i32 [ %17, %if.end ], [ 0, %if.else.do.body_crit_edge ], [ 0, %if.then35 ], [ 0, %lor.lhs.false31.do.body_crit_edge ], [ 0, %land.lhs.true3.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  %speed.0 = phi i32 [ %15, %if.end ], [ 10, %if.else.do.body_crit_edge ], [ 1000, %if.then35 ], [ 1000, %lor.lhs.false31.do.body_crit_edge ], [ 10, %land.lhs.true3.do.body_crit_edge ], [ 10, %land.lhs.true.do.body_crit_edge ]
  %full_duplex.1 = phi i32 [ %conv, %if.end ], [ 0, %if.else.do.body_crit_edge ], [ 1, %if.then35 ], [ 0, %lor.lhs.false31.do.body_crit_edge ], [ 0, %land.lhs.true3.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and39 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body.do.end_crit_edge, label %if.then41

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_duplex.1)
  %tobool43.not = icmp eq i32 %full_duplex.1, 0
  %cond = select i1 %tobool43.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.32, i32 noundef %speed.0, ptr noundef nonnull %cond) #17
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body.do.end_crit_edge
  %29 = tail call i32 @llvm.read_register.i32(metadata !250) #14
  %and.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #14
  %xmit_lock_owner.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 11
  %33 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %32, ptr %xmit_lock_owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_duplex.1)
  %tobool46.not = icmp eq i32 %full_duplex.1, 0
  %spec.select = select i1 %tobool46.not, i32 402653184, i32 503316480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !307
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gp, align 8
  %add.ptr54 = getelementptr i8, ptr %35, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %spec.select) #14, !srcloc !268
  br i1 %tobool46.not, label %land.lhs.true56, label %do.end.if.else66_crit_edge

do.end.if.else66_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else66

land.lhs.true56:                                  ; preds = %do.end
  %36 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch280 = icmp ult i32 %37, 2
  br i1 %switch280, label %land.lhs.true56.if.end71_crit_edge, label %land.lhs.true56.if.else66_crit_edge

land.lhs.true56.if.else66_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else66

land.lhs.true56.if.end71_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.else66:                                        ; preds = %land.lhs.true56.if.else66_crit_edge, %do.end.if.else66_crit_edge
  %spec.select276 = phi i32 [ 33, %land.lhs.true56.if.else66_crit_edge ], [ 97, %do.end.if.else66_crit_edge ]
  br label %if.end71

if.end71:                                         ; preds = %if.else66, %land.lhs.true56.if.end71_crit_edge
  %val.1 = phi i32 [ 37, %land.lhs.true56.if.end71_crit_edge ], [ %spec.select276, %if.else66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed.0)
  %cmp72 = icmp eq i32 %speed.0, 1000
  %or75 = or i32 %val.1, 8
  %spec.select277 = select i1 %cmp72, i32 %or75, i32 %val.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !308
  tail call void @arm_heavy_mb() #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %spec.select277)
  %39 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gp, align 8
  %add.ptr81 = getelementptr i8, ptr %40, i32 24636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %38) #14, !srcloc !268
  %41 = select i1 %cmp72, i1 %tobool46.not, i1 false
  %42 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gp, align 8
  %add.ptr90 = getelementptr i8, ptr %43, i32 24624
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %41, label %if.then86, label %if.else113

if.then86:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %45 = or i32 %44, 131072
  %46 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gp, align 8
  %add.ptr99 = getelementptr i8, ptr %47, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %45) #14, !srcloc !268
  %48 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gp, align 8
  %add.ptr103 = getelementptr i8, ptr %49, i32 24628
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !309
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !310
  tail call void @arm_heavy_mb() #14
  %51 = or i32 %50, 65536
  %52 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gp, align 8
  %add.ptr112 = getelementptr i8, ptr %53, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %51) #14, !srcloc !268
  br label %if.end140

if.else113:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %54 = and i32 %44, -131073
  %55 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gp, align 8
  %add.ptr126 = getelementptr i8, ptr %56, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %54) #14, !srcloc !268
  %57 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gp, align 8
  %add.ptr130 = getelementptr i8, ptr %58, i32 24628
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !312
  tail call void @arm_heavy_mb() #14
  %60 = and i32 %59, -65537
  %61 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gp, align 8
  %add.ptr139 = getelementptr i8, ptr %62, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %60) #14, !srcloc !268
  br label %if.end140

if.end140:                                        ; preds = %if.else113, %if.then86
  %63 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy_type, align 8
  %65 = and i32 %64, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %switch282 = icmp eq i32 %65, 2
  br i1 %switch282, label %if.then148, label %if.end140.if.end161_crit_edge

if.end140.if.end161_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end161

if.then148:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gp, align 8
  %add.ptr153 = getelementptr i8, ptr %67, i32 36876
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !313
  %69 = and i32 %68, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool158.not = icmp eq i32 %69, 0
  %spec.select278 = select i1 %tobool158.not, i32 %pause.0, i32 1
  br label %if.end161

if.end161:                                        ; preds = %if.then148, %if.end140.if.end161_crit_edge
  %pause.2 = phi i32 [ %spec.select278, %if.then148 ], [ %pause.0, %if.end140.if.end161_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %70 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gp, align 8
  %add.ptr168 = getelementptr i8, ptr %71, i32 24652
  br i1 %tobool46.not, label %do.body164, label %do.body170

do.body164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 131072) #14, !srcloc !268
  br label %if.end175

do.body170:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 1073741824) #14, !srcloc !268
  br label %if.end175

if.end175:                                        ; preds = %do.body170, %do.body164
  %72 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gp, align 8
  %add.ptr179 = getelementptr i8, ptr %73, i32 24632
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pause.2)
  %tobool183.not = icmp eq i32 %pause.2, 0
  %75 = and i32 %74, -50331649
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %masksel = select i1 %tobool183.not, i32 0, i32 3
  %val.3 = or i32 %76, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !315
  tail call void @arm_heavy_mb() #14
  %77 = tail call i32 @llvm.bswap.i32(i32 %val.3)
  %78 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gp, align 8
  %add.ptr193 = getelementptr i8, ptr %79, i32 24632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %77) #14, !srcloc !268
  %80 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %gp, align 8
  %add.ptr.i = getelementptr i8, ptr %81, i32 8196
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !317
  tail call void @arm_heavy_mb() #14
  %83 = or i32 %82, 16777216
  %84 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gp, align 8
  %add.ptr3.i = getelementptr i8, ptr %85, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %83) #14, !srcloc !268
  %86 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gp, align 8
  %add.ptr7.i = getelementptr i8, ptr %87, i32 16384
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !319
  tail call void @arm_heavy_mb() #14
  %89 = or i32 %88, 16777216
  %90 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gp, align 8
  %add.ptr16.i = getelementptr i8, ptr %91, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %89) #14, !srcloc !268
  %92 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gp, align 8
  %add.ptr20.i = getelementptr i8, ptr %93, i32 24624
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %95 = or i32 %94, 16777216
  %96 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gp, align 8
  %add.ptr29.i = getelementptr i8, ptr %97, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %95) #14, !srcloc !268
  %98 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gp, align 8
  %add.ptr33.i = getelementptr i8, ptr %99, i32 24628
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !323
  tail call void @arm_heavy_mb() #14
  %101 = or i32 %100, 16777216
  %102 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %gp, align 8
  %add.ptr42.i = getelementptr i8, ptr %103, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %101) #14, !srcloc !268
  %104 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %gp, align 8
  %add.ptr46.i = getelementptr i8, ptr %105, i32 24628
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !324
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 21474800) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !305
  tail call void @arm_heavy_mb() #14
  %108 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %gp, align 8
  %add.ptr.i.i = getelementptr i8, ptr %109, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !325
  tail call void @arm_heavy_mb() #14
  %110 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %gp, align 8
  %add.ptr54.i = getelementptr i8, ptr %111, i32 16640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 2080374784) #14, !srcloc !268
  %112 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #14
  %113 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %msg_enable, align 4
  %and195 = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.end175.cleanup_crit_edge, label %if.then197

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then197:                                       ; preds = %if.end175
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 8
  br i1 %tobool183.not, label %if.else201, label %if.then199

if.then199:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #16
  %rx_fifo_sz = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 11
  %117 = ptrtoint ptr %rx_fifo_sz to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_fifo_sz, align 4
  %rx_pause_off = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 12
  %119 = ptrtoint ptr %rx_pause_off to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_pause_off, align 8
  %rx_pause_on = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 13
  %121 = ptrtoint ptr %rx_pause_on to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_pause_on, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %116, ptr noundef nonnull @.str.35, i32 noundef %118, i32 noundef %120, i32 noundef %122) #17
  br label %cleanup

if.else201:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %116, ptr noundef nonnull @.str.36) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else201, %if.then199, %if.end175.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.then199 ], [ 0, %if.else201 ], [ 0, %if.end175.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gem_mdio_link_not_up(ptr noundef %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lstate = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 21
  %0 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lstate, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %1, label %entry.return_crit_edge [
    i32 3, label %do.body
    i32 1, label %sw.bb3
    i32 2, label %sw.bb25
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %6, ptr noundef nonnull @.str.37) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %phy_mii = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28
  %7 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_mii, align 4
  %ops = getelementptr inbounds %struct.mii_phy_def, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %setup_forced = getelementptr inbounds %struct.mii_phy_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %setup_forced to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup_forced, align 4
  %last_forced_speed = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 20
  %13 = ptrtoint ptr %last_forced_speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_forced_speed, align 8
  %call = tail call i32 %12(ptr noundef %phy_mii, i32 noundef %14, i32 noundef 0) #14
  %timer_ticks = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 23
  %15 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %timer_ticks, align 8
  %16 = ptrtoint ptr %lstate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %lstate, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %phy_mii4 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28
  %17 = ptrtoint ptr %phy_mii4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_mii4, align 4
  %magic_aneg = getelementptr inbounds %struct.mii_phy_def, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %magic_aneg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %magic_aneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %do.body9, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body9:                                         ; preds = %sw.bb3
  %msg_enable10 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %21 = ptrtoint ptr %msg_enable10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable10, align 4
  %and11 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body9.do.end16_crit_edge, label %if.then13

do.body9.do.end16_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %dev14 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %23 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %24, ptr noundef nonnull @.str.38) #17
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body9.do.end16_crit_edge
  %25 = ptrtoint ptr %phy_mii4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_mii4, align 4
  %ops19 = getelementptr inbounds %struct.mii_phy_def, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops19, align 4
  %setup_forced20 = getelementptr inbounds %struct.mii_phy_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %setup_forced20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup_forced20, align 4
  %call22 = tail call i32 %30(ptr noundef %phy_mii4, i32 noundef 100, i32 noundef 0) #14
  %timer_ticks23 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 23
  %31 = ptrtoint ptr %timer_ticks23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %timer_ticks23, align 8
  %32 = ptrtoint ptr %lstate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %lstate, align 4
  br label %return

sw.bb25:                                          ; preds = %entry
  %speed = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 4
  %33 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %34)
  %cmp = icmp eq i32 %34, 100
  br i1 %cmp, label %if.then27, label %sw.bb25.return_crit_edge

sw.bb25.return_crit_edge:                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then27:                                        ; preds = %sw.bb25
  %phy_mii26 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28
  %35 = ptrtoint ptr %phy_mii26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_mii26, align 4
  %ops30 = getelementptr inbounds %struct.mii_phy_def, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops30, align 4
  %setup_forced31 = getelementptr inbounds %struct.mii_phy_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %setup_forced31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %setup_forced31, align 4
  %call33 = tail call i32 %40(ptr noundef %phy_mii26, i32 noundef 10, i32 noundef 0) #14
  %timer_ticks34 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 23
  %41 = ptrtoint ptr %timer_ticks34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %timer_ticks34, align 8
  %msg_enable36 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %42 = ptrtoint ptr %msg_enable36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable36, align 4
  %and37 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then27.return_crit_edge, label %if.then39

if.then27.return_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then39:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %dev40 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %44 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev40, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.39) #17
  br label %return

return:                                           ; preds = %if.then39, %if.then27.return_crit_edge, %sw.bb25.return_crit_edge, %do.end16, %sw.bb3.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end16 ], [ 0, %do.end ], [ 1, %sw.bb3.return_crit_edge ], [ 0, %if.then27.return_crit_edge ], [ 0, %if.then39 ], [ 1, %sw.bb25.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_begin_auto_negotiation(ptr noundef %gp, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #14
  %0 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising, align 4, !annotation !286
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %advertising1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ep, i32 0, i32 1, i32 1
  %call = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_type = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 27
  %1 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %land.lhs.true10, label %if.end.non_mii_crit_edge

if.end.non_mii_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_mii

land.lhs.true10:                                  ; preds = %if.end
  %phy_mii = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28
  %3 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_mii, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end20_crit_edge, label %land.lhs.true12

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %ops = getelementptr inbounds %struct.mii_phy_def, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %land.lhs.true12.if.end20_crit_edge, label %if.then16

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  %features19 = getelementptr inbounds %struct.mii_phy_def, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %features19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true12.if.end20_crit_edge, %land.lhs.true10.if.end20_crit_edge
  %features.0 = phi i32 [ %8, %if.then16 ], [ 0, %land.lhs.true12.if.end20_crit_edge ], [ 0, %land.lhs.true10.if.end20_crit_edge ]
  %and = and i32 %features.0, 8319
  %advertising22 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 1
  %9 = ptrtoint ptr %advertising22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %advertising22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23.not = icmp eq i32 %10, 0
  %and27 = select i1 %cmp23.not, i32 -1, i32 %10
  %spec.select = and i32 %and, %and27
  %want_autoneg = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 19
  %11 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %want_autoneg, align 4
  %speed30 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 4
  %13 = ptrtoint ptr %speed30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed30, align 4
  %duplex32 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 5
  %15 = ptrtoint ptr %duplex32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %duplex32, align 4
  br i1 %tobool.not, label %if.end20.start_aneg_crit_edge, label %if.end35

if.end20.start_aneg_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %start_aneg

if.end35:                                         ; preds = %if.end20
  %autoneg36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 5
  %17 = ptrtoint ptr %autoneg36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %autoneg36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp37 = icmp eq i8 %18, 1
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising, align 4
  br label %start_aneg

if.else40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %speed42 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 1
  %21 = ptrtoint ptr %speed42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed42, align 4
  %duplex44 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 2
  %23 = ptrtoint ptr %duplex44 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %duplex44, align 4
  %conv45 = zext i8 %24 to i32
  br label %start_aneg

start_aneg:                                       ; preds = %if.else40, %if.then39, %if.end20.start_aneg_crit_edge
  %advertise.1 = phi i32 [ %20, %if.then39 ], [ %spec.select, %if.else40 ], [ %spec.select, %if.end20.start_aneg_crit_edge ]
  %autoneg.0 = phi i32 [ 1, %if.then39 ], [ 0, %if.else40 ], [ %12, %if.end20.start_aneg_crit_edge ]
  %speed.0 = phi i32 [ %14, %if.then39 ], [ %22, %if.else40 ], [ %14, %if.end20.start_aneg_crit_edge ]
  %duplex.0 = phi i32 [ %16, %if.then39 ], [ %conv45, %if.else40 ], [ %16, %if.end20.start_aneg_crit_edge ]
  %and47 = and i32 %features.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %cmp48 = icmp eq i32 %and47, 0
  %spec.select205 = select i1 %cmp48, i32 0, i32 %autoneg.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed.0)
  %cmp52 = icmp eq i32 %speed.0, 1000
  %and55 = and i32 %features.0, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %spec.select206 = select i1 %tobool56.not, i32 100, i32 1000
  %speed.1 = select i1 %cmp52, i32 %spec.select206, i32 %speed.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed.1)
  %cmp59 = icmp eq i32 %speed.1, 100
  %and62 = and i32 %features.0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %spec.select207 = select i1 %tobool63.not, i32 10, i32 100
  %speed.2 = select i1 %cmp59, i32 %spec.select207, i32 %speed.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex.0)
  %cmp66 = icmp eq i32 %duplex.0, 1
  %and69 = and i32 %features.0, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp ne i32 %and69, 0
  %spec.select208 = zext i1 %tobool70.not to i32
  %duplex.1 = select i1 %cmp66, i32 %spec.select208, i32 %duplex.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.2)
  %cmp73 = icmp eq i32 %speed.2, 0
  %spec.store.select = select i1 %cmp73, i32 10, i32 %speed.2
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select205, ptr %want_autoneg, align 4
  br i1 %tobool.i.not, label %if.then78, label %if.end86

if.then78:                                        ; preds = %start_aneg
  call void @__sanitizer_cov_trace_pc() #16
  %autoneg81 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 28, i32 3
  %31 = ptrtoint ptr %autoneg81 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select205, ptr %autoneg81, align 4
  %32 = ptrtoint ptr %speed30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select, ptr %speed30, align 4
  %33 = ptrtoint ptr %duplex32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %duplex.1, ptr %duplex32, align 4
  br label %cleanup

if.end86:                                         ; preds = %start_aneg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select205)
  %tobool88.not = icmp eq i32 %spec.select205, 0
  %34 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_mii, align 4
  %tobool124.not = icmp eq ptr %35, null
  br i1 %tobool88.not, label %land.lhs.true121, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end86
  br i1 %tobool124.not, label %land.lhs.true97.non_mii.sink.split_crit_edge, label %land.lhs.true101

land.lhs.true97.non_mii.sink.split_crit_edge:     ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_mii.sink.split

land.lhs.true101:                                 ; preds = %land.lhs.true97
  %ops104 = getelementptr inbounds %struct.mii_phy_def, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %ops104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops104, align 4
  %tobool105.not = icmp eq ptr %37, null
  br i1 %tobool105.not, label %land.lhs.true101.non_mii.sink.split_crit_edge, label %if.then106

land.lhs.true101.non_mii.sink.split_crit_edge:    ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_mii.sink.split

if.then106:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #16
  %setup_aneg = getelementptr inbounds %struct.mii_phy_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %setup_aneg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setup_aneg, align 4
  %call111 = call i32 %39(ptr noundef %phy_mii, i32 noundef %advertise.1) #14
  br label %non_mii.sink.split

land.lhs.true121:                                 ; preds = %if.end86
  br i1 %tobool124.not, label %land.lhs.true121.non_mii.sink.split_crit_edge, label %land.lhs.true125

land.lhs.true121.non_mii.sink.split_crit_edge:    ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_mii.sink.split

land.lhs.true125:                                 ; preds = %land.lhs.true121
  %ops128 = getelementptr inbounds %struct.mii_phy_def, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %ops128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops128, align 4
  %tobool129.not = icmp eq ptr %41, null
  br i1 %tobool129.not, label %land.lhs.true125.non_mii.sink.split_crit_edge, label %if.then130

land.lhs.true125.non_mii.sink.split_crit_edge:    ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #16
  br label %non_mii.sink.split

if.then130:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #16
  %setup_forced = getelementptr inbounds %struct.mii_phy_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %setup_forced to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %setup_forced, align 4
  %call135 = call i32 %43(ptr noundef %phy_mii, i32 noundef %spec.store.select, i32 noundef %duplex.1) #14
  br label %non_mii.sink.split

non_mii.sink.split:                               ; preds = %if.then130, %land.lhs.true125.non_mii.sink.split_crit_edge, %land.lhs.true121.non_mii.sink.split_crit_edge, %if.then106, %land.lhs.true101.non_mii.sink.split_crit_edge, %land.lhs.true97.non_mii.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then106 ], [ 1, %land.lhs.true101.non_mii.sink.split_crit_edge ], [ 1, %land.lhs.true97.non_mii.sink.split_crit_edge ], [ 4, %if.then130 ], [ 4, %land.lhs.true125.non_mii.sink.split_crit_edge ], [ 4, %land.lhs.true121.non_mii.sink.split_crit_edge ]
  %lstate = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 21
  %44 = ptrtoint ptr %lstate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %lstate, align 4
  br label %non_mii

non_mii:                                          ; preds = %non_mii.sink.split, %if.end.non_mii_crit_edge
  %timer_ticks = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 23
  %45 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %timer_ticks, align 8
  %link_timer = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %46, 120
  %call139 = call i32 @mod_timer(ptr noundef %link_timer, i32 noundef %add) #14
  br label %cleanup

cleanup:                                          ; preds = %non_mii, %if.then78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_netif_stop(ptr noundef %gp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %napi = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 9
  tail call void @napi_disable(ptr noundef %napi) #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call fastcc void @local_bh_disable() #14
  %10 = tail call i32 @llvm.read_register.i32(metadata !250) #14
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #14
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp eq i32 %15, 0
  br i1 %cmp13.not.i, label %netif_trans_update.exit.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

netif_trans_update.exit.netif_tx_disable.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %netif_trans_update.exit
  %_tx.i.i4 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i4, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #14
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 11
  %18 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %13, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %19 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #14
  %inc.i = add nuw i32 %i.014.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %netif_trans_update.exit.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #14
  tail call fastcc void @local_bh_enable() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_reinit_chip(ptr noundef %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gem_reset(ptr noundef %gp)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !326
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gp, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2011170560) #14, !srcloc !268
  %2 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gp, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !327
  %init_block.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 30
  %5 = ptrtoint ptr %init_block.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_block.i, align 4
  %dev1.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 8
  %rx_new.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 1
  %9 = call ptr @memset(ptr %rx_new.i, i32 0, i32 16)
  tail call fastcc void @gem_clean_rings(ptr noundef %gp) #14
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %10 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu.i, align 4
  %add2.i = add i32 %11, 18
  %12 = tail call i32 @llvm.umax.i32(i32 %add2.i, i32 1518) #14
  %rx_buf_sz.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 14
  %13 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_buf_sz.i, align 8
  %pdev.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry
  %i.076.i = phi i32 [ 0, %entry ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gem_init_block, ptr %6, i32 0, i32 1, i32 %i.076.i
  %14 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buf_sz.i, align 8
  %add.i.i = add i32 %15, 158
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i, !prof !261

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %add3.i.i = add i32 %19, 63
  %and.i.i = and i32 %add3.i.i, -64
  %sub.i.i = sub i32 %and.i.i, %19
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %21, i32 %sub.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %arrayidx9.i = getelementptr %struct.gem, ptr %gp, i32 0, i32 31, i32 %i.076.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i.i, ptr %arrayidx9.i, align 4
  %23 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_sz.i, align 8
  %add11.i = add i32 %24, 2
  %call12.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %add11.i) #14
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i6 = getelementptr %struct.page, ptr %27, i32 %shr.i
  %and.i = and i32 %30, 4095
  %31 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_buf_sz.i, align 8
  %add20.i = add i32 %32, 94
  %call21.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev13.i, ptr noundef %add.ptr.i6, i32 noundef %and.i, i32 noundef %add20.i, i32 noundef 2, i32 noundef 0) #14
  %conv.i = zext i32 %call21.i to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #14
  %buffer22.i = getelementptr %struct.gem_init_block, ptr %6, i32 0, i32 1, i32 %i.076.i, i32 1
  %34 = ptrtoint ptr %buffer22.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %buffer22.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !328
  %35 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buf_sz.i, align 8
  %sub27.i = shl i32 %36, 16
  %shl.i = add i32 %sub27.i, 6029312
  %37 = or i32 %shl.i, -2147483648
  %or.i = zext i32 %37 to i64
  %38 = tail call i64 @llvm.bswap.i64(i64 %or.i) #14
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx.i, align 8
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %43, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then.i
  %inc.i = add nuw nsw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %cleanup.i.for.body35.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup.i.for.body35.i_crit_edge:                 ; preds = %cleanup.i
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %cleanup.i.for.body35.i_crit_edge
  %i.178.i = phi i32 [ %inc40.i, %for.body35.i.for.body35.i_crit_edge ], [ 0, %cleanup.i.for.body35.i_crit_edge ]
  %arrayidx37.i = getelementptr [128 x %struct.gem_txd], ptr %6, i32 0, i32 %i.178.i
  %44 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %arrayidx37.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !329
  %buffer38.i = getelementptr [128 x %struct.gem_txd], ptr %6, i32 0, i32 %i.178.i, i32 1
  %45 = ptrtoint ptr %buffer38.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %buffer38.i, align 8
  %inc40.i = add nuw nsw i32 %i.178.i, 1
  %exitcond79.not.i = icmp eq i32 %inc40.i, 128
  br i1 %exitcond79.not.i, label %gem_init_rings.exit, label %for.body35.i.for.body35.i_crit_edge

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35.i

gem_init_rings.exit:                              ; preds = %for.body35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !330
  tail call void @arm_heavy_mb() #14
  %rx_fifo_sz.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 11
  %46 = ptrtoint ptr %rx_fifo_sz.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_fifo_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %47)
  %cmp.i = icmp slt i32 %47, 2049
  br i1 %cmp.i, label %gem_init_rings.exit.if.end.i13_crit_edge, label %if.else.i

gem_init_rings.exit.if.end.i13_crit_edge:         ; preds = %gem_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i13

if.else.i:                                        ; preds = %gem_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_buf_sz.i, align 8
  %add2.i8 = add i32 %49, 68
  %and.i9 = and i32 %add2.i8, -64
  %mul.neg.i = mul i32 %and.i9, -2
  %sub.i10 = add i32 %mul.neg.i, %47
  %sub4.i = sub i32 %sub.i10, %and.i9
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.else.i, %gem_init_rings.exit.if.end.i13_crit_edge
  %sub4.sink.i = phi i32 [ %sub4.i, %if.else.i ], [ %47, %gem_init_rings.exit.if.end.i13_crit_edge ]
  %sub.sink.i = phi i32 [ %sub.i10, %if.else.i ], [ %47, %gem_init_rings.exit.if.end.i13_crit_edge ]
  %50 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 13
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub4.sink.i, ptr %50, align 4
  %52 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 12
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.sink.i, ptr %52, align 8
  %54 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %57)
  %cmp7.i = icmp eq i16 %57, 4203
  %spec.select.i = select i1 %cmp7.i, i32 8191, i32 2047
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !331
  tail call void @arm_heavy_mb() #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #14
  %59 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gp, align 8
  %add.ptr.i12 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %58) #14, !srcloc !268
  %61 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gp, align 8
  %add.ptr15.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !332
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i, label %if.then18.i, label %if.end.i13.gem_init_pause_thresholds.exit_crit_edge

if.end.i13.gem_init_pause_thresholds.exit_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_init_pause_thresholds.exit

if.then18.i:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !333
  tail call void @arm_heavy_mb() #14
  %65 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gp, align 8
  %add.ptr24.i = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 67239936) #14, !srcloc !268
  br label %gem_init_pause_thresholds.exit

gem_init_pause_thresholds.exit:                   ; preds = %if.then18.i, %if.end.i13.gem_init_pause_thresholds.exit_crit_edge
  %gblock_dvma.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 33
  %67 = ptrtoint ptr %gblock_dvma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gblock_dvma.i, align 8
  %conv.i14 = zext i32 %68 to i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !334
  tail call void @arm_heavy_mb() #14
  %69 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gp, align 8
  %add.ptr.i15 = getelementptr i8, ptr %70, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 83640064) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !335
  tail call void @arm_heavy_mb() #14
  %71 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gp, align 8
  %add.ptr6.i = getelementptr i8, ptr %72, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !336
  tail call void @arm_heavy_mb() #14
  %73 = tail call i32 @llvm.bswap.i32(i32 %68) #14
  %74 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gp, align 8
  %add.ptr12.i = getelementptr i8, ptr %75, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %73) #14, !srcloc !268
  %add.i = add nuw nsw i64 %conv.i14, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !337
  tail call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gp, align 8
  %add.ptr17.i = getelementptr i8, ptr %77, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !338
  tail call void @arm_heavy_mb() #14
  %78 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gp, align 8
  %add.ptr22.i = getelementptr i8, ptr %79, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 80216321) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !339
  tail call void @arm_heavy_mb() #14
  %sh.diff.i = lshr i64 %add.i, 8
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %80 = and i32 %tr.sh.diff.i, 16777216
  %81 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %gp, align 8
  %add.ptr29.i = getelementptr i8, ptr %82, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %80) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !340
  tail call void @arm_heavy_mb() #14
  %conv34.i = trunc i64 %add.i to i32
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv34.i) #14
  %84 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gp, align 8
  %add.ptr36.i = getelementptr i8, ptr %85, i32 16388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %83) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !341
  tail call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gp, align 8
  %add.ptr41.i = getelementptr i8, ptr %87, i32 16640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 2080374784) #14, !srcloc !268
  %88 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %52, align 8
  %div.i = sdiv i32 %89, 64
  %and42.i = and i32 %div.i, 511
  %90 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %50, align 4
  %div43.i = sdiv i32 %91, 64
  %shl44.i = shl i32 %div43.i, 12
  %and45.i = and i32 %shl44.i, 2093056
  %or.i16 = or i32 %and45.i, %and42.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @arm_heavy_mb() #14
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i16) #14
  %93 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %gp, align 8
  %add.ptr50.i = getelementptr i8, ptr %94, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %92) #14, !srcloc !268
  %95 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %gp, align 8
  %add.ptr52.i = getelementptr i8, ptr %96, i32 4104
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !343
  %98 = and i32 %97, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i17 = icmp eq i32 %98, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %99 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gp, align 8
  %add.ptr64.i = getelementptr i8, ptr %100, i32 16648
  br i1 %tobool.not.i17, label %do.body60.i, label %do.body55.i

do.body55.i:                                      ; preds = %gem_init_pause_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 92274688) #14, !srcloc !268
  br label %gem_init_dma.exit

do.body60.i:                                      ; preds = %gem_init_pause_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 88080384) #14, !srcloc !268
  br label %gem_init_dma.exit

gem_init_dma.exit:                                ; preds = %do.body60.i, %do.body55.i
  %101 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 86
  %103 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_addr.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !344
  tail call void @arm_heavy_mb() #14
  %105 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %gp, align 8
  %add.ptr.i19 = getelementptr i8, ptr %106, i32 24584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -266665984) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !345
  tail call void @arm_heavy_mb() #14
  %107 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %gp, align 8
  %add.ptr5.i = getelementptr i8, ptr %108, i32 24640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !346
  tail call void @arm_heavy_mb() #14
  %109 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gp, align 8
  %add.ptr10.i = getelementptr i8, ptr %110, i32 24644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 134217728) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  tail call void @arm_heavy_mb() #14
  %111 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %gp, align 8
  %add.ptr15.i20 = getelementptr i8, ptr %112, i32 24648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i20, i32 67108864) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !348
  tail call void @arm_heavy_mb() #14
  %113 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gp, align 8
  %add.ptr20.i = getelementptr i8, ptr %114, i32 24652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 1073741824) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !349
  tail call void @arm_heavy_mb() #14
  %115 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %gp, align 8
  %add.ptr25.i = getelementptr i8, ptr %116, i32 24656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 1073741824) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !350
  tail call void @arm_heavy_mb() #14
  %117 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_buf_sz.i, align 8
  %add.i22 = add i32 %118, 4
  %or.i23 = or i32 %add.i22, 536870912
  %119 = tail call i32 @llvm.bswap.i32(i32 %or.i23) #14
  %120 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gp, align 8
  %add.ptr30.i = getelementptr i8, ptr %121, i32 24660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %119) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !351
  tail call void @arm_heavy_mb() #14
  %122 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %gp, align 8
  %add.ptr35.i = getelementptr i8, ptr %123, i32 24664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 117440512) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !352
  tail call void @arm_heavy_mb() #14
  %124 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %gp, align 8
  %add.ptr40.i = getelementptr i8, ptr %125, i32 24668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 67108864) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !353
  tail call void @arm_heavy_mb() #14
  %126 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %gp, align 8
  %add.ptr45.i = getelementptr i8, ptr %127, i32 24672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 268435456) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !354
  tail call void @arm_heavy_mb() #14
  %128 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %gp, align 8
  %add.ptr50.i24 = getelementptr i8, ptr %129, i32 24676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i24, i32 143130624) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !355
  tail call void @arm_heavy_mb() #14
  %arrayidx54.i = getelementptr i8, ptr %104, i32 5
  %130 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx54.i, align 1
  %conv.i25 = zext i8 %131 to i32
  %arrayidx55.i = getelementptr i8, ptr %104, i32 4
  %132 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = zext i8 %133 to i32
  %shl.i26 = shl nuw nsw i32 %conv56.i, 8
  %shl.masked.i = and i32 %shl.i26, 768
  %and.i27 = or i32 %shl.masked.i, %conv.i25
  %134 = tail call i32 @llvm.bswap.i32(i32 %and.i27) #14
  %135 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %gp, align 8
  %add.ptr59.i = getelementptr i8, ptr %136, i32 24880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %134) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !356
  tail call void @arm_heavy_mb() #14
  %137 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx55.i, align 1
  %conv64.i = zext i8 %138 to i32
  %shl65.i = shl nuw nsw i32 %conv64.i, 8
  %139 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx54.i, align 1
  %conv67.i = zext i8 %140 to i32
  %or68.i = or i32 %shl65.i, %conv67.i
  %141 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #14
  %142 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %gp, align 8
  %add.ptr70.i = getelementptr i8, ptr %143, i32 24704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %141) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !357
  tail call void @arm_heavy_mb() #14
  %arrayidx74.i = getelementptr i8, ptr %104, i32 2
  %144 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %145 to i32
  %shl76.i = shl nuw nsw i32 %conv75.i, 8
  %arrayidx77.i = getelementptr i8, ptr %104, i32 3
  %146 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %147 to i32
  %or79.i = or i32 %shl76.i, %conv78.i
  %148 = tail call i32 @llvm.bswap.i32(i32 %or79.i) #14
  %149 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %gp, align 8
  %add.ptr81.i = getelementptr i8, ptr %150, i32 24708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %148) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !358
  tail call void @arm_heavy_mb() #14
  %151 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %104, align 1
  %conv86.i = zext i8 %152 to i32
  %shl87.i = shl nuw nsw i32 %conv86.i, 8
  %arrayidx88.i = getelementptr i8, ptr %104, i32 1
  %153 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %154 to i32
  %or90.i = or i32 %shl87.i, %conv89.i
  %155 = tail call i32 @llvm.bswap.i32(i32 %or90.i) #14
  %156 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %gp, align 8
  %add.ptr92.i = getelementptr i8, ptr %157, i32 24712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %155) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !359
  tail call void @arm_heavy_mb() #14
  %158 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %gp, align 8
  %add.ptr97.i = getelementptr i8, ptr %159, i32 24716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !360
  tail call void @arm_heavy_mb() #14
  %160 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %gp, align 8
  %add.ptr102.i = getelementptr i8, ptr %161, i32 24720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !361
  tail call void @arm_heavy_mb() #14
  %162 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %gp, align 8
  %add.ptr107.i = getelementptr i8, ptr %163, i32 24724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !362
  tail call void @arm_heavy_mb() #14
  %164 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %gp, align 8
  %add.ptr112.i = getelementptr i8, ptr %165, i32 24728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 16777216) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !363
  tail call void @arm_heavy_mb() #14
  %166 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %gp, align 8
  %add.ptr117.i = getelementptr i8, ptr %167, i32 24732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117.i, i32 12713984) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !364
  tail call void @arm_heavy_mb() #14
  %168 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %gp, align 8
  %add.ptr122.i = getelementptr i8, ptr %169, i32 24736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122.i, i32 -2147418112) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !365
  tail call void @arm_heavy_mb() #14
  %170 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %gp, align 8
  %add.ptr127.i = getelementptr i8, ptr %171, i32 24740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !366
  tail call void @arm_heavy_mb() #14
  %172 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gp, align 8
  %add.ptr132.i = getelementptr i8, ptr %173, i32 24744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !367
  tail call void @arm_heavy_mb() #14
  %174 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %gp, align 8
  %add.ptr137.i = getelementptr i8, ptr %175, i32 24748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !368
  tail call void @arm_heavy_mb() #14
  %176 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %gp, align 8
  %add.ptr142.i = getelementptr i8, ptr %177, i32 24752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !369
  tail call void @arm_heavy_mb() #14
  %178 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %gp, align 8
  %add.ptr147.i = getelementptr i8, ptr %179, i32 24756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.i, i32 0) #14, !srcloc !268
  %call.i = tail call fastcc i32 @gem_setup_multicast(ptr noundef %gp) #14
  %mac_rx_cfg.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 17
  %or149.i = or i32 %call.i, 4
  %180 = ptrtoint ptr %mac_rx_cfg.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or149.i, ptr %mac_rx_cfg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !370
  tail call void @arm_heavy_mb() #14
  %181 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %gp, align 8
  %add.ptr154.i = getelementptr i8, ptr %182, i32 24832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !371
  tail call void @arm_heavy_mb() #14
  %183 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %gp, align 8
  %add.ptr159.i = getelementptr i8, ptr %184, i32 24836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !372
  tail call void @arm_heavy_mb() #14
  %185 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %gp, align 8
  %add.ptr164.i = getelementptr i8, ptr %186, i32 24840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !373
  tail call void @arm_heavy_mb() #14
  %187 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %gp, align 8
  %add.ptr169.i = getelementptr i8, ptr %188, i32 24844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !374
  tail call void @arm_heavy_mb() #14
  %189 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %gp, align 8
  %add.ptr174.i = getelementptr i8, ptr %190, i32 24848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !375
  tail call void @arm_heavy_mb() #14
  %191 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %gp, align 8
  %add.ptr179.i = getelementptr i8, ptr %192, i32 24852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !376
  tail call void @arm_heavy_mb() #14
  %193 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %gp, align 8
  %add.ptr184.i = getelementptr i8, ptr %194, i32 24856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !377
  tail call void @arm_heavy_mb() #14
  %195 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %gp, align 8
  %add.ptr189.i = getelementptr i8, ptr %196, i32 24860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !378
  tail call void @arm_heavy_mb() #14
  %197 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %gp, align 8
  %add.ptr194.i = getelementptr i8, ptr %198, i32 24864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !379
  tail call void @arm_heavy_mb() #14
  %199 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %gp, align 8
  %add.ptr199.i = getelementptr i8, ptr %200, i32 24868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !380
  tail call void @arm_heavy_mb() #14
  %201 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %gp, align 8
  %add.ptr204.i = getelementptr i8, ptr %202, i32 24872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !381
  tail call void @arm_heavy_mb() #14
  %203 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %gp, align 8
  %add.ptr209.i = getelementptr i8, ptr %204, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !382
  tail call void @arm_heavy_mb() #14
  %205 = ptrtoint ptr %mac_rx_cfg.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mac_rx_cfg.i, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #14
  %208 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %gp, align 8
  %add.ptr215.i = getelementptr i8, ptr %209, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215.i, i32 %207) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !383
  tail call void @arm_heavy_mb() #14
  %210 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %gp, align 8
  %add.ptr220.i = getelementptr i8, ptr %211, i32 24632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !384
  tail call void @arm_heavy_mb() #14
  %212 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %gp, align 8
  %add.ptr225.i = getelementptr i8, ptr %213, i32 24636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr225.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !385
  tail call void @arm_heavy_mb() #14
  %214 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %gp, align 8
  %add.ptr230.i = getelementptr i8, ptr %215, i32 24608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230.i, i32 16777216) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !386
  tail call void @arm_heavy_mb() #14
  %216 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %gp, align 8
  %add.ptr235.i = getelementptr i8, ptr %217, i32 24612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235.i, i32 16777216) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !387
  tail call void @arm_heavy_mb() #14
  %218 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %gp, align 8
  %add.ptr240.i = getelementptr i8, ptr %219, i32 24616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240.i, i32 -1) #14, !srcloc !268
  %has_wol.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 5
  %220 = ptrtoint ptr %has_wol.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load.i = load i8, ptr %has_wol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i28 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i28, label %gem_init_dma.exit.gem_init_mac.exit_crit_edge, label %do.body241.i

gem_init_dma.exit.gem_init_mac.exit_crit_edge:    ; preds = %gem_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_init_mac.exit

do.body241.i:                                     ; preds = %gem_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !388
  tail call void @arm_heavy_mb() #14
  %221 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %gp, align 8
  %add.ptr245.i = getelementptr i8, ptr %222, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245.i, i32 0) #14, !srcloc !268
  br label %gem_init_mac.exit

gem_init_mac.exit:                                ; preds = %do.body241.i, %gem_init_dma.exit.gem_init_mac.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_clean_rings(ptr nocapture noundef %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_block = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 30
  %0 = ptrtoint ptr %init_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_block, align 4
  %pdev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 34
  %rx_buf_sz = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.084 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gem_init_block, ptr %1, i32 0, i32 1, i32 %i.084
  %arrayidx2 = getelementptr %struct.gem, ptr %gp, i32 0, i32 31, i32 %i.084
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %buffer = getelementptr %struct.gem_init_block, ptr %1, i32 0, i32 1, i32 %i.084, i32 1
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %buffer, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buf_sz, align 8
  %add7 = add i32 %10, 94
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %add7, i32 noundef 2, i32 noundef 0) #14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #14
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !389
  %buffer10 = getelementptr %struct.gem_init_block, ptr %1, i32 0, i32 1, i32 %i.084, i32 1
  %13 = ptrtoint ptr %buffer10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %buffer10, align 8
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %if.end.for.body14_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.body14_crit_edge:                      ; preds = %if.end
  br label %for.body14

for.body14:                                       ; preds = %for.inc48.for.body14_crit_edge, %if.end.for.body14_crit_edge
  %i.190 = phi i32 [ %inc49, %for.inc48.for.body14_crit_edge ], [ 0, %if.end.for.body14_crit_edge ]
  %arrayidx15 = getelementptr %struct.gem, ptr %gp, i32 0, i32 32, i32 %i.190
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq ptr %15, null
  br i1 %cmp16.not, label %for.body14.for.inc48_crit_edge, label %if.then18

for.body14.for.inc48_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc48

if.then18:                                        ; preds = %for.body14
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx15, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 17
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %if.then18
  %frag.089 = phi i32 [ 0, %if.then18 ], [ %inc45, %for.body27.for.body27_crit_edge ]
  %i.288 = phi i32 [ %i.190, %if.then18 ], [ %spec.select, %for.body27.for.body27_crit_edge ]
  %and = and i32 %i.288, 127
  %arrayidx29 = getelementptr [128 x %struct.gem_txd], ptr %1, i32 0, i32 %and
  %buffer30 = getelementptr [128 x %struct.gem_txd], ptr %1, i32 0, i32 %and, i32 1
  %17 = ptrtoint ptr %buffer30 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %buffer30, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %conv31 = trunc i64 %19 to i32
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx29, align 8
  %24 = and i64 %23, -36310271995674624
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %conv35 = trunc i64 %25 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev33, i32 noundef %conv31, i32 noundef %conv35, i32 noundef 1, i32 noundef 0) #14
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %nr_frags37 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nr_frags37 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nr_frags37, align 2
  %conv38 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.089, i32 %conv38)
  %cmp39.not = icmp ne i32 %frag.089, %conv38
  %inc42 = zext i1 %cmp39.not to i32
  %spec.select = add i32 %i.288, %inc42
  %inc45 = add nuw nsw i32 %frag.089, 1
  %cmp25.not.not = icmp ult i32 %frag.089, %conv38
  br i1 %cmp25.not.not, label %for.body27.for.body27_crit_edge, label %for.end46

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27

for.end46:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %15, i32 noundef 1) #14
  br label %for.inc48

for.inc48:                                        ; preds = %for.end46, %for.body14.for.inc48_crit_edge
  %i.4 = phi i32 [ %spec.select, %for.end46 ], [ %i.190, %for.body14.for.inc48_crit_edge ]
  %inc49 = add i32 %i.4, 1
  %cmp12 = icmp slt i32 %inc49, 128
  br i1 %cmp12, label %for.inc48.for.body14_crit_edge, label %for.end50

for.inc48.for.body14_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

for.end50:                                        ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gem_setup_multicast(ptr nocapture noundef readonly %gp) unnamed_addr #2 align 64 {
entry:
  %hash_table = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body.preheader_crit_edge

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %cmp = icmp sgt i32 %5, 256
  br i1 %cmp, label %lor.lhs.false.do.body.preheader_crit_edge, label %if.else

lor.lhs.false.do.body.preheader_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %i.075 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !390
  tail call void @arm_heavy_mb() #14
  %6 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gp, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 24768
  %shl = shl i32 %i.075, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -65536) #14, !srcloc !268
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond76.not = icmp eq i32 %inc, 16
  br i1 %exitcond76.not, label %do.body.if.end52_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body.if.end52_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.else:                                          ; preds = %lor.lhs.false
  %and6 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else10, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.else10:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash_table) #14
  %8 = call ptr @memset(ptr %hash_table, i32 0, i32 32)
  %mc13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %mc13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.071 = load ptr, ptr %mc13, align 4
  %cmp20.not72 = icmp eq ptr %ha.071, %mc13
  br i1 %cmp20.not72, label %if.else10.do.body39.preheader_crit_edge, label %if.else10.for.body21_crit_edge

if.else10.for.body21_crit_edge:                   ; preds = %if.else10
  br label %for.body21

if.else10.do.body39.preheader_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body39.preheader

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.else10.for.body21_crit_edge
  %ha.073 = phi ptr [ %ha.0, %for.body21.for.body21_crit_edge ], [ %ha.071, %if.else10.for.body21_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.073, i32 0, i32 2
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #18
  %shr = lshr i32 %call, 24
  %and23 = and i32 %shr, 15
  %sub = xor i32 %and23, 15
  %shl24 = shl nuw i32 1, %sub
  %shr25 = lshr i32 %call, 28
  %arrayidx = getelementptr [16 x i16], ptr %hash_table, i32 0, i32 %shr25
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %12 = trunc i32 %shl24 to i16
  %conv27 = or i16 %11, %12
  store i16 %conv27, ptr %arrayidx, align 2
  %13 = ptrtoint ptr %ha.073 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0 = load ptr, ptr %ha.073, align 4
  %cmp20.not = icmp eq ptr %ha.0, %mc13
  br i1 %cmp20.not, label %for.body21.do.body39.preheader_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

for.body21.do.body39.preheader_crit_edge:         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body39.preheader

do.body39.preheader:                              ; preds = %for.body21.do.body39.preheader_crit_edge, %if.else10.do.body39.preheader_crit_edge
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body39.preheader
  %i11.074 = phi i32 [ %inc49, %do.body39.do.body39_crit_edge ], [ 0, %do.body39.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !391
  tail call void @arm_heavy_mb() #14
  %arrayidx42 = getelementptr [16 x i16], ptr %hash_table, i32 0, i32 %i11.074
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx42, align 2
  %conv43 = zext i16 %15 to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv43)
  %17 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gp, align 8
  %add.ptr45 = getelementptr i8, ptr %18, i32 24768
  %shl46 = shl i32 %i11.074, 2
  %add.ptr47 = getelementptr i8, ptr %add.ptr45, i32 %shl46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %16) #14, !srcloc !268
  %inc49 = add nuw nsw i32 %i11.074, 1
  %exitcond.not = icmp eq i32 %inc49, 16
  br i1 %exitcond.not, label %for.end50, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body39

for.end50:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash_table) #14
  br label %if.end52

if.end52:                                         ; preds = %for.end50, %if.else.if.end52_crit_edge, %do.body.if.end52_crit_edge
  %rxcfg.0 = phi i32 [ 32, %for.end50 ], [ 8, %if.else.if.end52_crit_edge ], [ 32, %do.body.if.end52_crit_edge ]
  ret i32 %rxcfg.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_pcs_reinit_adv(ptr nocapture noundef readonly %gp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gp, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36880
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !392
  %3 = and i32 %2, -553648129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !393
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gp, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 36880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #14, !srcloc !268
  %6 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gp, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 36872
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !394
  %9 = or i32 %8, -536805376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !395
  tail call void @arm_heavy_mb() #14
  %10 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gp, align 8
  %add.ptr15 = getelementptr i8, ptr %11, i32 36872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #14, !srcloc !268
  %12 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gp, align 8
  %add.ptr19 = getelementptr i8, ptr %13, i32 36864
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !396
  %15 = and i32 %14, -5373953
  %16 = or i32 %15, 1179648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !397
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gp, align 8
  %add.ptr29 = getelementptr i8, ptr %18, i32 36864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %16) #14, !srcloc !268
  %19 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gp, align 8
  %add.ptr33 = getelementptr i8, ptr %20, i32 36880
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !398
  %22 = or i32 %21, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !399
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gp, align 8
  %add.ptr42 = getelementptr i8, ptr %24, i32 36880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %22) #14, !srcloc !268
  %25 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gp, align 8
  %add.ptr46 = getelementptr i8, ptr %26, i32 36948
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !400
  %phy_type = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 27
  %28 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp = icmp ne i32 %29, 2
  %30 = and i32 %27, -16777217
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %masksel = zext i1 %cmp to i32
  %val.0 = or i32 %31, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !401
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %33 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gp, align 8
  %add.ptr56 = getelementptr i8, ptr %34, i32 36948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %32) #14, !srcloc !268
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %cell_enabled.i = getelementptr i8, ptr %dev, i32 2328
  %3 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %do.body2.i, label %gem_get_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #14, !srcloc !262
  unreachable

gem_get_cell.exit:                                ; preds = %if.then
  %inc.i = add nuw i32 %4, 1
  %5 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %cell_enabled.i, align 8
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %gem_get_cell.exit
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #17
  %8 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i13 = icmp slt i32 %9, 1
  br i1 %cmp.i13, label %do.body2.i14, label %gem_put_cell.exit, !prof !261

do.body2.i14:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %9, -1
  %10 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  br label %cleanup

if.end:                                           ; preds = %gem_get_cell.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call fastcc i32 @gem_do_start(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gem_put_cell.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %gem_put_cell.exit ], [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call fastcc void @gem_do_stop(ptr noundef %dev, i32 noundef 0)
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_device(ptr noundef %4) #14
  %asleep_wol = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %asleep_wol to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %asleep_wol, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.then
  %cell_enabled.i = getelementptr i8, ptr %dev, i32 2328
  %7 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %do.body2.i, label %gem_put_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %8, -1
  %9 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %gem_put_cell.exit, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv.i = zext i16 %4 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %conv4 = sext i32 %sub.i to i64
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %csum_offset, align 2
  %conv5 = zext i16 %10 to i64
  %add = add nsw i64 %conv4, %conv5
  %shl = shl nsw i64 %conv4, 15
  %shl6 = shl nsw i64 %add, 21
  %or = or i64 %shl, %shl6
  %or7 = or i64 %or, 536870912
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl.0 = phi i64 [ %or7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %tx_old = getelementptr i8, ptr %dev, i32 2320
  %11 = ptrtoint ptr %tx_old to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_old, align 8
  %tx_new = getelementptr i8, ptr %dev, i32 2316
  %13 = ptrtoint ptr %tx_new to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8.not = icmp sgt i32 %12, %14
  %add11 = add i32 %12, 127
  %sub = sub i32 %add11, %14
  %15 = xor i32 %14, -1
  %sub16 = add i32 %12, %15
  %cond = select i1 %cmp8.not, i32 %sub16, i32 %sub
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags, align 2
  %conv18 = zext i8 %19 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add19)
  %cmp20.not = icmp sgt i32 %cond, %add19
  br i1 %cmp20.not, label %if.end27, label %if.then23, !prof !260

if.then23:                                        ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then25, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #17
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.gem, ptr %add.ptr.i, i32 0, i32 32, i32 %14
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %nr_frags30 = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags30 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp32 = icmp eq i8 %28, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %init_block = getelementptr i8, ptr %dev, i32 2780
  %29 = ptrtoint ptr %init_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_block, align 4
  %arrayidx36 = getelementptr [128 x %struct.gem_txd], ptr %30, i32 0, i32 %14
  %len37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %31 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len37, align 4
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %37 to i32
  %sub39 = add i32 %38, 1073741824
  %shr = lshr i32 %sub39, 12
  %add.ptr = getelementptr %struct.page, ptr %35, i32 %shr
  %and = and i32 %38, 4095
  %call43 = tail call i32 @dma_map_page_attrs(ptr noundef %dev38, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %32, i32 noundef 1, i32 noundef 0) #14
  %39 = or i32 %32, -1073741824
  %or45 = zext i32 %39 to i64
  %or46 = or i64 %ctrl.0, %or45
  %and.i = and i32 %14, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %or50 = or i64 %or46, 4294967296
  %spec.select = select i1 %tobool.not.i.not, i64 %or50, i64 %or46
  %conv52 = zext i32 %call43 to i64
  %40 = tail call i64 @llvm.bswap.i64(i64 %conv52)
  %buffer = getelementptr [128 x %struct.gem_txd], ptr %30, i32 0, i32 %14, i32 1
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %buffer, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !402
  %42 = tail call i64 @llvm.bswap.i64(i64 %spec.select)
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx36, align 8
  %add53 = add i32 %14, 1
  %and54 = and i32 %add53, 127
  br label %if.end122

if.else:                                          ; preds = %if.end27
  %and.i285 = and i32 %14, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i285)
  %tobool.not.i286.not = icmp eq i32 %and.i285, 0
  %spec.select280 = select i1 %tobool.not.i286.not, i64 4294967296, i64 0
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i, align 8
  %sub.i288 = sub i32 %45, %47
  %pdev62 = getelementptr i8, ptr %dev, i32 3812
  %48 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %data64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data64, align 4
  %53 = ptrtoint ptr %52 to i32
  %sub65 = add i32 %53, 1073741824
  %shr66 = lshr i32 %sub65, 12
  %add.ptr69 = getelementptr %struct.page, ptr %50, i32 %shr66
  %and71 = and i32 %53, 4095
  %call72 = tail call i32 @dma_map_page_attrs(ptr noundef %dev63, ptr noundef %add.ptr69, i32 noundef %and71, i32 noundef %sub.i288, i32 noundef 1, i32 noundef 0) #14
  %entry1.0.in299 = add i32 %14, 1
  %entry1.0300 = and i32 %entry1.0.in299, 127
  %54 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i, align 4
  %nr_frags76301 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %nr_frags76301 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nr_frags76301, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp78303.not = icmp eq i8 %57, 0
  br i1 %cmp78303.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %or95 = or i64 %ctrl.0, 1073741824
  %init_block97 = getelementptr i8, ptr %dev, i32 2780
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %58 = phi ptr [ %55, %for.body.lr.ph ], [ %78, %for.body.for.body_crit_edge ]
  %entry1.0307 = phi i32 [ %entry1.0300, %for.body.lr.ph ], [ %entry1.0, %for.body.for.body_crit_edge ]
  %entry1.0.in306 = phi i32 [ %entry1.0.in299, %for.body.lr.ph ], [ %entry1.0.in, %for.body.for.body_crit_edge ]
  %frag.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %intme.1304 = phi i64 [ %spec.select280, %for.body.lr.ph ], [ %intme.2, %for.body.for.body_crit_edge ]
  %arrayidx81 = getelementptr %struct.skb_shared_info, ptr %58, i32 0, i32 12, i32 %frag.0305
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %58, i32 0, i32 12, i32 %frag.0305, i32 1
  %59 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_len.i, align 4
  %61 = ptrtoint ptr %pdev62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev62, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx81, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %58, i32 0, i32 12, i32 %frag.0305, i32 2
  %65 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev86, ptr noundef %64, i32 noundef %66, i32 noundef %60, i32 noundef 1, i32 noundef 0) #14
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags89 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags89 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags89, align 2
  %conv90 = zext i8 %70 to i32
  %sub91 = add nsw i32 %conv90, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.0305, i32 %sub91)
  %cmp92 = icmp eq i32 %frag.0305, %sub91
  %spec.select281 = select i1 %cmp92, i64 %or95, i64 %ctrl.0
  %71 = ptrtoint ptr %init_block97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_block97, align 4
  %arrayidx99 = getelementptr [128 x %struct.gem_txd], ptr %72, i32 0, i32 %entry1.0307
  %conv100 = zext i32 %call2.i to i64
  %73 = tail call i64 @llvm.bswap.i64(i64 %conv100)
  %buffer101 = getelementptr [128 x %struct.gem_txd], ptr %72, i32 0, i32 %entry1.0307, i32 1
  %74 = ptrtoint ptr %buffer101 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %buffer101, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !403
  %conv102 = zext i32 %60 to i64
  %or103 = or i64 %spec.select281, %conv102
  %75 = tail call i64 @llvm.bswap.i64(i64 %or103)
  %76 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %arrayidx99, align 8
  %and.i292 = and i32 %entry1.0.in306, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i292)
  %tobool.not.i293.not = icmp eq i32 %and.i292, 0
  %or108 = or i64 %intme.1304, 4294967296
  %intme.2 = select i1 %tobool.not.i293.not, i64 %or108, i64 %intme.1304
  %inc = add nuw nsw i32 %frag.0305, 1
  %entry1.0.in = add nuw nsw i32 %entry1.0307, 1
  %entry1.0 = and i32 %entry1.0.in, 127
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i, align 4
  %nr_frags76 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %nr_frags76 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %nr_frags76, align 2
  %conv77 = zext i8 %80 to i32
  %cmp78 = icmp ult i32 %inc, %conv77
  br i1 %cmp78, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %intme.1.lcssa = phi i64 [ %spec.select280, %if.else.for.end_crit_edge ], [ %intme.2, %for.body.for.end_crit_edge ]
  %entry1.0.lcssa = phi i32 [ %entry1.0300, %if.else.for.end_crit_edge ], [ %entry1.0, %for.body.for.end_crit_edge ]
  %init_block112 = getelementptr i8, ptr %dev, i32 2780
  %81 = ptrtoint ptr %init_block112 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_block112, align 4
  %arrayidx114 = getelementptr [128 x %struct.gem_txd], ptr %82, i32 0, i32 %14
  %conv115 = zext i32 %call72 to i64
  %83 = tail call i64 @llvm.bswap.i64(i64 %conv115)
  %buffer116 = getelementptr [128 x %struct.gem_txd], ptr %82, i32 0, i32 %14, i32 1
  %84 = ptrtoint ptr %buffer116 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %buffer116, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !404
  %conv119 = zext i32 %sub.i288 to i64
  %or117 = or i64 %ctrl.0, %conv119
  %or118 = or i64 %or117, %intme.1.lcssa
  %or120 = or i64 %or118, 2147483648
  %85 = tail call i64 @llvm.bswap.i64(i64 %or120)
  %86 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx114, align 8
  br label %if.end122

if.end122:                                        ; preds = %for.end, %if.then34
  %entry1.1 = phi i32 [ %and54, %if.then34 ], [ %entry1.0.lcssa, %for.end ]
  %87 = ptrtoint ptr %tx_new to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %entry1.1, ptr %tx_new, align 4
  %88 = ptrtoint ptr %tx_old to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_old, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %entry1.1)
  %cmp126.not = icmp sgt i32 %89, %entry1.1
  %add130 = sub nuw nsw i32 127, %entry1.1
  %90 = xor i32 %entry1.1, -1
  %cond139.v = select i1 %cmp126.not, i32 %90, i32 %add130
  %cond139 = add i32 %89, %cond139.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond139)
  %cmp140 = icmp ult i32 %cond139, 19
  br i1 %cmp140, label %if.then148, label %if.end122.if.end172_crit_edge, !prof !261

if.end122.if.end172_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then148:                                       ; preds = %if.end122
  %_tx.i.i295 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %91 = ptrtoint ptr %_tx.i.i295 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i295, align 128
  %state.i.i296 = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i296) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !405
  %93 = ptrtoint ptr %tx_old to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_old, align 8
  %95 = ptrtoint ptr %tx_new to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp154.not = icmp sgt i32 %94, %96
  %add158 = add i32 %94, 127
  %sub160 = sub i32 %add158, %96
  %97 = xor i32 %96, -1
  %sub165 = add i32 %94, %97
  %cond167 = select i1 %cmp154.not, i32 %sub165, i32 %sub160
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond167)
  %cmp168 = icmp ugt i32 %cond167, 18
  br i1 %cmp168, label %if.then170, label %if.then148.if.end172_crit_edge

if.then148.if.end172_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then170:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %_tx.i.i295 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %_tx.i.i295, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %99) #14
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then148.if.end172_crit_edge, %if.end122.if.end172_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2332
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable, align 4
  %and173 = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end172.do.body182_crit_edge, label %do.end178

if.end172.do.body182_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body182

do.end178:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #16
  %len179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %102 = ptrtoint ptr %len179 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len179, align 4
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %dev, i32 noundef %entry1.1, i32 noundef %103) #17
  br label %do.body182

do.body182:                                       ; preds = %do.end178, %if.end172.do.body182_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !406
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !407
  tail call void @arm_heavy_mb() #14
  %104 = ptrtoint ptr %tx_new to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_new, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr189 = getelementptr i8, ptr %108, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 %106) #14, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body182, %if.then25, %if.then23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body182 ], [ 16, %if.then25 ], [ 16, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_set_multicast(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i77.not = icmp eq i32 %4, 0
  br i1 %tobool.i77.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %reset_task_pending = getelementptr i8, ptr %dev, i32 2724
  %5 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %reset_task_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %cell_enabled = getelementptr i8, ptr %dev, i32 2328
  %7 = ptrtoint ptr %cell_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cell_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !261

do.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2467, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false3
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 24628
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !408
  %call33 = tail call fastcc i32 @gem_setup_multicast(ptr noundef %add.ptr.i)
  %or = or i32 %call33, 4
  %mac_rx_cfg = getelementptr i8, ptr %dev, i32 2604
  %13 = ptrtoint ptr %mac_rx_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %mac_rx_cfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !409
  tail call void @arm_heavy_mb() #14
  %and = and i32 %12, -2
  %14 = tail call i32 @llvm.bswap.i32(i32 %and)
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr38 = getelementptr i8, ptr %16, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %14) #14, !srcloc !268
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr4278 = getelementptr i8, ptr %18, i32 24628
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4278) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !410
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool47.not79 = icmp eq i32 %20, 0
  br i1 %tobool47.not79, label %if.end29.while.end_crit_edge, label %if.end29.if.end50_crit_edge

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  br label %if.end50

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end50:                                         ; preds = %if.end50.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  %limit.080 = phi i32 [ %dec, %if.end50.if.end50_crit_edge ], [ 10000, %if.end29.if.end50_crit_edge ]
  %dec = add nsw i32 %limit.080, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #14
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr42 = getelementptr i8, ptr %23, i32 24628
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !410
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool48.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool47.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %if.end50.while.end_crit_edge, label %if.end50.if.end50_crit_edge

if.end50.if.end50_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %if.end29.while.end_crit_edge
  %and51 = and i32 %12, -45
  %or52 = or i32 %or, %and51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr57 = getelementptr i8, ptr %28, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %26) #14, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i78.not = icmp eq i32 %11, 0
  br i1 %tobool.i78.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %cell_enabled = getelementptr i8, ptr %dev, i32 2328
  %12 = ptrtoint ptr %cell_enabled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cell_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %do.end, label %do.body33, !prof !261

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2447, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

do.body33:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  tail call void @arm_heavy_mb() #14
  %arrayidx36 = getelementptr i8, ptr %1, i32 4
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx36, align 1
  %conv = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx37 = getelementptr i8, ptr %1, i32 5
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %or = or i32 %shl, %conv38
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 24704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !413
  tail call void @arm_heavy_mb() #14
  %arrayidx42 = getelementptr i8, ptr %1, i32 2
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %22 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %arrayidx45 = getelementptr i8, ptr %1, i32 3
  %23 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %24 to i32
  %or47 = or i32 %shl44, %conv46
  %25 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr49 = getelementptr i8, ptr %27, i32 24708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %25) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !414
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  %conv54 = zext i8 %29 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %arrayidx56 = getelementptr i8, ptr %1, i32 1
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %31 to i32
  %or58 = or i32 %shl55, %conv57
  %32 = tail call i32 @llvm.bswap.i32(i32 %or58)
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr60 = getelementptr i8, ptr %34, i32 24712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %32) #14, !srcloc !268
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body33 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb2_crit_edge
    i32 35145, label %sw.bb8
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mii_phy_addr = getelementptr i8, ptr %dev, i32 2776
  %1 = ptrtoint ptr %mii_phy_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mii_phy_addr, align 8
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %4 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ifr_ifru.i, align 2
  %6 = and i16 %5, 31
  %and = zext i16 %6 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_num, align 2
  %9 = and i16 %8, 31
  %and6 = zext i16 %9 to i32
  %shl.i = shl nuw nsw i32 %and, 23
  %shl2.i = shl nuw nsw i32 %and6, 18
  %or1.i = or i32 %shl2.i, %shl.i
  %or5.i = or i32 %or1.i, 1610743808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #14
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %12, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %10) #14, !srcloc !268
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.bb2
  %dec23.i = phi i32 [ 9999, %sw.bb2 ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %14, i32 25100
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !263
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %and9.i = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i, label %while.body.i.__sungem_phy_read.exit_crit_edge

while.body.i.__sungem_phy_read.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_read.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #14
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.__sungem_phy_read.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i.__sungem_phy_read.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__sungem_phy_read.exit

__sungem_phy_read.exit:                           ; preds = %if.end.i.__sungem_phy_read.exit_crit_edge, %while.body.i.__sungem_phy_read.exit_crit_edge
  %spec.select.i = phi i32 [ %16, %while.body.i.__sungem_phy_read.exit_crit_edge ], [ 65535, %if.end.i.__sungem_phy_read.exit_crit_edge ]
  %conv.i = trunc i32 %spec.select.i to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %18 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %val_out, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %19 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ifr_ifru.i, align 2
  %21 = and i16 %20, 31
  %and11 = zext i16 %21 to i32
  %reg_num12 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %22 = ptrtoint ptr %reg_num12 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reg_num12, align 2
  %24 = and i16 %23, 31
  %and14 = zext i16 %24 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val_in, align 2
  %shl.i24 = shl nuw nsw i32 %and11, 23
  %shl2.i26 = shl nuw nsw i32 %and14, 18
  %conv.i28 = zext i16 %26 to i32
  %or1.i29 = or i32 %shl2.i26, %shl.i24
  %or5.i30 = or i32 %or1.i29, %conv.i28
  %or7.i = or i32 %or5.i30, 1342308352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #14
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %29, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %27) #14, !srcloc !268
  br label %while.body.i32

while.body.i32:                                   ; preds = %if.end.i35.while.body.i32_crit_edge, %sw.bb8
  %dec20.i = phi i32 [ 9999, %sw.bb8 ], [ %dec.i33, %if.end.i35.while.body.i32_crit_edge ]
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %31, i32 25100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %33 = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.not.i = icmp eq i32 %33, 0
  br i1 %tobool12.not.i, label %if.end.i35, label %while.body.i32.sw.epilog_crit_edge

while.body.i32.sw.epilog_crit_edge:               ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i35:                                       ; preds = %while.body.i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #14
  %dec.i33 = add nsw i32 %dec20.i, -1
  %tobool.not.i34 = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i34, label %if.end.i35.sw.epilog_crit_edge, label %if.end.i35.while.body.i32_crit_edge

if.end.i35.while.body.i32_crit_edge:              ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i32

if.end.i35.sw.epilog_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i35.sw.epilog_crit_edge, %while.body.i32.sw.epilog_crit_edge, %__sungem_phy_read.exit, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %__sungem_phy_read.exit ], [ 0, %while.body.i32.sw.epilog_crit_edge ], [ 0, %if.end.i35.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i41.not = icmp eq i32 %5, 0
  br i1 %tobool.i41.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cell_enabled = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %cell_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cell_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !261

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2509, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end
  tail call fastcc void @gem_netif_stop(ptr noundef %add.ptr.i)
  tail call fastcc void @gem_reinit_chip(ptr noundef %add.ptr.i)
  %lstate = getelementptr i8, ptr %dev, i32 2620
  %8 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp eq i32 %9, 5
  br i1 %cmp, label %if.then28, label %if.end27.if.end30_crit_edge

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call fastcc i32 @gem_set_link_modes(ptr noundef %add.ptr.i)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end27.if.end30_crit_edge
  %dev.i = getelementptr i8, ptr %dev, i32 3816
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #14
  %napi.i = getelementptr i8, ptr %dev, i32 2344
  tail call void @napi_enable(ptr noundef %napi.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #17
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !415
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 24592
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !263
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !416
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr13 = getelementptr i8, ptr %9, i32 24624
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #14, !srcloc !263
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !417
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %3, i32 noundef %7, i32 noundef %11) #17
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20 = getelementptr i8, ptr %13, i32 16384
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #14, !srcloc !263
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !418
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 24596
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #14, !srcloc !263
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !419
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr34 = getelementptr i8, ptr %21, i32 24628
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #14, !srcloc !263
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !420
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %15, i32 noundef %19, i32 noundef %23) #17
  %reset_task_pending.i = getelementptr i8, ptr %dev, i32 2724
  %24 = ptrtoint ptr %reset_task_pending.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %reset_task_pending.i, align 4
  %reset_task.i = getelementptr i8, ptr %dev, i32 2680
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %reset_task.i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gem_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.bail_crit_edge, label %lor.lhs.false

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i122.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i122.not, label %lor.lhs.false.bail_crit_edge, label %if.end

lor.lhs.false.bail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %bail

if.end:                                           ; preds = %lor.lhs.false
  %cell_enabled = getelementptr i8, ptr %dev, i32 2328
  %5 = ptrtoint ptr %cell_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cell_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end27.critedge, !prof !261

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2410, i32 noundef 9, ptr noundef null) #14
  br label %bail

if.end27.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 24868
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !421
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %11 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_crc_errors, align 8
  %add = add i32 %12, %10
  store i32 %add, ptr %rx_crc_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !422
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr35 = getelementptr i8, ptr %14, i32 24868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #14, !srcloc !268
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr39 = getelementptr i8, ptr %16, i32 24864
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #14, !srcloc !263
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !423
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %19 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_frame_errors, align 4
  %add44 = add i32 %20, %18
  store i32 %add44, ptr %rx_frame_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !424
  tail call void @arm_heavy_mb() #14
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr49 = getelementptr i8, ptr %22, i32 24864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #14, !srcloc !268
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr53 = getelementptr i8, ptr %24, i32 24860
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #14, !srcloc !263
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !425
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %27 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_length_errors, align 8
  %add58 = add i32 %28, %26
  store i32 %add58, ptr %rx_length_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !426
  tail call void @arm_heavy_mb() #14
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr63 = getelementptr i8, ptr %30, i32 24860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #14, !srcloc !268
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr67 = getelementptr i8, ptr %32, i32 24840
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #14, !srcloc !263
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !427
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %35 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_aborted_errors, align 8
  %add72 = add i32 %36, %34
  store i32 %add72, ptr %tx_aborted_errors, align 8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr76 = getelementptr i8, ptr %38, i32 24840
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #14, !srcloc !263
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !428
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr83 = getelementptr i8, ptr %42, i32 24844
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #14, !srcloc !263
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !429
  %add87 = add i32 %44, %40
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %45 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %collisions, align 4
  %add89 = add i32 %add87, %46
  store i32 %add89, ptr %collisions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !430
  tail call void @arm_heavy_mb() #14
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr94 = getelementptr i8, ptr %48, i32 24840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !431
  tail call void @arm_heavy_mb() #14
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr99 = getelementptr i8, ptr %50, i32 24844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 0) #14, !srcloc !268
  br label %bail

bail:                                             ; preds = %if.end27.critedge, %do.end, %lor.lhs.false.bail_crit_edge, %entry.bail_crit_edge
  %stats100 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats100
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #14
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %call3 = tail call i32 @gem_interrupt(i32 noundef %7, ptr noundef %dev)
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %11) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gem_do_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @pci_set_master(ptr noundef %1) #14
  tail call fastcc void @gem_reinit_chip(ptr noundef %add.ptr.i)
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @gem_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #17
  tail call fastcc void @gem_reset(ptr noundef %add.ptr.i)
  tail call fastcc void @gem_clean_rings(ptr noundef %add.ptr.i)
  %cell_enabled.i = getelementptr i8, ptr %dev, i32 2328
  %6 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %do.body2.i, label %gem_put_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %7, -1
  %8 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_attach(ptr noundef %dev) #14
  %dev.i = getelementptr i8, ptr %dev, i32 3816
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %12) #14
  %napi.i = getelementptr i8, ptr %dev, i32 2344
  tail call void @napi_enable(ptr noundef %napi.i) #14
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %14, i32 25104
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !432
  %16 = and i32 %15, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !433
  tail call void @arm_heavy_mb() #14
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %18, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #14, !srcloc !268
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %22)
  %cmp.i17 = icmp eq i16 %22, 4203
  br i1 %cmp.i17, label %for.cond.preheader.i, label %if.end.if.end16.i_crit_edge

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

for.cond.preheader.i:                             ; preds = %if.end
  %mii_phy_addr.i.i = getelementptr i8, ptr %dev, i32 2776
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0137.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %mii_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii_phy_addr.i.i, align 8
  %shl.i.i.i = shl i32 %24, 23
  %and.i.i.i = and i32 %shl.i.i.i, 260046848
  %or7.i.i.i = or i32 %and.i.i.i, 1342341120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !284
  tail call void @arm_heavy_mb() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i.i) #14
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %25) #14, !srcloc !268
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %for.body.i
  %dec20.i.i.i = phi i32 [ 9999, %for.body.i ], [ %dec.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i.i.i = getelementptr i8, ptr %29, i32 25100
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !285
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool12.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool12.not.i.i.i, label %if.end.i.i.i, label %while.body.i.i.i.sungem_phy_write.exit.i_crit_edge

while.body.i.i.i.sungem_phy_write.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sungem_phy_write.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #14
  %dec.i.i.i = add nsw i32 %dec20.i.i.i, -1
  %tobool.not.i.i.i = icmp eq i32 %dec20.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.sungem_phy_write.exit.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

if.end.i.i.i.sungem_phy_write.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sungem_phy_write.exit.i

sungem_phy_write.exit.i:                          ; preds = %if.end.i.i.i.sungem_phy_write.exit.i_crit_edge, %while.body.i.i.i.sungem_phy_write.exit.i_crit_edge
  tail call void @msleep(i32 noundef 20) #14
  %33 = ptrtoint ptr %mii_phy_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mii_phy_addr.i.i, align 8
  %shl.i.i126.i = shl i32 %34, 23
  %and.i.i127.i = and i32 %shl.i.i126.i, 260046848
  %or5.i.i.i = or i32 %and.i.i127.i, 1610743808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i.i) #14
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i128.i = getelementptr i8, ptr %37, i32 25100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i128.i, i32 %35) #14, !srcloc !268
  br label %while.body.i.i129.i

while.body.i.i129.i:                              ; preds = %if.end.i.i132.i.while.body.i.i129.i_crit_edge, %sungem_phy_write.exit.i
  %dec23.i.i.i = phi i32 [ 9999, %sungem_phy_write.exit.i ], [ %dec.i.i130.i, %if.end.i.i132.i.while.body.i.i129.i_crit_edge ]
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i.i.i = getelementptr i8, ptr %39, i32 25100
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #14, !srcloc !263
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  %and9.i.i.i = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end.i.i132.i, label %sungem_phy_read.exit.i

if.end.i.i132.i:                                  ; preds = %while.body.i.i129.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #14
  %dec.i.i130.i = add nsw i32 %dec23.i.i.i, -1
  %tobool.not.i.i131.i = icmp eq i32 %dec.i.i130.i, 0
  br i1 %tobool.not.i.i131.i, label %if.end.i.i132.i.if.end.i_crit_edge, label %if.end.i.i132.i.while.body.i.i129.i_crit_edge

if.end.i.i132.i.while.body.i.i129.i_crit_edge:    ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i129.i

if.end.i.i132.i.if.end.i_crit_edge:               ; preds = %if.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

sungem_phy_read.exit.i:                           ; preds = %while.body.i.i129.i
  %conv.i.i.i = trunc i32 %41 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i.i.i)
  %cmp9.not.i = icmp eq i16 %conv.i.i.i, -1
  br i1 %cmp9.not.i, label %sungem_phy_read.exit.i.if.end.i_crit_edge, label %sungem_phy_read.exit.i.if.end16.i_crit_edge

sungem_phy_read.exit.i.if.end16.i_crit_edge:      ; preds = %sungem_phy_read.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

sungem_phy_read.exit.i.if.end.i_crit_edge:        ; preds = %sungem_phy_read.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %sungem_phy_read.exit.i.if.end.i_crit_edge, %if.end.i.i132.i.if.end.i_crit_edge
  %cmp12.i = icmp eq i32 %i.0137.i, 2
  %inc.i = add nuw nsw i32 %i.0137.i, 1
  br i1 %cmp12.i, label %for.inc.thread.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.56) #17
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.inc.thread.i, %sungem_phy_read.exit.i.if.end16.i_crit_edge, %if.end.if.end16.i_crit_edge
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %vendor18.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %vendor18.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vendor18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %48)
  %cmp20.i = icmp eq i16 %48, 4238
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end16.i.if.end45.i_crit_edge

if.end16.i.if.end45.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 8
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11181, i16 %50)
  %cmp24.i = icmp eq i16 %50, 11181
  br i1 %cmp24.i, label %if.then26.i, label %land.lhs.true.i.if.end45.i_crit_edge

land.lhs.true.i.if.end45.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  %phy_type.i = getelementptr i8, ptr %dev, i32 2728
  %51 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %switch.lookup, label %if.then26.i.do.body40.i_crit_edge

if.then26.i.do.body40.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body40.i

switch.lookup:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.gem_do_start, i32 0, i32 %52
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body40.i

do.body40.i:                                      ; preds = %switch.lookup, %if.then26.i.do.body40.i_crit_edge
  %val.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 33554432, %if.then26.i.do.body40.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !434
  tail call void @arm_heavy_mb() #14
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %56, i32 36944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %val.0.i) #14, !srcloc !268
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.body40.i, %land.lhs.true.i.if.end45.i_crit_edge, %if.end16.i.if.end45.i_crit_edge
  %phy_type46.i = getelementptr i8, ptr %dev, i32 2728
  %57 = ptrtoint ptr %phy_type46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %phy_type46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %switch.i = icmp ult i32 %58, 2
  br i1 %switch.i, label %if.then53.i, label %if.else68.i

if.then53.i:                                      ; preds = %if.end45.i
  %phy_mii.i = getelementptr i8, ptr %dev, i32 2732
  %mii_phy_addr.i = getelementptr i8, ptr %dev, i32 2776
  %59 = ptrtoint ptr %mii_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mii_phy_addr.i, align 8
  %call54.i = tail call i32 @sungem_phy_probe(ptr noundef %phy_mii.i, i32 noundef %60) #14
  %61 = ptrtoint ptr %phy_mii.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy_mii.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.then53.i.if.end69.i_crit_edge, label %land.lhs.true56.i

if.then53.i.if.end69.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69.i

land.lhs.true56.i:                                ; preds = %if.then53.i
  %ops.i = getelementptr inbounds %struct.mii_phy_def, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool59.not.i = icmp eq ptr %66, null
  br i1 %tobool59.not.i, label %land.lhs.true56.i.if.end69.i_crit_edge, label %if.then60.i

land.lhs.true56.i.if.end69.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69.i

if.then60.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #16
  %call66.i = tail call i32 %66(ptr noundef %phy_mii.i) #14
  br label %if.end69.i

if.else68.i:                                      ; preds = %if.end45.i
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 36864
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !435
  %70 = or i32 %69, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !436
  tail call void @arm_heavy_mb() #14
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %72, i32 36864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %70) #14, !srcloc !268
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.else68.i
  %limit.0.i.i = phi i32 [ 32, %if.else68.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %74, i32 36864
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !437
  %76 = and i32 %75, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.gem_pcs_reset.exit.i_crit_edge, label %while.body.i.i

while.cond.i.i.gem_pcs_reset.exit.i_crit_edge:    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_pcs_reset.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 21474800) #14
  %dec.i.i = add nsw i32 %limit.0.i.i, -1
  %cmp.i.i = icmp eq i32 %limit.0.i.i, 0
  br i1 %cmp.i.i, label %if.then12.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

if.then12.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %79, ptr noundef nonnull @.str.59) #17
  br label %gem_pcs_reset.exit.i

gem_pcs_reset.exit.i:                             ; preds = %if.then12.i.i, %while.cond.i.i.gem_pcs_reset.exit.i_crit_edge
  tail call fastcc void @gem_pcs_reinit_adv(ptr noundef %add.ptr.i) #14
  br label %if.end69.i

if.end69.i:                                       ; preds = %gem_pcs_reset.exit.i, %if.then60.i, %land.lhs.true56.i.if.end69.i_crit_edge, %if.then53.i.if.end69.i_crit_edge
  %timer_ticks.i = getelementptr i8, ptr %dev, i32 2672
  %80 = ptrtoint ptr %timer_ticks.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %timer_ticks.i, align 8
  %lstate.i = getelementptr i8, ptr %dev, i32 2620
  %81 = ptrtoint ptr %lstate.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %lstate.i, align 4
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 8
  tail call void @netif_carrier_off(ptr noundef %83) #14
  %84 = ptrtoint ptr %phy_type46.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phy_type46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %switch124.i = icmp ult i32 %85, 2
  br i1 %switch124.i, label %if.then78.i, label %if.end69.i.gem_init_phy.exit_crit_edge

if.end69.i.gem_init_phy.exit_crit_edge:           ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_init_phy.exit

if.then78.i:                                      ; preds = %if.end69.i
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 8
  %phy_mii80.i = getelementptr i8, ptr %dev, i32 2732
  %88 = ptrtoint ptr %phy_mii80.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %phy_mii80.i, align 4
  %tobool82.not.i = icmp eq ptr %89, null
  br i1 %tobool82.not.i, label %if.then78.i.cond.end.i_crit_edge, label %cond.true.i

if.then78.i.cond.end.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.mii_phy_def, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then78.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %91, %cond.true.i ], [ @.str.58, %if.then78.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %87, ptr noundef nonnull @.str.57, ptr noundef %cond.i) #17
  br label %gem_init_phy.exit

gem_init_phy.exit:                                ; preds = %cond.end.i, %if.end69.i.gem_init_phy.exit_crit_edge
  tail call fastcc void @gem_begin_auto_negotiation(ptr noundef %add.ptr.i, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %gem_init_phy.exit, %gem_put_cell.exit
  %retval.0 = phi i32 [ %call.i, %gem_put_cell.exit ], [ 0, %gem_init_phy.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %napi = getelementptr i8, ptr %dev_id, i32 2344
  %call1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call1, label %if.then, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup15

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !263
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then5, label %if.end, !prof !261

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @napi_enable(ptr noundef %napi) #14
  br label %cleanup15

if.end:                                           ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2332
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %do.end

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev10 = getelementptr i8, ptr %dev_id, i32 3816
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %7, i32 noundef %3) #17
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %status = getelementptr i8, ptr %dev_id, i32 2336
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %status, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !326
  tail call void @arm_heavy_mb() #14
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 2011170560) #14, !srcloc !268
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !327
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %cleanup15

cleanup15:                                        ; preds = %if.end12, %if.then5, %entry.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.then5 ], [ 1, %if.end12 ], [ 1, %entry.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sungem_phy_probe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gem_do_stop(ptr noundef %dev, i32 noundef %wol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @gem_netif_stop(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !326
  tail call void @arm_heavy_mb() #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 2011170560) #14, !srcloc !268
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !327
  %link_timer = getelementptr i8, ptr %dev, i32 2624
  %call1 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #14
  %reset_task_pending = getelementptr i8, ptr %dev, i32 2724
  %5 = ptrtoint ptr %reset_task_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %reset_task_pending, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 8196
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !439
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !440
  tail call void @arm_heavy_mb() #14
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %11, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #14, !srcloc !268
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %13, i32 16384
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !442
  tail call void @arm_heavy_mb() #14
  %15 = and i32 %14, -16777217
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %17, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %15) #14, !srcloc !268
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %19, i32 24624
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !443
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !444
  tail call void @arm_heavy_mb() #14
  %21 = and i32 %20, -16777217
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %23, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %21) #14, !srcloc !268
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %25, i32 24628
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !446
  tail call void @arm_heavy_mb() #14
  %27 = and i32 %26, -16777217
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %29, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %27) #14, !srcloc !268
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr46.i = getelementptr i8, ptr %31, i32 24628
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !447
  tail call void @msleep(i32 noundef 10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wol)
  %tobool.not = icmp eq i32 %wol, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @gem_reset(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @msleep(i32 noundef 10) #14
  tail call fastcc void @gem_clean_rings(ptr noundef %add.ptr.i)
  %pdev = getelementptr i8, ptr %dev, i32 3812
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %dev) #14
  tail call void @msleep(i32 noundef 10) #14
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %38, i32 25104
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !448
  %40 = and i32 %39, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !449
  tail call void @arm_heavy_mb() #14
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i16 = getelementptr i8, ptr %42, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i16, i32 %40) #14, !srcloc !268
  br i1 %tobool.not, label %if.end.do.body61.i_crit_edge, label %land.lhs.true.i

if.end.do.body61.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body61.i

land.lhs.true.i:                                  ; preds = %if.end
  %has_wol.i = getelementptr i8, ptr %dev, i32 2324
  %43 = ptrtoint ptr %has_wol.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %has_wol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.body61.i_crit_edge, label %if.then.i

land.lhs.true.i.do.body61.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body61.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %dev, i32 3816
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !450
  tail call void @arm_heavy_mb() #14
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %49, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 620756992) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !451
  tail call void @arm_heavy_mb() #14
  %arrayidx13.i = getelementptr i8, ptr %47, i32 4
  %50 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx13.i, align 1
  %conv.i = zext i8 %51 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx14.i = getelementptr i8, ptr %47, i32 5
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %53 to i32
  %or.i = or i32 %shl.i, %conv15.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %56, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %54) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !452
  tail call void @arm_heavy_mb() #14
  %arrayidx21.i = getelementptr i8, ptr %47, i32 2
  %57 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %58 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 8
  %arrayidx24.i = getelementptr i8, ptr %47, i32 3
  %59 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %60 to i32
  %or26.i = or i32 %shl23.i, %conv25.i
  %61 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #14
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %63, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %61) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !453
  tail call void @arm_heavy_mb() #14
  %64 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %47, align 1
  %conv33.i = zext i8 %65 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %arrayidx35.i = getelementptr i8, ptr %47, i32 1
  %66 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %67 to i32
  %or37.i = or i32 %shl34.i, %conv36.i
  %68 = tail call i32 @llvm.bswap.i32(i32 %or37.i) #14
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr39.i = getelementptr i8, ptr %70, i32 12296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %68) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !454
  tail call void @arm_heavy_mb() #14
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr44.i = getelementptr i8, ptr %72, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 268435456) #14, !srcloc !268
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr48.i = getelementptr i8, ptr %74, i32 24636
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !455
  %76 = and i32 %75, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i = icmp eq i32 %76, 0
  %spec.select.i = select i1 %cmp.i, i32 50331648, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !456
  tail call void @arm_heavy_mb() #14
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr60.i = getelementptr i8, ptr %78, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %spec.select.i) #14, !srcloc !268
  br label %do.body74.i

do.body61.i:                                      ; preds = %land.lhs.true.i.do.body61.i_crit_edge, %if.end.do.body61.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !457
  tail call void @arm_heavy_mb() #14
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr65.i = getelementptr i8, ptr %80, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 0) #14, !srcloc !268
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %82, i32 24628
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !458
  tail call void @msleep(i32 noundef 10) #14
  br label %do.body74.i

do.body74.i:                                      ; preds = %do.body61.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !459
  tail call void @arm_heavy_mb() #14
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr78.i = getelementptr i8, ptr %85, i32 24624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !460
  tail call void @arm_heavy_mb() #14
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr83.i = getelementptr i8, ptr %87, i32 24636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !461
  tail call void @arm_heavy_mb() #14
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr88.i = getelementptr i8, ptr %89, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !462
  tail call void @arm_heavy_mb() #14
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr93.i = getelementptr i8, ptr %91, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 0) #14, !srcloc !268
  br i1 %tobool.not, label %if.then95.i, label %do.body74.i.gem_stop_phy.exit_crit_edge

do.body74.i.gem_stop_phy.exit_crit_edge:          ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_stop_phy.exit

if.then95.i:                                      ; preds = %do.body74.i
  tail call fastcc void @gem_reset(ptr noundef %add.ptr.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !463
  tail call void @arm_heavy_mb() #14
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr100.i = getelementptr i8, ptr %93, i32 24576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 16777216) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !464
  tail call void @arm_heavy_mb() #14
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr105.i = getelementptr i8, ptr %95, i32 24580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 16777216) #14, !srcloc !268
  %phy_type.i = getelementptr i8, ptr %dev, i32 2728
  %96 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %phy_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %switch.i = icmp ult i32 %97, 2
  br i1 %switch.i, label %land.lhs.true111.i, label %if.then95.i.do.body130.i_crit_edge

if.then95.i.do.body130.i_crit_edge:               ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body130.i

land.lhs.true111.i:                               ; preds = %if.then95.i
  %phy_mii.i = getelementptr i8, ptr %dev, i32 2732
  %98 = ptrtoint ptr %phy_mii.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy_mii.i, align 4
  %tobool112.not.i = icmp eq ptr %99, null
  br i1 %tobool112.not.i, label %land.lhs.true111.i.do.body130.i_crit_edge, label %land.lhs.true113.i

land.lhs.true111.i.do.body130.i_crit_edge:        ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body130.i

land.lhs.true113.i:                               ; preds = %land.lhs.true111.i
  %ops.i = getelementptr inbounds %struct.mii_phy_def, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i, align 4
  %tobool116.not.i = icmp eq ptr %101, null
  br i1 %tobool116.not.i, label %land.lhs.true113.i.do.body130.i_crit_edge, label %land.lhs.true117.i

land.lhs.true113.i.do.body130.i_crit_edge:        ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body130.i

land.lhs.true117.i:                               ; preds = %land.lhs.true113.i
  %suspend.i = getelementptr inbounds %struct.mii_phy_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %suspend.i, align 4
  %tobool121.not.i = icmp eq ptr %103, null
  br i1 %tobool121.not.i, label %land.lhs.true117.i.do.body130.i_crit_edge, label %if.then122.i

land.lhs.true117.i.do.body130.i_crit_edge:        ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body130.i

if.then122.i:                                     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #16
  %call128.i = tail call i32 %103(ptr noundef %phy_mii.i) #14
  br label %do.body130.i

do.body130.i:                                     ; preds = %if.then122.i, %land.lhs.true117.i.do.body130.i_crit_edge, %land.lhs.true113.i.do.body130.i_crit_edge, %land.lhs.true111.i.do.body130.i_crit_edge, %if.then95.i.do.body130.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !465
  tail call void @arm_heavy_mb() #14
  %104 = or i32 %40, 67108864
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr135.i = getelementptr i8, ptr %106, i32 25104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i, i32 %104) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !466
  tail call void @arm_heavy_mb() #14
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr140.i = getelementptr i8, ptr %108, i32 25088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !467
  tail call void @arm_heavy_mb() #14
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr145.i = getelementptr i8, ptr %110, i32 25092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !468
  tail call void @arm_heavy_mb() #14
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr150.i = getelementptr i8, ptr %112, i32 25096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150.i, i32 0) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !469
  tail call void @arm_heavy_mb() #14
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr155.i = getelementptr i8, ptr %114, i32 24636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155.i, i32 167772160) #14, !srcloc !268
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr159.i = getelementptr i8, ptr %116, i32 24636
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !470
  br label %gem_stop_phy.exit

gem_stop_phy.exit:                                ; preds = %do.body130.i, %do.body74.i.gem_stop_phy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gem_abnormal_irq(ptr noundef %dev, ptr noundef %gp, i32 noundef %gem_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gem_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dev4 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %3) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %and6 = and i32 %gem_status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end23, label %if.then8

if.then8:                                         ; preds = %if.end5
  %msg_enable9 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %6 = ptrtoint ptr %msg_enable9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable9, align 4
  %and10 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then8.if.end20_crit_edge, label %do.end14

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %dev16 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %8 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev16, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %9) #17
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.then8.if.end20_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %10 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_errors, align 8
  %inc22 = add i32 %11, 1
  store i32 %inc22, ptr %rx_errors, align 8
  br label %return

if.end23:                                         ; preds = %if.end5
  %and24 = and i32 %gem_status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %12 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gp, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 36888
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !263
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !471
  %msg_enable.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then26.if.end.i_crit_edge, label %do.end.i

if.then26.if.end.i_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %dev3.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %18 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %19, i32 noundef %15) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then26.if.end.i_crit_edge
  %and5.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #17
  br label %if.end31

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gp, align 8
  %add.ptr12.i = getelementptr i8, ptr %21, i32 36868
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #14, !srcloc !263
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !472
  %and16.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end8.i.if.end27.i_crit_edge

if.end8.i.if.end27.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gp, align 8
  %add.ptr22.i = getelementptr i8, ptr %25, i32 36868
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #14, !srcloc !263
  %27 = lshr i32 %26, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !473
  %and26.i = and i32 %27, 4
  %or.i = or i32 %and26.i, %23
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then18.i, %if.end8.i.if.end27.i_crit_edge
  %pcs_miistat.0.i = phi i32 [ %23, %if.end8.i.if.end27.i_crit_edge ], [ %or.i, %if.then18.i ]
  %and28.i = and i32 %pcs_miistat.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then30.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  %and31.i = and i32 %pcs_miistat.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %.str.75..str.74.i = select i1 %tobool32.not.i, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull %.str.75..str.74.i) #17
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end35.i_crit_edge
  %and36.i = and i32 %pcs_miistat.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else40.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #17
  %dev39.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %28 = ptrtoint ptr %dev39.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev39.i, align 8
  tail call void @netif_carrier_on(ptr noundef %29) #14
  br label %if.end31

if.else40.i:                                      ; preds = %if.end35.i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.77) #17
  %dev41.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %30 = ptrtoint ptr %dev41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev41.i, align 8
  tail call void @netif_carrier_off(ptr noundef %31) #14
  %pprev.i.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 22, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.not.i, label %if.else40.i.return_crit_edge, label %if.else40.i.if.end31_crit_edge

if.else40.i.if.end31_crit_edge:                   ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.else40.i.return_crit_edge:                     ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end31:                                         ; preds = %if.else40.i.if.end31_crit_edge, %if.then38.i, %if.then7.i, %if.end23.if.end31_crit_edge
  %and32 = and i32 %gem_status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %if.then34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  %34 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gp, align 8
  %add.ptr.i101 = getelementptr i8, ptr %35, i32 24592
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #14, !srcloc !263
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !474
  %msg_enable.i102 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %38 = ptrtoint ptr %msg_enable.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable.i102, align 4
  %and.i103 = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %if.then34.if.end.i108_crit_edge, label %do.end.i107

if.then34.if.end.i108_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i108

do.end.i107:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  %dev3.i105 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %40 = ptrtoint ptr %dev3.i105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3.i105, align 8
  %call4.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %41, i32 noundef %37) #17
  br label %if.end.i108

if.end.i108:                                      ; preds = %do.end.i107, %if.then34.if.end.i108_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %36)
  %42 = icmp eq i32 %36, -2147483648
  br i1 %42, label %if.end.i108.if.end39_crit_edge, label %if.end10.i

if.end.i108.if.end39_crit_edge:                   ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end10.i:                                       ; preds = %if.end.i108
  %and11.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #17
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %43 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %and15.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #17
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %45 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_errors.i, align 4
  %inc19.i = add i32 %46, 1
  store i32 %inc19.i, ptr %tx_errors.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %and21.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %47 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %collisions.i, align 4
  %add.i = add i32 %48, 65536
  store i32 %add.i, ptr %collisions.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %and26.i109 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i109)
  %tobool27.not.i = icmp eq i32 %and26.i109, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end34.i_crit_edge, label %if.then28.i

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %49 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_aborted_errors.i, align 8
  %add30.i = add i32 %50, 65536
  store i32 %add30.i, ptr %tx_aborted_errors.i, align 8
  %collisions32.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %51 = ptrtoint ptr %collisions32.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %collisions32.i, align 4
  %add33.i = add i32 %52, 65536
  store i32 %add33.i, ptr %collisions32.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end34.i_crit_edge
  %and35.i = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end39_crit_edge, label %if.then37.i

if.end34.i.if.end39_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  %tx_aborted_errors39.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %53 = ptrtoint ptr %tx_aborted_errors39.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_aborted_errors39.i, align 8
  %add40.i = add i32 %54, 65536
  store i32 %add40.i, ptr %tx_aborted_errors39.i, align 8
  %collisions42.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %55 = ptrtoint ptr %collisions42.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %collisions42.i, align 4
  %add43.i = add i32 %56, 65536
  store i32 %add43.i, ptr %collisions42.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37.i, %if.end34.i.if.end39_crit_edge, %if.end.i108.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %and40 = and i32 %gem_status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %if.then42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end39
  %57 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gp, align 8
  %add.ptr.i110 = getelementptr i8, ptr %58, i32 24596
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #14, !srcloc !263
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !475
  %msg_enable.i111 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %61 = ptrtoint ptr %msg_enable.i111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable.i111, align 4
  %and.i112 = and i32 %62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i113 = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i113, label %if.then42.if.end.i119_crit_edge, label %do.end.i116

if.then42.if.end.i119_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i119

do.end.i116:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %dev3.i114 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %63 = ptrtoint ptr %dev3.i114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev3.i114, align 8
  %call4.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %64, i32 noundef %60) #17
  br label %if.end.i119

if.end.i119:                                      ; preds = %do.end.i116, %if.then42.if.end.i119_crit_edge
  %and5.i117 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i117)
  %tobool6.not.i118 = icmp eq i32 %and5.i117, 0
  br i1 %tobool6.not.i118, label %if.end.i119.if.end18.i_crit_edge, label %if.then7.i121

if.end.i119.if.end18.i_crit_edge:                 ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then7.i121:                                    ; preds = %if.end.i119
  %65 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gp, align 8
  %add.ptr11.i = getelementptr i8, ptr %66, i32 24884
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #14, !srcloc !263
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !476
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %68) #17
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %69 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i120 = add i32 %70, 1
  store i32 %inc.i120, ptr %rx_over_errors.i, align 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %71 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc16.i = add i32 %72, 1
  store i32 %inc16.i, ptr %rx_fifo_errors.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %73 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !477
  tail call void @arm_heavy_mb() #14
  %75 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gp, align 8
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 24580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #14, !srcloc !268
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then7.i121
  %limit.0253.i.i = phi i32 [ 0, %if.then7.i121 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %77 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gp, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %78, i32 24580
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !478
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i, label %do.body8.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 2147480) #14
  %inc.i.i = add nuw nsw i32 %limit.0253.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5000
  br i1 %exitcond.not.i.i, label %if.then6.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.85) #17
  br label %if.end18.i

do.body8.i.i:                                     ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !479
  tail call void @arm_heavy_mb() #14
  %mac_rx_cfg.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 17
  %82 = ptrtoint ptr %mac_rx_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mac_rx_cfg.i.i, align 4
  %and11.i.i = and i32 %83, -2
  %84 = tail call i32 @llvm.bswap.i32(i32 %and11.i.i) #14
  %85 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gp, align 8
  %add.ptr13.i.i = getelementptr i8, ptr %86, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %84) #14, !srcloc !268
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %if.end27.i.i.for.body16.i.i_crit_edge, %do.body8.i.i
  %limit.1254.i.i = phi i32 [ 0, %do.body8.i.i ], [ %inc29.i.i, %if.end27.i.i.for.body16.i.i_crit_edge ]
  %87 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %gp, align 8
  %add.ptr20.i.i = getelementptr i8, ptr %88, i32 24628
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !480
  %90 = and i32 %89, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool25.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool25.not.i.i, label %do.body34.i.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %for.body16.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 2147480) #14
  %inc29.i.i = add nuw nsw i32 %limit.1254.i.i, 1
  %exitcond259.not.i.i = icmp eq i32 %inc29.i.i, 5000
  br i1 %exitcond259.not.i.i, label %if.then32.i.i, label %if.end27.i.i.for.body16.i.i_crit_edge

if.end27.i.i.for.body16.i.i_crit_edge:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

if.then32.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.86) #17
  br label %if.end18.i

do.body34.i.i:                                    ; preds = %for.body16.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !481
  tail call void @arm_heavy_mb() #14
  %92 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gp, align 8
  %add.ptr38.i.i = getelementptr i8, ptr %93, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 0) #14, !srcloc !268
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %if.end52.i.i.for.body41.i.i_crit_edge, %do.body34.i.i
  %limit.2255.i.i = phi i32 [ 0, %do.body34.i.i ], [ %inc54.i.i, %if.end52.i.i.for.body41.i.i_crit_edge ]
  %94 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gp, align 8
  %add.ptr45.i.i = getelementptr i8, ptr %95, i32 16384
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !482
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool50.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool50.not.i.i, label %for.end55.i.i, label %if.end52.i.i

if.end52.i.i:                                     ; preds = %for.body41.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 2147480) #14
  %inc54.i.i = add nuw nsw i32 %limit.2255.i.i, 1
  %exitcond260.not.i.i = icmp eq i32 %inc54.i.i, 5000
  br i1 %exitcond260.not.i.i, label %if.end52.i.i.if.then57.i.i_crit_edge, label %if.end52.i.i.for.body41.i.i_crit_edge

if.end52.i.i.for.body41.i.i_crit_edge:            ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41.i.i

if.end52.i.i.if.then57.i.i_crit_edge:             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57.i.i

for.end55.i.i:                                    ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %limit.2255.i.i)
  %cmp56.i.i = icmp eq i32 %limit.2255.i.i, 5000
  br i1 %cmp56.i.i, label %for.end55.i.i.if.then57.i.i_crit_edge, label %while.body.preheader.i.i

for.end55.i.i.if.then57.i.i_crit_edge:            ; preds = %for.end55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57.i.i

while.body.preheader.i.i:                         ; preds = %for.end55.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !483
  tail call void @arm_heavy_mb() #14
  %swrst_base.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 18
  %104 = ptrtoint ptr %swrst_base.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %swrst_base.i.i, align 8
  %or.i.i = or i32 %105, 2
  %106 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %107 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %gp, align 8
  %add.ptr64.i.i = getelementptr i8, ptr %108, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i.i, i32 %106) #14, !srcloc !268
  br label %for.body67.i.i

if.then57.i.i:                                    ; preds = %for.end55.i.i.if.then57.i.i_crit_edge, %if.end52.i.i.if.then57.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.87) #17
  br label %if.end18.i

for.body67.i.i:                                   ; preds = %if.end78.i.i.for.body67.i.i_crit_edge, %while.body.preheader.i.i
  %limit.3257.i.i = phi i32 [ 0, %while.body.preheader.i.i ], [ %inc80.i.i, %if.end78.i.i.for.body67.i.i_crit_edge ]
  %109 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gp, align 8
  %add.ptr71.i.i = getelementptr i8, ptr %110, i32 4112
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !484
  %112 = and i32 %111, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool76.not.i.i = icmp eq i32 %112, 0
  br i1 %tobool76.not.i.i, label %for.end81.i.i, label %if.end78.i.i

if.end78.i.i:                                     ; preds = %for.body67.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 2147480) #14
  %inc80.i.i = add nuw nsw i32 %limit.3257.i.i, 1
  %exitcond261.not.i.i = icmp eq i32 %inc80.i.i, 5000
  br i1 %exitcond261.not.i.i, label %if.end78.i.i.if.then83.i.i_crit_edge, label %if.end78.i.i.for.body67.i.i_crit_edge

if.end78.i.i.for.body67.i.i_crit_edge:            ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body67.i.i

if.end78.i.i.if.then83.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then83.i.i

for.end81.i.i:                                    ; preds = %for.body67.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %limit.3257.i.i)
  %cmp82.i.i = icmp eq i32 %limit.3257.i.i, 5000
  br i1 %cmp82.i.i, label %for.end81.i.i.if.then83.i.i_crit_edge, label %for.cond85.preheader.i.i

for.end81.i.i.if.then83.i.i_crit_edge:            ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then83.i.i

for.cond85.preheader.i.i:                         ; preds = %for.end81.i.i
  %init_block.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 30
  %rx_buf_sz.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 14
  br label %for.body87.i.i

if.then83.i.i:                                    ; preds = %for.end81.i.i.if.then83.i.i_crit_edge, %if.end78.i.i.if.then83.i.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.88) #17
  br label %if.end18.i

for.body87.i.i:                                   ; preds = %if.end92.i.i.for.body87.i.i_crit_edge, %for.cond85.preheader.i.i
  %i.0258.i.i = phi i32 [ 0, %for.cond85.preheader.i.i ], [ %inc98.i.i, %if.end92.i.i.for.body87.i.i_crit_edge ]
  %arrayidx89.i.i = getelementptr %struct.gem, ptr %gp, i32 0, i32 31, i32 %i.0258.i.i
  %114 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx89.i.i, align 4
  %cmp90.i.i = icmp eq ptr %115, null
  br i1 %cmp90.i.i, label %if.then91.i.i, label %if.end92.i.i

if.then91.i.i:                                    ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.89) #17
  br label %if.end18.i

if.end92.i.i:                                     ; preds = %for.body87.i.i
  %116 = ptrtoint ptr %init_block.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_block.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.gem_init_block, ptr %117, i32 0, i32 1, i32 %i.0258.i.i
  %118 = ptrtoint ptr %rx_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_buf_sz.i.i, align 8
  %sub.i.i = shl i32 %119, 16
  %shl.i.i = add i32 %sub.i.i, 6029312
  %120 = or i32 %shl.i.i, -2147483648
  %or96.i.i = zext i32 %120 to i64
  %121 = tail call i64 @llvm.bswap.i64(i64 %or96.i.i) #14
  %122 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %arrayidx.i.i, align 8
  %inc98.i.i = add nuw nsw i32 %i.0258.i.i, 1
  %exitcond262.not.i.i = icmp eq i32 %inc98.i.i, 128
  br i1 %exitcond262.not.i.i, label %for.end99.i.i, label %if.end92.i.i.for.body87.i.i_crit_edge

if.end92.i.i.for.body87.i.i_crit_edge:            ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body87.i.i

for.end99.i.i:                                    ; preds = %if.end92.i.i
  %rx_old.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 2
  %123 = ptrtoint ptr %rx_old.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %rx_old.i.i, align 8
  %rx_new.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 1
  %124 = ptrtoint ptr %rx_new.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %rx_new.i.i, align 4
  %gblock_dvma.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 33
  %125 = ptrtoint ptr %gblock_dvma.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %gblock_dvma.i.i, align 8
  %conv100.i.i = zext i32 %126 to i64
  %add101.i.i = add nuw nsw i64 %conv100.i.i, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !485
  tail call void @arm_heavy_mb() #14
  %sh.diff.i.i = lshr i64 %add101.i.i, 8
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %127 = and i32 %tr.sh.diff.i.i, 16777216
  %128 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %gp, align 8
  %add.ptr107.i.i = getelementptr i8, ptr %129, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107.i.i, i32 %127) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !486
  tail call void @arm_heavy_mb() #14
  %conv112.i.i = trunc i64 %add101.i.i to i32
  %130 = tail call i32 @llvm.bswap.i32(i32 %conv112.i.i) #14
  %131 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %gp, align 8
  %add.ptr114.i.i = getelementptr i8, ptr %132, i32 16388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114.i.i, i32 %130) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !487
  tail call void @arm_heavy_mb() #14
  %133 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %gp, align 8
  %add.ptr119.i.i = getelementptr i8, ptr %134, i32 16640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i.i, i32 2080374784) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !488
  tail call void @arm_heavy_mb() #14
  %135 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %gp, align 8
  %add.ptr124.i.i = getelementptr i8, ptr %136, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i.i, i32 80216321) #14, !srcloc !268
  %137 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %gp, align 8
  %add.ptr128.i.i = getelementptr i8, ptr %138, i32 4104
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !489
  %140 = and i32 %139, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool133.not.i.i = icmp eq i32 %140, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  %141 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %gp, align 8
  %add.ptr144.i.i = getelementptr i8, ptr %142, i32 16648
  br i1 %tobool133.not.i.i, label %do.body140.i.i, label %do.body135.i.i

do.body135.i.i:                                   ; preds = %for.end99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i, i32 92274688) #14, !srcloc !268
  br label %if.end145.i.i

do.body140.i.i:                                   ; preds = %for.end99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i, i32 88080384) #14, !srcloc !268
  br label %if.end145.i.i

if.end145.i.i:                                    ; preds = %do.body140.i.i, %do.body135.i.i
  %rx_pause_off.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 12
  %143 = ptrtoint ptr %rx_pause_off.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rx_pause_off.i.i, align 8
  %div.i.i = sdiv i32 %144, 64
  %and147.i.i = and i32 %div.i.i, 511
  %rx_pause_on.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 13
  %145 = ptrtoint ptr %rx_pause_on.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_pause_on.i.i, align 4
  %div148.i.i = sdiv i32 %146, 64
  %shl149.i.i = shl i32 %div148.i.i, 12
  %and150.i.i = and i32 %shl149.i.i, 2093056
  %or151.i.i = or i32 %and150.i.i, %and147.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !490
  tail call void @arm_heavy_mb() #14
  %147 = tail call i32 @llvm.bswap.i32(i32 %or151.i.i) #14
  %148 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %gp, align 8
  %add.ptr156.i.i = getelementptr i8, ptr %149, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156.i.i, i32 %147) #14, !srcloc !268
  %150 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %gp, align 8
  %add.ptr160.i.i = getelementptr i8, ptr %151, i32 16384
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !491
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !492
  tail call void @arm_heavy_mb() #14
  %153 = or i32 %152, 16777216
  %154 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %gp, align 8
  %add.ptr169.i.i = getelementptr i8, ptr %155, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i.i, i32 %153) #14, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !493
  tail call void @arm_heavy_mb() #14
  %156 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %gp, align 8
  %add.ptr174.i.i = getelementptr i8, ptr %157, i32 24612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174.i.i, i32 16777216) #14, !srcloc !268
  %158 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %gp, align 8
  %add.ptr178.i.i = getelementptr i8, ptr %159, i32 24628
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178.i.i) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !494
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !495
  tail call void @arm_heavy_mb() #14
  %161 = or i32 %160, 16777216
  %162 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %gp, align 8
  %add.ptr187.i.i = getelementptr i8, ptr %163, i32 24628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187.i.i, i32 %161) #14, !srcloc !268
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end145.i.i, %if.then91.i.i, %if.then83.i.i, %if.then57.i.i, %if.then32.i.i, %if.then6.i.i, %if.end.i119.if.end18.i_crit_edge
  %tobool44.not = phi i1 [ true, %if.end145.i.i ], [ false, %if.then91.i.i ], [ false, %if.then83.i.i ], [ false, %if.then57.i.i ], [ false, %if.then32.i.i ], [ false, %if.then6.i.i ], [ true, %if.end.i119.if.end18.i_crit_edge ]
  %and19.i = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end23.i_crit_edge, label %if.then21.i

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %164 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_frame_errors.i, align 4
  %add.i122 = add i32 %165, 65536
  store i32 %add.i122, ptr %rx_frame_errors.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end23.i_crit_edge
  %and24.i = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %166 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rx_crc_errors.i, align 8
  %add28.i = add i32 %167, 65536
  store i32 %add28.i, ptr %rx_crc_errors.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  %and30.i = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.gem_rxmac_interrupt.exit_crit_edge, label %if.then32.i

if.end29.i.gem_rxmac_interrupt.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gem_rxmac_interrupt.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %168 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rx_length_errors.i, align 8
  %add34.i = add i32 %169, 65536
  store i32 %add34.i, ptr %rx_length_errors.i, align 8
  br label %gem_rxmac_interrupt.exit

gem_rxmac_interrupt.exit:                         ; preds = %if.then32.i, %if.end29.i.gem_rxmac_interrupt.exit_crit_edge
  br i1 %tobool44.not, label %gem_rxmac_interrupt.exit.if.end47_crit_edge, label %gem_rxmac_interrupt.exit.return_crit_edge

gem_rxmac_interrupt.exit.return_crit_edge:        ; preds = %gem_rxmac_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

gem_rxmac_interrupt.exit.if.end47_crit_edge:      ; preds = %gem_rxmac_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %gem_rxmac_interrupt.exit.if.end47_crit_edge, %if.end39.if.end47_crit_edge
  %and48 = and i32 %gem_status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end55_crit_edge, label %if.then50

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then50:                                        ; preds = %if.end47
  %170 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %gp, align 8
  %add.ptr.i124 = getelementptr i8, ptr %171, i32 24600
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #14, !srcloc !263
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !496
  %msg_enable.i125 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %174 = ptrtoint ptr %msg_enable.i125 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %msg_enable.i125, align 4
  %and.i126 = and i32 %175, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %if.then50.if.end.i133_crit_edge, label %do.end.i130

if.then50.if.end.i133_crit_edge:                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i133

do.end.i130:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  %dev3.i128 = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %176 = ptrtoint ptr %dev3.i128 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev3.i128, align 8
  %call4.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %177, i32 noundef %173) #17
  br label %if.end.i133

if.end.i133:                                      ; preds = %do.end.i130, %if.then50.if.end.i133_crit_edge
  %and5.i131 = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i131)
  %tobool6.not.i132 = icmp eq i32 %and5.i131, 0
  br i1 %tobool6.not.i132, label %if.end.i133.if.end8.i136_crit_edge, label %if.then7.i135

if.end.i133.if.end8.i136_crit_edge:               ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i136

if.then7.i135:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #16
  %pause_entered.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 15
  %178 = ptrtoint ptr %pause_entered.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %pause_entered.i, align 8
  %inc.i134 = add i64 %179, 1
  store i64 %inc.i134, ptr %pause_entered.i, align 8
  br label %if.end8.i136

if.end8.i136:                                     ; preds = %if.then7.i135, %if.end.i133.if.end8.i136_crit_edge
  %and9.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i136.if.end55_crit_edge, label %if.then11.i

if.end8.i136.if.end55_crit_edge:                  ; preds = %if.end8.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then11.i:                                      ; preds = %if.end8.i136
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = lshr i32 %173, 16
  %conv.i = trunc i32 %shr.i to i16
  %pause_last_time_recvd.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 16
  %180 = ptrtoint ptr %pause_last_time_recvd.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i, ptr %pause_last_time_recvd.i, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then11.i, %if.end8.i136.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %and56 = and i32 %gem_status, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end63_crit_edge, label %if.then58

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then58:                                        ; preds = %if.end55
  %181 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %gp, align 8
  %add.ptr.i137 = getelementptr i8, ptr %182, i32 25112
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #14, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !497
  %msg_enable.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 7
  %184 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %185, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i138 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i138, label %if.then58.if.end63_crit_edge, label %do.end.i.i

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.end.i.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 35
  %186 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev.i.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %187) #17
  br label %if.end63

if.end63:                                         ; preds = %do.end.i.i, %if.then58.if.end63_crit_edge, %if.end55.if.end63_crit_edge
  %and64 = and i32 %gem_status, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.return_crit_edge, label %if.then66

if.end63.return_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then66:                                        ; preds = %if.end63
  %188 = ptrtoint ptr %gp to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %gp, align 8
  %add.ptr.i139 = getelementptr i8, ptr %189, i32 4096
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #14, !srcloc !263
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !498
  %pdev.i = getelementptr inbounds %struct.gem, ptr %gp, i32 0, i32 34
  %192 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pdev.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 7
  %194 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %195)
  %cmp.i = icmp eq i16 %195, 4238
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then66.if.end33.thread.i_crit_edge

if.then66.if.end33.thread.i_crit_edge:            ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.thread.i

land.lhs.true.i:                                  ; preds = %if.then66
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 8
  %196 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11181, i16 %197)
  %cmp5.i = icmp eq i16 %197, 11181
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true.i.if.end33.thread.i_crit_edge

land.lhs.true.i.if.end33.thread.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.thread.i

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %191) #17
  %and.i140 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.not.i141 = icmp eq i32 %and.i140, 0
  br i1 %tobool.not.i141, label %if.then.i.if.end.i143_crit_edge, label %do.end.i142

if.then.i.if.end.i143_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i143

do.end.i142:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  br label %if.end.i143

if.end.i143:                                      ; preds = %do.end.i142, %if.then.i.if.end.i143_crit_edge
  %and10.i = and i32 %191, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i143.if.end18.i146_crit_edge, label %do.end15.i

if.end.i143.if.end18.i146_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i146

do.end15.i:                                       ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #16
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #17
  br label %if.end18.i146

if.end18.i146:                                    ; preds = %do.end15.i, %if.end.i143.if.end18.i146_crit_edge
  %and19.i144 = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i144)
  %tobool20.not.i145 = icmp eq i32 %and19.i144, 0
  br i1 %tobool20.not.i145, label %if.end33.thread2.i, label %if.end33.i

if.end33.thread2.i:                               ; preds = %if.end18.i146
  call void @__sanitizer_cov_trace_pc() #16
  %call323.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #17
  br label %return

if.end33.thread.i:                                ; preds = %land.lhs.true.i.if.end33.thread.i_crit_edge, %if.then66.if.end33.thread.i_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.106) #17
  br label %if.then36.i

if.end33.i:                                       ; preds = %if.end18.i146
  call void @__sanitizer_cov_trace_pc() #16
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #17
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #17
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i, %if.end33.thread.i
  %198 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev.i, align 4
  %call38.i = tail call i32 @pci_status_get_and_clear_errors(ptr noundef %199) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %call38.i) #17
  %and39.i = and i32 %call38.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then36.i.if.end42.i_crit_edge, label %if.then41.i

if.then36.i.if.end42.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.108) #17
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.then36.i.if.end42.i_crit_edge
  %and43.i = and i32 %call38.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end46.i147_crit_edge, label %if.then45.i

if.end42.i.if.end46.i147_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i147

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.109) #17
  br label %if.end46.i147

if.end46.i147:                                    ; preds = %if.then45.i, %if.end42.i.if.end46.i147_crit_edge
  %and47.i = and i32 %call38.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i147.if.end50.i_crit_edge, label %if.then49.i

if.end46.i147.if.end50.i_crit_edge:               ; preds = %if.end46.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end46.i147
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.110) #17
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end46.i147.if.end50.i_crit_edge
  %and51.i = and i32 %call38.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end54.i_crit_edge, label %if.then53.i

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.111) #17
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end54.i_crit_edge
  %and55.i = and i32 %call38.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end58.i_crit_edge, label %if.then57.i

if.end54.i.if.end58.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.112) #17
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end58.i_crit_edge
  %and59.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end58.i.return_crit_edge, label %if.then61.i

if.end58.i.return_crit_edge:                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.113) #17
  br label %return

return:                                           ; preds = %if.then61.i, %if.end58.i.return_crit_edge, %if.end33.thread2.i, %if.end63.return_crit_edge, %gem_rxmac_interrupt.exit.return_crit_edge, %if.else40.i.return_crit_edge, %if.end20
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 1, %gem_rxmac_interrupt.exit.return_crit_edge ], [ 0, %if.end63.return_crit_edge ], [ 1, %if.else40.i.return_crit_edge ], [ 1, %if.end33.thread2.i ], [ 1, %if.end58.i.return_crit_edge ], [ 1, %if.then61.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_status_get_and_clear_errors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gem_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.119, i32 noundef 32) #14
  %pdev = getelementptr i8, ptr %dev, i32 3812
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
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gem_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %has_wol = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %has_wol to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_wol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %supported1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %supported1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %supported1, align 4
  %wake_on_lan = getelementptr i8, ptr %dev, i32 2676
  %2 = ptrtoint ptr %wake_on_lan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wake_on_lan, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %supported1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %supported1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %3, %if.then ]
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gem_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %has_wol = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %has_wol to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_wol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts, align 4
  %and = and i32 %2, 32
  %wake_on_lan = getelementptr i8, ptr %dev, i32 2676
  %3 = ptrtoint ptr %wake_on_lan to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %wake_on_lan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gem_get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gem_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %want_autoneg = getelementptr i8, ptr %dev, i32 2612
  %0 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %want_autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr i8, ptr %dev, i32 3816
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %link_timer = getelementptr i8, ptr %dev, i32 2624
  %call4 = tail call i32 @del_timer_sync(ptr noundef %link_timer) #14
  tail call fastcc void @gem_begin_auto_negotiation(ptr noundef %add.ptr.i, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2728
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %phy_mii = getelementptr i8, ptr %dev, i32 2732
  %2 = ptrtoint ptr %phy_mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_mii, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %features = getelementptr inbounds %struct.mii_phy_def, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %supported.0 = phi i32 [ %5, %if.then3 ], [ 3, %if.then.if.end_crit_edge ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %phy_address, align 2
  %want_autoneg = getelementptr i8, ptr %dev, i32 2612
  %8 = ptrtoint ptr %want_autoneg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %want_autoneg, align 4
  %conv = trunc i32 %9 to i8
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %autoneg, align 1
  %speed = getelementptr i8, ptr %dev, i32 2748
  %11 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed, align 4
  %speed10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed10, align 4
  %duplex = getelementptr i8, ptr %dev, i32 2752
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex, align 4
  %conv12 = trunc i32 %15 to i8
  %duplex14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %duplex14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %duplex14, align 4
  %advertising16 = getelementptr i8, ptr %dev, i32 2736
  %17 = ptrtoint ptr %advertising16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %advertising16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17 = icmp eq i32 %18, 0
  %spec.select = select i1 %cmp17, i32 %supported.0, i32 %18
  br label %if.end49

if.else21:                                        ; preds = %entry
  %speed23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %duplex25 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %autoneg31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %speed23 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %speed23, align 4
  %20 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp33 = icmp eq i32 %21, 3
  br i1 %cmp33, label %if.then35, label %if.else21.if.end49_crit_edge

if.else21.if.end49_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then35:                                        ; preds = %if.else21
  %port27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %port27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %port27, align 1
  %lstate = getelementptr i8, ptr %dev, i32 2620
  %23 = ptrtoint ptr %lstate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp38 = icmp eq i32 %24, 5
  br i1 %cmp38, label %if.then40, label %if.then35.if.end43_crit_edge

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %speed23, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then35.if.end43_crit_edge
  %26 = ptrtoint ptr %duplex25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %duplex25, align 4
  %27 = ptrtoint ptr %autoneg31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %autoneg31, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.else21.if.end49_crit_edge, %if.end
  %supported.1 = phi i32 [ 25712, %if.end43 ], [ 79, %if.else21.if.end49_crit_edge ], [ %supported.0, %if.end ]
  %advertising.0 = phi i32 [ 25712, %if.end43 ], [ 79, %if.else21.if.end49_crit_edge ], [ %spec.select, %if.end ]
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %supported.1) #14
  %advertising52 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising52, i32 noundef %advertising.0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #14
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %advertising, align 4, !annotation !286
  %advertising2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call3 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising2) #14
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch = icmp ult i8 %4, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp14 = icmp eq i8 %4, 1
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true26

land.lhs.true16:                                  ; preds = %if.end
  %5 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %advertising, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17 = icmp eq i32 %6, 0
  br i1 %cmp17, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.if.end46_crit_edge

land.lhs.true16.if.end46_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %1, label %land.lhs.true26.cleanup_crit_edge [
    i32 1000, label %land.lhs.true26.lor.lhs.false_crit_edge
    i32 100, label %land.lhs.true26.lor.lhs.false_crit_edge68
    i32 10, label %land.lhs.true26.lor.lhs.false_crit_edge69
  ]

land.lhs.true26.lor.lhs.false_crit_edge69:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true26.lor.lhs.false_crit_edge68:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true26.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true26.lor.lhs.false_crit_edge, %land.lhs.true26.lor.lhs.false_crit_edge68, %land.lhs.true26.lor.lhs.false_crit_edge69
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch66 = icmp ult i8 %9, 2
  br i1 %switch66, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end46:                                         ; preds = %lor.lhs.false.if.end46_crit_edge, %land.lhs.true16.if.end46_crit_edge
  %dev47 = getelementptr i8, ptr %dev, i32 3816
  %10 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev47, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end46.cleanup_crit_edge, label %if.then49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %link_timer = getelementptr i8, ptr %dev, i32 2624
  %call50 = call i32 @del_timer_sync(ptr noundef %link_timer) #14
  call fastcc void @gem_begin_auto_negotiation(ptr noundef %add.ptr.i, ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end46.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true16.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true26.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #14
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_device_detach(ptr noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wake_on_lan = getelementptr i8, ptr %1, i32 2676
  %4 = ptrtoint ptr %wake_on_lan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wake_on_lan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i31 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i31)
  %tobool.i32.not = icmp eq i32 %and1.i.i31, 0
  %phi.sel = select i1 %tobool.i32.not, ptr @.str.122, ptr @.str.121
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %8 = phi ptr [ @.str.122, %if.end.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.120, ptr noundef nonnull %8) #17
  tail call void @netif_device_detach(ptr noundef %1) #14
  %9 = ptrtoint ptr %wake_on_lan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wake_on_lan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  %asleep_wol = getelementptr i8, ptr %1, i32 2324
  %11 = ptrtoint ptr %asleep_wol to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %asleep_wol, align 4
  %bf.shl = select i1 %tobool5.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %asleep_wol, align 4
  %bf.lshr = lshr exact i8 %bf.shl, 6
  %bf.cast = zext i8 %bf.lshr to i32
  tail call fastcc void @gem_do_stop(ptr noundef %1, i32 noundef %bf.cast)
  %12 = ptrtoint ptr %asleep_wol to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load11 = load i8, ptr %asleep_wol, align 4
  %13 = and i8 %bf.load11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.then16, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then16:                                        ; preds = %land.end
  %cell_enabled.i = getelementptr i8, ptr %1, i32 2328
  %14 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp slt i32 %15, 1
  br i1 %cmp.i, label %do.body2.i, label %gem_put_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %15, -1
  %16 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %gem_put_cell.exit, %land.end.cleanup_crit_edge, %if.then
  tail call void @rtnl_unlock() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gem_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_device_attach(ptr noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cell_enabled.i = getelementptr i8, ptr %1, i32 2328
  %4 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %do.body2.i, label %gem_get_cell.exit, !prof !261

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #14, !srcloc !262
  unreachable

gem_get_cell.exit:                                ; preds = %if.end
  %inc.i = add nuw i32 %5, 1
  %6 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %cell_enabled.i, align 8
  %call3 = tail call fastcc i32 @gem_do_start(ptr noundef %1)
  %asleep_wol = getelementptr i8, ptr %1, i32 2324
  %7 = ptrtoint ptr %asleep_wol to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %asleep_wol, align 4
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %gem_get_cell.exit.cleanup_crit_edge, label %if.then4

gem_get_cell.exit.cleanup_crit_edge:              ; preds = %gem_get_cell.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %gem_get_cell.exit
  %9 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cell_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i13 = icmp slt i32 %10, 1
  br i1 %cmp.i13, label %do.body2.i14, label %gem_put_cell.exit, !prof !261

do.body2.i14:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/sun/sungem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #14, !srcloc !278
  unreachable

gem_put_cell.exit:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add nsw i32 %10, -1
  %11 = ptrtoint ptr %cell_enabled.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec.i, ptr %cell_enabled.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %gem_put_cell.exit, %gem_get_cell.exit.cleanup_crit_edge, %if.then
  tail call void @rtnl_unlock() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !108, !109, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !164, !166, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !240, !242, !244, !246, !248}
!llvm.named.register.sp = !{!250}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 81, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 82, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 83, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sungem__349_3047_gem_driver_init6, !8, !"__initcall__kmod_sungem__349_3047_gem_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3047, i32 1}
!9 = !{ptr @__exitcall_gem_driver_exit, !8, !"__exitcall_gem_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3040, i32 11}
!13 = !{ptr @gem_driver, !14, !"gem_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3039, i32 26}
!15 = !{ptr @gem_pci_tbl, !16, !"gem_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 87, i32 35}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2854, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gem_init_one._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @gem_init_one._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2864, i32 3}
!26 = !{ptr @gem_init_one._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gem_init_one._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2885, i32 4}
!30 = !{ptr @gem_init_one._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gem_init_one._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2895, i32 3}
!34 = !{ptr @gem_init_one._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @gem_init_one._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2911, i32 3}
!38 = !{ptr @gem_init_one._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @gem_init_one._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @gem_init_one.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2920, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gem_init_one.__key.18, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2922, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2930, i32 3}
!48 = !{ptr @gem_init_one._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gem_init_one._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2974, i32 3}
!52 = !{ptr @gem_init_one._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gem_init_one._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3004, i32 3}
!56 = !{ptr @gem_init_one._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gem_init_one._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3016, i32 19}
!60 = !{ptr @version, !61, !"version", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 78, i32 13}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1532, i32 10}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1546, i32 4}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1363, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1437, i32 9}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1442, i32 25}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1453, i32 3}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1467, i32 3}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1483, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1196, i32 23}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1979, i32 4}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @gem_check_invariants._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @gem_check_invariants._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2019, i32 5}
!89 = !{ptr @gem_check_invariants._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @gem_check_invariants._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2034, i32 5}
!93 = !{ptr @gem_check_invariants._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @gem_check_invariants._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2042, i32 5}
!97 = !{ptr @gem_check_invariants._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @gem_check_invariants._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @gem_netdev_ops, !100, !"gem_netdev_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2831, i32 36}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2286, i32 20}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2154, i32 19}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 937, i32 4}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @gem_interrupt._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @gem_interrupt._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1694, i32 26}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1736, i32 24}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1737, i32 50}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1126, i32 24}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1011, i32 20}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 1101, i32 3}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @gem_start_xmit._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @gem_start_xmit._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 967, i32 18}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 969, i32 18}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 973, i32 18}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 583, i32 4}
!133 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @gem_abnormal_irq._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @gem_abnormal_irq._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 591, i32 4}
!138 = !{ptr @gem_abnormal_irq._entry.68, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @gem_abnormal_irq._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 262, i32 3}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @gem_pcs_interrupt._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @gem_pcs_interrupt._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 266, i32 19}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 285, i32 21}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 287, i32 21}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 291, i32 20}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 294, i32 20}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 311, i32 3}
!157 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @gem_txmac_interrupt._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @gem_txmac_interrupt._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 322, i32 19}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 327, i32 19}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 465, i32 3}
!166 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @gem_rxmac_interrupt._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @gem_rxmac_interrupt._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 471, i32 19}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 374, i32 19}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 386, i32 19}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 398, i32 19}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 413, i32 19}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 422, i32 20}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 498, i32 3}
!183 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @gem_mac_interrupt._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @gem_mac_interrupt._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 253, i32 3}
!188 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @gem_handle_mif_event._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @gem_handle_mif_event._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 533, i32 19}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 536, i32 4}
!195 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @gem_pci_interrupt._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @gem_pci_interrupt._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 538, i32 4}
!200 = !{ptr @gem_pci_interrupt._entry.97, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @gem_pci_interrupt._entry_ptr.99, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 540, i32 4}
!204 = !{ptr @gem_pci_interrupt._entry.100, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @gem_pci_interrupt._entry_ptr.102, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 541, i32 3}
!208 = !{ptr @gem_pci_interrupt._entry.103, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @gem_pci_interrupt._entry_ptr.105, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 544, i32 19}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 554, i32 19}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 556, i32 20}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 558, i32 20}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 560, i32 20}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 562, i32 20}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 564, i32 20}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 566, i32 20}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 645, i32 4}
!228 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @gem_tx._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @gem_tx._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.116, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 753, i32 3}
!233 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @gem_rx._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @gem_rx._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 869, i32 24}
!238 = !{ptr @gem_ethtool_ops, !239, !"gem_ethtool_ops", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2689, i32 33}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2526, i32 25}
!242 = !{ptr @gem_pm_ops, !243, !"gem_pm_ops", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 3037, i32 8}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2335, i32 19}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2337, i32 7}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/sun/sungem.c", i32 2337, i32 19}
!250 = !{!"sp"}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{i64 2156696747, i64 2156697245, i64 2156696784, i64 2156696840, i64 2156696874, i64 2156696898, i64 2156696939, i64 2156696960, i64 2156696988, i64 2156697022}
!263 = !{i64 4705799}
!264 = !{i64 2156837830}
!265 = !{i64 2156838333}
!266 = !{i64 2156838836}
!267 = !{i64 2156839120}
!268 = !{i64 4705381}
!269 = !{i64 2156839552}
!270 = !{i64 2156839993}
!271 = !{i64 2156840701}
!272 = !{i64 2156842758}
!273 = !{i64 2156843198}
!274 = !{i64 2156690253}
!275 = !{i64 2156690933}
!276 = !{i64 2156845584}
!277 = !{i64 2156846087}
!278 = !{i64 2156698387, i64 2156698885, i64 2156698424, i64 2156698480, i64 2156698514, i64 2156698538, i64 2156698579, i64 2156698600, i64 2156698628, i64 2156698662}
!279 = !{i64 2156799568}
!280 = !{i64 2156800082}
!281 = !{i64 2156773448}
!282 = !{i64 2156773930}
!283 = !{i64 2156775266}
!284 = !{i64 2156692104}
!285 = !{i64 2156692784}
!286 = !{!"auto-init"}
!287 = !{i64 4705579}
!288 = !{i64 2156876163}
!289 = !{i64 2156876371}
!290 = !{i64 2156874715}
!291 = !{i64 2156874923}
!292 = !{i64 2156875131}
!293 = !{i64 2156875339}
!294 = !{i64 2156875547}
!295 = !{i64 2156875755}
!296 = !{i64 2156875963}
!297 = !{i64 2156743289}
!298 = !{i64 2156748070}
!299 = !{i64 2156748573}
!300 = !{i64 2156749251}
!301 = !{i64 2156744332}
!302 = !{i64 2156745039}
!303 = !{i64 2156745265}
!304 = !{i64 2156754012}
!305 = !{i64 2156694087}
!306 = !{i64 2156788645}
!307 = !{i64 2156789530}
!308 = !{i64 2156789992}
!309 = !{i64 2156791645}
!310 = !{i64 2156791894}
!311 = !{i64 2156793589}
!312 = !{i64 2156793840}
!313 = !{i64 2156794565}
!314 = !{i64 2156795890}
!315 = !{i64 2156796159}
!316 = !{i64 2156775791}
!317 = !{i64 2156776040}
!318 = !{i64 2156776759}
!319 = !{i64 2156777008}
!320 = !{i64 2156777727}
!321 = !{i64 2156777976}
!322 = !{i64 2156778695}
!323 = !{i64 2156778944}
!324 = !{i64 2156779663}
!325 = !{i64 2156780444}
!326 = !{i64 2156695213}
!327 = !{i64 2156696367}
!328 = !{i64 2156804918}
!329 = !{i64 2156805491}
!330 = !{i64 2156805639}
!331 = !{i64 2156836205}
!332 = !{i64 2156836885}
!333 = !{i64 2156837143}
!334 = !{i64 2156807331}
!335 = !{i64 2156807744}
!336 = !{i64 2156808197}
!337 = !{i64 2156808668}
!338 = !{i64 2156809112}
!339 = !{i64 2156809525}
!340 = !{i64 2156809978}
!341 = !{i64 2156810442}
!342 = !{i64 2156810878}
!343 = !{i64 2156811558}
!344 = !{i64 2156817591}
!345 = !{i64 2156818003}
!346 = !{i64 2156818409}
!347 = !{i64 2156818815}
!348 = !{i64 2156819221}
!349 = !{i64 2156819627}
!350 = !{i64 2156820061}
!351 = !{i64 2156820551}
!352 = !{i64 2156820957}
!353 = !{i64 2156821363}
!354 = !{i64 2156821771}
!355 = !{i64 2156822207}
!356 = !{i64 2156822699}
!357 = !{i64 2156823161}
!358 = !{i64 2156823623}
!359 = !{i64 2156824068}
!360 = !{i64 2156824462}
!361 = !{i64 2156824856}
!362 = !{i64 2156825255}
!363 = !{i64 2156825669}
!364 = !{i64 2156826083}
!365 = !{i64 2156826492}
!366 = !{i64 2156826886}
!367 = !{i64 2156827280}
!368 = !{i64 2156827674}
!369 = !{i64 2156828068}
!370 = !{i64 2156828473}
!371 = !{i64 2156828867}
!372 = !{i64 2156829261}
!373 = !{i64 2156829655}
!374 = !{i64 2156830049}
!375 = !{i64 2156830443}
!376 = !{i64 2156830837}
!377 = !{i64 2156831231}
!378 = !{i64 2156831625}
!379 = !{i64 2156832019}
!380 = !{i64 2156832413}
!381 = !{i64 2156832807}
!382 = !{i64 2156833214}
!383 = !{i64 2156833647}
!384 = !{i64 2156834041}
!385 = !{i64 2156834455}
!386 = !{i64 2156834896}
!387 = !{i64 2156835326}
!388 = !{i64 2156835747}
!389 = !{i64 2156801352}
!390 = !{i64 2156813121}
!391 = !{i64 2156817134}
!392 = !{i64 2156769062}
!393 = !{i64 2156769309}
!394 = !{i64 2156769989}
!395 = !{i64 2156770258}
!396 = !{i64 2156770938}
!397 = !{i64 2156771196}
!398 = !{i64 2156771876}
!399 = !{i64 2156772112}
!400 = !{i64 2156772792}
!401 = !{i64 2156773039}
!402 = !{i64 2156761442}
!403 = !{i64 2156762859}
!404 = !{i64 2156763254}
!405 = !{i64 2156764049}
!406 = !{i64 2156766151}
!407 = !{i64 2156766383}
!408 = !{i64 2156869982}
!409 = !{i64 2156870246}
!410 = !{i64 2156870977}
!411 = !{i64 2156871779}
!412 = !{i64 2156867818}
!413 = !{i64 2156868280}
!414 = !{i64 2156868742}
!415 = !{i64 2156757141}
!416 = !{i64 2156757644}
!417 = !{i64 2156758147}
!418 = !{i64 2156758650}
!419 = !{i64 2156759153}
!420 = !{i64 2156759656}
!421 = !{i64 2156862575}
!422 = !{i64 2156862798}
!423 = !{i64 2156863472}
!424 = !{i64 2156863695}
!425 = !{i64 2156864369}
!426 = !{i64 2156864592}
!427 = !{i64 2156865266}
!428 = !{i64 2156865769}
!429 = !{i64 2156866272}
!430 = !{i64 2156866495}
!431 = !{i64 2156866889}
!432 = !{i64 2156806142}
!433 = !{i64 2156806381}
!434 = !{i64 2156806874}
!435 = !{i64 2156767084}
!436 = !{i64 2156767320}
!437 = !{i64 2156768000}
!438 = !{i64 2156754880}
!439 = !{i64 2156781136}
!440 = !{i64 2156781387}
!441 = !{i64 2156782112}
!442 = !{i64 2156782363}
!443 = !{i64 2156783088}
!444 = !{i64 2156783339}
!445 = !{i64 2156784064}
!446 = !{i64 2156784315}
!447 = !{i64 2156785040}
!448 = !{i64 2156850349}
!449 = !{i64 2156850588}
!450 = !{i64 2156851065}
!451 = !{i64 2156851581}
!452 = !{i64 2156852043}
!453 = !{i64 2156852505}
!454 = !{i64 2156852994}
!455 = !{i64 2156853745}
!456 = !{i64 2156853992}
!457 = !{i64 2156854392}
!458 = !{i64 2156855066}
!459 = !{i64 2156855289}
!460 = !{i64 2156855683}
!461 = !{i64 2156856077}
!462 = !{i64 2156856471}
!463 = !{i64 2156856885}
!464 = !{i64 2156857326}
!465 = !{i64 2156857906}
!466 = !{i64 2156858354}
!467 = !{i64 2156858748}
!468 = !{i64 2156859142}
!469 = !{i64 2156859580}
!470 = !{i64 2156860320}
!471 = !{i64 2156702063}
!472 = !{i64 2156704278}
!473 = !{i64 2156704792}
!474 = !{i64 2156705339}
!475 = !{i64 2156721848}
!476 = !{i64 2156724083}
!477 = !{i64 2156707380}
!478 = !{i64 2156708081}
!479 = !{i64 2156708896}
!480 = !{i64 2156709654}
!481 = !{i64 2156710430}
!482 = !{i64 2156711104}
!483 = !{i64 2156713205}
!484 = !{i64 2156713957}
!485 = !{i64 2156715250}
!486 = !{i64 2156715703}
!487 = !{i64 2156716167}
!488 = !{i64 2156716629}
!489 = !{i64 2156717309}
!490 = !{i64 2156718791}
!491 = !{i64 2156719471}
!492 = !{i64 2156719720}
!493 = !{i64 2156720179}
!494 = !{i64 2156720880}
!495 = !{i64 2156721129}
!496 = !{i64 2156724619}
!497 = !{i64 2156726845}
!498 = !{i64 2156727370}
