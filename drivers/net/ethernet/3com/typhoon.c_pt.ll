; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/3com/typhoon.c_pt.bc'
source_filename = "../drivers/net/ethernet/3com/typhoon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.typhoon_card_info = type { ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cmd_desc = type { i8, i8, i16, i16, i16, i32, i32 }
%struct.resp_desc = type { i8, i8, i16, i16, i16, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.typhoon = type { %struct.transmit_ring, ptr, ptr, i32, [100 x i8], ptr, ptr, i8, i8, i8, i8, %struct.basic_ring, ptr, ptr, %struct.napi_struct, %struct.basic_ring, %struct.basic_ring, [127 x %struct.rxbuff_ent], [120 x i8], %struct.spinlock, %struct.basic_ring, %struct.basic_ring, %struct.net_device_stats, ptr, i32, i16, i16, i32, i32, %struct.transmit_ring, [68 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rxbuff_ent = type { ptr, i32 }
%struct.basic_ring = type { ptr, i32 }
%struct.transmit_ring = type { ptr, i32, i32, i32 }
%struct.typhoon_interface = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.typhoon_shared = type { %struct.typhoon_interface, [28 x i8], %struct.typhoon_indexes, [84 x i8], [128 x %struct.tx_desc], [32 x %struct.rx_desc], [32 x %struct.rx_desc], [16 x %struct.cmd_desc], [32 x %struct.resp_desc], [128 x %struct.rx_free], i32, [2 x %struct.tx_desc], [92 x i8] }
%struct.typhoon_indexes = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tx_desc = type <{ i8, i8, i16, %union.anon.122, i32 }>
%union.anon.122 = type { i64 }
%struct.rx_desc = type { i8, i8, i16, i32, i32, i32, i16, i16, i32 }
%struct.rx_free = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.typhoon_file_header = type { [8 x i8], i32, i32, i32, [5 x i32] }
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
%struct.tcpopt_desc = type { i8, i8, i16, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.anon.123 = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.typhoon_section_header = type { i32, i16, i16, i32 }
%struct.stats_resp = type <{ i8, i8, i16, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author343 = internal constant [50 x i8] c"typhoon.author=David Dillow <dave@thedillows.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [47 x i8] c"typhoon.file=drivers/net/ethernet/3com/typhoon\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [20 x i8] c"typhoon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [34 x i8] c"typhoon.firmware=3com/typhoon.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_description347 = internal constant [70 x i8] c"typhoon.description=3Com Typhoon Family (3C990, 3CR990, and variants)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak348 = internal constant [117 x i8] c"typhoon.parm=rx_copybreak:Packets smaller than this are copied and the buffer given back to the NIC. Default is 200.\00", section ".modinfo", align 1
@__UNIQUE_ID_use_mmio349 = internal constant [108 x i8] c"typhoon.parm=use_mmio:Use MMIO (1) or PIO(0) to access the NIC. Default is to try MMIO and fallback to PIO.\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"typhoon.rx_copybreak\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rx_copybreak = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype350 = internal constant [34 x i8] c"typhoon.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_use_mmio = internal constant [17 x i8] c"typhoon.use_mmio\00", align 1
@use_mmio = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_use_mmio = internal constant %struct.kernel_param { ptr @__param_str_use_mmio, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_mmio } }, section "__param", align 4
@__UNIQUE_ID_use_mmiotype351 = internal constant [30 x i8] c"typhoon.parmtype=use_mmio:int\00", section ".modinfo", align 1
@typhoon_fw = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@typhoon_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @typhoon_pci_tbl, ptr @typhoon_init_one, ptr @typhoon_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @typhoon_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_typhoon__354_2573_typhoon_init6 = internal global ptr @typhoon_init, section ".initcall6.init", align 4
@__exitcall_typhoon_cleanup = internal global ptr @typhoon_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"typhoon\00", [24 x i8] zeroinitializer }, align 32
@typhoon_pci_tbl = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4279, i32 39168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4279, i32 39170, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4279, i32 39171, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4279, i32 39172, i32 -1, i32 4096, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4279, i32 39172, i32 -1, i32 4354, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4279, i32 39172, i32 -1, i32 8192, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4279, i32 39173, i32 -1, i32 4353, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4279, i32 39173, i32 -1, i32 4354, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4279, i32 39173, i32 -1, i32 8449, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4279, i32 39173, i32 -1, i32 8450, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4279, i32 39176, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4279, i32 39177, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4279, i32 39178, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@typhoon_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @typhoon_suspend, ptr @typhoon_resume, ptr @typhoon_suspend, ptr @typhoon_resume, ptr @typhoon_suspend, ptr @typhoon_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to alloc new net device\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable device\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unable to set MWI\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No usable DMA configuration\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"region #1 not a PCI IO resource, aborting\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid PCI IO region size, aborting\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"region #1 not a PCI MMIO resource, aborting\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid PCI MMIO region size, aborting\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not request regions\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot remap registers, aborting\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not allocate DMA memory\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"could not reset 3XP\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot boot 3XP sleep image\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot read MAC address\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Could not obtain valid ethernet address, aborting\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get Sleep Image version\00", [62 x i8] zeroinitializer }, align 32
@typhoon_card_info = internal constant { [13 x %struct.typhoon_card_info], [56 x i8] } { [13 x %struct.typhoon_card_info] [%struct.typhoon_card_info { ptr @.str.35, i32 0 }, %struct.typhoon_card_info { ptr @.str.36, i32 1 }, %struct.typhoon_card_info { ptr @.str.37, i32 3 }, %struct.typhoon_card_info { ptr @.str.38, i32 0 }, %struct.typhoon_card_info { ptr @.str.39, i32 1 }, %struct.typhoon_card_info { ptr @.str.40, i32 3 }, %struct.typhoon_card_info { ptr @.str.41, i32 4 }, %struct.typhoon_card_info { ptr @.str.42, i32 4 }, %struct.typhoon_card_info { ptr @.str.43, i32 9 }, %struct.typhoon_card_info { ptr @.str.44, i32 11 }, %struct.typhoon_card_info { ptr @.str.45, i32 9 }, %struct.typhoon_card_info { ptr @.str.46, i32 11 }, %struct.typhoon_card_info { ptr @.str.47, i32 12 }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot put adapter to sleep\00", [36 x i8] zeroinitializer }, align 32
@typhoon_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @typhoon_open, ptr @typhoon_close, ptr @typhoon_start_tx, ptr null, ptr null, ptr null, ptr @typhoon_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @typhoon_tx_timeout, ptr null, ptr null, ptr null, ptr @typhoon_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@typhoon_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @typhoon_get_drvinfo, ptr null, ptr null, ptr @typhoon_get_wol, ptr @typhoon_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @typhoon_get_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @typhoon_get_link_ksettings, ptr @typhoon_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to register netdev\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s at %s 0x%llx, %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MMIO\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IO\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Typhoon 1.0 Sleep Image built %02u/%02u/2000\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Typhoon 1.1+ Sleep Image version %02x.%03x.%03x %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unknown Sleep Image version (%u:%04x)\0A\00", [57 x i8] zeroinitializer }, align 32
@typhoon_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 2527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013typhoon %s: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"typhoon_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/3com/typhoon.c\00", [60 x i8] zeroinitializer }, align 32
@typhoon_init_one._entry_ptr = internal global ptr @typhoon_init_one._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@typhoon_test_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.27, i32 2260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016typhoon %s: falling back to port IO\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"typhoon_test_mmio\00", [46 x i8] zeroinitializer }, align 32
@typhoon_test_mmio._entry_ptr = internal global ptr @typhoon_test_mmio._entry, section ".printk_index", align 4
@typhoon_init_interface.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tp->command_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot ready timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"boot finish timeout (status 0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"no descs for cmd, had (needed) %d (%d) cmd, %d (%d) resp\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"dumping unexpected response 0x%04x:%d:0x%02x:0x%04x:%08x:%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"3Com Typhoon (3C990-TX)\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3Com Typhoon (3CR990-TX-95)\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3Com Typhoon (3CR990-TX-97)\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"3Com Typhoon (3C990SVR)\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"3Com Typhoon (3CR990SVR95)\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"3Com Typhoon (3CR990SVR97)\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3Com Typhoon2 (3C990B-TX-M)\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"3Com Typhoon2 (3C990BSVR)\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3Com Typhoon (3CR990-FX-95)\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"3Com Typhoon (3CR990-FX-97)\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"3Com Typhoon (3CR990-FX-95 Server)\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"3Com Typhoon (3CR990-FX-97 Server)\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"3Com Typhoon2 (3C990B-FX-97)\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"typhoon_sleep(): wake events cmd err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"typhoon_sleep(): sleep cmd err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to wakeup device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to reboot into sleep img\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to go back to sleep\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"3com/typhoon.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to load firmware \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TYPHOON\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid firmware image\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error, poll already scheduled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot load runtime on 3XP\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot boot 3XP\0A\00", [47 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no DMA mem for firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"card ready timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"segment ready timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"final segment ready timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"boot ready timeout, status 0x%0x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to stop runtime\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to boot sleep image\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to put card to sleep\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"halt timed out waiting for Tx to complete\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timed out waiting for 3XP to halt\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unable to reset 3XP\0A\00", [43 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not reset in tx timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not start runtime in tx timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting stats\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sleep image\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown runtime\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02x.%03x.%03x\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot do WAKE_MAGIC with VLAN offloading\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to set mac address in suspend\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to set rx filter in suspend\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"critical: could not wake up in resume\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"critical: could not start runtime in resume\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.typhoon_get_link_ksettings = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 79], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 6912, i64 22272]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 196608, i64 327680]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 47, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"use_mmio\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 54, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"typhoon_fw\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1270, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"typhoon_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2552, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2553, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"typhoon_pci_tbl\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 205, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"typhoon_pm_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2550, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2292, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2300, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2306, i32 13 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2312, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2319, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2324, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2329, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2334, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2341, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2352, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2362, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2386, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2402, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2409, i32 13 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2418, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2429, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"typhoon_card_info\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 170, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2447, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"typhoon_netdev_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2264, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"typhoon_ethtool_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1152, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2472, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2478, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2480, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2480, i32 27 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2492, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2500, i32 20 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2504, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2527, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2260, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1247, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1476, i32 23 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1487, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 592, i32 23 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 521, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 171, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 173, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 175, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 177, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 179, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 181, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 183, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 185, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 187, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 189, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 191, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 193, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 195, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1814, i32 23 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1822, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2065, i32 19 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2090, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2096, i32 19 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1286, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1288, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1299, i32 24 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1324, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1782, i32 19 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1882, i32 23 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1887, i32 23 }
@___asan_gen_.312 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 326, i32 6 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1361, i32 23 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1374, i32 23 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1414, i32 25 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1446, i32 23 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1453, i32 23 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2111, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2120, i32 19 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2123, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 1989, i32 23 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2006, i32 23 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2009, i32 23 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2028, i32 20 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2037, i32 19 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 960, i32 19 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 977, i32 29 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 982, i32 30 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 987, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2172, i32 20 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2193, i32 19 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2200, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2140, i32 19 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [39 x i8] c"../drivers/net/ethernet/3com/typhoon.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 2145, i32 19 }
@___asan_gen_.380 = private unnamed_addr constant [40 x i8] c"switch.table.typhoon_get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description347, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_rx_copybreak348, ptr @__UNIQUE_ID_rx_copybreaktype350, ptr @__UNIQUE_ID_use_mmio349, ptr @__UNIQUE_ID_use_mmiotype351, ptr @__exitcall_typhoon_cleanup, ptr @__initcall__kmod_typhoon__354_2573_typhoon_init6, ptr @__param_rx_copybreak, ptr @__param_use_mmio, ptr @typhoon_cleanup, ptr @typhoon_init_one._entry, ptr @typhoon_init_one._entry_ptr, ptr @typhoon_test_mmio._entry, ptr @typhoon_test_mmio._entry_ptr, ptr @rx_copybreak, ptr @use_mmio, ptr @typhoon_fw, ptr @typhoon_driver, ptr @.str, ptr @typhoon_pci_tbl, ptr @typhoon_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @typhoon_card_info, ptr @.str.17, ptr @typhoon_netdev_ops, ptr @typhoon_ethtool_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @typhoon_init_interface.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @switch.table.typhoon_get_link_ksettings], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_mmio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_fw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_pci_tbl to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_card_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_test_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_init_interface.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.typhoon_get_link_ksettings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @typhoon_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @typhoon_fw, align 4
  tail call void @release_firmware(ptr noundef %0) #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @typhoon_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @typhoon_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 4
  %shared_dma = alloca i32, align 4
  %xp_cmd = alloca %struct.cmd_desc, align 1
  %xp_resp = alloca [3 x %struct.resp_desc], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %3 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shared_dma) #13
  %4 = ptrtoint ptr %shared_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %shared_dma, align 4, !annotation !222
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %5 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  %7 = call ptr @memset(ptr %xp_cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %xp_resp) #13
  %8 = call ptr @memset(ptr %xp_resp, i32 255, i32 48)
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1792, i32 noundef 1, i32 noundef 1) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.do.end192_crit_edge, label %if.end

entry.do.end192_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end192

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent, align 8
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.error_out_dev_crit_edge, label %if.end6

if.end.error_out_dev_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_dev

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_set_mwi(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_out_disable_crit_edge, label %if.end10

if.end6.error_out_disable_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_disable

if.end10:                                         ; preds = %if.end6
  %call12 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.error_out_mwi_crit_edge, label %if.end15

if.end10.error_out_mwi_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end15:                                         ; preds = %if.end10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15.error_out_mwi_crit_edge, label %if.end17

if.end15.error_out_mwi_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end17:                                         ; preds = %if.end15
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %if.end17.error_out_mwi_crit_edge, label %cond.end

if.end17.error_out_mwi_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

cond.end:                                         ; preds = %if.end17
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource, align 8
  %sub = add i32 %13, 1
  %add = sub i32 %sub, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp26 = icmp ult i32 %add, 128
  br i1 %cmp26, label %cond.end.error_out_mwi_crit_edge, label %if.end28

cond.end.error_out_mwi_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end28:                                         ; preds = %cond.end
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %flags31 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %16 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags31, align 4
  %and32 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end28.error_out_mwi_crit_edge, label %if.end35

if.end28.error_out_mwi_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end35:                                         ; preds = %if.end28
  %end38 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %18 = ptrtoint ptr %end38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39 = icmp eq i32 %19, 0
  br i1 %cmp39, label %if.end35.error_out_mwi_crit_edge, label %cond.end50

if.end35.error_out_mwi_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

cond.end50:                                       ; preds = %if.end35
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx30, align 8
  %sub48 = add i32 %19, 1
  %add49 = sub i32 %sub48, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add49)
  %cmp52 = icmp ult i32 %add49, 128
  br i1 %cmp52, label %cond.end50.error_out_mwi_crit_edge, label %if.end54

cond.end50.error_out_mwi_crit_edge:               ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end54:                                         ; preds = %cond.end50
  %call55 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.error_out_mwi_crit_edge, label %if.end58

if.end54.error_out_mwi_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_mwi

if.end58:                                         ; preds = %if.end54
  %22 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp ult i32 %22, 2
  br i1 %switch, label %if.end58.if.end63_crit_edge, label %if.then61

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %call62 = tail call fastcc i32 @typhoon_test_mmio(ptr noundef %pdev)
  store i32 %call62, ptr @use_mmio, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge
  %23 = load i32, ptr @use_mmio, align 4
  %call64 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %23, i32 noundef 128) #13
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end63.error_out_regions_crit_edge, label %if.end67

if.end63.error_out_regions_crit_edge:             ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_regions

if.end67:                                         ; preds = %if.end63
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 6784, ptr noundef nonnull %shared_dma, i32 noundef 3264, i32 noundef 0) #13
  %tobool70.not = icmp eq ptr %call.i, null
  br i1 %tobool70.not, label %if.end67.error_out_remap_crit_edge, label %if.end72

if.end67.error_out_remap_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_remap

if.end72:                                         ; preds = %if.end67
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %irq73 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %26 = ptrtoint ptr %irq73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq73, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %shared75 = getelementptr i8, ptr %call, i32 3992
  %27 = ptrtoint ptr %shared75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %shared75, align 8
  %28 = ptrtoint ptr %shared_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shared_dma, align 4
  %shared_dma76 = getelementptr i8, ptr %call, i32 3996
  %30 = ptrtoint ptr %shared_dma76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %shared_dma76, align 4
  %pdev77 = getelementptr i8, ptr %call, i32 2452
  %31 = ptrtoint ptr %pdev77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdev, ptr %pdev77, align 4
  %tx_pdev = getelementptr i8, ptr %call, i32 2320
  %32 = ptrtoint ptr %tx_pdev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pdev, ptr %tx_pdev, align 16
  %ioaddr78 = getelementptr i8, ptr %call, i32 2432
  %33 = ptrtoint ptr %ioaddr78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call64, ptr %ioaddr78, align 128
  %tx_ioaddr = getelementptr i8, ptr %call, i32 2324
  %34 = ptrtoint ptr %tx_ioaddr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call64, ptr %tx_ioaddr, align 4
  %dev79 = getelementptr i8, ptr %call, i32 2456
  %35 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %dev79, align 8
  %call80 = call fastcc i32 @typhoon_reset(ptr noundef nonnull %call64, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end72.error_out_dma_crit_edge, label %if.end83

if.end72.error_out_dma_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_dma

if.end83:                                         ; preds = %if.end72
  call void @pci_set_master(ptr noundef %pdev) #13
  %call84 = call i32 @pci_save_state(ptr noundef %pdev) #13
  call fastcc void @typhoon_init_interface(ptr noundef %add.ptr.i)
  %indexes.i = getelementptr i8, ptr %call, i32 2436
  %36 = ptrtoint ptr %indexes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %indexes.i, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 44)
  %lastWrite.i = getelementptr i8, ptr %call, i32 2308
  %39 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %lastWrite.i, align 4
  %lastWrite1.i = getelementptr i8, ptr %call, i32 4016
  %40 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %lastWrite1.i, align 4
  %lastWrite2.i = getelementptr i8, ptr %call, i32 2448
  %41 = ptrtoint ptr %lastWrite2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %lastWrite2.i, align 4
  %lastWrite3.i = getelementptr i8, ptr %call, i32 2692
  %42 = ptrtoint ptr %lastWrite3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %lastWrite3.i, align 4
  %lastWrite4.i = getelementptr i8, ptr %call, i32 2700
  %43 = ptrtoint ptr %lastWrite4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %lastWrite4.i, align 4
  %lastWrite5.i = getelementptr i8, ptr %call, i32 3888
  %44 = ptrtoint ptr %lastWrite5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %lastWrite5.i, align 4
  %lastWrite6.i = getelementptr i8, ptr %call, i32 3896
  %45 = ptrtoint ptr %lastWrite6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %lastWrite6.i, align 4
  %lastRead.i = getelementptr i8, ptr %call, i32 2312
  %46 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %lastRead.i, align 8
  %lastRead9.i = getelementptr i8, ptr %call, i32 4020
  %47 = ptrtoint ptr %lastRead9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %lastRead9.i, align 4
  %call85 = call fastcc i32 @typhoon_boot_3XP(ptr noundef %add.ptr.i, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end83.error_out_reset_crit_edge, label %do.body

if.end83.error_out_reset_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

do.body:                                          ; preds = %if.end83
  %48 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %49 = call ptr @memset(ptr %48, i32 0, i32 15)
  %50 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -62, ptr %xp_cmd, align 1
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 9984, ptr %5, align 1
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 1, ptr %6, align 1
  %call92 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 1, ptr noundef nonnull %xp_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.body.error_out_reset_crit_edge, label %if.end96

do.body.error_out_reset_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

if.end96:                                         ; preds = %do.body
  %parm1 = getelementptr inbounds %struct.resp_desc, ptr %xp_resp, i32 0, i32 4
  %53 = ptrtoint ptr %parm1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %parm1, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %addr, align 4
  %parm2 = getelementptr inbounds %struct.resp_desc, ptr %xp_resp, i32 0, i32 5
  %57 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %parm2, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %2, align 2
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %61 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_addr, align 64
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end96.error_out_reset_crit_edge

if.end96.error_out_reset_crit_edge:               ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

is_valid_ether_addr.exit:                         ; preds = %if.end96
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %67 to i32
  %or.i.i = or i32 %64, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.error_out_reset_crit_edge, label %do.body105

is_valid_ether_addr.exit.error_out_reset_crit_edge: ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

do.body105:                                       ; preds = %is_valid_ether_addr.exit
  %68 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %69 = call ptr @memset(ptr %68, i32 0, i32 15)
  %70 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -62, ptr %xp_cmd, align 1
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 17152, ptr %5, align 1
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 1, ptr %6, align 1
  %call117 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 3, ptr noundef nonnull %xp_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.body105.error_out_reset_crit_edge, label %if.end121

do.body105.error_out_reset_crit_edge:             ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

if.end121:                                        ; preds = %do.body105
  %arrayidx122 = getelementptr [13 x %struct.typhoon_card_info], ptr @typhoon_card_info, i32 0, i32 %1
  %capabilities = getelementptr [13 x %struct.typhoon_card_info], ptr @typhoon_card_info, i32 0, i32 %1, i32 1
  %73 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %capabilities, align 4
  %capabilities123 = getelementptr i8, ptr %call, i32 4008
  %75 = ptrtoint ptr %capabilities123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %capabilities123, align 8
  %xcvr_select = getelementptr i8, ptr %call, i32 4000
  %76 = ptrtoint ptr %xcvr_select to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1024, ptr %xcvr_select, align 32
  %numDesc = getelementptr inbounds %struct.resp_desc, ptr %xp_resp, i32 0, i32 1
  %77 = ptrtoint ptr %numDesc to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %numDesc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp126.not = icmp eq i8 %78, 0
  br i1 %cmp126.not, label %if.end121.if.end131_crit_edge, label %if.then128

if.end121.if.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  %or130 = or i32 %74, 16
  %79 = ptrtoint ptr %capabilities123 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or130, ptr %capabilities123, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end121.if.end131_crit_edge
  %call132 = call fastcc i32 @typhoon_sleep(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end131.error_out_reset_crit_edge, label %if.end136

if.end131.error_out_reset_crit_edge:              ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

if.end136:                                        ; preds = %if.end131
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %80 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @typhoon_netdev_ops, ptr %netdev_ops, align 8
  %napi = getelementptr i8, ptr %call, i32 2464
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @typhoon_poll, i32 noundef 16) #13
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %81 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 200, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %82 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @typhoon_ethtool_ops, ptr %ethtool_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %83 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 65667, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %84 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1099511693699, ptr %features, align 16
  %call140 = call i32 @register_netdev(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %if.end136.error_out_reset_crit_edge, label %if.end144

if.end136.error_out_reset_crit_edge:              ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out_reset

if.end144:                                        ; preds = %if.end136
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call, ptr %driver_data.i.i, align 4
  %86 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx122, align 4
  %88 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool146.not = icmp eq i32 %88, 0
  %cond147 = select i1 %tobool146.not, ptr @.str.21, ptr @.str.20
  %arrayidx149 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %88
  %89 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx149, align 8
  %conv151 = zext i32 %90 to i64
  %91 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.19, ptr noundef %87, ptr noundef nonnull %cond147, i64 noundef %conv151, ptr noundef %92) #16
  %93 = ptrtoint ptr %numDesc to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %numDesc, align 1
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i8 %94, label %if.else180 [
    i8 0, label %if.then158
    i8 2, label %if.then171
  ]

if.then158:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %parm2, align 1
  %98 = and i32 %97, -65536
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %100 = lshr i32 %99, 8
  %and165 = and i32 %99, 255
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.22, i32 noundef %100, i32 noundef %and165) #16
  br label %cleanup

if.then171:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %parm2, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %arrayidx174 = getelementptr inbounds [3 x %struct.resp_desc], ptr %xp_resp, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds i8, ptr %arrayidx174, i32 25
  %104 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx175, align 1
  %shr176 = lshr i32 %103, 24
  %shr177 = lshr i32 %103, 12
  %and178 = and i32 %shr177, 4095
  %and179 = and i32 %103, 4095
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.23, i32 noundef %shr176, i32 noundef %and178, i32 noundef %and179, ptr noundef %arrayidx174) #16
  br label %cleanup

if.else180:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %conv155 = zext i8 %94 to i32
  %105 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %parm2, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.24, i32 noundef %conv155, i32 noundef %107) #16
  br label %cleanup

error_out_reset:                                  ; preds = %if.end136.error_out_reset_crit_edge, %if.end131.error_out_reset_crit_edge, %do.body105.error_out_reset_crit_edge, %is_valid_ether_addr.exit.error_out_reset_crit_edge, %if.end96.error_out_reset_crit_edge, %do.body.error_out_reset_crit_edge, %if.end83.error_out_reset_crit_edge
  %err.0 = phi i32 [ %call85, %if.end83.error_out_reset_crit_edge ], [ %call92, %do.body.error_out_reset_crit_edge ], [ -5, %is_valid_ether_addr.exit.error_out_reset_crit_edge ], [ %call117, %do.body105.error_out_reset_crit_edge ], [ %call132, %if.end131.error_out_reset_crit_edge ], [ %call140, %if.end136.error_out_reset_crit_edge ], [ -5, %if.end96.error_out_reset_crit_edge ]
  %err_msg.0 = phi ptr [ @.str.13, %if.end83.error_out_reset_crit_edge ], [ @.str.14, %do.body.error_out_reset_crit_edge ], [ @.str.15, %is_valid_ether_addr.exit.error_out_reset_crit_edge ], [ @.str.16, %do.body105.error_out_reset_crit_edge ], [ @.str.17, %if.end131.error_out_reset_crit_edge ], [ @.str.18, %if.end136.error_out_reset_crit_edge ], [ @.str.15, %if.end96.error_out_reset_crit_edge ]
  %call188 = call fastcc i32 @typhoon_reset(ptr noundef nonnull %call64, i32 noundef 0)
  br label %error_out_dma

error_out_dma:                                    ; preds = %error_out_reset, %if.end72.error_out_dma_crit_edge
  %err.1 = phi i32 [ %err.0, %error_out_reset ], [ %call80, %if.end72.error_out_dma_crit_edge ]
  %err_msg.1 = phi ptr [ %err_msg.0, %error_out_reset ], [ @.str.12, %if.end72.error_out_dma_crit_edge ]
  %108 = ptrtoint ptr %shared_dma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %shared_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 6784, ptr noundef nonnull %call.i, i32 noundef %109, i32 noundef 0) #13
  br label %error_out_remap

error_out_remap:                                  ; preds = %error_out_dma, %if.end67.error_out_remap_crit_edge
  %err.2 = phi i32 [ %err.1, %error_out_dma ], [ -12, %if.end67.error_out_remap_crit_edge ]
  %err_msg.2 = phi ptr [ %err_msg.1, %error_out_dma ], [ @.str.11, %if.end67.error_out_remap_crit_edge ]
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call64) #13
  br label %error_out_regions

error_out_regions:                                ; preds = %error_out_remap, %if.end63.error_out_regions_crit_edge
  %err.3 = phi i32 [ %err.2, %error_out_remap ], [ -5, %if.end63.error_out_regions_crit_edge ]
  %err_msg.3 = phi ptr [ %err_msg.2, %error_out_remap ], [ @.str.10, %if.end63.error_out_regions_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %error_out_mwi

error_out_mwi:                                    ; preds = %error_out_regions, %if.end54.error_out_mwi_crit_edge, %cond.end50.error_out_mwi_crit_edge, %if.end35.error_out_mwi_crit_edge, %if.end28.error_out_mwi_crit_edge, %cond.end.error_out_mwi_crit_edge, %if.end17.error_out_mwi_crit_edge, %if.end15.error_out_mwi_crit_edge, %if.end10.error_out_mwi_crit_edge
  %err.4 = phi i32 [ %err.3, %error_out_regions ], [ %call12, %if.end10.error_out_mwi_crit_edge ], [ -19, %if.end15.error_out_mwi_crit_edge ], [ -19, %cond.end.error_out_mwi_crit_edge ], [ -19, %if.end28.error_out_mwi_crit_edge ], [ -19, %cond.end50.error_out_mwi_crit_edge ], [ %call55, %if.end54.error_out_mwi_crit_edge ], [ -19, %if.end17.error_out_mwi_crit_edge ], [ -19, %if.end35.error_out_mwi_crit_edge ]
  %err_msg.4 = phi ptr [ %err_msg.3, %error_out_regions ], [ @.str.4, %if.end10.error_out_mwi_crit_edge ], [ @.str.5, %if.end15.error_out_mwi_crit_edge ], [ @.str.6, %cond.end.error_out_mwi_crit_edge ], [ @.str.7, %if.end28.error_out_mwi_crit_edge ], [ @.str.8, %cond.end50.error_out_mwi_crit_edge ], [ @.str.9, %if.end54.error_out_mwi_crit_edge ], [ @.str.6, %if.end17.error_out_mwi_crit_edge ], [ @.str.8, %if.end35.error_out_mwi_crit_edge ]
  call void @pci_clear_mwi(ptr noundef %pdev) #13
  br label %error_out_disable

error_out_disable:                                ; preds = %error_out_mwi, %if.end6.error_out_disable_crit_edge
  %err.5 = phi i32 [ %err.4, %error_out_mwi ], [ %call7, %if.end6.error_out_disable_crit_edge ]
  %err_msg.5 = phi ptr [ %err_msg.4, %error_out_mwi ], [ @.str.3, %if.end6.error_out_disable_crit_edge ]
  call void @pci_disable_device(ptr noundef %pdev) #13
  br label %error_out_dev

error_out_dev:                                    ; preds = %error_out_disable, %if.end.error_out_dev_crit_edge
  %err.6 = phi i32 [ %err.5, %error_out_disable ], [ %call3, %if.end.error_out_dev_crit_edge ]
  %err_msg.6 = phi ptr [ %err_msg.5, %error_out_disable ], [ @.str.2, %if.end.error_out_dev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #13
  br label %do.end192

do.end192:                                        ; preds = %error_out_dev, %entry.do.end192_crit_edge
  %err.7 = phi i32 [ %err.6, %error_out_dev ], [ -12, %entry.do.end192_crit_edge ]
  %err_msg.7 = phi ptr [ %err_msg.6, %error_out_dev ], [ @.str.1, %entry.do.end192_crit_edge ]
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %110 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end192.pci_name.exit_crit_edge

do.end192.pci_name.exit_crit_edge:                ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end192.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %113, %if.end.i.i ], [ %111, %do.end192.pci_name.exit_crit_edge ]
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i, ptr noundef %err_msg.7) #16
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %if.else180, %if.then171, %if.then158
  %retval.0 = phi i32 [ %err.7, %pci_name.exit ], [ 0, %if.then171 ], [ 0, %if.else180 ], [ 0, %if.then158 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %xp_resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shared_dma) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @typhoon_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #13
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #13
  tail call void @pci_restore_state(ptr noundef %pdev) #13
  %ioaddr = getelementptr i8, ptr %1, i32 2432
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 128
  %call3 = tail call fastcc i32 @typhoon_reset(ptr noundef %3, i32 noundef 0)
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 128
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %5) #13
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %shared = getelementptr i8, ptr %1, i32 3992
  %6 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shared, align 8
  %shared_dma = getelementptr i8, ptr %1, i32 3996
  %8 = ptrtoint ptr %shared_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shared_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef 6784, ptr noundef %7, i32 noundef %9, i32 noundef 0) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_clear_mwi(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_test_mmio(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 128) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 64
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %0)
  %cmp.not = icmp eq i32 %0, 218103808
  br i1 %cmp.not, label %if.end3, label %out.thread52

out.thread52:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call) #13
  br label %do.end

if.end3:                                          ; preds = %if.end
  %add.ptr4 = getelementptr i8, ptr %call, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #13, !srcloc !226
  %add.ptr5 = getelementptr i8, ptr %call, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1) #13, !srcloc !226
  %add.ptr6 = getelementptr i8, ptr %call, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #13, !srcloc !226
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %if.then10, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11 = getelementptr i8, ptr %call, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #13, !srcloc !226
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #13
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br label %out

out:                                              ; preds = %if.then10, %if.end3.out_crit_edge
  %mode.0 = phi i1 [ true, %if.end3.out_crit_edge ], [ %tobool17.not, %if.then10 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #13, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1) #13, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #13, !srcloc !226
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call) #13
  br i1 %mode.0, label %out.do.end_crit_edge, label %out.if.end30_crit_edge

out.if.end30_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

out.do.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %out.do.end_crit_edge, %out.thread52, %entry.do.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.pci_name.exit_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i) #16
  br label %if.end30

if.end30:                                         ; preds = %pci_name.exit, %out.if.end30_crit_edge
  %mode.250 = phi i32 [ 0, %pci_name.exit ], [ 1, %out.if.end30_crit_edge ]
  ret i32 %mode.250
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_reset(ptr noundef %ioaddr, i32 noundef %wait_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wait_type)
  %cmp = icmp eq i32 %wait_type, 1
  %. = select i1 %cmp, i32 120000, i32 600
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #13, !srcloc !226
  %add.ptr1 = getelementptr i8, ptr %ioaddr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #13, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 2130706432) #13, !srcloc !226
  %0 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then5, !prof !227

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr6 = getelementptr i8, ptr %ioaddr, i32 52
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end

do.end:                                           ; preds = %if.then5, %entry.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 0) #13, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_type)
  %cmp9.not = icmp eq i32 %wait_type, 0
  br i1 %cmp9.not, label %do.end.out_crit_edge, label %for.cond.preheader

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %do.end
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %wait_type)
  %cmp17 = icmp eq i32 %wait_type, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.040 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %3)
  %cmp14 = icmp eq i32 %3, 218103808
  br i1 %cmp14, label %for.body.out_crit_edge, label %if.end16

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %for.body
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  br label %for.inc

if.else20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else20, %if.then18
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %for.body.out_crit_edge, %do.end.out_crit_edge
  %err.0 = phi i32 [ 0, %do.end.out_crit_edge ], [ -110, %for.inc.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #13, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #13, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %wait_type)
  %cmp25 = icmp eq i32 %wait_type, 2
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 5) #13
  br label %if.end28

if.else27:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 107374000) #13
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @typhoon_init_interface(ptr noundef %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shared = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 23
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared, align 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 6784)
  %shared_dma3 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 24
  %3 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shared_dma3, align 4
  %add = add i32 %4, 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %add)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %1, align 1
  %7 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shared_dma3, align 4
  %add5 = add i32 %8, 256
  %9 = tail call i32 @llvm.bswap.i32(i32 %add5)
  %txLoAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %txLoAddr to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %txLoAddr, align 1
  %txLoSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %txLoSize to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 524288, ptr %txLoSize, align 1
  %12 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shared_dma3, align 4
  %add7 = add i32 %13, 6660
  %14 = tail call i32 @llvm.bswap.i32(i32 %add7)
  %txHiAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %txHiAddr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %txHiAddr, align 1
  %txHiSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %txHiSize to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 536870912, ptr %txHiSize, align 1
  %17 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shared_dma3, align 4
  %add9 = add i32 %18, 4608
  %19 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %rxBuffAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %rxBuffAddr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %rxBuffAddr, align 1
  %rxBuffSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %rxBuffSize to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 524288, ptr %rxBuffSize, align 1
  %22 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shared_dma3, align 4
  %add11 = add i32 %23, 2304
  %24 = tail call i32 @llvm.bswap.i32(i32 %add11)
  %rxLoAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %rxLoAddr to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %rxLoAddr, align 1
  %rxLoSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %rxLoSize to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 196608, ptr %rxLoSize, align 1
  %27 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shared_dma3, align 4
  %add13 = add i32 %28, 3072
  %29 = tail call i32 @llvm.bswap.i32(i32 %add13)
  %rxHiAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 22
  %30 = ptrtoint ptr %rxHiAddr to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %rxHiAddr, align 1
  %rxHiSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 24
  %31 = ptrtoint ptr %rxHiSize to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 196608, ptr %rxHiSize, align 1
  %32 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shared_dma3, align 4
  %add15 = add i32 %33, 3840
  %34 = tail call i32 @llvm.bswap.i32(i32 %add15)
  %cmdAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %cmdAddr to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %cmdAddr, align 1
  %cmdSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %cmdSize to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 65536, ptr %cmdSize, align 1
  %37 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shared_dma3, align 4
  %add17 = add i32 %38, 4096
  %39 = tail call i32 @llvm.bswap.i32(i32 %add17)
  %respAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %respAddr to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %respAddr, align 1
  %respSize = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 19
  %41 = ptrtoint ptr %respSize to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 131072, ptr %respSize, align 1
  %42 = ptrtoint ptr %shared_dma3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %shared_dma3, align 4
  %add19 = add i32 %43, 6656
  %44 = tail call i32 @llvm.bswap.i32(i32 %add19)
  %zeroAddr = getelementptr inbounds %struct.typhoon_interface, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %zeroAddr to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %zeroAddr, align 1
  %46 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shared, align 8
  %indexes = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 2
  %indexes21 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %48 = ptrtoint ptr %indexes21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %indexes, ptr %indexes21, align 4
  %txLo = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 4
  %49 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %txLo, ptr %tp, align 128
  %txHi = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 11
  %txHiRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 29
  %50 = ptrtoint ptr %txHiRing to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %txHi, ptr %txHiRing, align 4
  %rxLo = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 5
  %rxLoRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 11
  %51 = ptrtoint ptr %rxLoRing to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rxLo, ptr %rxLoRing, align 4
  %rxHi = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 6
  %rxHiRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 15
  %52 = ptrtoint ptr %rxHiRing to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rxHi, ptr %rxHiRing, align 128
  %rxBuff = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 9
  %rxBuffRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16
  %53 = ptrtoint ptr %rxBuffRing to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %rxBuff, ptr %rxBuffRing, align 8
  %cmd = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 7
  %cmdRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20
  %54 = ptrtoint ptr %cmdRing to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cmd, ptr %cmdRing, align 4
  %resp = getelementptr inbounds %struct.typhoon_shared, ptr %47, i32 0, i32 8
  %respRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 21
  %55 = ptrtoint ptr %respRing to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %resp, ptr %respRing, align 4
  %writeRegister = getelementptr inbounds %struct.transmit_ring, ptr %tp, i32 0, i32 3
  %56 = ptrtoint ptr %writeRegister to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 36, ptr %writeRegister, align 4
  %writeRegister43 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 29, i32 3
  %57 = ptrtoint ptr %writeRegister43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 44, ptr %writeRegister43, align 4
  %58 = ptrtoint ptr %txLoAddr to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %txLoAddr, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %txlo_dma_addr = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 3
  %61 = ptrtoint ptr %txlo_dma_addr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %txlo_dma_addr, align 8
  %card_state = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 10
  %62 = ptrtoint ptr %card_state to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %card_state, align 1
  %offload = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 27
  %63 = ptrtoint ptr %offload to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1912471552, ptr %offload, align 4
  %command_lock = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %command_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @typhoon_init_interface.__key, i16 noundef signext 3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !228
  tail call void @arm_heavy_mb() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_boot_3XP(ptr nocapture noundef readonly %tp, i32 noundef %initial_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %initial_status)
  %cmp1.i = icmp eq i32 %3, %initial_status
  br i1 %cmp1.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #13
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %if.then, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.31) #16
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %add.ptr = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !226
  %shared_dma = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 24
  %7 = ptrtoint ptr %shared_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shared_dma, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #13, !srcloc !226
  %10 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then5, !prof !227

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr6 = getelementptr i8, ptr %1, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end.do.end_crit_edge
  %add.ptr9 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -16777216) #13, !srcloc !226
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i55.for.body.i52_crit_edge, %do.end
  %i.03.i50 = phi i32 [ 0, %do.end ], [ %inc.i53, %if.end.i55.for.body.i52_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %12)
  %cmp1.i51 = icmp eq i32 %12, 150994944
  br i1 %cmp1.i51, label %if.end16, label %if.end.i55

if.end.i55:                                       ; preds = %for.body.i52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #13
  %inc.i53 = add nuw nsw i32 %i.03.i50, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, 10000
  br i1 %exitcond.not.i54, label %if.then12, label %if.end.i55.for.body.i52_crit_edge

if.end.i55.for.body.i52_crit_edge:                ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i52

if.then12:                                        ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #15
  %dev13 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %17) #16
  br label %cleanup

if.end16:                                         ; preds = %for.body.i52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #13, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !226
  %add.ptr19 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #13, !srcloc !226
  %18 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.end16.do.end33_crit_edge, label %if.then28, !prof !227

if.end16.do.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr29 = getelementptr i8, ptr %1, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %if.end16.do.end33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #13, !srcloc !226
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %do.end33 ], [ -110, %if.then12 ], [ -110, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr nocapture noundef readonly %cmd, i32 noundef %num_resp, ptr noundef %resp) unnamed_addr #2 align 64 {
entry:
  %local_resp = alloca %struct.resp_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %indexes1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %0 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexes1, align 4
  %cmdRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_resp) #13
  %command_lock = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 19
  %2 = call ptr @memset(ptr %local_resp, i32 255, i32 16)
  tail call void @_raw_spin_lock(ptr noundef %command_lock) #13
  %lastWrite1.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastWrite1.i, align 4
  %5 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %indexes1, align 4
  %cmdCleared2.i = getelementptr inbounds %struct.typhoon_indexes, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %cmdCleared2.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load volatile i32, ptr %cmdCleared2.i, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  %div6.i.i = lshr i32 %4, 4
  %div17.i.i = lshr i32 %9, 4
  %add.i.i = sub nsw i32 15, %div6.i.i
  %sub2.i.i = add nsw i32 %add.i.i, %div17.i.i
  %rem.i.i = srem i32 %sub2.i.i, 16
  %respReady1.i = getelementptr inbounds %struct.typhoon_indexes, ptr %6, i32 0, i32 9
  %10 = ptrtoint ptr %respReady1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load volatile i32, ptr %respReady1.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  %respCleared3.i = getelementptr inbounds %struct.typhoon_indexes, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %respCleared3.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load volatile i32, ptr %respCleared3.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %div6.i.i6 = lshr i32 %12, 4
  %div17.i.i7 = lshr i32 %15, 4
  %add.i.i8 = sub nsw i32 31, %div6.i.i6
  %sub2.i.i9 = add nsw i32 %add.i.i8, %div17.i.i7
  %rem.i.i10 = srem i32 %sub2.i.i9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem.i.i)
  %cmp = icmp slt i32 %rem.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i10, i32 %num_resp)
  %cmp3 = icmp slt i32 %rem.i.i10, %num_resp
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.33, i32 noundef %rem.i.i, i32 noundef 1, i32 noundef %rem.i.i10, i32 noundef %num_resp) #16
  br label %out

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd, align 1
  %20 = and i8 %19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %awaiting_resp = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 7
  %21 = ptrtoint ptr %awaiting_resp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %awaiting_resp, align 8
  %cmp5 = icmp eq ptr %resp, null
  %spec.select = select i1 %cmp5, ptr %local_resp, ptr %resp
  %spec.select2 = select i1 %cmp5, i32 1, i32 %num_resp
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %resp.addr.0 = phi ptr [ %resp, %if.end.if.end9_crit_edge ], [ %spec.select, %if.then4 ]
  %num_resp.addr.0 = phi i32 [ %num_resp, %if.end.if.end9_crit_edge ], [ %spec.select2, %if.then4 ]
  %22 = add i32 %4, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %22)
  %cmp10 = icmp ult i32 %22, -257
  br i1 %cmp10, label %if.then28, label %if.end19.thread, !prof !227

if.end19.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %cmdRing to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmdRing, align 4
  %add.ptr15 = getelementptr i8, ptr %24, i32 %4
  %25 = call ptr @memcpy(ptr %add.ptr15, ptr %cmd, i32 16)
  br label %if.end31

if.then28:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %4, -240
  %sub18 = sub i32 256, %4
  %26 = ptrtoint ptr %cmdRing to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdRing, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %4
  %28 = call ptr @memcpy(ptr %add.ptr, ptr %cmd, i32 %sub18)
  %div1 = lshr i32 %sub18, 4
  %add.ptr29 = getelementptr %struct.cmd_desc, ptr %cmd, i32 %div1
  %29 = load ptr, ptr %cmdRing, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %add.ptr29, i32 %sub)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end19.thread
  %31 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lastWrite1.i, align 4
  %add.i.i11 = add i32 %32, 16
  %rem.i.i12 = and i32 %add.i.i11, 255
  store i32 %rem.i.i12, ptr %lastWrite1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lastWrite1.i, align 4
  %ioaddr = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 128
  %add.ptr34 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  %37 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %37) #13, !srcloc !226
  %38 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool36.not = icmp eq i32 %38, 0
  br i1 %tobool36.not, label %if.end31.do.end49_crit_edge, label %if.then43, !prof !227

if.end31.do.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr, align 128
  %add.ptr45 = getelementptr i8, ptr %40, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %if.end31.do.end49_crit_edge
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cmd, align 1
  %44 = and i8 %43, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp53 = icmp eq i8 %44, 0
  br i1 %cmp53, label %do.end49.out_crit_edge, label %for.cond.preheader

do.end49.out_crit_edge:                           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond.preheader:                               ; preds = %do.end49
  %respCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 3
  %respReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end66.for.body_crit_edge, %for.cond.preheader
  %i.017 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end66.for.body_crit_edge ]
  %45 = ptrtoint ptr %respCleared to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load volatile i32, ptr %respCleared, align 1
  %47 = ptrtoint ptr %respReady to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load volatile i32, ptr %respReady, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp62.not = icmp eq i32 %46, %48
  br i1 %cmp62.not, label %for.body.if.end66_crit_edge, label %if.then64

for.body.if.end66_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call65 = call fastcc i32 @typhoon_process_response(ptr noundef %tp, i32 noundef %num_resp.addr.0, ptr noundef %resp.addr.0)
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %for.body.if.end66_crit_edge
  %got_resp.1 = phi i32 [ %call65, %if.then64 ], [ 0, %for.body.if.end66_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 10737400) #13
  %inc = add nuw nsw i32 %i.017, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.017)
  %cmp57 = icmp ult i32 %i.017, 9999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_resp.1)
  %tobool59.not = icmp eq i32 %got_resp.1, 0
  %or.cond3 = select i1 %cmp57, i1 %tobool59.not, i1 false
  br i1 %or.cond3, label %if.end66.for.body_crit_edge, label %for.end

if.end66.for.body_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end66
  br i1 %tobool59.not, label %for.end.out_crit_edge, label %if.end69

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %resp.addr.0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %resp.addr.0, align 1
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool73.not = icmp eq i8 %52, 0
  %spec.select4 = select i1 %tobool73.not, i32 0, i32 -5
  br label %out

out:                                              ; preds = %if.end69, %for.end.out_crit_edge, %do.end49.out_crit_edge, %if.then
  %err.0 = phi i32 [ -12, %if.then ], [ 0, %do.end49.out_crit_edge ], [ -110, %for.end.out_crit_edge ], [ %spec.select4, %if.end69 ]
  %awaiting_resp76 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 7
  %53 = ptrtoint ptr %awaiting_resp76 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %awaiting_resp76, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool77.not = icmp eq i8 %54, 0
  br i1 %tobool77.not, label %out.if.end94_crit_edge, label %if.then78

out.if.end94_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then78:                                        ; preds = %out
  %55 = ptrtoint ptr %awaiting_resp76 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %awaiting_resp76, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !230
  %respCleared86 = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %respCleared86 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load volatile i32, ptr %respCleared86, align 1
  %respReady87 = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %respReady87 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load volatile i32, ptr %respReady87, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp88.not = icmp eq i32 %57, %59
  br i1 %cmp88.not, label %if.then78.if.end94_crit_edge, label %if.then90

if.then78.if.end94_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then90:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %ioaddr91 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %60 = ptrtoint ptr %ioaddr91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr91, align 128
  %add.ptr92 = getelementptr i8, ptr %61, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 16777216) #13, !srcloc !226
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.then78.if.end94_crit_edge, %out.if.end94_crit_edge
  call void @_raw_spin_unlock(ptr noundef %command_lock) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_resp) #13
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_sleep(ptr noundef %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @typhoon_sleep_early(ptr noundef %tp, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pdev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 12
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call1 = tail call i32 @pci_enable_wake(ptr noundef %1, i32 noundef 3, i1 noundef zeroext true) #13
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_device(ptr noundef %3) #13
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call4 = tail call i32 @pci_set_power_state(ptr noundef %5, i32 noundef 3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -160
  %indexes1 = getelementptr i8, ptr %napi, i32 -28
  %0 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexes1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %awaiting_resp = getelementptr i8, ptr %napi, i32 -24
  %2 = ptrtoint ptr %awaiting_resp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %awaiting_resp, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %respReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %respReady to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load volatile i32, ptr %respReady, align 1
  %respCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %respCleared to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load volatile i32, ptr %respCleared, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @typhoon_process_response(ptr noundef %add.ptr, i32 noundef 0, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %txLoCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load volatile i32, ptr %txLoCleared, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %lastRead = getelementptr i8, ptr %napi, i32 -152
  %11 = ptrtoint ptr %lastRead to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lastRead, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not = icmp eq i32 %10, %12
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %lastRead to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lastRead, align 4
  %15 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %txLoCleared, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %17)
  %cmp.not20.i.i = icmp eq i32 %14, %17
  br i1 %cmp.not20.i.i, label %if.then3.typhoon_clean_tx.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then3.typhoon_clean_tx.exit.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_clean_tx.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then3
  %pdev.i.i = getelementptr i8, ptr %napi, i32 -12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end9.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %lastRead.021.i.i = phi i32 [ %14, %while.body.lr.ph.i.i ], [ %rem.i.i.i.i, %if.end9.i.i.while.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %lastRead.021.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i, align 1
  %trunc.i.i = trunc i8 %21 to i3
  %22 = zext i3 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.84)
  switch i3 %trunc.i.i, label %while.body.i.i.if.end9.i.i_crit_edge [
    i3 1, label %if.then.i.i
    i3 0, label %if.then7.i.i
  ]

while.body.i.i.if.end9.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %23, align 1
  %conv4.i.i = trunc i64 %25 to i32
  %26 = inttoptr i32 %conv4.i.i to ptr
  tail call void @__dev_kfree_skb_irq(ptr noundef %26, i32 noundef 1) #13
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %27, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %len.i.i = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %len.i.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #13
  %conv8.i.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %30, i32 noundef %conv8.i.i, i32 noundef 1, i32 noundef 0) #13
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.then.i.i, %while.body.i.i.if.end9.i.i_crit_edge
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %add.ptr.i.i, align 1
  %add.i.i.i.i = add i32 %lastRead.021.i.i, 16
  %rem.i.i.i.i = and i32 %add.i.i.i.i, 2047
  %37 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %txLoCleared, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  %cmp.not.i.i = icmp eq i32 %rem.i.i.i.i, %39
  br i1 %cmp.not.i.i, label %if.end9.i.i.typhoon_clean_tx.exit.i_crit_edge, label %if.end9.i.i.while.body.i.i_crit_edge

if.end9.i.i.while.body.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end9.i.i.typhoon_clean_tx.exit.i_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_clean_tx.exit.i

typhoon_clean_tx.exit.i:                          ; preds = %if.end9.i.i.typhoon_clean_tx.exit.i_crit_edge, %if.then3.typhoon_clean_tx.exit.i_crit_edge
  %lastRead.0.lcssa.i.i = phi i32 [ %14, %if.then3.typhoon_clean_tx.exit.i_crit_edge ], [ %rem.i.i.i.i, %if.end9.i.i.typhoon_clean_tx.exit.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %napi, i32 -8
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %typhoon_clean_tx.exit.i.typhoon_tx_complete.exit_crit_edge, label %land.lhs.true.i

typhoon_clean_tx.exit.i.typhoon_tx_complete.exit_crit_edge: ; preds = %typhoon_clean_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_tx_complete.exit

land.lhs.true.i:                                  ; preds = %typhoon_clean_tx.exit.i
  %lastWrite.i = getelementptr i8, ptr %napi, i32 -156
  %46 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lastWrite.i, align 4
  %div6.i.i = lshr i32 %47, 4
  %div17.i.i = lshr i32 %lastRead.0.lcssa.i.i, 4
  %add.i.i = add nuw nsw i32 %div17.i.i, 127
  %sub2.i.i = sub nsw i32 %add.i.i, %div6.i.i
  %rem.i.i = srem i32 %sub2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %rem.i.i)
  %cmp.i = icmp sgt i32 %rem.i.i, 20
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.typhoon_tx_complete.exit_crit_edge

land.lhs.true.i.typhoon_tx_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_tx_complete.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %43) #13
  br label %typhoon_tx_complete.exit

typhoon_tx_complete.exit:                         ; preds = %if.then.i, %land.lhs.true.i.typhoon_tx_complete.exit_crit_edge, %typhoon_clean_tx.exit.i.typhoon_tx_complete.exit_crit_edge
  %48 = ptrtoint ptr %lastRead to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %lastRead.0.lcssa.i.i, ptr %lastRead, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !232
  br label %if.end6

if.end6:                                          ; preds = %typhoon_tx_complete.exit, %if.end.if.end6_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load volatile i32, ptr %1, align 1
  %rxHiReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 10
  %51 = ptrtoint ptr %rxHiReady to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load volatile i32, ptr %rxHiReady, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp7.not = icmp eq i32 %50, %52
  br i1 %cmp7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %rxHiRing = getelementptr i8, ptr %napi, i32 224
  %call11 = tail call fastcc i32 @typhoon_rx(ptr noundef %add.ptr, ptr noundef %rxHiRing, ptr noundef %rxHiReady, ptr noundef %1, i32 noundef %budget)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  %work_done.0 = phi i32 [ %call11, %if.then8 ], [ 0, %if.end6.if.end12_crit_edge ]
  %rxLoCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %rxLoCleared to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load volatile i32, ptr %rxLoCleared, align 1
  %rxLoReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %rxLoReady to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load volatile i32, ptr %rxLoReady, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp13.not = icmp eq i32 %54, %56
  br i1 %cmp13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %rxLoRing = getelementptr i8, ptr %napi, i32 -20
  %sub = sub i32 %budget, %work_done.0
  %call17 = tail call fastcc i32 @typhoon_rx(ptr noundef %add.ptr, ptr noundef %rxLoRing, ptr noundef %rxLoReady, ptr noundef %rxLoCleared, i32 noundef %sub)
  %add18 = add i32 %call17, %work_done.0
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %work_done.1 = phi i32 [ %add18, %if.then14 ], [ %work_done.0, %if.end12.if.end19_crit_edge ]
  %rxBuffCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %rxBuffCleared to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load volatile i32, ptr %rxBuffCleared, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %lastWrite = getelementptr i8, ptr %napi, i32 236
  %60 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lastWrite, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp20 = icmp eq i32 %59, %61
  br i1 %cmp20, label %if.end19.for.body.i_crit_edge, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.backedge.i, %if.end19.for.body.i_crit_edge
  %i.011.i = phi i32 [ %i.011.be.i, %for.body.backedge.i ], [ 0, %if.end19.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.typhoon, ptr %add.ptr, i32 0, i32 17, i32 %i.011.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %call.i = tail call fastcc i32 @typhoon_alloc_rx_skb(ptr noundef %add.ptr, i32 noundef %i.011.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %switch.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %i.011.i)
  %cmp.i69 = icmp ult i32 %i.011.i, 126
  %or.cond.i = select i1 %switch.i, i1 %cmp.i69, i1 false
  br i1 %or.cond.i, label %cleanup.i.for.body.backedge.i_crit_edge, label %cleanup.i.if.end22_crit_edge

cleanup.i.if.end22_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

cleanup.i.for.body.backedge.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %i.011.i)
  %cmp.old.i = icmp ult i32 %i.011.i, 126
  br i1 %cmp.old.i, label %for.inc.i.for.body.backedge.i_crit_edge, label %for.inc.i.if.end22_crit_edge

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.inc.i.for.body.backedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge.i

for.body.backedge.i:                              ; preds = %for.inc.i.for.body.backedge.i_crit_edge, %cleanup.i.for.body.backedge.i_crit_edge
  %i.011.be.i = add nuw nsw i32 %i.011.i, 1
  br label %for.body.i

if.end22:                                         ; preds = %for.inc.i.if.end22_crit_edge, %cleanup.i.if.end22_crit_edge, %if.end19.if.end22_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %budget)
  %cmp23 = icmp slt i32 %work_done.1, %budget
  br i1 %cmp23, label %if.then24, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then24:                                        ; preds = %if.end22
  %call25 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.1) #13
  %ioaddr = getelementptr i8, ptr %napi, i32 -32
  %64 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr, align 128
  %add.ptr26 = getelementptr i8, ptr %65, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #13, !srcloc !226
  %66 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool27.not = icmp eq i32 %66, 0
  br i1 %tobool27.not, label %if.then24.if.end35_crit_edge, label %if.then30, !prof !227

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr, align 128
  %add.ptr32 = getelementptr i8, ptr %68, i32 52
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then24.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  ret i32 %work_done.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_process_response(ptr noundef %tp, i32 noundef %resp_size, ptr noundef writeonly %resp_save) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %indexes1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %0 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexes1, align 4
  %respRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 21
  %2 = ptrtoint ptr %respRing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %respRing, align 4
  %respCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %respCleared to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load volatile i32, ptr %respCleared, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %respReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %respReady to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load volatile i32, ptr %respReady, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp.not95 = icmp eq i32 %5, %8
  br i1 %cmp.not95, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %command_lock.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 19
  %cmdRing.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20
  %lastWrite.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20, i32 1
  %ioaddr.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %resp_save.addr.097 = phi ptr [ %resp_save, %while.body.lr.ph ], [ %resp_save.addr.1, %cleanup.while.body_crit_edge ]
  %cleared.096 = phi i32 [ %6, %while.body.lr.ph ], [ %rem.i.i, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 %cleared.096
  %numDesc = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %numDesc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %numDesc, align 1
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %tobool.not = icmp eq ptr %resp_save.addr.097, null
  br i1 %tobool.not, label %while.body.if.else_crit_edge, label %land.lhs.true

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %seqNo = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 3
  %12 = ptrtoint ptr %seqNo to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %seqNo, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool3.not = icmp eq i16 %13, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %resp_size)
  %cmp4.not = icmp slt i32 %conv, %resp_size
  br i1 %cmp4.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %resp_save.addr.097 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %resp_save.addr.097, align 1
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mul = shl nuw nsw i32 %add, 4
  %add7 = add i32 %mul, %cleared.096
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add7)
  %cmp8 = icmp ugt i32 %add7, 512
  br i1 %cmp8, label %if.then23, label %if.end15.thread, !prof !227

if.end15.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = call ptr @memcpy(ptr %resp_save.addr.097, ptr %add.ptr, i32 %mul)
  br label %cleanup

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %add7, -512
  %sub14 = sub i32 512, %cleared.096
  %16 = call ptr @memcpy(ptr %resp_save.addr.097, ptr %add.ptr, i32 %sub14)
  %div88 = lshr i32 %sub14, 4
  %add.ptr24 = getelementptr %struct.resp_desc, ptr %resp_save.addr.097, i32 %div88
  %17 = call ptr @memcpy(ptr %add.ptr24, ptr %3, i32 %sub)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %cmd = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %cmd, align 1
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %19, label %if.else36 [
    i16 6912, label %if.then29
    i16 22272, label %if.then35
  ]

if.then29:                                        ; preds = %if.else
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %parm1.i = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 4
  %23 = ptrtoint ptr %parm1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %parm1.i, align 1
  %25 = and i16 %24, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_off(ptr noundef %22) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_carrier_on(ptr noundef %22) #13
  br label %cleanup

if.then35:                                        ; preds = %if.else
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %command_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i89 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i89, label %if.then35.cleanup_crit_edge, label %if.then.i90

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i90:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %cmdRing.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdRing.i, align 4
  %28 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lastWrite.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %29
  %add.i.i.i = add i32 %29, 16
  %rem.i.i.i = and i32 %add.i.i.i, 255
  store i32 %rem.i.i.i, ptr %lastWrite.i, align 4
  %30 = getelementptr inbounds i8, ptr %add.ptr.i, i32 1
  %31 = call ptr @memset(ptr %30, i32 0, i32 15)
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -126, ptr %add.ptr.i, align 1
  %cmd2.i = getelementptr inbounds %struct.cmd_desc, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %cmd2.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 22272, ptr %cmd2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !233
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lastWrite.i, align 4
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i, align 128
  %add.ptr7.i = getelementptr i8, ptr %37, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %38) #13, !srcloc !226
  tail call void @_raw_spin_unlock(ptr noundef %command_lock.i) #13
  br label %cleanup

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv39 = zext i16 %41 to i32
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr, align 1
  %conv43 = zext i8 %43 to i32
  %parm1 = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 4
  %44 = ptrtoint ptr %parm1 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %parm1, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv44 = zext i16 %46 to i32
  %parm2 = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 5
  %47 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %parm2, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %parm3 = getelementptr inbounds %struct.resp_desc, ptr %add.ptr, i32 0, i32 6
  %50 = ptrtoint ptr %parm3 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %parm3, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.34, i32 noundef %conv39, i32 noundef %conv, i32 noundef %conv43, i32 noundef %conv44, i32 noundef %49, i32 noundef %52) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then.i90, %if.then35.cleanup_crit_edge, %if.else.i, %if.then.i, %if.then23, %if.end15.thread, %if.then6
  %resp_save.addr.1 = phi ptr [ %resp_save.addr.097, %if.then6 ], [ %resp_save.addr.097, %if.else36 ], [ null, %if.then23 ], [ null, %if.end15.thread ], [ %resp_save.addr.097, %if.then.i ], [ %resp_save.addr.097, %if.else.i ], [ %resp_save.addr.097, %if.then35.cleanup_crit_edge ], [ %resp_save.addr.097, %if.then.i90 ]
  %mul.i.i = shl nuw nsw i32 %add, 4
  %add.i.i = add i32 %mul.i.i, %cleared.096
  %rem.i.i = and i32 %add.i.i, 511
  %cmp.not = icmp eq i32 %rem.i.i, %9
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %cleared.0.lcssa = phi i32 [ %6, %entry.while.end_crit_edge ], [ %9, %cleanup.while.end_crit_edge ]
  %resp_save.addr.0.lcssa = phi ptr [ %resp_save, %entry.while.end_crit_edge ], [ %resp_save.addr.1, %cleanup.while.end_crit_edge ]
  %53 = tail call i32 @llvm.bswap.i32(i32 %cleared.0.lcssa)
  %54 = ptrtoint ptr %respCleared to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store volatile i32 %53, ptr %respCleared, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !234
  tail call void @arm_heavy_mb() #13
  %cmp49 = icmp eq ptr %resp_save.addr.0.lcssa, null
  %conv50 = zext i1 %cmp49 to i32
  ret i32 %conv50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_sleep_early(ptr noundef %tp, i16 noundef zeroext %events) unnamed_addr #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %2 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 15)
  %7 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -62, ptr %xp_cmd, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 18688, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %events, ptr %4, align 1
  %call = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef %call) #16
  br label %cleanup

do.body5:                                         ; preds = %entry
  %13 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %14 = call ptr @memset(ptr %13, i32 0, i32 15)
  %15 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -126, ptr %xp_cmd, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 8960, ptr %2, align 1
  %call11 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.49, i32 noundef %call11) #16
  br label %cleanup

if.end16:                                         ; preds = %do.body5
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end16
  %i.03.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %19)
  %cmp1.i = icmp eq i32 %19, 285212672
  br i1 %cmp1.i, label %if.end21, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 10737400) #13
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev22 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 8
  tail call void @netif_carrier_off(ptr noundef %22) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.i.cleanup_crit_edge, %if.then14, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call11, %if.then14 ], [ 0, %if.end21 ], [ -110, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = load ptr, ptr @typhoon_fw, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr i8, ptr %dev, i32 2452
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call i32 @request_firmware(ptr noundef nonnull @typhoon_fw, ptr noundef nonnull @.str.53, ptr noundef %dev.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev3.i = getelementptr i8, ptr %dev, i32 2456
  %3 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53) #16
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %5 = load ptr, ptr @typhoon_fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %9)
  %cmp.i = icmp ult i32 %9, 40
  br i1 %cmp.i, label %if.end4.i.invalid_fw.i_crit_edge, label %if.end6.i

if.end4.i.invalid_fw.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid_fw.i

if.end6.i:                                        ; preds = %if.end4.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %7, ptr noundef nonnull dereferenceable(8) @.str.55, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.invalid_fw.i_crit_edge

if.end6.i.invalid_fw.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid_fw.i

if.end10.i:                                       ; preds = %if.end6.i
  %numSections11.i = getelementptr inbounds %struct.typhoon_file_header, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %numSections11.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %numSections11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not45.i = icmp eq i32 %11, 0
  br i1 %tobool12.not45.i, label %if.end10.i.if.end_crit_edge, label %while.body.preheader.i

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.preheader.i:                           ; preds = %if.end10.i
  %sub.i = add i32 %9, -40
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 40
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec48.in.i = phi i32 [ %dec48.i, %if.end19.i.while.body.i_crit_edge ], [ %12, %while.body.preheader.i ]
  %remaining.047.i = phi i32 [ %sub21.i, %if.end19.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %image_data.046.i = phi ptr [ %add.ptr20.i, %if.end19.i.while.body.i_crit_edge ], [ %add.ptr.i50, %while.body.preheader.i ]
  %dec48.i = add i32 %dec48.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %remaining.047.i)
  %cmp13.i = icmp ult i32 %remaining.047.i, 12
  br i1 %cmp13.i, label %while.body.i.invalid_fw.i_crit_edge, label %if.end15.i

while.body.i.invalid_fw.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid_fw.i

if.end15.i:                                       ; preds = %while.body.i
  %13 = ptrtoint ptr %image_data.046.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %image_data.046.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.047.i, i32 %15)
  %cmp17.i = icmp ult i32 %remaining.047.i, %15
  br i1 %cmp17.i, label %if.end15.i.invalid_fw.i_crit_edge, label %if.end19.i

if.end15.i.invalid_fw.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid_fw.i

if.end19.i:                                       ; preds = %if.end15.i
  %add.ptr16.i = getelementptr i8, ptr %image_data.046.i, i32 12
  %add.ptr20.i = getelementptr i8, ptr %add.ptr16.i, i32 %15
  %sub21.i = sub i32 %remaining.047.i, %15
  %tobool12.not.i = icmp eq i32 %dec48.i, 0
  br i1 %tobool12.not.i, label %if.end19.i.if.end_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end19.i.if.end_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

invalid_fw.i:                                     ; preds = %if.end15.i.invalid_fw.i_crit_edge, %while.body.i.invalid_fw.i_crit_edge, %if.end6.i.invalid_fw.i_crit_edge, %if.end4.i.invalid_fw.i_crit_edge
  %dev22.i = getelementptr i8, ptr %dev, i32 2456
  %16 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.56) #16
  %18 = load ptr, ptr @typhoon_fw, align 4
  tail call void @release_firmware(ptr noundef %18) #13
  store ptr null, ptr @typhoon_fw, align 4
  br label %cleanup

if.end:                                           ; preds = %if.end19.i.if.end_crit_edge, %if.end10.i.if.end_crit_edge, %entry.if.end_crit_edge
  %pdev = getelementptr i8, ptr %dev, i32 2452
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %20, i32 noundef 0) #13
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  tail call void @pci_restore_state(ptr noundef %22) #13
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 2432
  %23 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr1.i, align 128
  %add.ptr.i51 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 -100663296) #13, !srcloc !226
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.03.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %25)
  %cmp1.i.i = icmp eq i32 %25, 218103808
  br i1 %cmp1.i.i, label %lor.lhs.false.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 10737400) #13
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %if.end.i.i.typhoon_wakeup.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end.i.i.typhoon_wakeup.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_wakeup.exit

lor.lhs.false.i:                                  ; preds = %for.body.i.i
  %capabilities.i = getelementptr i8, ptr %dev, i32 4008
  %27 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i52 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i52, label %lor.lhs.false.i.if.end6_crit_edge, label %lor.lhs.false.i.typhoon_wakeup.exit_crit_edge

lor.lhs.false.i.typhoon_wakeup.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_wakeup.exit

lor.lhs.false.i.if.end6_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

typhoon_wakeup.exit:                              ; preds = %lor.lhs.false.i.typhoon_wakeup.exit_crit_edge, %if.end.i.i.typhoon_wakeup.exit_crit_edge
  %call2.i = tail call fastcc i32 @typhoon_reset(ptr noundef %24, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then5, label %typhoon_wakeup.exit.if.end6_crit_edge

typhoon_wakeup.exit.if.end6_crit_edge:            ; preds = %typhoon_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %typhoon_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #16
  br label %out_sleep

if.end6:                                          ; preds = %typhoon_wakeup.exit.if.end6_crit_edge, %lor.lhs.false.i.if.end6_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call.i54 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @typhoon_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp8 = icmp slt i32 %call.i54, 0
  br i1 %cmp8, label %if.end6.out_sleep_crit_edge, label %if.end10

if.end6.out_sleep_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_sleep

if.end10:                                         ; preds = %if.end6
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_enable(ptr noundef %napi) #13
  %call11 = tail call fastcc i32 @typhoon_start_runtime(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @napi_disable(ptr noundef %napi) #13
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call17 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %dev) #13
  br label %out_sleep

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %cleanup

out_sleep:                                        ; preds = %if.then13, %if.end6.out_sleep_crit_edge, %if.then5
  %err.0 = phi i32 [ %call2.i, %if.then5 ], [ %call.i54, %if.end6.out_sleep_crit_edge ], [ %call11, %if.then13 ]
  %call18 = tail call fastcc i32 @typhoon_boot_3XP(ptr noundef %add.ptr.i, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %out_sleep
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #16
  %35 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr1.i, align 128
  %call21 = tail call fastcc i32 @typhoon_reset(ptr noundef %36, i32 noundef 0)
  br label %cleanup

if.end22:                                         ; preds = %out_sleep
  %call.i55 = tail call fastcc i32 @typhoon_sleep_early(ptr noundef %add.ptr.i, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i58, label %if.end22.typhoon_sleep.exit_crit_edge

if.end22.typhoon_sleep.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_sleep.exit

if.end.i58:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %call1.i = tail call i32 @pci_enable_wake(ptr noundef %38, i32 noundef 3, i1 noundef zeroext true) #13
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_device(ptr noundef %40) #13
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 4
  %call4.i = tail call i32 @pci_set_power_state(ptr noundef %42, i32 noundef 3) #13
  br label %typhoon_sleep.exit

typhoon_sleep.exit:                               ; preds = %if.end.i58, %if.end22.typhoon_sleep.exit_crit_edge
  %retval.0.i59 = phi i32 [ %call4.i, %if.end.i58 ], [ %call.i55, %if.end22.typhoon_sleep.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i59)
  %cmp24 = icmp slt i32 %retval.0.i59, 0
  br i1 %cmp24, label %if.then25, label %typhoon_sleep.exit.cleanup_crit_edge

typhoon_sleep.exit.cleanup_crit_edge:             ; preds = %typhoon_sleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %typhoon_sleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %typhoon_sleep.exit.cleanup_crit_edge, %if.then20, %if.end15, %invalid_fw.i, %if.then2.i
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %err.0, %if.then20 ], [ %err.0, %if.then25 ], [ %err.0, %typhoon_sleep.exit.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ -22, %invalid_fw.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %napi = getelementptr i8, ptr %dev, i32 2464
  tail call void @napi_disable(ptr noundef %napi) #13
  %call1 = tail call fastcc i32 @typhoon_stop_runtime(ptr noundef %add.ptr.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.67) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #13
  %pdev.i = getelementptr i8, ptr %dev, i32 2452
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i, i32 1
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %11) #13
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %typhoon_free_rx_rings.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

typhoon_free_rx_rings.exit:                       ; preds = %if.end.i
  %indexes.i = getelementptr i8, ptr %dev, i32 2436
  %13 = ptrtoint ptr %indexes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %indexes.i, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 44)
  %lastWrite.i = getelementptr i8, ptr %dev, i32 2308
  %16 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lastWrite.i, align 4
  %lastWrite1.i = getelementptr i8, ptr %dev, i32 4016
  %17 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %lastWrite1.i, align 4
  %lastWrite2.i = getelementptr i8, ptr %dev, i32 2448
  %18 = ptrtoint ptr %lastWrite2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lastWrite2.i, align 4
  %lastWrite3.i = getelementptr i8, ptr %dev, i32 2692
  %19 = ptrtoint ptr %lastWrite3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lastWrite3.i, align 4
  %lastWrite4.i = getelementptr i8, ptr %dev, i32 2700
  %20 = ptrtoint ptr %lastWrite4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lastWrite4.i, align 4
  %lastWrite5.i = getelementptr i8, ptr %dev, i32 3888
  %21 = ptrtoint ptr %lastWrite5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lastWrite5.i, align 4
  %lastWrite6.i = getelementptr i8, ptr %dev, i32 3896
  %22 = ptrtoint ptr %lastWrite6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lastWrite6.i, align 4
  %lastRead.i = getelementptr i8, ptr %dev, i32 2312
  %23 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %lastRead.i, align 8
  %lastRead9.i = getelementptr i8, ptr %dev, i32 4020
  %24 = ptrtoint ptr %lastRead9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lastRead9.i, align 4
  %call3 = tail call fastcc i32 @typhoon_boot_3XP(ptr noundef %add.ptr.i, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %typhoon_free_rx_rings.exit.if.end6_crit_edge

typhoon_free_rx_rings.exit.if.end6_crit_edge:     ; preds = %typhoon_free_rx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %typhoon_free_rx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %typhoon_free_rx_rings.exit.if.end6_crit_edge
  %call.i = tail call fastcc i32 @typhoon_sleep_early(ptr noundef %add.ptr.i, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %if.end.i24, label %if.end6.typhoon_sleep.exit_crit_edge

if.end6.typhoon_sleep.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_sleep.exit

if.end.i24:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %call1.i = tail call i32 @pci_enable_wake(ptr noundef %26, i32 noundef 3, i1 noundef zeroext true) #13
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_device(ptr noundef %28) #13
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %call4.i = tail call i32 @pci_set_power_state(ptr noundef %30, i32 noundef 3) #13
  br label %typhoon_sleep.exit

typhoon_sleep.exit:                               ; preds = %if.end.i24, %if.end6.typhoon_sleep.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i24 ], [ %call.i, %if.end6.typhoon_sleep.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp8, label %if.then9, label %typhoon_sleep.exit.if.end10_crit_edge

typhoon_sleep.exit.if.end10_crit_edge:            ; preds = %typhoon_sleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %typhoon_sleep.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %typhoon_sleep.exit.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_start_tx(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  %spec.select.v = select i1 %tobool.i.not, i32 1, i32 2
  %lastWrite.i = getelementptr i8, ptr %dev, i32 2308
  %lastRead.i = getelementptr i8, ptr %dev, i32 2312
  %spec.select = add nuw nsw i32 %conv, 2
  %add4 = add nuw nsw i32 %spec.select, %spec.select.v
  %6 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lastWrite.i, align 4
  %8 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lastRead.i, align 4
  %div6.i.i257 = lshr i32 %7, 4
  %div17.i.i258 = lshr i32 %9, 4
  %add.i.i260 = sub nsw i32 127, %div6.i.i257
  %sub2.i.i261 = add nsw i32 %add.i.i260, %div17.i.i258
  %rem.i.i262 = srem i32 %sub2.i.i261, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i262, i32 %add4)
  %cmp263 = icmp slt i32 %rem.i.i262, %add4
  br i1 %cmp263, label %entry.do.end_crit_edge, label %entry.while.end_crit_edge, !prof !227

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !235
  %10 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lastWrite.i, align 4
  %12 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lastRead.i, align 4
  %div6.i.i = lshr i32 %11, 4
  %div17.i.i = lshr i32 %13, 4
  %add.i.i = sub nsw i32 127, %div6.i.i
  %sub2.i.i = add nsw i32 %add.i.i, %div17.i.i
  %rem.i.i = srem i32 %sub2.i.i, 128
  %cmp = icmp slt i32 %rem.i.i, %add4
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge, !prof !227

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %entry.while.end_crit_edge ], [ %11, %do.end.while.end_crit_edge ]
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %.lcssa
  %add.i.i186 = add i32 %.lcssa, 16
  %rem.i.i187 = and i32 %add.i.i186, 2047
  %16 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem.i.i187, ptr %lastWrite.i, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -127, ptr %add.ptr, align 1
  %numDesc11 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr, i32 0, i32 1
  %18 = ptrtoint ptr %numDesc11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %numDesc11, align 1
  %len = getelementptr inbounds %struct.tx_desc, ptr %add.ptr, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %len, align 1
  %20 = ptrtoint ptr %skb to i32
  %conv12 = zext i32 %20 to i64
  %21 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %conv12, ptr %21, align 1
  %processFlags = getelementptr inbounds %struct.tx_desc, ptr %add.ptr, i32 0, i32 4
  %23 = ptrtoint ptr %processFlags to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %processFlags, align 1
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %ip_summed, align 8
  %25 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %25)
  %cmp14 = icmp eq i16 %25, 1536
  %spec.store.select = select i1 %cmp14, i32 -2046820352, i32 0
  %26 = ptrtoint ptr %processFlags to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %spec.store.select, ptr %processFlags, align 1
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %27 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load23 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load23)
  %tobool26.not = icmp sgt i32 %bf.load23, -1
  br i1 %tobool26.not, label %while.end.if.end33_crit_edge, label %if.then27

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then27:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %or29 = or i32 %spec.store.select, 1342177280
  %28 = ptrtoint ptr %processFlags to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %or29, ptr %processFlags, align 1
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %29 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_tci, align 2
  %conv30 = zext i16 %30 to i32
  %shl = shl nuw nsw i32 %conv30, 12
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %or32 = or i32 %31, %or29
  %32 = ptrtoint ptr %processFlags to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or32, ptr %processFlags, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %while.end.if.end33_crit_edge
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %gso_size.i189 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %gso_size.i189 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gso_size.i189, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i190.not = icmp eq i16 %36, 0
  br i1 %tobool.i190.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %processFlags to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %processFlags, align 1
  %or37 = or i32 %38, 134217728
  store i32 %or37, ptr %processFlags, align 1
  %39 = ptrtoint ptr %numDesc11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %numDesc11, align 1
  %inc39 = add i8 %40, 1
  store i8 %inc39, ptr %numDesc11, align 1
  %txlo_dma_addr = getelementptr i8, ptr %dev, i32 2328
  %41 = ptrtoint ptr %txlo_dma_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txlo_dma_addr, align 8
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %45 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lastWrite.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %44, i32 %46
  %add.i = add i32 %42, 8
  %add2.i = add i32 %add.i, %46
  %add.i.i.i = add i32 %46, 16
  %rem.i.i.i = and i32 %add.i.i.i, 2047
  store i32 %rem.i.i.i, ptr %lastWrite.i, align 4
  %47 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 19, ptr %add.ptr.i192, align 1
  %numDesc.i = getelementptr inbounds %struct.tcpopt_desc, ptr %add.ptr.i192, i32 0, i32 1
  %48 = ptrtoint ptr %numDesc.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %numDesc.i, align 1
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %gso_size.i194 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %gso_size.i194 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %gso_size.i194, align 4
  %mss_flags.i = getelementptr inbounds %struct.tcpopt_desc, ptr %add.ptr.i192, i32 0, i32 2
  %53 = or i16 %52, 12288
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #13
  %55 = ptrtoint ptr %mss_flags.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %mss_flags.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %add2.i) #13
  %respAddrLo.i = getelementptr inbounds %struct.tcpopt_desc, ptr %add.ptr.i192, i32 0, i32 3
  %57 = ptrtoint ptr %respAddrLo.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %respAddrLo.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  %bytesTx.i = getelementptr inbounds %struct.tcpopt_desc, ptr %add.ptr.i192, i32 0, i32 4
  %61 = ptrtoint ptr %bytesTx.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %bytesTx.i, align 1
  %status.i = getelementptr inbounds %struct.tcpopt_desc, ptr %add.ptr.i192, i32 0, i32 5
  %62 = ptrtoint ptr %status.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %status.i, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end33.if.end40_crit_edge
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %65 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lastWrite.i, align 4
  %add.ptr43 = getelementptr i8, ptr %64, i32 %66
  %add.i.i195 = add i32 %66, 16
  %rem.i.i196 = and i32 %add.i.i195, 2047
  store i32 %rem.i.i196, ptr %lastWrite.i, align 4
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags46 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags46 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags46, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp48 = icmp eq i8 %70, 0
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end40
  %tx_pdev = getelementptr i8, ptr %dev, i32 2320
  %71 = ptrtoint ptr %tx_pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_pdev, align 16
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %len52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %75 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len52, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %74) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then50
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !236

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev51) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44, i32 3
  %77 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev51, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %80, %if.end.i.i ], [ %78, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev51, ptr noundef %74, i32 noundef %76) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %81 = load ptr, ptr @mem_map, align 4
  %82 = ptrtoint ptr %74 to i32
  %sub.i = add i32 %82, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i198 = getelementptr %struct.page, ptr %81, i32 %shr.i
  %and.i = and i32 %82, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev51, ptr noundef %add.ptr.i198, i32 noundef %and.i, i32 noundef %76, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %83 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -128, ptr %add.ptr43, align 1
  %84 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len52, align 4
  %conv56 = trunc i32 %85 to i16
  %86 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %len57 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr43, i32 0, i32 2
  %87 = ptrtoint ptr %len57 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %len57, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %89 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr43, i32 0, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %88, ptr %89, align 1
  %addrHi = getelementptr inbounds %struct.anon.123, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %addrHi to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 0, ptr %addrHi, align 1
  %92 = ptrtoint ptr %numDesc11 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %numDesc11, align 1
  %inc59 = add i8 %93, 1
  store i8 %inc59, ptr %numDesc11, align 1
  br label %do.body97

if.else:                                          ; preds = %if.end40
  %len.i199 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %94 = ptrtoint ptr %len.i199 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i199, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %96 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %data_len.i, align 8
  %sub.i200 = sub i32 %95, %97
  %tx_pdev62 = getelementptr i8, ptr %dev, i32 2320
  %98 = ptrtoint ptr %tx_pdev62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_pdev62, align 16
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %data64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %100 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data64, align 4
  %call.i201 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %101) #13
  br i1 %call.i201, label %land.rhs.i203, label %if.end39.i216

land.rhs.i203:                                    ; preds = %if.else
  %.b1.i202 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i202, label %land.rhs.i203.dma_map_single_attrs.exit218_crit_edge, label %if.then.i207, !prof !236

land.rhs.i203.dma_map_single_attrs.exit218_crit_edge: ; preds = %land.rhs.i203
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit218

if.then.i207:                                     ; preds = %land.rhs.i203
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i204 = tail call ptr @dev_driver_string(ptr noundef %dev63) #13
  %init_name.i.i205 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44, i32 3
  %102 = ptrtoint ptr %init_name.i.i205 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i.i205, align 8
  %tobool.not.i.i206 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i206, label %if.end.i.i208, label %if.then.i207.dev_name.exit.i210_crit_edge

if.then.i207.dev_name.exit.i210_crit_edge:        ; preds = %if.then.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i210

if.end.i.i208:                                    ; preds = %if.then.i207
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev63, align 4
  br label %dev_name.exit.i210

dev_name.exit.i210:                               ; preds = %if.end.i.i208, %if.then.i207.dev_name.exit.i210_crit_edge
  %retval.0.i.i209 = phi ptr [ %105, %if.end.i.i208 ], [ %103, %if.then.i207.dev_name.exit.i210_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef %call16.i204, ptr noundef %retval.0.i.i209) #13
  br label %dma_map_single_attrs.exit218

if.end39.i216:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev63, ptr noundef %101, i32 noundef %sub.i200) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %106 = load ptr, ptr @mem_map, align 4
  %107 = ptrtoint ptr %101 to i32
  %sub.i211 = add i32 %107, 1073741824
  %shr.i212 = lshr i32 %sub.i211, 12
  %add.ptr.i213 = getelementptr %struct.page, ptr %106, i32 %shr.i212
  %and.i214 = and i32 %107, 4095
  %call41.i215 = tail call i32 @dma_map_page_attrs(ptr noundef %dev63, ptr noundef %add.ptr.i213, i32 noundef %and.i214, i32 noundef %sub.i200, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit218

dma_map_single_attrs.exit218:                     ; preds = %if.end39.i216, %dev_name.exit.i210, %land.rhs.i203.dma_map_single_attrs.exit218_crit_edge
  %retval.0.i217 = phi i32 [ %call41.i215, %if.end39.i216 ], [ -1, %dev_name.exit.i210 ], [ -1, %land.rhs.i203.dma_map_single_attrs.exit218_crit_edge ]
  %108 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -128, ptr %add.ptr43, align 1
  %conv67 = trunc i32 %sub.i200 to i16
  %109 = tail call i16 @llvm.bswap.i16(i16 %conv67)
  %len68 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr43, i32 0, i32 2
  %110 = ptrtoint ptr %len68 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %len68, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i217)
  %112 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr43, i32 0, i32 3
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %111, ptr %112, align 1
  %addrHi70 = getelementptr inbounds %struct.anon.123, ptr %112, i32 0, i32 1
  %114 = ptrtoint ptr %addrHi70 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 0, ptr %addrHi70, align 1
  %115 = ptrtoint ptr %numDesc11 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %numDesc11, align 1
  %inc72 = add i8 %116, 1
  store i8 %inc72, ptr %numDesc11, align 1
  %117 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %end.i, align 4
  %nr_frags74264 = getelementptr inbounds %struct.skb_shared_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %nr_frags74264 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nr_frags74264, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp76266.not = icmp eq i8 %120, 0
  br i1 %cmp76266.not, label %dma_map_single_attrs.exit218.do.body97_crit_edge, label %dma_map_single_attrs.exit218.for.body_crit_edge

dma_map_single_attrs.exit218.for.body_crit_edge:  ; preds = %dma_map_single_attrs.exit218
  br label %for.body

dma_map_single_attrs.exit218.do.body97_crit_edge: ; preds = %dma_map_single_attrs.exit218
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body97

for.body:                                         ; preds = %dma_map_single_attrs.exit241.for.body_crit_edge, %dma_map_single_attrs.exit218.for.body_crit_edge
  %121 = phi ptr [ %150, %dma_map_single_attrs.exit241.for.body_crit_edge ], [ %118, %dma_map_single_attrs.exit218.for.body_crit_edge ]
  %i.0267 = phi i32 [ %inc95, %dma_map_single_attrs.exit241.for.body_crit_edge ], [ 0, %dma_map_single_attrs.exit218.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %i.0267
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 4
  %124 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lastWrite.i, align 4
  %add.ptr81 = getelementptr i8, ptr %123, i32 %125
  %add.i.i221 = add i32 %125, 16
  %rem.i.i222 = and i32 %add.i.i221, 2047
  store i32 %rem.i.i222, ptr %lastWrite.i, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %i.0267, i32 1
  %126 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bv_len.i, align 4
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %129) #13
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %i.0267, i32 2
  %130 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %call1.i, i32 %131
  %132 = ptrtoint ptr %tx_pdev62 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_pdev62, align 16
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %call.i224 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i223) #13
  br i1 %call.i224, label %land.rhs.i226, label %if.end39.i239

land.rhs.i226:                                    ; preds = %for.body
  %.b1.i225 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i225, label %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge, label %if.then.i230, !prof !236

land.rhs.i226.dma_map_single_attrs.exit241_crit_edge: ; preds = %land.rhs.i226
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit241

if.then.i230:                                     ; preds = %land.rhs.i226
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i227 = tail call ptr @dev_driver_string(ptr noundef %dev86) #13
  %init_name.i.i228 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44, i32 3
  %134 = ptrtoint ptr %init_name.i.i228 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_name.i.i228, align 8
  %tobool.not.i.i229 = icmp eq ptr %135, null
  br i1 %tobool.not.i.i229, label %if.end.i.i231, label %if.then.i230.dev_name.exit.i233_crit_edge

if.then.i230.dev_name.exit.i233_crit_edge:        ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i233

if.end.i.i231:                                    ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #15
  %136 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev86, align 4
  br label %dev_name.exit.i233

dev_name.exit.i233:                               ; preds = %if.end.i.i231, %if.then.i230.dev_name.exit.i233_crit_edge
  %retval.0.i.i232 = phi ptr [ %137, %if.end.i.i231 ], [ %135, %if.then.i230.dev_name.exit.i233_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef %call16.i227, ptr noundef %retval.0.i.i232) #13
  br label %dma_map_single_attrs.exit241

if.end39.i239:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev86, ptr noundef %add.ptr.i223, i32 noundef %127) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %138 = load ptr, ptr @mem_map, align 4
  %139 = ptrtoint ptr %add.ptr.i223 to i32
  %sub.i234 = add i32 %139, 1073741824
  %shr.i235 = lshr i32 %sub.i234, 12
  %add.ptr.i236 = getelementptr %struct.page, ptr %138, i32 %shr.i235
  %and.i237 = and i32 %139, 4095
  %call41.i238 = tail call i32 @dma_map_page_attrs(ptr noundef %dev86, ptr noundef %add.ptr.i236, i32 noundef %and.i237, i32 noundef %127, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit241

dma_map_single_attrs.exit241:                     ; preds = %if.end39.i239, %dev_name.exit.i233, %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge
  %retval.0.i240 = phi i32 [ %call41.i238, %if.end39.i239 ], [ -1, %dev_name.exit.i233 ], [ -1, %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge ]
  %140 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -128, ptr %add.ptr81, align 1
  %conv89 = trunc i32 %127 to i16
  %141 = tail call i16 @llvm.bswap.i16(i16 %conv89)
  %len90 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr81, i32 0, i32 2
  %142 = ptrtoint ptr %len90 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %141, ptr %len90, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i240)
  %144 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr81, i32 0, i32 3
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %143, ptr %144, align 1
  %addrHi92 = getelementptr inbounds %struct.anon.123, ptr %144, i32 0, i32 1
  %146 = ptrtoint ptr %addrHi92 to i32
  call void @__asan_storeN_noabort(i32 %146, i32 4)
  store i32 0, ptr %addrHi92, align 1
  %147 = ptrtoint ptr %numDesc11 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %numDesc11, align 1
  %inc94 = add i8 %148, 1
  store i8 %inc94, ptr %numDesc11, align 1
  %inc95 = add nuw nsw i32 %i.0267, 1
  %149 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i, align 4
  %nr_frags74 = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %nr_frags74 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %nr_frags74, align 2
  %conv75 = zext i8 %152 to i32
  %cmp76 = icmp ult i32 %inc95, %conv75
  br i1 %cmp76, label %dma_map_single_attrs.exit241.for.body_crit_edge, label %dma_map_single_attrs.exit241.do.body97_crit_edge

dma_map_single_attrs.exit241.do.body97_crit_edge: ; preds = %dma_map_single_attrs.exit241
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body97

dma_map_single_attrs.exit241.for.body_crit_edge:  ; preds = %dma_map_single_attrs.exit241
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body97:                                        ; preds = %dma_map_single_attrs.exit241.do.body97_crit_edge, %dma_map_single_attrs.exit218.do.body97_crit_edge, %dma_map_single_attrs.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !237
  tail call void @arm_heavy_mb() #13
  %153 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %lastWrite.i, align 4
  %tx_ioaddr = getelementptr i8, ptr %dev, i32 2324
  %155 = ptrtoint ptr %tx_ioaddr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tx_ioaddr, align 4
  %writeRegister = getelementptr i8, ptr %dev, i32 2316
  %157 = ptrtoint ptr %writeRegister to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %writeRegister, align 4
  %add.ptr101 = getelementptr i8, ptr %156, i32 %158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  %159 = tail call i32 @llvm.bswap.i32(i32 %154) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %159) #13, !srcloc !226
  %160 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %lastWrite.i, align 4
  %162 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %lastRead.i, align 4
  %div6.i.i244 = lshr i32 %161, 4
  %div17.i.i245 = lshr i32 %163, 4
  %add.i.i246 = sub nsw i32 127, %div6.i.i244
  %sub2.i.i247 = add nsw i32 %add.i.i246, %div17.i.i245
  %rem.i.i248 = srem i32 %sub2.i.i247, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %rem.i.i248)
  %cmp104 = icmp slt i32 %rem.i.i248, 22
  br i1 %cmp104, label %if.then106, label %do.body97.if.end113_crit_edge

do.body97.if.end113_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then106:                                       ; preds = %do.body97
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %164 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %165, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %166 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lastWrite.i, align 4
  %168 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %lastRead.i, align 4
  %div6.i.i251 = lshr i32 %167, 4
  %div17.i.i252 = lshr i32 %169, 4
  %add.i.i253 = sub nsw i32 127, %div6.i.i251
  %sub2.i.i254 = add nsw i32 %add.i.i253, %div17.i.i252
  %rem.i.i255 = srem i32 %sub2.i.i254, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %rem.i.i255)
  %cmp109 = icmp sgt i32 %rem.i.i255, 21
  br i1 %cmp109, label %if.then111, label %if.then106.if.end113_crit_edge

if.then106.if.end113_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113

if.then111:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %171) #13
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then106.if.end113_crit_edge, %do.body97.if.end113_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @typhoon_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %0 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %1 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 4
  %2 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 5
  %3 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #13
  %4 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.body67_crit_edge

entry.do.body67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %cmp = icmp slt i32 %8, 33
  %and4 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.else10, label %if.else.do.body67_crit_edge

if.else.do.body67_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.else10.do.body67_crit_edge, label %if.then15

if.else10.do.body67_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

if.then15:                                        ; preds = %if.else10
  %9 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %mc_filter, align 8
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0110 = load ptr, ptr %mc, align 4
  %cmp20.not111 = icmp eq ptr %ha.0110, %mc
  br i1 %cmp20.not111, label %if.then15.do.body_crit_edge, label %if.then15.cond.end_crit_edge

if.then15.cond.end_crit_edge:                     ; preds = %if.then15
  br label %cond.end

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then15.cond.end_crit_edge
  %ha.0112 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0110, %if.then15.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0112, i32 0, i32 2
  %call23 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #18
  %sum.shift.i = lshr i32 %call23, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %11 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %12 to i32
  %and49 = and i32 %conv6.i12.i, 31
  %shl50 = shl nuw i32 1, %and49
  %and48 = lshr i32 %conv6.i12.i, 5
  %13 = and i32 %and48, 1
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %or52 = or i32 %shl50, %15
  store i32 %or52, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %ha.0112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.0112, align 4
  %cmp20.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp20.not, label %cond.end.do.body_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %cond.end.do.body_crit_edge, %if.then15.do.body_crit_edge
  %17 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 5)
  %19 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -126, ptr %xp_cmd, align 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 9472, ptr %0, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 512, ptr %1, align 1
  %22 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mc_filter, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %2, align 1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %4, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %3, align 1
  %30 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  br label %do.body67

do.body67:                                        ; preds = %do.body, %if.else10.do.body67_crit_edge, %if.else.do.body67_crit_edge, %entry.do.body67_crit_edge
  %filter.0 = phi i16 [ 1280, %if.else10.do.body67_crit_edge ], [ 5376, %do.body ], [ 3328, %entry.do.body67_crit_edge ], [ 1792, %if.else.do.body67_crit_edge ]
  %31 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  %32 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %33 = call ptr @memset(ptr %32, i32 0, i32 15)
  %34 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -62, ptr %xp_cmd, align 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 1280, ptr %0, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 1, ptr %31, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %filter.0, ptr %1, align 1
  %38 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @typhoon_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr = getelementptr i8, ptr %dev, i32 2432
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 128
  %call1 = tail call fastcc i32 @typhoon_reset(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.73) #16
  br label %truly_dead

if.end:                                           ; preds = %entry
  %indexes = getelementptr i8, ptr %dev, i32 2436
  %2 = ptrtoint ptr %indexes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indexes, align 4
  %txLoCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %3, i32 0, i32 4
  %lastRead1.i = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %lastRead1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastRead1.i, align 4
  %6 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %txLoCleared, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp.not20.i = icmp eq i32 %5, %8
  br i1 %cmp.not20.i, label %if.end.typhoon_clean_tx.exit_crit_edge, label %while.body.lr.ph.i

if.end.typhoon_clean_tx.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_clean_tx.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %pdev.i = getelementptr i8, ptr %dev, i32 2452
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %lastRead.021.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %rem.i.i.i, %if.end9.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 %lastRead.021.i
  %11 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i19, align 1
  %trunc.i = trunc i8 %12 to i3
  %13 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.86)
  switch i3 %trunc.i, label %while.body.i.if.end9.i_crit_edge [
    i3 1, label %if.then.i
    i3 0, label %if.then7.i
  ]

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i19, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %14, align 1
  %conv4.i = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv4.i to ptr
  tail call void @__dev_kfree_skb_irq(ptr noundef %17, i32 noundef 1) #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %18 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i19, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %18, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  %len.i = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i19, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %len.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #13
  %conv8.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %21, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then.i, %while.body.i.if.end9.i_crit_edge
  %27 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %add.ptr.i19, align 1
  %add.i.i.i = add i32 %lastRead.021.i, 16
  %rem.i.i.i = and i32 %add.i.i.i, 2047
  %28 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %txLoCleared, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  %cmp.not.i = icmp eq i32 %rem.i.i.i, %30
  br i1 %cmp.not.i, label %if.end9.i.typhoon_clean_tx.exit_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end9.i.typhoon_clean_tx.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_clean_tx.exit

typhoon_clean_tx.exit:                            ; preds = %if.end9.i.typhoon_clean_tx.exit_crit_edge, %if.end.typhoon_clean_tx.exit_crit_edge
  %pdev.i20 = getelementptr i8, ptr %dev, i32 2452
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %typhoon_clean_tx.exit
  %i.09.i = phi i32 [ 0, %typhoon_clean_tx.exit ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i22

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i22:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %pdev.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i20, align 4
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i, i32 1
  %35 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i21, i32 noundef %36, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %38) #13
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i22, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %typhoon_free_rx_rings.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

typhoon_free_rx_rings.exit:                       ; preds = %if.end.i
  %call3 = tail call fastcc i32 @typhoon_start_runtime(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %typhoon_free_rx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #16
  br label %truly_dead

if.end6:                                          ; preds = %typhoon_free_rx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %41) #13
  br label %cleanup

truly_dead:                                       ; preds = %if.then5, %if.then
  %42 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr, align 128
  %call8 = tail call fastcc i32 @typhoon_reset(ptr noundef %43, i32 noundef 0)
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %truly_dead, %if.end6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @typhoon_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %dev, i32 2456
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %stats_saved = getelementptr i8, ptr %dev, i32 3900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !238
  %card_state = getelementptr i8, ptr %dev, i32 2443
  %2 = ptrtoint ptr %card_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %card_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %stats2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %call7 = tail call fastcc i32 @typhoon_do_get_stats(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %stats_saved, %if.then10 ], [ %stats_saved, %entry.cleanup_crit_edge ], [ %stats2, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev_instance, i32 2432
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #13, !srcloc !226
  %napi = getelementptr i8, ptr %dev_instance, i32 2464
  %call4 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %add.ptr6 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #13, !srcloc !226
  %4 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then5.do.end_crit_edge, label %if.then10, !prof !227

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11 = getelementptr i8, ptr %1, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then5.do.end_crit_edge
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_instance, ptr noundef nonnull @.str.57) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_start_runtime(ptr noundef %tp) unnamed_addr #2 align 64 {
entry:
  %dpage_dma.i = alloca i32, align 4
  %xp_cmd = alloca %struct.cmd_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %ioaddr2 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %4 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %5 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  %6 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 4
  %7 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 5
  %8 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 6
  %indexes.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %9 = call ptr @memset(ptr %xp_cmd, i32 255, i32 16)
  %10 = ptrtoint ptr %indexes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %indexes.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 44)
  %lastWrite.i = getelementptr inbounds %struct.transmit_ring, ptr %tp, i32 0, i32 1
  %13 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %lastWrite.i, align 4
  %lastWrite1.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 29, i32 1
  %14 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %lastWrite1.i, align 4
  %lastWrite2.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %lastWrite2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %lastWrite2.i, align 4
  %lastWrite3.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %lastWrite3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lastWrite3.i, align 4
  %lastWrite4.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %lastWrite4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %lastWrite4.i, align 4
  %lastWrite5.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 20, i32 1
  %18 = ptrtoint ptr %lastWrite5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %lastWrite5.i, align 4
  %lastWrite6.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 21, i32 1
  %19 = ptrtoint ptr %lastWrite6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lastWrite6.i, align 4
  %lastRead.i = getelementptr inbounds %struct.transmit_ring, ptr %tp, i32 0, i32 2
  %20 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lastRead.i, align 8
  %lastRead9.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 29, i32 2
  %21 = ptrtoint ptr %lastRead9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lastRead9.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.backedge.i, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %i.011.be.i, %for.body.backedge.i ]
  %arrayidx.i = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %i.011.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %call.i = tail call fastcc i32 @typhoon_alloc_rx_skb(ptr noundef %tp, i32 noundef %i.011.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %switch.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %i.011.i)
  %cmp.i = icmp ult i32 %i.011.i, 126
  %or.cond.i = select i1 %switch.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.for.body.backedge.i_crit_edge, label %cleanup.i.typhoon_fill_free_ring.exit_crit_edge

cleanup.i.typhoon_fill_free_ring.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_fill_free_ring.exit

cleanup.i.for.body.backedge.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %i.011.i)
  %cmp.old.i = icmp ult i32 %i.011.i, 126
  br i1 %cmp.old.i, label %for.inc.i.for.body.backedge.i_crit_edge, label %for.inc.i.typhoon_fill_free_ring.exit_crit_edge

for.inc.i.typhoon_fill_free_ring.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_fill_free_ring.exit

for.inc.i.for.body.backedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge.i

for.body.backedge.i:                              ; preds = %for.inc.i.for.body.backedge.i_crit_edge, %cleanup.i.for.body.backedge.i_crit_edge
  %i.011.be.i = add nuw nsw i32 %i.011.i, 1
  br label %for.body.i

typhoon_fill_free_ring.exit:                      ; preds = %for.inc.i.typhoon_fill_free_ring.exit_crit_edge, %cleanup.i.typhoon_fill_free_ring.exit_crit_edge
  %24 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr2, align 128
  %pdev2.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 12
  %26 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpage_dma.i) #13
  %28 = ptrtoint ptr %dpage_dma.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %dpage_dma.i, align 4, !annotation !222
  %29 = load ptr, ptr @typhoon_fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %dpage_dma.i, i32 noundef 2592, i32 noundef 0) #13
  %tobool.not.i179 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i179, label %typhoon_download_firmware.exit.thread, label %if.end.i

typhoon_download_firmware.exit.thread:            ; preds = %typhoon_fill_free_ring.exit
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.62) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpage_dma.i) #13
  br label %error_out.sink.split

if.end.i:                                         ; preds = %typhoon_fill_free_ring.exit
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %35 = or i32 %34, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #13, !srcloc !226
  %add.ptr6.i = getelementptr i8, ptr %25, i32 12
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %37 = or i32 %36, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %37) #13, !srcloc !226
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.03.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %38)
  %cmp1.i.i = icmp eq i32 %38, 218103808
  br i1 %cmp1.i.i, label %if.end13.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 10737400) #13
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %if.then11.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.then11.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.63) #16
  br label %typhoon_download_firmware.exit

if.end13.i:                                       ; preds = %for.body.i.i
  %numSections14.i = getelementptr inbounds %struct.typhoon_file_header, ptr %31, i32 0, i32 2
  %42 = ptrtoint ptr %numSections14.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %numSections14.i, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43) #13
  %startAddr.i = getelementptr inbounds %struct.typhoon_file_header, ptr %31, i32 0, i32 3
  %45 = ptrtoint ptr %startAddr.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %startAddr.i, align 1
  %add.ptr15.i = getelementptr i8, ptr %25, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #13, !srcloc !226
  %add.ptr16.i = getelementptr i8, ptr %25, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %46) #13, !srcloc !226
  %hmacDigest.i = getelementptr inbounds %struct.typhoon_file_header, ptr %31, i32 0, i32 4
  %47 = ptrtoint ptr %hmacDigest.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %hmacDigest.i, align 1
  %add.ptr17.i = getelementptr i8, ptr %25, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %48) #13, !srcloc !226
  %arrayidx19.i = getelementptr %struct.typhoon_file_header, ptr %31, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx19.i, align 1
  %add.ptr20.i = getelementptr i8, ptr %25, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %50) #13, !srcloc !226
  %arrayidx22.i = getelementptr %struct.typhoon_file_header, ptr %31, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx22.i, align 1
  %add.ptr23.i = getelementptr i8, ptr %25, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %52) #13, !srcloc !226
  %arrayidx25.i = getelementptr %struct.typhoon_file_header, ptr %31, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx25.i, align 1
  %add.ptr26.i = getelementptr i8, ptr %25, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %54) #13, !srcloc !226
  %arrayidx28.i = getelementptr %struct.typhoon_file_header, ptr %31, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx28.i, align 1
  %add.ptr29.i = getelementptr i8, ptr %25, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %56) #13, !srcloc !226
  %57 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool30.not.i = icmp eq i32 %57, 0
  br i1 %tobool30.not.i, label %if.end13.i.do.end.i_crit_edge, label %if.then33.i, !prof !227

if.end13.i.do.end.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then33.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr34.i = getelementptr i8, ptr %25, i32 52
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end.i

do.end.i:                                         ; preds = %if.then33.i, %if.end13.i.do.end.i_crit_edge
  %add.ptr37.i = getelementptr i8, ptr %25, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 -50331648) #13, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp39200.not.i = icmp eq i32 %43, 0
  br i1 %cmp39200.not.i, label %do.end.i.for.body.i175.i.preheader_crit_edge, label %for.body.lr.ph.i

do.end.i.for.body.i175.i.preheader_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i175.i.preheader

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %add.ptr38.i = getelementptr i8, ptr %31, i32 40
  %add.ptr69.i = getelementptr i8, ptr %25, i32 52
  %umax.i = call i32 @llvm.umax.i32(i32 %44, i32 1) #13
  br label %for.body.i180

for.body.i180:                                    ; preds = %for.inc.i181.for.body.i180_crit_edge, %for.body.lr.ph.i
  %i.0202.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i181.for.body.i180_crit_edge ]
  %image_data.0201.i = phi ptr [ %add.ptr38.i, %for.body.lr.ph.i ], [ %image_data.1.lcssa.i, %for.inc.i181.for.body.i180_crit_edge ]
  %add.ptr40.i = getelementptr i8, ptr %image_data.0201.i, i32 12
  %59 = ptrtoint ptr %image_data.0201.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %image_data.0201.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool43.not196.i = icmp eq i32 %60, 0
  br i1 %tobool43.not196.i, label %for.body.i180.for.inc.i181_crit_edge, label %while.body.preheader.i

for.body.i180.for.inc.i181_crit_edge:             ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i181

while.body.preheader.i:                           ; preds = %for.body.i180
  %61 = call i32 @llvm.bswap.i32(i32 %60) #13
  %startAddr41.i = getelementptr inbounds %struct.typhoon_section_header, ptr %image_data.0201.i, i32 0, i32 3
  %62 = ptrtoint ptr %startAddr41.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %startAddr41.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #13
  br label %while.body.i

while.body.i:                                     ; preds = %do.end73.i.while.body.i_crit_edge, %while.body.preheader.i
  %load_addr.0199.i = phi i32 [ %add.i, %do.end73.i.while.body.i_crit_edge ], [ %64, %while.body.preheader.i ]
  %section_len.0198.i = phi i32 [ %sub.i, %do.end73.i.while.body.i_crit_edge ], [ %61, %while.body.preheader.i ]
  %image_data.1197.i = phi ptr [ %add.ptr75.i, %do.end73.i.while.body.i_crit_edge ], [ %add.ptr40.i, %while.body.preheader.i ]
  %65 = call i32 @llvm.umin.i32(i32 %section_len.0198.i, i32 4096) #13
  br label %for.body.i167.i

for.body.i167.i:                                  ; preds = %if.end.i170.i.for.body.i167.i_crit_edge, %while.body.i
  %i.04.i.i = phi i32 [ 0, %while.body.i ], [ %inc.i168.i, %if.end.i170.i.for.body.i167.i_crit_edge ]
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %67 = and i32 %66, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %if.end.i170.i, label %lor.lhs.false.critedge.i

if.end.i170.i:                                    ; preds = %for.body.i167.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 10737400) #13
  %inc.i168.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i169.i = icmp eq i32 %inc.i168.i, 10000
  br i1 %exitcond.not.i169.i, label %if.then50.critedge.i, label %if.end.i170.i.for.body.i167.i_crit_edge

if.end.i170.i.for.body.i167.i_crit_edge:          ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i167.i

lor.lhs.false.critedge.i:                         ; preds = %for.body.i167.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #13, !srcloc !226
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %69)
  %cmp49.not.i = icmp eq i32 %69, 268435456
  br i1 %cmp49.not.i, label %if.end52.i, label %lor.lhs.false.critedge.i.if.then50.i_crit_edge

lor.lhs.false.critedge.i.if.then50.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then50.i

if.then50.critedge.i:                             ; preds = %if.end.i170.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #13, !srcloc !226
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then50.critedge.i, %lor.lhs.false.critedge.i.if.then50.i_crit_edge
  %70 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.64) #16
  br label %typhoon_download_firmware.exit

if.end52.i:                                       ; preds = %lor.lhs.false.critedge.i
  %call53.i = call i32 @csum_partial_copy_nocheck(ptr noundef %image_data.1197.i, ptr noundef nonnull %call.i.i, i32 noundef %65) #13
  %72 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call53.i) #19, !srcloc !239
  %neg.i.i = xor i32 %72, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  %73 = call i32 @llvm.bswap.i32(i32 %65) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %73) #13, !srcloc !226
  %74 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #13
  %conv.i = zext i16 %74 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  %75 = call i32 @llvm.bswap.i32(i32 %conv.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %75) #13, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  %76 = call i32 @llvm.bswap.i32(i32 %load_addr.0199.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %76) #13, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 0) #13, !srcloc !226
  %77 = ptrtoint ptr %dpage_dma.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dpage_dma.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  %79 = call i32 @llvm.bswap.i32(i32 %78) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %79) #13, !srcloc !226
  %80 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool61.not.i = icmp eq i32 %80, 0
  br i1 %tobool61.not.i, label %if.end52.i.do.end73.i_crit_edge, label %if.then68.i, !prof !227

if.end52.i.do.end73.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end73.i

if.then68.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %do.end73.i

do.end73.i:                                       ; preds = %if.then68.i, %if.end52.i.do.end73.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 -67108864) #13, !srcloc !226
  %add.ptr75.i = getelementptr i8, ptr %image_data.1197.i, i32 %65
  %add.i = add i32 %65, %load_addr.0199.i
  %sub.i = sub i32 %section_len.0198.i, %65
  %tobool43.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool43.not.i, label %do.end73.i.for.inc.i181_crit_edge, label %do.end73.i.while.body.i_crit_edge

do.end73.i.while.body.i_crit_edge:                ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end73.i.for.inc.i181_crit_edge:                ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i181

for.inc.i181:                                     ; preds = %do.end73.i.for.inc.i181_crit_edge, %for.body.i180.for.inc.i181_crit_edge
  %image_data.1.lcssa.i = phi ptr [ %add.ptr40.i, %for.body.i180.for.inc.i181_crit_edge ], [ %add.ptr75.i, %do.end73.i.for.inc.i181_crit_edge ]
  %inc.i = add nuw i32 %i.0202.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i181.for.body.i175.i.preheader_crit_edge, label %for.inc.i181.for.body.i180_crit_edge

for.inc.i181.for.body.i180_crit_edge:             ; preds = %for.inc.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i180

for.inc.i181.for.body.i175.i.preheader_crit_edge: ; preds = %for.inc.i181
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i175.i.preheader

for.body.i175.i.preheader:                        ; preds = %for.inc.i181.for.body.i175.i.preheader_crit_edge, %do.end.i.for.body.i175.i.preheader_crit_edge
  br label %for.body.i175.i

for.body.i175.i:                                  ; preds = %if.end.i178.i.for.body.i175.i_crit_edge, %for.body.i175.i.preheader
  %i.04.i173.i = phi i32 [ %inc.i176.i, %if.end.i178.i.for.body.i175.i_crit_edge ], [ 0, %for.body.i175.i.preheader ]
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %83 = and i32 %82, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i174.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i174.i, label %if.end.i178.i, label %lor.lhs.false79.critedge.i

if.end.i178.i:                                    ; preds = %for.body.i175.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 10737400) #13
  %inc.i176.i = add nuw nsw i32 %i.04.i173.i, 1
  %exitcond.not.i177.i = icmp eq i32 %inc.i176.i, 10000
  br i1 %exitcond.not.i177.i, label %if.then84.critedge.i, label %if.end.i178.i.for.body.i175.i_crit_edge

if.end.i178.i.for.body.i175.i_crit_edge:          ; preds = %if.end.i178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i175.i

lor.lhs.false79.critedge.i:                       ; preds = %for.body.i175.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #13, !srcloc !226
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %85)
  %cmp82.not.i = icmp eq i32 %85, 268435456
  br i1 %cmp82.not.i, label %if.end86.i, label %lor.lhs.false79.critedge.i.if.then84.i_crit_edge

lor.lhs.false79.critedge.i.if.then84.i_crit_edge: ; preds = %lor.lhs.false79.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then84.i

if.then84.critedge.i:                             ; preds = %if.end.i178.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #13, !srcloc !226
  br label %if.then84.i

if.then84.i:                                      ; preds = %if.then84.critedge.i, %lor.lhs.false79.critedge.i.if.then84.i_crit_edge
  %86 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.65) #16
  br label %typhoon_download_firmware.exit

if.end86.i:                                       ; preds = %lor.lhs.false79.critedge.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 -83886080) #13, !srcloc !226
  br label %for.body.i184.i

for.body.i184.i:                                  ; preds = %if.end.i187.i.for.body.i184.i_crit_edge, %if.end86.i
  %i.03.i182.i = phi i32 [ 0, %if.end86.i ], [ %inc.i185.i, %if.end.i187.i.for.body.i184.i_crit_edge ]
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %88)
  %cmp1.i183.i = icmp eq i32 %88, 117440512
  br i1 %cmp1.i183.i, label %for.body.i184.i.typhoon_download_firmware.exit_crit_edge, label %if.end.i187.i

for.body.i184.i.typhoon_download_firmware.exit_crit_edge: ; preds = %for.body.i184.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_download_firmware.exit

if.end.i187.i:                                    ; preds = %for.body.i184.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 10737400) #13
  %inc.i185.i = add nuw nsw i32 %i.03.i182.i, 1
  %exitcond.not.i186.i = icmp eq i32 %inc.i185.i, 10000
  br i1 %exitcond.not.i186.i, label %if.then91.i, label %if.end.i187.i.for.body.i184.i_crit_edge

if.end.i187.i.for.body.i184.i_crit_edge:          ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i184.i

if.then91.i:                                      ; preds = %if.end.i187.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1, align 8
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  %93 = call i32 @llvm.bswap.i32(i32 %92) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %91, ptr noundef nonnull @.str.66, i32 noundef %93) #16
  br label %typhoon_download_firmware.exit

typhoon_download_firmware.exit:                   ; preds = %if.then91.i, %for.body.i184.i.typhoon_download_firmware.exit_crit_edge, %if.then84.i, %if.then50.i, %if.then11.i
  %cmp = phi i1 [ true, %if.then11.i ], [ true, %if.then50.i ], [ true, %if.then84.i ], [ true, %if.then91.i ], [ false, %for.body.i184.i.typhoon_download_firmware.exit_crit_edge ]
  %err.0.i = phi i32 [ -110, %if.then11.i ], [ -110, %if.then50.i ], [ -110, %if.then84.i ], [ -110, %if.then91.i ], [ 0, %for.body.i184.i.typhoon_download_firmware.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %36) #13, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #13, !srcloc !226
  %94 = ptrtoint ptr %dpage_dma.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dpage_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 4096, ptr noundef nonnull %call.i.i, i32 noundef %95, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpage_dma.i) #13
  br i1 %cmp, label %typhoon_download_firmware.exit.error_out.sink.split_crit_edge, label %if.end

typhoon_download_firmware.exit.error_out.sink.split_crit_edge: ; preds = %typhoon_download_firmware.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out.sink.split

if.end:                                           ; preds = %typhoon_download_firmware.exit
  %call4 = call fastcc i32 @typhoon_boot_3XP(ptr noundef %tp, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.error_out.sink.split_crit_edge, label %do.body

if.end.error_out.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out.sink.split

do.body:                                          ; preds = %if.end
  %96 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %97 = call ptr @memset(ptr %96, i32 0, i32 15)
  %98 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -126, ptr %xp_cmd, align 1
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 6656, ptr %4, align 1
  %100 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 6, ptr %6, align 1
  %call9 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body.error_out_crit_edge, label %do.body13

do.body.error_out_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body13:                                        ; preds = %do.body
  %101 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %102 = call ptr @memset(ptr %101, i32 0, i32 15)
  %103 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -126, ptr %xp_cmd, align 1
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 9728, ptr %4, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %105 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_addr, align 64
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %106, align 2
  %109 = call i16 @llvm.bswap.i16(i16 %108)
  %110 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %6, align 1
  %arrayidx21 = getelementptr i8, ptr %106, i32 2
  %111 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx21, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  %114 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %7, align 1
  %call22 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.body13.error_out_crit_edge, label %do.body26

do.body13.error_out_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body26:                                        ; preds = %do.body13
  %115 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %116 = call ptr @memset(ptr %115, i32 0, i32 15)
  %117 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -62, ptr %xp_cmd, align 1
  %118 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 17664, ptr %4, align 1
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 1, ptr %5, align 1
  %call35 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.body26.error_out_crit_edge, label %do.body40

do.body26.error_out_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body40:                                        ; preds = %do.body26
  %120 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %121 = call ptr @memset(ptr %120, i32 0, i32 15)
  %122 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -126, ptr %xp_cmd, align 1
  %123 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 4864, ptr %4, align 1
  %xcvr_select = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 25
  %124 = ptrtoint ptr %xcvr_select to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %xcvr_select, align 32
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %6, align 1
  %call47 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.body40.error_out_crit_edge, label %do.body52

do.body40.error_out_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body52:                                        ; preds = %do.body40
  %127 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %128 = call ptr @memset(ptr %127, i32 0, i32 15)
  %129 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -126, ptr %xp_cmd, align 1
  %130 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 11008, ptr %4, align 1
  %131 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 129, ptr %6, align 1
  %call59 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.body52.error_out_crit_edge, label %do.body64

do.body52.error_out_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body64:                                        ; preds = %do.body52
  %132 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %133 = call ptr @memset(ptr %132, i32 0, i32 7)
  %134 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -126, ptr %xp_cmd, align 1
  %135 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 20224, ptr %4, align 1
  %offload = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 27
  %136 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offload, align 4
  %138 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %7, align 1
  %139 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %137, ptr %8, align 1
  %call72 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.body64.error_out_crit_edge, label %if.end76

do.body64.error_out_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

if.end76:                                         ; preds = %do.body64
  call void @typhoon_set_rx_mode(ptr noundef %1)
  %140 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %141 = call ptr @memset(ptr %140, i32 0, i32 15)
  %142 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 -126, ptr %xp_cmd, align 1
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 256, ptr %4, align 1
  %call83 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end76.error_out_crit_edge, label %do.body88

if.end76.error_out_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

do.body88:                                        ; preds = %if.end76
  %144 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %145 = call ptr @memset(ptr %144, i32 0, i32 15)
  %146 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -62, ptr %xp_cmd, align 1
  %147 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 768, ptr %4, align 1
  %148 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 2)
  store i16 1, ptr %5, align 1
  %call99 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %do.body88.error_out_crit_edge, label %if.end103

do.body88.error_out_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_out

if.end103:                                        ; preds = %do.body88
  %card_state = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 10
  %149 = ptrtoint ptr %card_state to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %card_state, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !240
  %add.ptr = getelementptr i8, ptr %3, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268435457) #13, !srcloc !226
  %add.ptr110 = getelementptr i8, ptr %3, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 0) #13, !srcloc !226
  %150 = load i32, ptr @use_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not = icmp eq i32 %150, 0
  br i1 %tobool.not, label %if.end103.cleanup_crit_edge, label %if.then114, !prof !227

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then114:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr115 = getelementptr i8, ptr %3, i32 52
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #13, !srcloc !223
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %cleanup

error_out.sink.split:                             ; preds = %if.end.error_out.sink.split_crit_edge, %typhoon_download_firmware.exit.error_out.sink.split_crit_edge, %typhoon_download_firmware.exit.thread
  %.str.59.sink = phi ptr [ @.str.58, %typhoon_download_firmware.exit.thread ], [ @.str.58, %typhoon_download_firmware.exit.error_out.sink.split_crit_edge ], [ @.str.59, %if.end.error_out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -12, %typhoon_download_firmware.exit.thread ], [ %err.0.i, %typhoon_download_firmware.exit.error_out.sink.split_crit_edge ], [ -5, %if.end.error_out.sink.split_crit_edge ]
  %152 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev1, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %153, ptr noundef nonnull %.str.59.sink) #16
  br label %error_out

error_out:                                        ; preds = %error_out.sink.split, %do.body88.error_out_crit_edge, %if.end76.error_out_crit_edge, %do.body64.error_out_crit_edge, %do.body52.error_out_crit_edge, %do.body40.error_out_crit_edge, %do.body26.error_out_crit_edge, %do.body13.error_out_crit_edge, %do.body.error_out_crit_edge
  %err.0 = phi i32 [ %call9, %do.body.error_out_crit_edge ], [ %call22, %do.body13.error_out_crit_edge ], [ %call35, %do.body26.error_out_crit_edge ], [ %call47, %do.body40.error_out_crit_edge ], [ %call59, %do.body52.error_out_crit_edge ], [ %call72, %do.body64.error_out_crit_edge ], [ %call83, %if.end76.error_out_crit_edge ], [ %call99, %do.body88.error_out_crit_edge ], [ %err.0.ph, %error_out.sink.split ]
  %call120 = call fastcc i32 @typhoon_reset(ptr noundef %3, i32 noundef 1)
  br label %for.body.i184

for.body.i184:                                    ; preds = %if.end.i189.for.body.i184_crit_edge, %error_out
  %i.09.i = phi i32 [ 0, %error_out ], [ %inc.i187, %if.end.i189.for.body.i184_crit_edge ]
  %arrayidx.i182 = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %i.09.i
  %154 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i182, align 4
  %tobool.not.i183 = icmp eq ptr %155, null
  br i1 %tobool.not.i183, label %for.body.i184.if.end.i189_crit_edge, label %if.then.i186

for.body.i184.if.end.i189_crit_edge:              ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i189

if.then.i186:                                     ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev2.i, align 4
  %dev.i185 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %i.09.i, i32 1
  %158 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dma_addr.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i185, i32 noundef %159, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  %160 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i182, align 4
  call void @consume_skb(ptr noundef %161) #13
  %162 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %arrayidx.i182, align 4
  br label %if.end.i189

if.end.i189:                                      ; preds = %if.then.i186, %for.body.i184.if.end.i189_crit_edge
  %inc.i187 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i188 = icmp eq i32 %inc.i187, 127
  br i1 %exitcond.not.i188, label %typhoon_free_rx_rings.exit, label %if.end.i189.for.body.i184_crit_edge

if.end.i189.for.body.i184_crit_edge:              ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i184

typhoon_free_rx_rings.exit:                       ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %indexes.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %indexes.i, align 4
  %165 = call ptr @memset(ptr %164, i32 0, i32 44)
  %166 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %lastWrite.i, align 4
  %167 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %lastWrite1.i, align 4
  %168 = ptrtoint ptr %lastWrite2.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %lastWrite2.i, align 4
  %169 = ptrtoint ptr %lastWrite3.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %lastWrite3.i, align 4
  %170 = ptrtoint ptr %lastWrite4.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %lastWrite4.i, align 4
  %171 = ptrtoint ptr %lastWrite5.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %lastWrite5.i, align 4
  %172 = ptrtoint ptr %lastWrite6.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %lastWrite6.i, align 4
  %173 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %lastRead.i, align 8
  %174 = ptrtoint ptr %lastRead9.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %lastRead9.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %typhoon_free_rx_rings.exit, %if.then114, %if.end103.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %typhoon_free_rx_rings.exit ], [ 0, %if.then114 ], [ 0, %if.end103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_alloc_rx_skb(ptr nocapture noundef %tp, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %indexes1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %0 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexes1, align 4
  %arrayidx = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %idx
  %rxBuffRing = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %lastWrite = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lastWrite, align 4
  %add = add i32 %4, 16
  %rem = and i32 %add, 2047
  %rxBuffCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rxBuffCleared to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load volatile i32, ptr %rxBuffCleared, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %7)
  %cmp = icmp eq i32 %rem, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %9, i32 noundef 1536, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 12
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i33 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #13
  br i1 %call.i33, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end4
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !236

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev5) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.61, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev5, ptr noundef %13, i32 noundef 1536) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %13 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %20 = ptrtoint ptr %rxBuffRing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxBuffRing, align 4
  %22 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lastWrite, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  %add.i.i = add i32 %23, 16
  %rem.i.i = and i32 %add.i.i, 2047
  store i32 %rem.i.i, ptr %lastWrite, align 4
  %virtAddr = getelementptr inbounds %struct.rx_free, ptr %add.ptr, i32 0, i32 2
  %24 = ptrtoint ptr %virtAddr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %idx, ptr %virtAddr, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr, align 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %arrayidx, align 4
  %dma_addr10 = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %idx, i32 1
  %28 = ptrtoint ptr %dma_addr10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %dma_addr10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !241
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lastWrite, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %rxBuffReady = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %rxBuffReady to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store volatile i32 %31, ptr %rxBuffReady, align 1
  br label %cleanup

cleanup:                                          ; preds = %dma_map_single_attrs.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dma_map_single_attrs.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_stop_runtime(ptr noundef %tp, i32 noundef %wait_type) unnamed_addr #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %indexes1 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %0 = ptrtoint ptr %indexes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indexes1, align 4
  %ioaddr2 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 5
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %4 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !226
  %5 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 15)
  %7 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -126, ptr %xp_cmd, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 1024, ptr %4, align 1
  %9 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  %txLoCleared = getelementptr inbounds %struct.typhoon_indexes, ptr %1, i32 0, i32 4
  %lastWrite = getelementptr inbounds %struct.transmit_ring, ptr %tp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load volatile i32, ptr %txLoCleared, align 1
  %12 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lastWrite, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp3 = icmp eq i32 %11, %14
  br i1 %cmp3, label %for.body.do.body7_crit_edge, label %if.end

for.body.do.body7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 10737400) #13
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.then5, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.70) #16
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %for.body.do.body7_crit_edge
  %18 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 15)
  %20 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -126, ptr %xp_cmd, align 1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 512, ptr %4, align 1
  %22 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  %card_state = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 10
  %23 = ptrtoint ptr %card_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %card_state, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  %call20 = tail call fastcc i32 @typhoon_do_get_stats(ptr noundef %tp)
  %stats_saved = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22
  %dev21 = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %24 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev21, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36
  %26 = call ptr @memcpy(ptr %stats_saved, ptr %stats, i32 92)
  %27 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %28 = call ptr @memset(ptr %27, i32 0, i32 15)
  %29 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -126, ptr %xp_cmd, align 1
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 23808, ptr %4, align 1
  %31 = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body7
  %i.03.i = phi i32 [ 0, %do.body7 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %32)
  %cmp1.i = icmp eq i32 %32, 335544320
  br i1 %cmp1.i, label %for.body.i.if.end33_crit_edge, label %if.end.i

for.body.i.if.end33_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #13
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10000
  br i1 %exitcond.not.i, label %if.then31, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then31:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.71) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.body.i.if.end33_crit_edge
  %call34 = tail call fastcc i32 @typhoon_reset(ptr noundef %3, i32 noundef %wait_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.72) #16
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %38 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load volatile i32, ptr %txLoCleared, align 1
  %40 = ptrtoint ptr %lastWrite to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lastWrite, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %42)
  %cmp41.not = icmp eq i32 %39, %42
  br i1 %cmp41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  %43 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store volatile i32 %42, ptr %txLoCleared, align 1
  %lastRead1.i = getelementptr inbounds %struct.transmit_ring, ptr %tp, i32 0, i32 2
  %44 = ptrtoint ptr %lastRead1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lastRead1.i, align 4
  %46 = load volatile i32, ptr %txLoCleared, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp.not20.i = icmp eq i32 %45, %47
  br i1 %cmp.not20.i, label %if.then42.cleanup_crit_edge, label %while.body.lr.ph.i

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then42
  %pdev.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %lastRead.021.i = phi i32 [ %45, %while.body.lr.ph.i ], [ %rem.i.i.i, %if.end9.i.while.body.i_crit_edge ]
  %48 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tp, align 4
  %add.ptr.i82 = getelementptr i8, ptr %49, i32 %lastRead.021.i
  %50 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i82, align 1
  %trunc.i = trunc i8 %51 to i3
  %52 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.87)
  switch i3 %trunc.i, label %while.body.i.if.end9.i_crit_edge [
    i3 1, label %if.then.i
    i3 0, label %if.then7.i
  ]

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i82, i32 0, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %53, align 1
  %conv4.i = trunc i64 %55 to i32
  %56 = inttoptr i32 %conv4.i to ptr
  tail call void @__dev_kfree_skb_irq(ptr noundef %56, i32 noundef 1) #13
  br label %if.end9.i

if.then7.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i82, i32 0, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %57, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  %len.i = getelementptr inbounds %struct.tx_desc, ptr %add.ptr.i82, i32 0, i32 2
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %len.i, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #13
  %conv8.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %60, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.then.i, %while.body.i.if.end9.i_crit_edge
  %66 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %add.ptr.i82, align 1
  %add.i.i.i = add i32 %lastRead.021.i, 16
  %rem.i.i.i = and i32 %add.i.i.i, 2047
  %67 = ptrtoint ptr %txLoCleared to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %txLoCleared, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #13
  %cmp.not.i = icmp eq i32 %rem.i.i.i, %69
  br i1 %cmp.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then36
  %retval.0 = phi i32 [ -110, %if.then36 ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.then42.cleanup_crit_edge ], [ 0, %if.end9.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_do_get_stats(ptr noundef %tp) unnamed_addr #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  %xp_resp = alloca [7 x %struct.resp_desc], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %2 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %xp_resp) #13
  %4 = call ptr @memset(ptr %xp_resp, i32 255, i32 112)
  %5 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 15)
  %7 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -62, ptr %xp_cmd, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 1792, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1, ptr %3, align 1
  %call = call fastcc i32 @typhoon_issue_command(ptr noundef %tp, ptr noundef nonnull %xp_cmd, i32 noundef 7, ptr noundef nonnull %xp_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stats_saved = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22
  %stats1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %txPackets = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 5
  %10 = ptrtoint ptr %txPackets to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %txPackets, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %tx_packets = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_packets, align 4
  %add = add i32 %12, %14
  %tx_packets6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %15 = ptrtoint ptr %tx_packets6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %tx_packets6, align 4
  %txBytes = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 6
  %16 = ptrtoint ptr %txBytes to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %txBytes, align 1
  %18 = call i64 @llvm.bswap.i64(i64 %17)
  %tx_bytes = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_bytes, align 4
  %21 = trunc i64 %18 to i32
  %conv9 = add i32 %20, %21
  %tx_bytes10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %22 = ptrtoint ptr %tx_bytes10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv9, ptr %tx_bytes10, align 4
  %txCarrierLost = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 10
  %23 = ptrtoint ptr %txCarrierLost to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %txCarrierLost, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %tx_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 5
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_errors, align 4
  %add11 = add i32 %25, %27
  %tx_errors12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %28 = ptrtoint ptr %tx_errors12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add11, ptr %tx_errors12, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 17
  %29 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_carrier_errors, align 4
  %add14 = add i32 %30, %25
  %tx_carrier_errors15 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %31 = ptrtoint ptr %tx_carrier_errors15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add14, ptr %tx_carrier_errors15, align 4
  %txMultipleCollisions = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 11
  %32 = ptrtoint ptr %txMultipleCollisions to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %txMultipleCollisions, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %collisions = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 9
  %35 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %collisions, align 4
  %add16 = add i32 %34, %36
  %collisions17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %37 = ptrtoint ptr %collisions17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add16, ptr %collisions17, align 4
  %rxPacketsGood = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 16
  %38 = ptrtoint ptr %rxPacketsGood to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %rxPacketsGood, align 1
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %stats_saved to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stats_saved, align 4
  %add18 = add i32 %40, %42
  %43 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add18, ptr %stats1, align 4
  %rxBytesGood = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 17
  %44 = ptrtoint ptr %rxBytesGood to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %rxBytesGood, align 1
  %46 = call i64 @llvm.bswap.i64(i64 %45)
  %rx_bytes = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_bytes, align 4
  %49 = trunc i64 %46 to i32
  %conv22 = add i32 %48, %49
  %rx_bytes23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %50 = ptrtoint ptr %rx_bytes23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv22, ptr %rx_bytes23, align 4
  %rxFifoOverruns = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 18
  %51 = ptrtoint ptr %rxFifoOverruns to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %rxFifoOverruns, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %rx_fifo_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 14
  %54 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_fifo_errors, align 4
  %add24 = add i32 %53, %55
  %rx_fifo_errors25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %56 = ptrtoint ptr %rx_fifo_errors25 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add24, ptr %rx_fifo_errors25, align 4
  %BadSSD = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 19
  %57 = ptrtoint ptr %BadSSD to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %BadSSD, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %add27 = add i32 %59, %53
  %rxCrcErrors = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 20
  %60 = ptrtoint ptr %rxCrcErrors to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %rxCrcErrors, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %add28 = add i32 %add27, %62
  %rx_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 4
  %63 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_errors, align 4
  %add29 = add i32 %add28, %64
  %rx_errors30 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %65 = ptrtoint ptr %rx_errors30 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add29, ptr %rx_errors30, align 4
  %rx_crc_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 12
  %66 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_crc_errors, align 4
  %add32 = add i32 %67, %62
  %rx_crc_errors33 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %68 = ptrtoint ptr %rx_crc_errors33 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add32, ptr %rx_crc_errors33, align 4
  %rxOversized = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 21
  %69 = ptrtoint ptr %rxOversized to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %rxOversized, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %rx_length_errors = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 22, i32 10
  %72 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_length_errors, align 4
  %add34 = add i32 %71, %73
  %rx_length_errors35 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %74 = ptrtoint ptr %rx_length_errors35 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add34, ptr %rx_length_errors35, align 4
  %linkStatus = getelementptr inbounds %struct.stats_resp, ptr %xp_resp, i32 0, i32 26
  %75 = ptrtoint ptr %linkStatus to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %linkStatus, align 1
  %and = and i32 %76, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv36 = select i1 %tobool.not, i8 10, i8 100
  %speed = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 9
  %77 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv36, ptr %speed, align 2
  %and38 = lshr i32 %76, 26
  %78 = trunc i32 %and38 to i8
  %79 = and i8 %78, 1
  %duplex = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 8
  %80 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %duplex, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %xp_resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @typhoon_rx(ptr nocapture noundef %tp, ptr nocapture noundef readonly %rxRing, ptr noundef %ready, ptr noundef %cleared, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ready, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %cleared to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cleared, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp1104 = icmp sgt i32 %budget, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp.not98105 = icmp ne i32 %4, %1
  %or.cond99106 = and i1 %cmp.not98105, %cmp1104
  br i1 %or.cond99106, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %indexes1.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 6
  %lastWrite.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16, i32 1
  %rxBuffRing.i = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 16
  %dev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 13
  %pdev = getelementptr inbounds %struct.typhoon, ptr %tp, i32 0, i32 12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end35.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %received.0.ph109 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %if.end35.while.body.lr.ph_crit_edge ]
  %budget.addr.0.ph108 = phi i32 [ %budget, %while.body.lr.ph.lr.ph ], [ %dec, %if.end35.while.body.lr.ph_crit_edge ]
  %rxaddr.0.ph107 = phi i32 [ %5, %while.body.lr.ph.lr.ph ], [ %rem.i, %if.end35.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %typhoon_recycle_rx_skb.exit.while.body_crit_edge, %while.body.lr.ph
  %rxaddr.0100 = phi i32 [ %rxaddr.0.ph107, %while.body.lr.ph ], [ %rem.i, %typhoon_recycle_rx_skb.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %rxRing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxRing, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %rxaddr.0100
  %addr = getelementptr inbounds %struct.rx_desc, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %addr, align 1
  %arrayidx = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_addr3 = getelementptr %struct.typhoon, ptr %tp, i32 0, i32 17, i32 %9, i32 1
  %12 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr3, align 4
  %add.i = add i32 %rxaddr.0100, 24
  %rem.i = urem i32 %add.i, 768
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %16 = and i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %17 = ptrtoint ptr %indexes1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %indexes1.i, align 4
  %19 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lastWrite.i, align 4
  %add.i74 = add i32 %20, 16
  %rem.i75 = and i32 %add.i74, 2047
  %rxBuffCleared.i = getelementptr inbounds %struct.typhoon_indexes, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %rxBuffCleared.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load volatile i32, ptr %rxBuffCleared.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i75, i32 %23)
  %cmp.i = icmp eq i32 %rem.i75, %23
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #13
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  br label %typhoon_recycle_rx_skb.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %rxBuffRing.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxBuffRing.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %20
  %27 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rem.i75, ptr %lastWrite.i, align 4
  %virtAddr.i = getelementptr inbounds %struct.rx_free, ptr %add.ptr.i, i32 0, i32 2
  %28 = ptrtoint ptr %virtAddr.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %9, ptr %virtAddr.i, align 1
  %29 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr3, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lastWrite.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %rxBuffReady.i = getelementptr inbounds %struct.typhoon_indexes, ptr %18, i32 0, i32 2
  %36 = ptrtoint ptr %rxBuffReady.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store volatile i32 %35, ptr %rxBuffReady.i, align 1
  br label %typhoon_recycle_rx_skb.exit

typhoon_recycle_rx_skb.exit:                      ; preds = %if.end.i, %if.then.i
  %cmp.not.not = icmp eq i32 %rem.i, %2
  br i1 %cmp.not.not, label %typhoon_recycle_rx_skb.exit.while.end_crit_edge, label %typhoon_recycle_rx_skb.exit.while.body_crit_edge

typhoon_recycle_rx_skb.exit.while.body_crit_edge: ; preds = %typhoon_recycle_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

typhoon_recycle_rx_skb.exit.while.end_crit_edge:  ; preds = %typhoon_recycle_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %frameLen = getelementptr inbounds %struct.rx_desc, ptr %add.ptr, i32 0, i32 2
  %37 = ptrtoint ptr %frameLen to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %frameLen, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv4 = zext i16 %39 to i32
  %40 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv4)
  %cmp5 = icmp sgt i32 %40, %conv4
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %add = add nuw nsw i32 %conv4, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %42, i32 noundef %add, i32 noundef 2592) #13
  %cmp7.not = icmp eq ptr %call.i, null
  br i1 %cmp7.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %44, i32 2
  store ptr %add.ptr.i76, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %46, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev10, i32 noundef %13, i32 noundef 1536, i32 noundef 2) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %53 = call ptr @memcpy(ptr %52, ptr %50, i32 %conv4)
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev12, i32 noundef %13, i32 noundef 1536, i32 noundef 2) #13
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv4) #13
  %56 = ptrtoint ptr %indexes1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %indexes1.i, align 4
  %58 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lastWrite.i, align 4
  %add.i80 = add i32 %59, 16
  %rem.i81 = and i32 %add.i80, 2047
  %rxBuffCleared.i82 = getelementptr inbounds %struct.typhoon_indexes, ptr %57, i32 0, i32 7
  %60 = ptrtoint ptr %rxBuffCleared.i82 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load volatile i32, ptr %rxBuffCleared.i82, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i81, i32 %62)
  %cmp.i83 = icmp eq i32 %rem.i81, %62
  br i1 %cmp.i83, label %if.then.i85, label %if.end.i91

if.then.i85:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %64, i32 noundef 1) #13
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end18

if.end.i91:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %rxBuffRing.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rxBuffRing.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %67, i32 %59
  %68 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rem.i81, ptr %lastWrite.i, align 4
  %virtAddr.i88 = getelementptr inbounds %struct.rx_free, ptr %add.ptr.i87, i32 0, i32 2
  %69 = ptrtoint ptr %virtAddr.i88 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %9, ptr %virtAddr.i88, align 1
  %70 = ptrtoint ptr %dma_addr3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_addr3, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  %73 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %add.ptr.i87, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  tail call void @arm_heavy_mb() #13
  %74 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lastWrite.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  %rxBuffReady.i90 = getelementptr inbounds %struct.typhoon_indexes, ptr %57, i32 0, i32 2
  %77 = ptrtoint ptr %rxBuffReady.i90 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store volatile i32 %76, ptr %rxBuffReady.i90, align 1
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call14 = tail call ptr @skb_put(ptr noundef %11, i32 noundef %conv4) #13
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16, i32 noundef %13, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  %call17 = tail call fastcc i32 @typhoon_alloc_rx_skb(ptr noundef %tp, i32 noundef %9)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end.i91, %if.then.i85
  %new_skb.0 = phi ptr [ %11, %if.else ], [ %call.i, %if.then.i85 ], [ %call.i, %if.end.i91 ]
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  %call20 = tail call zeroext i16 @eth_type_trans(ptr noundef %new_skb.0, ptr noundef %81) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0, i32 0, i32 15, i32 0, i32 18
  %82 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %call20, ptr %protocol, align 8
  %rxStatus = getelementptr inbounds %struct.rx_desc, ptr %add.ptr, i32 0, i32 5
  %83 = ptrtoint ptr %rxStatus to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %rxStatus, align 1
  %and21 = and i32 %84, 458752
  %85 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %and21, label %if.end18.if.end28_crit_edge [
    i32 196608, label %if.end18.if.then26_crit_edge
    i32 327680, label %if.end18.if.then26_crit_edge167
  ]

if.end18.if.then26_crit_edge167:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.end18.if.then26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.end18.if.then26_crit_edge, %if.end18.if.then26_crit_edge167
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0, i32 0, i32 15
  %86 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end18.if.end28_crit_edge
  %87 = ptrtoint ptr %rxStatus to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %rxStatus, align 1
  %and30 = and i32 %88, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end35_crit_edge, label %if.then32

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %vlanTag = getelementptr inbounds %struct.rx_desc, ptr %add.ptr, i32 0, i32 8
  %89 = ptrtoint ptr %vlanTag to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %vlanTag, align 1
  %conv34 = trunc i32 %90 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0, i32 0, i32 15, i32 0, i32 9
  %91 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0, i32 0, i32 15, i32 0, i32 10
  %92 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv34, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %new_skb.0, i32 0, i32 15, i32 0, i32 3
  %93 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28.if.end35_crit_edge
  %call36 = tail call i32 @netif_receive_skb(ptr noundef %new_skb.0) #13
  %inc = add nuw nsw i32 %received.0.ph109, 1
  %dec = add nsw i32 %budget.addr.0.ph108, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget.addr.0.ph108)
  %cmp1 = icmp sgt i32 %budget.addr.0.ph108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %2)
  %cmp.not98 = icmp ne i32 %rem.i, %2
  %or.cond99 = select i1 %cmp.not98, i1 %cmp1, i1 false
  br i1 %or.cond99, label %if.end35.while.body.lr.ph_crit_edge, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end35.while.body.lr.ph_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %typhoon_recycle_rx_skb.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %received.0.ph.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %received.0.ph109, %typhoon_recycle_rx_skb.exit.while.end_crit_edge ], [ %inc, %if.end35.while.end_crit_edge ]
  %rxaddr.0.lcssa = phi i32 [ %5, %entry.while.end_crit_edge ], [ %2, %typhoon_recycle_rx_skb.exit.while.end_crit_edge ], [ %rem.i, %if.end35.while.end_crit_edge ]
  %94 = tail call i32 @llvm.bswap.i32(i32 %rxaddr.0.lcssa)
  %95 = ptrtoint ptr %cleared to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %94, ptr %cleared, align 4
  ret i32 %received.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @typhoon_get_drvinfo(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  %xp_resp = alloca [3 x %struct.resp_desc], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2452
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %xp_resp) #13
  %2 = call ptr @memset(ptr %xp_resp, i32 255, i32 48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  %card_state = getelementptr i8, ptr %dev, i32 2443
  %3 = ptrtoint ptr %card_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %card_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %do.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call5 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.76, i32 noundef 32) #13
  br label %if.end26

do.body6:                                         ; preds = %entry
  %5 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 3
  %6 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %7 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 15)
  %9 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -62, ptr %xp_cmd, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 17152, ptr %6, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 1, ptr %5, align 1
  %call13 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 3, ptr noundef nonnull %xp_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else20

if.then16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %fw_version17 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call19 = call i32 @strlcpy(ptr noundef %fw_version17, ptr noundef nonnull @.str.77, i32 noundef 32) #13
  br label %if.end26

if.else20:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %parm2 = getelementptr inbounds %struct.resp_desc, ptr %xp_resp, i32 0, i32 5
  %12 = ptrtoint ptr %parm2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %parm2, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %fw_version21 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %shr = lshr i32 %14, 24
  %shr23 = lshr i32 %14, 12
  %and = and i32 %shr23, 4095
  %and24 = and i32 %14, 4095
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version21, i32 noundef 32, ptr noundef nonnull @.str.78, i32 noundef %shr, i32 noundef %and, i32 noundef %and24)
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then16, %if.then
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call28 = call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.pci_name.exit_crit_edge

if.end26.pci_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end26.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.end26.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call31 = call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %xp_resp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @typhoon_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol_events = getelementptr i8, ptr %dev, i32 4002
  %2 = ptrtoint ptr %wol_events to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wol_events, align 2
  %4 = lshr i16 %3, 9
  %.lobit = and i16 %4, 1
  %5 = zext i16 %.lobit to i32
  store i32 %5, ptr %wolopts, align 4
  %6 = load i16, ptr %wol_events, align 2
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %entry.if.end9_crit_edge, label %if.then6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or8 = or i32 %5, 32
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %entry.if.end9_crit_edge
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %9 = call ptr @memset(ptr %sopass, i32 0, i32 6)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @typhoon_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_events = getelementptr i8, ptr %dev, i32 4002
  %2 = ptrtoint ptr %wol_events to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %wol_events, align 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %5 = trunc i32 %4 to i16
  %6 = shl i16 %5, 9
  %7 = and i16 %6, 512
  store i16 %7, ptr %wol_events, align 2
  %8 = load i32, ptr %wolopts, align 4
  %and9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = or i16 %7, 256
  %10 = ptrtoint ptr %wol_events to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %wol_events, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @typhoon_get_ringparam(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 127, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 127, ptr %tx_max_pending, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 127, ptr %rx_pending, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %3 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %xcvr_select = getelementptr i8, ptr %dev, i32 4000
  %0 = ptrtoint ptr %xcvr_select to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %xcvr_select, align 32
  %conv = zext i16 %1 to i32
  %2 = tail call i32 @llvm.fshl.i32(i32 %conv, i32 %conv, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %3 = icmp ult i32 %2, 5
  br i1 %3, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.typhoon_get_link_ksettings, i32 0, i32 %2
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %advertising.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %capabilities = getelementptr i8, ptr %dev, i32 4008
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capabilities, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 128, i32 1024
  %.49 = select i1 %tobool.not, i8 0, i8 3
  %.50 = select i1 %tobool.not, i32 207, i32 1100
  %or7 = or i32 %advertising.0, %.
  %7 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.49, ptr %7, align 1
  %call10 = tail call fastcc i32 @typhoon_do_get_stats(ptr noundef %add.ptr.i)
  %speed = getelementptr i8, ptr %dev, i32 2442
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %speed, align 2
  %conv11 = zext i8 %10 to i32
  %speed13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %speed13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv11, ptr %speed13, align 4
  %duplex = getelementptr i8, ptr %dev, i32 2441
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %duplex, align 1
  %duplex15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %duplex15, align 4
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %15 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %phy_address, align 2
  %16 = ptrtoint ptr %xcvr_select to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %xcvr_select, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %17)
  %cmp = icmp eq i16 %17, 1024
  %.sink47 = zext i1 %cmp to i8
  %18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink47, ptr %18, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %.50) #13
  %advertising28 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising28, i32 noundef %or7) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %2 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.else:                                          ; preds = %entry
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %7, label %if.else.out_crit_edge [
    i8 0, label %if.then8
    i8 1, label %if.then24
  ]

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then8:                                         ; preds = %if.else
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %1, label %if.then8.out_crit_edge [
    i32 10, label %if.then8.do.body_crit_edge
    i32 100, label %if.then15
  ]

if.then8.do.body_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then24:                                        ; preds = %if.else
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %if.then24.out_crit_edge [
    i32 10, label %if.then24.do.body_crit_edge
    i32 100, label %if.then31
  ]

if.then24.do.body_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.then31, %if.then24.do.body_crit_edge, %if.then15, %if.then8.do.body_crit_edge, %entry.do.body_crit_edge
  %xcvr.0 = phi i16 [ 512, %if.then15 ], [ 768, %if.then31 ], [ 1024, %entry.do.body_crit_edge ], [ 0, %if.then8.do.body_crit_edge ], [ 256, %if.then24.do.body_crit_edge ]
  %11 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 15)
  %13 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -126, ptr %xp_cmd, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 4864, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %xcvr.0, ptr %3, align 1
  %call40 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.body.out_crit_edge, label %if.end44

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end44:                                         ; preds = %do.body
  %xcvr_select = getelementptr i8, ptr %dev, i32 4000
  %16 = ptrtoint ptr %xcvr_select to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %xcvr.0, ptr %xcvr_select, align 32
  %17 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp48 = icmp eq i8 %18, 1
  br i1 %cmp48, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %speed51 = getelementptr i8, ptr %dev, i32 2442
  %19 = ptrtoint ptr %speed51 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %speed51, align 2
  br label %out.sink.split

if.else53:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %conv54 = trunc i32 %1 to i8
  %speed55 = getelementptr i8, ptr %dev, i32 2442
  %20 = ptrtoint ptr %speed55 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv54, ptr %speed55, align 2
  %duplex57 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex57 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %duplex57, align 4
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else53, %if.then50
  %.sink = phi i8 [ -1, %if.then50 ], [ %22, %if.else53 ]
  %duplex52 = getelementptr i8, ptr %dev, i32 2441
  %23 = ptrtoint ptr %duplex52 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %duplex52, align 1
  br label %out

out:                                              ; preds = %out.sink.split, %do.body.out_crit_edge, %if.then24.out_crit_edge, %if.then8.out_crit_edge, %if.else.out_crit_edge
  %err.0 = phi i32 [ %call40, %do.body.out_crit_edge ], [ -22, %if.then8.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -22, %if.then24.out_crit_edge ], [ 0, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %err.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  %xp_cmd = alloca %struct.cmd_desc, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %xp_cmd) #13
  %2 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.cmd_desc, ptr %xp_cmd, i32 0, i32 5
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_events = getelementptr i8, ptr %1, i32 4002
  %7 = ptrtoint ptr %wol_events to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wol_events, align 2
  %9 = and i16 %8, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.79) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #13
  %call5 = tail call fastcc i32 @typhoon_stop_runtime(ptr noundef %add.ptr.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.need_resume_crit_edge, label %if.end8

if.end4.need_resume_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %need_resume

if.end8:                                          ; preds = %if.end4
  %pdev.i = getelementptr i8, ptr %1, i32 2452
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end8
  %i.09.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %dma_addr.i = getelementptr %struct.typhoon, ptr %add.ptr.i, i32 0, i32 17, i32 %i.09.i, i32 1
  %14 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %15, i32 noundef 1536, i32 noundef 2, i32 noundef 0) #13
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %17) #13
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %typhoon_free_rx_rings.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

typhoon_free_rx_rings.exit:                       ; preds = %if.end.i
  %indexes.i = getelementptr i8, ptr %1, i32 2436
  %19 = ptrtoint ptr %indexes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %indexes.i, align 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 44)
  %lastWrite.i = getelementptr i8, ptr %1, i32 2308
  %22 = ptrtoint ptr %lastWrite.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lastWrite.i, align 4
  %lastWrite1.i = getelementptr i8, ptr %1, i32 4016
  %23 = ptrtoint ptr %lastWrite1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %lastWrite1.i, align 4
  %lastWrite2.i = getelementptr i8, ptr %1, i32 2448
  %24 = ptrtoint ptr %lastWrite2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lastWrite2.i, align 4
  %lastWrite3.i = getelementptr i8, ptr %1, i32 2692
  %25 = ptrtoint ptr %lastWrite3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %lastWrite3.i, align 4
  %lastWrite4.i = getelementptr i8, ptr %1, i32 2700
  %26 = ptrtoint ptr %lastWrite4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %lastWrite4.i, align 4
  %lastWrite5.i = getelementptr i8, ptr %1, i32 3888
  %27 = ptrtoint ptr %lastWrite5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %lastWrite5.i, align 4
  %lastWrite6.i = getelementptr i8, ptr %1, i32 3896
  %28 = ptrtoint ptr %lastWrite6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lastWrite6.i, align 4
  %lastRead.i = getelementptr i8, ptr %1, i32 2312
  %29 = ptrtoint ptr %lastRead.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lastRead.i, align 8
  %lastRead9.i = getelementptr i8, ptr %1, i32 4020
  %30 = ptrtoint ptr %lastRead9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %lastRead9.i, align 4
  %call9 = tail call fastcc i32 @typhoon_boot_3XP(ptr noundef %add.ptr.i, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %typhoon_free_rx_rings.exit.need_resume_crit_edge, label %do.body

typhoon_free_rx_rings.exit.need_resume_crit_edge: ; preds = %typhoon_free_rx_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %need_resume

do.body:                                          ; preds = %typhoon_free_rx_rings.exit
  %31 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %32 = call ptr @memset(ptr %31, i32 0, i32 15)
  %33 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -126, ptr %xp_cmd, align 1
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 9728, ptr %2, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %3, align 1
  %arrayidx15 = getelementptr i8, ptr %36, i32 2
  %41 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %4, align 1
  %call16 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body.need_resume_crit_edge, label %do.body21

do.body.need_resume_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %need_resume

do.body21:                                        ; preds = %do.body
  %45 = getelementptr inbounds i8, ptr %xp_cmd, i32 1
  %46 = call ptr @memset(ptr %45, i32 0, i32 15)
  %47 = ptrtoint ptr %xp_cmd to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -126, ptr %xp_cmd, align 1
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 1280, ptr %2, align 1
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 1280, ptr %3, align 1
  %call28 = call fastcc i32 @typhoon_issue_command(ptr noundef %add.ptr.i, ptr noundef nonnull %xp_cmd, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body21.need_resume_crit_edge, label %if.end32

do.body21.need_resume_crit_edge:                  ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %need_resume

if.end32:                                         ; preds = %do.body21
  %50 = ptrtoint ptr %wol_events to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %wol_events, align 2
  %call34 = tail call fastcc i32 @typhoon_sleep_early(ptr noundef %add.ptr.i, i16 noundef zeroext %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.need_resume_crit_edge, label %if.end38

if.end32.need_resume_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %need_resume

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 @device_wakeup_enable(ptr noundef %dev_d) #13
  br label %cleanup

need_resume:                                      ; preds = %if.end32.need_resume_crit_edge, %do.body21.need_resume_crit_edge, %do.body.need_resume_crit_edge, %typhoon_free_rx_rings.exit.need_resume_crit_edge, %if.end4.need_resume_crit_edge
  %.str.69.sink = phi ptr [ @.str.67, %if.end4.need_resume_crit_edge ], [ @.str.68, %typhoon_free_rx_rings.exit.need_resume_crit_edge ], [ @.str.80, %do.body.need_resume_crit_edge ], [ @.str.81, %do.body21.need_resume_crit_edge ], [ @.str.69, %if.end32.need_resume_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.69.sink) #16
  %call40 = tail call i32 @typhoon_resume(ptr noundef %dev_d)
  br label %cleanup

cleanup:                                          ; preds = %need_resume, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %need_resume ], [ 0, %if.end38 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %xp_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioaddr1.i = getelementptr i8, ptr %1, i32 2432
  %4 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1.i, align 128
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -100663296) #13, !srcloc !226
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.03.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103808, i32 %6)
  %cmp1.i.i = icmp eq i32 %6, 218103808
  br i1 %cmp1.i.i, label %lor.lhs.false.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 10737400) #13
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10000
  br i1 %exitcond.not.i.i, label %if.end.i.i.typhoon_wakeup.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end.i.i.typhoon_wakeup.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_wakeup.exit

lor.lhs.false.i:                                  ; preds = %for.body.i.i
  %capabilities.i = getelementptr i8, ptr %1, i32 4008
  %8 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end5_crit_edge, label %lor.lhs.false.i.typhoon_wakeup.exit_crit_edge

lor.lhs.false.i.typhoon_wakeup.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %typhoon_wakeup.exit

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

typhoon_wakeup.exit:                              ; preds = %lor.lhs.false.i.typhoon_wakeup.exit_crit_edge, %if.end.i.i.typhoon_wakeup.exit_crit_edge
  %call2.i = tail call fastcc i32 @typhoon_reset(ptr noundef %5, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %typhoon_wakeup.exit.reset_crit_edge, label %typhoon_wakeup.exit.if.end5_crit_edge

typhoon_wakeup.exit.if.end5_crit_edge:            ; preds = %typhoon_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

typhoon_wakeup.exit.reset_crit_edge:              ; preds = %typhoon_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset

if.end5:                                          ; preds = %typhoon_wakeup.exit.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge
  %call6 = tail call fastcc i32 @typhoon_start_runtime(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.reset_crit_edge, label %if.end9

if.end5.reset_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %reset

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_attach(ptr noundef %1) #13
  br label %cleanup

reset:                                            ; preds = %if.end5.reset_crit_edge, %typhoon_wakeup.exit.reset_crit_edge
  %.str.83.sink = phi ptr [ @.str.82, %typhoon_wakeup.exit.reset_crit_edge ], [ @.str.83, %if.end5.reset_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.83.sink) #16
  %10 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr1.i, align 128
  %call10 = tail call fastcc i32 @typhoon_reset(ptr noundef %11, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %reset, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %reset ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 129, i32 1}
!2 = !{ptr @__UNIQUE_ID_file344, !3, !"__UNIQUE_ID_file344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 130, i32 1}
!4 = !{ptr @__UNIQUE_ID_license345, !3, !"__UNIQUE_ID_license345", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_firmware346, !6, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 131, i32 1}
!7 = !{ptr @__UNIQUE_ID_description347, !8, !"__UNIQUE_ID_description347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 132, i32 1}
!9 = !{ptr @__UNIQUE_ID_rx_copybreak348, !10, !"__UNIQUE_ID_rx_copybreak348", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 133, i32 1}
!11 = !{ptr @__UNIQUE_ID_use_mmio349, !12, !"__UNIQUE_ID_use_mmio349", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 136, i32 1}
!13 = !{ptr @__param_rx_copybreak, !14, !"__param_rx_copybreak", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 138, i32 1}
!15 = !{ptr @__UNIQUE_ID_rx_copybreaktype350, !14, !"__UNIQUE_ID_rx_copybreaktype350", i1 false, i1 false}
!16 = !{ptr @__param_use_mmio, !17, !"__param_use_mmio", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 139, i32 1}
!18 = !{ptr @__UNIQUE_ID_use_mmiotype351, !17, !"__UNIQUE_ID_use_mmiotype351", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_typhoon__354_2573_typhoon_init6, !20, !"__initcall__kmod_typhoon__354_2573_typhoon_init6", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2573, i32 1}
!21 = !{ptr @__exitcall_typhoon_cleanup, !22, !"__exitcall_typhoon_cleanup", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2574, i32 1}
!23 = !{ptr @typhoon_fw, !24, !"typhoon_fw", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1270, i32 31}
!25 = !{ptr @__param_str_rx_copybreak, !14, !"__param_str_rx_copybreak", i1 false, i1 false}
!26 = !{ptr @rx_copybreak, !27, !"rx_copybreak", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 47, i32 12}
!28 = !{ptr @__param_str_use_mmio, !17, !"__param_str_use_mmio", i1 false, i1 false}
!29 = !{ptr @use_mmio, !30, !"use_mmio", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 54, i32 21}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2553, i32 11}
!33 = !{ptr @typhoon_driver, !34, !"typhoon_driver", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2552, i32 26}
!35 = !{ptr @typhoon_pci_tbl, !36, !"typhoon_pci_tbl", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 205, i32 35}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2292, i32 13}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2300, i32 13}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2306, i32 13}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2312, i32 13}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2319, i32 13}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2324, i32 13}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2329, i32 13}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2334, i32 13}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2341, i32 13}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2352, i32 13}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2362, i32 13}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2386, i32 13}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2402, i32 13}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2409, i32 13}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2418, i32 13}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2429, i32 13}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2447, i32 13}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2472, i32 13}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2478, i32 19}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2480, i32 18}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2480, i32 27}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2492, i32 20}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2500, i32 20}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2504, i32 20}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2527, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @typhoon_init_one._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @typhoon_init_one._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2260, i32 3}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @typhoon_test_mmio._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @typhoon_test_mmio._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @typhoon_init_interface.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1247, i32 2}
!98 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1476, i32 23}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1487, i32 23}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 592, i32 23}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 521, i32 8}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 171, i32 4}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 173, i32 4}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 175, i32 4}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 177, i32 4}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 179, i32 4}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 181, i32 4}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 183, i32 4}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 185, i32 4}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 187, i32 4}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 189, i32 4}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 191, i32 4}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 193, i32 4}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 195, i32 4}
!133 = !{ptr @typhoon_card_info, !134, !"typhoon_card_info", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 170, i32 33}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1814, i32 23}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1822, i32 23}
!139 = !{ptr @typhoon_netdev_ops, !140, !"typhoon_netdev_ops", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2264, i32 36}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2065, i32 19}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2090, i32 19}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2096, i32 19}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1286, i32 38}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1288, i32 23}
!151 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1299, i32 24}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1324, i32 22}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1782, i32 19}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1882, i32 23}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1887, i32 23}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!163 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1361, i32 23}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1374, i32 23}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1414, i32 25}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1446, i32 23}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1453, i32 23}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2111, i32 19}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2120, i32 19}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2123, i32 19}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1989, i32 23}
!183 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2006, i32 23}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2009, i32 23}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2028, i32 20}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2037, i32 19}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 960, i32 19}
!193 = !{ptr @typhoon_ethtool_ops, !194, !"typhoon_ethtool_ops", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 1152, i32 33}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 977, i32 29}
!197 = !{ptr @.str.77, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 982, i32 30}
!199 = !{ptr @.str.78, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 987, i32 5}
!201 = !{ptr @typhoon_pm_ops, !202, !"typhoon_pm_ops", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2550, i32 8}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2172, i32 20}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2193, i32 19}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2200, i32 19}
!209 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2140, i32 19}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/3com/typhoon.c", i32 2145, i32 19}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{!"auto-init"}
!223 = !{i64 4707058}
!224 = !{i64 2152247407}
!225 = !{i64 2152248762}
!226 = !{i64 4706640}
!227 = !{!"branch_weights", i32 1, i32 2000}
!228 = !{i64 2156666093}
!229 = !{i64 2156641287}
!230 = !{i64 2156642234}
!231 = !{i64 2156676977}
!232 = !{i64 2156672660}
!233 = !{i64 2156638004}
!234 = !{i64 2156639672}
!235 = !{i64 2156643596}
!236 = !{!"branch_weights", i32 2000, i32 1}
!237 = !{i64 2156645974}
!238 = !{i64 2156654963}
!239 = !{i64 7807424}
!240 = !{i64 2156683252}
!241 = !{i64 2156673747}
!242 = !{i64 2156685183}
!243 = !{i64 2156673100}
!244 = !{i64 2156655128}
