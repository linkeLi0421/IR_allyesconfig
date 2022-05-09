; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/alacritech/slicoss.c_pt.bc'
source_filename = "../drivers/net/ethernet/alacritech/slicoss.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.slic_upr = type { i32, i32, %struct.list_head }
%struct.slic_oasis_eeprom = type { i16, i16, i16, i16, i16, i16, i8, [3 x i8], i8, [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, [6 x i8], [6 x i8], i8, [6 x i8], [2 x i8], [14 x i8], [3 x i8], [28 x i8], [4 x i8] }
%struct.slic_mojave_eeprom = type { i16, i16, i16, i16, i16, i16, i8, [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [2 x i8], i8, i8, i16, [6 x i8], [6 x i8], [6 x i8], i16, i8, [3 x i8], i16, i16, i16, i8, [6 x i8], [2 x i8], [14 x i8], [3 x i8], [28 x i8], [4 x i8] }
%struct.slic_shmem_data = type { i32, i32 }
%struct.slic_rx_buffer = type { ptr, i32, i32, i32 }
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
%struct.slic_rx_desc = type { [16 x i8], i32, i32, i32 }
%struct.slic_stat_desc = type { i32, [8 x i8], i32, [16 x i8] }
%struct.slic_device = type { ptr, ptr, ptr, %struct.spinlock, %struct.slic_shmem, %struct.napi_struct, %struct.slic_rx_queue, %struct.slic_tx_queue, %struct.slic_stat_queue, %struct.slic_stats, %struct.slic_upr_list, %struct.spinlock, i8, i32, i32, i8, i8 }
%struct.slic_shmem = type { i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.slic_rx_queue = type { ptr, i32, i32, i32 }
%struct.slic_tx_queue = type { ptr, ptr, i32, i32, i32 }
%struct.slic_stat_queue = type { [4 x ptr], [4 x i32], [4 x i32], i32, i32, i32, i32 }
%struct.slic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.slic_upr_list = type { i8, %struct.list_head, %struct.spinlock }
%struct.slic_tx_buffer = type { ptr, i32, i32, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.slic_tx_desc = type { i32, i32, i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_firmware341 = internal constant [40 x i8] c"slicoss.firmware=slicoss/gbrcvucode.sys\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [43 x i8] c"slicoss.firmware=slicoss/oasisrcvucode.sys\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [40 x i8] c"slicoss.firmware=slicoss/gbdownload.sys\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [43 x i8] c"slicoss.firmware=slicoss/oasisdownload.sys\00", section ".modinfo", align 1
@__initcall__kmod_slicoss__345_1848_slic_driver_init6 = internal global ptr @slic_driver_init, section ".initcall6.init", align 4
@slic_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @slic_id_tbl, ptr @slic_probe, ptr @slic_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_slic_driver_exit = internal global ptr @slic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description346 = internal constant [59 x i8] c"slicoss.description=Alacritech non-accelerated SLIC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [55 x i8] c"slicoss.author=Lino Sanfilippo <LinoSanfilippo@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [53 x i8] c"slicoss.file=drivers/net/ethernet/alacritech/slicoss\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [20 x i8] c"slicoss.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slicoss\00", [24 x i8] zeroinitializer }, align 32
@slic_id_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5018, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5018, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@slic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slic_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/alacritech/slicoss.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr = internal global ptr @slic_probe._entry, section ".printk_index", align 4
@slic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1758, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to setup DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.8 = internal global ptr @slic_probe._entry.6, section ".printk_index", align 4
@slic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1766, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to obtain PCI regions\0A\00", [34 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.11 = internal global ptr @slic_probe._entry.9, section ".printk_index", align 4
@slic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1772, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc ethernet device\0A\00", [63 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.14 = internal global ptr @slic_probe._entry.12, section ".printk_index", align 4
@slic_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @slic_open, ptr @slic_close, ptr @slic_xmit, ptr null, ptr null, ptr null, ptr @slic_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slic_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@slic_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @slic_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slic_get_strings, ptr null, ptr @slic_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @slic_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@slic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map registers\0A\00", [39 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.17 = internal global ptr @slic_probe._entry.15, section ".printk_index", align 4
@slic_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize driver\0A\00", [35 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.20 = internal global ptr @slic_probe._entry.18, section ".printk_index", align 4
@slic_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register net device: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@slic_probe._entry_ptr.23 = internal global ptr @slic_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize interface: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init shared memory\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to load firmware for receive sequencer\0A\00", [49 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init rx queue: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init tx queue: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init status queue: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set initial link state: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@slic_init_shmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate shared memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slic_init_shmem\00", [16 x i8] zeroinitializer }, align 32
@slic_init_shmem._entry_ptr = internal global ptr @slic_init_shmem._entry, section ".printk_index", align 4
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"slicoss/oasisdownload.sys\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"slicoss/gbdownload.sys\00", [41 x i8] zeroinitializer }, align 32
@slic_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to load firmware %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slic_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@slic_load_firmware._entry_ptr = internal global ptr @slic_load_firmware._entry, section ".printk_index", align 4
@slic_load_firmware._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid firmware size %zu (min is %u)\0A\00", [57 x i8] zeroinitializer }, align 32
@slic_load_firmware._entry_ptr.41 = internal global ptr @slic_load_firmware._entry.39, section ".printk_index", align 4
@slic_load_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 1147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid number of sections in firmware: %u\00", [53 x i8] zeroinitializer }, align 32
@slic_load_firmware._entry_ptr.44 = internal global ptr @slic_load_firmware._entry.42, section ".printk_index", align 4
@slic_load_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 1162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid firmware size %zu (expected >= %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@slic_load_firmware._entry_ptr.47 = internal global ptr @slic_load_firmware._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"slicoss/oasisrcvucode.sys\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"slicoss/gbrcvucode.sys\00", [41 x i8] zeroinitializer }, align 32
@slic_load_rcvseq_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to load receive sequencer firmware %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"slic_load_rcvseq_firmware\00", [38 x i8] zeroinitializer }, align 32
@slic_load_rcvseq_firmware._entry_ptr = internal global ptr @slic_load_rcvseq_firmware._entry, section ".printk_index", align 4
@slic_load_rcvseq_firmware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"invalid firmware size %zu (min %u expected)\0A\00", [51 x i8] zeroinitializer }, align 32
@slic_load_rcvseq_firmware._entry_ptr.54 = internal global ptr @slic_load_rcvseq_firmware._entry.52, section ".printk_index", align 4
@slic_load_rcvseq_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 1075, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid rcv-sequencer firmware size %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@slic_load_rcvseq_firmware._entry_ptr.57 = internal global ptr @slic_load_rcvseq_firmware._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mapping rx packet failed\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slic_pool\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to create dma pool\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc pool chunk (%i)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate status descriptors\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BUG! not enough tx LEs left: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map tx buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@slic_stats_strings = internal constant { [23 x [32 x i8]], [160 x i8] } { [23 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_multicasts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_buff_miss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_tp_csum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_tp_oflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_tp_hlen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ip_csum\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ip_len\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ip_hdr_len\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_early\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_buff_oflow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_lcode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_drbl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_oflow_802\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_uflow_802\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_carrier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"irq_errs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [160 x i8] zeroinitializer }, align 32
@slic_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sdev->upper_lock\00", [46 x i8] zeroinitializer }, align 32
@slic_init.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdev->link_lock\00", [47 x i8] zeroinitializer }, align 32
@slic_init.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdev->upr_list.lock\00", [43 x i8] zeroinitializer }, align 32
@slic_init.__key.72 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&sdev->stats.syncp)->seq\00", [37 x i8] zeroinitializer }, align 32
@slic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.74, ptr @.str.3, i32 1684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slic_init\00", [22 x i8] zeroinitializer }, align 32
@slic_init._entry_ptr = internal global ptr @slic_init._entry, section ".printk_index", align 4
@slic_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.74, ptr @.str.3, i32 1691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@slic_init._entry_ptr.76 = internal global ptr @slic_init._entry.75, section ".printk_index", align 4
@slic_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.3, i32 1697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read eeprom\0A\00", [41 x i8] zeroinitializer }, align 32
@slic_init._entry_ptr.79 = internal global ptr @slic_init._entry.77, section ".printk_index", align 4
@slic_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"timed out while waiting for eeprom data\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slic_read_eeprom\00", [47 x i8] zeroinitializer }, align 32
@slic_read_eeprom._entry_ptr = internal global ptr @slic_read_eeprom._entry, section ".printk_index", align 4
@slic_read_eeprom._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid checksum in eeprom\0A\00", [36 x i8] zeroinitializer }, align 32
@slic_read_eeprom._entry_ptr.84 = internal global ptr @slic_read_eeprom._entry.82, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no upr found on list\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no skb found for desc idx %i\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 7, i64 12, i64 14, i64 15, i64 17, i64 8199]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 35]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 258, i64 259]
@__sancov_gen_cov_switch_values.90 = internal global [9 x i64] [i64 7, i64 8, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134]
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"slic_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1841, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1848, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"slic_id_tbl\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 30, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1747, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1758, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1766, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1772, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"slic_netdev_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1546, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"slic_ethtool_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1538, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1795, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1802, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1811, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1358, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1263, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1269, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1276, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1286, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1292, i32 28 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1298, i32 28 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1322, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1332, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1234, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1126, i32 46 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1127, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1130, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1137, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1146, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1160, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1051, i32 46 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1052, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1055, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1063, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1074, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 413, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 326, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 852, i32 34 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 857, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 867, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 790, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1418, i32 19 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1427, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant [19 x i8] c"slic_stats_strings\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 38, i32 19 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1674, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1675, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1677, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1678, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1684, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1691, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1697, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1626, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1658, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 271, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 659, i32 29 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [45 x i8] c"../drivers/net/ethernet/alacritech/slicoss.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 364, i32 9 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_license349, ptr @__exitcall_slic_driver_exit, ptr @__initcall__kmod_slicoss__345_1848_slic_driver_init6, ptr @slic_driver_exit, ptr @slic_init._entry, ptr @slic_init._entry.75, ptr @slic_init._entry.77, ptr @slic_init._entry_ptr, ptr @slic_init._entry_ptr.76, ptr @slic_init._entry_ptr.79, ptr @slic_init_shmem._entry, ptr @slic_init_shmem._entry_ptr, ptr @slic_load_firmware._entry, ptr @slic_load_firmware._entry.39, ptr @slic_load_firmware._entry.42, ptr @slic_load_firmware._entry.45, ptr @slic_load_firmware._entry_ptr, ptr @slic_load_firmware._entry_ptr.41, ptr @slic_load_firmware._entry_ptr.44, ptr @slic_load_firmware._entry_ptr.47, ptr @slic_load_rcvseq_firmware._entry, ptr @slic_load_rcvseq_firmware._entry.52, ptr @slic_load_rcvseq_firmware._entry.55, ptr @slic_load_rcvseq_firmware._entry_ptr, ptr @slic_load_rcvseq_firmware._entry_ptr.54, ptr @slic_load_rcvseq_firmware._entry_ptr.57, ptr @slic_probe._entry, ptr @slic_probe._entry.12, ptr @slic_probe._entry.15, ptr @slic_probe._entry.18, ptr @slic_probe._entry.21, ptr @slic_probe._entry.6, ptr @slic_probe._entry.9, ptr @slic_probe._entry_ptr, ptr @slic_probe._entry_ptr.11, ptr @slic_probe._entry_ptr.14, ptr @slic_probe._entry_ptr.17, ptr @slic_probe._entry_ptr.20, ptr @slic_probe._entry_ptr.23, ptr @slic_probe._entry_ptr.8, ptr @slic_read_eeprom._entry, ptr @slic_read_eeprom._entry.82, ptr @slic_read_eeprom._entry_ptr, ptr @slic_read_eeprom._entry_ptr.84, ptr @slic_driver, ptr @.str, ptr @slic_id_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @slic_netdev_ops, ptr @slic_ethtool_ops, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @slic_stats_strings, ptr @slic_init.__key, ptr @.str.67, ptr @slic_init.__key.68, ptr @.str.69, ptr @slic_init.__key.70, ptr @.str.71, ptr @slic_init.__key.72, ptr @.str.73, ptr @.str.74, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_id_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init_shmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_firmware._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_rcvseq_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_rcvseq_firmware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_load_rcvseq_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_stats_strings to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init.__key.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slic_read_eeprom._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @slic_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @slic_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %cmd.i67.i = alloca i16, align 2
  %paddr.i54.i = alloca i32, align 4
  %mac.i.i = alloca [2 x ptr], align 4
  %paddr.i.i = alloca i32, align 4
  %cmd.i.i = alloca i16, align 2
  %old.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %call2 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %old.i) #15
  %0 = ptrtoint ptr %old.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %old.i, align 2, !annotation !189
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %old.i) #15
  %1 = ptrtoint ptr %old.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %old.i, align 2
  %or1.i = or i16 %2, 320
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %or1.i)
  %cmp.not.i = icmp eq i16 %2, %or1.i
  br i1 %cmp.not.i, label %if.end.slic_configure_pci.exit_crit_edge, label %if.then.i

if.end.slic_configure_pci.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_configure_pci.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 4, i16 noundef zeroext %or1.i) #15
  br label %slic_configure_pci.exit

slic_configure_pci.exit:                          ; preds = %if.then.i, %if.end.slic_configure_pci.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %old.i) #15
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call4 = call i32 @dma_set_mask(ptr noundef %dev3, i64 noundef 4294967295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %slic_configure_pci.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.7) #18
  br label %disable

if.end11:                                         ; preds = %slic_configure_pci.exit
  %call13 = call i32 @dma_set_coherent_mask(ptr noundef %dev3, i64 noundef 4294967295) #15
  %call14 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.10) #18
  br label %disable

if.end21:                                         ; preds = %if.end11
  %call22 = call ptr @alloc_etherdev_mqs(i32 noundef 736, i32 noundef 1, i32 noundef 1) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13) #18
  br label %free_regions

if.end29:                                         ; preds = %if.end21
  %parent = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev3, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq32 = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 64
  %7 = ptrtoint ptr %irq32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq32, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @slic_netdev_ops, ptr %netdev_ops, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1099511627776, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %or = or i64 %11, 1099511627776
  store i64 %or, ptr %features, align 16
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 44
  %12 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @slic_ethtool_ops, ptr %ethtool_ops, align 16
  %add.ptr.i = getelementptr i8, ptr %call22, i32 2304
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %14)
  %cmp = icmp eq i16 %14, 7
  %conv36 = zext i1 %cmp to i8
  %model = getelementptr i8, ptr %call22, i32 3033
  %15 = ptrtoint ptr %model to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv36, ptr %model, align 1
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %16 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %sw.epilog.i [
    i16 7, label %if.end29.slic_is_fiber.exit_crit_edge
    i16 8199, label %if.end29.slic_is_fiber.exit_crit_edge136
    i16 12, label %if.end29.slic_is_fiber.exit_crit_edge137
    i16 14, label %if.end29.slic_is_fiber.exit_crit_edge138
    i16 15, label %if.end29.slic_is_fiber.exit_crit_edge139
    i16 17, label %if.end29.slic_is_fiber.exit_crit_edge140
  ]

if.end29.slic_is_fiber.exit_crit_edge140:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

if.end29.slic_is_fiber.exit_crit_edge139:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

if.end29.slic_is_fiber.exit_crit_edge138:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

if.end29.slic_is_fiber.exit_crit_edge137:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

if.end29.slic_is_fiber.exit_crit_edge136:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

if.end29.slic_is_fiber.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

sw.epilog.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_is_fiber.exit

slic_is_fiber.exit:                               ; preds = %sw.epilog.i, %if.end29.slic_is_fiber.exit_crit_edge, %if.end29.slic_is_fiber.exit_crit_edge136, %if.end29.slic_is_fiber.exit_crit_edge137, %if.end29.slic_is_fiber.exit_crit_edge138, %if.end29.slic_is_fiber.exit_crit_edge139, %if.end29.slic_is_fiber.exit_crit_edge140
  %retval.0.i = phi i1 [ false, %sw.epilog.i ], [ true, %if.end29.slic_is_fiber.exit_crit_edge ], [ true, %if.end29.slic_is_fiber.exit_crit_edge136 ], [ true, %if.end29.slic_is_fiber.exit_crit_edge137 ], [ true, %if.end29.slic_is_fiber.exit_crit_edge138 ], [ true, %if.end29.slic_is_fiber.exit_crit_edge139 ], [ true, %if.end29.slic_is_fiber.exit_crit_edge140 ]
  %is_fiber = getelementptr i8, ptr %call22, i32 3032
  %frombool = zext i1 %retval.0.i to i8
  %19 = ptrtoint ptr %is_fiber to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %is_fiber, align 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdev, ptr %add.ptr.i, align 8
  %netdev = getelementptr i8, ptr %call22, i32 2308
  %21 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %netdev, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp41 = icmp eq i32 %25, 0
  %sub = sub i32 1, %23
  %add = add i32 %sub, %25
  %cond49 = select i1 %cmp41, i32 0, i32 %add
  %call50 = call ptr @ioremap(i32 noundef %23, i32 noundef %cond49) #15
  %regs = getelementptr i8, ptr %call22, i32 2312
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call50, ptr %regs, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %slic_is_fiber.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16) #18
  br label %free_netdev

if.end58:                                         ; preds = %slic_is_fiber.exit
  %upper_lock.i = getelementptr i8, ptr %call22, i32 2316
  call void @__raw_spin_lock_init(ptr noundef %upper_lock.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @slic_init.__key, i16 noundef signext 3) #15
  %link_lock.i = getelementptr i8, ptr %call22, i32 2976
  call void @__raw_spin_lock_init(ptr noundef %link_lock.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @slic_init.__key.68, i16 noundef signext 3) #15
  %list.i = getelementptr i8, ptr %call22, i32 2924
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call22, i32 2928
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr i8, ptr %call22, i32 2932
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @slic_init.__key.70, i16 noundef signext 3) #15
  %syncp.i = getelementptr i8, ptr %call22, i32 2888
  %dep_map.i.i = getelementptr i8, ptr %call22, i32 2892
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @slic_init.__key.72, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %29 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %syncp.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i.i) #15
  %30 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %cmd.i.i, align 2, !annotation !189
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1377959936) #15, !srcloc !191
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %34, i32 noundef 4, ptr noundef nonnull %cmd.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i.i) #15
  %call13.i = call fastcc i32 @slic_load_firmware(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #18
  br label %do.end64

if.end.i:                                         ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %38 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %paddr.i.i, align 4, !annotation !189
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 8, ptr noundef nonnull %paddr.i.i, i32 noundef 3264, i32 noundef 0) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.33) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.25) #18
  br label %do.end64

if.end25.i:                                       ; preds = %if.end.i
  %shmem.i.i = getelementptr i8, ptr %call22, i32 2360
  %shmem_data.i.i = getelementptr i8, ptr %call22, i32 2368
  %45 = ptrtoint ptr %shmem_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i.i, ptr %shmem_data.i.i, align 4
  %46 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %paddr.i.i, align 4
  %48 = ptrtoint ptr %shmem.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %shmem.i.i, align 4
  %add.i.i = add i32 %47, 4
  %link_paddr.i.i = getelementptr i8, ptr %call22, i32 2364
  %49 = ptrtoint ptr %link_paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %link_paddr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  %devfn1.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %devfn1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devfn1.i.i, align 4
  %and.i.i = and i32 %53, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i54.i) #15
  %54 = ptrtoint ptr %paddr.i54.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %paddr.i54.i, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac.i.i) #15
  %55 = getelementptr inbounds [2 x ptr], ptr %mac.i.i, i32 0, i32 1
  %dev.i56.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %call.i.i57.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i56.i, i32 noundef 128, ptr noundef nonnull %paddr.i54.i, i32 noundef 3264, i32 noundef 0) #15
  %tobool.not.i58.i = icmp eq ptr %call.i.i57.i, null
  br i1 %tobool.not.i58.i, label %slic_read_eeprom.exit.thread.i, label %if.end.i61.i

slic_read_eeprom.exit.thread.i:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i54.i) #15
  br label %do.end31.i

if.end.i61.i:                                     ; preds = %if.end25.i
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !191
  %58 = ptrtoint ptr %shmem.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shmem.i.i, align 4
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr.i86.i.i = getelementptr i8, ptr %61, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %62 = call i32 @llvm.bswap.i32(i32 %59) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i.i, i32 %62) #15, !srcloc !191
  %63 = ptrtoint ptr %paddr.i54.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %paddr.i54.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 2592, i32 noundef 16) #19
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i61.i.if.end17.i.i_crit_edge, label %slic_new_upr.exit.i.i

if.end.i61.i.if.end17.i.i_crit_edge:              ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

slic_new_upr.exit.i.i:                            ; preds = %if.end.i61.i
  %type1.i.i.i = getelementptr inbounds %struct.slic_upr, ptr %call7.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %type1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type1.i.i.i, align 4
  %67 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %call7.i.i.i.i, align 8
  call fastcc void @slic_queue_upr(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i.i) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end10.i.i.for.body.i.i_crit_edge, %slic_new_upr.exit.i.i
  %i.0101.i.i = phi i32 [ 0, %slic_new_upr.exit.i.i ], [ %inc.i.i, %if.end10.i.i.for.body.i.i_crit_edge ]
  %68 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i.i.i, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool8.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %for.body.i.i.if.end15.i.i_crit_edge

for.body.i.i.if.end15.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

if.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %71(i32 noundef 214748000) #15
  %inc.i.i = add nuw nsw i32 %i.0101.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5000
  br i1 %exitcond.not.i.i, label %do.end.i62.i, label %if.end10.i.i.for.body.i.i_crit_edge

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

do.end.i62.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 8
  %dev14.i.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.80) #18
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.end.i62.i, %for.body.i.i.if.end15.i.i_crit_edge
  %err.0.i.i = phi i32 [ -110, %do.end.i62.i ], [ 0, %for.body.i.i.if.end15.i.i_crit_edge ]
  %call16.i.i = call fastcc ptr @slic_dequeue_upr(ptr noundef %add.ptr.i) #15
  call void @kfree(ptr noundef %call16.i.i) #15
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end15.i.i, %if.end.i61.i.if.end17.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %if.end15.i.i ], [ -12, %if.end.i61.i.if.end17.i.i_crit_edge ]
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 8
  %add.ptr.i88.i.i = getelementptr i8, ptr %75, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i.i, i32 0) #15, !srcloc !191
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 8
  %add.ptr.i90.i.i = getelementptr i8, ptr %77, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i.i, i32 0) #15, !srcloc !191
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 8
  %add.ptr.i92.i.i = getelementptr i8, ptr %79, i32 5460
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i)
  %tobool18.not.i.i = icmp eq i32 %err.1.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end17.i.i.slic_read_eeprom.exit.i_crit_edge

if.end17.i.i.slic_read_eeprom.exit.i_crit_edge:   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_read_eeprom.exit.i

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %81 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %model, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp21.i.i = icmp eq i8 %82, 1
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.else.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %mac24.i.i = getelementptr inbounds %struct.slic_oasis_eeprom, ptr %call.i.i57.i, i32 0, i32 32
  %83 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %mac24.i.i, ptr %mac.i.i, align 4
  %mac2.i.i = getelementptr inbounds %struct.slic_oasis_eeprom, ptr %call.i.i57.i, i32 0, i32 33
  %84 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %mac2.i.i, ptr %55, align 4
  %eeprom_code_size.i.i = getelementptr inbounds %struct.slic_oasis_eeprom, ptr %call.i.i57.i, i32 0, i32 1
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %mac28.i.i = getelementptr inbounds %struct.slic_mojave_eeprom, ptr %call.i.i57.i, i32 0, i32 23
  %85 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %mac28.i.i, ptr %mac.i.i, align 4
  %mac231.i.i = getelementptr inbounds %struct.slic_mojave_eeprom, ptr %call.i.i57.i, i32 0, i32 24
  %86 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %mac231.i.i, ptr %55, align 4
  %eeprom_code_size34.i.i = getelementptr inbounds %struct.slic_mojave_eeprom, ptr %call.i.i57.i, i32 0, i32 1
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else.i.i, %if.then23.i.i
  %eeprom_code_size34.sink.i.i = phi ptr [ %eeprom_code_size34.i.i, %if.else.i.i ], [ %eeprom_code_size.i.i, %if.then23.i.i ]
  %87 = ptrtoint ptr %eeprom_code_size34.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %eeprom_code_size34.sink.i.i, align 2
  %89 = call i16 @llvm.bswap.i16(i16 %88) #15
  %codesize.0.i.i = zext i16 %89 to i32
  %90 = add nsw i32 %codesize.0.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %90)
  %91 = icmp ult i32 %90, -31
  br i1 %91, label %if.end36.i.i.do.end41.i.i_crit_edge, label %if.end.i93.i.i

if.end36.i.i.do.end41.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end41.i.i

if.end.i93.i.i:                                   ; preds = %if.end36.i.i
  %92 = ptrtoint ptr %call.i.i57.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %magic.0.copyload.i.i.i = load i16, ptr %call.i.i57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23131, i16 %magic.0.copyload.i.i.i)
  %cmp2.not.i.i.i = icmp eq i16 %magic.0.copyload.i.i.i, -23131
  br i1 %cmp2.not.i.i.i, label %if.end5.i.i.i, label %if.end.i93.i.i.do.end41.i.i_crit_edge

if.end.i93.i.i.do.end41.i.i_crit_edge:            ; preds = %if.end.i93.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end41.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i93.i.i
  %sub.i.i.i = add nsw i32 %codesize.0.i.i, -2
  %add.ptr.i94.i.i = getelementptr i8, ptr %call.i.i57.i, i32 %sub.i.i.i
  %93 = ptrtoint ptr %add.ptr.i94.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %csum.0.copyload.i.i.i = load i16, ptr %add.ptr.i94.i.i, align 1
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end5.i.i.i
  %csum.024.i.i.i.i = phi i32 [ %add.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end5.i.i.i ]
  %ptr.023.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %call.i.i57.i, %if.end5.i.i.i ]
  %len.addr.022.i.i.i.i = phi i32 [ %sub.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %sub.i.i.i, %if.end5.i.i.i ]
  %94 = ptrtoint ptr %ptr.023.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %data.0.copyload.i.i.i.i = load i16, ptr %ptr.023.i.i.i.i, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %data.0.copyload.i.i.i.i) #15
  %conv.i.i.i.i = zext i16 %95 to i32
  %add.i.i.i.i = add i32 %csum.024.i.i.i.i, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ptr.023.i.i.i.i, i32 2
  %sub.i.i.i.i = add i32 %len.addr.022.i.i.i.i, -2
  %cmp.i.i.i.i = icmp ugt i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.end.i.i.i.i

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i
  %96 = call i16 @llvm.bswap.i16(i16 %csum.0.copyload.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp1.i.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp1.i.i.i.i, label %if.then.i.i.i.i, label %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge

while.end.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %97 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %98 to i32
  %add4.i.i.i.i = add i32 %add.i.i.i.i, %conv3.i.i.i.i
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge
  %csum.1.i.i.i.i = phi i32 [ %add4.i.i.i.i, %if.then.i.i.i.i ], [ %add.i.i.i.i, %while.end.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %csum.1.i.i.i.i)
  %tobool.not27.i.i.i.i = icmp ult i32 %csum.1.i.i.i.i, 65536
  br i1 %tobool.not27.i.i.i.i, label %if.end.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge, label %if.end.i.i.i.i.while.body6.i.i.i.i_crit_edge

if.end.i.i.i.i.while.body6.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i
  br label %while.body6.i.i.i.i

if.end.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_eeprom_valid.exit.i.i

while.body6.i.i.i.i:                              ; preds = %while.body6.i.i.i.i.while.body6.i.i.i.i_crit_edge, %if.end.i.i.i.i.while.body6.i.i.i.i_crit_edge
  %csum.228.i.i.i.i = phi i32 [ %add9.i.i.i.i, %while.body6.i.i.i.i.while.body6.i.i.i.i_crit_edge ], [ %csum.1.i.i.i.i, %if.end.i.i.i.i.while.body6.i.i.i.i_crit_edge ]
  %shr.i.i.i.i = lshr i32 %csum.228.i.i.i.i, 16
  %and.i.i.i.i = and i32 %csum.228.i.i.i.i, 65535
  %add9.i.i.i.i = add nuw nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  %tobool.not.i.i.i.i = icmp ult i32 %add9.i.i.i.i, 65536
  br i1 %tobool.not.i.i.i.i, label %while.body6.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge, label %while.body6.i.i.i.i.while.body6.i.i.i.i_crit_edge

while.body6.i.i.i.i.while.body6.i.i.i.i_crit_edge: ; preds = %while.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body6.i.i.i.i

while.body6.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge: ; preds = %while.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_eeprom_valid.exit.i.i

slic_eeprom_valid.exit.i.i:                       ; preds = %while.body6.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge, %if.end.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge
  %csum.2.lcssa.i.i.i.i = phi i32 [ %csum.1.i.i.i.i, %if.end.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge ], [ %add9.i.i.i.i, %while.body6.i.i.i.i.slic_eeprom_valid.exit.i.i_crit_edge ]
  %99 = trunc i32 %csum.2.lcssa.i.i.i.i to i16
  %conv11.i.i.i.i = xor i16 %99, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %conv11.i.i.i.i)
  %cmp8.i.i.i = icmp eq i16 %96, %conv11.i.i.i.i
  br i1 %cmp8.i.i.i, label %if.end44.i.i, label %slic_eeprom_valid.exit.i.i.do.end41.i.i_crit_edge

slic_eeprom_valid.exit.i.i.do.end41.i.i_crit_edge: ; preds = %slic_eeprom_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %slic_eeprom_valid.exit.i.i.do.end41.i.i_crit_edge, %if.end.i93.i.i.do.end41.i.i_crit_edge, %if.end36.i.i.do.end41.i.i_crit_edge
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 8
  %dev43.i.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i.i, ptr noundef nonnull @.str.83) #18
  br label %slic_read_eeprom.exit.i

if.end44.i.i:                                     ; preds = %slic_eeprom_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %netdev, align 4
  %arrayidx45.i.i = getelementptr [2 x ptr], ptr %mac.i.i, i32 0, i32 %and.i.i
  %104 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx45.i.i, align 4
  call void @dev_addr_mod(ptr noundef %103, i32 noundef 0, ptr noundef %105, i32 noundef 6) #15
  br label %slic_read_eeprom.exit.i

slic_read_eeprom.exit.i:                          ; preds = %if.end44.i.i, %do.end41.i.i, %if.end17.i.i.slic_read_eeprom.exit.i_crit_edge
  %err.2.i.i = phi i32 [ %err.1.i.i, %if.end17.i.i.slic_read_eeprom.exit.i_crit_edge ], [ 0, %if.end44.i.i ], [ -22, %do.end41.i.i ]
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 8
  %dev47.i.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %108 = ptrtoint ptr %paddr.i54.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %paddr.i54.i, align 4
  call void @dma_free_attrs(ptr noundef %dev47.i.i, i32 noundef 128, ptr noundef nonnull %call.i.i57.i, i32 noundef %109, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i54.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i.i)
  %tobool27.not.i = icmp eq i32 %err.2.i.i, 0
  br i1 %tobool27.not.i, label %if.end66, label %slic_read_eeprom.exit.i.do.end31.i_crit_edge

slic_read_eeprom.exit.i.do.end31.i_crit_edge:     ; preds = %slic_read_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i

do.end31.i:                                       ; preds = %slic_read_eeprom.exit.i.do.end31.i_crit_edge, %slic_read_eeprom.exit.thread.i
  %retval.0.i6377.i = phi i32 [ -12, %slic_read_eeprom.exit.thread.i ], [ %err.2.i.i, %slic_read_eeprom.exit.i.do.end31.i_crit_edge ]
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.78) #18
  %112 = ptrtoint ptr %shmem_data.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %shmem_data.i.i, align 4
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i, align 8
  %dev.i66.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %116 = ptrtoint ptr %shmem.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %shmem.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i66.i, i32 noundef 8, ptr noundef %113, i32 noundef %117, i32 noundef 0) #15
  br label %do.end64

do.end64:                                         ; preds = %do.end31.i, %do.end22.i, %do.end16.i
  %retval.0.i132.ph = phi i32 [ %retval.0.i6377.i, %do.end31.i ], [ -12, %do.end22.i ], [ %call13.i, %do.end16.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19) #18
  br label %unmap

if.end66:                                         ; preds = %slic_read_eeprom.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i67.i) #15
  %118 = ptrtoint ptr %cmd.i67.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %cmd.i67.i, align 2, !annotation !189
  %119 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 -1377959936) #15, !srcloc !191
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 8
  %call.i69.i = call i32 @pci_read_config_word(ptr noundef %122, i32 noundef 4, ptr noundef nonnull %cmd.i67.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i67.i) #15
  %124 = ptrtoint ptr %shmem_data.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %shmem_data.i.i, align 4
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 8
  %dev.i72.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %128 = ptrtoint ptr %shmem.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %shmem.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i72.i, i32 noundef 8, ptr noundef %125, i32 noundef %129, i32 noundef 0) #15
  %napi = getelementptr i8, ptr %call22, i32 2376
  call void @netif_napi_add(ptr noundef nonnull %call22, ptr noundef %napi, ptr noundef nonnull @slic_poll, i32 noundef 64) #15
  call void @netif_carrier_off(ptr noundef nonnull %call22) #15
  %call67 = call i32 @register_netdev(ptr noundef nonnull %call22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %do.end72

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.22, i32 noundef %call67) #18
  br label %unmap

unmap:                                            ; preds = %do.end72, %do.end64
  %err.0 = phi i32 [ %retval.0.i132.ph, %do.end64 ], [ %call67, %do.end72 ]
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 8
  call void @iounmap(ptr noundef %131) #15
  br label %free_netdev

free_netdev:                                      ; preds = %unmap, %do.end56
  %err.1 = phi i32 [ %err.0, %unmap ], [ -12, %do.end56 ]
  call void @free_netdev(ptr noundef nonnull %call22) #15
  br label %free_regions

free_regions:                                     ; preds = %free_netdev, %do.end27
  %err.2 = phi i32 [ %err.1, %free_netdev ], [ -12, %do.end27 ]
  call void @pci_release_regions(ptr noundef %pdev) #15
  br label %disable

disable:                                          ; preds = %free_regions, %do.end19, %do.end9
  %err.3 = phi i32 [ %call4, %do.end9 ], [ %call14, %do.end19 ], [ %err.2, %free_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %disable, %if.end66.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.3, %disable ], [ 0, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slic_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #15
  %regs = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %3) #15
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
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_poll(ptr noundef %napi, i32 noundef %todo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -72
  %shmem_data = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %shmem_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shmem_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.body.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %syncp.i.i = getelementptr i8, ptr %napi, i32 512
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #15
  %rx_buff_miss.i.i = getelementptr i8, ptr %napi, i32 376
  %5 = ptrtoint ptr %rx_buff_miss.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_buff_miss.i.i, align 8
  %inc.i.i = add i64 %6, 1
  store i64 %inc.i.i, ptr %rx_buff_miss.i.i, align 8
  %dep_map.i.i.i.i = getelementptr i8, ptr %napi, i32 516
  %7 = tail call ptr @llvm.returnaddress(i32 0) #15
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %8) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %9 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i, %if.then.i.if.end.i.i_crit_edge
  %and3.i.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %do.body6.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

do.body6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %syncp7.i.i = getelementptr i8, ptr %napi, i32 512
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp7.i.i) #15
  %tx_dropped.i.i = getelementptr i8, ptr %napi, i32 384
  %11 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_dropped.i.i, align 8
  %inc8.i.i = add i64 %12, 1
  store i64 %inc8.i.i, ptr %tx_dropped.i.i, align 8
  %dep_map.i.i33.i.i = getelementptr i8, ptr %napi, i32 516
  %13 = tail call ptr @llvm.returnaddress(i32 0) #15
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i33.i.i, i32 noundef %14) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %15 = ptrtoint ptr %syncp7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %syncp7.i.i, align 4
  %inc.i.i.i34.i.i = add i32 %16, 1
  store i32 %inc.i.i.i34.i.i, ptr %syncp7.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %do.body6.i.i, %if.end.i.i.if.end12.i.i_crit_edge
  %and13.i.i = and i32 %4, 41943040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %do.body16.i.i, label %if.end12.i.i.if.end.i_crit_edge

if.end12.i.i.if.end.i_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.body16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %syncp17.i.i = getelementptr i8, ptr %napi, i32 512
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp17.i.i) #15
  %irq_errs.i.i = getelementptr i8, ptr %napi, i32 392
  %17 = ptrtoint ptr %irq_errs.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %irq_errs.i.i, align 8
  %inc18.i.i = add i64 %18, 1
  store i64 %inc18.i.i, ptr %irq_errs.i.i, align 8
  %dep_map.i.i35.i.i = getelementptr i8, ptr %napi, i32 516
  %19 = tail call ptr @llvm.returnaddress(i32 0) #15
  %20 = ptrtoint ptr %19 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i35.i.i, i32 noundef %20) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %21 = ptrtoint ptr %syncp17.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syncp17.i.i, align 4
  %inc.i.i.i36.i.i = add i32 %22, 1
  store i32 %inc.i.i.i36.i.i, ptr %syncp17.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body16.i.i, %if.end12.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %and1.i = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  %link_paddr.i.i = getelementptr i8, ptr %napi, i32 -12
  %23 = ptrtoint ptr %link_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_paddr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2592, i32 noundef 16) #19
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.end.i.i.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %type1.i.i.i = getelementptr inbounds %struct.slic_upr, ptr %call7.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %type1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %type1.i.i.i, align 4
  %27 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %call7.i.i.i.i, align 8
  tail call fastcc void @slic_queue_upr(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i.i.i) #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.i.i, %if.then3.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %and5.i = and i32 %4, 285343744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  %call.i.i = tail call fastcc ptr @slic_dequeue_upr(ptr noundef %add.ptr) #15
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %if.then.i.i, label %if.end.i2.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev.i.i = getelementptr i8, ptr %napi, i32 -68
  %28 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %29, ptr noundef nonnull @.str.86) #18
  br label %if.end8.i

if.end.i2.i:                                      ; preds = %if.then7.i
  %type.i.i = getelementptr inbounds %struct.slic_upr, ptr %call.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i2.i.if.end7.i.i_crit_edge

if.end.i2.i.if.end7.i.i_crit_edge:                ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i

if.then1.i.i:                                     ; preds = %if.end.i2.i
  %and.i3.i = and i32 %4, 16908288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool2.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool2.not.i.i, label %if.end6.i.i, label %if.then5.i.i, !prof !195

if.then5.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @slic_queue_upr(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i) #15
  br label %if.end8.i

if.end6.i.i:                                      ; preds = %if.then1.i.i
  %32 = ptrtoint ptr %shmem_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shmem_data, align 4
  %link1.i.i.i = getelementptr inbounds %struct.slic_shmem_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %link1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link1.i.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #15
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i4.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i4.i, label %if.end6.i.i.if.end13.i.i.i_crit_edge, label %if.then.i.i.i

if.end6.i.i.if.end13.i.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i.i.i

if.then.i.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and2.i.i.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i.i = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  %..i.i.i = select i1 %tobool6.not.i.i.i, i32 10, i32 100
  %speed.0.i.i.i = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 1000
  %and10.i.i.i = lshr i32 %36, 1
  %and10.lobit.i.i.i = and i32 %and10.i.i.i, 1
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then.i.i.i, %if.end6.i.i.if.end13.i.i.i_crit_edge
  %duplex.0.i.i.i = phi i32 [ %and10.lobit.i.i.i, %if.then.i.i.i ], [ 255, %if.end6.i.i.if.end13.i.i.i_crit_edge ]
  %speed.1.i.i.i = phi i32 [ %speed.0.i.i.i, %if.then.i.i.i ], [ -1, %if.end6.i.i.if.end13.i.i.i_crit_edge ]
  %link_lock.i.i.i.i = getelementptr i8, ptr %napi, i32 600
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock.i.i.i.i) #15
  %netdev.i.i.i.i.i = getelementptr i8, ptr %napi, i32 -68
  %37 = ptrtoint ptr %netdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev.i.i.i.i.i, align 4
  %speed1.i.i.i.i.i = getelementptr i8, ptr %napi, i32 648
  %39 = ptrtoint ptr %speed1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed1.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %speed.1.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %40, %speed.1.i.i.i
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end13.i.i.i.if.end.i.i.i.i.i_crit_edge

if.end13.i.i.i.if.end.i.i.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end13.i.i.i
  %duplex2.i.i.i.i.i = getelementptr i8, ptr %napi, i32 652
  %41 = ptrtoint ptr %duplex2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %duplex2.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %duplex.0.i.i.i)
  %cmp3.i.i.i.i.i = icmp eq i32 %42, %duplex.0.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i.i

land.lhs.true.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_link_irq.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, %if.end13.i.i.i.if.end.i.i.i.i.i_crit_edge
  %43 = ptrtoint ptr %speed1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %speed.1.i.i.i, ptr %speed1.i.i.i.i.i, align 8
  %duplex5.i.i.i.i.i = getelementptr i8, ptr %napi, i32 652
  %44 = ptrtoint ptr %duplex5.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %duplex.0.i.i.i, ptr %duplex5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %speed.1.i.i.i)
  %cmp7.i.i.i.i.i = icmp eq i32 %speed.1.i.i.i, -1
  br i1 %cmp7.i.i.i.i.i, label %if.then8.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %45 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i.i.i.i.i.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then9.i.i.i.i.i, label %if.then8.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge

if.then8.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge: ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_link_irq.exit.i.i

if.then9.i.i.i.i.i:                               ; preds = %if.then8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_off(ptr noundef %38) #15
  br label %slic_handle_link_irq.exit.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed.1.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %speed.1.i.i.i, 1000
  %..i.i.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i32 538449472, i32 1840704
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex.0.i.i.i)
  %cmp1.i.i.i.i.i.i = icmp eq i32 %duplex.0.i.i.i, 1
  %or.i.i.i.i.i.i = or i32 %..i.i.i.i.i.i, 268435456
  %val.1.i.i.i.i.i.i = select i1 %cmp1.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %..i.i.i.i.i.i
  %regs.i.i.i.i.i.i.i = getelementptr i8, ptr %napi, i32 -64
  %48 = ptrtoint ptr %regs.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %49, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %50 = tail call i32 @llvm.bswap.i32(i32 %val.1.i.i.i.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i.i, i32 %50) #15, !srcloc !191
  %51 = ptrtoint ptr %duplex5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %duplex5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i30.i.i.i.i.i = icmp eq i32 %52, 1
  %spec.select.i.i.i.i.i.i = select i1 %cmp.i30.i.i.i.i.i, i32 224, i32 192
  %53 = ptrtoint ptr %regs.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i32.i.i.i.i.i = getelementptr i8, ptr %54, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i.i.i.i.i, i32 %spec.select.i.i.i.i.i.i) #15, !srcloc !191
  %55 = ptrtoint ptr %duplex5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %duplex5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i34.i.i.i.i.i = icmp eq i32 %56, 1
  %spec.select.i35.i.i.i.i.i = select i1 %cmp.i34.i.i.i.i.i, i32 -635699200, i32 -769916928
  %promisc.i.i.i.i.i.i = getelementptr i8, ptr %napi, i32 644
  %57 = ptrtoint ptr %promisc.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %promisc.i.i.i.i.i.i, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i36.i.i.i.i.i = icmp eq i8 %58, 0
  %or2.i.i.i.i.i.i = or i32 %spec.select.i35.i.i.i.i.i, 536870912
  %val.1.i37.i.i.i.i.i = select i1 %tobool.not.i36.i.i.i.i.i, i32 %spec.select.i35.i.i.i.i.i, i32 %or2.i.i.i.i.i.i
  %59 = ptrtoint ptr %regs.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i39.i.i.i.i.i = getelementptr i8, ptr %60, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %61 = tail call i32 @llvm.bswap.i32(i32 %val.1.i37.i.i.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i.i.i.i.i, i32 %61) #15, !srcloc !191
  %62 = ptrtoint ptr %regs.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %63, i32 5460
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %state.i40.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %65 = ptrtoint ptr %state.i40.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i40.i.i.i.i.i, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i41.i.i.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i41.i.i.i.i.i, label %if.else.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge, label %if.then12.i.i.i.i.i

if.else.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_link_irq.exit.i.i

if.then12.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_on(ptr noundef %38) #15
  br label %slic_handle_link_irq.exit.i.i

slic_handle_link_irq.exit.i.i:                    ; preds = %if.then12.i.i.i.i.i, %if.else.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge, %if.then9.i.i.i.i.i, %if.then8.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.slic_handle_link_irq.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock.i.i.i.i) #15
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %slic_handle_link_irq.exit.i.i, %if.end.i2.i.if.end7.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i) #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i.i, %if.then5.i.i, %if.then.i.i, %if.end4.i.if.end8.i_crit_edge
  %and9.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  %rxq1.i.i = getelementptr i8, ptr %napi, i32 224
  %netdev.i5.i = getelementptr i8, ptr %napi, i32 -68
  %68 = ptrtoint ptr %netdev.i5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %netdev.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todo)
  %tobool.not7.i.i = icmp eq i32 %todo, 0
  br i1 %tobool.not7.i.i, label %if.then11.i.slic_handle_receive.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

if.then11.i.slic_handle_receive.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_receive.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %if.then11.i
  %done_idx.i.i = getelementptr i8, ptr %napi, i32 232
  %put_idx.i.i = getelementptr i8, ptr %napi, i32 236
  %syncp.i6.i = getelementptr i8, ptr %napi, i32 512
  %rx_mcasts.i.i = getelementptr i8, ptr %napi, i32 344
  %dep_map.i.i.i7.i = getelementptr i8, ptr %napi, i32 516
  %len38.i.i = getelementptr i8, ptr %napi, i32 228
  %model.i.i = getelementptr i8, ptr %napi, i32 657
  %rx_tphlen169.i.i = getelementptr i8, ptr %napi, i32 416
  %rx_tpoflow158.i.i = getelementptr i8, ptr %napi, i32 408
  %rx_tpcsum147.i.i = getelementptr i8, ptr %napi, i32 400
  %rx_iphlen208.i.i = getelementptr i8, ptr %napi, i32 440
  %rx_iplen197.i.i = getelementptr i8, ptr %napi, i32 432
  %rx_ipcsum186.i.i = getelementptr i8, ptr %napi, i32 424
  %rx_uflow802290.i.i = getelementptr i8, ptr %napi, i32 496
  %rx_oflow802279.i.i = getelementptr i8, ptr %napi, i32 488
  %rx_crc268.i.i = getelementptr i8, ptr %napi, i32 480
  %rx_drbl257.i.i = getelementptr i8, ptr %napi, i32 472
  %rx_lcode246.i.i = getelementptr i8, ptr %napi, i32 464
  %rx_buffoflow235.i.i = getelementptr i8, ptr %napi, i32 456
  %rx_early224.i.i = getelementptr i8, ptr %napi, i32 448
  %tx_carrier.i.i = getelementptr i8, ptr %napi, i32 504
  %rx_errors.i.i = getelementptr i8, ptr %napi, i32 352
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end36.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %todo.addr.010.i.i = phi i32 [ %todo, %land.rhs.lr.ph.i.i ], [ %dec.i.i, %if.end36.i.i.land.rhs.i.i_crit_edge ]
  %bytes.09.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %bytes.1.i.i, %if.end36.i.i.land.rhs.i.i_crit_edge ]
  %frames.08.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %frames.1.i.i, %if.end36.i.i.land.rhs.i.i_crit_edge ]
  %70 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %done_idx.i.i, align 4
  %72 = ptrtoint ptr %put_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %put_idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.not.i.i = icmp eq i32 %71, %73
  br i1 %cmp.not.i.i, label %land.rhs.i.i.slic_handle_receive.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.slic_handle_receive.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_receive.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %74 = ptrtoint ptr %rxq1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rxq1.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.slic_rx_buffer, ptr %75, i32 %71
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i8.i = icmp eq ptr %77, null
  br i1 %tobool4.not.i8.i, label %while.body.i.i.slic_handle_receive.exit.i_crit_edge, label %if.end.i9.i

while.body.i.i.slic_handle_receive.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_receive.exit.i

if.end.i9.i:                                      ; preds = %while.body.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr, align 8
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %map_addr.i.i = getelementptr %struct.slic_rx_buffer, ptr %75, i32 %71, i32 1
  %82 = ptrtoint ptr %map_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %map_addr.i.i, align 4
  %addr_offset.i.i = getelementptr %struct.slic_rx_buffer, ptr %75, i32 %71, i32 3
  %84 = ptrtoint ptr %addr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr_offset.i.i, align 4
  %add.i.i = add i32 %85, 28
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev5.i.i, i32 noundef %83, i32 noundef %add.i.i, i32 noundef 2) #15
  %status6.i.i = getelementptr inbounds %struct.slic_rx_desc, ptr %79, i32 0, i32 3
  %86 = ptrtoint ptr %status6.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %status6.i.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %tobool7.not.i.i = icmp sgt i32 %88, -1
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %dev10.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %91 = ptrtoint ptr %map_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %map_addr.i.i, align 4
  %93 = ptrtoint ptr %addr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr_offset.i.i, align 4
  %add13.i.i = add i32 %94, 28
  tail call void @dma_sync_single_for_device(ptr noundef %dev10.i.i, i32 noundef %92, i32 noundef %add13.i.i, i32 noundef 2) #15
  br label %slic_handle_receive.exit.i

if.end14.i.i:                                     ; preds = %if.end.i9.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %arrayidx.i.i, align 4
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %98 = ptrtoint ptr %map_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %map_addr.i.i, align 4
  %map_len.i.i = getelementptr %struct.slic_rx_buffer, ptr %75, i32 %71, i32 2
  %100 = ptrtoint ptr %map_len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %map_len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17.i.i, i32 noundef %99, i32 noundef %101, i32 noundef 2, i32 noundef 0) #15
  %102 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 34
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 16
  %104 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %105, i32 34
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %and19.i.i = and i32 %88, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.else.i.i, label %if.then23.i.i, !prof !195

if.then23.i.i:                                    ; preds = %if.end14.i.i
  %106 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %model.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %107)
  %cmp.i37.i = icmp eq i8 %107, 1
  %108 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #15
  br i1 %cmp.i37.i, label %if.then.i41.i, label %if.else.i49.i

if.then.i41.i:                                    ; preds = %if.then23.i.i
  %frame_status_b.i.i = getelementptr i8, ptr %103, i32 38
  %111 = ptrtoint ptr %frame_status_b.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %frame_status_b.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #15
  %and.i39.i = and i32 %113, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool.not.i40.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool.not.i40.i, label %if.then.i41.i.if.end.i47.i_crit_edge, label %do.body.i46.i

if.then.i41.i.if.end.i47.i_crit_edge:             ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i47.i

do.body.i46.i:                                    ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %114 = ptrtoint ptr %rx_tpcsum147.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rx_tpcsum147.i.i, align 8
  %inc.i43.i = add i64 %115, 1
  store i64 %inc.i43.i, ptr %rx_tpcsum147.i.i, align 8
  %116 = tail call ptr @llvm.returnaddress(i32 0) #15
  %117 = ptrtoint ptr %116 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %117) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %118 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i.i45.i = add i32 %119, 1
  store i32 %inc.i.i.i.i45.i, ptr %syncp.i6.i, align 4
  br label %if.end.i47.i

if.end.i47.i:                                     ; preds = %do.body.i46.i, %if.then.i41.i.if.end.i47.i_crit_edge
  %and5.i.i = and i32 %110, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i47.i.if.end14.i48.i_crit_edge, label %do.body8.i.i

if.end.i47.i.if.end14.i48.i_crit_edge:            ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i48.i

do.body8.i.i:                                     ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %120 = ptrtoint ptr %rx_tpoflow158.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rx_tpoflow158.i.i, align 8
  %inc10.i.i = add i64 %121, 1
  store i64 %inc10.i.i, ptr %rx_tpoflow158.i.i, align 8
  %122 = tail call ptr @llvm.returnaddress(i32 0) #15
  %123 = ptrtoint ptr %122 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %123) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %124 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i418.i.i = add i32 %125, 1
  store i32 %inc.i.i.i418.i.i, ptr %syncp.i6.i, align 4
  br label %if.end14.i48.i

if.end14.i48.i:                                   ; preds = %do.body8.i.i, %if.end.i47.i.if.end14.i48.i_crit_edge
  %and15.i.i = and i32 %113, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i48.i.if.end24.i.i_crit_edge, label %do.body18.i.i

if.end14.i48.i.if.end24.i.i_crit_edge:            ; preds = %if.end14.i48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i.i

do.body18.i.i:                                    ; preds = %if.end14.i48.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %126 = ptrtoint ptr %rx_tphlen169.i.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rx_tphlen169.i.i, align 8
  %inc20.i.i = add i64 %127, 1
  store i64 %inc20.i.i, ptr %rx_tphlen169.i.i, align 8
  %128 = tail call ptr @llvm.returnaddress(i32 0) #15
  %129 = ptrtoint ptr %128 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %129) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %130 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i420.i.i = add i32 %131, 1
  store i32 %inc.i.i.i420.i.i, ptr %syncp.i6.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %do.body18.i.i, %if.end14.i48.i.if.end24.i.i_crit_edge
  %and25.i.i = and i32 %113, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end24.i.i.if.end34.i.i_crit_edge, label %do.body28.i.i

if.end24.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34.i.i

do.body28.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %132 = ptrtoint ptr %rx_ipcsum186.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rx_ipcsum186.i.i, align 8
  %inc30.i.i = add i64 %133, 1
  store i64 %inc30.i.i, ptr %rx_ipcsum186.i.i, align 8
  %134 = tail call ptr @llvm.returnaddress(i32 0) #15
  %135 = ptrtoint ptr %134 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %135) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %136 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i422.i.i = add i32 %137, 1
  store i32 %inc.i.i.i422.i.i, ptr %syncp.i6.i, align 4
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %do.body28.i.i, %if.end24.i.i.if.end34.i.i_crit_edge
  %and35.i.i = and i32 %113, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end34.i.i.if.end44.i.i_crit_edge, label %do.body38.i.i

if.end34.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i.i

do.body38.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %138 = ptrtoint ptr %rx_iplen197.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rx_iplen197.i.i, align 8
  %inc40.i.i = add i64 %139, 1
  store i64 %inc40.i.i, ptr %rx_iplen197.i.i, align 8
  %140 = tail call ptr @llvm.returnaddress(i32 0) #15
  %141 = ptrtoint ptr %140 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %141) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %142 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i424.i.i = add i32 %143, 1
  store i32 %inc.i.i.i424.i.i, ptr %syncp.i6.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.body38.i.i, %if.end34.i.i.if.end44.i.i_crit_edge
  %and45.i.i = and i32 %113, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end44.i.i.if.end54.i.i_crit_edge, label %do.body48.i.i

if.end44.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i.i

do.body48.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %144 = ptrtoint ptr %rx_iphlen208.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %rx_iphlen208.i.i, align 8
  %inc50.i.i = add i64 %145, 1
  store i64 %inc50.i.i, ptr %rx_iphlen208.i.i, align 8
  %146 = tail call ptr @llvm.returnaddress(i32 0) #15
  %147 = ptrtoint ptr %146 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %147) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %148 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i426.i.i = add i32 %149, 1
  store i32 %inc.i.i.i426.i.i, ptr %syncp.i6.i, align 4
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %do.body48.i.i, %if.end44.i.i.if.end54.i.i_crit_edge
  %and55.i.i = and i32 %113, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end54.i.i.if.end64.i.i_crit_edge, label %do.body58.i.i

if.end54.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64.i.i

do.body58.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %150 = ptrtoint ptr %rx_early224.i.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %rx_early224.i.i, align 8
  %inc60.i.i = add i64 %151, 1
  store i64 %inc60.i.i, ptr %rx_early224.i.i, align 8
  %152 = tail call ptr @llvm.returnaddress(i32 0) #15
  %153 = ptrtoint ptr %152 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %153) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %154 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i428.i.i = add i32 %155, 1
  store i32 %inc.i.i.i428.i.i, ptr %syncp.i6.i, align 4
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %do.body58.i.i, %if.end54.i.i.if.end64.i.i_crit_edge
  %and65.i.i = and i32 %113, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.end64.i.i.if.end74.i.i_crit_edge, label %do.body68.i.i

if.end64.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i.i

do.body68.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %156 = ptrtoint ptr %rx_buffoflow235.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rx_buffoflow235.i.i, align 8
  %inc70.i.i = add i64 %157, 1
  store i64 %inc70.i.i, ptr %rx_buffoflow235.i.i, align 8
  %158 = tail call ptr @llvm.returnaddress(i32 0) #15
  %159 = ptrtoint ptr %158 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %159) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %160 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i430.i.i = add i32 %161, 1
  store i32 %inc.i.i.i430.i.i, ptr %syncp.i6.i, align 4
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %do.body68.i.i, %if.end64.i.i.if.end74.i.i_crit_edge
  %and75.i.i = and i32 %113, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i.i)
  %tobool76.not.i.i = icmp eq i32 %and75.i.i, 0
  br i1 %tobool76.not.i.i, label %if.end74.i.i.if.end84.i.i_crit_edge, label %do.body78.i.i

if.end74.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84.i.i

do.body78.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %162 = ptrtoint ptr %rx_lcode246.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_lcode246.i.i, align 8
  %inc80.i.i = add i64 %163, 1
  store i64 %inc80.i.i, ptr %rx_lcode246.i.i, align 8
  %164 = tail call ptr @llvm.returnaddress(i32 0) #15
  %165 = ptrtoint ptr %164 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %165) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %166 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i432.i.i = add i32 %167, 1
  store i32 %inc.i.i.i432.i.i, ptr %syncp.i6.i, align 4
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %do.body78.i.i, %if.end74.i.i.if.end84.i.i_crit_edge
  %and85.i.i = and i32 %113, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  br i1 %tobool86.not.i.i, label %if.end84.i.i.if.end94.i.i_crit_edge, label %do.body88.i.i

if.end84.i.i.if.end94.i.i_crit_edge:              ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94.i.i

do.body88.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %168 = ptrtoint ptr %rx_drbl257.i.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %rx_drbl257.i.i, align 8
  %inc90.i.i = add i64 %169, 1
  store i64 %inc90.i.i, ptr %rx_drbl257.i.i, align 8
  %170 = tail call ptr @llvm.returnaddress(i32 0) #15
  %171 = ptrtoint ptr %170 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %171) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %172 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i434.i.i = add i32 %173, 1
  store i32 %inc.i.i.i434.i.i, ptr %syncp.i6.i, align 4
  br label %if.end94.i.i

if.end94.i.i:                                     ; preds = %do.body88.i.i, %if.end84.i.i.if.end94.i.i_crit_edge
  %and95.i.i = and i32 %113, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %if.end94.i.i.if.end104.i.i_crit_edge, label %do.body98.i.i

if.end94.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.i.i

do.body98.i.i:                                    ; preds = %if.end94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %174 = ptrtoint ptr %rx_crc268.i.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %rx_crc268.i.i, align 8
  %inc100.i.i = add i64 %175, 1
  store i64 %inc100.i.i, ptr %rx_crc268.i.i, align 8
  %176 = tail call ptr @llvm.returnaddress(i32 0) #15
  %177 = ptrtoint ptr %176 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %177) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %178 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i436.i.i = add i32 %179, 1
  store i32 %inc.i.i.i436.i.i, ptr %syncp.i6.i, align 4
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %do.body98.i.i, %if.end94.i.i.if.end104.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %tobool106.not.i.i = icmp sgt i32 %110, -1
  br i1 %tobool106.not.i.i, label %if.end104.i.i.if.end114.i.i_crit_edge, label %do.body108.i.i

if.end104.i.i.if.end114.i.i_crit_edge:            ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.i.i

do.body108.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %180 = ptrtoint ptr %rx_oflow802279.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %rx_oflow802279.i.i, align 8
  %inc110.i.i = add i64 %181, 1
  store i64 %inc110.i.i, ptr %rx_oflow802279.i.i, align 8
  %182 = tail call ptr @llvm.returnaddress(i32 0) #15
  %183 = ptrtoint ptr %182 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %183) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %184 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i438.i.i = add i32 %185, 1
  store i32 %inc.i.i.i438.i.i, ptr %syncp.i6.i, align 4
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %do.body108.i.i, %if.end104.i.i.if.end114.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %tobool116.not.i.i = icmp sgt i32 %113, -1
  br i1 %tobool116.not.i.i, label %if.end114.i.i.if.end124.i.i_crit_edge, label %do.body118.i.i

if.end114.i.i.if.end124.i.i_crit_edge:            ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124.i.i

do.body118.i.i:                                   ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %186 = ptrtoint ptr %rx_uflow802290.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %rx_uflow802290.i.i, align 8
  %inc120.i.i = add i64 %187, 1
  store i64 %inc120.i.i, ptr %rx_uflow802290.i.i, align 8
  %188 = tail call ptr @llvm.returnaddress(i32 0) #15
  %189 = ptrtoint ptr %188 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %189) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %190 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i440.i.i = add i32 %191, 1
  store i32 %inc.i.i.i440.i.i, ptr %syncp.i6.i, align 4
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %do.body118.i.i, %if.end114.i.i.if.end124.i.i_crit_edge
  %and125.i.i = and i32 %113, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i.i)
  %tobool126.not.i.i = icmp eq i32 %and125.i.i, 0
  br i1 %tobool126.not.i.i, label %if.end124.i.i.slic_handle_frame_error.exit.i_crit_edge, label %do.body128.i.i

if.end124.i.i.slic_handle_frame_error.exit.i_crit_edge: ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_frame_error.exit.i

do.body128.i.i:                                   ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %192 = ptrtoint ptr %tx_carrier.i.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %tx_carrier.i.i, align 8
  %inc130.i.i = add i64 %193, 1
  store i64 %inc130.i.i, ptr %tx_carrier.i.i, align 8
  %194 = tail call ptr @llvm.returnaddress(i32 0) #15
  %195 = ptrtoint ptr %194 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %195) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

if.else.i49.i:                                    ; preds = %if.then23.i.i
  %and139.i.i = and i32 %110, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i.i)
  %tobool140.not.i.i = icmp eq i32 %and139.i.i, 0
  br i1 %tobool140.not.i.i, label %if.else.i49.i.if.end175.i.i_crit_edge, label %if.then141.i.i

if.else.i49.i.if.end175.i.i_crit_edge:            ; preds = %if.else.i49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end175.i.i

if.then141.i.i:                                   ; preds = %if.else.i49.i
  %shr.i.i = lshr i32 %110, 25
  %196 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %shr.i.i, label %if.then141.i.i.if.end175.i.i_crit_edge [
    i32 35, label %do.body145.i.i
    i32 34, label %do.body156.i.i
    i32 32, label %do.body167.i.i
  ]

if.then141.i.i.if.end175.i.i_crit_edge:           ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end175.i.i

do.body145.i.i:                                   ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %197 = ptrtoint ptr %rx_tpcsum147.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %rx_tpcsum147.i.i, align 8
  %inc148.i.i = add i64 %198, 1
  store i64 %inc148.i.i, ptr %rx_tpcsum147.i.i, align 8
  %199 = tail call ptr @llvm.returnaddress(i32 0) #15
  %200 = ptrtoint ptr %199 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %200) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end175.sink.split.i.i

do.body156.i.i:                                   ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %201 = ptrtoint ptr %rx_tpoflow158.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %rx_tpoflow158.i.i, align 8
  %inc159.i.i = add i64 %202, 1
  store i64 %inc159.i.i, ptr %rx_tpoflow158.i.i, align 8
  %203 = tail call ptr @llvm.returnaddress(i32 0) #15
  %204 = ptrtoint ptr %203 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %204) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end175.sink.split.i.i

do.body167.i.i:                                   ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %205 = ptrtoint ptr %rx_tphlen169.i.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %rx_tphlen169.i.i, align 8
  %inc170.i.i = add i64 %206, 1
  store i64 %inc170.i.i, ptr %rx_tphlen169.i.i, align 8
  %207 = tail call ptr @llvm.returnaddress(i32 0) #15
  %208 = ptrtoint ptr %207 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %208) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end175.sink.split.i.i

if.end175.sink.split.i.i:                         ; preds = %do.body167.i.i, %do.body156.i.i, %do.body145.i.i
  %209 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i446.i.i = add i32 %210, 1
  store i32 %inc.i.i.i446.i.i, ptr %syncp.i6.i, align 4
  br label %if.end175.i.i

if.end175.i.i:                                    ; preds = %if.end175.sink.split.i.i, %if.then141.i.i.if.end175.i.i_crit_edge, %if.else.i49.i.if.end175.i.i_crit_edge
  %and176.i.i = and i32 %110, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i.i)
  %tobool177.not.i.i = icmp eq i32 %and176.i.i, 0
  br i1 %tobool177.not.i.i, label %if.end175.i.i.if.end214.i.i_crit_edge, label %if.then178.i.i

if.end175.i.i.if.end214.i.i_crit_edge:            ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214.i.i

if.then178.i.i:                                   ; preds = %if.end175.i.i
  %shr179.i.i = lshr i32 %110, 16
  %and180.i.i = and i32 %shr179.i.i, 511
  %211 = zext i32 %and180.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and180.i.i, label %if.then178.i.i.if.end214.i.i_crit_edge [
    i32 259, label %do.body184.i.i
    i32 258, label %do.body195.i.i
    i32 256, label %do.body206.i.i
  ]

if.then178.i.i.if.end214.i.i_crit_edge:           ; preds = %if.then178.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214.i.i

do.body184.i.i:                                   ; preds = %if.then178.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %212 = ptrtoint ptr %rx_ipcsum186.i.i to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %rx_ipcsum186.i.i, align 8
  %inc187.i.i = add i64 %213, 1
  store i64 %inc187.i.i, ptr %rx_ipcsum186.i.i, align 8
  %214 = tail call ptr @llvm.returnaddress(i32 0) #15
  %215 = ptrtoint ptr %214 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %215) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end214.sink.split.i.i

do.body195.i.i:                                   ; preds = %if.then178.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %216 = ptrtoint ptr %rx_iplen197.i.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %rx_iplen197.i.i, align 8
  %inc198.i.i = add i64 %217, 1
  store i64 %inc198.i.i, ptr %rx_iplen197.i.i, align 8
  %218 = tail call ptr @llvm.returnaddress(i32 0) #15
  %219 = ptrtoint ptr %218 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %219) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end214.sink.split.i.i

do.body206.i.i:                                   ; preds = %if.then178.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %220 = ptrtoint ptr %rx_iphlen208.i.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %rx_iphlen208.i.i, align 8
  %inc209.i.i = add i64 %221, 1
  store i64 %inc209.i.i, ptr %rx_iphlen208.i.i, align 8
  %222 = tail call ptr @llvm.returnaddress(i32 0) #15
  %223 = ptrtoint ptr %222 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %223) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %if.end214.sink.split.i.i

if.end214.sink.split.i.i:                         ; preds = %do.body206.i.i, %do.body195.i.i, %do.body184.i.i
  %224 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i452.i.i = add i32 %225, 1
  store i32 %inc.i.i.i452.i.i, ptr %syncp.i6.i, align 4
  br label %if.end214.i.i

if.end214.i.i:                                    ; preds = %if.end214.sink.split.i.i, %if.then178.i.i.if.end214.i.i_crit_edge, %if.end175.i.i.if.end214.i.i_crit_edge
  %and215.i.i = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i.i)
  %tobool216.not.i.i = icmp eq i32 %and215.i.i, 0
  br i1 %tobool216.not.i.i, label %if.end214.i.i.slic_handle_frame_error.exit.i_crit_edge, label %if.then217.i.i

if.end214.i.i.slic_handle_frame_error.exit.i_crit_edge: ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_frame_error.exit.i

if.then217.i.i:                                   ; preds = %if.end214.i.i
  %trunc.i.i = trunc i32 %110 to i8
  %226 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %trunc.i.i, label %if.then217.i.i.slic_handle_frame_error.exit.i_crit_edge [
    i8 -122, label %do.body222.i.i
    i8 -123, label %do.body233.i.i
    i8 -124, label %do.body244.i.i
    i8 -125, label %do.body255.i.i
    i8 -126, label %do.body266.i.i
    i8 -127, label %do.body277.i.i
    i8 -128, label %do.body288.i.i
  ]

if.then217.i.i.slic_handle_frame_error.exit.i_crit_edge: ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_frame_error.exit.i

do.body222.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %227 = ptrtoint ptr %rx_early224.i.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %rx_early224.i.i, align 8
  %inc225.i.i = add i64 %228, 1
  store i64 %inc225.i.i, ptr %rx_early224.i.i, align 8
  %229 = tail call ptr @llvm.returnaddress(i32 0) #15
  %230 = ptrtoint ptr %229 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %230) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body233.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %231 = ptrtoint ptr %rx_buffoflow235.i.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %rx_buffoflow235.i.i, align 8
  %inc236.i.i = add i64 %232, 1
  store i64 %inc236.i.i, ptr %rx_buffoflow235.i.i, align 8
  %233 = tail call ptr @llvm.returnaddress(i32 0) #15
  %234 = ptrtoint ptr %233 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %234) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body244.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %235 = ptrtoint ptr %rx_lcode246.i.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %rx_lcode246.i.i, align 8
  %inc247.i.i = add i64 %236, 1
  store i64 %inc247.i.i, ptr %rx_lcode246.i.i, align 8
  %237 = tail call ptr @llvm.returnaddress(i32 0) #15
  %238 = ptrtoint ptr %237 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %238) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body255.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %239 = ptrtoint ptr %rx_drbl257.i.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %rx_drbl257.i.i, align 8
  %inc258.i.i = add i64 %240, 1
  store i64 %inc258.i.i, ptr %rx_drbl257.i.i, align 8
  %241 = tail call ptr @llvm.returnaddress(i32 0) #15
  %242 = ptrtoint ptr %241 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %242) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body266.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %243 = ptrtoint ptr %rx_crc268.i.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %rx_crc268.i.i, align 8
  %inc269.i.i = add i64 %244, 1
  store i64 %inc269.i.i, ptr %rx_crc268.i.i, align 8
  %245 = tail call ptr @llvm.returnaddress(i32 0) #15
  %246 = ptrtoint ptr %245 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %246) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body277.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %247 = ptrtoint ptr %rx_oflow802279.i.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %rx_oflow802279.i.i, align 8
  %inc280.i.i = add i64 %248, 1
  store i64 %inc280.i.i, ptr %rx_oflow802279.i.i, align 8
  %249 = tail call ptr @llvm.returnaddress(i32 0) #15
  %250 = ptrtoint ptr %249 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %250) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body288.i.i:                                   ; preds = %if.then217.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %251 = ptrtoint ptr %rx_uflow802290.i.i to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %rx_uflow802290.i.i, align 8
  %inc291.i.i = add i64 %252, 1
  store i64 %inc291.i.i, ptr %rx_uflow802290.i.i, align 8
  %253 = tail call ptr @llvm.returnaddress(i32 0) #15
  %254 = ptrtoint ptr %253 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %254) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  br label %do.body298.sink.split.i.i

do.body298.sink.split.i.i:                        ; preds = %do.body288.i.i, %do.body277.i.i, %do.body266.i.i, %do.body255.i.i, %do.body244.i.i, %do.body233.i.i, %do.body222.i.i, %do.body128.i.i
  %255 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i466.i.i = add i32 %256, 1
  store i32 %inc.i.i.i466.i.i, ptr %syncp.i6.i, align 4
  br label %slic_handle_frame_error.exit.i

slic_handle_frame_error.exit.i:                   ; preds = %do.body298.sink.split.i.i, %if.then217.i.i.slic_handle_frame_error.exit.i_crit_edge, %if.end214.i.i.slic_handle_frame_error.exit.i_crit_edge, %if.end124.i.i.slic_handle_frame_error.exit.i_crit_edge
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %257 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %rx_errors.i.i, align 8
  %inc300.i.i = add i64 %258, 1
  store i64 %inc300.i.i, ptr %rx_errors.i.i, align 8
  %259 = tail call ptr @llvm.returnaddress(i32 0) #15
  %260 = ptrtoint ptr %259 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %260) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %261 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i470.i.i = add i32 %262, 1
  store i32 %inc.i.i.i470.i.i, ptr %syncp.i6.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %77, i32 noundef 1) #15
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %if.end14.i.i
  %263 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %add.ptr.i.i.i, align 4
  %265 = and i32 %264, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.i.not.i.i = icmp eq i32 %265, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i.if.end29.i.i_crit_edge, label %do.body.i12.i

if.else.i.i.if.end29.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

do.body.i12.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i6.i) #15
  %266 = ptrtoint ptr %rx_mcasts.i.i to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %rx_mcasts.i.i, align 8
  %inc.i10.i = add i64 %267, 1
  store i64 %inc.i10.i, ptr %rx_mcasts.i.i, align 8
  %268 = tail call ptr @llvm.returnaddress(i32 0) #15
  %269 = ptrtoint ptr %268 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i7.i, i32 noundef %269) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %270 = ptrtoint ptr %syncp.i6.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %syncp.i6.i, align 4
  %inc.i.i.i.i11.i = add i32 %271, 1
  store i32 %inc.i.i.i.i11.i, ptr %syncp.i6.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.body.i12.i, %if.else.i.i.if.end29.i.i_crit_edge
  %length.i.i = getelementptr inbounds %struct.slic_rx_desc, ptr %79, i32 0, i32 2
  %272 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %length.i.i, align 4
  %274 = and i32 %273, -65536
  %275 = tail call i32 @llvm.bswap.i32(i32 %274) #15
  %call31.i.i = tail call ptr @skb_put(ptr noundef nonnull %77, i32 noundef %275) #15
  %call32.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %77, ptr noundef %69) #15
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15, i32 0, i32 18
  %276 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %call32.i.i, ptr %protocol.i.i, align 8
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 15
  %277 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %call33.i.i = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %77) #15
  %add34.i.i = add i32 %275, %bytes.09.i.i
  %inc35.i.i = add i32 %frames.08.i.i, 1
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.end29.i.i, %slic_handle_frame_error.exit.i
  %frames.1.i.i = phi i32 [ %frames.08.i.i, %slic_handle_frame_error.exit.i ], [ %inc35.i.i, %if.end29.i.i ]
  %bytes.1.i.i = phi i32 [ %bytes.09.i.i, %slic_handle_frame_error.exit.i ], [ %add34.i.i, %if.end29.i.i ]
  %278 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %done_idx.i.i, align 4
  %280 = ptrtoint ptr %len38.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %len38.i.i, align 4
  %add.i.i.i = add i32 %279, 1
  %sub.i.i.i = add i32 %281, -1
  %and.i.i13.i = and i32 %sub.i.i.i, %add.i.i.i
  store i32 %and.i.i13.i, ptr %done_idx.i.i, align 4
  %dec.i.i = add i32 %todo.addr.010.i.i, -1
  %tobool.not.i14.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i14.i, label %if.end36.i.i.slic_handle_receive.exit.i_crit_edge, label %if.end36.i.i.land.rhs.i.i_crit_edge

if.end36.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i.i

if.end36.i.i.slic_handle_receive.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_receive.exit.i

slic_handle_receive.exit.i:                       ; preds = %if.end36.i.i.slic_handle_receive.exit.i_crit_edge, %if.then8.i.i, %while.body.i.i.slic_handle_receive.exit.i_crit_edge, %land.rhs.i.i.slic_handle_receive.exit.i_crit_edge, %if.then11.i.slic_handle_receive.exit.i_crit_edge
  %frames.06.i.i = phi i32 [ %frames.08.i.i, %if.then8.i.i ], [ 0, %if.then11.i.slic_handle_receive.exit.i_crit_edge ], [ %frames.08.i.i, %land.rhs.i.i.slic_handle_receive.exit.i_crit_edge ], [ %frames.08.i.i, %while.body.i.i.slic_handle_receive.exit.i_crit_edge ], [ %frames.1.i.i, %if.end36.i.i.slic_handle_receive.exit.i_crit_edge ]
  %bytes.04.i.i = phi i32 [ %bytes.09.i.i, %if.then8.i.i ], [ 0, %if.then11.i.slic_handle_receive.exit.i_crit_edge ], [ %bytes.09.i.i, %land.rhs.i.i.slic_handle_receive.exit.i_crit_edge ], [ %bytes.09.i.i, %while.body.i.i.slic_handle_receive.exit.i_crit_edge ], [ %bytes.1.i.i, %if.end36.i.i.slic_handle_receive.exit.i_crit_edge ]
  %stats41.i.i = getelementptr i8, ptr %napi, i32 328
  %syncp42.i.i = getelementptr i8, ptr %napi, i32 512
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp42.i.i) #15
  %conv.i.i = zext i32 %bytes.04.i.i to i64
  %rx_bytes.i.i = getelementptr i8, ptr %napi, i32 336
  %282 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %rx_bytes.i.i, align 8
  %add44.i.i = add i64 %283, %conv.i.i
  store i64 %add44.i.i, ptr %rx_bytes.i.i, align 8
  %conv45.i.i = zext i32 %frames.06.i.i to i64
  %284 = ptrtoint ptr %stats41.i.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %stats41.i.i, align 8
  %add47.i.i = add i64 %285, %conv45.i.i
  store i64 %add47.i.i, ptr %stats41.i.i, align 8
  %dep_map.i.i1.i.i = getelementptr i8, ptr %napi, i32 516
  %286 = tail call ptr @llvm.returnaddress(i32 0) #15
  %287 = ptrtoint ptr %286 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i1.i.i, i32 noundef %287) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %288 = ptrtoint ptr %syncp42.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %syncp42.i.i, align 4
  %inc.i.i.i2.i.i = add i32 %289, 1
  store i32 %inc.i.i.i2.i.i, ptr %syncp42.i.i, align 4
  tail call fastcc void @slic_refill_rx_queue(ptr noundef %add.ptr, i32 noundef 2592) #15
  br label %if.end12.i

if.end12.i:                                       ; preds = %slic_handle_receive.exit.i, %if.end8.i.if.end12.i_crit_edge
  %and13.i = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.slic_handle_irq.exit_crit_edge, label %if.then15.i

if.end12.i.slic_handle_irq.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_handle_irq.exit

if.then15.i:                                      ; preds = %if.end12.i
  %netdev.i15.i = getelementptr i8, ptr %napi, i32 -68
  %290 = ptrtoint ptr %netdev.i15.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %netdev.i15.i, align 4
  %stq1.i.i.i = getelementptr i8, ptr %napi, i32 260
  %active_array.i.i.i = getelementptr i8, ptr %napi, i32 308
  %done_idx.i.i.i = getelementptr i8, ptr %napi, i32 316
  %len.i.i.i = getelementptr i8, ptr %napi, i32 312
  %regs.i.i.i.i = getelementptr i8, ptr %napi, i32 -64
  %done_idx.i16.i = getelementptr i8, ptr %napi, i32 256
  %txbuffs.i.i = getelementptr i8, ptr %napi, i32 244
  br label %do.body.i18.i

do.body.i18.i:                                    ; preds = %do.cond.i.i.do.body.i18.i_crit_edge, %if.then15.i
  %frames.0.i.i = phi i32 [ 0, %if.then15.i ], [ %frames.1.i31.i, %do.cond.i.i.do.body.i18.i_crit_edge ]
  %bytes.0.i.i = phi i32 [ 0, %if.then15.i ], [ %bytes.1.i32.i, %do.cond.i.i.do.body.i18.i_crit_edge ]
  %292 = ptrtoint ptr %active_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %active_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr %stq1.i.i.i, i32 0, i32 %293
  %294 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx.i.i.i, align 4
  %296 = ptrtoint ptr %done_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %done_idx.i.i.i, align 4
  %status.i.i.i = getelementptr %struct.slic_stat_desc, ptr %295, i32 %297, i32 2
  %298 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.i.i17.i = icmp eq i32 %299, 0
  br i1 %tobool.not.i.i17.i, label %do.body.i18.i.do.end15.i.i_crit_edge, label %if.end.i.i20.i

do.body.i18.i.do.end15.i.i_crit_edge:             ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15.i.i

if.end.i.i20.i:                                   ; preds = %do.body.i18.i
  %arrayidx3.i.i.i = getelementptr %struct.slic_stat_desc, ptr %295, i32 %297
  %300 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx3.i.i.i, align 4
  %302 = and i32 %301, -65536
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #15
  %sub.i.i19.i = add nsw i32 %303, -1
  %304 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %arrayidx3.i.i.i, align 4
  %305 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 0, ptr %status.i.i.i, align 4
  %306 = ptrtoint ptr %done_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %done_idx.i.i.i, align 4
  %308 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %len.i.i.i, align 4
  %add.i.i.i.i = add i32 %307, 1
  %sub.i.i.i.i = add i32 %309, -1
  %and.i.i.i.i = and i32 %sub.i.i.i.i, %add.i.i.i.i
  store i32 %and.i.i.i.i, ptr %done_idx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.then10.i.i.i, label %if.end.i.i20.i.slic_next_compl_idx.exit.i.i_crit_edge

if.end.i.i20.i.slic_next_compl_idx.exit.i.i_crit_edge: ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_next_compl_idx.exit.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx12.i.i.i = getelementptr %struct.slic_device, ptr %add.ptr, i32 0, i32 8, i32 1, i32 %293
  %310 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx12.i.i.i, align 4
  %or.i.i.i = or i32 %311, %309
  %312 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %313, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %314 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %314) #15, !srcloc !191
  %315 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i41.i.i.i = getelementptr i8, ptr %316, i32 5460
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i.i.i) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %inc.i.i.i = add i32 %293, 1
  %and15.i.i.i = and i32 %inc.i.i.i, 3
  %318 = ptrtoint ptr %active_array.i.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %and15.i.i.i, ptr %active_array.i.i.i, align 4
  br label %slic_next_compl_idx.exit.i.i

slic_next_compl_idx.exit.i.i:                     ; preds = %if.then10.i.i.i, %if.end.i.i20.i.slic_next_compl_idx.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp.i21.i = icmp eq i32 %302, 0
  br i1 %cmp.i21.i, label %slic_next_compl_idx.exit.i.i.do.end15.i.i_crit_edge, label %if.end.i24.i

slic_next_compl_idx.exit.i.i.do.end15.i.i_crit_edge: ; preds = %slic_next_compl_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15.i.i

if.end.i24.i:                                     ; preds = %slic_next_compl_idx.exit.i.i
  %319 = ptrtoint ptr %done_idx.i16.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %sub.i.i19.i, ptr %done_idx.i16.i, align 4
  %320 = ptrtoint ptr %txbuffs.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %txbuffs.i.i, align 4
  %arrayidx.i22.i = getelementptr %struct.slic_tx_buffer, ptr %321, i32 %sub.i.i19.i
  %322 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i22.i, align 4
  %tobool.not.i23.i = icmp eq ptr %323, null
  br i1 %tobool.not.i23.i, label %if.then5.i25.i, label %if.end6.i30.i, !prof !197

if.then5.i25.i:                                   ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %291, ptr noundef nonnull @.str.87, i32 noundef %sub.i.i19.i) #18
  br label %do.cond.i.i

if.end6.i30.i:                                    ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  %324 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %add.ptr, align 8
  %dev7.i.i = getelementptr inbounds %struct.pci_dev, ptr %325, i32 0, i32 44
  %map_addr.i26.i = getelementptr %struct.slic_tx_buffer, ptr %321, i32 %sub.i.i19.i, i32 1
  %326 = ptrtoint ptr %map_addr.i26.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %map_addr.i26.i, align 4
  %map_len.i27.i = getelementptr %struct.slic_tx_buffer, ptr %321, i32 %sub.i.i19.i, i32 2
  %328 = ptrtoint ptr %map_len.i27.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %map_len.i27.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev7.i.i, i32 noundef %327, i32 noundef %329, i32 noundef 1, i32 noundef 0) #15
  %330 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx.i22.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %331, i32 0, i32 6
  %332 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %len.i.i, align 4
  %add.i28.i = add i32 %333, %bytes.0.i.i
  %inc.i29.i = add nuw nsw i32 %frames.0.i.i, 1
  tail call void @__dev_kfree_skb_any(ptr noundef %331, i32 noundef 1) #15
  %334 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr null, ptr %arrayidx.i22.i, align 4
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end6.i30.i, %if.then5.i25.i
  %frames.1.i31.i = phi i32 [ %frames.0.i.i, %if.then5.i25.i ], [ %inc.i29.i, %if.end6.i30.i ]
  %bytes.1.i32.i = phi i32 [ %bytes.0.i.i, %if.then5.i25.i ], [ %add.i28.i, %if.end6.i30.i ]
  %cmp11.i.i = icmp ult i32 %frames.1.i31.i, 100
  br i1 %cmp11.i.i, label %do.cond.i.i.do.body.i18.i_crit_edge, label %do.cond.i.i.do.end15.i.i_crit_edge

do.cond.i.i.do.end15.i.i_crit_edge:               ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15.i.i

do.cond.i.i.do.body.i18.i_crit_edge:              ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i18.i

do.end15.i.i:                                     ; preds = %do.cond.i.i.do.end15.i.i_crit_edge, %slic_next_compl_idx.exit.i.i.do.end15.i.i_crit_edge, %do.body.i18.i.do.end15.i.i_crit_edge
  %frames.2.i.i = phi i32 [ %frames.0.i.i, %slic_next_compl_idx.exit.i.i.do.end15.i.i_crit_edge ], [ %frames.1.i31.i, %do.cond.i.i.do.end15.i.i_crit_edge ], [ %frames.0.i.i, %do.body.i18.i.do.end15.i.i_crit_edge ]
  %bytes.2.i.i = phi i32 [ %bytes.0.i.i, %slic_next_compl_idx.exit.i.i.do.end15.i.i_crit_edge ], [ %bytes.1.i32.i, %do.cond.i.i.do.end15.i.i_crit_edge ], [ %bytes.0.i.i, %do.body.i18.i.do.end15.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !198
  %syncp.i33.i = getelementptr i8, ptr %napi, i32 512
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i33.i) #15
  %conv.i34.i = zext i32 %bytes.2.i.i to i64
  %tx_bytes.i.i = getelementptr i8, ptr %napi, i32 368
  %335 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %tx_bytes.i.i, align 8
  %add19.i.i = add i64 %336, %conv.i34.i
  store i64 %add19.i.i, ptr %tx_bytes.i.i, align 8
  %conv20.i.i = zext i32 %frames.2.i.i to i64
  %tx_packets.i.i = getelementptr i8, ptr %napi, i32 360
  %337 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %tx_packets.i.i, align 8
  %add22.i.i = add i64 %338, %conv20.i.i
  store i64 %add22.i.i, ptr %tx_packets.i.i, align 8
  %dep_map.i.i.i35.i = getelementptr i8, ptr %napi, i32 516
  %339 = tail call ptr @llvm.returnaddress(i32 0) #15
  %340 = ptrtoint ptr %339 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i35.i, i32 noundef %340) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !194
  %341 = ptrtoint ptr %syncp.i33.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %syncp.i33.i, align 4
  %inc.i.i.i.i36.i = add i32 %342, 1
  store i32 %inc.i.i.i.i36.i, ptr %syncp.i33.i, align 4
  tail call void @netif_tx_lock(ptr noundef %291) #15
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %291, i32 0, i32 103
  %343 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %344, i32 0, i32 13
  %345 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %346, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %do.end15.i.i.slic_xmit_complete.exit.i_crit_edge, label %land.lhs.true.i.i

do.end15.i.i.slic_xmit_complete.exit.i_crit_edge: ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_xmit_complete.exit.i

land.lhs.true.i.i:                                ; preds = %do.end15.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  %put_idx.i.i.i = getelementptr i8, ptr %napi, i32 252
  %347 = ptrtoint ptr %put_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %put_idx.i.i.i, align 4
  %349 = ptrtoint ptr %done_idx.i16.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %done_idx.i16.i, align 4
  %len.i57.i.i = getelementptr i8, ptr %napi, i32 248
  %351 = ptrtoint ptr %len.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %len.i57.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %348)
  %cmp.not.i.i.i.i = icmp ugt i32 %350, %348
  %353 = xor i32 %348, -1
  %sub4.i.i.i.i = add i32 %350, %353
  %sub2.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 0, i32 %352
  %retval.0.i.i.i.i = add i32 %sub4.i.i.i.i, %sub2.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %retval.0.i.i.i.i)
  %cmp28.i.i = icmp ugt i32 %retval.0.i.i.i.i, 9
  br i1 %cmp28.i.i, label %if.then30.i.i, label %land.lhs.true.i.i.slic_xmit_complete.exit.i_crit_edge

land.lhs.true.i.i.slic_xmit_complete.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_xmit_complete.exit.i

if.then30.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %354 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %355) #15
  br label %slic_xmit_complete.exit.i

slic_xmit_complete.exit.i:                        ; preds = %if.then30.i.i, %land.lhs.true.i.i.slic_xmit_complete.exit.i_crit_edge, %do.end15.i.i.slic_xmit_complete.exit.i_crit_edge
  tail call void @netif_tx_unlock(ptr noundef %291) #15
  br label %slic_handle_irq.exit

slic_handle_irq.exit:                             ; preds = %slic_xmit_complete.exit.i, %if.end12.i.slic_handle_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todo)
  %cmp = icmp sgt i32 %todo, 0
  br i1 %cmp, label %if.then, label %slic_handle_irq.exit.if.end_crit_edge

slic_handle_irq.exit.if.end_crit_edge:            ; preds = %slic_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %slic_handle_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #15
  %356 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !200
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %napi, i32 -64
  %357 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %358, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !191
  %359 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %regs.i, align 8
  %add.ptr.i10 = getelementptr i8, ptr %360, i32 5460
  %361 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  br label %if.end

if.end:                                           ; preds = %if.then, %slic_handle_irq.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_open(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i172.i = alloca i16, align 2
  %paddr.i115.i = alloca i32, align 4
  %fw.i.i = alloca ptr, align 4
  %paddr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  %shmem.i = getelementptr i8, ptr %dev, i32 2360
  %upr_list.i = getelementptr i8, ptr %dev, i32 2920
  %0 = ptrtoint ptr %upr_list.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %upr_list.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %1 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %paddr.i.i, align 4, !annotation !189
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 8, ptr noundef nonnull %paddr.i.i, i32 noundef 3264, i32 noundef 0) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %slic_init_iface.exit.thread10, label %if.end.i

slic_init_iface.exit.thread10:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.33) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %netdev.i = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.25) #18
  br label %if.then

if.end.i:                                         ; preds = %entry
  %shmem_data.i.i = getelementptr i8, ptr %dev, i32 2368
  %8 = ptrtoint ptr %shmem_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %shmem_data.i.i, align 4
  %9 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %paddr.i.i, align 4
  %11 = ptrtoint ptr %shmem.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %shmem.i, align 4
  %add.i.i = add i32 %10, 4
  %link_paddr.i.i = getelementptr i8, ptr %dev, i32 2364
  %12 = ptrtoint ptr %link_paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %link_paddr.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i.i) #15
  %call1.i = call fastcc i32 @slic_load_firmware(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev4.i = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev4.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.26) #18
  br label %slic_init_iface.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #15
  %15 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !189
  %model.i.i = getelementptr i8, ptr %dev, i32 3033
  %16 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %model.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i.i = icmp eq i8 %17, 1
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.48, ptr @.str.49
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %dev.i92.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull %cond.i.i, ptr noundef %dev.i92.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i93.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i93.i, label %if.end.i95.i, label %slic_load_rcvseq_firmware.exit.thread.i

slic_load_rcvseq_firmware.exit.thread.i:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  br label %if.then8.i

if.end.i95.i:                                     ; preds = %if.end5.i
  %22 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp4.i.i = icmp ult i32 %25, 64
  br i1 %cmp4.i.i, label %do.end9.i.i, label %if.end13.i.i

do.end9.i.i:                                      ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.53, i32 noundef %25, i32 noundef 64) #18
  br label %slic_load_rcvseq_firmware.exit.thread180.i

if.end13.i.i:                                     ; preds = %if.end.i95.i
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %val.0.copyload.i.i.i = load i32, ptr %29, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i.i.i) #15
  %add.i96.i = add i32 %31, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i96.i, i32 %25)
  %cmp16.i.i = icmp ugt i32 %add.i96.i, %25
  br i1 %cmp16.i.i, label %do.end21.i.i, label %if.end25.i.i

do.end21.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %dev23.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i.i, ptr noundef nonnull @.str.56, i32 noundef %25) #18
  br label %slic_load_rcvseq_firmware.exit.thread180.i

if.end25.i.i:                                     ; preds = %if.end13.i.i
  %regs.i.i.i = getelementptr i8, ptr %dev, i32 2312
  %34 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i55.i.i = getelementptr i8, ptr %35, i32 304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 64) #15, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.copyload.i.i.i)
  %cmp2672.not.i.i = icmp eq i32 %val.0.copyload.i.i.i, 0
  br i1 %cmp2672.not.i.i, label %if.end25.i.i.if.end10.i_crit_edge, label %for.body.preheader.i.i

if.end25.i.i.if.end10.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

for.body.preheader.i.i:                           ; preds = %if.end25.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %31, i32 1) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %addr.074.i.i = phi i32 [ %inc30.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %idx.073.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 4, %for.body.preheader.i.i ]
  %36 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i57.i.i = getelementptr i8, ptr %37, i32 304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %38 = call i32 @llvm.bswap.i32(i32 %addr.074.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 %38) #15, !srcloc !191
  %39 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i.i, align 4
  %data.i58.i.i = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i58.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %42, i32 %idx.073.i.i
  %43 = ptrtoint ptr %add.ptr.i59.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %val.0.copyload.i60.i.i = load i32, ptr %add.ptr.i59.i.i, align 1
  %add.i61.i.i = add i32 %idx.073.i.i, 4
  %44 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i63.i.i = getelementptr i8, ptr %45, i32 304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 %val.0.copyload.i60.i.i) #15, !srcloc !191
  %46 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %49, i32 %add.i61.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i, align 1
  %conv29.i.i = zext i8 %51 to i32
  %inc.i.i = add i32 %idx.073.i.i, 5
  %52 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i65.i.i = getelementptr i8, ptr %53, i32 304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %conv29.i.i) #15, !srcloc !191
  %inc30.i.i = add nuw i32 %addr.074.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc30.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end10.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.if.end10.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

slic_load_rcvseq_firmware.exit.thread180.i:       ; preds = %do.end21.i.i, %do.end9.i.i
  %54 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %55) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  br label %if.then8.i

if.then8.i:                                       ; preds = %slic_load_rcvseq_firmware.exit.thread180.i, %slic_load_rcvseq_firmware.exit.thread.i
  %retval.0.i97179.i = phi i32 [ %call.i.i, %slic_load_rcvseq_firmware.exit.thread.i ], [ -22, %slic_load_rcvseq_firmware.exit.thread180.i ]
  %netdev9.i = getelementptr i8, ptr %dev, i32 2308
  %56 = ptrtoint ptr %netdev9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev9.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.27) #18
  br label %slic_init_iface.exit

if.end10.i:                                       ; preds = %for.body.i.i.if.end10.i_crit_edge, %if.end25.i.i.if.end10.i_crit_edge
  %58 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i67.i.i = getelementptr i8, ptr %59, i32 304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 128) #15, !srcloc !191
  %60 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i69.i.i = getelementptr i8, ptr %61, i32 5460
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %63 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #15
  %65 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !191
  %67 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i99.i = getelementptr i8, ptr %68, i32 5460
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #15
  %len.i.i = getelementptr i8, ptr %dev, i32 2604
  %71 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 256, ptr %len.i.i, align 4
  %done_idx.i.i = getelementptr i8, ptr %dev, i32 2608
  %72 = ptrtoint ptr %done_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %done_idx.i.i, align 4
  %put_idx.i.i = getelementptr i8, ptr %dev, i32 2612
  %73 = ptrtoint ptr %put_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %put_idx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 4096) #19
  %tobool.not.i100.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i100.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev14.i = getelementptr i8, ptr %dev, i32 2308
  %75 = ptrtoint ptr %netdev14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev14.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.28, i32 noundef -12) #18
  br label %slic_init_iface.exit

if.end15.i:                                       ; preds = %if.end10.i
  %rxq1.i.i = getelementptr i8, ptr %dev, i32 2600
  %77 = ptrtoint ptr %rxq1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i.i.i, ptr %rxq1.i.i, align 4
  call fastcc void @slic_refill_rx_queue(ptr noundef %add.ptr.i, i32 noundef 3264) #15
  %txq1.i.i = getelementptr i8, ptr %dev, i32 2616
  %len.i103.i = getelementptr i8, ptr %dev, i32 2624
  %78 = ptrtoint ptr %len.i103.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 256, ptr %len.i103.i, align 4
  %put_idx.i104.i = getelementptr i8, ptr %dev, i32 2628
  %79 = ptrtoint ptr %put_idx.i104.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %put_idx.i104.i, align 4
  %done_idx.i105.i = getelementptr i8, ptr %dev, i32 2632
  %80 = ptrtoint ptr %done_idx.i105.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %done_idx.i105.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i106.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 5120) #19
  %txbuffs.i.i = getelementptr i8, ptr %dev, i32 2620
  %82 = ptrtoint ptr %txbuffs.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i.i106.i, ptr %txbuffs.i.i, align 4
  %tobool.not.i107.i = icmp eq ptr %call7.i.i.i.i106.i, null
  br i1 %tobool.not.i107.i, label %if.end15.i.if.then18.i_crit_edge, label %if.end.i109.i

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

if.end.i109.i:                                    ; preds = %if.end15.i
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %dev.i108.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %call4.i.i = call ptr @dma_pool_create(ptr noundef nonnull @.str.61, ptr noundef %dev.i108.i, i32 noundef 32, i32 noundef 32, i32 noundef 4096) #15
  %85 = ptrtoint ptr %txq1.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call4.i.i, ptr %txq1.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i109.i
  %86 = ptrtoint ptr %len.i103.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp62.not.i.i = icmp eq i32 %87, 0
  br i1 %cmp62.not.i.i, label %for.cond.preheader.i.i.if.end20.i_crit_edge, label %for.cond.preheader.i.i.for.body.i111.i_crit_edge

for.cond.preheader.i.i.for.body.i111.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i111.i

for.cond.preheader.i.i.if.end20.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then7.i.i:                                     ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev.i.i = getelementptr i8, ptr %dev, i32 2308
  %88 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.62) #18
  br label %free_buffs.i.i

for.body.i111.i:                                  ; preds = %if.end16.i.i.for.body.i111.i_crit_edge, %for.cond.preheader.i.i.for.body.i111.i_crit_edge
  %i.063.i.i = phi i32 [ %add.i112.i, %if.end16.i.i.for.body.i111.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i111.i_crit_edge ]
  %90 = ptrtoint ptr %txbuffs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %txbuffs.i.i, align 4
  %92 = ptrtoint ptr %txq1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %txq1.i.i, align 4
  %desc_paddr.i.i = getelementptr %struct.slic_tx_buffer, ptr %91, i32 %i.063.i.i, i32 4
  %call.i.i110.i = call ptr @dma_pool_alloc(ptr noundef %93, i32 noundef 3520, ptr noundef %desc_paddr.i.i) #15
  %tobool13.not.i.i = icmp eq ptr %call.i.i110.i, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.end16.i.i

if.then14.i.i:                                    ; preds = %for.body.i111.i
  %netdev15.i.i = getelementptr i8, ptr %dev, i32 2308
  %94 = ptrtoint ptr %netdev15.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %netdev15.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.63, i32 noundef %i.063.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.063.i.i)
  %tobool18.not64.i.i = icmp eq i32 %i.063.i.i, 0
  br i1 %tobool18.not64.i.i, label %if.then14.i.i.while.end.i.i_crit_edge, label %if.then14.i.i.while.body.i.i_crit_edge

if.then14.i.i.while.body.i.i_crit_edge:           ; preds = %if.then14.i.i
  br label %while.body.i.i

if.then14.i.i.while.end.i.i_crit_edge:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

if.end16.i.i:                                     ; preds = %for.body.i111.i
  %add.i112.i = add nuw i32 %i.063.i.i, 1
  %96 = call i32 @llvm.bswap.i32(i32 %add.i112.i) #15
  %97 = ptrtoint ptr %call.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %call.i.i110.i, align 4
  %cmd.i.i = getelementptr inbounds %struct.slic_tx_desc, ptr %call.i.i110.i, i32 0, i32 2
  %98 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %cmd.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.slic_tx_desc, ptr %call.i.i110.i, i32 0, i32 3
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %flags.i.i, align 1
  %type.i.i = getelementptr inbounds %struct.slic_tx_desc, ptr %call.i.i110.i, i32 0, i32 9
  %100 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 50331648, ptr %type.i.i, align 4
  %desc17.i.i = getelementptr %struct.slic_tx_buffer, ptr %91, i32 %i.063.i.i, i32 3
  %101 = ptrtoint ptr %desc17.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i.i110.i, ptr %desc17.i.i, align 4
  %102 = ptrtoint ptr %len.i103.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len.i103.i, align 4
  %cmp.i113.i = icmp ult i32 %add.i112.i, %103
  br i1 %cmp.i113.i, label %if.end16.i.i.for.body.i111.i_crit_edge, label %if.end16.i.i.if.end20.i_crit_edge

if.end16.i.i.if.end20.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.end16.i.i.for.body.i111.i_crit_edge:           ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i111.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then14.i.i.while.body.i.i_crit_edge
  %i.165.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %i.063.i.i, %if.then14.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %i.165.i.i, -1
  %104 = ptrtoint ptr %txbuffs.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %txbuffs.i.i, align 4
  %106 = ptrtoint ptr %txq1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %txq1.i.i, align 4
  %desc22.i.i = getelementptr %struct.slic_tx_buffer, ptr %105, i32 %dec.i.i, i32 3
  %108 = ptrtoint ptr %desc22.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc22.i.i, align 4
  %desc_paddr23.i.i = getelementptr %struct.slic_tx_buffer, ptr %105, i32 %dec.i.i, i32 4
  %110 = ptrtoint ptr %desc_paddr23.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %desc_paddr23.i.i, align 4
  call void @dma_pool_free(ptr noundef %107, ptr noundef %109, i32 noundef %111) #15
  %tobool18.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool18.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then14.i.i.while.end.i.i_crit_edge
  %112 = ptrtoint ptr %txq1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %txq1.i.i, align 4
  call void @dma_pool_destroy(ptr noundef %113) #15
  br label %free_buffs.i.i

free_buffs.i.i:                                   ; preds = %while.end.i.i, %if.then7.i.i
  %114 = ptrtoint ptr %txbuffs.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %txbuffs.i.i, align 4
  call void @kfree(ptr noundef %115) #15
  br label %if.then18.i

if.then18.i:                                      ; preds = %free_buffs.i.i, %if.end15.i.if.then18.i_crit_edge
  %netdev19.i = getelementptr i8, ptr %dev, i32 2308
  %116 = ptrtoint ptr %netdev19.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %netdev19.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %117, ptr noundef nonnull @.str.29, i32 noundef -12) #18
  br label %free_rxq.i

if.end20.i:                                       ; preds = %if.end16.i.i.if.end20.i_crit_edge, %for.cond.preheader.i.i.if.end20.i_crit_edge
  %stq1.i.i = getelementptr i8, ptr %dev, i32 2636
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i115.i) #15
  %118 = ptrtoint ptr %paddr.i115.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %paddr.i115.i, align 4, !annotation !189
  %len.i116.i = getelementptr i8, ptr %dev, i32 2688
  %119 = ptrtoint ptr %len.i116.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 128, ptr %len.i116.i, align 4
  %active_array.i.i = getelementptr i8, ptr %dev, i32 2684
  %120 = ptrtoint ptr %active_array.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %active_array.i.i, align 4
  %done_idx.i117.i = getelementptr i8, ptr %dev, i32 2692
  %121 = ptrtoint ptr %done_idx.i117.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %done_idx.i117.i, align 4
  br label %for.body.i122.i

for.body.i122.i:                                  ; preds = %if.end6.i.i.for.body.i122.i_crit_edge, %if.end20.i
  %i.068.i.i = phi i32 [ 0, %if.end20.i ], [ %inc.i127.i, %if.end6.i.i.for.body.i122.i_crit_edge ]
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 8
  %dev.i119.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %call.i.i120.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i119.i, i32 noundef 4351, ptr noundef nonnull %paddr.i115.i, i32 noundef 3264, i32 noundef 0) #15
  %tobool.not.i121.i = icmp eq ptr %call.i.i120.i, null
  br i1 %tobool.not.i121.i, label %if.then.i.i, label %if.end.i124.i

if.then.i.i:                                      ; preds = %for.body.i122.i
  %netdev.i123.i = getelementptr i8, ptr %dev, i32 2308
  %124 = ptrtoint ptr %netdev.i123.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %netdev.i123.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %125, ptr noundef nonnull @.str.64) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.068.i.i)
  %tobool13.not69.i.i = icmp eq i32 %i.068.i.i, 0
  br i1 %tobool13.not69.i.i, label %if.then.i.i.if.then23.i_crit_edge, label %while.body.lr.ph.i.i

if.then.i.i.if.then23.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i.i
  %mem_size16.i.i = getelementptr i8, ptr %dev, i32 2696
  %dec.i130.i = add nsw i32 %i.068.i.i, -1
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 8
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %128 = ptrtoint ptr %mem_size16.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mem_size16.i.i, align 4
  %arrayidx18.i.i = getelementptr [4 x ptr], ptr %stq1.i.i, i32 0, i32 %dec.i130.i
  %130 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx18.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %dec.i130.i
  %132 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx20.i.i, align 4
  %idx.neg.i.i = sub i32 0, %133
  %add.ptr21.i.i = getelementptr %struct.slic_stat_desc, ptr %131, i32 %idx.neg.i.i
  %arrayidx23.i.i = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %dec.i130.i
  %134 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx23.i.i, align 4
  %sub26.i.i = sub i32 %135, %133
  call void @dma_free_attrs(ptr noundef %dev15.i.i, i32 noundef %129, ptr noundef %add.ptr21.i.i, i32 noundef %sub26.i.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i130.i)
  %tobool13.not.i131.i = icmp eq i32 %dec.i130.i, 0
  br i1 %tobool13.not.i131.i, label %while.body.lr.ph.i.i.if.then23.i_crit_edge, label %while.body.i132.i.1

while.body.lr.ph.i.i.if.then23.i_crit_edge:       ; preds = %while.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

if.end.i124.i:                                    ; preds = %for.body.i122.i
  %136 = ptrtoint ptr %paddr.i115.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %paddr.i115.i, align 4
  %and.i.i = and i32 %137, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i124.i.if.end6.i.i_crit_edge, label %if.then4.i.i

if.end.i124.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub nuw nsw i32 256, %and.i.i
  %add.ptr.i125.i = getelementptr %struct.slic_stat_desc, ptr %call.i.i120.i, i32 %sub.i.i
  %add5.i.i = add i32 %sub.i.i, %137
  %138 = ptrtoint ptr %paddr.i115.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add5.i.i, ptr %paddr.i115.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.end.i124.i.if.end6.i.i_crit_edge
  %descs.0.i.i = phi ptr [ %add.ptr.i125.i, %if.then4.i.i ], [ %call.i.i120.i, %if.end.i124.i.if.end6.i.i_crit_edge ]
  %offset.0.i.i = phi i32 [ %sub.i.i, %if.then4.i.i ], [ 0, %if.end.i124.i.if.end6.i.i_crit_edge ]
  %139 = ptrtoint ptr %paddr.i115.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %paddr.i115.i, align 4
  %141 = ptrtoint ptr %len.i116.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len.i116.i, align 4
  %or.i.i = or i32 %142, %140
  %143 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %144, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %145 = call i32 @llvm.bswap.i32(i32 %or.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %145) #15, !srcloc !191
  %arrayidx.i126.i = getelementptr [4 x ptr], ptr %stq1.i.i, i32 0, i32 %i.068.i.i
  %146 = ptrtoint ptr %arrayidx.i126.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %descs.0.i.i, ptr %arrayidx.i126.i, align 4
  %147 = ptrtoint ptr %paddr.i115.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %paddr.i115.i, align 4
  %arrayidx11.i.i = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %i.068.i.i
  %149 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx11.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %i.068.i.i
  %150 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %offset.0.i.i, ptr %arrayidx12.i.i, align 4
  %inc.i127.i = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i128.i = icmp eq i32 %inc.i127.i, 4
  br i1 %exitcond.not.i128.i, label %if.end25.i, label %if.end6.i.i.for.body.i122.i_crit_edge

if.end6.i.i.for.body.i122.i_crit_edge:            ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i122.i

while.body.i132.i.1:                              ; preds = %while.body.lr.ph.i.i
  %dec.i130.i.1 = add nsw i32 %i.068.i.i, -2
  %151 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add.ptr.i, align 8
  %dev15.i.i.1 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %153 = ptrtoint ptr %mem_size16.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mem_size16.i.i, align 4
  %arrayidx18.i.i.1 = getelementptr [4 x ptr], ptr %stq1.i.i, i32 0, i32 %dec.i130.i.1
  %155 = ptrtoint ptr %arrayidx18.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx18.i.i.1, align 4
  %arrayidx20.i.i.1 = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %dec.i130.i.1
  %157 = ptrtoint ptr %arrayidx20.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx20.i.i.1, align 4
  %idx.neg.i.i.1 = sub i32 0, %158
  %add.ptr21.i.i.1 = getelementptr %struct.slic_stat_desc, ptr %156, i32 %idx.neg.i.i.1
  %arrayidx23.i.i.1 = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %dec.i130.i.1
  %159 = ptrtoint ptr %arrayidx23.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx23.i.i.1, align 4
  %sub26.i.i.1 = sub i32 %160, %158
  call void @dma_free_attrs(ptr noundef %dev15.i.i.1, i32 noundef %154, ptr noundef %add.ptr21.i.i.1, i32 noundef %sub26.i.i.1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i130.i.1)
  %tobool13.not.i131.i.1 = icmp eq i32 %dec.i130.i.1, 0
  br i1 %tobool13.not.i131.i.1, label %while.body.i132.i.1.if.then23.i_crit_edge, label %while.body.i132.i.2

while.body.i132.i.1.if.then23.i_crit_edge:        ; preds = %while.body.i132.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

while.body.i132.i.2:                              ; preds = %while.body.i132.i.1
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i130.i.2 = add nsw i32 %i.068.i.i, -3
  %161 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr.i, align 8
  %dev15.i.i.2 = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %mem_size16.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mem_size16.i.i, align 4
  %arrayidx18.i.i.2 = getelementptr [4 x ptr], ptr %stq1.i.i, i32 0, i32 %dec.i130.i.2
  %165 = ptrtoint ptr %arrayidx18.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx18.i.i.2, align 4
  %arrayidx20.i.i.2 = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 2, i32 %dec.i130.i.2
  %167 = ptrtoint ptr %arrayidx20.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx20.i.i.2, align 4
  %idx.neg.i.i.2 = sub i32 0, %168
  %add.ptr21.i.i.2 = getelementptr %struct.slic_stat_desc, ptr %166, i32 %idx.neg.i.i.2
  %arrayidx23.i.i.2 = getelementptr %struct.slic_device, ptr %add.ptr.i, i32 0, i32 8, i32 1, i32 %dec.i130.i.2
  %169 = ptrtoint ptr %arrayidx23.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx23.i.i.2, align 4
  %sub26.i.i.2 = sub i32 %170, %168
  call void @dma_free_attrs(ptr noundef %dev15.i.i.2, i32 noundef %164, ptr noundef %add.ptr21.i.i.2, i32 noundef %sub26.i.i.2, i32 noundef 0) #15
  br label %if.then23.i

if.then23.i:                                      ; preds = %while.body.i132.i.2, %while.body.i132.i.1.if.then23.i_crit_edge, %while.body.lr.ph.i.i.if.then23.i_crit_edge, %if.then.i.i.if.then23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i115.i) #15
  %171 = ptrtoint ptr %netdev.i123.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %netdev.i123.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %172, ptr noundef nonnull @.str.30, i32 noundef -12) #18
  br label %free_txq.i

if.end25.i:                                       ; preds = %if.end6.i.i
  %mem_size.i.i = getelementptr i8, ptr %dev, i32 2696
  %173 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4351, ptr %mem_size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i115.i) #15
  %174 = ptrtoint ptr %shmem.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %shmem.i, align 4
  %176 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i135.i = getelementptr i8, ptr %177, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %178 = call i32 @llvm.bswap.i32(i32 %175) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %178) #15, !srcloc !191
  %napi.i = getelementptr i8, ptr %dev, i32 2376
  call void @napi_enable(ptr noundef %napi.i) #15
  %179 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i137.i = getelementptr i8, ptr %180, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 0) #15, !srcloc !191
  %181 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i139.i = getelementptr i8, ptr %182, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 0) #15, !srcloc !191
  %183 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i141.i = getelementptr i8, ptr %184, i32 5460
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %netdev.i142.i = getelementptr i8, ptr %dev, i32 2308
  %186 = ptrtoint ptr %netdev.i142.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %netdev.i142.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %187, i32 0, i32 86
  %188 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx.i143.i = getelementptr i8, ptr %189, i32 5
  %190 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.i143.i, align 1
  %conv.i.i = zext i8 %191 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %189, i32 4
  %192 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %193 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i144.i = or i32 %shl.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %189, i32 3
  %194 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %195 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i144.i, %shl5.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %189, i32 2
  %196 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %197 to i32
  %shl9.i.i = shl nuw i32 %conv8.i.i, 24
  %or10.i.i = or i32 %or6.i.i, %shl9.i.i
  %198 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i146.i = getelementptr i8, ptr %199, i32 136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %200 = call i32 @llvm.bswap.i32(i32 %or10.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i146.i, i32 %200) #15, !srcloc !191
  %201 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i31.i.i = getelementptr i8, ptr %202, i32 152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %200) #15, !srcloc !191
  %203 = ptrtoint ptr %189 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %189, align 1
  %conv12.i.i = zext i8 %204 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %arrayidx14.i.i = getelementptr i8, ptr %189, i32 1
  %205 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %206 to i32
  %or16.i.i = or i32 %shl13.i.i, %conv15.i.i
  %207 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i33.i.i = getelementptr i8, ptr %208, i32 144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %209 = call i32 @llvm.bswap.i32(i32 %or16.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 %209) #15, !srcloc !191
  %210 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i35.i.i = getelementptr i8, ptr %211, i32 160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i.i, i32 %209) #15, !srcloc !191
  %212 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i37.i.i = getelementptr i8, ptr %213, i32 5460
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %link_lock.i = getelementptr i8, ptr %dev, i32 2976
  call void @_raw_spin_lock_bh(ptr noundef %link_lock.i) #15
  %duplex.i = getelementptr i8, ptr %dev, i32 3028
  %215 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 255, ptr %duplex.i, align 4
  %speed.i = getelementptr i8, ptr %dev, i32 3024
  %216 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %speed.i, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %link_lock.i) #15
  %is_fiber.i.i = getelementptr i8, ptr %dev, i32 3032
  %217 = ptrtoint ptr %is_fiber.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %is_fiber.i.i, align 8, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i147.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i147.i, label %if.else.i.i, label %if.then.i150.i

if.then.i150.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %219 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i149.i = getelementptr i8, ptr %220, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149.i, i32 -1610546176) #15, !srcloc !191
  %221 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i23.i.i = getelementptr i8, ptr %222, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i, i32 9568256) #15, !srcloc !191
  br label %slic_set_link_autoneg.exit.i

if.else.i.i:                                      ; preds = %if.end25.i
  %223 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %add.ptr.i, align 8
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %224, i32 0, i32 10
  %225 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %subsystem_device.i.i, align 2
  %227 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i25.i.i = getelementptr i8, ptr %228, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 -519240704) #15, !srcloc !191
  %229 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i27.i.i = getelementptr i8, ptr %230, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 133376) #15, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %226)
  %cmp.not.i.i = icmp eq i16 %226, 8
  %231 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i33.i151.i = getelementptr i8, ptr %232, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  call void @arm_heavy_mb() #15
  br i1 %cmp.not.i.i, label %if.else4.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i151.i, i32 1744834560) #15, !srcloc !191
  %233 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i31.i152.i = getelementptr i8, ptr %234, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i152.i, i32 9568256) #15, !srcloc !191
  br label %slic_set_link_autoneg.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i151.i, i32 1179648) #15, !srcloc !191
  br label %slic_set_link_autoneg.exit.i

slic_set_link_autoneg.exit.i:                     ; preds = %if.else4.i.i, %if.then3.i.i, %if.then.i150.i
  %235 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %add.ptr.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 46
  %237 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %irq.i, align 4
  %call.i153.i = call i32 @request_threaded_irq(i32 noundef %238, ptr noundef nonnull @slic_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %tobool28.not.i = icmp eq i32 %call.i153.i, 0
  br i1 %tobool28.not.i, label %if.end31.i, label %if.then29.i

if.then29.i:                                      ; preds = %slic_set_link_autoneg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %239 = ptrtoint ptr %netdev.i142.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %netdev.i142.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %240, ptr noundef nonnull @.str.31, i32 noundef %call.i153.i) #18
  call void @napi_disable(ptr noundef %napi.i) #15
  call fastcc void @slic_free_stat_queue(ptr noundef %add.ptr.i) #15
  br label %free_txq.i

if.end31.i:                                       ; preds = %slic_set_link_autoneg.exit.i
  %241 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i155.i = getelementptr i8, ptr %242, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 16777216) #15, !srcloc !191
  %243 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i157.i = getelementptr i8, ptr %244, i32 5460
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157.i) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %246 = ptrtoint ptr %link_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %link_paddr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %248 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %248, i32 noundef 2592, i32 noundef 16) #19
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then34.i, label %slic_handle_link_change.exit.thread.i

slic_handle_link_change.exit.thread.i:            ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  %type1.i.i.i = getelementptr inbounds %struct.slic_upr, ptr %call7.i.i.i.i, i32 0, i32 1
  %249 = ptrtoint ptr %type1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %type1.i.i.i, align 4
  %250 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %247, ptr %call7.i.i.i.i, align 8
  call fastcc void @slic_queue_upr(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i.i.i) #15
  br label %if.end

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  %251 = ptrtoint ptr %netdev.i142.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %netdev.i142.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %252, ptr noundef nonnull @.str.32, i32 noundef -12) #18
  br label %if.end

free_txq.i:                                       ; preds = %if.then29.i, %if.then23.i
  %err.0.i = phi i32 [ -12, %if.then23.i ], [ %call.i153.i, %if.then29.i ]
  call fastcc void @slic_free_tx_queue(ptr noundef %add.ptr.i) #15
  br label %free_rxq.i

free_rxq.i:                                       ; preds = %free_txq.i, %if.then18.i
  %err.1.i = phi i32 [ -12, %if.then18.i ], [ %err.0.i, %free_txq.i ]
  %253 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp12.not.i.i = icmp eq i32 %254, 0
  br i1 %cmp12.not.i.i, label %free_rxq.i.slic_free_rx_queue.exit.i_crit_edge, label %free_rxq.i.for.body.i163.i_crit_edge

free_rxq.i.for.body.i163.i_crit_edge:             ; preds = %free_rxq.i
  br label %for.body.i163.i

free_rxq.i.slic_free_rx_queue.exit.i_crit_edge:   ; preds = %free_rxq.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_free_rx_queue.exit.i

for.body.i163.i:                                  ; preds = %for.inc.i.i.for.body.i163.i_crit_edge, %free_rxq.i.for.body.i163.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i166.i, %for.inc.i.i.for.body.i163.i_crit_edge ], [ 0, %free_rxq.i.for.body.i163.i_crit_edge ]
  %255 = ptrtoint ptr %rxq1.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rxq1.i.i, align 4
  %arrayidx.i161.i = getelementptr %struct.slic_rx_buffer, ptr %256, i32 %i.013.i.i
  %257 = ptrtoint ptr %arrayidx.i161.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx.i161.i, align 4
  %tobool.not.i162.i = icmp eq ptr %258, null
  br i1 %tobool.not.i162.i, label %for.body.i163.i.for.inc.i.i_crit_edge, label %if.end.i165.i

for.body.i163.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i163.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i165.i:                                    ; preds = %for.body.i163.i
  call void @__sanitizer_cov_trace_pc() #17
  %259 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %add.ptr.i, align 8
  %dev.i164.i = getelementptr inbounds %struct.pci_dev, ptr %260, i32 0, i32 44
  %map_addr.i.i = getelementptr %struct.slic_rx_buffer, ptr %256, i32 %i.013.i.i, i32 1
  %261 = ptrtoint ptr %map_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %map_addr.i.i, align 4
  %map_len.i.i = getelementptr %struct.slic_rx_buffer, ptr %256, i32 %i.013.i.i, i32 2
  %263 = ptrtoint ptr %map_len.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %map_len.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i164.i, i32 noundef %262, i32 noundef %264, i32 noundef 2, i32 noundef 0) #15
  %265 = ptrtoint ptr %arrayidx.i161.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx.i161.i, align 4
  call void @consume_skb(ptr noundef %266) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i165.i, %for.body.i163.i.for.inc.i.i_crit_edge
  %inc.i166.i = add nuw i32 %i.013.i.i, 1
  %267 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %len.i.i, align 4
  %cmp.i167.i = icmp ult i32 %inc.i166.i, %268
  br i1 %cmp.i167.i, label %for.inc.i.i.for.body.i163.i_crit_edge, label %for.inc.i.i.slic_free_rx_queue.exit.i_crit_edge

for.inc.i.i.slic_free_rx_queue.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_free_rx_queue.exit.i

for.inc.i.i.for.body.i163.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i163.i

slic_free_rx_queue.exit.i:                        ; preds = %for.inc.i.i.slic_free_rx_queue.exit.i_crit_edge, %free_rxq.i.slic_free_rx_queue.exit.i_crit_edge
  %269 = ptrtoint ptr %rxq1.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rxq1.i.i, align 4
  call void @kfree(ptr noundef %270) #15
  br label %slic_init_iface.exit

slic_init_iface.exit:                             ; preds = %slic_free_rx_queue.exit.i, %if.then13.i, %if.then8.i, %if.then3.i
  %err.2.i = phi i32 [ %call1.i, %if.then3.i ], [ %retval.0.i97179.i, %if.then8.i ], [ -12, %if.then13.i ], [ %err.1.i, %slic_free_rx_queue.exit.i ]
  %271 = ptrtoint ptr %shmem_data.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %shmem_data.i.i, align 4
  %273 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %add.ptr.i, align 8
  %dev.i171.i = getelementptr inbounds %struct.pci_dev, ptr %274, i32 0, i32 44
  %275 = ptrtoint ptr %shmem.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %shmem.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i171.i, i32 noundef 8, ptr noundef %272, i32 noundef %276, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i172.i) #15
  %277 = ptrtoint ptr %cmd.i172.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 -1, ptr %cmd.i172.i, align 2, !annotation !189
  %regs.i.i173.i = getelementptr i8, ptr %dev, i32 2312
  %278 = ptrtoint ptr %regs.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %regs.i.i173.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 -1377959936) #15, !srcloc !191
  %280 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %add.ptr.i, align 8
  %call.i174.i = call i32 @pci_read_config_word(ptr noundef %281, i32 noundef 4, ptr noundef nonnull %cmd.i172.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %282(i32 noundef 214748000) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i172.i) #15
  br label %if.then

if.then:                                          ; preds = %slic_init_iface.exit, %slic_init_iface.exit.thread10
  %retval.0.i13 = phi i32 [ -12, %slic_init_iface.exit.thread10 ], [ %err.2.i, %slic_init_iface.exit ]
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i13) #18
  br label %cleanup

if.end:                                           ; preds = %if.then34.i, %slic_handle_link_change.exit.thread.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %283 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %284, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i13, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_close(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %napi = getelementptr i8, ptr %dev, i32 2376
  tail call void @napi_disable(ptr noundef %napi) #15
  %regs.i = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #15, !srcloc !191
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #15, !srcloc !191
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 5460
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %add.ptr.i) #15
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %14, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 160) #15, !srcloc !191
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 7306) #15, !srcloc !191
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %18, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 524288) #15, !srcloc !191
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %20, i32 5460
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  %upr_list = getelementptr i8, ptr %dev, i32 2920
  %lock.i = getelementptr i8, ptr %dev, i32 2932
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  %list.i = getelementptr i8, ptr %dev, i32 2924
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %cmp.not25.i = icmp eq ptr %23, %list.i
  br i1 %cmp.not25.i, label %entry.slic_clear_upr_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.slic_clear_upr_list.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_clear_upr_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %23, %entry.for.body.i_crit_edge ]
  %upr.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -8
  %24 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in26.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %upr.0.i) #15
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %list_del.exit.i.slic_clear_upr_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.slic_clear_upr_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_clear_upr_list.exit

slic_clear_upr_list.exit:                         ; preds = %list_del.exit.i.slic_clear_upr_list.exit_crit_edge, %entry.slic_clear_upr_list.exit_crit_edge
  %33 = ptrtoint ptr %upr_list to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %upr_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i36 = getelementptr i8, ptr %35, i32 232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #15, !srcloc !191
  tail call fastcc void @slic_free_stat_queue(ptr noundef %add.ptr.i)
  tail call fastcc void @slic_free_tx_queue(ptr noundef %add.ptr.i)
  %rxq1.i = getelementptr i8, ptr %dev, i32 2600
  %len.i = getelementptr i8, ptr %dev, i32 2604
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp12.not.i = icmp eq i32 %37, 0
  br i1 %cmp12.not.i, label %slic_clear_upr_list.exit.slic_free_rx_queue.exit_crit_edge, label %slic_clear_upr_list.exit.for.body.i37_crit_edge

slic_clear_upr_list.exit.for.body.i37_crit_edge:  ; preds = %slic_clear_upr_list.exit
  br label %for.body.i37

slic_clear_upr_list.exit.slic_free_rx_queue.exit_crit_edge: ; preds = %slic_clear_upr_list.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_free_rx_queue.exit

for.body.i37:                                     ; preds = %for.inc.i.for.body.i37_crit_edge, %slic_clear_upr_list.exit.for.body.i37_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i37_crit_edge ], [ 0, %slic_clear_upr_list.exit.for.body.i37_crit_edge ]
  %38 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rxq1.i, align 4
  %arrayidx.i = getelementptr %struct.slic_rx_buffer, ptr %39, i32 %i.013.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %for.body.i37.for.inc.i_crit_edge, label %if.end.i

for.body.i37.for.inc.i_crit_edge:                 ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %map_addr.i = getelementptr %struct.slic_rx_buffer, ptr %39, i32 %i.013.i, i32 1
  %44 = ptrtoint ptr %map_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %map_addr.i, align 4
  %map_len.i = getelementptr %struct.slic_rx_buffer, ptr %39, i32 %i.013.i, i32 2
  %46 = ptrtoint ptr %map_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %map_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %45, i32 noundef %47, i32 noundef 2, i32 noundef 0) #15
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %49) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i37.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %51
  br i1 %cmp.i, label %for.inc.i.for.body.i37_crit_edge, label %for.inc.i.slic_free_rx_queue.exit_crit_edge

for.inc.i.slic_free_rx_queue.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_free_rx_queue.exit

for.inc.i.for.body.i37_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i37

slic_free_rx_queue.exit:                          ; preds = %for.inc.i.slic_free_rx_queue.exit_crit_edge, %slic_clear_upr_list.exit.slic_free_rx_queue.exit_crit_edge
  %52 = ptrtoint ptr %rxq1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rxq1.i, align 4
  tail call void @kfree(ptr noundef %53) #15
  %shmem.i = getelementptr i8, ptr %dev, i32 2360
  %shmem_data.i = getelementptr i8, ptr %dev, i32 2368
  %54 = ptrtoint ptr %shmem_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shmem_data.i, align 4
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 8
  %dev.i38 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %shmem.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shmem.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i38, i32 noundef 8, ptr noundef %55, i32 noundef %59, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #15
  %60 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %cmd.i, align 2, !annotation !189
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 -1377959936) #15, !srcloc !191
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %64, i32 noundef 4, ptr noundef nonnull %cmd.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 214748000) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #15
  call void @netif_carrier_off(ptr noundef %dev) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  %put_idx.i = getelementptr i8, ptr %dev, i32 2628
  %0 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %put_idx.i, align 4
  %done_idx.i = getelementptr i8, ptr %dev, i32 2632
  %2 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %done_idx.i, align 4
  %len.i = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp ugt i32 %3, %1
  %6 = xor i32 %1, -1
  %sub4.i.i = add i32 %3, %6
  %sub2.i.i = select i1 %cmp.not.i.i, i32 0, i32 %5
  %retval.0.i.i = sub i32 0, %sub2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i, i32 %retval.0.i.i)
  %cmp = icmp eq i32 %sub4.i.i, %retval.0.i.i
  br i1 %cmp, label %if.then, label %if.end, !prof !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  %7 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %put_idx.i, align 4
  %9 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %done_idx.i, align 4
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i64 = icmp ugt i32 %10, %8
  %13 = xor i32 %8, -1
  %sub4.i.i65 = add i32 %10, %13
  %sub2.i.i66 = select i1 %cmp.not.i.i64, i32 0, i32 %12
  %retval.0.i.i67 = add i32 %sub4.i.i65, %sub2.i.i66
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i.i67) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i68, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %15, %17
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !195

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev6) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i69 = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i69) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev6, ptr noundef %21, i32 noundef %sub.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %21 to i32
  %sub.i70 = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i70, 12
  %add.ptr.i71 = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev6, ptr noundef %add.ptr.i71, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then12, label %if.end13

if.then12:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  %txbuffs = getelementptr i8, ptr %dev, i32 2620
  %30 = ptrtoint ptr %txbuffs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %txbuffs, align 4
  %32 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %put_idx.i, align 4
  %arrayidx = getelementptr %struct.slic_tx_buffer, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %skb, ptr %arrayidx, align 4
  %map_addr = getelementptr %struct.slic_tx_buffer, ptr %31, i32 %33, i32 1
  %35 = ptrtoint ptr %map_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %map_addr, align 4
  %map_len = getelementptr %struct.slic_tx_buffer, ptr %31, i32 %33, i32 2
  %36 = ptrtoint ptr %map_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i, ptr %map_len, align 4
  %desc15 = getelementptr %struct.slic_tx_buffer, ptr %31, i32 %33, i32 3
  %37 = ptrtoint ptr %desc15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc15, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %sub.i)
  %totlen = getelementptr inbounds %struct.slic_tx_desc, ptr %38, i32 0, i32 5
  %40 = ptrtoint ptr %totlen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %totlen, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %paddrl = getelementptr inbounds %struct.slic_tx_desc, ptr %38, i32 0, i32 6
  %42 = ptrtoint ptr %paddrl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %paddrl, align 4
  %paddrh = getelementptr inbounds %struct.slic_tx_desc, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %paddrh to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %paddrh, align 4
  %len = getelementptr inbounds %struct.slic_tx_desc, ptr %38, i32 0, i32 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %len, align 4
  %45 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %put_idx.i, align 4
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i, align 4
  %add.i = add i32 %46, 1
  %sub.i72 = add i32 %48, -1
  %and.i73 = and i32 %sub.i72, %add.i
  store i32 %and.i73, ptr %put_idx.i, align 4
  %desc_paddr = getelementptr %struct.slic_tx_buffer, ptr %31, i32 %33, i32 4
  %49 = ptrtoint ptr %desc_paddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc_paddr, align 4
  %or = or i32 %50, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !201
  tail call void @arm_heavy_mb() #15
  %regs.i = getelementptr i8, ptr %dev, i32 2312
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %53 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %53) #15, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !199
  %54 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %put_idx.i, align 4
  %56 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %done_idx.i, align 4
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %55)
  %cmp.not.i.i78 = icmp ugt i32 %57, %55
  %60 = xor i32 %55, -1
  %sub4.i.i79 = add i32 %57, %60
  %sub2.i.i80 = select i1 %cmp.not.i.i78, i32 0, i32 %59
  %retval.0.i.i81 = sub i32 0, %sub2.i.i80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i79, i32 %retval.0.i.i81)
  %cmp23 = icmp eq i32 %sub4.i.i79, %retval.0.i.i81
  br i1 %cmp23, label %if.then24, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end13.cleanup_crit_edge, %if.then12, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.then12 ], [ 0, %if.then24 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slic_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %2 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %2)
  %hwaddr.050 = load ptr, ptr %mc, align 4
  %cmp.not51 = icmp eq ptr %hwaddr.050, %mc
  br i1 %cmp.not51, label %if.else.if.end_crit_edge, label %if.else.slic_set_mcast_bit.exit_crit_edge

if.else.slic_set_mcast_bit.exit_crit_edge:        ; preds = %if.else
  br label %slic_set_mcast_bit.exit

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

slic_set_mcast_bit.exit:                          ; preds = %slic_set_mcast_bit.exit.slic_set_mcast_bit.exit_crit_edge, %if.else.slic_set_mcast_bit.exit_crit_edge
  %hwaddr.053 = phi ptr [ %hwaddr.0, %slic_set_mcast_bit.exit.slic_set_mcast_bit.exit_crit_edge ], [ %hwaddr.050, %if.else.slic_set_mcast_bit.exit_crit_edge ]
  %mcmask.052 = phi i64 [ %or28.i, %slic_set_mcast_bit.exit.slic_set_mcast_bit.exit_crit_edge ], [ 0, %if.else.slic_set_mcast_bit.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %hwaddr.053, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #20
  %3 = lshr i32 %call.i, 8
  %conv4.i.i.i = and i32 %3, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %4 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %5 to i32
  %6 = shl nuw nsw i32 %conv6.i.i.i, 16
  %7 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %9 to i32
  %10 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %6, %10
  %shr22.i = lshr i32 %or.i13.i.i, 23
  %conv25.i = and i32 %shr22.i, 63
  %sh_prom.i = zext i32 %conv25.i to i64
  %shl27.i = shl nuw i64 1, %sh_prom.i
  %or28.i = or i64 %shl27.i, %mcmask.052
  %11 = ptrtoint ptr %hwaddr.053 to i32
  call void @__asan_load4_noabort(i32 %11)
  %hwaddr.0 = load ptr, ptr %hwaddr.053, align 4
  %cmp.not = icmp eq ptr %hwaddr.0, %mc
  br i1 %cmp.not, label %if.end.loopexit.loopexit, label %slic_set_mcast_bit.exit.slic_set_mcast_bit.exit_crit_edge

slic_set_mcast_bit.exit.slic_set_mcast_bit.exit_crit_edge: ; preds = %slic_set_mcast_bit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %slic_set_mcast_bit.exit

if.end.loopexit.loopexit:                         ; preds = %slic_set_mcast_bit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %extract = lshr i64 %or28.i, 32
  %extract.t55 = trunc i64 %extract to i32
  %extract.t = trunc i64 %or28.i to i32
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit.loopexit, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %mcmask.1.off0 = phi i32 [ -1, %entry.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %extract.t, %if.end.loopexit.loopexit ]
  %mcmask.1.off32 = phi i32 [ -1, %entry.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %extract.t55, %if.end.loopexit.loopexit ]
  %regs.i = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %14 = tail call i32 @llvm.bswap.i32(i32 %mcmask.1.off0) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %14) #15, !srcloc !191
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i45 = getelementptr i8, ptr %16, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %mcmask.1.off32) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %17) #15, !srcloc !191
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %link_lock = getelementptr i8, ptr %dev, i32 2976
  tail call void @_raw_spin_lock_bh(ptr noundef %link_lock) #15
  %promisc = getelementptr i8, ptr %dev, i32 3020
  %20 = ptrtoint ptr %promisc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %promisc, align 4, !range !196
  %22 = zext i8 %21 to i32
  %and13 = lshr i32 %19, 8
  %and13.lobit42 = and i32 %and13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.lobit42, i32 %22)
  %cmp21.not = icmp eq i32 %and13.lobit42, %22
  br i1 %cmp21.not, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %23 = trunc i32 %and13.lobit42 to i8
  %24 = ptrtoint ptr %promisc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %promisc, align 4
  %duplex.i = getelementptr i8, ptr %dev, i32 3028
  %25 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  %spec.select.i = select i1 %cmp.i, i32 -635699200, i32 -769916928
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %or2.i = or i32 %spec.select.i, 536870912
  %val.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or2.i
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %29 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #15, !srcloc !191
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end.if.end27_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %link_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slic_get_stats(ptr noundef %dev, ptr nocapture noundef writeonly %lst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 2704
  %syncp = getelementptr i8, ptr %dev, i32 2888
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call2 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %2 = ptrtoint ptr %lst to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %lst, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %3 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %4, %call2
  br i1 %cmp.i.i.i.i.not, label %do.body7.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body7.preheader:                               ; preds = %do.body
  %tx_packets = getelementptr i8, ptr %dev, i32 2736
  %tx_packets10 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 1
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body7.preheader
  %call9 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_packets, align 8
  %7 = ptrtoint ptr %tx_packets10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tx_packets10, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i145.not = icmp eq i32 %9, %call9
  br i1 %cmp.i.i.i.i145.not, label %do.body16.preheader, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body7

do.body16.preheader:                              ; preds = %do.body7
  %rx_bytes = getelementptr i8, ptr %dev, i32 2712
  %rx_bytes19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 2
  br label %do.body16

do.body16:                                        ; preds = %do.body16.do.body16_crit_edge, %do.body16.preheader
  %call18 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_bytes, align 8
  %12 = ptrtoint ptr %rx_bytes19 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %rx_bytes19, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i146.not = icmp eq i32 %14, %call18
  br i1 %cmp.i.i.i.i146.not, label %do.body25.preheader, label %do.body16.do.body16_crit_edge

do.body16.do.body16_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body16

do.body25.preheader:                              ; preds = %do.body16
  %tx_bytes = getelementptr i8, ptr %dev, i32 2744
  %tx_bytes28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 3
  br label %do.body25

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %do.body25.preheader
  %call27 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %15 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_bytes, align 8
  %17 = ptrtoint ptr %tx_bytes28 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %tx_bytes28, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i147.not = icmp eq i32 %19, %call27
  br i1 %cmp.i.i.i.i147.not, label %do.body34.preheader, label %do.body25.do.body25_crit_edge

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

do.body34.preheader:                              ; preds = %do.body25
  %rx_errors = getelementptr i8, ptr %dev, i32 2728
  %rx_errors37 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 4
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %do.body34.preheader
  %call36 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_errors, align 8
  %22 = ptrtoint ptr %rx_errors37 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rx_errors37, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %23 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i148.not = icmp eq i32 %24, %call36
  br i1 %cmp.i.i.i.i148.not, label %do.body43.preheader, label %do.body34.do.body34_crit_edge

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body34

do.body43.preheader:                              ; preds = %do.body34
  %rx_buff_miss = getelementptr i8, ptr %dev, i32 2752
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 6
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.body43.preheader
  %call45 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %25 = ptrtoint ptr %rx_buff_miss to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_buff_miss, align 8
  %27 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rx_dropped, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %28 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i149.not = icmp eq i32 %29, %call45
  br i1 %cmp.i.i.i.i149.not, label %do.body51.preheader, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

do.body51.preheader:                              ; preds = %do.body43
  %tx_dropped = getelementptr i8, ptr %dev, i32 2760
  %tx_dropped54 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 7
  br label %do.body51

do.body51:                                        ; preds = %do.body51.do.body51_crit_edge, %do.body51.preheader
  %call53 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %30 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_dropped, align 8
  %32 = ptrtoint ptr %tx_dropped54 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %tx_dropped54, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %33 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i150.not = icmp eq i32 %34, %call53
  br i1 %cmp.i.i.i.i150.not, label %do.body60.preheader, label %do.body51.do.body51_crit_edge

do.body51.do.body51_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body51

do.body60.preheader:                              ; preds = %do.body51
  %rx_mcasts = getelementptr i8, ptr %dev, i32 2720
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 8
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %do.body60.preheader
  %call62 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %35 = ptrtoint ptr %rx_mcasts to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_mcasts, align 8
  %37 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %multicast, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %38 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i151.not = icmp eq i32 %39, %call62
  br i1 %cmp.i.i.i.i151.not, label %do.body68.preheader, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body60

do.body68.preheader:                              ; preds = %do.body60
  %rx_buffoflow = getelementptr i8, ptr %dev, i32 2832
  %rx_over_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 11
  br label %do.body68

do.body68:                                        ; preds = %do.body68.do.body68_crit_edge, %do.body68.preheader
  %call70 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %40 = ptrtoint ptr %rx_buffoflow to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_buffoflow, align 8
  %42 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %rx_over_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %43 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i152.not = icmp eq i32 %44, %call70
  br i1 %cmp.i.i.i.i152.not, label %do.body76.preheader, label %do.body68.do.body68_crit_edge

do.body68.do.body68_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

do.body76.preheader:                              ; preds = %do.body68
  %rx_crc = getelementptr i8, ptr %dev, i32 2856
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 12
  br label %do.body76

do.body76:                                        ; preds = %do.body76.do.body76_crit_edge, %do.body76.preheader
  %call78 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %45 = ptrtoint ptr %rx_crc to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_crc, align 8
  %47 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %rx_crc_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i153.not = icmp eq i32 %49, %call78
  br i1 %cmp.i.i.i.i153.not, label %do.body84.preheader, label %do.body76.do.body76_crit_edge

do.body76.do.body76_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body76

do.body84.preheader:                              ; preds = %do.body76
  %rx_oflow802 = getelementptr i8, ptr %dev, i32 2864
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 14
  br label %do.body84

do.body84:                                        ; preds = %do.body84.do.body84_crit_edge, %do.body84.preheader
  %call86 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %50 = ptrtoint ptr %rx_oflow802 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_oflow802, align 8
  %52 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %rx_fifo_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %53 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i154.not = icmp eq i32 %54, %call86
  br i1 %cmp.i.i.i.i154.not, label %do.body92.preheader, label %do.body84.do.body84_crit_edge

do.body84.do.body84_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body84

do.body92.preheader:                              ; preds = %do.body84
  %tx_carrier = getelementptr i8, ptr %dev, i32 2880
  %tx_carrier_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %lst, i32 0, i32 17
  br label %do.body92

do.body92:                                        ; preds = %do.body92.do.body92_crit_edge, %do.body92.preheader
  %call94 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %55 = ptrtoint ptr %tx_carrier to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tx_carrier, align 8
  %57 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %tx_carrier_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %58 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i155.not = icmp eq i32 %59, %call94
  br i1 %cmp.i.i.i.i155.not, label %do.end98, label %do.body92.do.body92_crit_edge

do.body92.do.body92_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @slic_load_firmware(ptr nocapture noundef readonly %sdev) unnamed_addr #2 align 64 {
entry:
  %sectstart = alloca [3 x i32], align 4
  %sectsize = alloca [3 x i32], align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sectstart) #15
  %0 = ptrtoint ptr %sectstart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sectstart, align 4, !annotation !189
  %1 = getelementptr inbounds [3 x i32], ptr %sectstart, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !189
  %3 = getelementptr inbounds [3 x i32], ptr %sectstart, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sectsize) #15
  %5 = ptrtoint ptr %sectsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sectsize, align 4, !annotation !189
  %6 = getelementptr inbounds [3 x i32], ptr %sectsize, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !189
  %8 = getelementptr inbounds [3 x i32], ptr %sectsize, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #15
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !189
  %model = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 16
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %model, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  %cond = select i1 %cmp, ptr @.str.35, ptr @.str.36
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %cond, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #18
  br label %cleanup104

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %20)
  %cmp4 = icmp ult i32 %20, 64
  br i1 %cmp4, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.40, i32 noundef %20, i32 noundef 64) #18
  br label %release

if.end13:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %val.0.copyload.i = load i32, ptr %24, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.copyload.i)
  %cmp15 = icmp eq i32 %val.0.copyload.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp17 = icmp ugt i32 %26, 3
  %or.cond = or i1 %cmp15, %cmp17
  br i1 %or.cond, label %do.end22, label %for.body.preheader

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.43, i32 noundef %26) #18
  br label %release

for.body.preheader:                               ; preds = %if.end13
  %umax = call i32 @llvm.umax.i32(i32 %26, i32 1)
  %mul = shl nuw nsw i32 %26, 3
  %add = or i32 %mul, 4
  %add.ptr.i170 = getelementptr i8, ptr %24, i32 4
  %29 = ptrtoint ptr %add.ptr.i170 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %val.0.copyload.i171 = load i32, ptr %add.ptr.i170, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i171) #15
  %31 = ptrtoint ptr %sectsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sectsize, align 4
  %add30 = add i32 %30, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %exitcond.not = icmp ult i32 %26, 2
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %add.ptr.i170.1 = getelementptr i8, ptr %24, i32 8
  %32 = ptrtoint ptr %add.ptr.i170.1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %val.0.copyload.i171.1 = load i32, ptr %add.ptr.i170.1, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i171.1) #15
  %arrayidx.1 = getelementptr inbounds [3 x i32], ptr %sectsize, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.1, align 4
  %add30.1 = add i32 %33, %add30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax)
  %exitcond.not.1 = icmp eq i32 %umax, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i170.2 = getelementptr i8, ptr %24, i32 12
  %35 = ptrtoint ptr %add.ptr.i170.2 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %val.0.copyload.i171.2 = load i32, ptr %add.ptr.i170.2, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i171.2) #15
  %arrayidx.2 = getelementptr inbounds [3 x i32], ptr %sectsize, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.2, align 4
  %add30.2 = add i32 %36, %add30.1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %add.i172.lcssa = phi i32 [ 8, %for.body.preheader.for.end_crit_edge ], [ 12, %for.body.1.for.end_crit_edge ], [ 16, %for.body.2 ]
  %add30.lcssa = phi i32 [ %add30, %for.body.preheader.for.end_crit_edge ], [ %add30.1, %for.body.1.for.end_crit_edge ], [ %add30.2, %for.body.2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.lcssa, i32 %20)
  %cmp32 = icmp ugt i32 %add30.lcssa, %20
  br i1 %cmp32, label %do.end37, label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.end
  %umax257 = call i32 @llvm.umax.i32(i32 %26, i32 1)
  br label %for.body45

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdev, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.46, i32 noundef %20, i32 noundef %add30.lcssa) #18
  br label %release

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.preheader
  %i.1234 = phi i32 [ %inc49, %for.body45.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %idx.1233 = phi i32 [ %add.i176, %for.body45.for.body45_crit_edge ], [ %add.i172.lcssa, %for.body45.preheader ]
  %add.ptr.i174 = getelementptr i8, ptr %24, i32 %idx.1233
  %40 = ptrtoint ptr %add.ptr.i174 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %val.0.copyload.i175 = load i32, ptr %add.ptr.i174, align 1
  %add.i176 = add i32 %idx.1233, 4
  %41 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i175) #15
  %arrayidx47 = getelementptr [3 x i32], ptr %sectstart, i32 0, i32 %i.1234
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx47, align 4
  %inc49 = add nuw i32 %i.1234, 1
  %exitcond258.not = icmp eq i32 %inc49, %umax257
  br i1 %exitcond258.not, label %for.body55.lr.ph, label %for.body45.for.body45_crit_edge

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body45

for.body55.lr.ph:                                 ; preds = %for.body45
  %add.ptr.i178 = getelementptr i8, ptr %24, i32 %add.i176
  %43 = ptrtoint ptr %add.ptr.i178 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %val.0.copyload.i179 = load i32, ptr %add.ptr.i178, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i179) #15
  %add.i180 = add i32 %idx.1233, 8
  %regs.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  %umax261 = call i32 @llvm.umax.i32(i32 %26, i32 1)
  br label %for.body55

for.body74.lr.ph:                                 ; preds = %for.end67
  %regs.i198 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  %umax265 = call i32 @llvm.umax.i32(i32 %26, i32 1)
  br label %for.body74

for.body55:                                       ; preds = %for.end67.for.body55_crit_edge, %for.body55.lr.ph
  %instr.0245 = phi i32 [ %44, %for.body55.lr.ph ], [ %instr.1.lcssa, %for.end67.for.body55_crit_edge ]
  %sect.0244 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc69, %for.end67.for.body55_crit_edge ]
  %idx.2243 = phi i32 [ %add.i180, %for.body55.lr.ph ], [ %idx.3.lcssa, %for.end67.for.body55_crit_edge ]
  %arrayidx56 = getelementptr [3 x i32], ptr %sectsize, i32 0, i32 %sect.0244
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx56, align 4
  %arrayidx57 = getelementptr [3 x i32], ptr %sectstart, i32 0, i32 %sect.0244
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp59236.not = icmp ult i32 %46, 8
  br i1 %cmp59236.not, label %for.body55.for.end67_crit_edge, label %for.body61.preheader

for.body55.for.end67_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.body61.preheader:                             ; preds = %for.body55
  %shr = lshr i32 %46, 3
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.body61.preheader
  %addr.0239 = phi i32 [ %inc66, %for.body61.for.body61_crit_edge ], [ 0, %for.body61.preheader ]
  %instr.1238 = phi i32 [ %67, %for.body61.for.body61_crit_edge ], [ %instr.0245, %for.body61.preheader ]
  %idx.3237 = phi i32 [ %add.i193, %for.body61.for.body61_crit_edge ], [ %idx.2243, %for.body61.preheader ]
  %add62 = add i32 %addr.0239, %48
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr.i181 = getelementptr i8, ptr %50, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %51 = call i32 @llvm.bswap.i32(i32 %add62) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %51) #15, !srcloc !191
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i183 = getelementptr i8, ptr %53, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %54 = call i32 @llvm.bswap.i32(i32 %instr.1238) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %54) #15, !srcloc !191
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  %data.i184 = getelementptr inbounds %struct.firmware, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %data.i184 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %58, i32 %idx.3237
  %59 = ptrtoint ptr %add.ptr.i185 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %val.0.copyload.i186 = load i32, ptr %add.ptr.i185, align 1
  %add.i187 = add i32 %idx.3237, 4
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %add.ptr.i189 = getelementptr i8, ptr %61, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %val.0.copyload.i186) #15, !srcloc !191
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw, align 4
  %data.i190 = getelementptr inbounds %struct.firmware, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %data.i190 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %65, i32 %add.i187
  %66 = ptrtoint ptr %add.ptr.i191 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %val.0.copyload.i192 = load i32, ptr %add.ptr.i191, align 1
  %add.i193 = add i32 %idx.3237, 8
  %67 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i192) #15
  %inc66 = add nuw nsw i32 %addr.0239, 1
  %exitcond260.not = icmp eq i32 %inc66, %shr
  br i1 %exitcond260.not, label %for.body61.for.end67_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body61

for.body61.for.end67_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

for.end67:                                        ; preds = %for.body61.for.end67_crit_edge, %for.body55.for.end67_crit_edge
  %idx.3.lcssa = phi i32 [ %idx.2243, %for.body55.for.end67_crit_edge ], [ %add.i193, %for.body61.for.end67_crit_edge ]
  %instr.1.lcssa = phi i32 [ %instr.0245, %for.body55.for.end67_crit_edge ], [ %67, %for.body61.for.end67_crit_edge ]
  %inc69 = add nuw i32 %sect.0244, 1
  %exitcond262.not = icmp eq i32 %inc69, %umax261
  br i1 %exitcond262.not, label %for.body74.lr.ph, label %for.end67.for.body55_crit_edge

for.end67.for.body55_crit_edge:                   ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body55

for.body74:                                       ; preds = %cleanup.for.body74_crit_edge, %for.body74.lr.ph
  %sect.1253 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc95, %cleanup.for.body74_crit_edge ]
  %idx.4252 = phi i32 [ %add.i176, %for.body74.lr.ph ], [ %idx.6, %cleanup.for.body74_crit_edge ]
  %arrayidx76 = getelementptr [3 x i32], ptr %sectsize, i32 0, i32 %sect.1253
  %68 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx76, align 4
  %add.i197 = add i32 %idx.4252, 4
  %arrayidx79 = getelementptr [3 x i32], ptr %sectstart, i32 0, i32 %sect.1253
  %70 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %71)
  %cmp80 = icmp ugt i32 %71, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %69)
  %cmp85246 = icmp ugt i32 %69, 7
  %or.cond256 = select i1 %cmp80, i1 %cmp85246, i1 false
  br i1 %or.cond256, label %for.body87.preheader, label %for.body74.cleanup_crit_edge

for.body74.cleanup_crit_edge:                     ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body87.preheader:                             ; preds = %for.body74
  %72 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw, align 4
  %data.i194 = getelementptr inbounds %struct.firmware, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %data.i194 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i194, align 4
  %add.ptr.i195 = getelementptr i8, ptr %75, i32 %idx.4252
  %76 = ptrtoint ptr %add.ptr.i195 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %val.0.copyload.i196 = load i32, ptr %add.ptr.i195, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i196) #15
  %shr77 = lshr i32 %69, 3
  br label %for.body87

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.body87.preheader
  %addr.1249 = phi i32 [ %inc92, %for.body87.for.body87_crit_edge ], [ 0, %for.body87.preheader ]
  %instr.2248 = phi i32 [ %96, %for.body87.for.body87_crit_edge ], [ %77, %for.body87.preheader ]
  %idx.5247 = phi i32 [ %add.i211, %for.body87.for.body87_crit_edge ], [ %add.i197, %for.body87.preheader ]
  %add88 = add i32 %addr.1249, %71
  %or = or i32 %add88, 1073741824
  %78 = ptrtoint ptr %regs.i198 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i198, align 8
  %add.ptr.i199 = getelementptr i8, ptr %79, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %80 = call i32 @llvm.bswap.i32(i32 %or) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %80) #15, !srcloc !191
  %81 = ptrtoint ptr %regs.i198 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i198, align 8
  %add.ptr.i201 = getelementptr i8, ptr %82, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  %83 = call i32 @llvm.bswap.i32(i32 %instr.2248) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %83) #15, !srcloc !191
  %84 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw, align 4
  %data.i202 = getelementptr inbounds %struct.firmware, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i202, align 4
  %add.ptr.i203 = getelementptr i8, ptr %87, i32 %idx.5247
  %88 = ptrtoint ptr %add.ptr.i203 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %val.0.copyload.i204 = load i32, ptr %add.ptr.i203, align 1
  %add.i205 = add i32 %idx.5247, 4
  %89 = ptrtoint ptr %regs.i198 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i198, align 8
  %add.ptr.i207 = getelementptr i8, ptr %90, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %val.0.copyload.i204) #15, !srcloc !191
  %91 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fw, align 4
  %data.i208 = getelementptr inbounds %struct.firmware, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %data.i208 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i208, align 4
  %add.ptr.i209 = getelementptr i8, ptr %94, i32 %add.i205
  %95 = ptrtoint ptr %add.ptr.i209 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %val.0.copyload.i210 = load i32, ptr %add.ptr.i209, align 1
  %add.i211 = add i32 %idx.5247, 8
  %96 = call i32 @llvm.bswap.i32(i32 %val.0.copyload.i210) #15
  %inc92 = add nuw nsw i32 %addr.1249, 1
  %exitcond264.not = icmp eq i32 %inc92, %shr77
  br i1 %exitcond264.not, label %for.body87.cleanup_crit_edge, label %for.body87.for.body87_crit_edge

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body87

for.body87.cleanup_crit_edge:                     ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body87.cleanup_crit_edge, %for.body74.cleanup_crit_edge
  %idx.6 = phi i32 [ %add.i197, %for.body74.cleanup_crit_edge ], [ %add.i211, %for.body87.cleanup_crit_edge ]
  %inc95 = add nuw i32 %sect.1253, 1
  %exitcond266.not = icmp eq i32 %inc95, %umax265
  br i1 %exitcond266.not, label %for.end96, label %cleanup.for.body74_crit_edge

cleanup.for.body74_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body74

for.end96:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  %regs.i212 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  %97 = ptrtoint ptr %regs.i212 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i212, align 8
  %add.ptr.i213 = getelementptr i8, ptr %98, i32 5460
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %101(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #15
  %110 = ptrtoint ptr %regs.i212 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i212, align 8
  %add.ptr.i215 = getelementptr i8, ptr %111, i32 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 128) #15, !srcloc !191
  %112 = ptrtoint ptr %regs.i212 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i212, align 8
  %add.ptr.i217 = getelementptr i8, ptr %113, i32 5460
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #15, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %126(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %127(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %128(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %129(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %130(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %132(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %133(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %134(i32 noundef 214748000) #15
  br label %release

release:                                          ; preds = %for.end96, %do.end37, %do.end22, %do.end9
  %err.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end22 ], [ -22, %do.end37 ], [ 0, %for.end96 ]
  %135 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %136) #15
  br label %cleanup104

cleanup104:                                       ; preds = %release, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.0, %release ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sectsize) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sectstart) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slic_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shmem_data = getelementptr inbounds %struct.slic_device, ptr %dev_id, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %shmem_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shmem_data, align 4
  %regs.i = getelementptr inbounds %struct.slic_device, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #15, !srcloc !191
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 5460
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  tail call void @arm_heavy_mb() #15
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !204
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #15, !srcloc !191
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %12, i32 5460
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi = getelementptr inbounds %struct.slic_device, ptr %dev_id, i32 0, i32 5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slic_free_stat_queue(ptr nocapture noundef readonly %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stq1 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 8
  %mem_size = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 6
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_size, align 4
  %4 = ptrtoint ptr %stq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stq1, align 4
  %arrayidx2 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %idx.neg = sub i32 0, %7
  %add.ptr = getelementptr %struct.slic_stat_desc, ptr %5, i32 %idx.neg
  %arrayidx3 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %sub = sub i32 %9, %7
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 0) #15
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_size, align 4
  %arrayidx.1 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.1, align 4
  %idx.neg.1 = sub i32 0, %17
  %add.ptr.1 = getelementptr %struct.slic_stat_desc, ptr %15, i32 %idx.neg.1
  %arrayidx3.1 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3.1, align 4
  %sub.1 = sub i32 %19, %17
  tail call void @dma_free_attrs(ptr noundef %dev.1, i32 noundef %13, ptr noundef %add.ptr.1, i32 noundef %sub.1, i32 noundef 0) #15
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 8
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mem_size, align 4
  %arrayidx.2 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.2, align 4
  %idx.neg.2 = sub i32 0, %27
  %add.ptr.2 = getelementptr %struct.slic_stat_desc, ptr %25, i32 %idx.neg.2
  %arrayidx3.2 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.2, align 4
  %sub.2 = sub i32 %29, %27
  tail call void @dma_free_attrs(ptr noundef %dev.2, i32 noundef %23, ptr noundef %add.ptr.2, i32 noundef %sub.2, i32 noundef 0) #15
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 8
  %dev.3 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_size, align 4
  %arrayidx.3 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 2, i32 3
  %36 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.3, align 4
  %idx.neg.3 = sub i32 0, %37
  %add.ptr.3 = getelementptr %struct.slic_stat_desc, ptr %35, i32 %idx.neg.3
  %arrayidx3.3 = getelementptr %struct.slic_device, ptr %sdev, i32 0, i32 8, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.3, align 4
  %sub.3 = sub i32 %39, %37
  tail call void @dma_free_attrs(ptr noundef %dev.3, i32 noundef %33, ptr noundef %add.ptr.3, i32 noundef %sub.3, i32 noundef 0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slic_free_tx_queue(ptr nocapture noundef readonly %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %txq1 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 7
  %len = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %txbuffs = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %txbuffs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txbuffs, align 4
  %arrayidx = getelementptr %struct.slic_tx_buffer, ptr %3, i32 %i.018
  %4 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq1, align 4
  %desc = getelementptr %struct.slic_tx_buffer, ptr %3, i32 %i.018, i32 3
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %desc_paddr = getelementptr %struct.slic_tx_buffer, ptr %3, i32 %i.018, i32 4
  %8 = ptrtoint ptr %desc_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_paddr, align 4
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %map_addr = getelementptr %struct.slic_tx_buffer, ptr %3, i32 %i.018, i32 1
  %14 = ptrtoint ptr %map_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %map_addr, align 4
  %map_len = getelementptr %struct.slic_tx_buffer, ptr %3, i32 %i.018, i32 2
  %16 = ptrtoint ptr %map_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %19) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txq1, align 4
  tail call void @dma_pool_destroy(ptr noundef %23) #15
  %txbuffs4 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %txbuffs4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txbuffs4, align 4
  tail call void @kfree(ptr noundef %25) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slic_refill_rx_queue(ptr nocapture noundef %sdev, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq1 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 6
  %netdev = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %put_idx.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 6, i32 3
  %done_idx.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 6, i32 2
  %len.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %put_idx.i, align 4
  %4 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %done_idx.i, align 4
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i65 = icmp ugt i32 %5, %3
  %8 = xor i32 %3, -1
  %sub4.i.i66 = add i32 %5, %8
  %sub2.i.i67 = select i1 %cmp.not.i.i65, i32 0, i32 %7
  %retval.0.i.i68 = add i32 %sub4.i.i66, %sub2.i.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i68)
  %cmp69 = icmp ugt i32 %retval.0.i.i68, 1
  br i1 %cmp69, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %call.i = tail call ptr @__alloc_skb(i32 noundef 2303, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %call.i58 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %12) #15
  br i1 %call.i58, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !195

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i59 = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.59, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %call16.i, ptr noundef %retval.0.i.i59) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %12, i32 noundef 2048) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %12 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %19 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev6, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.58) #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #15
  br label %while.end

if.end10:                                         ; preds = %dma_map_single_attrs.exit
  %and = and i32 %retval.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub nuw nsw i32 256, %and
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr.i60 = getelementptr i8, ptr %22, i32 %sub
  store ptr %add.ptr.i60, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %offset.0 = phi i32 [ %sub, %if.then12 ], [ 0, %if.end10.if.end13_crit_edge ]
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %add17 = add nuw nsw i32 %offset.0, 28
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev16, i32 noundef %retval.0.i, i32 noundef %add17, i32 noundef 2) #15
  %status = getelementptr inbounds %struct.slic_rx_desc, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %status, align 4
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev19, i32 noundef %retval.0.i, i32 noundef %add17, i32 noundef 2) #15
  %32 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxq1, align 4
  %34 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %put_idx.i, align 4
  %arrayidx = getelementptr %struct.slic_rx_buffer, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %arrayidx, align 4
  %map_addr = getelementptr %struct.slic_rx_buffer, ptr %33, i32 %35, i32 1
  %37 = ptrtoint ptr %map_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i, ptr %map_addr, align 4
  %map_len = getelementptr %struct.slic_rx_buffer, ptr %33, i32 %35, i32 2
  %38 = ptrtoint ptr %map_len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2048, ptr %map_len, align 4
  %addr_offset = getelementptr %struct.slic_rx_buffer, ptr %33, i32 %35, i32 3
  %39 = ptrtoint ptr %addr_offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %offset.0, ptr %addr_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !205
  tail call void @arm_heavy_mb() #15
  %add23 = add i32 %offset.0, %retval.0.i
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %42 = tail call i32 @llvm.bswap.i32(i32 %add23) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %42) #15, !srcloc !191
  %43 = ptrtoint ptr %put_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %put_idx.i, align 4
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %add.i = add i32 %44, 1
  %sub.i62 = add i32 %46, -1
  %and.i63 = and i32 %sub.i62, %add.i
  store i32 %and.i63, ptr %put_idx.i, align 4
  %47 = ptrtoint ptr %done_idx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %done_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %and.i63)
  %cmp.not.i.i = icmp ugt i32 %48, %and.i63
  %notlhs = sub i32 0, %46
  %notrhs = sub i32 -2, %44
  %49 = or i32 %notrhs, %notlhs
  %sub4.i.i = add i32 %48, %49
  %sub2.i.i = select i1 %cmp.not.i.i, i32 0, i32 %46
  %retval.0.i.i = add i32 %sub4.i.i, %sub2.i.i
  %cmp = icmp ugt i32 %retval.0.i.i, 1
  br i1 %cmp, label %if.end13.while.body_crit_edge, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.then9, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @slic_queue_upr(ptr noundef %sdev, ptr noundef %upr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %upr_list1 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10
  %lock = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %0 = ptrtoint ptr %upr_list1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %upr_list1, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %list = getelementptr inbounds %struct.slic_upr, ptr %upr, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.slic_upr, ptr %upr, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %list4 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10, i32 1
  %prev.i15 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i15, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %list4) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i15, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list4, ptr %list, align 4
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %10 = ptrtoint ptr %upr_list1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %upr_list1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br i1 %tobool.not, label %if.then, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %type.i = getelementptr inbounds %struct.slic_upr, ptr %upr, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  %cond.i = select i1 %cmp.i, i32 104, i32 72
  %13 = ptrtoint ptr %upr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %upr, align 4
  %regs.i.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #15, !srcloc !191
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %19, i32 5460
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !206
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #15
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #15
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #15
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !207
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !197

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !208
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !209
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !210
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slic_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #15
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @slic_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = call ptr @memcpy(ptr %data, ptr @slic_stats_strings, i32 736)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slic_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %eth_stats, ptr noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 2704
  %syncp = getelementptr i8, ptr %dev, i32 2888
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call2 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %3 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %4, %call2
  br i1 %cmp.i.i.i.i.not, label %do.body6.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body6.preheader:                               ; preds = %do.body
  %rx_bytes = getelementptr i8, ptr %dev, i32 2712
  %arrayidx9 = getelementptr i64, ptr %data, i32 1
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %do.body6.preheader
  %call8 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %5 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rx_bytes, align 8
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx9, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i293.not = icmp eq i32 %9, %call8
  br i1 %cmp.i.i.i.i293.not, label %do.body15.preheader, label %do.body6.do.body6_crit_edge

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

do.body15.preheader:                              ; preds = %do.body6
  %rx_mcasts = getelementptr i8, ptr %dev, i32 2720
  %arrayidx18 = getelementptr i64, ptr %data, i32 2
  br label %do.body15

do.body15:                                        ; preds = %do.body15.do.body15_crit_edge, %do.body15.preheader
  %call17 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %10 = ptrtoint ptr %rx_mcasts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_mcasts, align 8
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i294.not = icmp eq i32 %14, %call17
  br i1 %cmp.i.i.i.i294.not, label %do.body24.preheader, label %do.body15.do.body15_crit_edge

do.body15.do.body15_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

do.body24.preheader:                              ; preds = %do.body15
  %rx_errors = getelementptr i8, ptr %dev, i32 2728
  %arrayidx27 = getelementptr i64, ptr %data, i32 3
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %do.body24.preheader
  %call26 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %15 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_errors, align 8
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx27, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i295.not = icmp eq i32 %19, %call26
  br i1 %cmp.i.i.i.i295.not, label %do.body33.preheader, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body24

do.body33.preheader:                              ; preds = %do.body24
  %rx_buff_miss = getelementptr i8, ptr %dev, i32 2752
  %arrayidx36 = getelementptr i64, ptr %data, i32 4
  br label %do.body33

do.body33:                                        ; preds = %do.body33.do.body33_crit_edge, %do.body33.preheader
  %call35 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %20 = ptrtoint ptr %rx_buff_miss to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_buff_miss, align 8
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx36, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %23 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i296.not = icmp eq i32 %24, %call35
  br i1 %cmp.i.i.i.i296.not, label %do.body42.preheader, label %do.body33.do.body33_crit_edge

do.body33.do.body33_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body33

do.body42.preheader:                              ; preds = %do.body33
  %rx_tpcsum = getelementptr i8, ptr %dev, i32 2776
  %arrayidx45 = getelementptr i64, ptr %data, i32 5
  br label %do.body42

do.body42:                                        ; preds = %do.body42.do.body42_crit_edge, %do.body42.preheader
  %call44 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %25 = ptrtoint ptr %rx_tpcsum to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_tpcsum, align 8
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx45, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %28 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i297.not = icmp eq i32 %29, %call44
  br i1 %cmp.i.i.i.i297.not, label %do.body51.preheader, label %do.body42.do.body42_crit_edge

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body42

do.body51.preheader:                              ; preds = %do.body42
  %rx_tpoflow = getelementptr i8, ptr %dev, i32 2784
  %arrayidx54 = getelementptr i64, ptr %data, i32 6
  br label %do.body51

do.body51:                                        ; preds = %do.body51.do.body51_crit_edge, %do.body51.preheader
  %call53 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %30 = ptrtoint ptr %rx_tpoflow to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_tpoflow, align 8
  %32 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx54, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %33 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i298.not = icmp eq i32 %34, %call53
  br i1 %cmp.i.i.i.i298.not, label %do.body60.preheader, label %do.body51.do.body51_crit_edge

do.body51.do.body51_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body51

do.body60.preheader:                              ; preds = %do.body51
  %rx_tphlen = getelementptr i8, ptr %dev, i32 2792
  %arrayidx63 = getelementptr i64, ptr %data, i32 7
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %do.body60.preheader
  %call62 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %35 = ptrtoint ptr %rx_tphlen to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_tphlen, align 8
  %37 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx63, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %38 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i299.not = icmp eq i32 %39, %call62
  br i1 %cmp.i.i.i.i299.not, label %do.body69.preheader, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body60

do.body69.preheader:                              ; preds = %do.body60
  %rx_ipcsum = getelementptr i8, ptr %dev, i32 2800
  %arrayidx72 = getelementptr i64, ptr %data, i32 8
  br label %do.body69

do.body69:                                        ; preds = %do.body69.do.body69_crit_edge, %do.body69.preheader
  %call71 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %40 = ptrtoint ptr %rx_ipcsum to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_ipcsum, align 8
  %42 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx72, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %43 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i300.not = icmp eq i32 %44, %call71
  br i1 %cmp.i.i.i.i300.not, label %do.body78.preheader, label %do.body69.do.body69_crit_edge

do.body69.do.body69_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

do.body78.preheader:                              ; preds = %do.body69
  %rx_iplen = getelementptr i8, ptr %dev, i32 2808
  %arrayidx81 = getelementptr i64, ptr %data, i32 9
  br label %do.body78

do.body78:                                        ; preds = %do.body78.do.body78_crit_edge, %do.body78.preheader
  %call80 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %45 = ptrtoint ptr %rx_iplen to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_iplen, align 8
  %47 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx81, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i301.not = icmp eq i32 %49, %call80
  br i1 %cmp.i.i.i.i301.not, label %do.body87.preheader, label %do.body78.do.body78_crit_edge

do.body78.do.body78_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body78

do.body87.preheader:                              ; preds = %do.body78
  %rx_iphlen = getelementptr i8, ptr %dev, i32 2816
  %arrayidx90 = getelementptr i64, ptr %data, i32 10
  br label %do.body87

do.body87:                                        ; preds = %do.body87.do.body87_crit_edge, %do.body87.preheader
  %call89 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %50 = ptrtoint ptr %rx_iphlen to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_iphlen, align 8
  %52 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx90, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %53 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i302.not = icmp eq i32 %54, %call89
  br i1 %cmp.i.i.i.i302.not, label %do.body96.preheader, label %do.body87.do.body87_crit_edge

do.body87.do.body87_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body87

do.body96.preheader:                              ; preds = %do.body87
  %rx_early = getelementptr i8, ptr %dev, i32 2824
  %arrayidx99 = getelementptr i64, ptr %data, i32 11
  br label %do.body96

do.body96:                                        ; preds = %do.body96.do.body96_crit_edge, %do.body96.preheader
  %call98 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %55 = ptrtoint ptr %rx_early to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_early, align 8
  %57 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx99, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %58 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i303.not = icmp eq i32 %59, %call98
  br i1 %cmp.i.i.i.i303.not, label %do.body105.preheader, label %do.body96.do.body96_crit_edge

do.body96.do.body96_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body96

do.body105.preheader:                             ; preds = %do.body96
  %rx_buffoflow = getelementptr i8, ptr %dev, i32 2832
  %arrayidx108 = getelementptr i64, ptr %data, i32 12
  br label %do.body105

do.body105:                                       ; preds = %do.body105.do.body105_crit_edge, %do.body105.preheader
  %call107 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %60 = ptrtoint ptr %rx_buffoflow to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_buffoflow, align 8
  %62 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx108, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %63 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i304.not = icmp eq i32 %64, %call107
  br i1 %cmp.i.i.i.i304.not, label %do.body114.preheader, label %do.body105.do.body105_crit_edge

do.body105.do.body105_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body105

do.body114.preheader:                             ; preds = %do.body105
  %rx_lcode = getelementptr i8, ptr %dev, i32 2840
  %arrayidx117 = getelementptr i64, ptr %data, i32 13
  br label %do.body114

do.body114:                                       ; preds = %do.body114.do.body114_crit_edge, %do.body114.preheader
  %call116 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %65 = ptrtoint ptr %rx_lcode to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rx_lcode, align 8
  %67 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %arrayidx117, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %68 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i305.not = icmp eq i32 %69, %call116
  br i1 %cmp.i.i.i.i305.not, label %do.body123.preheader, label %do.body114.do.body114_crit_edge

do.body114.do.body114_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body114

do.body123.preheader:                             ; preds = %do.body114
  %rx_drbl = getelementptr i8, ptr %dev, i32 2848
  %arrayidx126 = getelementptr i64, ptr %data, i32 14
  br label %do.body123

do.body123:                                       ; preds = %do.body123.do.body123_crit_edge, %do.body123.preheader
  %call125 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %70 = ptrtoint ptr %rx_drbl to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rx_drbl, align 8
  %72 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx126, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %73 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i306.not = icmp eq i32 %74, %call125
  br i1 %cmp.i.i.i.i306.not, label %do.body132.preheader, label %do.body123.do.body123_crit_edge

do.body123.do.body123_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body123

do.body132.preheader:                             ; preds = %do.body123
  %rx_crc = getelementptr i8, ptr %dev, i32 2856
  %arrayidx135 = getelementptr i64, ptr %data, i32 15
  br label %do.body132

do.body132:                                       ; preds = %do.body132.do.body132_crit_edge, %do.body132.preheader
  %call134 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %75 = ptrtoint ptr %rx_crc to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %rx_crc, align 8
  %77 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx135, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %78 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i307.not = icmp eq i32 %79, %call134
  br i1 %cmp.i.i.i.i307.not, label %do.body141.preheader, label %do.body132.do.body132_crit_edge

do.body132.do.body132_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body132

do.body141.preheader:                             ; preds = %do.body132
  %rx_oflow802 = getelementptr i8, ptr %dev, i32 2864
  %arrayidx144 = getelementptr i64, ptr %data, i32 16
  br label %do.body141

do.body141:                                       ; preds = %do.body141.do.body141_crit_edge, %do.body141.preheader
  %call143 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %80 = ptrtoint ptr %rx_oflow802 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %rx_oflow802, align 8
  %82 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %arrayidx144, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %83 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i308.not = icmp eq i32 %84, %call143
  br i1 %cmp.i.i.i.i308.not, label %do.body150.preheader, label %do.body141.do.body141_crit_edge

do.body141.do.body141_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body141

do.body150.preheader:                             ; preds = %do.body141
  %rx_uflow802 = getelementptr i8, ptr %dev, i32 2872
  %arrayidx153 = getelementptr i64, ptr %data, i32 17
  br label %do.body150

do.body150:                                       ; preds = %do.body150.do.body150_crit_edge, %do.body150.preheader
  %call152 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %85 = ptrtoint ptr %rx_uflow802 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %rx_uflow802, align 8
  %87 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %arrayidx153, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %88 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i309.not = icmp eq i32 %89, %call152
  br i1 %cmp.i.i.i.i309.not, label %do.body159.preheader, label %do.body150.do.body150_crit_edge

do.body150.do.body150_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body150

do.body159.preheader:                             ; preds = %do.body150
  %tx_packets = getelementptr i8, ptr %dev, i32 2736
  %arrayidx162 = getelementptr i64, ptr %data, i32 18
  br label %do.body159

do.body159:                                       ; preds = %do.body159.do.body159_crit_edge, %do.body159.preheader
  %call161 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %90 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx_packets, align 8
  %92 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx162, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %93 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i310.not = icmp eq i32 %94, %call161
  br i1 %cmp.i.i.i.i310.not, label %do.body168.preheader, label %do.body159.do.body159_crit_edge

do.body159.do.body159_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body159

do.body168.preheader:                             ; preds = %do.body159
  %tx_bytes = getelementptr i8, ptr %dev, i32 2744
  %arrayidx171 = getelementptr i64, ptr %data, i32 19
  br label %do.body168

do.body168:                                       ; preds = %do.body168.do.body168_crit_edge, %do.body168.preheader
  %call170 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %95 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %tx_bytes, align 8
  %97 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %arrayidx171, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %98 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i311.not = icmp eq i32 %99, %call170
  br i1 %cmp.i.i.i.i311.not, label %do.body177.preheader, label %do.body168.do.body168_crit_edge

do.body168.do.body168_crit_edge:                  ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body168

do.body177.preheader:                             ; preds = %do.body168
  %tx_carrier = getelementptr i8, ptr %dev, i32 2880
  %arrayidx180 = getelementptr i64, ptr %data, i32 20
  br label %do.body177

do.body177:                                       ; preds = %do.body177.do.body177_crit_edge, %do.body177.preheader
  %call179 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %100 = ptrtoint ptr %tx_carrier to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tx_carrier, align 8
  %102 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %arrayidx180, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %103 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i312.not = icmp eq i32 %104, %call179
  br i1 %cmp.i.i.i.i312.not, label %do.body186.preheader, label %do.body177.do.body177_crit_edge

do.body177.do.body177_crit_edge:                  ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body177

do.body186.preheader:                             ; preds = %do.body177
  %tx_dropped = getelementptr i8, ptr %dev, i32 2760
  %arrayidx189 = getelementptr i64, ptr %data, i32 21
  br label %do.body186

do.body186:                                       ; preds = %do.body186.do.body186_crit_edge, %do.body186.preheader
  %call188 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %105 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tx_dropped, align 8
  %107 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %arrayidx189, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %108 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i313.not = icmp eq i32 %109, %call188
  br i1 %cmp.i.i.i.i313.not, label %do.body195.preheader, label %do.body186.do.body186_crit_edge

do.body186.do.body186_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body186

do.body195.preheader:                             ; preds = %do.body186
  %irq_errs = getelementptr i8, ptr %dev, i32 2768
  %arrayidx198 = getelementptr i64, ptr %data, i32 22
  br label %do.body195

do.body195:                                       ; preds = %do.body195.do.body195_crit_edge, %do.body195.preheader
  %call197 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %110 = ptrtoint ptr %irq_errs to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %irq_errs, align 8
  %112 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %111, ptr %arrayidx198, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  %113 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i314.not = icmp eq i32 %114, %call197
  br i1 %cmp.i.i.i.i314.not, label %do.end202, label %do.body195.do.body195_crit_edge

do.body195.do.body195_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body195

do.end202:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slic_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 23, i32 -95
  ret i32 %.
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @slic_dequeue_upr(ptr noundef %sdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %upr_list1 = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10
  %lock = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %list = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.if.end13.thread_crit_edge, label %if.then

entry.if.end13.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.thread

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list, align 4
  %cmp.i27.not = icmp eq ptr %11, %list
  br i1 %cmp.i27.not, label %if.then7, label %if.end13

if.then7:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %upr_list1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %upr_list1, align 4
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.then7, %entry.if.end13.thread_crit_edge
  %upr.0.ph = phi ptr [ %add.ptr, %if.then7 ], [ null, %entry.if.end13.thread_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  br label %if.end17

if.end13:                                         ; preds = %list_del.exit
  %add.ptr12 = getelementptr i8, ptr %11, i32 -8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  %tobool15.not = icmp eq ptr %add.ptr12, null
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %type.i = getelementptr i8, ptr %11, i32 -4
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i29 = icmp eq i32 %14, 1
  %cond.i = select i1 %cmp.i29, i32 104, i32 72
  %15 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr12, align 4
  %regs.i.i = getelementptr inbounds %struct.slic_device, ptr %sdev, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !190
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #15, !srcloc !191
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 5460
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #15, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !193
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge, %if.end13.thread
  %upr.033 = phi ptr [ %upr.0.ph, %if.end13.thread ], [ %add.ptr, %if.then16 ], [ %add.ptr, %if.end13.if.end17_crit_edge ]
  ret ptr %upr.033
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !212
  %5 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !213
  %14 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !214
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !215
  %33 = tail call i32 @llvm.read_register.i32(metadata !179) #15
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !195

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !216
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #15
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #15
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !177}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__UNIQUE_ID_firmware341, !1, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1038, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware342, !3, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1039, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware343, !5, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1106, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware344, !7, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1107, i32 1}
!8 = !{ptr @__initcall__kmod_slicoss__345_1848_slic_driver_init6, !9, !"__initcall__kmod_slicoss__345_1848_slic_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1848, i32 1}
!10 = !{ptr @__exitcall_slic_driver_exit, !9, !"__exitcall_slic_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description346, !12, !"__UNIQUE_ID_description346", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1850, i32 1}
!13 = !{ptr @__UNIQUE_ID_author347, !14, !"__UNIQUE_ID_author347", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1851, i32 1}
!15 = !{ptr @__UNIQUE_ID_file348, !16, !"__UNIQUE_ID_file348", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1852, i32 1}
!17 = !{ptr @__UNIQUE_ID_license349, !16, !"__UNIQUE_ID_license349", i1 false, i1 false}
!18 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @slic_driver, !20, !"slic_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1841, i32 26}
!21 = !{ptr @slic_id_tbl, !22, !"slic_id_tbl", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 30, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1747, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @slic_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @slic_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1758, i32 3}
!33 = !{ptr @slic_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @slic_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1766, i32 3}
!37 = !{ptr @slic_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @slic_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1772, i32 3}
!41 = !{ptr @slic_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @slic_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1795, i32 3}
!45 = !{ptr @slic_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @slic_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1802, i32 3}
!49 = !{ptr @slic_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @slic_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1811, i32 3}
!53 = !{ptr @slic_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @slic_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @slic_netdev_ops, !56, !"slic_netdev_ops", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1546, i32 36}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1358, i32 19}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1263, i32 28}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1269, i32 28}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1276, i32 7}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1286, i32 28}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1292, i32 28}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1298, i32 28}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1322, i32 28}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1332, i32 8}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1234, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @slic_init_shmem._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @slic_init_shmem._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1126, i32 46}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1127, i32 11}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1130, i32 3}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @slic_load_firmware._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @slic_load_firmware._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1137, i32 3}
!91 = !{ptr @slic_load_firmware._entry.39, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @slic_load_firmware._entry_ptr.41, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1146, i32 3}
!95 = !{ptr @slic_load_firmware._entry.42, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @slic_load_firmware._entry_ptr.44, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1160, i32 3}
!99 = !{ptr @slic_load_firmware._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @slic_load_firmware._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1051, i32 46}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1052, i32 11}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1055, i32 3}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @slic_load_rcvseq_firmware._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @slic_load_rcvseq_firmware._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1063, i32 3}
!112 = !{ptr @slic_load_rcvseq_firmware._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @slic_load_rcvseq_firmware._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1074, i32 3}
!116 = !{ptr @slic_load_rcvseq_firmware._entry.55, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @slic_load_rcvseq_firmware._entry_ptr.57, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 413, i32 20}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 852, i32 34}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 857, i32 28}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 867, i32 8}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 790, i32 8}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1418, i32 19}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1427, i32 19}
!136 = !{ptr @slic_ethtool_ops, !137, !"slic_ethtool_ops", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1538, i32 33}
!138 = !{ptr @slic_stats_strings, !139, !"slic_stats_strings", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 38, i32 19}
!140 = !{ptr @slic_init.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1674, i32 2}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @slic_init.__key.68, !144, !"__key", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1675, i32 2}
!145 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @slic_init.__key.70, !147, !"__key", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1677, i32 2}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @slic_init.__key.72, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1678, i32 2}
!151 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1684, i32 3}
!154 = !{ptr @slic_init._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @slic_init._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @slic_init._entry.75, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1691, i32 3}
!158 = !{ptr @slic_init._entry_ptr.76, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1697, i32 3}
!161 = !{ptr @slic_init._entry.77, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @slic_init._entry_ptr.79, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1626, i32 4}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @slic_read_eeprom._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @slic_read_eeprom._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 1658, i32 3}
!170 = !{ptr @slic_read_eeprom._entry.82, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @slic_read_eeprom._entry_ptr.84, !169, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!174 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 659, i32 29}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/alacritech/slicoss.c", i32 364, i32 9}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i64 2152567436}
!191 = !{i64 5025314}
!192 = !{i64 5025732}
!193 = !{i64 2152566081}
!194 = !{i64 2150017983}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{i8 0, i8 2}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 2156573720}
!199 = !{i64 2156560738}
!200 = !{i64 2156582628}
!201 = !{i64 2156609378}
!202 = !{i64 2150017333}
!203 = !{i64 2156582792}
!204 = !{i64 2156582886}
!205 = !{i64 2156574069}
!206 = !{i64 647678, i64 647739}
!207 = !{i64 650410}
!208 = !{i64 650695}
!209 = !{i64 2154817133}
!210 = !{i64 2154816975}
!211 = !{i64 2154817303}
!212 = !{i64 2149909665}
!213 = !{i64 2149914597}
!214 = !{i64 2149936309}
!215 = !{i64 2149941201}
!216 = !{i64 2150017658}
