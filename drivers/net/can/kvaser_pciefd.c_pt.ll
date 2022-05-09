; ModuleID = '/llk/IR_all_yes/drivers/net/can/kvaser_pciefd.c_pt.bc'
source_filename = "../drivers/net/can/kvaser_pciefd.c"
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
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.kvaser_pciefd = type { ptr, ptr, [4 x ptr], [2 x ptr], i8, i32, i32, i32 }
%struct.kvaser_pciefd_can = type { %struct.can_priv, ptr, ptr, %struct.can_berr_counter, i8, i32, i32, %struct.spinlock, %struct.spinlock, %struct.timer_list, %struct.completion, %struct.completion }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.kvaser_pciefd_cfg_img = type { i32, i32, i32, [256 x %struct.kvaser_pciefd_cfg_param] }
%struct.kvaser_pciefd_cfg_param = type { i32, i32, i32, [24 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.kvaser_pciefd_tx_packet = type { [2 x i32], [64 x i8] }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.147, i8, i8, i8, [8 x i8] }
%union.anon.147 = type { i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.kvaser_pciefd_rx_packet = type { [2 x i32], i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__UNIQUE_ID_file461 = internal constant [49 x i8] c"kvaser_pciefd.file=drivers/net/can/kvaser_pciefd\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [35 x i8] c"kvaser_pciefd.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author463 = internal constant [52 x i8] c"kvaser_pciefd.author=Kvaser AB <support@kvaser.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description464 = internal constant [65 x i8] c"kvaser_pciefd.description=CAN driver for Kvaser CAN/PCIe devices\00", section ".modinfo", align 1
@__initcall__kmod_kvaser_pciefd__467_1919_kvaser_pciefd_init6 = internal global ptr @kvaser_pciefd_init, section ".initcall6.init", align 4
@kvaser_pciefd = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @kvaser_pciefd_id_table, ptr @kvaser_pciefd_probe, ptr @kvaser_pciefd_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_kvaser_pciefd_exit = internal global ptr @kvaser_pciefd_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kvaser_pciefd\00", [18 x i8] zeroinitializer }, align 32
@kvaser_pciefd_id_table = internal global { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 6663, i32 13, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6663, i32 14, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6663, i32 15, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6663, i32 16, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6663, i32 17, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Number of channels does not match: %u vs %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kvaser_pciefd_setup_board\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/can/kvaser_pciefd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_board._entry_ptr = internal global ptr @kvaser_pciefd_setup_board._entry, section ".printk_index", align 4
@kvaser_pciefd_setup_board.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Version %u.%u.%u\0A\00", [46 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_board._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Hardware without DMA is not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_board._entry_ptr.9 = internal global ptr @kvaser_pciefd_setup_board._entry.7, section ".printk_index", align 4
@kvaser_pciefd_read_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Flash id is 0x%x instead of expected EPCS16 (0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kvaser_pciefd_read_cfg\00", [41 x i8] zeroinitializer }, align 32
@kvaser_pciefd_read_cfg._entry_ptr = internal global ptr @kvaser_pciefd_read_cfg._entry, section ".printk_index", align 4
@kvaser_pciefd_read_cfg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected WIP bit set in flash\0A\00", [63 x i8] zeroinitializer }, align 32
@kvaser_pciefd_read_cfg._entry_ptr.14 = internal global ptr @kvaser_pciefd_read_cfg._entry.12, section ".printk_index", align 4
@kvaser_pciefd_spi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flash SPI transfer failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kvaser_pciefd_spi_cmd\00", [42 x i8] zeroinitializer }, align 32
@kvaser_pciefd_spi_cmd._entry_ptr = internal global ptr @kvaser_pciefd_spi_cmd._entry, section ".printk_index", align 4
@kvaser_pciefd_cfg_read_and_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Config flash corrupted, version number is wrong\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kvaser_pciefd_cfg_read_and_verify\00", [62 x i8] zeroinitializer }, align 32
@kvaser_pciefd_cfg_read_and_verify._entry_ptr = internal global ptr @kvaser_pciefd_cfg_read_and_verify._entry, section ".printk_index", align 4
@kvaser_pciefd_cfg_read_and_verify._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Config flash corrupted, magic number is wrong\0A\00", [49 x i8] zeroinitializer }, align 32
@kvaser_pciefd_cfg_read_and_verify._entry_ptr.21 = internal global ptr @kvaser_pciefd_cfg_read_and_verify._entry.19, section ".printk_index", align 4
@kvaser_pciefd_cfg_read_and_verify._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Stored CRC does not match flash image contents\0A\00", [48 x i8] zeroinitializer }, align 32
@kvaser_pciefd_cfg_read_and_verify._entry_ptr.24 = internal global ptr @kvaser_pciefd_cfg_read_and_verify._entry.22, section ".printk_index", align 4
@kvaser_pciefd_setup_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1072, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rx dma_alloc(%u) failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kvaser_pciefd_setup_dma\00", [40 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_dma._entry_ptr = internal global ptr @kvaser_pciefd_setup_dma._entry, section ".printk_index", align 4
@kvaser_pciefd_setup_dma._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1086, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA not idle before enabling\0A\00", [34 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_dma._entry_ptr.29 = internal global ptr @kvaser_pciefd_setup_dma._entry.27, section ".printk_index", align 4
@kvaser_pciefd_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @kvaser_pciefd_open, ptr @kvaser_pciefd_stop, ptr @kvaser_pciefd_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&can->bec_poll_timer)\00", [41 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 964, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Max Tx count is smaller than expected\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kvaser_pciefd_setup_can_ctrls\00", [34 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls._entry_ptr = internal global ptr @kvaser_pciefd_setup_can_ctrls._entry, section ".printk_index", align 4
@kvaser_pciefd_setup_can_ctrls.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&can->echo_lock\00", [16 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&can->lock\00", [21 x i8] zeroinitializer }, align 32
@kvaser_pciefd_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"kvaser_pciefd\00\00\00", i32 1, i32 512, i32 1, i32 32, i32 16, i32 1, i32 8192, i32 1 }, [48 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 992, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CAN FD not supported as expected %d\0A\00", [59 x i8] zeroinitializer }, align 32
@kvaser_pciefd_setup_can_ctrls._entry_ptr.39 = internal global ptr @kvaser_pciefd_setup_can_ctrls._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout during bus on flush\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout during bus on reset\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Timeout during stop\0A\00", [43 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kvaser_pciefd_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IRQ mask points to unallocated controller\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kvaser_pciefd_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@kvaser_pciefd_irq_handler._entry_ptr = internal global ptr @kvaser_pciefd_irq_handler._entry, section ".printk_index", align 4
@kvaser_pciefd_receive_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA IRQ error 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kvaser_pciefd_receive_irq\00", [38 x i8] zeroinitializer }, align 32
@kvaser_pciefd_receive_irq._entry_ptr = internal global ptr @kvaser_pciefd_receive_irq._entry, section ".printk_index", align 4
@kvaser_pciefd_read_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 1641, ptr @.str.51, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Received unexpected packet type 0x%08X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kvaser_pciefd_read_packet\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kvaser_pciefd_read_packet._entry_ptr = internal global ptr @kvaser_pciefd_read_packet._entry, section ".printk_index", align 4
@kvaser_pciefd_read_packet._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.3, i32 1645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown packet type 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@kvaser_pciefd_read_packet._entry_ptr.54 = internal global ptr @kvaser_pciefd_read_packet._entry.52, section ".printk_index", align 4
@kvaser_pciefd_handle_ack_packet.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 -128, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kvaser_pciefd_handle_ack_packet\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Packet was flushed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No memory left for err_skb\0A\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx FIFO overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Fail to change bittiming, when not in reset mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CAN FD frame in CAN mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx FIFO overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.62 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"kvaser_pciefd\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1912, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1919, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"kvaser_pciefd_id_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 317, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1110, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1121, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1128, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 456, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 471, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 380, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 409, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 415, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 422, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1071, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1086, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [25 x i8] c"kvaser_pciefd_netdev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 919, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 953, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 963, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 973, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 974, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"kvaser_pciefd_bittiming_const\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 291, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 991, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 612, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 630, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 718, i32 28 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 104, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 87, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1752, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1700, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1640, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1645, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1539, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1514, i32 29 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1711, i32 28 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1724, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1727, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [35 x i8] c"../drivers/net/can/kvaser_pciefd.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 1730, i32 28 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_license462, ptr @__exitcall_kvaser_pciefd_exit, ptr @__initcall__kmod_kvaser_pciefd__467_1919_kvaser_pciefd_init6, ptr @kvaser_pciefd_cfg_read_and_verify._entry, ptr @kvaser_pciefd_cfg_read_and_verify._entry.19, ptr @kvaser_pciefd_cfg_read_and_verify._entry.22, ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr, ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr.21, ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr.24, ptr @kvaser_pciefd_exit, ptr @kvaser_pciefd_irq_handler._entry, ptr @kvaser_pciefd_irq_handler._entry_ptr, ptr @kvaser_pciefd_read_cfg._entry, ptr @kvaser_pciefd_read_cfg._entry.12, ptr @kvaser_pciefd_read_cfg._entry_ptr, ptr @kvaser_pciefd_read_cfg._entry_ptr.14, ptr @kvaser_pciefd_read_packet._entry, ptr @kvaser_pciefd_read_packet._entry.52, ptr @kvaser_pciefd_read_packet._entry_ptr, ptr @kvaser_pciefd_read_packet._entry_ptr.54, ptr @kvaser_pciefd_receive_irq._entry, ptr @kvaser_pciefd_receive_irq._entry_ptr, ptr @kvaser_pciefd_setup_board._entry, ptr @kvaser_pciefd_setup_board._entry.7, ptr @kvaser_pciefd_setup_board._entry_ptr, ptr @kvaser_pciefd_setup_board._entry_ptr.9, ptr @kvaser_pciefd_setup_can_ctrls._entry, ptr @kvaser_pciefd_setup_can_ctrls._entry.37, ptr @kvaser_pciefd_setup_can_ctrls._entry_ptr, ptr @kvaser_pciefd_setup_can_ctrls._entry_ptr.39, ptr @kvaser_pciefd_setup_dma._entry, ptr @kvaser_pciefd_setup_dma._entry.27, ptr @kvaser_pciefd_setup_dma._entry_ptr, ptr @kvaser_pciefd_setup_dma._entry_ptr.29, ptr @kvaser_pciefd_spi_cmd._entry, ptr @kvaser_pciefd_spi_cmd._entry_ptr, ptr @kvaser_pciefd, ptr @.str, ptr @kvaser_pciefd_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @kvaser_pciefd_netdev_ops, ptr @kvaser_pciefd_setup_can_ctrls.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @kvaser_pciefd_setup_can_ctrls.__key.33, ptr @.str.34, ptr @kvaser_pciefd_setup_can_ctrls.__key.35, ptr @.str.36, ptr @kvaser_pciefd_bittiming_const, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @init_completion.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_board._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_read_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_read_cfg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_spi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_cfg_read_and_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_cfg_read_and_verify._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_cfg_read_and_verify._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_dma._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_can_ctrls.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_can_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_can_ctrls.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_can_ctrls.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_setup_can_ctrls._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_receive_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_read_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvaser_pciefd_read_packet._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @kvaser_pciefd, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pciefd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @kvaser_pciefd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %dma_addr.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_disable_pci_crit_edge

if.end4.err_disable_pci_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_pci

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %reg_base, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.err_release_regions_crit_edge, label %if.end13

if.end8.err_release_regions_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_regions

if.end13:                                         ; preds = %if.end8
  %call14 = tail call fastcc i32 @kvaser_pciefd_setup_board(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_pci_iounmap_crit_edge

if.end13.err_pci_iounmap_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pci_iounmap

if.end17:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_addr.i) #9
  %3 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dma_addr.i, align 4, !annotation !143
  %4 = getelementptr inbounds [2 x i32], ptr %dma_addr.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !143
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 128024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !145
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i = call ptr @dmam_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %dma_addr.i, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx1.i = getelementptr %struct.kvaser_pciefd, ptr %call.i, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end17.do.end.i_crit_edge, label %lor.lhs.false.i

if.end17.do.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end17
  %11 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.1.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end17.do.end.i_crit_edge
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.25, i32 noundef 4096) #12
  br label %kvaser_pciefd_setup_dma.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  %17 = call i32 @llvm.bswap.i32(i32 %12) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #9, !srcloc !145
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %19, i32 4100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 0) #9, !srcloc !145
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call.i.1.i = call ptr @dmam_alloc_attrs(ptr noundef %dev.1.i, i32 noundef 4096, ptr noundef %4, i32 noundef 3264, i32 noundef 0) #9
  %arrayidx1.1.i = getelementptr %struct.kvaser_pciefd, ptr %call.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.1.i, ptr %arrayidx1.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.1.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.1.i:                                ; preds = %if.end.i
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.1.i = icmp eq i32 %24, 0
  br i1 %tobool5.not.1.i, label %lor.lhs.false.1.i.do.end.i_crit_edge, label %if.end.1.i

lor.lhs.false.1.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %26, i32 4104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  %27 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %27) #9, !srcloc !145
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i.1.i = getelementptr i8, ptr %29, i32 4108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.1.i, i32 0) #9, !srcloc !145
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 128000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 822083584) #9, !srcloc !145
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base, align 4
  %add.ptr12.i = getelementptr i8, ptr %33, i32 128016
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %35 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool14.not.i = icmp eq i32 %35, 0
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end21

do.end18.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.28) #12
  br label %kvaser_pciefd_setup_dma.exit.thread

kvaser_pciefd_setup_dma.exit.thread:              ; preds = %do.end18.i, %do.end.i
  %retval.2.i.ph = phi i32 [ -5, %do.end18.i ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_addr.i) #9
  br label %err_pci_iounmap

if.end21:                                         ; preds = %if.end.1.i
  %38 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base, align 4
  %add.ptr23.i = getelementptr i8, ptr %39, i32 128024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 16777216) #9, !srcloc !145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_addr.i) #9
  call void @pci_set_master(ptr noundef %pdev) #9
  %call22 = call fastcc i32 @kvaser_pciefd_setup_can_ctrls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_teardown_can_ctrls_crit_edge

if.end21.err_teardown_can_ctrls_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_teardown_can_ctrls

if.end25:                                         ; preds = %if.end21
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 128012
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 196608) #9, !srcloc !145
  %42 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base, align 4
  %add.ptr28 = getelementptr i8, ptr %43, i32 128004
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 4128768) #9, !srcloc !145
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 4
  %add.ptr30 = getelementptr i8, ptr %45, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 520093696) #9, !srcloc !145
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 4
  %add.ptr32 = getelementptr i8, ptr %47, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 520093696) #9, !srcloc !145
  %48 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base, align 4
  %add.ptr34 = getelementptr i8, ptr %49, i32 128000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 268435456) #9, !srcloc !145
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  %add.ptr36 = getelementptr i8, ptr %51, i32 128000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 536870912) #9, !srcloc !145
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call.i92 = call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @kvaser_pciefd_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool39.not = icmp eq i32 %call.i92, 0
  br i1 %tobool39.not, label %if.end41, label %if.end25.err_teardown_can_ctrls_crit_edge

if.end25.err_teardown_can_ctrls_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_teardown_can_ctrls

if.end41:                                         ; preds = %if.end25
  %call42 = call fastcc i32 @kvaser_pciefd_reg_candev(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %err_free_irq

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_free_irq:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %irq47 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %irq47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq47, align 4
  %call48 = call ptr @free_irq(i32 noundef %59, ptr noundef nonnull %call.i) #9
  br label %err_teardown_can_ctrls

err_teardown_can_ctrls:                           ; preds = %err_free_irq, %if.end25.err_teardown_can_ctrls_crit_edge, %if.end21.err_teardown_can_ctrls_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.err_teardown_can_ctrls_crit_edge ], [ %call.i92, %if.end25.err_teardown_can_ctrls_crit_edge ], [ %call42, %err_free_irq ]
  call fastcc void @kvaser_pciefd_teardown_can_ctrls(ptr noundef nonnull %call.i)
  %60 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base, align 4
  %add.ptr50 = getelementptr i8, ptr %61, i32 128024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #9, !srcloc !145
  call void @pci_clear_master(ptr noundef %pdev) #9
  br label %err_pci_iounmap

err_pci_iounmap:                                  ; preds = %err_teardown_can_ctrls, %kvaser_pciefd_setup_dma.exit.thread, %if.end13.err_pci_iounmap_crit_edge
  %err.1 = phi i32 [ %call14, %if.end13.err_pci_iounmap_crit_edge ], [ %err.0, %err_teardown_can_ctrls ], [ %retval.2.i.ph, %kvaser_pciefd_setup_dma.exit.thread ]
  %62 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_base, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %63) #9
  br label %err_release_regions

err_release_regions:                              ; preds = %err_pci_iounmap, %if.end8.err_release_regions_crit_edge
  %err.2 = phi i32 [ %err.1, %err_pci_iounmap ], [ -12, %if.end8.err_release_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_disable_pci

err_disable_pci:                                  ; preds = %err_release_regions, %if.end4.err_disable_pci_crit_edge
  %err.3 = phi i32 [ %call5, %if.end4.err_disable_pci_crit_edge ], [ %err.2, %err_release_regions ]
  call void @pci_disable_device(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pci, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_disable_pci ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pciefd_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr_channels.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp15.not.i = icmp eq i8 %3, 0
  br i1 %cmp15.not.i, label %entry.kvaser_pciefd_remove_all_ctrls.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kvaser_pciefd_remove_all_ctrls.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_remove_all_ctrls.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.kvaser_pciefd, ptr %1, i32 0, i32 2, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !145
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void @unregister_candev(ptr noundef %9) #9
  %bec_poll_timer.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %5, i32 0, i32 9
  %call.i = tail call i32 @del_timer(ptr noundef %bec_poll_timer.i) #9
  %lock.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %5, i32 0, i32 7
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1072
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !146
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %shr.i.i = lshr i32 %13, 16
  %conv7.i.i = and i32 %shr.i.i, 255
  %or.i.i = or i32 %conv7.i.i, %13
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %15, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %16) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #9
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  tail call void @free_candev(ptr noundef %18) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %19 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_channels.i, align 4
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kvaser_pciefd_remove_all_ctrls.exit_crit_edge

for.inc.i.kvaser_pciefd_remove_all_ctrls.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_remove_all_ctrls.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

kvaser_pciefd_remove_all_ctrls.exit:              ; preds = %for.inc.i.kvaser_pciefd_remove_all_ctrls.exit_crit_edge, %entry.kvaser_pciefd_remove_all_ctrls.exit_crit_edge
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 128024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !145
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %add.ptr2 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 520093696) #9, !srcloc !145
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !145
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %1) #9
  tail call void @pci_clear_master(ptr noundef %pdev) #9
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %32) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_setup_board(ptr nocapture noundef %pcie) unnamed_addr #2 align 64 {
entry:
  %cmd.i.i = alloca [4 x i8], align 1
  %cmd.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %0 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1426063360, ptr %cmd.i, align 4
  %call.i = call fastcc i32 @kvaser_pciefd_spi_cmd(ptr noundef %pcie, ptr noundef nonnull %cmd.i, i32 noundef 4, ptr noundef nonnull %cmd.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.kvaser_pciefd_read_cfg.exit.thread_crit_edge

entry.kvaser_pciefd_read_cfg.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_cfg.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #13
  %tobool3.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.kvaser_pciefd_read_cfg.exit.thread_crit_edge, label %if.end5.i

if.end.i.kvaser_pciefd_read_cfg.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_cfg.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 20
  br i1 %cmp.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %2 to i32
  %3 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %conv.i, i32 noundef 20) #12
  br label %kvaser_pciefd_read_cfg.exit.thread96

if.end10.i:                                       ; preds = %if.end5.i
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %cmd.i, align 4
  %call14.i = call fastcc i32 @kvaser_pciefd_spi_cmd(ptr noundef %pcie, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef nonnull %cmd.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.end10.i.kvaser_pciefd_read_cfg.exit.thread96_crit_edge

if.end10.i.kvaser_pciefd_read_cfg.exit.thread96_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_cfg.exit.thread96

if.else.i:                                        ; preds = %if.end10.i
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd.i, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not.i = icmp eq i8 %8, 0
  br i1 %tobool19.not.i, label %if.end27.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcie, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.13) #12
  br label %kvaser_pciefd_read_cfg.exit.thread96

if.end27.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #9
  %11 = getelementptr inbounds [4 x i8], ptr %cmd.i.i, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i8], ptr %cmd.i.i, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i8], ptr %cmd.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %cmd.i.i, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 31, ptr %11, align 1
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %12, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %13, align 1
  %call.i.i = call fastcc i32 @kvaser_pciefd_spi_cmd(ptr noundef %pcie, ptr noundef nonnull %cmd.i.i, i32 noundef 4, ptr noundef nonnull %call1.i.i.i, i32 noundef 65536) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end27.i.kvaser_pciefd_cfg_read_and_verify.exit.thread.i_crit_edge

if.end27.i.kvaser_pciefd_cfg_read_and_verify.exit.thread.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_cfg_read_and_verify.exit.thread.i

if.end.i.i:                                       ; preds = %if.end27.i
  %params.i.i = getelementptr inbounds %struct.kvaser_pciefd_cfg_img, ptr %call1.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call1.i.i.i, align 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 16777216
  br i1 %cmp.not.i.i, label %if.end11.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %magic.i.i = getelementptr inbounds %struct.kvaser_pciefd_cfg_img, ptr %call1.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 233897674, i32 %21)
  %cmp12.not.i.i = icmp eq i32 %21, 233897674
  br i1 %cmp12.not.i.i, label %if.end20.i.i, label %if.end11.i.i.cleanup.sink.split.i.i_crit_edge

if.end11.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.end20.i.i:                                     ; preds = %if.end11.i.i
  %call21.i.i = tail call i32 @crc32_be(i32 noundef -1, ptr noundef %params.i.i, i32 noundef 9216) #14
  %neg.i.i = xor i32 %call21.i.i, -1
  %crc22.i.i = getelementptr inbounds %struct.kvaser_pciefd_cfg_img, ptr %call1.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %crc22.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crc22.i.i, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %neg.i.i)
  %cmp23.not.i.i = icmp eq i32 %24, %neg.i.i
  br i1 %cmp23.not.i.i, label %if.end, label %if.end20.i.i.cleanup.sink.split.i.i_crit_edge

if.end20.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end20.i.i.cleanup.sink.split.i.i_crit_edge, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.23.sink.i.i = phi ptr [ @.str.17, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.20, %if.end11.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.23, %if.end20.i.i.cleanup.sink.split.i.i_crit_edge ]
  %25 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie, align 4
  %dev30.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i.i, ptr noundef nonnull %.str.23.sink.i.i) #12
  br label %kvaser_pciefd_cfg_read_and_verify.exit.thread.i

kvaser_pciefd_cfg_read_and_verify.exit.thread.i:  ; preds = %cleanup.sink.split.i.i, %if.end27.i.kvaser_pciefd_cfg_read_and_verify.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #9
  br label %kvaser_pciefd_read_cfg.exit.thread96

kvaser_pciefd_read_cfg.exit.thread:               ; preds = %if.end.i.kvaser_pciefd_read_cfg.exit.thread_crit_edge, %entry.kvaser_pciefd_read_cfg.exit.thread_crit_edge
  %retval.0.i92.ph = phi i32 [ -12, %if.end.i.kvaser_pciefd_read_cfg.exit.thread_crit_edge ], [ -5, %entry.kvaser_pciefd_read_cfg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  br label %cleanup

kvaser_pciefd_read_cfg.exit.thread96:             ; preds = %kvaser_pciefd_cfg_read_and_verify.exit.thread.i, %if.then20.i, %if.end10.i.kvaser_pciefd_read_cfg.exit.thread96_crit_edge, %do.end.i
  %res.0.i.ph = phi i32 [ -5, %kvaser_pciefd_cfg_read_and_verify.exit.thread.i ], [ -5, %if.then20.i ], [ %call14.i, %if.end10.i.kvaser_pciefd_read_cfg.exit.thread96_crit_edge ], [ -19, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #9
  %nr_channels.i.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %data.i.i = getelementptr %struct.kvaser_pciefd_cfg_img, ptr %call1.i.i.i, i32 0, i32 3, i32 130, i32 3
  %len.i.i = getelementptr %struct.kvaser_pciefd_cfg_img, ptr %call1.i.i.i, i32 0, i32 3, i32 130, i32 2
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = call ptr @memcpy(ptr %nr_channels.i.i, ptr %data.i.i, i32 %29)
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 1
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 127016
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !146
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %shr = lshr i32 %34, 24
  %35 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_channels.i.i, align 4
  %conv2 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv2)
  %cmp.not = icmp eq i32 %shr, %conv2
  br i1 %cmp.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv2, i32 noundef %shr) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp12 = icmp ugt i8 %36, 4
  br i1 %cmp12, label %if.then14, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %nr_channels.i.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  %add.ptr18 = getelementptr i8, ptr %41, i32 127028
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_pciefd_setup_board.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_pciefd_setup_board, %do.end36)) #9
          to label %if.then26 [label %do.end36], !srcloc !148

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcie, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %shr29 = lshr i32 %34, 16
  %and30 = and i32 %shr29, 255
  %and31 = and i32 %34, 255
  %shr32 = lshr i32 %43, 1
  %and33 = and i32 %shr32, 32767
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kvaser_pciefd_setup_board.__UNIQUE_ID_ddebug465, ptr noundef %dev28, ptr noundef nonnull @.str.6, i32 noundef %and30, i32 noundef %and31, i32 noundef %and33) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then26, %if.end16
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 4
  %add.ptr38 = getelementptr i8, ptr %47, i32 128016
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %49 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool41.not = icmp eq i32 %49, 0
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end48:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base, align 4
  %add.ptr50 = getelementptr i8, ptr %53, i32 127024
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #9, !srcloc !146
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %bus_freq = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 5
  %56 = ptrtoint ptr %bus_freq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bus_freq, align 4
  %57 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base, align 4
  %add.ptr53 = getelementptr i8, ptr %58, i32 127020
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #9, !srcloc !146
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %freq = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 6
  %61 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %freq, align 4
  %div = udiv i32 %60, 1000000
  %freq_to_ticks_div = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %60)
  %62 = icmp ult i32 %60, 1000000
  %spec.select = select i1 %62, i32 1, i32 %div
  %63 = ptrtoint ptr %freq_to_ticks_div to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select, ptr %freq_to_ticks_div, align 4
  %64 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base, align 4
  %add.ptr63 = getelementptr i8, ptr %65, i32 126976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 0) #9, !srcloc !145
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end45, %do.end, %kvaser_pciefd_read_cfg.exit.thread96, %kvaser_pciefd_read_cfg.exit.thread
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end48 ], [ -19, %do.end45 ], [ %retval.0.i92.ph, %kvaser_pciefd_read_cfg.exit.thread ], [ %res.0.i.ph, %kvaser_pciefd_read_cfg.exit.thread96 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_setup_can_ctrls(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp121.not = icmp eq i8 %1, 0
  br i1 %cmp121.not, label %entry.cleanup66_crit_edge, label %for.body.lr.ph

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

for.body.lr.ph:                                   ; preds = %entry
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 1
  %freq = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @alloc_candev_mqs(i32 noundef 584, i32 noundef 17, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup66_crit_edge, label %if.end

for.body.cleanup66_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.end:                                           ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kvaser_pciefd_netdev_ops, ptr %netdev_ops, align 8
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 65536
  %mul = shl i32 %i.0122, 12
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  %reg_base4 = getelementptr i8, ptr %call, i32 2620
  %5 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr3, ptr %reg_base4, align 4
  %kv_pcie = getelementptr i8, ptr %call, i32 2616
  %6 = ptrtoint ptr %kv_pcie to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pcie, ptr %kv_pcie, align 4
  %err_rep_cnt = getelementptr i8, ptr %call, i32 2632
  %7 = ptrtoint ptr %err_rep_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %err_rep_cnt, align 4
  %bec = getelementptr i8, ptr %call, i32 2624
  %start_comp = getelementptr i8, ptr %call, i32 2776
  %8 = ptrtoint ptr %start_comp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %start_comp, align 4
  %wait.i = getelementptr i8, ptr %call, i32 2780
  %9 = call ptr @memset(ptr %bec, i32 0, i32 5)
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #9
  %flush_comp = getelementptr i8, ptr %call, i32 2832
  %10 = ptrtoint ptr %flush_comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flush_comp, align 4
  %wait.i113 = getelementptr i8, ptr %call, i32 2836
  tail call void @__init_swait_queue_head(ptr noundef %wait.i113, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #9
  %bec_poll_timer = getelementptr i8, ptr %call, i32 2728
  tail call void @init_timer_key(ptr noundef %bec_poll_timer, ptr noundef nonnull @kvaser_pciefd_bec_poll_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @kvaser_pciefd_setup_can_ctrls.__key) #9
  %11 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base4, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #9, !srcloc !145
  %13 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base4, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 1044
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %16 = and i32 %15, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 4352, i32 %16)
  %cmp11 = icmp ult i32 %16, 4352
  br i1 %cmp11, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %cleanup66.sink.split

if.end17:                                         ; preds = %if.end
  %19 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freq, align 4
  %clock = getelementptr i8, ptr %call, i32 2440
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %clock, align 4
  %echo_skb_max = getelementptr i8, ptr %call, i32 2464
  %22 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17, ptr %echo_skb_max, align 4
  %echo_idx = getelementptr i8, ptr %call, i32 2636
  %23 = ptrtoint ptr %echo_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %echo_idx, align 4
  %echo_lock = getelementptr i8, ptr %call, i32 2684
  tail call void @__raw_spin_lock_init(ptr noundef %echo_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @kvaser_pciefd_setup_can_ctrls.__key.33, i16 noundef signext 3) #9
  %lock = getelementptr i8, ptr %call, i32 2640
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @kvaser_pciefd_setup_can_ctrls.__key.35, i16 noundef signext 3) #9
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %24 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @kvaser_pciefd_bittiming_const, ptr %bittiming_const, align 4
  %data_bittiming_const = getelementptr i8, ptr %call, i32 2336
  %25 = ptrtoint ptr %data_bittiming_const to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kvaser_pciefd_bittiming_const, ptr %data_bittiming_const, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %26 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kvaser_pciefd_set_nominal_bittiming, ptr %do_set_bittiming, align 4
  %do_set_data_bittiming = getelementptr i8, ptr %call, i32 2592
  %27 = ptrtoint ptr %do_set_data_bittiming to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kvaser_pciefd_set_data_bittiming, ptr %do_set_data_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %28 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kvaser_pciefd_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call, i32 2608
  %29 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kvaser_pciefd_get_berr_counter, ptr %do_get_berr_counter, align 4
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %30 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 162, ptr %ctrlmode_supported, align 4
  %31 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base4, align 4
  %add.ptr37 = getelementptr i8, ptr %32, i32 1048
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !146
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and39 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcie, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.38, i32 noundef %i.0122) #12
  br label %cleanup66.sink.split

if.end47:                                         ; preds = %if.end17
  %and48 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.for.inc_crit_edge, label %if.then50

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrlmode_supported, align 4
  %or = or i32 %38, 8
  store i32 %or, ptr %ctrlmode_supported, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %if.end47.for.inc_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 8
  %or54 = or i32 %40, 262144
  store i32 %or54, ptr %flags, align 8
  %41 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %43 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev56, ptr %parent, align 8
  %44 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base4, align 4
  %add.ptr59 = getelementptr i8, ptr %45, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 -1) #9, !srcloc !145
  %46 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base4, align 4
  %add.ptr61 = getelementptr i8, ptr %47, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 6291456) #9, !srcloc !145
  %arrayidx = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %i.0122
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %49 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base4, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 1072
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !146
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %shr.i.i = lshr i32 %52, 16
  %conv7.i.i = and i32 %shr.i.i, 255
  %or.i.i = or i32 %conv7.i.i, %52
  %53 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base4, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %54, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %55) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.i) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %56 = ptrtoint ptr %kv_pcie to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kv_pcie, align 4
  %bus_freq.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus_freq.i, align 4
  %div.i = udiv i32 %59, 1000000
  %sub.i = add nsw i32 %div.i, -1
  %and.i = and i32 %sub.i, 255
  %shl.i = shl nuw nsw i32 %and.i, 16
  %or.i = or i32 %shl.i, %and.i
  %60 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base4, align 4
  %add.ptr.i114 = getelementptr i8, ptr %61, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %62) #9, !srcloc !145
  %mul.i = mul nsw i32 %sub.i, 100
  %mul6.neg.i = mul nsw i32 %div.i, -95
  %sub7.i = add nsw i32 %mul6.neg.i, 50
  %add8.i = add nsw i32 %sub7.i, %mul.i
  %div9.i = sdiv i32 %add8.i, 100
  %and10.i = and i32 %div9.i, 255
  %or13.i = or i32 %and10.i, %shl.i
  %63 = ptrtoint ptr %reg_base4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base4, align 4
  %add.ptr15.i = getelementptr i8, ptr %64, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %65) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  %inc = add nuw nsw i32 %i.0122, 1
  %66 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nr_channels, align 4
  %conv = zext i8 %67 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup66_crit_edge

for.inc.cleanup66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup66.sink.split:                             ; preds = %do.end44, %do.end16
  tail call void @free_candev(ptr noundef nonnull %call) #9
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup66.sink.split, %for.inc.cleanup66_crit_edge, %for.body.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup66_crit_edge ], [ -19, %cleanup66.sink.split ], [ 0, %for.inc.cleanup66_crit_edge ], [ -12, %for.body.cleanup66_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 128012
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !146
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %if.then.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_pciefd_read_buffer(ptr noundef %dev, i32 noundef 0) #9
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 128000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 268435456) #9, !srcloc !145
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then3.if.end.i_crit_edge
  %and4.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_pciefd_read_buffer(ptr noundef %dev, i32 noundef 1) #9
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 128000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 536870912) #9, !srcloc !145
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %12 = and i32 %7, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.end10.i.kvaser_pciefd_receive_irq.exit_crit_edge, label %do.end.i

if.end10.i.kvaser_pciefd_receive_irq.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_receive_irq.exit

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %7) #12
  br label %kvaser_pciefd_receive_irq.exit

kvaser_pciefd_receive_irq.exit:                   ; preds = %do.end.i, %if.end10.i.kvaser_pciefd_receive_irq.exit_crit_edge
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 4
  %add.ptr24.i = getelementptr i8, ptr %17, i32 128012
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %6) #9, !srcloc !145
  br label %if.end5

if.end5:                                          ; preds = %kvaser_pciefd_receive_irq.exit, %if.end.if.end5_crit_edge
  %nr_channels = getelementptr inbounds %struct.kvaser_pciefd, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp42.not = icmp eq i8 %19, 0
  br i1 %cmp42.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_pciefd, ptr %dev, i32 0, i32 2, i32 %i.043
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.45) #12
  br label %for.end

if.end10:                                         ; preds = %for.body
  %shl = shl nuw i32 1, %i.043
  %and11 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %if.then13

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %if.end10
  %reg_base.i35 = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %reg_base.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %25, i32 1040
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #9, !srcloc !146
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and.i37 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.then13.if.end.i40_crit_edge, label %if.then.i39

if.then13.if.end.i40_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i40

if.then.i39:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.58) #12
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i39, %if.then13.if.end.i40_crit_edge
  %and2.i = and i32 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i40.if.end15.i_crit_edge, label %if.then4.i

if.end.i40.if.end15.i_crit_edge:                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i40
  %30 = ptrtoint ptr %reg_base.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i35, align 4
  %add.ptr6.i = getelementptr i8, ptr %31, i32 1044
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %32)
  %cmp.i = icmp ult i32 %32, 16777216
  br i1 %cmp.i, label %if.then11.i, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %reg_base.i35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i35, align 4
  %add.ptr13.i = getelementptr i8, ptr %34, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 128) #9, !srcloc !145
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then4.i.if.end15.i_crit_edge, %if.end.i40.if.end15.i_crit_edge
  %and16.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then18.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.59) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end21.i_crit_edge
  %and22.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.60) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %and28.i = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.kvaser_pciefd_transmit_irq.exit_crit_edge, label %if.then30.i

if.end27.i.kvaser_pciefd_transmit_irq.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_transmit_irq.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.61) #12
  br label %kvaser_pciefd_transmit_irq.exit

kvaser_pciefd_transmit_irq.exit:                  ; preds = %if.then30.i, %if.end27.i.kvaser_pciefd_transmit_irq.exit_crit_edge
  %41 = ptrtoint ptr %reg_base.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i35, align 4
  %add.ptr35.i = getelementptr i8, ptr %42, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %26) #9, !srcloc !145
  br label %for.inc

for.inc:                                          ; preds = %kvaser_pciefd_transmit_irq.exit, %if.end10.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %43 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_channels, align 4
  %conv = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %if.end5.for.end_crit_edge
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  %add.ptr19 = getelementptr i8, ptr %46, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %2) #9, !srcloc !145
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_reg_candev(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp28.not = icmp eq i8 %1, 0
  br i1 %cmp28.not, label %entry.cleanup14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body:                                         ; preds = %for.inc11.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc12, %for.inc11.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %i.029
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @register_candev(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc11, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029)
  %cmp425.not = icmp eq i32 %i.029, 0
  br i1 %cmp425.not, label %for.cond3.preheader.cleanup14_crit_edge, label %for.cond3.preheader.for.body6_crit_edge

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.cond3.preheader.cleanup14_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %j.026 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %j.026
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @unregister_candev(ptr noundef %9) #9
  %inc = add nuw nsw i32 %j.026, 1
  %exitcond.not = icmp eq i32 %inc, %i.029
  br i1 %exitcond.not, label %for.body6.cleanup14_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.body6.cleanup14_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.inc11:                                        ; preds = %for.body
  %inc12 = add nuw nsw i32 %i.029, 1
  %10 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_channels, align 4
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc12, %conv
  br i1 %cmp, label %for.inc11.for.body_crit_edge, label %for.inc11.cleanup14_crit_edge

for.inc11.cleanup14_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

for.inc11.for.body_crit_edge:                     ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup14:                                        ; preds = %for.inc11.cleanup14_crit_edge, %for.body6.cleanup14_crit_edge, %for.cond3.preheader.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ %call, %for.cond3.preheader.cleanup14_crit_edge ], [ %call, %for.body6.cleanup14_crit_edge ], [ 0, %for.inc11.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_pciefd_teardown_can_ctrls(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_channels = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp11.not = icmp eq i8 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !145
  %lock.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %3, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1072
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !146
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %shr.i = lshr i32 %9, 16
  %conv7.i = and i32 %shr.i, 255
  %or.i = or i32 %conv7.i, %9
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %12) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void @free_candev(ptr noundef %14) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %15 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_channels, align 4
  %conv = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_spi_cmd(ptr nocapture noundef readonly %pcie, ptr nocapture noundef readonly %tx, i32 noundef %tx_len, ptr nocapture noundef writeonly %rx, i32 noundef %rx_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 130068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !145
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 130060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 262144) #9, !srcloc !145
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 130048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_len)
  %tobool.not146 = icmp eq i32 %tx_len, 0
  br i1 %tobool.not146, label %entry.while.cond16.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond16.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond16.preheader

while.cond16.preheader:                           ; preds = %if.end12.while.cond16.preheader_crit_edge, %entry.while.cond16.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len)
  %cmp150 = icmp sgt i32 %rx_len, 0
  br i1 %cmp150, label %while.cond16.preheader.while.body19_crit_edge, label %while.cond16.preheader.while.end35_crit_edge

while.cond16.preheader.while.end35_crit_edge:     ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end35

while.cond16.preheader.while.body19_crit_edge:    ; preds = %while.cond16.preheader
  br label %while.body19

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %entry.while.body_crit_edge
  %dec148.in = phi i32 [ %dec148, %if.end12.while.body_crit_edge ], [ %tx_len, %entry.while.body_crit_edge ]
  %tx.addr.0147 = phi ptr [ %incdec.ptr, %if.end12.while.body_crit_edge ], [ %tx, %entry.while.body_crit_edge ]
  %dec148 = add i32 %dec148.in, -1
  %call.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i, 10000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %while.body
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 130056
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %10 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 4
  %add.ptr20.i = getelementptr i8, ptr %12, i32 130056
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %14 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %phi.cmp.i = icmp eq i32 %14, 0
  br i1 %phi.cmp.i, label %if.then16.i.cleanup_crit_edge, label %if.then16.i.if.end_crit_edge

if.then16.i.if.end_crit_edge:                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then16.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %15 = ptrtoint ptr %tx.addr.0147 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx.addr.0147, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 130052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %19 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %19) #9, !srcloc !145
  %call.i61 = tail call i64 @ktime_get() #9
  %add.i.i62 = add i64 %call.i61, 10000
  br label %for.cond.i67

for.cond.i67:                                     ; preds = %land.lhs.true.i70.for.cond.i67_crit_edge, %if.end
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %add.ptr.i64 = getelementptr i8, ptr %21, i32 130056
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i66 = icmp sgt i32 %22, -1
  br i1 %tobool.not.i66, label %land.lhs.true.i70, label %for.cond.i67.if.end12_crit_edge

for.cond.i67.if.end12_crit_edge:                  ; preds = %for.cond.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true.i70:                                ; preds = %for.cond.i67
  %call13.i68 = tail call i64 @ktime_get() #9
  %cmp3.i.i69 = icmp sgt i64 %call13.i68, %add.i.i62
  br i1 %cmp3.i.i69, label %if.then16.i75, label %land.lhs.true.i70.for.cond.i67_crit_edge

land.lhs.true.i70.for.cond.i67_crit_edge:         ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i67

if.then16.i75:                                    ; preds = %land.lhs.true.i70
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %add.ptr20.i71 = getelementptr i8, ptr %24, i32 130056
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i71) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %phi.cmp.i73 = icmp sgt i32 %25, -1
  br i1 %phi.cmp.i73, label %if.then16.i75.cleanup_crit_edge, label %if.then16.i75.if.end12_crit_edge

if.then16.i75.if.end12_crit_edge:                 ; preds = %if.then16.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then16.i75.cleanup_crit_edge:                  ; preds = %if.then16.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then16.i75.if.end12_crit_edge, %for.cond.i67.if.end12_crit_edge
  %incdec.ptr = getelementptr i8, ptr %tx.addr.0147, i32 1
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %27, i32 130048
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %tobool.not = icmp eq i32 %dec148, 0
  br i1 %tobool.not, label %if.end12.while.cond16.preheader_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end12.while.cond16.preheader_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond16.preheader

while.body19:                                     ; preds = %if.end29.while.body19_crit_edge, %while.cond16.preheader.while.body19_crit_edge
  %dec17152.in = phi i32 [ %dec17152, %if.end29.while.body19_crit_edge ], [ %rx_len, %while.cond16.preheader.while.body19_crit_edge ]
  %rx.addr.0151 = phi ptr [ %incdec.ptr34, %if.end29.while.body19_crit_edge ], [ %rx, %while.cond16.preheader.while.body19_crit_edge ]
  %dec17152 = add nsw i32 %dec17152.in, -1
  %call.i78 = tail call i64 @ktime_get() #9
  %add.i.i79 = add i64 %call.i78, 10000
  br label %for.cond.i84

for.cond.i84:                                     ; preds = %land.lhs.true.i87.for.cond.i84_crit_edge, %while.body19
  %29 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base, align 4
  %add.ptr.i81 = getelementptr i8, ptr %30, i32 130056
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %32 = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i83 = icmp eq i32 %32, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i87, label %for.cond.i84.if.end23_crit_edge

for.cond.i84.if.end23_crit_edge:                  ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true.i87:                                ; preds = %for.cond.i84
  %call13.i85 = tail call i64 @ktime_get() #9
  %cmp3.i.i86 = icmp sgt i64 %call13.i85, %add.i.i79
  br i1 %cmp3.i.i86, label %if.then16.i92, label %land.lhs.true.i87.for.cond.i84_crit_edge

land.lhs.true.i87.for.cond.i84_crit_edge:         ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i84

if.then16.i92:                                    ; preds = %land.lhs.true.i87
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr20.i88 = getelementptr i8, ptr %34, i32 130056
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i88) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %36 = and i32 %35, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %phi.cmp.i90 = icmp eq i32 %36, 0
  br i1 %phi.cmp.i90, label %if.then16.i92.cleanup_crit_edge, label %if.then16.i92.if.end23_crit_edge

if.then16.i92.if.end23_crit_edge:                 ; preds = %if.then16.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then16.i92.cleanup_crit_edge:                  ; preds = %if.then16.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.then16.i92.if.end23_crit_edge, %for.cond.i84.if.end23_crit_edge
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 4
  %add.ptr25 = getelementptr i8, ptr %38, i32 130052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #9, !srcloc !145
  %call.i95 = tail call i64 @ktime_get() #9
  %add.i.i96 = add i64 %call.i95, 10000
  br label %for.cond.i101

for.cond.i101:                                    ; preds = %land.lhs.true.i104.for.cond.i101_crit_edge, %if.end23
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %add.ptr.i98 = getelementptr i8, ptr %40, i32 130056
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool.not.i100 = icmp sgt i32 %41, -1
  br i1 %tobool.not.i100, label %land.lhs.true.i104, label %for.cond.i101.if.end29_crit_edge

for.cond.i101.if.end29_crit_edge:                 ; preds = %for.cond.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true.i104:                               ; preds = %for.cond.i101
  %call13.i102 = tail call i64 @ktime_get() #9
  %cmp3.i.i103 = icmp sgt i64 %call13.i102, %add.i.i96
  br i1 %cmp3.i.i103, label %if.then16.i109, label %land.lhs.true.i104.for.cond.i101_crit_edge

land.lhs.true.i104.for.cond.i101_crit_edge:       ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i101

if.then16.i109:                                   ; preds = %land.lhs.true.i104
  %42 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base, align 4
  %add.ptr20.i105 = getelementptr i8, ptr %43, i32 130056
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i105) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %phi.cmp.i107 = icmp sgt i32 %44, -1
  br i1 %phi.cmp.i107, label %if.then16.i109.cleanup_crit_edge, label %if.then16.i109.if.end29_crit_edge

if.then16.i109.if.end29_crit_edge:                ; preds = %if.then16.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then16.i109.cleanup_crit_edge:                 ; preds = %if.then16.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.then16.i109.if.end29_crit_edge, %for.cond.i101.if.end29_crit_edge
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  %add.ptr31 = getelementptr i8, ptr %46, i32 130048
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #9, !srcloc !146
  %48 = lshr i32 %47, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %conv33 = trunc i32 %48 to i8
  %incdec.ptr34 = getelementptr i8, ptr %rx.addr.0151, i32 1
  %49 = ptrtoint ptr %rx.addr.0151 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv33, ptr %rx.addr.0151, align 1
  %cmp = icmp sgt i32 %dec17152.in, 1
  br i1 %cmp, label %if.end29.while.body19_crit_edge, label %if.end29.while.end35_crit_edge

if.end29.while.end35_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end35

if.end29.while.body19_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body19

while.end35:                                      ; preds = %if.end29.while.end35_crit_edge, %while.cond16.preheader.while.end35_crit_edge
  %c.1.lcssa = phi i32 [ %rx_len, %while.cond16.preheader.while.end35_crit_edge ], [ 0, %if.end29.while.end35_crit_edge ]
  %call.i112 = tail call i64 @ktime_get() #9
  %add.i.i113 = add i64 %call.i112, 10000
  br label %for.cond.i118

for.cond.i118:                                    ; preds = %land.lhs.true.i121.for.cond.i118_crit_edge, %while.end35
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  %add.ptr.i115 = getelementptr i8, ptr %51, i32 130056
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %53 = and i32 %52, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i117 = icmp eq i32 %53, 0
  br i1 %tobool.not.i117, label %land.lhs.true.i121, label %for.cond.i118.if.end39_crit_edge

for.cond.i118.if.end39_crit_edge:                 ; preds = %for.cond.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true.i121:                               ; preds = %for.cond.i118
  %call13.i119 = tail call i64 @ktime_get() #9
  %cmp3.i.i120 = icmp sgt i64 %call13.i119, %add.i.i113
  br i1 %cmp3.i.i120, label %if.then16.i126, label %land.lhs.true.i121.for.cond.i118_crit_edge

land.lhs.true.i121.for.cond.i118_crit_edge:       ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i118

if.then16.i126:                                   ; preds = %land.lhs.true.i121
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base, align 4
  %add.ptr20.i122 = getelementptr i8, ptr %55, i32 130056
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i122) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %57 = and i32 %56, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %phi.cmp.i124 = icmp eq i32 %57, 0
  br i1 %phi.cmp.i124, label %if.then16.i126.cleanup_crit_edge, label %if.then16.i126.if.end39_crit_edge

if.then16.i126.if.end39_crit_edge:                ; preds = %if.then16.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then16.i126.cleanup_crit_edge:                 ; preds = %if.then16.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.then16.i126.if.end39_crit_edge, %for.cond.i118.if.end39_crit_edge
  %58 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base, align 4
  %add.ptr41 = getelementptr i8, ptr %59, i32 130060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #9, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1.lcssa)
  %cmp42.not = icmp eq i32 %c.1.lcssa, 0
  br i1 %cmp42.not, label %if.end39.cleanup_crit_edge, label %do.end

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcie, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end39.cleanup_crit_edge, %if.then16.i126.cleanup_crit_edge, %if.then16.i109.cleanup_crit_edge, %if.then16.i92.cleanup_crit_edge, %if.then16.i75.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end39.cleanup_crit_edge ], [ -5, %if.then16.i126.cleanup_crit_edge ], [ -5, %if.then16.i92.cleanup_crit_edge ], [ -5, %if.then16.i109.cleanup_crit_edge ], [ -5, %if.then16.i.cleanup_crit_edge ], [ -5, %if.then16.i75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kvaser_pciefd_bec_poll_timer(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %data, i32 -88
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %reg_base.i = getelementptr i8, ptr %data, i32 -108
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1052
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.kvaser_pciefd_enable_err_gen.exit_crit_edge

entry.kvaser_pciefd_enable_err_gen.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_enable_err_gen.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %3, 4096
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %5, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %6) #9, !srcloc !145
  br label %kvaser_pciefd_enable_err_gen.exit

kvaser_pciefd_enable_err_gen.exit:                ; preds = %if.then.i, %entry.kvaser_pciefd_enable_err_gen.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %cmd_seq.i = getelementptr i8, ptr %data, i32 -100
  %7 = ptrtoint ptr %cmd_seq.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_seq.i, align 4
  %inc.i = add i8 %8, 1
  store i8 %inc.i, ptr %cmd_seq.i, align 4
  %conv.i = zext i8 %inc.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or.i3 = or i32 %shl.i, 1
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %10, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %11) #9, !srcloc !145
  %err_rep_cnt = getelementptr i8, ptr %data, i32 -96
  %12 = ptrtoint ptr %err_rep_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %err_rep_cnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_set_nominal_bittiming(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @kvaser_pciefd_set_bittiming(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_set_data_bittiming(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @kvaser_pciefd_set_bittiming(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_set_mode(ptr noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %restart_ms = getelementptr i8, ptr %ndev, i32 2484
  %0 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @kvaser_pciefd_bus_on(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kvaser_pciefd_get_berr_counter(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %bec) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bec1 = getelementptr i8, ptr %ndev, i32 2624
  %rxerr = getelementptr i8, ptr %ndev, i32 2626
  %0 = ptrtoint ptr %rxerr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rxerr, align 2
  %rxerr2 = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %2 = ptrtoint ptr %rxerr2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %rxerr2, align 2
  %3 = ptrtoint ptr %bec1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bec1, align 4
  %5 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %bec, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @open_candev(ptr noundef %netdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call2 = tail call fastcc i32 @kvaser_pciefd_bus_on(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @close_candev(ptr noundef %netdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_stop(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flush_comp = getelementptr i8, ptr %netdev, i32 2832
  %call1 = tail call zeroext i1 @completion_done(ptr noundef %flush_comp) #9
  br i1 %call1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_pciefd_start_controller_flush(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %flush_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.42) #12
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %reg_base = getelementptr i8, ptr %netdev, i32 2620
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !145
  %bec_poll_timer = getelementptr i8, ptr %netdev, i32 2728
  %call7 = tail call i32 @del_timer(ptr noundef %bec_poll_timer) #9
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ 0, %if.else ], [ -110, %if.then5 ]
  tail call void @close_candev(ptr noundef %netdev) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvaser_pciefd_start_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %packet = alloca %struct.kvaser_pciefd_tx_packet, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %packet) #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !151

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !152

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !151

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !152

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !151

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 104, i32 noundef 9, ptr noundef null) #9
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %echo_idx.i = getelementptr i8, ptr %netdev, i32 2636
  %38 = ptrtoint ptr %echo_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %echo_idx.i, align 4
  %40 = call ptr @memset(ptr %packet, i32 0, i32 72)
  %ctrlmode.i = getelementptr i8, ptr %netdev, i32 2476
  %41 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i68

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i68:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr inbounds [2 x i32], ptr %packet, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %44, 65536
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i68, %if.end.if.end.i_crit_edge
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %37, align 8
  %and2.i = and i32 %46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %packet, align 4
  %or7.i = or i32 %48, 536870912
  store i32 %or7.i, ptr %packet, align 4
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load i32, ptr %37, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
  %50 = phi i32 [ %.pr.i, %if.then4.i ], [ %46, %if.end.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool11.not.i = icmp sgt i32 %50, -1
  br i1 %tobool11.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then12.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %packet, align 4
  %or15.i = or i32 %52, 1073741824
  store i32 %or15.i, ptr %packet, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end16.i_crit_edge
  %53 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %37, align 8
  %and18.i = and i32 %54, 536870911
  %55 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %packet, align 4
  %or21.i = or i32 %56, %and18.i
  store i32 %or21.i, ptr %packet, align 4
  %len.i69 = getelementptr inbounds %struct.canfd_frame, ptr %37, i32 0, i32 1
  %57 = ptrtoint ptr %len.i69 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %len.i69, align 4
  %call.i = tail call zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %58) #9
  %conv.i = zext i8 %call.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx23.i = getelementptr inbounds [2 x i32], ptr %packet, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx23.i, align 4
  %or24.i = or i32 %shl.i, %60
  %or27.i = or i32 %or24.i, -2147483648
  store i32 %or27.i, ptr %arrayidx23.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %61 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %62)
  %cmp.i.i70 = icmp eq i32 %62, 72
  br i1 %cmp.i.i70, label %if.then29.i, label %if.end16.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge

if.end16.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_prepare_tx_packet.exit

if.then29.i:                                      ; preds = %if.end16.i
  %or32.i = or i32 %or24.i, -2147450880
  %63 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or32.i, ptr %arrayidx23.i, align 4
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %37, i32 0, i32 2
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags.i, align 1
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool35.not.i = icmp eq i8 %66, 0
  br i1 %tobool35.not.i, label %if.then29.i.if.end40.i_crit_edge, label %if.then36.i

if.then29.i.if.end40.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then36.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %or39.i = or i32 %or24.i, -2147434496
  %67 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or39.i, ptr %arrayidx23.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then36.i, %if.then29.i.if.end40.i_crit_edge
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags.i, align 1
  %70 = and i8 %69, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool44.not.i = icmp eq i8 %70, 0
  br i1 %tobool44.not.i, label %if.end40.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge, label %if.then45.i

if.end40.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_prepare_tx_packet.exit

if.then45.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx23.i, align 4
  %or48.i = or i32 %72, 8192
  store i32 %or48.i, ptr %arrayidx23.i, align 4
  br label %kvaser_pciefd_prepare_tx_packet.exit

kvaser_pciefd_prepare_tx_packet.exit:             ; preds = %if.then45.i, %if.end40.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge, %if.end16.i.kvaser_pciefd_prepare_tx_packet.exit_crit_edge
  %and51.i = and i32 %39, 255
  %73 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx23.i, align 4
  %or54.i = or i32 %74, %and51.i
  store i32 %or54.i, ptr %arrayidx23.i, align 4
  %75 = ptrtoint ptr %len.i69 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %len.i69, align 4
  %conv56.i = zext i8 %76 to i32
  %data57.i = getelementptr inbounds %struct.kvaser_pciefd_tx_packet, ptr %packet, i32 0, i32 1
  %data58.i = getelementptr inbounds %struct.canfd_frame, ptr %37, i32 0, i32 5
  %77 = call ptr @memcpy(ptr %data57.i, ptr %data58.i, i32 %conv56.i)
  %echo_lock = getelementptr i8, ptr %netdev, i32 2684
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %echo_lock) #9
  %78 = ptrtoint ptr %echo_idx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %echo_idx.i, align 4
  %call8 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %netdev, i32 noundef %79, i32 noundef 0) #9
  %80 = ptrtoint ptr %echo_idx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %echo_idx.i, align 4
  %add = add i32 %81, 1
  %echo_skb_max = getelementptr i8, ptr %netdev, i32 2464
  %82 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %echo_skb_max, align 4
  %rem = urem i32 %add, %83
  store i32 %rem, ptr %echo_idx.i, align 4
  %84 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %packet, align 4
  %reg_base = getelementptr i8, ptr %netdev, i32 2620
  %86 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %87, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %88) #9, !srcloc !145
  %89 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_base, align 4
  %add.ptr15 = getelementptr i8, ptr %90, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %91) #9, !srcloc !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not = icmp eq i8 %76, 0
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %kvaser_pciefd_prepare_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nuw nsw i32 %conv56.i, 3
  %div81.i = lshr i32 %sub.i, 2
  %sub = add nsw i32 %div81.i, -1
  %arrayidx17 = getelementptr i32, ptr %data57.i, i32 %sub
  %92 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx17, align 4
  %94 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_base, align 4
  %add.ptr19 = getelementptr i8, ptr %95, i32 256
  call void @__raw_writesl(ptr noundef %add.ptr19, ptr noundef %data57.i, i32 noundef %sub) #9
  %96 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_base, align 4
  %add.ptr24 = getelementptr i8, ptr %97, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %93) #9, !srcloc !145
  br label %if.end27

if.else:                                          ; preds = %kvaser_pciefd_prepare_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_base, align 4
  %add.ptr26 = getelementptr i8, ptr %99, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #9, !srcloc !145
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16
  %100 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_base, align 4
  %add.ptr29 = getelementptr i8, ptr %101, i32 1044
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212671, i32 %102)
  %cmp33 = icmp ugt i32 %102, 285212671
  br i1 %cmp33, label %if.end27.if.then39_crit_edge, label %lor.lhs.false

if.end27.if.then39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end27
  %echo_skb = getelementptr i8, ptr %netdev, i32 2468
  %103 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %echo_skb, align 4
  %105 = ptrtoint ptr %echo_idx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %echo_idx.i, align 4
  %arrayidx37 = getelementptr ptr, ptr %104, i32 %106
  %107 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %108, null
  br i1 %tobool38.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.end27.if.then39_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %109 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %110, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %lor.lhs.false.if.end40_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %echo_lock, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %can_dropped_invalid_skb.exit
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %packet) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_bus_on(ptr noundef %can) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bec_poll_timer = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 9
  %call = tail call i32 @del_timer(ptr noundef %bec_poll_timer) #9
  %flush_comp = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 11
  %call1 = tail call zeroext i1 @completion_done(ptr noundef %flush_comp) #9
  br i1 %call1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_pciefd_start_controller_flush(ptr noundef %can)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %flush_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %do.body8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %can, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.40) #12
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 7
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !145
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %5, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1) #9, !srcloc !145
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 6291456) #9, !srcloc !145
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 1052
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %11 = and i32 %10, -65537
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #9
  %start_comp = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 10
  %call24 = tail call i32 @wait_for_completion_timeout(ptr noundef %start_comp, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %can, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end29:                                         ; preds = %do.body8
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #9, !srcloc !145
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %add.ptr33 = getelementptr i8, ptr %19, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1) #9, !srcloc !145
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 803209984) #9, !srcloc !145
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 4
  %add.ptr.i64 = getelementptr i8, ptr %23, i32 1052
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %can, i32 0, i32 22
  %25 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %27 = and i32 %24, -8388737
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  br i1 %tobool.not.i, label %if.else14.i, label %if.then.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %and10.i = shl i32 %26, 8
  %29 = and i32 %and10.i, 32768
  %30 = or i32 %29, %28
  br label %kvaser_pciefd_setup_controller.exit

if.else14.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = or i32 %28, -2147483648
  %.pre = shl i32 %26, 8
  br label %kvaser_pciefd_setup_controller.exit

kvaser_pciefd_setup_controller.exit:              ; preds = %if.else14.i, %if.then.i
  %and20.i.pre-phi = phi i32 [ %and10.i, %if.then.i ], [ %.pre, %if.else14.i ]
  %mode.0.i = phi i32 [ %30, %if.then.i ], [ %and16.i, %if.else14.i ]
  %31 = and i32 %and20.i.pre-phi, 512
  %mode.0.masked.i = and i32 %mode.0.i, -9441537
  %or26.i = or i32 %31, %mode.0.masked.i
  %and27.i = or i32 %or26.i, 8392704
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base, align 4
  %add.ptr30.i = getelementptr i8, ptr %33, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %and27.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %34) #9, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  %state = getelementptr inbounds %struct.can_priv, ptr %can, i32 0, i32 21
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state, align 4
  %36 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %can, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #9
  %bec = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 3
  %40 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %bec, align 4
  %rxerr = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %rxerr, align 2
  %err_rep_cnt = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 5
  %42 = ptrtoint ptr %err_rep_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %err_rep_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %kvaser_pciefd_setup_controller.exit, %if.then26, %if.then5
  %retval.0 = phi i32 [ 0, %kvaser_pciefd_setup_controller.exit ], [ -110, %if.then26 ], [ -110, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_pciefd_start_controller_flush(ptr noundef %can) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 2
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #9, !srcloc !145
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 6291456) #9, !srcloc !145
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 1048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !146
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %and = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_seq = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 4
  %8 = ptrtoint ptr %cmd_seq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_seq, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %cmd_seq, align 4
  %conv10 = zext i8 %inc to i32
  %shl = shl nuw nsw i32 %conv10, 16
  %or = or i32 %shl, 2
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %12) #9, !srcloc !145
  br label %if.end22

if.else:                                          ; preds = %entry
  %and13 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 1052
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %16 = or i32 %15, 65536
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %16) #9, !srcloc !145
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.else.if.end22_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_set_bittiming(ptr noundef %can, i1 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_bittiming = getelementptr inbounds %struct.can_priv, ptr %can, i32 0, i32 5
  %bittiming = getelementptr inbounds %struct.can_priv, ptr %can, i32 0, i32 4
  %bt.0 = select i1 %data, ptr %data_bittiming, ptr %bittiming
  %phase_seg2 = getelementptr inbounds %struct.can_bittiming, ptr %bt.0, i32 0, i32 5
  %0 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phase_seg2, align 4
  %sub = shl i32 %1, 26
  %and = add i32 %sub, 2080374784
  %shl = and i32 %and, 2080374784
  %prop_seg = getelementptr inbounds %struct.can_bittiming, ptr %bt.0, i32 0, i32 3
  %2 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr inbounds %struct.can_bittiming, ptr %bt.0, i32 0, i32 4
  %4 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %5, %3
  %sub3 = shl i32 %add, 17
  %and4 = add i32 %sub3, 66977792
  %shl5 = and i32 %and4, 66977792
  %or = or i32 %shl5, %shl
  %sjw = getelementptr inbounds %struct.can_bittiming, ptr %bt.0, i32 0, i32 6
  %6 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sjw, align 4
  %sub6 = shl i32 %7, 13
  %and7 = add i32 %sub6, 122880
  %shl8 = and i32 %and7, 122880
  %or9 = or i32 %or, %shl8
  %brp = getelementptr inbounds %struct.can_bittiming, ptr %bt.0, i32 0, i32 7
  %8 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brp, align 4
  %sub10 = add i32 %9, 8191
  %and11 = and i32 %sub10, 8191
  %or12 = or i32 %or9, %and11
  %lock = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 7
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 2
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 1052
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %13 = or i32 %12, 65536
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #9, !srcloc !145
  %call21 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call21, 10000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 1052
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !146
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  %and41 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call46 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call46, %add.i
  br i1 %cmp3.i, label %if.then50, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 4
  %add.ptr54 = getelementptr i8, ptr %21, i32 1052
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #9, !srcloc !146
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  br label %for.end

for.end:                                          ; preds = %if.then50, %for.cond.for.end_crit_edge
  %test.0 = phi i32 [ %23, %if.then50 ], [ %19, %for.cond.for.end_crit_edge ]
  %and64 = and i32 %test.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %for.end.cleanup_crit_edge, label %if.end69

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %for.end
  %24 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base, align 4
  br i1 %data, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr73 = getelementptr i8, ptr %25, i32 1064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %26) #9, !srcloc !145
  br label %if.end77

if.else74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr76 = getelementptr i8, ptr %25, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %27) #9, !srcloc !145
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.then71
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr79 = getelementptr i8, ptr %29, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %12) #9, !srcloc !145
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -16, %for.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_pciefd_read_buffer(ptr nocapture noundef readonly %pcie, i32 noundef %dma_buf) unnamed_addr #2 align 64 {
entry:
  %cf.i.i114.i = alloca ptr, align 4
  %cf.i.i.i = alloca ptr, align 4
  %cf.i.i = alloca ptr, align 4
  %packet.i = alloca %struct.kvaser_pciefd_rx_packet, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 3, i32 %dma_buf
  %0 = getelementptr inbounds [2 x i32], ptr %packet.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, ptr %packet.i, i32 0, i32 1
  %nr_channels.i300.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %freq_to_ticks_div.i.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry
  %pos.0 = phi i32 [ 0, %entry ], [ %pos.0310.i, %land.lhs.true.do.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet.i) #9
  %arrayidx1.i = getelementptr i32, ptr %3, i32 %pos.0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.thread, label %if.end.i

land.lhs.true.thread:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet.i) #9
  br label %do.end

if.end.i:                                         ; preds = %do.body
  %inc.i = add nuw nsw i32 %pos.0, 1
  %inc2.i = add nuw nsw i32 %pos.0, 2
  %arrayidx3.i = getelementptr i32, ptr %3, i32 %inc.i
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %packet.i, align 8
  %inc5.i = add nuw nsw i32 %pos.0, 3
  %arrayidx6.i = getelementptr i32, ptr %3, i32 %inc2.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %0, align 4
  %arrayidx9.i = getelementptr i32, ptr %3, i32 %inc5.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %timestamp.0.copyload.i = load i64, ptr %arrayidx9.i, align 4
  %add.i = add nuw nsw i32 %pos.0, 5
  %16 = call i64 @llvm.bswap.i64(i64 %timestamp.0.copyload.i) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %1, align 8
  %shr.i = lshr i32 %13, 28
  %18 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %shr.i, label %do.end43.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb29.i
    i32 8, label %sw.bb31.i
    i32 3, label %sw.bb33.i
    i32 5, label %sw.bb35.i
    i32 4, label %sw.bb37.i
    i32 6, label %if.end.i.do.end.i_crit_edge
    i32 9, label %if.end.i.do.end.i_crit_edge23
    i32 2, label %if.end.i.do.end.i_crit_edge24
  ]

if.end.i.do.end.i_crit_edge24:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.do.end.i_crit_edge23:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

sw.bb.i:                                          ; preds = %if.end.i
  %arrayidx14.i = getelementptr i32, ptr %3, i32 %add.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #9
  %19 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !143
  %shr.i.i = lshr i32 %13, 25
  %conv.i.i = and i32 %shr.i.i, 7
  %20 = ptrtoint ptr %nr_channels.i300.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nr_channels.i300.i, align 4
  %conv2.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv2.i.i)
  %cmp.not.i.i = icmp ult i32 %conv.i.i, %conv2.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.kvaser_pciefd_handle_data_packet.exit.i_crit_edge

sw.bb.i.kvaser_pciefd_handle_data_packet.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_handle_data_packet.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %arrayidx4.i.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv.i.i
  %22 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %stats6.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  %and9.i.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  %call.i.i = call ptr @alloc_canfd_skb(ptr noundef %25, ptr noundef nonnull %cf.i.i) #9
  %tobool12.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 6
  %26 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped.i.i, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %rx_dropped.i.i, align 4
  br label %kvaser_pciefd_handle_data_packet.exit.i

if.end14.i.i:                                     ; preds = %if.then10.i.i
  %and17.i.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end14.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end14.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.canfd_frame, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i.i, align 1
  %32 = or i8 %31, 1
  store i8 %32, ptr %flags.i.i, align 1
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end14.i.i.if.end22.i.i_crit_edge
  %and25.i.i = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end22.i.i.if.end40.i.i_crit_edge, label %if.then27.i.i

if.end22.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then27.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf.i.i, align 4
  %flags28.i.i = getelementptr inbounds %struct.canfd_frame, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %flags28.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags28.i.i, align 1
  %37 = or i8 %36, 2
  store i8 %37, ptr %flags28.i.i, align 1
  br label %if.end40.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %call34.i.i = call ptr @alloc_can_skb(ptr noundef %25, ptr noundef nonnull %cf.i.i) #9
  %tobool35.not.i.i = icmp eq ptr %call34.i.i, null
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.else.i.i.if.end40.i.i_crit_edge

if.else.i.i.if.end40.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then36.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped37.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 6
  %38 = ptrtoint ptr %rx_dropped37.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_dropped37.i.i, align 4
  %inc38.i.i = add i32 %39, 1
  store i32 %inc38.i.i, ptr %rx_dropped37.i.i, align 4
  br label %kvaser_pciefd_handle_data_packet.exit.i

if.end40.i.i:                                     ; preds = %if.else.i.i.if.end40.i.i_crit_edge, %if.then27.i.i, %if.end22.i.i.if.end40.i.i_crit_edge
  %skb.0.i.i = phi ptr [ %call.i.i, %if.then27.i.i ], [ %call.i.i, %if.end22.i.i.if.end40.i.i_crit_edge ], [ %call34.i.i, %if.else.i.i.if.end40.i.i_crit_edge ]
  %and43.i.i = and i32 %9, 536870911
  %40 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cf.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and43.i.i, ptr %41, align 8
  %and46.i.i = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i)
  %tobool47.not.i.i = icmp eq i32 %and46.i.i, 0
  br i1 %tobool47.not.i.i, label %if.end40.i.i.if.end51.i.i_crit_edge, label %if.then48.i.i

if.end40.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i.i

if.then48.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %or50.i.i = or i32 %46, -2147483648
  store i32 %or50.i.i, ptr %44, align 8
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then48.i.i, %if.end40.i.i.if.end51.i.i_crit_edge
  %shr54.i.i = lshr i32 %13, 8
  %conv55.i.i = trunc i32 %shr54.i.i to i8
  %call56.i.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv55.i.i) #9
  %47 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.canfd_frame, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call56.i.i, ptr %len.i.i, align 4
  %and59.i.i = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.else64.i.i, label %if.then61.i.i

if.then61.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %48, align 8
  %or63.i.i = or i32 %51, 1073741824
  store i32 %or63.i.i, ptr %48, align 8
  br label %if.end70.i.i

if.else64.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data65.i.i = getelementptr inbounds %struct.canfd_frame, ptr %48, i32 0, i32 5
  %conv67.i.i = zext i8 %call56.i.i to i32
  %52 = call ptr @memcpy(ptr %data65.i.i, ptr %arrayidx14.i, i32 %conv67.i.i)
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 2
  %53 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bytes.i.i, align 4
  %add.i.i = add i32 %54, %conv67.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 4
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.else64.i.i, %if.then61.i.i
  %55 = ptrtoint ptr %stats6.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stats6.i.i, align 4
  %inc71.i.i = add i32 %56, 1
  store i32 %inc71.i.i, ptr %stats6.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i.i, i32 0, i32 17
  %57 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i.i.i, align 4
  %hwtstamps.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 7
  %mul.i.i = mul i64 %16, 1000
  %59 = ptrtoint ptr %freq_to_ticks_div.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %freq_to_ticks_div.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !151

if.then168.i.i.i.i:                               ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i = trunc i64 %mul.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %60
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %div_u64.exit.i.i

if.else174.i.i.i.i:                               ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 %mul.i.i) #15, !srcloc !155
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %61, 1
  br label %div_u64.exit.i.i

div_u64.exit.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  %62 = ptrtoint ptr %hwtstamps.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %dividend.addr.0.i.i.i.i, ptr %hwtstamps.i.i.i, align 8
  %call75.i.i = call i32 @netif_rx(ptr noundef nonnull %skb.0.i.i) #9
  br label %kvaser_pciefd_handle_data_packet.exit.i

kvaser_pciefd_handle_data_packet.exit.i:          ; preds = %div_u64.exit.i.i, %if.then36.i.i, %if.then13.i.i, %sw.bb.i.kvaser_pciefd_handle_data_packet.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call75.i.i, %div_u64.exit.i.i ], [ -12, %if.then13.i.i ], [ -12, %if.then36.i.i ], [ -5, %sw.bb.i.kvaser_pciefd_handle_data_packet.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #9
  %and17.i = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %kvaser_pciefd_handle_data_packet.exit.i.sw.epilog.i_crit_edge

kvaser_pciefd_handle_data_packet.exit.i.sw.epilog.i_crit_edge: ; preds = %kvaser_pciefd_handle_data_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then19.i:                                      ; preds = %kvaser_pciefd_handle_data_packet.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr22.i = lshr i32 %13, 8
  %conv23.i = trunc i32 %shr22.i to i8
  %call24.i = call zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %conv23.i) #9
  %conv25.i = zext i8 %call24.i to i32
  %sub.i = add nuw nsw i32 %conv25.i, 3
  %div100.i = lshr i32 %sub.i, 2
  %add27.i = add nuw nsw i32 %div100.i, %add.i
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = call fastcc i32 @kvaser_pciefd_handle_ack_packet(ptr noundef %pcie, ptr noundef nonnull %packet.i) #9
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.end.i
  %shr.i102.i = lshr i32 %13, 25
  %conv.i103.i = and i32 %shr.i102.i, 7
  %63 = ptrtoint ptr %nr_channels.i300.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nr_channels.i300.i, align 4
  %conv2.i105.i = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i103.i, i32 %conv2.i105.i)
  %cmp.not.i106.i = icmp ult i32 %conv.i103.i, %conv2.i105.i
  br i1 %cmp.not.i106.i, label %if.end.i107.i, label %sw.bb31.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

sw.bb31.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

if.end.i107.i:                                    ; preds = %sw.bb31.i
  %arrayidx5.i.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv.i103.i
  %65 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx5.i.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 1048
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !146
  %70 = call i32 @llvm.bswap.i32(i32 %69) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %shr6.i.i = lshr i32 %70, 24
  %and14.i.i = and i32 %9, 4194304
  %71 = and i32 %9, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %71)
  %.not.i.i = icmp eq i32 %71, 6291456
  br i1 %.not.i.i, label %land.lhs.true16.i.i, label %if.end.i107.i.if.else.i110.i_crit_edge

if.end.i107.i.if.else.i110.i_crit_edge:           ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i32 %13, 255
  br label %if.else.i110.i

land.lhs.true16.i.i:                              ; preds = %if.end.i107.i
  %and19.i.i = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %and25.i108.i = and i32 %13, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i.i, i32 %and25.i108.i)
  %cmp26.i.i = icmp ne i32 %shr6.i.i, %and25.i108.i
  %or.cond146.i.i = select i1 %tobool20.not.i.i, i1 true, i1 %cmp26.i.i
  %and29.i.i = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %or.cond147.i.i = select i1 %or.cond146.i.i, i1 true, i1 %tobool30.not.i.i
  br i1 %or.cond147.i.i, label %land.lhs.true16.i.i.if.else.i110.i_crit_edge, label %if.then31.i.i

land.lhs.true16.i.i.if.else.i110.i_crit_edge:     ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i110.i

if.then31.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %73, i32 1040
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 2097152) #9, !srcloc !145
  %cmd_seq.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 4
  %74 = ptrtoint ptr %cmd_seq.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cmd_seq.i.i, align 4
  %inc.i109.i = add i8 %75, 1
  store i8 %inc.i109.i, ptr %cmd_seq.i.i, align 4
  %conv34.i.i = zext i8 %inc.i109.i to i32
  %shl.i.i = shl nuw nsw i32 %conv34.i.i, 16
  %or.i.i = or i32 %shl.i.i, 2
  %76 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr36.i.i = getelementptr i8, ptr %77, i32 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  %78 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i, i32 %78) #9, !srcloc !145
  %79 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %80, i32 1032
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i.i, i32 4194304) #9, !srcloc !145
  br label %if.end49.i

if.else.i110.i:                                   ; preds = %land.lhs.true16.i.i.if.else.i110.i_crit_edge, %if.end.i107.i.if.else.i110.i_crit_edge
  %and52.i.i.pre-phi = phi i32 [ %.pre, %if.end.i107.i.if.else.i110.i_crit_edge ], [ %and25.i108.i, %land.lhs.true16.i.i.if.else.i110.i_crit_edge ]
  %81 = and i32 %9, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %81)
  %.not152.i.i = icmp eq i32 %81, 3145728
  br i1 %.not152.i.i, label %land.lhs.true48.i.i, label %if.else.i110.i.if.else69.i.i_crit_edge

if.else.i110.i.if.else69.i.i_crit_edge:           ; preds = %if.else.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69.i.i

land.lhs.true48.i.i:                              ; preds = %if.else.i110.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i.i, i32 %and52.i.i.pre-phi)
  %cmp53.i.i = icmp ne i32 %shr6.i.i, %and52.i.i.pre-phi
  %and56.i.i = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  %or.cond149.i.i = or i1 %tobool57.not.i.i, %cmp53.i.i
  br i1 %or.cond149.i.i, label %land.lhs.true48.i.i.if.else69.i.i_crit_edge, label %if.then58.i.i

land.lhs.true48.i.i.if.else69.i.i_crit_edge:      ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true48.i.i
  %82 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr60.i.i = getelementptr i8, ptr %83, i32 1044
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i.i) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %84)
  %tobool64.not.i.i = icmp ult i32 %84, 16777216
  br i1 %tobool64.not.i.i, label %if.then65.i.i, label %if.then58.i.i.if.end49.i_crit_edge

if.then58.i.i.if.end49.i_crit_edge:               ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then65.i.i:                                    ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr67.i.i = getelementptr i8, ptr %86, i32 704
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i.i, i32 128) #9, !srcloc !145
  br label %if.end49.i

if.else69.i.i:                                    ; preds = %land.lhs.true48.i.i.if.else69.i.i_crit_edge, %if.else.i110.i.if.else69.i.i_crit_edge
  %and72.i.i = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i.i)
  %tobool73.not.i.i = icmp eq i32 %and72.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr6.i.i, i32 %and52.i.i.pre-phi)
  %cmp79.i.i = icmp eq i32 %shr6.i.i, %and52.i.i.pre-phi
  %or.cond150.i.i = select i1 %tobool73.not.i.i, i1 %cmp79.i.i, i1 false
  br i1 %or.cond150.i.i, label %if.then81.i.i, label %if.else95.i.i

if.then81.i.i:                                    ; preds = %if.else69.i.i
  %state.i.i.i = getelementptr inbounds %struct.can_priv, ptr %66, i32 0, i32 21
  %87 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state.i.i.i, align 4
  %89 = trunc i32 %9 to i16
  %conv.i.i.i = and i16 %89, 255
  %90 = lshr i16 %89, 8
  %91 = and i32 %9, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %92 = icmp ne i32 %91, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv.i.i.i)
  %cmp.i.i.i111.i = icmp eq i16 %conv.i.i.i, 255
  %or.cond.i.i.i = select i1 %92, i1 true, i1 %cmp.i.i.i111.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %90)
  %cmp8.i.i.i.i = icmp eq i16 %90, 255
  %or.cond14.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %cmp8.i.i.i.i
  br i1 %or.cond14.i.i.i, label %if.then81.i.i.if.end50.i.i.i.i_crit_edge, label %if.else11.i.i.i.i

if.then81.i.i.if.end50.i.i.i.i_crit_edge:         ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i.i

if.else11.i.i.i.i:                                ; preds = %if.then81.i.i
  %and14.i.i.i.i = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i.i)
  %tobool15.not.i.i.i.i = icmp eq i32 %and14.i.i.i.i, 0
  br i1 %tobool15.not.i.i.i.i, label %if.else17.i.i.i.i, label %if.else11.i.i.i.i.if.end50.i.i.i.i_crit_edge

if.else11.i.i.i.i.if.end50.i.i.i.i_crit_edge:     ; preds = %if.else11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i.i

if.else17.i.i.i.i:                                ; preds = %if.else11.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %conv.i.i.i)
  %cmp20.i.i.i.i = icmp ugt i16 %conv.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp25.i.i.i.i = icmp slt i16 %89, 0
  %or.cond87.i.i.i.i = or i1 %cmp25.i.i.i.i, %cmp20.i.i.i.i
  br i1 %or.cond87.i.i.i.i, label %if.else17.i.i.i.i.if.end50.i.i.i.i_crit_edge, label %if.else28.i.i.i.i

if.else17.i.i.i.i.if.end50.i.i.i.i_crit_edge:     ; preds = %if.else17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i.i

if.else28.i.i.i.i:                                ; preds = %if.else17.i.i.i.i
  %and31.i.i.i.i = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and31.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.else34.i.i.i.i, label %if.else28.i.i.i.i.if.end50.i.i.i.i_crit_edge

if.else28.i.i.i.i.if.end50.i.i.i.i_crit_edge:     ; preds = %if.else28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i.i

if.else34.i.i.i.i:                                ; preds = %if.else28.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 95, i16 %conv.i.i.i)
  %cmp37.i.i.i.i = icmp ugt i16 %conv.i.i.i, 95
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %89)
  %cmp42.i.i.i.i = icmp ugt i16 %89, 24575
  %or.cond88.i.i.i.i = or i1 %cmp42.i.i.i.i, %cmp37.i.i.i.i
  %..i.i.i.i = zext i1 %or.cond88.i.i.i.i to i32
  br label %if.end50.i.i.i.i

if.end50.i.i.i.i:                                 ; preds = %if.else34.i.i.i.i, %if.else28.i.i.i.i.if.end50.i.i.i.i_crit_edge, %if.else17.i.i.i.i.if.end50.i.i.i.i_crit_edge, %if.else11.i.i.i.i.if.end50.i.i.i.i_crit_edge, %if.then81.i.i.if.end50.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 3, %if.then81.i.i.if.end50.i.i.i.i_crit_edge ], [ 2, %if.else11.i.i.i.i.if.end50.i.i.i.i_crit_edge ], [ 2, %if.else17.i.i.i.i.if.end50.i.i.i.i_crit_edge ], [ 1, %if.else28.i.i.i.i.if.end50.i.i.i.i_crit_edge ], [ %..i.i.i.i, %if.else34.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i.i, i16 %90)
  %cmp55.not.i.i.i.i = icmp ult i16 %conv.i.i.i, %90
  %spec.select.i.i.i = select i1 %cmp55.not.i.i.i.i, i32 0, i32 %.sink.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i.i, i16 %90)
  %cmp61.not.i.i.i.i = icmp ugt i16 %conv.i.i.i, %90
  %cond66.i.i.i.i = select i1 %cmp61.not.i.i.i.i, i32 0, i32 %.sink.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i.i.i.i, i32 %88)
  %cmp.not.i.i.i = icmp eq i32 %.sink.i.i.i.i, %88
  br i1 %cmp.not.i.i.i, label %if.end50.i.i.i.i.if.end35.i.i.i_crit_edge, label %if.then.i.i.i

if.end50.i.i.i.i.if.end35.i.i.i_crit_edge:        ; preds = %if.end50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i.i.i

if.then.i.i.i:                                    ; preds = %if.end50.i.i.i.i
  %93 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i.i) #9
  %95 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i.i, align 4, !annotation !143
  %call.i.i.i = call ptr @alloc_can_err_skb(ptr noundef %94, ptr noundef nonnull %cf.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %if.end.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 36, i32 6
  %96 = ptrtoint ptr %rx_dropped.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_dropped.i.i.i, align 4
  %inc.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i, ptr %rx_dropped.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i.i) #9
  br label %kvaser_pciefd_handle_status_resp.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %98 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cf.i.i.i, align 4
  call fastcc void @kvaser_pciefd_change_state(ptr noundef %66, ptr noundef %99, i32 noundef %.sink.i.i.i.i, i32 noundef %spec.select.i.i.i, i32 noundef %cond66.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp10.i.i.i = icmp eq i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i.i.i.i)
  %cmp12.i.i.i = icmp eq i32 %.sink.i.i.i.i, 0
  %or.cond15.i.i.i = select i1 %cmp10.i.i.i, i1 %cmp12.i.i.i, i1 false
  br i1 %or.cond15.i.i.i, label %land.lhs.true14.i.i.i, label %if.end.i.i.i.if.end20.i.i.i_crit_edge

if.end.i.i.i.if.end20.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

land.lhs.true14.i.i.i:                            ; preds = %if.end.i.i.i
  %restart_ms.i.i.i = getelementptr inbounds %struct.can_priv, ptr %66, i32 0, i32 24
  %100 = ptrtoint ptr %restart_ms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %restart_ms.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool16.not.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool16.not.i.i.i, label %land.lhs.true14.i.i.i.if.end20.i.i.i_crit_edge, label %if.then17.i.i.i

land.lhs.true14.i.i.i.if.end20.i.i.i_crit_edge:   ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %restarts.i.i.i = getelementptr inbounds %struct.can_priv, ptr %66, i32 0, i32 1, i32 5
  %102 = ptrtoint ptr %restarts.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %restarts.i.i.i, align 4
  %inc19.i.i.i = add i32 %103, 1
  store i32 %inc19.i.i.i, ptr %restarts.i.i.i, align 4
  %104 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cf.i.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %or.i.i.i = or i32 %107, 256
  store i32 %or.i.i.i, ptr %105, align 8
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then17.i.i.i, %land.lhs.true14.i.i.i.if.end20.i.i.i_crit_edge, %if.end.i.i.i.if.end20.i.i.i_crit_edge
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %108 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i.i.i.i, align 4
  %hwtstamps.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %109, i32 0, i32 7
  %mul.i.i.i = mul i64 %16, 1000
  %kv_pcie.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 1
  %110 = ptrtoint ptr %kv_pcie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %kv_pcie.i.i.i, align 4
  %freq_to_ticks_div.i.i.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %freq_to_ticks_div.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %freq_to_ticks_div.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i.i)
  %cmp164.i.i.i.i.i = icmp ult i64 %mul.i.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i, label %if.then168.i.i.i.i.i, label %if.else174.i.i.i.i.i, !prof !151

if.then168.i.i.i.i.i:                             ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i.i = trunc i64 %mul.i.i.i to i32
  %div172.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i, %113
  %conv173.i.i.i.i.i = zext i32 %div172.i.i.i.i.i to i64
  br label %div_u64.exit.i.i.i

if.else174.i.i.i.i.i:                             ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %113, i64 %mul.i.i.i) #15, !srcloc !155
  %asmresult1.i.i.i.i.i.i = extractvalue { i64, i64 } %114, 1
  br label %div_u64.exit.i.i.i

div_u64.exit.i.i.i:                               ; preds = %if.else174.i.i.i.i.i, %if.then168.i.i.i.i.i
  %dividend.addr.0.i.i.i.i.i = phi i64 [ %conv173.i.i.i.i.i, %if.then168.i.i.i.i.i ], [ %asmresult1.i.i.i.i.i.i, %if.else174.i.i.i.i.i ]
  %115 = ptrtoint ptr %hwtstamps.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %dividend.addr.0.i.i.i.i.i, ptr %hwtstamps.i.i.i.i, align 8
  %conv25.i.i.i = trunc i32 %9 to i8
  %116 = ptrtoint ptr %cf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cf.i.i.i, align 4
  %arrayidx26.i.i.i = getelementptr %struct.can_frame, ptr %117, i32 0, i32 5, i32 6
  %118 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv25.i.i.i, ptr %arrayidx26.i.i.i, align 2
  %conv28.i.i.i = trunc i16 %90 to i8
  %119 = load ptr, ptr %cf.i.i.i, align 4
  %arrayidx30.i.i.i = getelementptr %struct.can_frame, ptr %119, i32 0, i32 5, i32 7
  %120 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv28.i.i.i, ptr %arrayidx30.i.i.i, align 1
  %call31.i.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i.i) #9
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %div_u64.exit.i.i.i, %if.end50.i.i.i.i.if.end35.i.i.i_crit_edge
  %bec37.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 3
  %121 = ptrtoint ptr %bec37.i.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i.i.i, ptr %bec37.i.i.i, align 4
  %rxerr41.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %rxerr41.i.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %90, ptr %rxerr41.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i.i)
  %tobool44.not.i.i.i = icmp eq i16 %conv.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %89)
  %tobool47.not.i.i.i = icmp ult i16 %89, 256
  %or.cond16.i.i.i = and i1 %tobool47.not.i.i.i, %tobool44.not.i.i.i
  br i1 %or.cond16.i.i.i, label %if.end35.i.i.i.kvaser_pciefd_handle_status_resp.exit.i.i_crit_edge, label %if.then48.i.i.i

if.end35.i.i.i.kvaser_pciefd_handle_status_resp.exit.i.i_crit_edge: ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_handle_status_resp.exit.i.i

if.then48.i.i.i:                                  ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bec_poll_timer.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %123, 20
  %call50.i.i.i = call i32 @mod_timer(ptr noundef %bec_poll_timer.i.i.i, i32 noundef %add.i.i.i) #9
  br label %kvaser_pciefd_handle_status_resp.exit.i.i

kvaser_pciefd_handle_status_resp.exit.i.i:        ; preds = %if.then48.i.i.i, %if.end35.i.i.i.kvaser_pciefd_handle_status_resp.exit.i.i_crit_edge, %if.then8.i.i.i
  %124 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %state.i.i.i, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %125, label %if.then91.i.i [
    i32 3, label %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge
    i32 0, label %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge25
  ]

kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge25: ; preds = %kvaser_pciefd_handle_status_resp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge: ; preds = %kvaser_pciefd_handle_status_resp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then91.i.i:                                    ; preds = %kvaser_pciefd_handle_status_resp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bec_poll_timer.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %add.i112.i = add i32 %127, 20
  %call93.i.i = call i32 @mod_timer(ptr noundef %bec_poll_timer.i.i, i32 noundef %add.i112.i) #9
  br label %if.end49.i

if.else95.i.i:                                    ; preds = %if.else69.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool99.not.i.i = icmp ne i32 %and14.i.i, 0
  %and101.i.i = and i32 %70, 51328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i)
  %tobool102.not.i.i = icmp eq i32 %and101.i.i, 0
  %or.cond151.i.i = select i1 %tobool99.not.i.i, i1 %tobool102.not.i.i, i1 false
  br i1 %or.cond151.i.i, label %if.then103.i.i, label %if.else95.i.i.if.end49.i_crit_edge

if.else95.i.i.if.end49.i_crit_edge:               ; preds = %if.else95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then103.i.i:                                   ; preds = %if.else95.i.i
  %start_comp.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %66, i32 0, i32 10
  %call104.i.i = call zeroext i1 @completion_done(ptr noundef %start_comp.i.i) #9
  br i1 %call104.i.i, label %if.then103.i.i.if.end49.i_crit_edge, label %if.then105.i.i

if.then103.i.i.if.end49.i_crit_edge:              ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then105.i.i:                                   ; preds = %if.then103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef %start_comp.i.i) #9
  br label %if.end49.i

sw.bb33.i:                                        ; preds = %if.end.i
  %shr.i116.i = lshr i32 %13, 25
  %conv.i117.i = and i32 %shr.i116.i, 7
  %128 = ptrtoint ptr %nr_channels.i300.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %nr_channels.i300.i, align 4
  %conv2.i119.i = zext i8 %129 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i117.i, i32 %conv2.i119.i)
  %cmp.not.i120.i = icmp ult i32 %conv.i117.i, %conv2.i119.i
  br i1 %cmp.not.i120.i, label %if.end.i127.i, label %sw.bb33.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

sw.bb33.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

if.end.i127.i:                                    ; preds = %sw.bb33.i
  %arrayidx5.i121.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv.i117.i
  %130 = ptrtoint ptr %arrayidx5.i121.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx5.i121.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i114.i) #9
  %134 = ptrtoint ptr %cf.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %cf.i.i114.i, align 4
  %state.i.i122.i = getelementptr inbounds %struct.can_priv, ptr %131, i32 0, i32 21
  %135 = ptrtoint ptr %state.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %state.i.i122.i, align 4
  %137 = trunc i32 %9 to i16
  %conv.i.i123.i = and i16 %137, 255
  %138 = lshr i16 %137, 8
  %139 = and i32 %9, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %140 = icmp ne i32 %139, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv.i.i123.i)
  %cmp.i.i.i124.i = icmp eq i16 %conv.i.i123.i, 255
  %or.cond.i.i125.i = select i1 %140, i1 true, i1 %cmp.i.i.i124.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %138)
  %cmp8.i.i.i126.i = icmp eq i16 %138, 255
  %or.cond12.i.i.i = select i1 %or.cond.i.i125.i, i1 true, i1 %cmp8.i.i.i126.i
  br i1 %or.cond12.i.i.i, label %if.end.i127.i.if.end50.i.i.i146.i_crit_edge, label %if.else11.i.i.i130.i

if.end.i127.i.if.end50.i.i.i146.i_crit_edge:      ; preds = %if.end.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i146.i

if.else11.i.i.i130.i:                             ; preds = %if.end.i127.i
  %and14.i.i.i128.i = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i128.i)
  %tobool15.not.i.i.i129.i = icmp eq i32 %and14.i.i.i128.i, 0
  br i1 %tobool15.not.i.i.i129.i, label %if.else17.i.i.i134.i, label %if.else11.i.i.i130.i.if.end50.i.i.i146.i_crit_edge

if.else11.i.i.i130.i.if.end50.i.i.i146.i_crit_edge: ; preds = %if.else11.i.i.i130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i146.i

if.else17.i.i.i134.i:                             ; preds = %if.else11.i.i.i130.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %conv.i.i123.i)
  %cmp20.i.i.i131.i = icmp ugt i16 %conv.i.i123.i, 127
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp25.i.i.i132.i = icmp slt i16 %137, 0
  %or.cond87.i.i.i133.i = or i1 %cmp25.i.i.i132.i, %cmp20.i.i.i131.i
  br i1 %or.cond87.i.i.i133.i, label %if.else17.i.i.i134.i.if.end50.i.i.i146.i_crit_edge, label %if.else28.i.i.i137.i

if.else17.i.i.i134.i.if.end50.i.i.i146.i_crit_edge: ; preds = %if.else17.i.i.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i146.i

if.else28.i.i.i137.i:                             ; preds = %if.else17.i.i.i134.i
  %and31.i.i.i135.i = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i.i135.i)
  %tobool32.not.i.i.i136.i = icmp eq i32 %and31.i.i.i135.i, 0
  br i1 %tobool32.not.i.i.i136.i, label %if.else34.i.i.i142.i, label %if.else28.i.i.i137.i.if.end50.i.i.i146.i_crit_edge

if.else28.i.i.i137.i.if.end50.i.i.i146.i_crit_edge: ; preds = %if.else28.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i146.i

if.else34.i.i.i142.i:                             ; preds = %if.else28.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 95, i16 %conv.i.i123.i)
  %cmp37.i.i.i138.i = icmp ugt i16 %conv.i.i123.i, 95
  call void @__sanitizer_cov_trace_const_cmp2(i16 24575, i16 %137)
  %cmp42.i.i.i139.i = icmp ugt i16 %137, 24575
  %or.cond88.i.i.i140.i = or i1 %cmp42.i.i.i139.i, %cmp37.i.i.i138.i
  %..i.i.i141.i = zext i1 %or.cond88.i.i.i140.i to i32
  br label %if.end50.i.i.i146.i

if.end50.i.i.i146.i:                              ; preds = %if.else34.i.i.i142.i, %if.else28.i.i.i137.i.if.end50.i.i.i146.i_crit_edge, %if.else17.i.i.i134.i.if.end50.i.i.i146.i_crit_edge, %if.else11.i.i.i130.i.if.end50.i.i.i146.i_crit_edge, %if.end.i127.i.if.end50.i.i.i146.i_crit_edge
  %.sink.i.i.i143.i = phi i32 [ 3, %if.end.i127.i.if.end50.i.i.i146.i_crit_edge ], [ 2, %if.else11.i.i.i130.i.if.end50.i.i.i146.i_crit_edge ], [ 2, %if.else17.i.i.i134.i.if.end50.i.i.i146.i_crit_edge ], [ 1, %if.else28.i.i.i137.i.if.end50.i.i.i146.i_crit_edge ], [ %..i.i.i141.i, %if.else34.i.i.i142.i ]
  %call.i.i144.i = call ptr @alloc_can_err_skb(ptr noundef %133, ptr noundef nonnull %cf.i.i114.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i.i.i143.i, i32 %136)
  %cmp.not.i.i145.i = icmp eq i32 %.sink.i.i.i143.i, %136
  br i1 %cmp.not.i.i145.i, label %if.end50.i.i.i146.i.if.end20.i.i157.i_crit_edge, label %if.then.i.i151.i

if.end50.i.i.i146.i.if.end20.i.i157.i_crit_edge:  ; preds = %if.end50.i.i.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i157.i

if.then.i.i151.i:                                 ; preds = %if.end50.i.i.i146.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i123.i, i16 %138)
  %cmp61.not.i.i.i147.i = icmp ugt i16 %conv.i.i123.i, %138
  %cond66.i.i.i148.i = select i1 %cmp61.not.i.i.i147.i, i32 0, i32 %.sink.i.i.i143.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i123.i, i16 %138)
  %cmp55.not.i.i.i149.i = icmp ult i16 %conv.i.i123.i, %138
  %spec.select.i.i150.i = select i1 %cmp55.not.i.i.i149.i, i32 0, i32 %.sink.i.i.i143.i
  %141 = ptrtoint ptr %cf.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cf.i.i114.i, align 4
  call fastcc void @kvaser_pciefd_change_state(ptr noundef %131, ptr noundef %142, i32 noundef %.sink.i.i.i143.i, i32 noundef %spec.select.i.i150.i, i32 noundef %cond66.i.i.i148.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %136)
  %cmp9.i.i.i = icmp eq i32 %136, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i.i.i143.i)
  %cmp11.i.i.i = icmp eq i32 %.sink.i.i.i143.i, 0
  %or.cond13.i.i.i = select i1 %cmp9.i.i.i, i1 %cmp11.i.i.i, i1 false
  br i1 %or.cond13.i.i.i, label %land.lhs.true13.i.i.i, label %if.then.i.i151.i.if.end20.i.i157.i_crit_edge

if.then.i.i151.i.if.end20.i.i157.i_crit_edge:     ; preds = %if.then.i.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i157.i

land.lhs.true13.i.i.i:                            ; preds = %if.then.i.i151.i
  %restart_ms.i.i152.i = getelementptr inbounds %struct.can_priv, ptr %131, i32 0, i32 24
  %143 = ptrtoint ptr %restart_ms.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %restart_ms.i.i152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i153.i = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i153.i, label %land.lhs.true13.i.i.i.if.end20.i.i157.i_crit_edge, label %if.then15.i.i.i

land.lhs.true13.i.i.i.if.end20.i.i157.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i157.i

if.then15.i.i.i:                                  ; preds = %land.lhs.true13.i.i.i
  %restarts.i.i154.i = getelementptr inbounds %struct.can_priv, ptr %131, i32 0, i32 1, i32 5
  %145 = ptrtoint ptr %restarts.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %restarts.i.i154.i, align 4
  %inc.i.i155.i = add i32 %146, 1
  store i32 %inc.i.i155.i, ptr %restarts.i.i154.i, align 4
  %tobool17.not.i.i.i = icmp eq ptr %call.i.i144.i, null
  br i1 %tobool17.not.i.i.i, label %if.then15.i.i.i.if.end20.i.i157.i_crit_edge, label %if.then18.i.i.i

if.then15.i.i.i.if.end20.i.i157.i_crit_edge:      ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i157.i

if.then18.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %cf.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cf.i.i114.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %or.i.i156.i = or i32 %150, 256
  store i32 %or.i.i156.i, ptr %148, align 8
  br label %if.end20.i.i157.i

if.end20.i.i157.i:                                ; preds = %if.then18.i.i.i, %if.then15.i.i.i.if.end20.i.i157.i_crit_edge, %land.lhs.true13.i.i.i.if.end20.i.i157.i_crit_edge, %if.then.i.i151.i.if.end20.i.i157.i_crit_edge, %if.end50.i.i.i146.i.if.end20.i.i157.i_crit_edge
  %err_rep_cnt.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 5
  %151 = ptrtoint ptr %err_rep_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %err_rep_cnt.i.i.i, align 4
  %inc21.i.i.i = add i32 %152, 1
  store i32 %inc21.i.i.i, ptr %err_rep_cnt.i.i.i, align 4
  %can_stats23.i.i.i = getelementptr inbounds %struct.can_priv, ptr %131, i32 0, i32 1
  %153 = ptrtoint ptr %can_stats23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %can_stats23.i.i.i, align 4
  %inc24.i.i.i = add i32 %154, 1
  store i32 %inc24.i.i.i, ptr %can_stats23.i.i.i, align 4
  %and27.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  %rx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 36, i32 4
  %tx_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 36, i32 5
  %rx_errors.sink14.i.i.i = select i1 %tobool28.not.i.i.i, ptr %rx_errors.i.i.i, ptr %tx_errors.i.i.i
  %155 = ptrtoint ptr %rx_errors.sink14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_errors.sink14.i.i.i, align 4
  %inc31.i.i.i = add i32 %156, 1
  store i32 %inc31.i.i.i, ptr %rx_errors.sink14.i.i.i, align 4
  %bec34.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 3
  %157 = ptrtoint ptr %bec34.i.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv.i.i123.i, ptr %bec34.i.i.i, align 4
  %rxerr38.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %rxerr38.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %138, ptr %rxerr38.i.i.i, align 2
  %tobool39.not.i.i.i = icmp eq ptr %call.i.i144.i, null
  br i1 %tobool39.not.i.i.i, label %if.then40.i.i.i, label %if.end42.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end20.i.i157.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped.i.i158.i = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 36, i32 6
  %159 = ptrtoint ptr %rx_dropped.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_dropped.i.i158.i, align 4
  %inc41.i.i.i = add i32 %160, 1
  store i32 %inc41.i.i.i, ptr %rx_dropped.i.i158.i, align 4
  br label %kvaser_pciefd_rx_error_frame.exit.i.i

if.end42.i.i.i:                                   ; preds = %if.end20.i.i157.i
  %end.i.i.i.i159.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i144.i, i32 0, i32 17
  %161 = ptrtoint ptr %end.i.i.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i.i.i.i159.i, align 4
  %hwtstamps.i.i.i160.i = getelementptr inbounds %struct.skb_shared_info, ptr %162, i32 0, i32 7
  %mul.i.i162.i = mul i64 %16, 1000
  %kv_pcie.i.i163.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 1
  %163 = ptrtoint ptr %kv_pcie.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %kv_pcie.i.i163.i, align 4
  %freq_to_ticks_div.i.i164.i = getelementptr inbounds %struct.kvaser_pciefd, ptr %164, i32 0, i32 7
  %165 = ptrtoint ptr %freq_to_ticks_div.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %freq_to_ticks_div.i.i164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i162.i)
  %cmp164.i.i.i.i269.i = icmp ult i64 %mul.i.i162.i, 4294967296
  br i1 %cmp164.i.i.i.i269.i, label %if.then168.i.i.i.i274.i, label %if.else174.i.i.i.i276.i, !prof !151

if.then168.i.i.i.i274.i:                          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i271.i = trunc i64 %mul.i.i162.i to i32
  %div172.i.i.i.i272.i = udiv i32 %conv169.i.i.i.i271.i, %166
  %conv173.i.i.i.i273.i = zext i32 %div172.i.i.i.i272.i to i64
  br label %div_u64.exit.i.i278.i

if.else174.i.i.i.i276.i:                          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %167 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %166, i64 %mul.i.i162.i) #15, !srcloc !155
  %asmresult1.i.i.i.i.i275.i = extractvalue { i64, i64 } %167, 1
  br label %div_u64.exit.i.i278.i

div_u64.exit.i.i278.i:                            ; preds = %if.else174.i.i.i.i276.i, %if.then168.i.i.i.i274.i
  %dividend.addr.0.i.i.i.i277.i = phi i64 [ %conv173.i.i.i.i273.i, %if.then168.i.i.i.i274.i ], [ %asmresult1.i.i.i.i.i275.i, %if.else174.i.i.i.i276.i ]
  %168 = ptrtoint ptr %hwtstamps.i.i.i160.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %dividend.addr.0.i.i.i.i277.i, ptr %hwtstamps.i.i.i160.i, align 8
  %169 = ptrtoint ptr %cf.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cf.i.i114.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 8
  %or47.i.i.i = or i32 %172, 128
  store i32 %or47.i.i.i, ptr %170, align 8
  %conv49.i.i.i = trunc i32 %9 to i8
  %173 = load ptr, ptr %cf.i.i114.i, align 4
  %arrayidx50.i.i.i = getelementptr %struct.can_frame, ptr %173, i32 0, i32 5, i32 6
  %174 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv49.i.i.i, ptr %arrayidx50.i.i.i, align 2
  %conv52.i.i.i = trunc i16 %138 to i8
  %175 = load ptr, ptr %cf.i.i114.i, align 4
  %arrayidx54.i.i.i = getelementptr %struct.can_frame, ptr %175, i32 0, i32 5, i32 7
  %176 = ptrtoint ptr %arrayidx54.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv52.i.i.i, ptr %arrayidx54.i.i.i, align 1
  %call55.i.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i144.i) #9
  br label %kvaser_pciefd_rx_error_frame.exit.i.i

kvaser_pciefd_rx_error_frame.exit.i.i:            ; preds = %div_u64.exit.i.i278.i, %if.then40.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i114.i) #9
  %177 = ptrtoint ptr %err_rep_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %err_rep_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %178)
  %cmp6.i.i = icmp sgt i32 %178, 255
  br i1 %cmp6.i.i, label %if.then8.i.i, label %kvaser_pciefd_rx_error_frame.exit.i.i.if.end9.i.i_crit_edge

kvaser_pciefd_rx_error_frame.exit.i.i.if.end9.i.i_crit_edge: ; preds = %kvaser_pciefd_rx_error_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %kvaser_pciefd_rx_error_frame.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 7
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #9
  %reg_base.i.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 2
  %179 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %180, i32 1052
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  %182 = and i32 %181, -1048577
  %183 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %184, i32 1052
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i.i, i32 %182) #9, !srcloc !145
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #9
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %kvaser_pciefd_rx_error_frame.exit.i.i.if.end9.i.i_crit_edge
  %bec_poll_timer.i279.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %131, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %add.i280.i = add i32 %185, 20
  %call11.i.i = call i32 @mod_timer(ptr noundef %bec_poll_timer.i279.i, i32 noundef %add.i280.i) #9
  br label %if.end49.i

sw.bb35.i:                                        ; preds = %if.end.i
  %shr.i283.i = lshr i32 %13, 25
  %conv.i284.i = and i32 %shr.i283.i, 7
  %186 = ptrtoint ptr %nr_channels.i300.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %nr_channels.i300.i, align 4
  %conv2.i286.i = zext i8 %187 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i284.i, i32 %conv2.i286.i)
  %cmp.not.i287.i = icmp ult i32 %conv.i284.i, %conv2.i286.i
  br i1 %cmp.not.i287.i, label %if.end.i290.i, label %sw.bb35.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

sw.bb35.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

if.end.i290.i:                                    ; preds = %sw.bb35.i
  %arrayidx5.i288.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv.i284.i
  %188 = ptrtoint ptr %arrayidx5.i288.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx5.i288.i, align 4
  %and8.i.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i289.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool.not.i289.i, label %if.else.i295.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i290.i
  %reg_base.i291.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %reg_base.i291.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_base.i291.i, align 4
  %add.ptr.i292.i = getelementptr i8, ptr %191, i32 1044
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292.i) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %192)
  %cmp13.i.i = icmp ult i32 %192, 16777216
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.then9.i.i.if.end49.i_crit_edge

if.then9.i.i.if.end49.i_crit_edge:                ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then15.i.i:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %193 = ptrtoint ptr %reg_base.i291.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg_base.i291.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %194, i32 704
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 128) #9, !srcloc !145
  br label %if.end49.i

if.else.i295.i:                                   ; preds = %if.end.i290.i
  %and21.i.i = and i32 %9, 255
  %195 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %189, align 4
  %call23.i.i = call i32 @can_get_echo_skb(ptr noundef %196, i32 noundef %and21.i.i, ptr noundef null) #9
  %197 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %189, align 4
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 36, i32 3
  %199 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i293.i = add i32 %200, %call23.i.i
  store i32 %add.i293.i, ptr %tx_bytes.i.i, align 4
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 36, i32 1
  %201 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_packets.i.i, align 4
  %inc.i294.i = add i32 %202, 1
  store i32 %inc.i294.i, ptr %tx_packets.i.i, align 4
  %203 = load ptr, ptr %189, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %203, i32 0, i32 103
  %204 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %_tx.i.i.i.i, align 128
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %205, i32 0, i32 13
  %206 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %state.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %207, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.else.i295.i.if.end49.i_crit_edge, label %if.then30.i.i

if.else.i295.i.if.end49.i_crit_edge:              ; preds = %if.else.i295.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then30.i.i:                                    ; preds = %if.else.i295.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_tx_wake_queue(ptr noundef %205) #9
  br label %if.end49.i

sw.bb37.i:                                        ; preds = %if.end.i
  %shr.i298.i = lshr i32 %13, 25
  %conv.i299.i = and i32 %shr.i298.i, 7
  %208 = ptrtoint ptr %nr_channels.i300.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %nr_channels.i300.i, align 4
  %conv2.i301.i = zext i8 %209 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i299.i, i32 %conv2.i301.i)
  %cmp.not.i302.i = icmp ult i32 %conv.i299.i, %conv2.i301.i
  br i1 %cmp.not.i302.i, label %if.end.i305.i, label %sw.bb37.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

sw.bb37.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

if.end.i305.i:                                    ; preds = %sw.bb37.i
  %arrayidx5.i303.i = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv.i299.i
  %210 = ptrtoint ptr %arrayidx5.i303.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx5.i303.i, align 4
  %flush_comp.i.i = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %211, i32 0, i32 11
  %call.i304.i = call zeroext i1 @completion_done(ptr noundef %flush_comp.i.i) #9
  br i1 %call.i304.i, label %if.end.i305.i.if.end49.i_crit_edge, label %if.then6.i.i

if.end.i305.i.if.end49.i_crit_edge:               ; preds = %if.end.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then6.i.i:                                     ; preds = %if.end.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @complete(ptr noundef %flush_comp.i.i) #9
  br label %if.end49.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge23, %if.end.i.do.end.i_crit_edge24
  %212 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pcie, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %shr.i) #12
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pcie, align 4
  %dev45.i = getelementptr inbounds %struct.pci_dev, ptr %215, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45.i, ptr noundef nonnull @.str.53, i32 noundef %shr.i) #12
  br label %kvaser_pciefd_read_packet.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb29.i, %if.then19.i, %kvaser_pciefd_handle_data_packet.exit.i.sw.epilog.i_crit_edge
  %pos.0.i = phi i32 [ %add.i, %sw.bb29.i ], [ %add.i, %kvaser_pciefd_handle_data_packet.exit.i.sw.epilog.i_crit_edge ], [ %add27.i, %if.then19.i ]
  %ret.0.i = phi i32 [ %call30.i, %sw.bb29.i ], [ %retval.0.i.i, %kvaser_pciefd_handle_data_packet.exit.i.sw.epilog.i_crit_edge ], [ %retval.0.i.i, %if.then19.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool47.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool47.not.i, label %sw.epilog.i.if.end49.i_crit_edge, label %sw.epilog.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

sw.epilog.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

sw.epilog.i.if.end49.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.end49.i:                                       ; preds = %sw.epilog.i.if.end49.i_crit_edge, %do.end.i, %if.then6.i.i, %if.end.i305.i.if.end49.i_crit_edge, %if.then30.i.i, %if.else.i295.i.if.end49.i_crit_edge, %if.then15.i.i, %if.then9.i.i.if.end49.i_crit_edge, %if.end9.i.i, %if.then105.i.i, %if.then103.i.i.if.end49.i_crit_edge, %if.else95.i.i.if.end49.i_crit_edge, %if.then91.i.i, %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge, %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge25, %if.then65.i.i, %if.then58.i.i.if.end49.i_crit_edge, %if.then31.i.i
  %pos.0310.i = phi i32 [ %pos.0.i, %sw.epilog.i.if.end49.i_crit_edge ], [ %add.i, %do.end.i ], [ %add.i, %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge ], [ %add.i, %kvaser_pciefd_handle_status_resp.exit.i.i.if.end49.i_crit_edge25 ], [ %add.i, %if.then58.i.i.if.end49.i_crit_edge ], [ %add.i, %if.then65.i.i ], [ %add.i, %if.else95.i.i.if.end49.i_crit_edge ], [ %add.i, %if.then105.i.i ], [ %add.i, %if.then103.i.i.if.end49.i_crit_edge ], [ %add.i, %if.then91.i.i ], [ %add.i, %if.then31.i.i ], [ %add.i, %if.end9.i.i ], [ %add.i, %if.else.i295.i.if.end49.i_crit_edge ], [ %add.i, %if.then30.i.i ], [ %add.i, %if.then9.i.i.if.end49.i_crit_edge ], [ %add.i, %if.then15.i.i ], [ %add.i, %if.then6.i.i ], [ %add.i, %if.end.i305.i.if.end49.i_crit_edge ]
  %add50.i = add i32 %6, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.i, i32 %pos.0310.i)
  %cmp.not.i = icmp eq i32 %add50.i, %pos.0310.i
  br i1 %cmp.not.i, label %land.lhs.true, label %if.end49.i.kvaser_pciefd_read_packet.exit.thread_crit_edge

if.end49.i.kvaser_pciefd_read_packet.exit.thread_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kvaser_pciefd_read_packet.exit.thread

kvaser_pciefd_read_packet.exit.thread:            ; preds = %if.end49.i.kvaser_pciefd_read_packet.exit.thread_crit_edge, %sw.epilog.i.kvaser_pciefd_read_packet.exit.thread_crit_edge, %do.end43.i, %sw.bb37.i.kvaser_pciefd_read_packet.exit.thread_crit_edge, %sw.bb35.i.kvaser_pciefd_read_packet.exit.thread_crit_edge, %sw.bb33.i.kvaser_pciefd_read_packet.exit.thread_crit_edge, %sw.bb31.i.kvaser_pciefd_read_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet.i) #9
  br label %do.end

land.lhs.true:                                    ; preds = %if.end49.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet.i) #9
  %cmp1 = icmp ult i32 %pos.0310.i, 4096
  br i1 %cmp1, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %kvaser_pciefd_read_packet.exit.thread, %land.lhs.true.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kvaser_pciefd_handle_ack_packet(ptr nocapture noundef readonly %pcie, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %1, 25
  %conv = and i32 %shr, 7
  %nr_channels = getelementptr inbounds %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 4
  %2 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_channels, align 4
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv2)
  %cmp.not = icmp ult i32 %conv, %conv2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr %struct.kvaser_pciefd, ptr %pcie, i32 0, i32 2, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 8
  %and8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and13 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end16_crit_edge, label %if.then15

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #9
  %10 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !143
  %call.i = call ptr @alloc_can_err_skb(ptr noundef %9, ptr noundef nonnull %cf.i) #9
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p, align 8
  %and.i = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  br i1 %cond.i, label %if.end14.thread33.i, label %if.end14.i

if.end14.thread33.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %arbitration_lost34.i = getelementptr inbounds %struct.can_priv, ptr %5, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %arbitration_lost34.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arbitration_lost34.i, align 4
  %inc835.i = add i32 %16, 1
  store i32 %inc835.i, ptr %arbitration_lost34.i, align 4
  br label %if.else20.i

if.else.i:                                        ; preds = %if.then15
  br i1 %cond.i, label %if.else.i.if.else20.i_crit_edge, label %if.end14.thread.i

if.else.i.if.else20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20.i

if.end14.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %or12.i = or i32 %20, 32
  store i32 %or12.i, ptr %18, align 8
  br label %if.then16.i

if.end14.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %or.i = or i32 %24, 2
  store i32 %or.i, ptr %22, align 8
  %arbitration_lost.i = getelementptr inbounds %struct.can_priv, ptr %5, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arbitration_lost.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arbitration_lost.i, align 4
  %inc8.i = add i32 %26, 1
  store i32 %inc8.i, ptr %arbitration_lost.i, align 4
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i, %if.end14.thread.i
  %27 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %or18.i = or i32 %30, 128
  store i32 %or18.i, ptr %28, align 8
  %call19.i = call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  br label %kvaser_pciefd_handle_nack_packet.exit

if.else20.i:                                      ; preds = %if.else.i.if.else20.i_crit_edge, %if.end14.thread33.i
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 6
  %31 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_dropped.i, align 4
  %inc21.i = add i32 %32, 1
  store i32 %inc21.i, ptr %rx_dropped.i, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.57) #12
  br label %kvaser_pciefd_handle_nack_packet.exit

kvaser_pciefd_handle_nack_packet.exit:            ; preds = %if.else20.i, %if.then16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #9
  br label %if.end16

if.end16:                                         ; preds = %kvaser_pciefd_handle_nack_packet.exit, %if.end10.if.end16_crit_edge
  %35 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p, align 8
  %and19 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %do.body22

do.body22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kvaser_pciefd_handle_ack_packet.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kvaser_pciefd_handle_ack_packet, %cleanup)) #9
          to label %if.then27 [label %cleanup], !srcloc !148

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @kvaser_pciefd_handle_ack_packet.__UNIQUE_ID_ddebug466, ptr noundef %38, ptr noundef nonnull @.str.56) #9
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %and34 = and i32 %36, 255
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %call37 = call i32 @can_get_echo_skb(ptr noundef %40, i32 noundef %and34, ptr noundef null) #9
  %reg_base = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %5, i32 0, i32 2
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 1044
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %43)
  %cmp42 = icmp ult i32 %43, 285212672
  br i1 %cmp42, label %land.lhs.true, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true:                                    ; preds = %if.else
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end51_crit_edge, label %if.then48

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_tx_wake_queue(ptr noundef %47) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %land.lhs.true.if.end51_crit_edge, %if.else.if.end51_crit_edge
  br i1 %tobool14.not, label %if.then53, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 3
  %52 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %53, %call37
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 1
  %54 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end51.cleanup_crit_edge, %if.then27, %do.body22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %if.then27 ], [ 0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_canfd_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kvaser_pciefd_change_state(ptr noundef %can, ptr noundef %cf, i32 noundef %new_state, i32 noundef %tx_state, i32 noundef %rx_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %can, align 4
  tail call void @can_change_state(ptr noundef %1, ptr noundef %cf, i32 noundef %tx_state, i32 noundef %rx_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp = icmp eq i32 %new_state, 3
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %can, align 4
  %lock = getelementptr inbounds %struct.kvaser_pciefd_can, ptr %can, i32 0, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  %restart_ms = getelementptr inbounds %struct.can_priv, ptr %can, i32 0, i32 24
  %8 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then13, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kvaser_pciefd_start_controller_flush(ptr noundef %can)
  tail call void @can_bus_off(ptr noundef %3) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_change_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !95, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__UNIQUE_ID_file461, !1, !"__UNIQUE_ID_file461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license462, !1, !"__UNIQUE_ID_license462", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author463, !4, !"__UNIQUE_ID_author463", i1 false, i1 false}
!4 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description464, !6, !"__UNIQUE_ID_description464", i1 false, i1 false}
!6 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_kvaser_pciefd__467_1919_kvaser_pciefd_init6, !8, !"__initcall__kmod_kvaser_pciefd__467_1919_kvaser_pciefd_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1919, i32 1}
!9 = !{ptr @__exitcall_kvaser_pciefd_exit, !8, !"__exitcall_kvaser_pciefd_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @kvaser_pciefd, !12, !"kvaser_pciefd", i1 false, i1 false}
!12 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1912, i32 26}
!13 = !{ptr @kvaser_pciefd_id_table, !14, !"kvaser_pciefd_id_table", i1 false, i1 false}
!14 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 317, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1110, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @kvaser_pciefd_setup_board._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @kvaser_pciefd_setup_board._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1121, i32 2}
!25 = !{ptr @kvaser_pciefd_setup_board.__UNIQUE_ID_ddebug465, !24, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1128, i32 3}
!28 = !{ptr @kvaser_pciefd_setup_board._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @kvaser_pciefd_setup_board._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 456, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @kvaser_pciefd_read_cfg._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @kvaser_pciefd_read_cfg._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 471, i32 3}
!37 = !{ptr @kvaser_pciefd_read_cfg._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @kvaser_pciefd_read_cfg._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 380, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @kvaser_pciefd_spi_cmd._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @kvaser_pciefd_spi_cmd._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 409, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 415, i32 3}
!51 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 422, i32 3}
!55 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @kvaser_pciefd_cfg_read_and_verify._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1071, i32 4}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @kvaser_pciefd_setup_dma._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @kvaser_pciefd_setup_dma._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1086, i32 3}
!64 = !{ptr @kvaser_pciefd_setup_dma._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @kvaser_pciefd_setup_dma._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @kvaser_pciefd_setup_can_ctrls.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 953, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 963, i32 4}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @kvaser_pciefd_setup_can_ctrls._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @kvaser_pciefd_setup_can_ctrls._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @kvaser_pciefd_setup_can_ctrls.__key.33, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 973, i32 3}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @kvaser_pciefd_setup_can_ctrls.__key.35, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 974, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 991, i32 4}
!82 = !{ptr @kvaser_pciefd_setup_can_ctrls._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @kvaser_pciefd_setup_can_ctrls._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @kvaser_pciefd_netdev_ops, !85, !"kvaser_pciefd_netdev_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 919, i32 36}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 612, i32 28}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 630, i32 28}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 718, i32 28}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_completion.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../include/linux/completion.h", i32 87, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @kvaser_pciefd_bittiming_const, !99, !"kvaser_pciefd_bittiming_const", i1 false, i1 false}
!99 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 291, i32 41}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1752, i32 4}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @kvaser_pciefd_irq_handler._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @kvaser_pciefd_irq_handler._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1700, i32 3}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @kvaser_pciefd_receive_irq._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @kvaser_pciefd_receive_irq._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1640, i32 3}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @kvaser_pciefd_read_packet._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @kvaser_pciefd_read_packet._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1645, i32 3}
!118 = !{ptr @kvaser_pciefd_read_packet._entry.52, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @kvaser_pciefd_read_packet._entry_ptr.54, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1539, i32 3}
!122 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @kvaser_pciefd_handle_ack_packet.__UNIQUE_ID_ddebug466, !121, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1514, i32 29}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1711, i32 28}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1724, i32 7}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1727, i32 28}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/can/kvaser_pciefd.c", i32 1730, i32 28}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{!"auto-init"}
!144 = !{i64 2152573520}
!145 = !{i64 5031398}
!146 = !{i64 5031816}
!147 = !{i64 2152572165}
!148 = !{i64 2148743096, i64 2148743101, i64 2148743114, i64 2148743158, i64 2148743192, i64 2148743213}
!149 = !{i64 2157289701}
!150 = !{i64 2157290251}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2157316556}
!154 = !{i64 2157317058}
!155 = !{i64 2148651815, i64 2148652095, i64 2148652429, i64 2148652763}
